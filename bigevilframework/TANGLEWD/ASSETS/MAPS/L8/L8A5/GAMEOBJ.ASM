; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


L8A5_Leaf_count equ 0x0

L8A5_Demon_count equ 0x1
L8A5_Demon_idx	equ 0x0

	IFND FINAL
L8A5_Demon_name	dc.b "L8A5_Demon",0
	even
	ENDIF

L8A5_Swarm_count equ 0x1
L8A5_Swarm_idx	equ 0x0

	IFND FINAL
L8A5_Swarm_name	dc.b "L8A5_Swarm",0
	even
	ENDIF

L8A5_Djubb_count equ 0x0

L8A5_Trap_count equ 0x0

L8A5_Nymn_count equ 0x1
L8A5_Nymn_idx	equ 0x0

	IFND FINAL
L8A5_Nymn_name	dc.b "L8A5_Nymn",0
	even
	ENDIF

L8A5_Echo_count equ 0x1
L8A5_Echo_1_idx	equ 0x0

	IFND FINAL
L8A5_Echo_1_name	dc.b "L8A5_Echo_1",0
	even
	ENDIF

L8A5_BouncePlant_count equ 0x0

L8A5_DjakkCage_count equ 0x0

L8A5_Log_count equ 0x0

L8A5_Borgus_count equ 0x0

L8A5_Boulder_count equ 0x0

L8A5_Monster_count equ 0x0

L8A5_Firefly_count equ 0x0

L8A5_FuzzlCage_count equ 0x0

L8A5_Fuzzl_count equ 0x1
L8A5_FuzzlRed1_idx	equ 0x0

	IFND FINAL
L8A5_FuzzlRed1_name	dc.b "L8A5_FuzzlRed1",0
	even
	ENDIF

L8A5_Stone_count equ 0x3
L8A5_Stone_9_idx	equ 0x0
L8A5_Stone_11_idx	equ 0x1
L8A5_Stone_20_idx	equ 0x2

	IFND FINAL
L8A5_Stone_9_name	dc.b "L8A5_Stone_9",0
L8A5_Stone_11_name	dc.b "L8A5_Stone_11",0
L8A5_Stone_20_name	dc.b "L8A5_Stone_20",0
	even
	ENDIF

L8A5_Raft_count equ 0x0

L8A5_Nest_count equ 0x0

L8A5_Flue_count equ 0x0

L8A5_TriggerBox_count equ 0x3
L8A5_TriggerLevelEnd_idx	equ 0x0
L8A5_TriggerDemon_idx	equ 0x1
L8A5_EnableEchoAI_idx	equ 0x2

	IFND FINAL
L8A5_TriggerLevelEnd_name	dc.b "L8A5_TriggerLevelEnd",0
L8A5_TriggerDemon_name	dc.b "L8A5_TriggerDemon",0
L8A5_EnableEchoAI_name	dc.b "L8A5_EnableEchoAI",0
	even
	ENDIF

L8A5_WaterBody_count equ 0x0

L8A5_Location_count equ 0x1
L8A5_LocationLiftStop_idx	equ 0x0

	IFND FINAL
L8A5_LocationLiftStop_name	dc.b "L8A5_LocationLiftStop",0
	even
	ENDIF

L8A5_Deathbox_count equ 0x2
L8A5_Deathbox_3_idx	equ 0x0
L8A5_Deathbox_4_idx	equ 0x1

	IFND FINAL
L8A5_Deathbox_3_name	dc.b "L8A5_Deathbox_3",0
L8A5_Deathbox_4_name	dc.b "L8A5_Deathbox_4",0
	even
	ENDIF

L8A5_Lift_count equ 0x1
L8A5_Lift1_idx	equ 0x0

	IFND FINAL
L8A5_Lift1_name	dc.b "L8A5_Lift1",0
	even
	ENDIF

L8A5_Crate_count equ 0x1
L8A5_Crate_8_idx	equ 0x0

	IFND FINAL
