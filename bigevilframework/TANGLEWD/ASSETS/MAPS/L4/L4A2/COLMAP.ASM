; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


terrainmap_blockmap_L4A2_size_b	equ 0x00003BAC	; Size in bytes
terrainmap_blockmap_L4A2_size_w	equ (terrainmap_blockmap_L4A2_size_b/2)	; Size in words
terrainmap_blockmap_L4A2_size_l	equ (terrainmap_blockmap_L4A2_size_b/4)	; Size in longwords
terrainmap_L4A2_left	equ 0x00
terrainmap_L4A2_top	equ 0x00
terrainmap_L4A2_width	equ 0x324
terrainmap_L4A2_height	equ 0x98
terrainmap_blockmap_L4A2_left	equ 0x00
terrainmap_blockmap_L4A2_top	equ 0x00
terrainmap_blockmap_L4A2_width	equ 0xC9
terrainmap_blockmap_L4A2_height	equ 0x26

collisionmap_blockmap_yoffs_L4A2:
	dc.w 0x0000
	dc.w 0x00C9
	dc.w 0x0192
	dc.w 0x025B
	dc.w 0x0324
	dc.w 0x03ED
	dc.w 0x04B6
	dc.w 0x057F
	dc.w 0x0648
	dc.w 0x0711
	dc.w 0x07DA
	dc.w 0x08A3
	dc.w 0x096C
	dc.w 0x0A35
	dc.w 0x0AFE
	dc.w 0x0BC7
	dc.w 0x0C90
	dc.w 0x0D59
	dc.w 0x0E22
	dc.w 0x0EEB
	dc.w 0x0FB4
	dc.w 0x107D
	dc.w 0x1146
	dc.w 0x120F
	dc.w 0x12D8
	dc.w 0x13A1
	dc.w 0x146A
	dc.w 0x1533
	dc.w 0x15FC
	dc.w 0x16C5
	dc.w 0x178E
	dc.w 0x1857
	dc.w 0x1920
	dc.w 0x19E9
	dc.w 0x1AB2
	dc.w 0x1B7B
	dc.w 0x1C44
	dc.w 0x1D0D

; Terrain bezier bounds
terrainmap_L4A2_num_special_terrain_descs	equ 0x02
terrainmap_L4A2_special_terrain_descs:
	dc.w 0x04C8, 0x03F7, 0x0928, 0x03F7, 0x1000	; Left, top, right, bottom, flags
	dc.w 0x1478, 0x02D7, 0x1768, 0x02D7, 0x1000	; Left, top, right, bottom, flags

