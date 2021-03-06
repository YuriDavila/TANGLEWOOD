; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


actor_spitball:

actor_spitball_VRAM_size_b		equ 0x200	; VRAM size to alloc (size of largest frame, bytes)
actor_spitball_sheet_spitball_width		equ 0x20	; Max width of largest frame in pixels
actor_spitball_sheet_spitball_height		equ 0x20	; Max height of largest frame in pixels


actor_spitball_sheet_spitball_frametable:
actor_spitball_sheet_spitball_frame_0_header:
	dc.w 0x0010	; Frame size (tiles)
	dc.w actor_spitball_sheet_spitball_frame_0_size_subsprites	; Frame size (subsprites)
	dc.l actor_spitball_sheet_spitball_frame_0
	dc.l actor_spitball_sheet_spitball_frame_0_subsprite_dimensions_bits
	dc.l actor_spitball_sheet_spitball_frame_0_subsprite_pos_offsets

actor_spitball_sheet_spitball_frame_1_header:
	dc.w 0x000C	; Frame size (tiles)
	dc.w actor_spitball_sheet_spitball_frame_1_size_subsprites	; Frame size (subsprites)
	dc.l actor_spitball_sheet_spitball_frame_1
	dc.l actor_spitball_sheet_spitball_frame_1_subsprite_dimensions_bits
	dc.l actor_spitball_sheet_spitball_frame_1_subsprite_pos_offsets

actor_spitball_sheet_spitball_frame_2_header:
	dc.w 0x000C	; Frame size (tiles)
	dc.w actor_spitball_sheet_spitball_frame_2_size_subsprites	; Frame size (subsprites)
	dc.l actor_spitball_sheet_spitball_frame_2
	dc.l actor_spitball_sheet_spitball_frame_2_subsprite_dimensions_bits
	dc.l actor_spitball_sheet_spitball_frame_2_subsprite_pos_offsets

actor_spitball_sheet_spitball_frame_3_header:
	dc.w 0x0008	; Frame size (tiles)
	dc.w actor_spitball_sheet_spitball_frame_3_size_subsprites	; Frame size (subsprites)
	dc.l actor_spitball_sheet_spitball_frame_3
	dc.l actor_spitball_sheet_spitball_frame_3_subsprite_dimensions_bits
	dc.l actor_spitball_sheet_spitball_frame_3_subsprite_pos_offsets

actor_spitball_sheet_spitball_frame_4_header:
	dc.w 0x0010	; Frame size (tiles)
	dc.w actor_spitball_sheet_spitball_frame_4_size_subsprites	; Frame size (subsprites)
	dc.l actor_spitball_sheet_spitball_frame_4
	dc.l actor_spitball_sheet_spitball_frame_4_subsprite_dimensions_bits
	dc.l actor_spitball_sheet_spitball_frame_4_subsprite_pos_offsets

actor_spitball_sheet_spitball_frame_5_header:
	dc.w 0x0008	; Frame size (tiles)
	dc.w actor_spitball_sheet_spitball_frame_5_size_subsprites	; Frame size (subsprites)
	dc.l actor_spitball_sheet_spitball_frame_5
	dc.l actor_spitball_sheet_spitball_frame_5_subsprite_dimensions_bits
	dc.l actor_spitball_sheet_spitball_frame_5_subsprite_pos_offsets

actor_spitball_sheet_spitball_frame_6_header:
	dc.w 0x0010	; Frame size (tiles)
	dc.w actor_spitball_sheet_spitball_frame_6_size_subsprites	; Frame size (subsprites)
	dc.l actor_spitball_sheet_spitball_frame_6
	dc.l actor_spitball_sheet_spitball_frame_6_subsprite_dimensions_bits
	dc.l actor_spitball_sheet_spitball_frame_6_subsprite_pos_offsets

actor_spitball_sheet_spitball_frame_7_header:
	dc.w 0x0010	; Frame size (tiles)
	dc.w actor_spitball_sheet_spitball_frame_7_size_subsprites	; Frame size (subsprites)
	dc.l actor_spitball_sheet_spitball_frame_7
	dc.l actor_spitball_sheet_spitball_frame_7_subsprite_dimensions_bits
	dc.l actor_spitball_sheet_spitball_frame_7_subsprite_pos_offsets