L8A5_Crate_8_name	dc.b "L8A5_Crate_8",0
	even
	ENDIF

L8A5_Generator_count equ 0x1
L8A5_Generator1_idx	equ 0x0

	IFND FINAL
L8A5_Generator1_name	dc.b "L8A5_Generator1",0
	even
	ENDIF

L8A5_Cogs_count equ 0x1
L8A5_Cogs1_idx	equ 0x0

	IFND FINAL
L8A5_Cogs1_name	dc.b "L8A5_Cogs1",0
	even
	ENDIF

L8A5_Button_count equ 0x1
L8A5_Button1_idx	equ 0x0

	IFND FINAL
L8A5_Button1_name	dc.b "L8A5_Button1",0
	even
	ENDIF

L8A5_Wyrm_count equ 0x0

L8A5_AIMarker_count equ 0x2
L8A5_MarkerDemonLeftBounds_idx	equ 0x0
L8A5_MarkerDemonRightBounds_idx	equ 0x1

	IFND FINAL
L8A5_MarkerDemonLeftBounds_name	dc.b "L8A5_MarkerDemonLeftBounds",0
L8A5_MarkerDemonRightBounds_name	dc.b "L8A5_MarkerDemonRightBounds",0
	even
	ENDIF

L8A5_Cart_count equ 0x0

L8A5_Winch_count equ 0x0

L8A5_Pillar_count equ 0x0

L8A5_WindFlue_count equ 0x0

L8A5_Lock_count equ 0x0

L8A5_Pool_count equ 0x0

L8A5_Stalactite_count equ 0x0

L8A5_CargoLift_count equ 0x0

L8A5_Scrap_count equ 0x0

L8A5_Longboat_count equ 0x0

L8A5_Skivv_count equ 0x0

L8A5_Ladder_count equ 0x0

L8A5_Scirus_count equ 0x0

L8A5_Hogg_count equ 0x0

L8A5_Bridge_count equ 0x1
L8A5_Bridge1_idx	equ 0x0

	IFND FINAL
L8A5_Bridge1_name	dc.b "L8A5_Bridge1",0
	even
	ENDIF

L8A5_Checkpoint_count equ 0x0



