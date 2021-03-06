;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   deathbox.asm - They're no good, still surrounding me,
;   forcing my actions upon my DEATHBOOOOOOOOOOOOOXXXXXXXXXXX!
;==============================================================

; Constants
Deathbox_Width        	equ 0x0180
Deathbox_Height       	equ 0x0028
Deathbox_DefaultDamage	equ 0xFF

; Struct
	rsset (Entity_Struct_Size)
;-----------------------------
Deathbox_DamagePerFrame	rs.b 1
;-----------------------------
	RS_ALIGN
Deathbox_Struct_Size    rs.b 0

DeathboxInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    EntityInit
	
	; Set type
	; ori.l  #entity_type_Deathbox, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_Deathbox

	; Set update routine
	move.l #DeadboxUpdate, Entity_UpdateRoutine(a0)
	
	; Add to update list
	;jsr    EntityAddToUpdateList

	; Default state
	move.w #Deathbox_Width, Entity_Width(a0)
	move.w #Deathbox_Height, Entity_Height(a0)
	move.b #Deathbox_DefaultDamage, Deathbox_DamagePerFrame(a0)

	rts
	
DeathboxLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates), d0
	jsr     EntityAddToWorldGrid

	rts
	
DeadboxUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Check for occupants
	LIST_GET_HEAD Characters,a2	; Get list head
	@CharacterLp:				; For all characters in list
	cmpa.w #0x0, a2
	beq    @NoCharacter

	; If dead, don't bother
	tst.b  Character_Dead(a2)
	bne    @NextCharacter

	; Check bounds
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NextCharacter
	
	; Character inside
	move.b Deathbox_DamagePerFrame(a0), d0
	PUSHL  a0
	move.l a2, a0
	jsr    CharacterDealDamage
	POPL   a0

	; Play SFX
	PLAYSFX #SFX_SpikeDeath

	@NextCharacter:
	
	LIST_GET_NEXT Characters,a2,a2	; Get next ptr
	bra    @CharacterLp				; Loop
	
	@NoCharacter:

	rts