actor_spitball_sheet_spitball_frame_0_size_b		equ 0x0200	; Size in bytes
actor_spitball_sheet_spitball_frame_0_size_t		equ 0x0010	; Size in tiles
actor_spitball_sheet_spitball_frame_0_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_spitball_sheet_spitball_frame_0_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_spitball_sheet_spitball_frame_0_subsprite_dimensions_bits:
	dc.b 0xF
	Even

actor_spitball_sheet_spitball_frame_1_size_b		equ 0x0180	; Size in bytes
actor_spitball_sheet_spitball_frame_1_size_t		equ 0x000C	; Size in tiles
actor_spitball_sheet_spitball_frame_1_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_spitball_sheet_spitball_frame_1_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_spitball_sheet_spitball_frame_1_subsprite_dimensions_bits:
	dc.b 0xE
	Even

actor_spitball_sheet_spitball_frame_2_size_b		equ 0x0180	; Size in bytes
actor_spitball_sheet_spitball_frame_2_size_t		equ 0x000C	; Size in tiles
actor_spitball_sheet_spitball_frame_2_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_spitball_sheet_spitball_frame_2_subsprite_pos_offsets:
	dc.l 0x00000008, 0x00000008
	Even

; Subsprite dimension bits (for sprite descs)
actor_spitball_sheet_spitball_frame_2_subsprite_dimensions_bits:
	dc.b 0xE
	Even

actor_spitball_sheet_spitball_frame_3_size_b		equ 0x0100	; Size in bytes
actor_spitball_sheet_spitball_frame_3_size_t		equ 0x0008	; Size in tiles
actor_spitball_sheet_spitball_frame_3_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_spitball_sheet_spitball_frame_3_subsprite_pos_offsets:
	dc.l 0x00000008, 0x00000008
	Even

; Subsprite dimension bits (for sprite descs)
actor_spitball_sheet_spitball_frame_3_subsprite_dimensions_bits:
	dc.b 0xD
	Even

actor_spitball_sheet_spitball_frame_4_size_b		equ 0x0200	; Size in bytes
actor_spitball_sheet_spitball_frame_4_size_t		equ 0x0010	; Size in tiles
actor_spitball_sheet_spitball_frame_4_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_spitball_sheet_spitball_frame_4_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_spitball_sheet_spitball_frame_4_subsprite_dimensions_bits:
	dc.b 0xF
	Even

actor_spitball_sheet_spitball_frame_5_size_b		equ 0x0100	; Size in bytes
actor_spitball_sheet_spitball_frame_5_size_t		equ 0x0008	; Size in tiles
actor_spitball_sheet_spitball_frame_5_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_spitball_sheet_spitball_frame_5_subsprite_pos_offsets:
	dc.l 0x00100000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_spitball_sheet_spitball_frame_5_subsprite_dimensions_bits:
	dc.b 0x7
	Even

actor_spitball_sheet_spitball_frame_6_size_b		equ 0x0200	; Size in bytes
actor_spitball_sheet_spitball_frame_6_size_t		equ 0x0010	; Size in tiles
actor_spitball_sheet_spitball_frame_6_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_spitball_sheet_spitball_frame_6_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_spitball_sheet_spitball_frame_6_subsprite_dimensions_bits:
	dc.b 0xF
	Even

actor_spitball_sheet_spitball_frame_7_size_b		equ 0x0200	; Size in bytes
actor_spitball_sheet_spitball_frame_7_size_t		equ 0x0010	; Size in tiles
actor_spitball_sheet_spitball_frame_7_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_spitball_sheet_spitball_frame_7_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_spitball_sheet_spitball_frame_7_subsprite_dimensions_bits:
	dc.b 0xF
	Even


spritesheets_spitball:

spritesheet_spitball_spitball:

actor_spitball_sheet_spitball_frame_0:
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
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00001111
	dc.l	0x00000010
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000001
	dc.l	0x00001111
	dc.l	0x00000010
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
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000001
	dc.l	0x00101111
	dc.l	0x11111111
	dc.l	0x01111111
	dc.l	0x00011112
	dc.l	0x11112332
	dc.l	0x11123222
	dc.l	0x00111122

	dc.l	0x00111221
	dc.l	0x01111123
	dc.l	0x11121112
	dc.l	0x11111222
	dc.l	0x01111112
	dc.l	0x00012222
	dc.l	0x00000121
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
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10111111

	dc.l	0x11111111
	dc.l	0x11111111
	dc.l	0x11333121
	dc.l	0x22221322
	dc.l	0x22222222
	dc.l	0x22353222
	dc.l	0x25322522
	dc.l	0x33122222

	dc.l	0x22222253
	dc.l	0x22222322
	dc.l	0x33222222
	dc.l	0x22212212
	dc.l	0x22522225
	dc.l	0x22332132
	dc.l	0x22253522
	dc.l	0x11211212

	dc.l	0x01111111
	dc.l	0x00101111
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
	dc.l	0x11100000

	dc.l	0x11111000
	dc.l	0x21111100
	dc.l	0x11111110
	dc.l	0x23532110
	dc.l	0x53235211
	dc.l	0x22123111
	dc.l	0x22222231
	dc.l	0x22222311

	dc.l	0x53322221
	dc.l	0x13532211
	dc.l	0x22222252
	dc.l	0x22312331
	dc.l	0x22253521
	dc.l	0x21122210
	dc.l	0x21312200
	dc.l	0x22122200

	dc.l	0x22222000
	dc.l	0x11220000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000


actor_spitball_sheet_spitball_frame_1:
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
	dc.l	0x00000011
	dc.l	0x00000000
	dc.l	0x00000010
	dc.l	0x00001111
	dc.l	0x00000011
	dc.l	0x00000000

	dc.l	0x00000001
	dc.l	0x00000000
	dc.l	0x00111111
	dc.l	0x00001111
	dc.l	0x00000101
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

	dc.l	0x00010111
	dc.l	0x01111111
	dc.l	0x11112112
	dc.l	0x00111112
	dc.l	0x11111122
	dc.l	0x11212222
	dc.l	0x11122232
	dc.l	0x11223311

	dc.l	0x11122222
	dc.l	0x01111222
	dc.l	0x11111122
	dc.l	0x11111111
	dc.l	0x11111222
	dc.l	0x01112222
	dc.l	0x00011112
	dc.l	0x00000111

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x11111111
	dc.l	0x11222211
	dc.l	0x11111221
	dc.l	0x22222222
	dc.l	0x22253522
	dc.l	0x22332232
	dc.l	0x22512215
	dc.l	0x12222222

	dc.l	0x32222222
	dc.l	0x23322322
	dc.l	0x22222253
	dc.l	0x33221222
	dc.l	0x25322522
	dc.l	0x11353222
	dc.l	0x11112221
	dc.l	0x11111121

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x10000000

	dc.l	0x11100000
	dc.l	0x11221000
	dc.l	0x22222100
	dc.l	0x22122210
	dc.l	0x22212210
	dc.l	0x22222210
	dc.l	0x22253521
	dc.l	0x22321331

	dc.l	0x22222152
	dc.l	0x13532221
	dc.l	0x53322111
	dc.l	0x22222221
	dc.l	0x23222221
	dc.l	0x22213211
	dc.l	0x53235200
	dc.l	0x23532100


actor_spitball_sheet_spitball_frame_2:
	dc.l	0x00000000
	dc.l	0x00000010
	dc.l	0x00001111
	dc.l	0x00000111
	dc.l	0x00001111
	dc.l	0x00001111
	dc.l	0x00011212
	dc.l	0x00011111

	dc.l	0x01111111
	dc.l	0x00001111
	dc.l	0x00000001
	dc.l	0x00000000
	dc.l	0x00001111
	dc.l	0x00011111
	dc.l	0x00000010
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000010
	dc.l	0x11111111
	dc.l	0x11111111
	dc.l	0x11111111
	dc.l	0x11211222
	dc.l	0x11113223
	dc.l	0x22222222
	dc.l	0x12122212

	dc.l	0x11112222
	dc.l	0x11122232
	dc.l	0x11111112
	dc.l	0x01122332
	dc.l	0x11111113
	dc.l	0x11112222
	dc.l	0x11111121
	dc.l	0x00010111

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x11100000
	dc.l	0x11110000
	dc.l	0x11111111
	dc.l	0x21212121
	dc.l	0x22222221
	dc.l	0x22353222
	dc.l	0x25322522
	dc.l	0x33122222

	dc.l	0x22222253
	dc.l	0x22222322
	dc.l	0x33322222
	dc.l	0x22222222
	dc.l	0x21512215
	dc.l	0x22332232
	dc.l	0x22253511
	dc.l	0x11210212

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
	dc.l	0x11010000
	dc.l	0x23532110
	dc.l	0x53235210
	dc.l	0x22123221
	dc.l	0x22332121
	dc.l	0x22223231

	dc.l	0x53322221
	dc.l	0x13532211
	dc.l	0x22222252
	dc.l	0x22322331
	dc.l	0x22253521
	dc.l	0x21122211
	dc.l	0x11212211
	dc.l	0x22122210

	dc.l	0x22222000
	dc.l	0x00220000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000


