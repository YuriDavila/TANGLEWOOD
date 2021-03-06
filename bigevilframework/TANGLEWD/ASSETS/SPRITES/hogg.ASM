; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


actor_hogg:

actor_hogg_VRAM_size_b		equ 0x1E0	; VRAM size to alloc (size of largest frame, bytes)
actor_hogg_sheet_dead_width		equ 0x28	; Max width of largest frame in pixels
actor_hogg_sheet_dead_height		equ 0x18	; Max height of largest frame in pixels


actor_hogg_sheet_wall_width		equ 0x28	; Max width of largest frame in pixels
actor_hogg_sheet_wall_height		equ 0x18	; Max height of largest frame in pixels


actor_hogg_sheet_run_width		equ 0x28	; Max width of largest frame in pixels
actor_hogg_sheet_run_height		equ 0x18	; Max height of largest frame in pixels


actor_hogg_sheet_dead_frametable:
actor_hogg_sheet_dead_frame_0_header:
	dc.w 0x000A	; Frame size (tiles)
	dc.w actor_hogg_sheet_dead_frame_0_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_dead_frame_0
	dc.l actor_hogg_sheet_dead_frame_0_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_dead_frame_0_subsprite_pos_offsets

actor_hogg_sheet_wall_frametable:
actor_hogg_sheet_wall_frame_0_header:
	dc.w 0x000F	; Frame size (tiles)
	dc.w actor_hogg_sheet_wall_frame_0_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_wall_frame_0
	dc.l actor_hogg_sheet_wall_frame_0_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_wall_frame_0_subsprite_pos_offsets

actor_hogg_sheet_wall_frame_1_header:
	dc.w 0x000C	; Frame size (tiles)
	dc.w actor_hogg_sheet_wall_frame_1_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_wall_frame_1
	dc.l actor_hogg_sheet_wall_frame_1_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_wall_frame_1_subsprite_pos_offsets

actor_hogg_sheet_wall_frame_2_header:
	dc.w 0x000C	; Frame size (tiles)
	dc.w actor_hogg_sheet_wall_frame_2_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_wall_frame_2
	dc.l actor_hogg_sheet_wall_frame_2_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_wall_frame_2_subsprite_pos_offsets

actor_hogg_sheet_wall_frame_3_header:
	dc.w 0x000C	; Frame size (tiles)
	dc.w actor_hogg_sheet_wall_frame_3_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_wall_frame_3
	dc.l actor_hogg_sheet_wall_frame_3_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_wall_frame_3_subsprite_pos_offsets

actor_hogg_sheet_wall_frame_4_header:
	dc.w 0x000C	; Frame size (tiles)
	dc.w actor_hogg_sheet_wall_frame_4_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_wall_frame_4
	dc.l actor_hogg_sheet_wall_frame_4_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_wall_frame_4_subsprite_pos_offsets

actor_hogg_sheet_wall_frame_5_header:
	dc.w 0x000C	; Frame size (tiles)
	dc.w actor_hogg_sheet_wall_frame_5_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_wall_frame_5
	dc.l actor_hogg_sheet_wall_frame_5_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_wall_frame_5_subsprite_pos_offsets

actor_hogg_sheet_wall_frame_6_header:
	dc.w 0x000F	; Frame size (tiles)
	dc.w actor_hogg_sheet_wall_frame_6_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_wall_frame_6
	dc.l actor_hogg_sheet_wall_frame_6_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_wall_frame_6_subsprite_pos_offsets

actor_hogg_sheet_run_frametable:
actor_hogg_sheet_run_frame_0_header:
	dc.w 0x000F	; Frame size (tiles)
	dc.w actor_hogg_sheet_run_frame_0_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_run_frame_0
	dc.l actor_hogg_sheet_run_frame_0_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_run_frame_0_subsprite_pos_offsets

actor_hogg_sheet_run_frame_1_header:
	dc.w 0x000F	; Frame size (tiles)
	dc.w actor_hogg_sheet_run_frame_1_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_run_frame_1
	dc.l actor_hogg_sheet_run_frame_1_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_run_frame_1_subsprite_pos_offsets

actor_hogg_sheet_run_frame_2_header:
	dc.w 0x000F	; Frame size (tiles)
	dc.w actor_hogg_sheet_run_frame_2_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_run_frame_2
	dc.l actor_hogg_sheet_run_frame_2_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_run_frame_2_subsprite_pos_offsets

actor_hogg_sheet_run_frame_3_header:
	dc.w 0x000F	; Frame size (tiles)
	dc.w actor_hogg_sheet_run_frame_3_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_run_frame_3
	dc.l actor_hogg_sheet_run_frame_3_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_run_frame_3_subsprite_pos_offsets

actor_hogg_sheet_run_frame_4_header:
	dc.w 0x000F	; Frame size (tiles)
	dc.w actor_hogg_sheet_run_frame_4_size_subsprites	; Frame size (subsprites)
	dc.l actor_hogg_sheet_run_frame_4
	dc.l actor_hogg_sheet_run_frame_4_subsprite_dimensions_bits
	dc.l actor_hogg_sheet_run_frame_4_subsprite_pos_offsets

