; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


map_blockmap_L1A3_size_b	equ 0x0000176E	; Size in bytes
map_blockmap_L1A3_size_w	equ (map_blockmap_L1A3_size_b/2)	; Size in words
map_blockmap_L1A3_size_l	equ (map_blockmap_L1A3_size_b/4)	; Size in longwords
map_L1A3_width	equ 0x480
map_L1A3_height	equ 0x5C
map_blockmap_L1A3_width	equ 0x120
map_blockmap_L1A3_height	equ 0x17

map_blockmap_L1A3_coloffsets:
	dc.w 0x0000
	dc.w 0x000E
	dc.w 0x001C
	dc.w 0x002A
	dc.w 0x0038
	dc.w 0x0046
	dc.w 0x0054
	dc.w 0x0062
	dc.w 0x0070
	dc.w 0x007E
	dc.w 0x008C
	dc.w 0x009A
	dc.w 0x00A8
	dc.w 0x00B6
	dc.w 0x00C4
	dc.w 0x00D2
	dc.w 0x00E0
	dc.w 0x00EE
	dc.w 0x00FC
	dc.w 0x010A
	dc.w 0x011E
	dc.w 0x0132
	dc.w 0x0146
	dc.w 0x0162
	dc.w 0x0188
	dc.w 0x01AA
	dc.w 0x01BE
	dc.w 0x01CC
	dc.w 0x01DA
	dc.w 0x01E6
	dc.w 0x01FC
	dc.w 0x021A
	dc.w 0x023A
	dc.w 0x0256
	dc.w 0x0264
	dc.w 0x026E
	dc.w 0x0280
	dc.w 0x0292
	dc.w 0x02A4
	dc.w 0x02B6
	dc.w 0x02C6
	dc.w 0x02D4
	dc.w 0x02EC
	dc.w 0x0308
	dc.w 0x0322
	dc.w 0x0330
	dc.w 0x0346
	dc.w 0x0358
	dc.w 0x036C
	dc.w 0x038E
	dc.w 0x03BA
	dc.w 0x03DA
	dc.w 0x03EC
	dc.w 0x03F8
	dc.w 0x0404
	dc.w 0x0410
	dc.w 0x0422
	dc.w 0x0434
	dc.w 0x0446
	dc.w 0x0458
	dc.w 0x046A
	dc.w 0x0476
	dc.w 0x0482
	dc.w 0x048E
	dc.w 0x049A
	dc.w 0x04A6
	dc.w 0x04B2
	dc.w 0x04C4
	dc.w 0x04DA
	dc.w 0x04F2
	dc.w 0x0508
	dc.w 0x051C
	dc.w 0x0530
	dc.w 0x0542
	dc.w 0x0558
	dc.w 0x0572
	dc.w 0x0596
	dc.w 0x05B4
	dc.w 0x05C2
	dc.w 0x05CC
	dc.w 0x05DE
	dc.w 0x060C
	dc.w 0x063A
	dc.w 0x0662
	dc.w 0x067C
	dc.w 0x0694
	dc.w 0x06AC
	dc.w 0x06C6
	dc.w 0x06DE
	dc.w 0x06F0
	dc.w 0x0702
	dc.w 0x071E
	dc.w 0x0738
	dc.w 0x0752
	dc.w 0x0768
	dc.w 0x077C
	dc.w 0x0792
	dc.w 0x07A8
	dc.w 0x07BC
	dc.w 0x07D0
	dc.w 0x07E8
	dc.w 0x07FE
	dc.w 0x081A
	dc.w 0x0836
	dc.w 0x0850
	dc.w 0x0868
	dc.w 0x0882
	dc.w 0x089A
	dc.w 0x08B6
	dc.w 0x08E2
	dc.w 0x0902
	dc.w 0x092A
	dc.w 0x0956
	dc.w 0x0980
	dc.w 0x099A
	dc.w 0x09B2
	dc.w 0x09C8
	dc.w 0x09DA
	dc.w 0x09FC
	dc.w 0x0A26
	dc.w 0x0A4E
	dc.w 0x0A6A
	dc.w 0x0A86
	dc.w 0x0AA0
	dc.w 0x0ABC
	dc.w 0x0AD8
	dc.w 0x0AEE
	dc.w 0x0B06
	dc.w 0x0B16
	dc.w 0x0B26
	dc.w 0x0B34
	dc.w 0x0B44
	dc.w 0x0B5C
	dc.w 0x0B74
	dc.w 0x0B8C
	dc.w 0x0B9E
	dc.w 0x0BB0
	dc.w 0x0BC2
	dc.w 0x0BDA
	dc.w 0x0BF2
	dc.w 0x0C0C
	dc.w 0x0C2A
	dc.w 0x0C50
	dc.w 0x0C78
	dc.w 0x0C96
	dc.w 0x0CA6
	dc.w 0x0CB8
	dc.w 0x0CDC
	dc.w 0x0D08
	dc.w 0x0D2E
	dc.w 0x0D50
	dc.w 0x0D70
	dc.w 0x0D90
	dc.w 0x0DAC
	dc.w 0x0DC6
	dc.w 0x0DE6
	dc.w 0x0E08
	dc.w 0x0E26
	dc.w 0x0E3E
	dc.w 0x0E50
	dc.w 0x0E62
	dc.w 0x0E74
	dc.w 0x0E86
	dc.w 0x0E98
	dc.w 0x0EB2
	dc.w 0x0ECC
	dc.w 0x0EE8
	dc.w 0x0EFA
	dc.w 0x0F0C
	dc.w 0x0F24
	dc.w 0x0F3E
	dc.w 0x0F56
	dc.w 0x0F66
	dc.w 0x0F78
	dc.w 0x0F8C
	dc.w 0x0F9E
	dc.w 0x0FB2
	dc.w 0x0FC4
	dc.w 0x0FD8
	dc.w 0x0FEE
	dc.w 0x1006
	dc.w 0x1020
	dc.w 0x1034
	dc.w 0x104E
	dc.w 0x1066
	dc.w 0x1080
	dc.w 0x109E
	dc.w 0x10BC
	dc.w 0x10D6
	dc.w 0x10EE
	dc.w 0x1108
	dc.w 0x1122
	dc.w 0x1136
	dc.w 0x1146
	dc.w 0x115A
	dc.w 0x116A
	dc.w 0x1178
	dc.w 0x1186
	dc.w 0x119A
	dc.w 0x11B0
	dc.w 0x11CE
	dc.w 0x11F0
	dc.w 0x1214
	dc.w 0x122E
	dc.w 0x1246
	dc.w 0x1268
	dc.w 0x1284
	dc.w 0x129C
	dc.w 0x12B2
	dc.w 0x12C6
	dc.w 0x12D6
	dc.w 0x12E8
	dc.w 0x12F8
	dc.w 0x130A
	dc.w 0x131A
	dc.w 0x132C
	dc.w 0x133A
	dc.w 0x134A
	dc.w 0x1356
	dc.w 0x1362
	dc.w 0x136E
	dc.w 0x137A
	dc.w 0x1386
	dc.w 0x1392
	dc.w 0x139E
	dc.w 0x13AA
	dc.w 0x13B6
	dc.w 0x13C2
	dc.w 0x13CE
	dc.w 0x13DA
	dc.w 0x13EC
	dc.w 0x1400
	dc.w 0x1414
	dc.w 0x1422
	dc.w 0x142E
	dc.w 0x143A
	dc.w 0x1446
	dc.w 0x1452
	dc.w 0x1460
	dc.w 0x146C
	dc.w 0x1478
	dc.w 0x1486
	dc.w 0x1496
	dc.w 0x14AA
	dc.w 0x14BE
	dc.w 0x14CE
	dc.w 0x14D8
	dc.w 0x14E2
	dc.w 0x14EE
	dc.w 0x14FA
	dc.w 0x1504
	dc.w 0x150E
	dc.w 0x1518
	dc.w 0x1522
	dc.w 0x152C
	dc.w 0x1536
	dc.w 0x1542
	dc.w 0x154E
	dc.w 0x1558
	dc.w 0x1562
	dc.w 0x1572
	dc.w 0x1584
	dc.w 0x1596
	dc.w 0x15B4
	dc.w 0x15D4
	dc.w 0x15F2
	dc.w 0x1604
	dc.w 0x1616
	dc.w 0x1626
	dc.w 0x1636
	dc.w 0x1646
	dc.w 0x1658
	dc.w 0x166A
	dc.w 0x167A
	dc.w 0x168A
	dc.w 0x169A
	dc.w 0x16AA
	dc.w 0x16BA
	dc.w 0x16CA
	dc.w 0x16DC
	dc.w 0x16EE
	dc.w 0x16FE
	dc.w 0x170E
	dc.w 0x171E
	dc.w 0x172E
	dc.w 0x173E
	dc.w 0x174E
	dc.w 0x175E
