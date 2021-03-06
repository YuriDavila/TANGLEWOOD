;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l2a1.asm - Level 2 - Storm Warning Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
l2a1_StormWarningAct1:

	dc.l LevelSelect_Str_02				; Name
	dc.l LevelData_L2A1					; Userdata
	dc.l tiles_l2						; Tileset
	dc.l map_blocks_l2					; Blocks
	dc.l map_blockmap_l2a1				; Block map
	dc.l map_blockmap_l2a1_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_l2				; Collision tileset
	dc.l collisionmap_blocks_l2			; Collision blocks
	dc.l collisionmap_blockmap_l2a1		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l2a1	; Collision block map Y offsets table
	dc.l terrainmap_L2A1_special_terrain_descs ; 'Special' terrain descriptor table
	dc.l l2a1_DefaultPalettes			; Palettes
	dc.l l2a1_Init						; Init routine
	dc.l l2a1_Update					; Update routine
	dc.l l2a1_Serialise					; Serialise routine
	dc.l l2a1_LoadGameObjects			; Load game objects routine
	dc.l l2a1_End						; End routine
	dc.l l2a2_StormWarningAct2			; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l2a1_width					; Map width (tiles)
	dc.w map_l2a1_height				; Map height (tiles)
	dc.w map_blockmap_l2a1_width		; Map width (blocks)
	dc.w map_blockmap_l2a1_height		; Map height (blocks)
	dc.w terrainmap_L2A1_width			; Collision map width (tiles)
	dc.w terrainmap_L2A1_height			; Collision map height (tiles)
	dc.w terrainmap_L2A1_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L2A1_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L2A1_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L2A1_height; Collision map height (blocks)
	dc.w tiles_l2_size_t				; Num tiles
	dc.w terrainmap_L2A1_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	dc.b 0x4							; Index
	
	even
	
l2a1_DefaultPalettes:

	dc.l palette_l2_day				; World
	dc.l palette_djakk				; Djakk
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l2a1Data_WaitingInput			rs.b 1
;---------------------------------
	RS_ALIGN
l2a1Data_Struct_Size     		rs.b 0
	