actor_hogg_sheet_dead_frame_0_size_b		equ 0x0140	; Size in bytes
actor_hogg_sheet_dead_frame_0_size_t		equ 0x000A	; Size in tiles
actor_hogg_sheet_dead_frame_0_size_subsprites		equ 0x0002	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_dead_frame_0_subsprite_pos_offsets:
	dc.l 0x00000008, 0x00080008
	dc.l 0x00200008, 0x00000008
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_dead_frame_0_subsprite_dimensions_bits:
	dc.b 0xD
	dc.b 0x1
	Even


actor_hogg_sheet_wall_frame_0_size_b		equ 0x01E0	; Size in bytes
actor_hogg_sheet_wall_frame_0_size_t		equ 0x000F	; Size in tiles
actor_hogg_sheet_wall_frame_0_size_subsprites		equ 0x0002	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_wall_frame_0_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00080000
	dc.l 0x00200000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_wall_frame_0_subsprite_dimensions_bits:
	dc.b 0xE
	dc.b 0x2
	Even

actor_hogg_sheet_wall_frame_1_size_b		equ 0x0180	; Size in bytes
actor_hogg_sheet_wall_frame_1_size_t		equ 0x000C	; Size in tiles
actor_hogg_sheet_wall_frame_1_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_wall_frame_1_subsprite_pos_offsets:
	dc.l 0x00080000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_wall_frame_1_subsprite_dimensions_bits:
	dc.b 0xE
	Even

actor_hogg_sheet_wall_frame_2_size_b		equ 0x0180	; Size in bytes
actor_hogg_sheet_wall_frame_2_size_t		equ 0x000C	; Size in tiles
actor_hogg_sheet_wall_frame_2_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_wall_frame_2_subsprite_pos_offsets:
	dc.l 0x00080000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_wall_frame_2_subsprite_dimensions_bits:
	dc.b 0xE
	Even

actor_hogg_sheet_wall_frame_3_size_b		equ 0x0180	; Size in bytes
actor_hogg_sheet_wall_frame_3_size_t		equ 0x000C	; Size in tiles
actor_hogg_sheet_wall_frame_3_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_wall_frame_3_subsprite_pos_offsets:
	dc.l 0x00080000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_wall_frame_3_subsprite_dimensions_bits:
	dc.b 0xE
	Even

actor_hogg_sheet_wall_frame_4_size_b		equ 0x0180	; Size in bytes
actor_hogg_sheet_wall_frame_4_size_t		equ 0x000C	; Size in tiles
actor_hogg_sheet_wall_frame_4_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_wall_frame_4_subsprite_pos_offsets:
	dc.l 0x00080000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_wall_frame_4_subsprite_dimensions_bits:
	dc.b 0xE
	Even

actor_hogg_sheet_wall_frame_5_size_b		equ 0x0180	; Size in bytes
actor_hogg_sheet_wall_frame_5_size_t		equ 0x000C	; Size in tiles
actor_hogg_sheet_wall_frame_5_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_wall_frame_5_subsprite_pos_offsets:
	dc.l 0x00080000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_wall_frame_5_subsprite_dimensions_bits:
	dc.b 0xE
	Even

actor_hogg_sheet_wall_frame_6_size_b		equ 0x01E0	; Size in bytes
actor_hogg_sheet_wall_frame_6_size_t		equ 0x000F	; Size in tiles
actor_hogg_sheet_wall_frame_6_size_subsprites		equ 0x0002	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_wall_frame_6_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00080000
	dc.l 0x00200000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_wall_frame_6_subsprite_dimensions_bits:
	dc.b 0xE
	dc.b 0x2
	Even


actor_hogg_sheet_run_frame_0_size_b		equ 0x01E0	; Size in bytes
actor_hogg_sheet_run_frame_0_size_t		equ 0x000F	; Size in tiles
actor_hogg_sheet_run_frame_0_size_subsprites		equ 0x0002	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_run_frame_0_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00080000
	dc.l 0x00200000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_run_frame_0_subsprite_dimensions_bits:
	dc.b 0xE
	dc.b 0x2
	Even

actor_hogg_sheet_run_frame_1_size_b		equ 0x01E0	; Size in bytes
actor_hogg_sheet_run_frame_1_size_t		equ 0x000F	; Size in tiles
actor_hogg_sheet_run_frame_1_size_subsprites		equ 0x0002	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_run_frame_1_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00080000
	dc.l 0x00200000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_run_frame_1_subsprite_dimensions_bits:
	dc.b 0xE
	dc.b 0x2
	Even

actor_hogg_sheet_run_frame_2_size_b		equ 0x01E0	; Size in bytes
actor_hogg_sheet_run_frame_2_size_t		equ 0x000F	; Size in tiles
actor_hogg_sheet_run_frame_2_size_subsprites		equ 0x0002	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_run_frame_2_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00080000
	dc.l 0x00200000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_run_frame_2_subsprite_dimensions_bits:
	dc.b 0xE
	dc.b 0x2
	Even

actor_hogg_sheet_run_frame_3_size_b		equ 0x01E0	; Size in bytes
actor_hogg_sheet_run_frame_3_size_t		equ 0x000F	; Size in tiles
actor_hogg_sheet_run_frame_3_size_subsprites		equ 0x0002	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_run_frame_3_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00080000
	dc.l 0x00200000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_run_frame_3_subsprite_dimensions_bits:
	dc.b 0xE
	dc.b 0x2
	Even

