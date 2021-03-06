;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   lock.asm - Water lock
;==============================================================

; Constants
Lock_Width				equ 0x08
Lock_Height				equ 0x68
Lock_BarrierWidth		equ 0x08
Lock_MinRaiseHeight		equ 0x18
Lock_MaxRaiseHeight		equ Lock_Height
Lock_DefaultRaiseSpeed	equ 0x1

	rsset (AnimObj_Struct_Size)
;-----------------------------
Lock_Animation			rs.b Animation_Struct_Size
Lock_Barrier			rs.b Barrier_Struct_Size
Lock_OnRaised			rs.l 1
Lock_OnLowered			rs.l 1
Lock_UserData			rs.l 1
Lock_RaiseHeight		rs.w 1
Lock_RaiseSpeed			rs.w 1
;-----------------------------
	RS_ALIGN
Lock_struct_Size		rs.b 0
;-----------------------------

LockInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr AnimObjInit
	
	; Count
	addq.w #0x1, EntityCount_Lock
	
	; Set update and render routines
	move.l #LockUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #LockSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	;jsr EntityAddToUpdateList
	;jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList

	; Default properties
	move.w #Lock_Width, Entity_Width(a0)
	move.w #Lock_Height, Entity_Height(a0)
	move.w #Lock_MaxRaiseHeight, Lock_RaiseHeight(a0)
	move.w #0x0, Lock_RaiseSpeed(a0)
	move.l #0x0, Lock_OnRaised(a0)
	move.l #0x0, Lock_OnLowered(a0)
	move.l #0x0, Lock_UserData(a0)

	; Setup barrier
	lea    Lock_Barrier(a0), a2
	move.l #Barrier_Struct_Size, d0
	MEMZEROB a2, d0
	move.w #Lock_BarrierWidth, Barrier_Width(a2)
	move.w #Lock_Height, Barrier_Height(a2)
	LIST_APPEND_TAIL Barriers, a2, a3

	rts

LockLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT Lock,raise,0,PaletteId_World0,0x0

	; Load animation
	ANIM_LOAD_MANUALCONTROL lock,raise,raise,Lock_Animation,0

	; Set animation
	PUSHL  a1
	lea    Lock_Animation(a0), a1
	move.w #0x0, Animation_Speed(a1)
	move.b #0x1, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders), d0
	jsr     EntityAddToWorldGrid

	rts

LockUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr    AnimObjUpdate

	; Apply movement speed
	move.w Lock_RaiseSpeed(a0), d0
	beq    @NotMoving

	moveq #0x0, d1
	move.w Lock_RaiseHeight(a0), d1
	add.w  d0, d1
	move.w d1, Lock_RaiseHeight(a0)
	move.w d1, d2

	; Set as anim frame
	muls   #(((actor_lock_sheet_raise_anim_raise_numframes-1)*SubframesPerFrame)/Lock_MaxRaiseHeight), d1
	move.l d1, AnimObj_AnimSubframe(a0)
	move.b #0x1, AnimObj_Dirty(a0)

	; If at top/bottom, run callback and stop
	cmp.w  #Lock_MinRaiseHeight, d2
	beq    @AtBottom
	cmp.w  #Lock_MaxRaiseHeight, d2
	beq    @AtTop
	bra    @Moving

	@AtBottom:
	move.l Lock_OnLowered(a0), a2
	cmpa.w #0x0, a2
	beq    @CallbackDone
	PUSHL  a0
	move.l Lock_UserData(a0), a0
	jsr    (a2)
	POPL   a0
	bra    @CallbackDone

	@AtTop:
	move.l Lock_OnRaised(a0), a2
	cmpa.w #0x0, a2
	beq    @CallbackDone
	PUSHL  a0
	move.l Lock_UserData(a0), a0
	jsr    (a2)
	POPL   a0

	@CallbackDone:
	move.w #0x0, Lock_RaiseSpeed(a0)

	@Moving:
	@NotMoving:

	; Reposition barrier
	jsr    LockRepositionBarrier

	rts

LockSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	jsr   EntitySerialise

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEW Lock_RaiseHeight(a0)
	SAVEW Lock_RaiseSpeed(a0)
	SAVEL AnimObj_AnimSubframe(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADW Lock_RaiseHeight(a0)
	LOADW Lock_RaiseSpeed(a0)
	LOADL AnimObj_AnimSubframe(a0)

	PUSHM  d1/a3
	jsr    LockRepositionBarrier
	POPM   d1/a3
	
	move.b #0x1, AnimObj_UploadFrame(a0)
	
	;==============================================================
	
	@End:

	rts

LockRepositionBarrier:

	; Reposition barrier
	lea    Lock_Barrier(a0), a2
	move.w Entity_WorldPosX(a0), Barrier_PosX(a2)
	move.w Entity_WorldPosY(a0), d0
	move.w Lock_RaiseHeight(a0), d1
	move.w #Lock_MaxRaiseHeight, d2
	sub.w  d1, d2
	add.w  d2, d0
	move.w d0, Barrier_PosY(a2)
	move.w d1, Barrier_Height(a2)
	move.w Lock_RaiseSpeed(a0), Barrier_VelY(a2)

	rts

Lock_SetLowered:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.w #Lock_MinRaiseHeight, Lock_RaiseHeight(a0)
	move.w #0x0, AnimObj_AnimSubframe(a0)
	move.b #0x1, AnimObj_UploadFrame(a0)

	rts

Lock_SetRaised:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.w #Lock_MaxRaiseHeight, Lock_RaiseHeight(a0)
	lea    Lock_Animation(a0), a2
	moveq #0x0, d0
	move.b Animation_Length(a2), d0
	subq.b #0x1, d0
	lsl.l  #0x8, d0
	move.l d0, AnimObj_AnimSubframe(a0)
	move.b #0x1, AnimObj_UploadFrame(a0)

	rts

Lock_Raise:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.w #Lock_DefaultRaiseSpeed, Lock_RaiseSpeed(a0)

	rts

Lock_Lower:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.w #-Lock_DefaultRaiseSpeed, Lock_RaiseSpeed(a0)

	rts