l2a1_Init:

	; Set data for all acts in level
	jsr    L2_SetActData
	
	; Load BG map
	lea    map_blocks_l2, a0
	lea    map_blockmap_l2bg, a1
	move.l #(map_blockmap_l2bg_width<<16)|map_blockmap_l2bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes
	move.l  #palette_l2_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l2_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l2_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l2_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    l2_LoadSceneAnimations

	;==============================================================

	; HACK: Load L2 specific object sprites
	jsr    L2_LoadObjectSprites
	
	;==============================================================

	; Init weather
	;jsr    RainInit

	; Wind
	move.w  #0x0004, WindAccel
	move.w  #0x0080, WindRandStrengthMin
	move.w  #0x0100, WindRandStrengthMax
	MOVE_NTSC_W 0x0120, WindRandDelayMin, d0
	MOVE_NTSC_W 0x0180, WindRandDelayMax, d0
	MOVE_NTSC_W 0x0180, WindRandDurationMin, d0
	MOVE_NTSC_W 0x0200, WindRandDurationMax, d0
	MOVE_NTSC_W 0x0080, WindDelayTimer, d0

	;==============================================================

	; Configure wind flues
	ENTITY_GETBYNAME WindFlue, l2a1_WindFlue1, a0
	move.w #0x7FFF, WindFlue_OnTime(a0)
	move.w #0x0001, WindFlue_OffTime(a0)
	move.w #0x7FFF, WindFlue_Timer(a0)

	;==============================================================

	; If not loading from checkpoint
	tst.l  LastActivatedCheckpoint
	bne    @CheckpointLoad
	
	; Disable player 1 control
	move.l (Player1), a0
	move.b #0x0, Player_ControlEnabled(a0)
	
	; Start sleep anim
	lea    Player_Animations+(PlayerAnimIdx_Sleep*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	move.l #LevelData_L1A1, a2
	move.b #0x1, l2a1Data_WaitingInput(a2)

	; Start level intro tune
	lea    track_bgm_dawn, a0
	jsr    SND_PlayTrack

	@CheckpointLoad:

	;==============================================================

	; Start ambient SFX
	jsr    StartAmbientSFX
	
	rts
	
l2a1_Update:

	move.l #LevelData_L1A1, a2
	
	; Check waiting for input
	move.l #LevelData_L1A1, a2
	tst.b l2a1Data_WaitingInput(a2)
	beq    @FinishedLevelStartSequence
	
	; Read pad
	jsr    PAD_ReadPadA
	
	; Check for input
	andi.w #(pad_button_a|pad_button_b|pad_button_c), d0
	beq   @NoInput
	
	; Start wake up sequence
	PUSHL  a1
	PUSHL  a2
	move.l (Player1), a0
	lea    Player_Animations+(PlayerAnimIdx_Wake*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a2
	POPL   a1

	move.l (Player1), a0
	
	; Enable player 1 control
	move.b #0x1, Player_ControlEnabled(a0)
	
	; Release animation control
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Done
	move.b #0x0, l2a1Data_WaitingInput(a2)
	
	@FinishedLevelStartSequence:
	@NoInput:

	rts
	
l2a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l2a1_End:
	rts

l2a1_Trigger_MusicCue:

	lea    track_bgm_cue_l2, a0
	jsr    SND_PlayTrack

	rts

l2a1_Trigger_EndColourPower:

	; Set power to expire next frame
	move.l Player1, a2
	tst.w  Player_ColourChangeTimer(a2)
	beq    @NoPower
	move.w #0x1, Player_ColourChangeTimer(a2)
	@NoPower:

	rts

l2a1_Trigger_WindSpeed1:
	move.w  #0x0004, WindAccel
	move.w  #-0x0200, WindRandStrengthMin
	move.w  #0x0200, WindRandStrengthMax
	MOVE_NTSC_W 0x0120, WindRandDelayMin, d0
	MOVE_NTSC_W 0x0180, WindRandDelayMax, d0
	MOVE_NTSC_W 0x0180, WindRandDurationMin, d0
	MOVE_NTSC_W 0x0200, WindRandDurationMax, d0
	MOVE_NTSC_W 0x0080, WindDelayTimer, d0
	rts

l2a1_Trigger_WindSpeed2:
	move.w  #0x0004, WindAccel
	move.w  #-0x0280, WindRandStrengthMin
	move.w  #0x0280, WindRandStrengthMax
	MOVE_NTSC_W 0x0120, WindRandDelayMin, d0
	MOVE_NTSC_W 0x0180, WindRandDelayMax, d0
	MOVE_NTSC_W 0x0180, WindRandDurationMin, d0
	MOVE_NTSC_W 0x0200, WindRandDurationMax, d0
	MOVE_NTSC_W 0x0080, WindDelayTimer, d0
	rts

l2a1_Trigger_WindSpeed3:
	move.w  #0x0010, WindAccel
	move.w  #-0x0600, WindRandStrengthMin
	move.w  #-0x0700, WindRandStrengthMax
	MOVE_NTSC_W 0x0170, WindRandDelayMin, d0
	MOVE_NTSC_W 0x0180, WindRandDelayMax, d0
	MOVE_NTSC_W 0x01F0, WindRandDurationMin, d0
	MOVE_NTSC_W 0x0200, WindRandDurationMax, d0
	MOVE_NTSC_W 0x0080, WindDelayTimer, d0
	rts

l2a1_Trigger_WindSpeed4:
	move.w  #0x0010, WindAccel
	move.w  #-0x0900, WindRandStrengthMin
	move.w  #-0x0A00, WindRandStrengthMax
	MOVE_NTSC_W 0x0170, WindRandDelayMin, d0
	MOVE_NTSC_W 0x0180, WindRandDelayMax, d0
	MOVE_NTSC_W 0x01F0, WindRandDurationMin, d0
	MOVE_NTSC_W 0x0200, WindRandDurationMax, d0
	MOVE_NTSC_W 0x0080, WindDelayTimer, d0
	rts

l2a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

L2_LoadObjectSprites:

	move.l EntityPoolStart_Stone, a0
	move.w EntityCount_Stone, d0
	beq    @NoStones
	SPRITE_LOAD_SHARED_VRAM stone,stone_l2,0,PaletteId_World0,0x0,a0
	@NoStones:

	move.l EntityPoolStart_Boulder, a0
	move.w EntityCount_Boulder, d0
	beq    @NoBoulders
	subq   #0x1, d0
	@BoulderLp:
	PUSHW  d0
	SPRITE_LOAD_SHARED_VRAM boulder,roll_l2,0,PaletteId_World0,0x0,a0
	ANIM_LOAD_DEFAULT boulder,roll_l2,roll_l2,Boulder_Animations,BoulderAnimIdx_Roll,1,0,0
	POPW   d0
	lea    Boulder_Struct_Size(a0), a0
	dbra   d0, @BoulderLp
	@NoBoulders:

	move.l EntityPoolStart_BouncePlant, a0
	move.w EntityCount_BouncePlant, d0
	beq    @NoBouncePlants
	subq   #0x1, d0
	@BouncePlantLp:
	PUSHW  d0

	move.b BouncePlant_Orientation(a0), d1

	cmp.b  #BouncePlantOrient_0, d1
	beq    @Sprite180
	cmp.b  #BouncePlantOrient_180, d1
	beq    @Sprite180
	cmp.b  #BouncePlantOrient_45, d1
	beq    @Sprite225
	cmp.b  #BouncePlantOrient_135, d1
	beq    @Sprite225
	cmp.b  #BouncePlantOrient_225, d1
	beq    @Sprite225
	cmp.b  #BouncePlantOrient_315, d1
	beq    @Sprite225
	cmp.b  #BouncePlantOrient_90, d1
	beq    @Sprite270
	cmp.b  #BouncePlantOrient_270, d1
	beq    @Sprite270

	@Sprite180:
	SPRITE_LOAD_SHARED_VRAM mushroom,mushroom_180_l2,0,PaletteId_World0,0x0,a0
	ANIM_LOAD_DEFAULT mushroom,mushroom_180_l2,idle,BouncePlant_Animations,BouncePlantAnimIdx_Idle,0,0,0
	ANIM_LOAD_DEFAULT mushroom,mushroom_180_l2,bounce,BouncePlant_Animations,BouncePlantAnimIdx_Bounce,0,0,0
	bra    @Loaded

	@Sprite225:
	SPRITE_LOAD_SHARED_VRAM mushroom,mushroom_225,0,PaletteId_World0,0x0,a0
	ANIM_LOAD_DEFAULT mushroom,mushroom_225,idle,BouncePlant_Animations,BouncePlantAnimIdx_Idle,0,0,0
	ANIM_LOAD_DEFAULT mushroom,mushroom_225,bounce,BouncePlant_Animations,BouncePlantAnimIdx_Bounce,0,0,0
	bra    @Loaded

	@Sprite270:
	SPRITE_LOAD_SHARED_VRAM mushroom,mushroom_270,0,PaletteId_World0,0x0,a0
	ANIM_LOAD_DEFAULT mushroom,mushroom_270_l2,idle,BouncePlant_Animations,BouncePlantAnimIdx_Idle,0,0,0
	ANIM_LOAD_DEFAULT mushroom,mushroom_270_l2,bounce,BouncePlant_Animations,BouncePlantAnimIdx_Bounce,0,0,0
	bra    @Loaded

	@Loaded:

	POPW   d0
	lea    BouncePlant_Struct_Size(a0), a0
	dbra   d0, @BouncePlantLp
	@NoBouncePlants:

	rts

L2_SetActData:
	lea    CurrentActDatas, a2
	move.l #LevelData_L2A1, (a2)+
	move.l #LevelData_L2A2, (a2)+
	move.l #LevelData_L2A3, (a2)+
	move.w #0x3, CurrentLevelNumActs
	rts