actor_hogg_sheet_run_frame_4_size_b		equ 0x01E0	; Size in bytes
actor_hogg_sheet_run_frame_4_size_t		equ 0x000F	; Size in tiles
actor_hogg_sheet_run_frame_4_size_subsprites		equ 0x0002	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_hogg_sheet_run_frame_4_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00080000
	dc.l 0x00200000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_hogg_sheet_run_frame_4_subsprite_dimensions_bits:
	dc.b 0xE
	dc.b 0x2
	Even


spritesheets_hogg:

spritesheet_hogg_dead:

actor_hogg_sheet_dead_frame_0:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000031
	dc.l	0x00003211
	dc.l	0x00031313
	dc.l	0x00011112
	dc.l	0x00331132
	dc.l	0x01111322
	dc.l	0x11113113

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000003
	dc.l	0x00000036

	dc.l	0x03303316
	dc.l	0x11332123
	dc.l	0x321112A3
	dc.l	0x2A3AAAA2
	dc.l	0xA2A2A233
	dc.l	0x22213331
	dc.l	0x31133113
	dc.l	0x13111111

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00003311
	dc.l	0x01631138
	dc.l	0x18112AAA
	dc.l	0x83982A22

	dc.l	0x182AA21A
	dc.l	0x8212A221
	dc.l	0xA12AAA13
	dc.l	0xA212AA11
	dc.l	0x2313AA21
	dc.l	0x3112A131
	dc.l	0x1313A232
	dc.l	0x11111A13

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x11100000
	dc.l	0x38930000
	dc.l	0x83311611
	dc.l	0x23113186
	dc.l	0xA21AA961

	dc.l	0xAA121689
	dc.l	0x2AAA6116
	dc.l	0xAA231911
	dc.l	0x22216698
	dc.l	0xA2311899
	dc.l	0x12316168
	dc.l	0x1313A216
	dc.l	0xA12A2321

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000000
	dc.l	0x00000000
	dc.l	0x10000000

	dc.l	0x81000000
	dc.l	0x11000000
	dc.l	0x00000000
	dc.l	0x11000006
	dc.l	0x86100611
	dc.l	0x68616161
	dc.l	0x16189810
	dc.l	0x31161100




spritesheet_hogg_wall:

actor_hogg_sheet_wall_frame_0:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000001
	dc.l	0x00000011
	dc.l	0x00000011
	dc.l	0x00000003
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000003
	dc.l	0x00330011
	dc.l	0x1112113A
	dc.l	0x03213222
	dc.l	0x00112222
	dc.l	0x00012222
	dc.l	0x00132223
	dc.l	0x11222211

	dc.l	0x11321133
	dc.l	0x13113330
	dc.l	0x00033300
	dc.l	0x00330000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000600
	dc.l	0x00006300
	dc.l	0x00003100
	dc.l	0x00019630
	dc.l	0x00318113
	dc.l	0x00683882
	dc.l	0x036182AA
	dc.l	0x01382133

	dc.l	0x1131AA2A
	dc.l	0x3A3AA212
	dc.l	0x22AA31AA
	dc.l	0x2323112A
	dc.l	0x133113AA
	dc.l	0x333112AA
	dc.l	0x11111AA2
	dc.l	0x30111AA2

	dc.l	0x00031A21
	dc.l	0x00001223
	dc.l	0x00303131
	dc.l	0x00033132
	dc.l	0x00330131
	dc.l	0x00000110
	dc.l	0x00000113
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000031
	dc.l	0x11331198
	dc.l	0xA1138936
	dc.l	0xA3883310
	dc.l	0xAAA23113

	dc.l	0x22AA2321
	dc.l	0xA212A2A2
	dc.l	0xA21AAAAA
	dc.l	0xA112AA22
	dc.l	0xA13AAA31
	dc.l	0x212AA211
	dc.l	0x31AA2386
	dc.l	0x11AA2168

	dc.l	0x11A22168
	dc.l	0x01223166
	dc.l	0x012A1166
	dc.l	0x00132116
	dc.l	0x00131011
	dc.l	0x00110000
	dc.l	0x00113000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x11000000
	dc.l	0x10000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x30000000

	dc.l	0x31110000
	dc.l	0x18600000
	dc.l	0x96110030
	dc.l	0x68981000
	dc.l	0x16891303
	dc.l	0x31168130
	dc.l	0x13111113
	dc.l	0x91110000

	dc.l	0x89130003
	dc.l	0x89911331
	dc.l	0x88899111
	dc.l	0x66888888
	dc.l	0x16666661
	dc.l	0x11111113
	dc.l	0x00000003
	dc.l	0x00000030