L8A5_LoadGameObjects:

	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Demon_Struct_Size*L8A5_Demon_count)
	move.l a1, EntityPoolStart_Demon
	move.l a1, a0
	POPL   a1

	jsr DemonInit
	move.l #0x02900000, Entity_WorldPosX(a0)
	move.l #0x00a00000, Entity_WorldPosY(a0)
	jsr DemonLoadGfx
	IFND FINAL
	lea L8A5_Demon_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xa, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Demon_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Swarm_Struct_Size*L8A5_Swarm_count)
	move.l a1, EntityPoolStart_Swarm
	move.l a1, a0
	POPL   a1

	jsr SwarmInit
	move.l #0x03100000, Entity_WorldPosX(a0)
	move.l #0x00a00000, Entity_WorldPosY(a0)
	jsr SwarmLoadGfx
	IFND FINAL
	lea L8A5_Swarm_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xa, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Swarm_Struct_Size, a0




	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Nymn_Struct_Size*L8A5_Nymn_count)
	move.l a1, EntityPoolStart_Nymn
	move.l a1, a0
	POPL   a1

	jsr NymnInit
	move.l #0x09680000, Entity_WorldPosX(a0)
	move.l #0x01400000, Entity_WorldPosY(a0)
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)
	move.b #0x1, SpriteObj_FlippedX(a0)
	jsr NymnLoadGfx
	IFND FINAL
	lea L8A5_Nymn_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x9, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Nymn_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Echo_Struct_Size*L8A5_Echo_count)
	move.l a1, EntityPoolStart_Echo
	move.l a1, a0
	POPL   a1

	jsr EchoInit
	move.l #0x09a00000, Entity_WorldPosX(a0)
	move.l #0x01400000, Entity_WorldPosY(a0)
	move.b #0x1, SpriteObj_FlippedX(a0)
	jsr EchoLoadGfx
	IFND FINAL
	lea L8A5_Echo_1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xb, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Echo_Struct_Size, a0










	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Fuzzl_Struct_Size*L8A5_Fuzzl_count)
	move.l a1, EntityPoolStart_Fuzzl
	move.l a1, a0
	POPL   a1

	jsr FuzzlInit
	move.l #0x03380000, Entity_WorldPosX(a0)
	move.l #0x01980000, Entity_WorldPosY(a0)
	jsr FuzzlLoadGfx
	IFND FINAL
	lea L8A5_FuzzlRed1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xe, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Fuzzl_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Stone_Struct_Size*L8A5_Stone_count)
	move.l a1, EntityPoolStart_Stone
	move.l a1, a0
	POPL   a1

	jsr StoneInit
	move.l #0x03700000, Entity_WorldPosX(a0)
	move.l #0x01a00000, Entity_WorldPosY(a0)
	jsr StoneLoadGfx
	IFND FINAL
	lea L8A5_Stone_9_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xc, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Stone_Struct_Size, a0

	jsr StoneInit
	move.l #0x01880000, Entity_WorldPosX(a0)
	move.l #0x01c00000, Entity_WorldPosY(a0)
	jsr StoneLoadGfx
	IFND FINAL
	lea L8A5_Stone_11_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xd, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Stone_Struct_Size, a0

	jsr StoneInit
	move.l #0x03680000, Entity_WorldPosX(a0)
	move.l #0x01680000, Entity_WorldPosY(a0)
	jsr StoneLoadGfx
	IFND FINAL
	lea L8A5_Stone_20_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xd, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Stone_Struct_Size, a0





	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(TriggerBox_Struct_Size*L8A5_TriggerBox_count)
	move.l a1, EntityPoolStart_TriggerBox
	move.l a1, a0
	POPL   a1

	jsr TriggerBoxInit
	move.l #0x00800000, Entity_WorldPosX(a0)
	move.l #0x00800000, Entity_WorldPosY(a0)
	move.l #l8a5_Trigger_End, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	jsr TriggerBoxLoadGfx
	IFND FINAL
	lea L8A5_TriggerLevelEnd_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #TriggerBox_Struct_Size, a0

	jsr TriggerBoxInit
	move.l #0x03d80000, Entity_WorldPosX(a0)
	move.l #0x01300000, Entity_WorldPosY(a0)
	move.l #l8a5_Trigger_DemonTakeFuzzl, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #TriggerType_Intersect, TriggerBox_TriggerType(a0)
	jsr TriggerBoxLoadGfx
	IFND FINAL
	lea L8A5_TriggerDemon_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #TriggerBox_Struct_Size, a0

	jsr TriggerBoxInit
	move.l #0x01300000, Entity_WorldPosX(a0)
	move.l #0x00800000, Entity_WorldPosY(a0)
	move.l #l8a5_Trigger_StartEchoAI, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	jsr TriggerBoxLoadGfx
	IFND FINAL
	lea L8A5_EnableEchoAI_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #TriggerBox_Struct_Size, a0



	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Location_Struct_Size*L8A5_Location_count)
	move.l a1, EntityPoolStart_Location
	move.l a1, a0
	POPL   a1

	jsr LocationInit
	move.l #0x01900000, Entity_WorldPosX(a0)
	move.l #0x00f00000, Entity_WorldPosY(a0)
	jsr LocationLoadGfx
	IFND FINAL
	lea L8A5_LocationLiftStop_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Location_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Deathbox_Struct_Size*L8A5_Deathbox_count)
	move.l a1, EntityPoolStart_Deathbox
	move.l a1, a0
	POPL   a1

	jsr DeathboxInit
	move.l #0x03300000, Entity_WorldPosX(a0)
	move.l #0x02200000, Entity_WorldPosY(a0)
	jsr DeathboxLoadGfx
	IFND FINAL
	lea L8A5_Deathbox_3_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Deathbox_Struct_Size, a0

	jsr DeathboxInit
	move.l #0x05100000, Entity_WorldPosX(a0)
	move.l #0x02200000, Entity_WorldPosY(a0)
	jsr DeathboxLoadGfx
	IFND FINAL
	lea L8A5_Deathbox_4_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Deathbox_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Lift_Struct_Size*L8A5_Lift_count)
	move.l a1, EntityPoolStart_Lift
	move.l a1, a0
	POPL   a1

	jsr LiftInit
	move.l #0x01780000, Entity_WorldPosX(a0)
	move.l #0x01900000, Entity_WorldPosY(a0)
	jsr LiftLoadGfx
	IFND FINAL
	lea L8A5_Lift1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xa, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Lift_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Crate_Struct_Size*L8A5_Crate_count)
	move.l a1, EntityPoolStart_Crate
	move.l a1, a0
	POPL   a1

	jsr CrateInit
	move.l #0x02d00000, Entity_WorldPosX(a0)
	move.l #0x01880000, Entity_WorldPosY(a0)
	jsr CrateLoadGfx
	IFND FINAL
	lea L8A5_Crate_8_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xc, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Crate_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Generator_Struct_Size*L8A5_Generator_count)
	move.l a1, EntityPoolStart_Generator
	move.l a1, a0
	POPL   a1

	jsr GeneratorInit
	move.l #0x03300000, Entity_WorldPosX(a0)
	move.l #0x01980000, Entity_WorldPosY(a0)
	jsr GeneratorLoadGfx
	IFND FINAL
	lea L8A5_Generator1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Generator_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Cogs_Struct_Size*L8A5_Cogs_count)
	move.l a1, EntityPoolStart_Cogs
	move.l a1, a0
	POPL   a1

	jsr CogsInit
	move.l #0x03480000, Entity_WorldPosX(a0)
	move.l #0x01280000, Entity_WorldPosY(a0)
	jsr CogsLoadGfx
	IFND FINAL
	lea L8A5_Cogs1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xa, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Cogs_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Button_Struct_Size*L8A5_Button_count)
	move.l a1, EntityPoolStart_Button
	move.l a1, a0
	POPL   a1

	jsr ButtonInit
	move.l #0x01c00000, Entity_WorldPosX(a0)
	move.l #0x01c80000, Entity_WorldPosY(a0)
	jsr ButtonLoadGfx
	IFND FINAL
	lea L8A5_Button1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xc, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Button_Struct_Size, a0



	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(AIMarker_Struct_Size*L8A5_AIMarker_count)
	move.l a1, EntityPoolStart_AIMarker
	move.l a1, a0
	POPL   a1

	jsr AIMarkerInit
	move.l #0x01b80000, Entity_WorldPosX(a0)
	move.l #0x01c00000, Entity_WorldPosY(a0)
	jsr AIMarkerLoadGfx
	IFND FINAL
	lea L8A5_MarkerDemonLeftBounds_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #AIMarker_Struct_Size, a0

	jsr AIMarkerInit
	move.l #0x03580000, Entity_WorldPosX(a0)
	move.l #0x01a00000, Entity_WorldPosY(a0)
	jsr AIMarkerLoadGfx
	IFND FINAL
	lea L8A5_MarkerDemonRightBounds_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #AIMarker_Struct_Size, a0
















	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Bridge_Struct_Size*L8A5_Bridge_count)
	move.l a1, EntityPoolStart_Bridge
	move.l a1, a0
	POPL   a1

	jsr BridgeInit
	move.l #0x03980000, Entity_WorldPosX(a0)
	move.l #0x01b00000, Entity_WorldPosY(a0)
	move.b #Bridge_ModeDrop, Bridge_Mode(a0)
	move.b #0x0, Bridge_DropUnderWeight(a0)
	jsr BridgeLoadGfx
	IFND FINAL
	lea L8A5_Bridge1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xc, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Bridge_Struct_Size, a0



	rts

