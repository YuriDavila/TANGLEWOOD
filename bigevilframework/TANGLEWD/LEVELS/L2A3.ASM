;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l2a3.asm - Level 32 - Storm Warning Act 3
;==============================================================

l2a3_Thunder_Far_Dist		equ 0x9
l2a3_Thunder_Far_Interval	equ 0x0300

l2a3_Thunder_Mid_Dist		equ 0x5
l2a3_Thunder_Mid_Interval	equ 0x0280

l2a3_Thunder_Near_Dist		equ 0x0
l2a3_Thunder_Near_Interval	equ 0x0200

; ************************************
; Static data
; ************************************
l2a3_StormWarningAct3:

	dc.l LevelSelect_Str_02				; Name
	dc.l LevelData_L2A3					; Userdata
	dc.l tiles_l2						; Tileset
	dc.l map_blocks_l2					; Blocks
	dc.l map_blockmap_l2a3				; Block map
	dc.l map_blockmap_l2a3_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_l2				; Collision tileset
	dc.l collisionmap_blocks_l2			; Collision blocks
	dc.l collisionmap_blockmap_l2a3		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l2a3	; Collision block map Y offsets table
	dc.l terrainmap_L2A3_special_terrain_descs ; 'Special' terrain descriptor table
	dc.l l2a3_DefaultPalettes			; Palettes
	dc.l l2a3_Init						; Init routine
	dc.l l2a3_Update					; Update routine
	dc.l l2a3_Serialise					; Serialise routine
	dc.l l2a3_LoadGameObjects			; Load game objects routine
	dc.l l2a3_End						; End routine
	IF INCLUDE_LEVEL_3
	dc.l l3a1_HeritageAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity					; Default gravity
	dc.w map_l2a3_width					; Map width (tiles)
	dc.w map_l2a3_height				; Map height (tiles)
	dc.w map_blockmap_l2a3_width		; Map width (blocks)
	dc.w map_blockmap_l2a3_height		; Map height (blocks)
	dc.w terrainmap_L2A3_width			; Collision map width (tiles)
	dc.w terrainmap_L2A3_height			; Collision map height (tiles)
	dc.w terrainmap_L2A3_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L2A3_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L2A3_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L2A3_height; Collision map height (blocks)
	dc.w tiles_l2_size_t				; Num tiles
	dc.w terrainmap_L2A3_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	dc.b 0x6							; Index
	
	even
	
l2a3_DefaultPalettes:

	dc.l palette_l2_dusk			; World
	dc.l palette_djakk				; Djakk
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
;---------------------------------
l2a3Data_CutsceneLightning			rs.b Cutscene_Struct_Size
l2a3Data_LightningCutscenePlayed	rs.b 1
;---------------------------------
	RS_ALIGN
l2a3Data_Struct_Size     			rs.b 0
	
l2a3_Init:
	
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
	move.b  #TimeOfDay_Night, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    l2_LoadSceneAnimations

	;==============================================================

	; HACK: Load L2 specific object sprites
	jsr    L2_LoadObjectSprites
	
	;==============================================================

	; Init cutscenes
	PUSHM  a0-a1
	lea    LevelData_L2A3, a2
	lea    l2a3Data_CutsceneLightning(a2), a0
	move.l #l2a3_CutsceneLightning, a1
	jsr    CutsceneInit
	POPM   a0-a1

	;==============================================================

	; Init weather
	jsr    ThunderInit
	jsr    RainInit
	jsr    l2a3_SetThunder_Far

	move.w  #0x0004, WindAccel
	move.w  #-0x0080, WindRandStrengthMin
	move.w  #-0x0100, WindRandStrengthMax
	move.w  #0x0000, WindRandDelayMin
	move.w  #0x0001, WindRandDelayMax
	move.w  #0x0000, WindRandDurationMin
	move.w  #0x7FFF, WindRandDurationMax
	move.w  #0x0001, WindDelayTimer

	;==============================================================

	; Keep wind flue timer on
	ENTITY_GETBYNAME WindFlue, l2a3_WindFlue1, a0
	move.w #0x7FFF, WindFlue_OnTime(a0)
	move.w #0x0001, WindFlue_OffTime(a0)
	move.w #0x7FFF, WindFlue_Timer(a0)

	; Remove large death box from world grid, its corners span more than the screen
	ENTITY_GETBYNAME Deathbox, l2a3_DeathBoxWindFlue, a0
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityAddToUpdateList

	;==============================================================

	; 'Special' terrain is lightning shelter, don't collide
	move.l (Player1), a2
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a2)

	move.w (EntityCount_Fuzzl), d6
	move.l (EntityPoolStart_Fuzzl), a2
	subq.w  #0x1, d6
	@FuzzlLoop:
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a2)
	lea    Fuzzl_Struct_Size(a2), a2
	dbra   d6, @FuzzlLoop

	;==============================================================

	; Don't bother with Djakk emerge sequence
	ENTITY_GETBYNAME Monster, l2a3_Djakk, a0
	jsr    MonsterSkipIntro

	; Disable lost player timeout
	move.w #-1, Monster_LoseSightTimer(a0)

	;==============================================================

	; Start rain ambience
	PUSHM  a0/d0-d1
	lea    track_amb_rain, a0
	jsr    SND_PlayTrack
	POPM   a0/d0-d1

	; If lightning cutscene already played, disable Hogg
	lea    LevelData_L2A3, a2
	tst.b  l2a3Data_LightningCutscenePlayed(a2)
	beq    @NotPlayed
	ENTITY_GETBYNAME Hogg, l2a3_HoggLightningCutscene, a0
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	@NotPlayed:
	
	rts
	