actor_hogg_sheet_wall_frame_1:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x03110000
	dc.l	0x00123001
	dc.l	0x00012113
	dc.l	0x00011322
	dc.l	0x00001222
	dc.l	0x00003122

	dc.l	0x00000122
	dc.l	0x00000011
	dc.l	0x00000000
	dc.l	0x00000003
	dc.l	0x00000001
	dc.l	0x00000001
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000600
	dc.l	0x00006300
	dc.l	0x00003100
	dc.l	0x00019630
	dc.l	0x00318113
	dc.l	0x0068388A
	dc.l	0x036182AA

	dc.l	0x0138233A
	dc.l	0x0131A2A2
	dc.l	0x3113212A
	dc.l	0x13AA1AAA
	dc.l	0xA222122A
	dc.l	0x2A333AAA
	dc.l	0x2A33112A
	dc.l	0x22A1112A

	dc.l	0x222131AA
	dc.l	0x13A131A2
	dc.l	0x12113112
	dc.l	0x11110013
	dc.l	0x11330001
	dc.l	0x31310000
	dc.l	0x00330000
	dc.l	0x00033000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000311
	dc.l	0x03311981
	dc.l	0x11389360
	dc.l	0x38833100
	dc.l	0x22231000
	dc.l	0xA22A1110

	dc.l	0xAA2AAA21
	dc.l	0x2AA232A9
	dc.l	0x212A23A6
	dc.l	0xA212AA12
	dc.l	0xA13AAA11
	dc.l	0xA112AA31
	dc.l	0xA21AA216
	dc.l	0x231AA238

	dc.l	0x211A2138
	dc.l	0x21332316
	dc.l	0x31311326
	dc.l	0x32331216
	dc.l	0x31333111
	dc.l	0x11133011
	dc.l	0x01103300
	dc.l	0x00000300

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00003000
	dc.l	0x00000300
	dc.l	0x11100300

	dc.l	0x86000330
	dc.l	0x61300030
	dc.l	0x33110000
	dc.l	0xA8981000
	dc.l	0x16891300
	dc.l	0x71168100
	dc.l	0x13111110
	dc.l	0x91110000

	dc.l	0x89130003
	dc.l	0x89911331
	dc.l	0x88899111
	dc.l	0x66888888
	dc.l	0x36666661
	dc.l	0x11111113
	dc.l	0x00000003
	dc.l	0x00300030


actor_hogg_sheet_wall_frame_2:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x03000000
	dc.l	0x00113001
	dc.l	0x00122113
	dc.l	0x00011322
	dc.l	0x00001222

	dc.l	0x00001222
	dc.l	0x00001322
	dc.l	0x00000131
	dc.l	0x00000112
	dc.l	0x00000012
	dc.l	0x00000012
	dc.l	0x00000011
	dc.l	0x00000011

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000060
	dc.l	0x00000630
	dc.l	0x00000310
	dc.l	0x00001963
	dc.l	0x00031811
	dc.l	0x00068388

	dc.l	0x00361821
	dc.l	0x0013822A
	dc.l	0x0333AAAA
	dc.l	0x311AA22A
	dc.l	0x13A23222
	dc.l	0xA2231AAA
	dc.l	0x2233112A
	dc.l	0x2A3111AA

	dc.l	0x2A31112A
	dc.l	0x2111313A
	dc.l	0x2313012A
	dc.l	0x23330111
	dc.l	0x30300311
	dc.l	0x03300011
	dc.l	0x00330001
	dc.l	0x30330000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000311
	dc.l	0x00011981
	dc.l	0x03189360
	dc.l	0x08833100
	dc.l	0x11231100

	dc.l	0x222AA211
	dc.l	0x223AAAA1
	dc.l	0xA2232AA9
	dc.l	0xAA223226
	dc.l	0xA22AA131
	dc.l	0x21AAA111
	dc.l	0x2112AA16
	dc.l	0xA13AA231

	dc.l	0xA112A211
	dc.l	0xA21AA216
	dc.l	0x2331AAA6
	dc.l	0xA211132A
	dc.l	0x13211132
	dc.l	0x12100121
	dc.l	0x11000110
	dc.l	0x13000130

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000000
	dc.l	0x00000000
	dc.l	0x03300000
	dc.l	0x30000000
	dc.l	0x00000000

	dc.l	0x11100000
	dc.l	0x86000000
	dc.l	0x63110000
	dc.l	0xA8981000
	dc.l	0x16891000
	dc.l	0x61168100
	dc.l	0x13111110
	dc.l	0x91110000

	dc.l	0x89100003
	dc.l	0x89911031
	dc.l	0x88899111
	dc.l	0x66888888
	dc.l	0x16666661
	dc.l	0x01111113
	dc.l	0x00000003
	dc.l	0x00000030


actor_hogg_sheet_wall_frame_3:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000003
	dc.l	0x00000033
	dc.l	0x03000331
	dc.l	0x01300113
	dc.l	0x012113A2
	dc.l	0x01132222

	dc.l	0x0012222A
	dc.l	0x0012222A
	dc.l	0x00132221
	dc.l	0x00013123
	dc.l	0x00003112
	dc.l	0x00000001
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000060
	dc.l	0x00000630
	dc.l	0x00000310
	dc.l	0x00001963
	dc.l	0x00031811
	dc.l	0x00068388

	dc.l	0x00361821
	dc.l	0x03118222
	dc.l	0x33132A23
	dc.l	0x11AAA222
	dc.l	0x1122AA22
	dc.l	0x12AAAAAA
	dc.l	0x232222AA
	dc.l	0x33332212

	dc.l	0x3A2A2A21
	dc.l	0x3AAA1AA2
	dc.l	0x1111AAA1
	dc.l	0x13311AA1
	dc.l	0x30303112
	dc.l	0x12033001
	dc.l	0x11033000
	dc.l	0x11333300

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000031
	dc.l	0x30331198
	dc.l	0x01138936

	dc.l	0x13883313
	dc.l	0x2A123121
	dc.l	0xA1A2A2A3
	dc.l	0xAAAAA22A
	dc.l	0xA2AA2211
	dc.l	0x23322216
	dc.l	0xAAA13161
	dc.l	0xAAA11189

	dc.l	0x12AA1688
	dc.l	0x3AAA3618
	dc.l	0x12A21631
	dc.l	0x11AA2666
	dc.l	0x23122A11
	dc.l	0x11103222
	dc.l	0x11101161
	dc.l	0x01330011

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x11000000
	dc.l	0x10000000
	dc.l	0x00000000

	dc.l	0x00110000
	dc.l	0x11600000
	dc.l	0x61100000
	dc.l	0x18910000
	dc.l	0x96881000
	dc.l	0x31189300
	dc.l	0x73166800
	dc.l	0x81111110

	dc.l	0x89110003
	dc.l	0x89911031
	dc.l	0x88999111
	dc.l	0x66888888
	dc.l	0x16666661
	dc.l	0x11111113
	dc.l	0x11000003
	dc.l	0x11300030