actor_spitball_sheet_spitball_frame_3:
	dc.l	0x00000000
	dc.l	0x00000001
	dc.l	0x00001111
	dc.l	0x01111111
	dc.l	0x00001212
	dc.l	0x01111111
	dc.l	0x01112222
	dc.l	0x00111223

	dc.l	0x01112222
	dc.l	0x00011222
	dc.l	0x00111122
	dc.l	0x00011111
	dc.l	0x01112112
	dc.l	0x01111111
	dc.l	0x00111111
	dc.l	0x00001011

	dc.l	0x00000000
	dc.l	0x01001110
	dc.l	0x11111111
	dc.l	0x12211122
	dc.l	0x22223322
	dc.l	0x11222222
	dc.l	0x22232213
	dc.l	0x21223322

	dc.l	0x32222222
	dc.l	0x22222222
	dc.l	0x21213322
	dc.l	0x22333122
	dc.l	0x22122221
	dc.l	0x11112222
	dc.l	0x11111112
	dc.l	0x10100001

	dc.l	0x00000000
	dc.l	0x00101111
	dc.l	0x11111111
	dc.l	0x11211212
	dc.l	0x22253511
	dc.l	0x22332232
	dc.l	0x22512125
	dc.l	0x22222222

	dc.l	0x22222222
	dc.l	0x23222322
	dc.l	0x22222253
	dc.l	0x33222222
	dc.l	0x25322521
	dc.l	0x11353222
	dc.l	0x11112231
	dc.l	0x01111321

	dc.l	0x00000000
	dc.l	0x11220000
	dc.l	0x22322100
	dc.l	0x23132210
	dc.l	0x11212210
	dc.l	0x22222211
	dc.l	0x22253521
	dc.l	0x22312331

	dc.l	0x22222252
	dc.l	0x23532211
	dc.l	0x53321121
	dc.l	0x12222211
	dc.l	0x22222221
	dc.l	0x12223111
	dc.l	0x53235211
	dc.l	0x23532111


actor_spitball_sheet_spitball_frame_4:
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
	dc.l	0x00111111
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000111
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

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x01111111
	dc.l	0x11111111
	dc.l	0x11111111
	dc.l	0x11111122
	dc.l	0x11100112
	dc.l	0x00000011
	dc.l	0x00000001

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000001
	dc.l	0x00000011
	dc.l	0x11111122
	dc.l	0x11111122
	dc.l	0x01111111
	dc.l	0x10001111

	dc.l	0x00111100
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
	dc.l	0x00000000
	dc.l	0x11000111
	dc.l	0x11111111
	dc.l	0x11222211
	dc.l	0x22221353
	dc.l	0x12122221
	dc.l	0x11332221

	dc.l	0x11535322
	dc.l	0x12212521
	dc.l	0x12122222
	dc.l	0x21222222
	dc.l	0x22223221
	dc.l	0x11113111
	dc.l	0x13135111
	dc.l	0x15351100

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
	dc.l	0x00050000
	dc.l	0x00005000

	dc.l	0x00005000
	dc.l	0x11100100
	dc.l	0x11111110
	dc.l	0x01111111
	dc.l	0x11253311
	dc.l	0x32322251
	dc.l	0x22222221
	dc.l	0x22222221

	dc.l	0x22223221
	dc.l	0x22223221
	dc.l	0x23535221
	dc.l	0x22222221
	dc.l	0x11311221
	dc.l	0x11533115
	dc.l	0x10011110
	dc.l	0x00001100

	dc.l	0x00000050
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x05000000
	dc.l	0x50000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000