l2a3_Update:

	IFD EMUBUILD

	; Achievements
	tst.b  EmuTrap_ACH_L2A3_KILL_DJAKK
	bne    @Unlocked
	ENTITY_GETBYNAME Monster, l2a3_Djakk, a0
	tst.b  Character_Dead(a0)
	beq    @NotDead
	addi.b #0x1, EmuTrap_ACH_L2A3_KILL_DJAKK
	@Unlocked:
	@NotDead:

	ENDIF

	rts
	
l2a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l2a3_SetThunder_Far:
	move.w #l2a3_Thunder_Far_Interval, d0
	move.w #l2a3_Thunder_Far_Dist, d1
	jsr    ThunderSetParams
	rts

l2a3_SetThunder_Mid:
	move.w #l2a3_Thunder_Mid_Interval, d0
	move.w #l2a3_Thunder_Mid_Dist, d1
	jsr    ThunderSetParams
	rts

l2a3_SetThunder_Near:
	move.w #l2a3_Thunder_Near_Interval, d0
	move.w #l2a3_Thunder_Near_Dist, d1
	jsr    ThunderSetParams
	rts

l2a3_Trigger_ThunderCutscene:

	; If lightning cutscene already played
	lea    LevelData_L2A3, a2
	tst.b  l2a3Data_LightningCutscenePlayed(a2)
	beq    @NotPlayed

	; Just do warning shot and set params
	jsr    l2a3_SetThunder_Near
	move.l #0x0, a3
	jsr    ThunderStrike

	bra    @End

	@NotPlayed:

	; Start cutscene
	PUSHL  a0
	lea    LevelData_L2A3, a2
	lea    l2a3Data_CutsceneLightning(a2), a0
	jsr    CutscenePlay
	POPL   a0

	lea    LevelData_L2A3, a2
	move.b #0x1, l2a3Data_LightningCutscenePlayed(a2)

	@End:

	rts

l2a3_Trigger_EndStorm:

	; Disable thunder
	lea    Thunder, a2
	move.b #0x0, Thunder_Enabled(a2)

	; Disable rain
	lea    EntityArray_VFX+(VfxId_RainLight*VfxObj_Struct_Size), a2
	move.b #0x0, Entity_Active(a2)

	; Disable rain audio
	move.b #Track_Type_Ambience, d0
	jsr    SND_StopTrackType

	rts

l2a3_Trigger_EndDjakkChase:

	; Djakk back to initial state
	ENTITY_GETBYNAME Monster, l2a3_Djakk, a0
	jsr    MonsterStartWaitForPlayer

	; Stop music
	move.b #Track_Type_BGM, d0
	jsr    SND_StopTrackType

	rts

l2a3_Trigger_End:

	; Nymn sleep
	PUSHL  a0
	move.l (Player1), a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts

l2a3_End:
	rts

l2a3_CutsceneLightning:

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Cancel all interations
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractB

	; Lerp camera up to tree branch
	CUTSCENE_GET_ENTITY Location,l2a3_LocationLightningCameraLerp,a2
	CUTSCENE_CAMERA_LERP a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT

	; Lightning strike (warning shot)
	CUTSCENE_ROUTINE l2a3_CutsceneThunderStrikePlayer,#0x0,#0x0,#0x0
	CUTSCENE_DELAY #0x0060

	; Snort!
	CUTSCENE_STOP_SFX
	CUTSCENE_DELAY #0x0008
	CUTSCENE_PLAY_SFX #SFX_Hogg_Grunt

	; Lerp camera to Hogg
	CUTSCENE_GET_ENTITY Hogg,l2a3_HoggLightningCutscene,a3
	CUTSCENE_CAMERA_LERP a3,#0x08

	; Move Hogg to marker
	CUTSCENE_GET_ENTITY Hogg,l2a3_HoggLightningCutscene,a2
	CUTSCENE_GET_ENTITY Location,l2a3_LocationStrikeHogg,a3
	CUTSCENE_CHARACTER_MOVE_RELATIVE a2,a3,#0x0,#0x08

	; Lightning strike (Hogg)
	CUTSCENE_ROUTINE l2a3_CutsceneThunderStrikeHogg,#0x0,#0x0,#0x0
	CUTSCENE_DELAY #0x0008

	; Kill hogg
	CUTSCENE_GET_ENTITY Hogg,l2a3_HoggLightningCutscene,a2
	move.b #0xFF, d0
	CUTSCENE_OBJECT_ROUTINE a2,#CharacterDealDamage

	; Wait
	CUTSCENE_DELAY #0x0020

	; Lerp camera back
	CUTSCENE_CAMERA_LERP Player1,#0x08

	; Set lightning params
	CUTSCENE_ROUTINE l2a3_CutsceneThunderSetParams,#0x0,#0x0,#0x0

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END_LETTERBOX
	CUTSCENE_END

	rts

l2a3_CutsceneThunderStrikePlayer:

	move.l #0x0, a3
	move.w #0x0, d0
	move.w #l2a3_Thunder_Near_Dist, d1
	jsr    ThunderSetParams
	jsr    ThunderStrike

	move.b #0x0, d0

	rts

l2a3_CutsceneThunderStrikeHogg:

	ENTITY_GETBYNAME Hogg,l2a3_HoggLightningCutscene,a3
	move.w #0x0, d0
	move.w #l2a3_Thunder_Near_Dist, d1
	jsr    ThunderSetParams
	jsr    ThunderStrike

	move.b #0x0, d0

	rts

l2a3_CutsceneThunderSetParams:

	move.w #l2a3_Thunder_Near_Interval, d0
	move.w #l2a3_Thunder_Near_Dist, d1
	jsr    ThunderSetParams

	move.b #0x0, d0

	rts