actor_hogg_sheet_wall_frame_4:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x30000003
	dc.l	0x01130011
	dc.l	0x0122113A
	dc.l	0x00113222
	dc.l	0x00012222

	dc.l	0x00012222
	dc.l	0x00013222
	dc.l	0x00001312
	dc.l	0x00000112
	dc.l	0x00000012
	dc.l	0x00000001
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000600
	dc.l	0x00006300
	dc.l	0x00003100
	dc.l	0x00019630
	dc.l	0x00318113

	dc.l	0x00683882
	dc.l	0x036182A2
	dc.l	0x31382A22
	dc.l	0x11322AA2
	dc.l	0x312AAAAA
	dc.l	0x2232222A
	dc.l	0x23333221
	dc.l	0xA3A2A2A2

	dc.l	0xA3AAA1AA
	dc.l	0x11111AAA
	dc.l	0x313311AA
	dc.l	0x2333112A
	dc.l	0x30303012
	dc.l	0x12033001
	dc.l	0x11033000
	dc.l	0x11333300

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000311
	dc.l	0x03311981
	dc.l	0x11389360

	dc.l	0x38833113
	dc.l	0x32312A21
	dc.l	0x2AAAAAA1
	dc.l	0x2A2AA218
	dc.l	0xA2332296
	dc.l	0xAAAA1366
	dc.l	0x2AAA1161
	dc.l	0x112AA188

	dc.l	0x23AAA318
	dc.l	0x112A2118
	dc.l	0x111AA231
	dc.l	0x2112A136
	dc.l	0x23122211
	dc.l	0x111032A2
	dc.l	0x11101121
	dc.l	0x01330011

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x11300000
	dc.l	0x11100000
	dc.l	0x68910000
	dc.l	0x66881000
	dc.l	0x31191300
	dc.l	0x73168100
	dc.l	0x91111113

	dc.l	0x89110003
	dc.l	0x89911031
	dc.l	0x68899111
	dc.l	0x66888888
	dc.l	0x16666661
	dc.l	0x11111113
	dc.l	0x11000003
	dc.l	0x11300030


actor_hogg_sheet_wall_frame_5:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x03110000
	dc.l	0x00123001
	dc.l	0x00012113
	dc.l	0x00011322
	dc.l	0x00001222

	dc.l	0x00003122
	dc.l	0x00000122
	dc.l	0x00000011
	dc.l	0x00000000
	dc.l	0x00000003
	dc.l	0x00000001
	dc.l	0x00000001
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000060
	dc.l	0x00000630
	dc.l	0x00000310
	dc.l	0x00001963
	dc.l	0x00031811
	dc.l	0x00068388
	dc.l	0x00361822

	dc.l	0x0010822A
	dc.l	0x0033133A
	dc.l	0x0131A2A2
	dc.l	0x3113212A
	dc.l	0x13AA1AAA
	dc.l	0xA222122A
	dc.l	0x2A333AAA
	dc.l	0x2A33112A

	dc.l	0x22A1112A
	dc.l	0x222131AA
	dc.l	0x13A131A2
	dc.l	0x12113112
	dc.l	0x11110013
	dc.l	0x11330001
	dc.l	0x31310000
	dc.l	0x00333000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000031
	dc.l	0x00331198
	dc.l	0x31138936
	dc.l	0x13883310
	dc.l	0x2A223130

	dc.l	0xAAA22A11
	dc.l	0xAA2AAAA2
	dc.l	0x2AA232AA
	dc.l	0x212A2312
	dc.l	0xA212AA11
	dc.l	0xA13AAA31
	dc.l	0xA112AA16
	dc.l	0xA21AA238

	dc.l	0x231AA238
	dc.l	0x211A2116
	dc.l	0x21332326
	dc.l	0x31311316
	dc.l	0x32331211
	dc.l	0x31333111
	dc.l	0x11133110
	dc.l	0x01103313

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x11000000
	dc.l	0x10000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x11110000
	dc.l	0x18600000
	dc.l	0x96110000
	dc.l	0x68981000
	dc.l	0x16891300
	dc.l	0x71168100
	dc.l	0x13111110
	dc.l	0x91110000

	dc.l	0x89130003
	dc.l	0x89911331
	dc.l	0x88899111
	dc.l	0x66888888
	dc.l	0x36666661
	dc.l	0x11111113
	dc.l	0x00000003
	dc.l	0x00000030