actor_spitball_sheet_spitball_frame_5:
	dc.l	0x00000000
	dc.l	0x00000550
	dc.l	0x00000005
	dc.l	0x00000000
	dc.l	0x00100111
	dc.l	0x00000111
	dc.l	0x00003301
	dc.l	0x00000310

	dc.l	0x00000001
	dc.l	0x00000011
	dc.l	0x00000011
	dc.l	0x00000011
	dc.l	0x00000001
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000010
	dc.l	0x00000010
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000010
	dc.l	0x00000001
	dc.l	0x00001111
	dc.l	0x00001111
	dc.l	0x10110000
	dc.l	0x00000003
	dc.l	0x00000000
	dc.l	0x05005000

	dc.l	0x00000000
	dc.l	0x00003300
	dc.l	0x00000530
	dc.l	0x00000000
	dc.l	0x10050000
	dc.l	0x11130000
	dc.l	0x11153100
	dc.l	0x00113110

	dc.l	0x01212110
	dc.l	0x11222211
	dc.l	0x11223211
	dc.l	0x11153233
	dc.l	0x11132351
	dc.l	0x11131222
	dc.l	0x11121222
	dc.l	0x01122235

	dc.l	0x01112123
	dc.l	0x11112225
	dc.l	0x01112213
	dc.l	0x01112232
	dc.l	0x01121222
	dc.l	0x01123322
	dc.l	0x03521222
	dc.l	0x11222111

	dc.l	0x11223510
	dc.l	0x11211310
	dc.l	0x11111300
	dc.l	0x05500000
	dc.l	0x03000000
	dc.l	0x53000000
	dc.l	0x00000000
	dc.l	0x00000000


actor_spitball_sheet_spitball_frame_6:
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
	dc.l	0x00000005

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
	dc.l	0x00000033
	dc.l	0x00000330

	dc.l	0x00000350
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
	dc.l	0x00000005
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x53000000
	dc.l	0x30353000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000100
	dc.l	0x00000010

	dc.l	0x00000011
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
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000001
	dc.l	0x00033010
	dc.l	0x00350010
	dc.l	0x35000100
	dc.l	0x00000000
	dc.l	0x00000001
	dc.l	0x00000000

	dc.l	0x01100000
	dc.l	0x01111100
	dc.l	0x01223100
	dc.l	0x01215100
	dc.l	0x11122100
	dc.l	0x01122350
	dc.l	0x00111230
	dc.l	0x00015310

	dc.l	0x00033511
	dc.l	0x11111221
	dc.l	0x01111111
	dc.l	0x00001101
	dc.l	0x00000010
	dc.l	0x00005001
	dc.l	0x55000001
	dc.l	0x00000001

	dc.l	0x00005000
	dc.l	0x00000500
	dc.l	0x00000000
	dc.l	0x00000001
	dc.l	0x00000111
	dc.l	0x00011111
	dc.l	0x00112211
	dc.l	0x03125211

	dc.l	0x33131210
	dc.l	0x10122113
	dc.l	0x00121135
	dc.l	0x11221100
	dc.l	0x12220100
	dc.l	0x12211000
	dc.l	0x01111000
	dc.l	0x00001000


actor_spitball_sheet_spitball_frame_7:
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000350
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
	dc.l	0x00000005
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000030
	dc.l	0x00000350
	dc.l	0x00035100
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000003
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000350

	dc.l	0x00000003
	dc.l	0x00550000
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
	dc.l	0x50000000
	dc.l	0x50000000
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
	dc.l	0x00000022
	dc.l	0x35200000
	dc.l	0x03500020
	dc.l	0x00300220
	dc.l	0x00000215
	dc.l	0x00000050
	dc.l	0x00010030

	dc.l	0x00112000
	dc.l	0x53012002
	dc.l	0x00002002
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000100
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000222
	dc.l	0x00000222
	dc.l	0x00000025
	dc.l	0x00000013
	dc.l	0x00000135
	dc.l	0x02200050
	dc.l	0x21530022
	dc.l	0x05300000




