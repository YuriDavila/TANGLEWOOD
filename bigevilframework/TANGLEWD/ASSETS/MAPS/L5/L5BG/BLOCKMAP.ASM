; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


map_blockmap_L5BG_size_b	equ 0x000000D2	; Size in bytes
map_blockmap_L5BG_size_w	equ (map_blockmap_L5BG_size_b/2)	; Size in words
map_blockmap_L5BG_size_l	equ (map_blockmap_L5BG_size_b/4)	; Size in longwords
map_L5BG_width	equ 0x40
map_L5BG_height	equ 0x20
map_blockmap_L5BG_width	equ 0x10
map_blockmap_L5BG_height	equ 0x08

map_blockmap_L5BG_coloffsets:
	dc.w 0x0000
	dc.w 0x0010
	dc.w 0x0020
	dc.w 0x0030
	dc.w 0x0040
	dc.w 0x0050
	dc.w 0x0060
	dc.w 0x0070
	dc.w 0x0078
	dc.w 0x0080
	dc.w 0x008A
	dc.w 0x0096
	dc.w 0x009E
	dc.w 0x00A2
	dc.w 0x00B2
	dc.w 0x00C2