actor_hogg_sheet_wall_frame_6:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000003
	dc.l	0x00000012
	dc.l	0x00000011
	dc.l	0x00000001

	dc.l	0x00000001
	dc.l	0x00000001
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000001
	dc.l	0x00000031
	dc.l	0x00000068
	dc.l	0x00000361

	dc.l	0x00000128
	dc.l	0x0000313A
	dc.l	0x000033AA
	dc.l	0x000311AA
	dc.l	0x10113A31
	dc.l	0x113A2233
	dc.l	0x32222331
	dc.l	0x2222A313

	dc.l	0x2222A311
	dc.l	0x32221130
	dc.l	0x13123100
	dc.l	0x11223300
	dc.l	0x01230300
	dc.l	0x00120330
	dc.l	0x00110033
	dc.l	0x00113033

	dc.l	0x00000000
	dc.l	0x06000003
	dc.l	0x63000311
	dc.l	0x31003389
	dc.l	0x96111833
	dc.l	0x81312231
	dc.l	0x3232223A
	dc.l	0x22AAA223

	dc.l	0x222AAA22
	dc.l	0xA222A22A
	dc.l	0x2AAA21AA
	dc.l	0xA12A2112
	dc.l	0x21AAA13A
	dc.l	0x312AA112
	dc.l	0x113AA21A
	dc.l	0x312A2331

	dc.l	0x3111A211
	dc.l	0x03111321
	dc.l	0x00111213
	dc.l	0x00011100
	dc.l	0x00001300
	dc.l	0x00000030
	dc.l	0x00000000
	dc.l	0x30030000

	dc.l	0x00310000
	dc.l	0x31130000
	dc.l	0x98100000
	dc.l	0x36000000
	dc.l	0x11300611
	dc.l	0xA2116186
	dc.l	0xAAA21960
	dc.l	0x2AAA3611

	dc.l	0x3222A898
	dc.l	0xA1311689
	dc.l	0xA1116116
	dc.l	0xAA161311
	dc.l	0xA2319111
	dc.l	0xA2118910
	dc.l	0xA2168991
	dc.l	0xAAA68889

	dc.l	0x132A6688
	dc.l	0x11321666
	dc.l	0x01213111
	dc.l	0x01100000
	dc.l	0x01300000
	dc.l	0x00030000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x30000000

	dc.l	0x10000000
	dc.l	0x13000000
	dc.l	0x81300000
	dc.l	0x11190000
	dc.l	0x30030000
	dc.l	0x00000000
	dc.l	0x10000000
	dc.l	0x91111610

	dc.l	0x88888100
	dc.l	0x66611303
	dc.l	0x11130001
	dc.l	0x00000030
	dc.l	0x00000001
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000




spritesheet_hogg_run:

actor_hogg_sheet_run_frame_0:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00011130
	dc.l	0x00001221
	dc.l	0x00000113
	dc.l	0x00000012
	dc.l	0x00000012

	dc.l	0x00000012
	dc.l	0x00000122
	dc.l	0x00001122
	dc.l	0x00013223
	dc.l	0x00011311
	dc.l	0x00111100
	dc.l	0x00110000
	dc.l	0x00113000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000006
	dc.l	0x00000003
	dc.l	0x00000019
	dc.l	0x00000318
	dc.l	0x00000683
	dc.l	0x00003618

	dc.l	0x00001382
	dc.l	0x0003331A
	dc.l	0x003113AA
	dc.l	0x0113AAAA
	dc.l	0x13A2223A
	dc.l	0x22223313
	dc.l	0x22213311
	dc.l	0x22233113

	dc.l	0x22311113
	dc.l	0x21130001
	dc.l	0x31330000
	dc.l	0x13330000
	dc.l	0x03300000
	dc.l	0x03300000
	dc.l	0x03300000
	dc.l	0x00300000

	dc.l	0x00000000
	dc.l	0x60000000
	dc.l	0x30000031
	dc.l	0x10003119
	dc.l	0x61011388
	dc.l	0x13138836
	dc.l	0x882A2228
	dc.l	0x2AAAA22A

	dc.l	0x222AAA2A
	dc.l	0x3322AA23
	dc.l	0x2A2212AA
	dc.l	0xA12A21AA
	dc.l	0x2AAA212A
	dc.l	0x12AA13AA
	dc.l	0x1AAA112A
	dc.l	0x12AA21AA

	dc.l	0x12A231AA
	dc.l	0x1AA211A2
	dc.l	0x1A221032
	dc.l	0x00123101
	dc.l	0x00133200
	dc.l	0x00013100
	dc.l	0x00001113
	dc.l	0x00000110

	dc.l	0x00000000
	dc.l	0x31660000
	dc.l	0x98100000
	dc.l	0x86300000
	dc.l	0x61000000
	dc.l	0x11000000
	dc.l	0x31106111
	dc.l	0xAA111860

	dc.l	0x2AA29600
	dc.l	0x3AAA6311
	dc.l	0xA222A898
	dc.l	0xA1311689
	dc.l	0xA1117116
	dc.l	0xA1861311
	dc.l	0xA3189111
	dc.l	0x21188910

	dc.l	0x23168991
	dc.l	0x13668889
	dc.l	0x31166688
	dc.l	0x13211666
	dc.l	0x12101111
	dc.l	0x01113000
	dc.l	0x00110000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000000
	dc.l	0x10000000
	dc.l	0x81000000
	dc.l	0x11100000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x10000110
	dc.l	0x91111610
	dc.l	0x88888100
	dc.l	0x66611000
	dc.l	0x11100000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000


