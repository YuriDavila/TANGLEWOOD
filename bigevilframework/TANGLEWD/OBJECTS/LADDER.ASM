;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   ladder.asm - Basic ladder
;==============================================================

; Constants
Ladder_Width			equ 0x28
Ladder_Height			equ 0xA0
Ladder_SpriteHeight		equ 0x20
Ladder_NumSprites		equ (Ladder_Height/Ladder_SpriteHeight)

;==============================================================

; Struct
	rsset (SpriteObj_Struct_Size)
;-----------------------------
Ladder_Platform			rs.b Platform_Struct_Size
;-----------------------------
	RS_ALIGN
Ladder_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

LadderInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    SpriteObjInit
	
	; Set type
	addq.w #0x1, EntityCount_Ladder
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Ladder_Width, Entity_Width(a0)
	move.w  #Ladder_Height, Entity_Height(a0)

	; Setup platform
	lea    Ladder_Platform(a0), a2
	move.l #Platform_Struct_Size, d0
	MEMZEROB a2, d0
	move.w #Ladder_Width, Platform_Width(a2)
	LIST_APPEND_TAIL Platforms, a2, a3

	rts

LadderLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Position platform
	lea    Ladder_Platform(a0), a2
	move.l Entity_WorldPosX(a0), Platform_PosX(a2)
	move.l Entity_WorldPosY(a0), Platform_PosY(a2)

	rts
