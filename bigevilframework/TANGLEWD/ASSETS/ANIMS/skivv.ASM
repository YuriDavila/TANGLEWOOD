; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


spriteanims_skivv:

actor_skivv_sheet_move_anim_move:
actor_skivv_sheet_move_anim_move_numframes: equ 0x4
actor_skivv_sheet_move_anim_move_speed: equ 0x28
actor_skivv_sheet_move_anim_move_track_frames:
	dc.l actor_skivv_sheet_move_frame_0_header
	dc.l actor_skivv_sheet_move_frame_1_header
	dc.l actor_skivv_sheet_move_frame_2_header
	dc.l actor_skivv_sheet_move_frame_3_header

	Even
actor_skivv_sheet_move_anim_move_track_posx equ 0
actor_skivv_sheet_move_anim_move_track_posy equ 0
actor_skivv_sheet_move_anim_move_track_sfx equ 0

actor_skivv_sheet_attack_anim_attack:
actor_skivv_sheet_attack_anim_attack_numframes: equ 0xE
actor_skivv_sheet_attack_anim_attack_speed: equ 0x1E
actor_skivv_sheet_attack_anim_attack_track_frames:
	dc.l actor_skivv_sheet_attack_frame_0_header
	dc.l actor_skivv_sheet_attack_frame_1_header
	dc.l actor_skivv_sheet_attack_frame_2_header
	dc.l actor_skivv_sheet_attack_frame_3_header
	dc.l actor_skivv_sheet_attack_frame_4_header
	dc.l actor_skivv_sheet_attack_frame_5_header
	dc.l actor_skivv_sheet_attack_frame_6_header
	dc.l actor_skivv_sheet_attack_frame_7_header
	dc.l actor_skivv_sheet_attack_frame_8_header
	dc.l actor_skivv_sheet_attack_frame_9_header
	dc.l actor_skivv_sheet_attack_frame_10_header
	dc.l actor_skivv_sheet_attack_frame_11_header
	dc.l actor_skivv_sheet_attack_frame_12_header
	dc.l actor_skivv_sheet_attack_frame_13_header

	Even
actor_skivv_sheet_attack_anim_attack_track_posx equ 0
actor_skivv_sheet_attack_anim_attack_track_posy equ 0
actor_skivv_sheet_attack_anim_attack_track_sfx equ 0
actor_skivv_sheet_attack_anim_chomp:
actor_skivv_sheet_attack_anim_chomp_numframes: equ 0x4
actor_skivv_sheet_attack_anim_chomp_speed: equ 0x1E
actor_skivv_sheet_attack_anim_chomp_track_frames:
	dc.l actor_skivv_sheet_attack_frame_10_header
	dc.l actor_skivv_sheet_attack_frame_11_header
	dc.l actor_skivv_sheet_attack_frame_12_header
	dc.l actor_skivv_sheet_attack_frame_13_header

	Even
actor_skivv_sheet_attack_anim_chomp_track_posx equ 0
actor_skivv_sheet_attack_anim_chomp_track_posy equ 0
actor_skivv_sheet_attack_anim_chomp_track_sfx equ 0