actor_hogg_sheet_run_frame_1:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000330
	dc.l	0x00011121
	dc.l	0x00003213
	dc.l	0x00000112
	dc.l	0x00000012
	dc.l	0x00000132

	dc.l	0x00011222
	dc.l	0x00111321
	dc.l	0x01113113
	dc.l	0x01100033
	dc.l	0x00300330
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000006
	dc.l	0x00000003
	dc.l	0x00000019
	dc.l	0x00000318
	dc.l	0x00000683
	dc.l	0x00003618
	dc.l	0x00001082

	dc.l	0x00033321
	dc.l	0x0031111A
	dc.l	0x0113A3AA
	dc.l	0x13A22AA3
	dc.l	0x22223231
	dc.l	0x22213311
	dc.l	0x22233311
	dc.l	0x22311111

	dc.l	0x21130111
	dc.l	0x13300031
	dc.l	0x33000001
	dc.l	0x30000003
	dc.l	0x00000033
	dc.l	0x00000333
	dc.l	0x00000330
	dc.l	0x00000030

	dc.l	0x60000000
	dc.l	0x30000000
	dc.l	0x10000000
	dc.l	0x61000031
	dc.l	0x13303119
	dc.l	0x88111388
	dc.l	0x223A8836
	dc.l	0x2AAAA228

	dc.l	0x133AAA2A
	dc.l	0xA2A22AA2
	dc.l	0x212A212A
	dc.l	0x1AAA21AA
	dc.l	0x12AA112A
	dc.l	0x3AAA13AA
	dc.l	0x2AA212AA
	dc.l	0xAA231AA2

	dc.l	0xAA211AA2
	dc.l	0xA2111A22
	dc.l	0x22301223
	dc.l	0x131012A1
	dc.l	0x13200132
	dc.l	0x13100131
	dc.l	0x11000110
	dc.l	0x16300113

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x31660000
	dc.l	0x98600000
	dc.l	0x86300000
	dc.l	0x61000000
	dc.l	0x16000000
	dc.l	0x31106111

	dc.l	0xAA111860
	dc.l	0x32A29600
	dc.l	0x23AA6611
	dc.l	0xA222A898
	dc.l	0xA1311689
	dc.l	0xA1117116
	dc.l	0x21861311
	dc.l	0x31689111

	dc.l	0x11688910
	dc.l	0x11668991
	dc.l	0x16668889
	dc.l	0x11166688
	dc.l	0x00111666
	dc.l	0x00001111
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000000
	dc.l	0x10000000
	dc.l	0x81000000
	dc.l	0x11100000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x10000110
	dc.l	0x91111610
	dc.l	0x88888100
	dc.l	0x66611000
	dc.l	0x11100000
	dc.l	0x00000000
	dc.l	0x00000000


actor_hogg_sheet_run_frame_2:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00031130
	dc.l	0x00011221
	dc.l	0x00000113
	dc.l	0x00000012
	dc.l	0x00000012
	dc.l	0x00031132
	dc.l	0x01111322

	dc.l	0x11113111
	dc.l	0x30003300
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000001
	dc.l	0x00000031
	dc.l	0x00000068
	dc.l	0x00000361
	dc.l	0x00000108

	dc.l	0x00003333
	dc.l	0x0113312A
	dc.l	0x13A113AA
	dc.l	0x22AAAAAA
	dc.l	0x2222A23A
	dc.l	0x22223313
	dc.l	0x22213311
	dc.l	0x31133111

	dc.l	0x11011113
	dc.l	0x00003113
	dc.l	0x00000012
	dc.l	0x00000012
	dc.l	0x00003313
	dc.l	0x00033313
	dc.l	0x00000011
	dc.l	0x00000011

	dc.l	0x06000000
	dc.l	0x63000000
	dc.l	0x31000000
	dc.l	0x96300000
	dc.l	0x81130033
	dc.l	0x38811113
	dc.l	0x8222A388
	dc.l	0x2AAAAA22

	dc.l	0x22AAAA2A
	dc.l	0x12222AAA
	dc.l	0x2332222A
	dc.l	0xA2A22222
	dc.l	0x212A2AA2
	dc.l	0x1AAA212A
	dc.l	0x12AA21AA
	dc.l	0x3AAA112A

	dc.l	0xAA2113AA
	dc.l	0xA2313AA2
	dc.l	0xA2112A23
	dc.l	0x2131AA21
	dc.l	0x21313201
	dc.l	0x13012100
	dc.l	0x00011000
	dc.l	0x30011300

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00311100
	dc.l	0x11981000
	dc.l	0x89360000
	dc.l	0x33100000
	dc.l	0x31300000

	dc.l	0x23113111
	dc.l	0xAA231860
	dc.l	0xAAA29630
	dc.l	0x2AAA6311
	dc.l	0x3222A898
	dc.l	0x23311689
	dc.l	0xA2117116
	dc.l	0xA1861311

	dc.l	0xA1689111
	dc.l	0x16688910
	dc.l	0x16668991
	dc.l	0x11668889
	dc.l	0x11166688
	dc.l	0x00111666
	dc.l	0x00001111
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000000
	dc.l	0x13000000
	dc.l	0x81000000
	dc.l	0x11100000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000110
	dc.l	0x91111610
	dc.l	0x88888100
	dc.l	0x66611000
	dc.l	0x11100000
	dc.l	0x00000000


actor_hogg_sheet_run_frame_3:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00031100
	dc.l	0x00001230
	dc.l	0x00000121
	dc.l	0x00000113
	dc.l	0x00000012
	dc.l	0x00000031

	dc.l	0x00000001
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000006
	dc.l	0x00000003
	dc.l	0x00000019
	dc.l	0x00000318
	dc.l	0x00000683
	dc.l	0x00000618

	dc.l	0x00001382
	dc.l	0x00033312
	dc.l	0x003113AA
	dc.l	0x0113AAA3
	dc.l	0x13A22211
	dc.l	0x222A3313
	dc.l	0x222A3312
	dc.l	0x2222A1AA

	dc.l	0x222221AA
	dc.l	0x111321AA
	dc.l	0x001212A1
	dc.l	0x03111A30
	dc.l	0x01113310
	dc.l	0x01313100
	dc.l	0x00011000
	dc.l	0x00011300

	dc.l	0x00000000
	dc.l	0x60000000
	dc.l	0x30000000
	dc.l	0x10000031
	dc.l	0x61300138
	dc.l	0x13111883
	dc.l	0x883A2223
	dc.l	0x22AAA22A

	dc.l	0xAAAAAA2A
	dc.l	0x133222A2
	dc.l	0x22A22223
	dc.l	0x212A2AA2
	dc.l	0xAAA22122
	dc.l	0x2AA21AA2
	dc.l	0xAAA112AA
	dc.l	0xA2113AAA

	dc.l	0x2312AAA1
	dc.l	0x311AA221
	dc.l	0x011AA233
	dc.l	0x01A21133
	dc.l	0x13310033
	dc.l	0x13100333
	dc.l	0x11000330
	dc.l	0x11300330

	dc.l	0x00000000
	dc.l	0x00011000
	dc.l	0x03113000
	dc.l	0x19810000
	dc.l	0x93600000
	dc.l	0x31100611
	dc.l	0x1A211186
	dc.l	0xAAA21960

	dc.l	0x2AAA3611
	dc.l	0x2222A898
	dc.l	0x31311689
	dc.l	0x21117116
	dc.l	0x31861311
	dc.l	0x36689111
	dc.l	0x26688910
	dc.l	0x11668991

	dc.l	0x11668889
	dc.l	0x11166688
	dc.l	0x30111666
	dc.l	0x00001111
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x10000000
	dc.l	0x10000000
	dc.l	0x81000000
	dc.l	0x11100000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000110

	dc.l	0x91111610
	dc.l	0x88888100
	dc.l	0x66611000
	dc.l	0x11100000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000


actor_hogg_sheet_run_frame_4:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00030000
	dc.l	0x00001130
	dc.l	0x00001221
	dc.l	0x00000113
	dc.l	0x00000012

	dc.l	0x00000012
	dc.l	0x00000013
	dc.l	0x00000001
	dc.l	0x00000001
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000001
	dc.l	0x00000031
	dc.l	0x00000068
	dc.l	0x00000361

	dc.l	0x00000128
	dc.l	0x0000313A
	dc.l	0x000333AA
	dc.l	0x00311AAA
	dc.l	0x0113A23A
	dc.l	0x13A22312
	dc.l	0x22223313
	dc.l	0x222A3113

	dc.l	0x222A3111
	dc.l	0x22211330
	dc.l	0x31231300
	dc.l	0x12233300
	dc.l	0x12303000
	dc.l	0x12033000
	dc.l	0x11003300
	dc.l	0x11303300

	dc.l	0x00000000
	dc.l	0x06000003
	dc.l	0x63000311
	dc.l	0x31003389
	dc.l	0x96111833
	dc.l	0x81312231
	dc.l	0x3232223A
	dc.l	0x222AAA22

	dc.l	0x2222A22A
	dc.l	0xAAAA21AA
	dc.l	0x212A2112
	dc.l	0xA1AAA13A
	dc.l	0x212AA112
	dc.l	0x313AA21A
	dc.l	0x112A2331
	dc.l	0x313AA331

	dc.l	0x3111A211
	dc.l	0x03111321
	dc.l	0x00331210
	dc.l	0x00031100
	dc.l	0x00001300
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00310000
	dc.l	0x31130000
	dc.l	0x98100000
	dc.l	0x36000000
	dc.l	0x11000611
	dc.l	0xA2116186
	dc.l	0xAAA21960
	dc.l	0x322A3611

	dc.l	0xA132A898
	dc.l	0xA1111689
	dc.l	0xAA116116
	dc.l	0xA2361311
	dc.l	0xA2119111
	dc.l	0xA2118910
	dc.l	0xAA268991
	dc.l	0x3AA68889

	dc.l	0x332A6688
	dc.l	0x11321666
	dc.l	0x01210111
	dc.l	0x01100000
	dc.l	0x01300000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x10000000
	dc.l	0x10000000
	dc.l	0x81000000
	dc.l	0x11100000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000110
	dc.l	0x91111610

	dc.l	0x88888100
	dc.l	0x66611000
	dc.l	0x11100000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000




