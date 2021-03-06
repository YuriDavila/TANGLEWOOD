; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


map_blockmap_L1A2_size_b	equ 0x000022E2	; Size in bytes
map_blockmap_L1A2_size_w	equ (map_blockmap_L1A2_size_b/2)	; Size in words
map_blockmap_L1A2_size_l	equ (map_blockmap_L1A2_size_b/4)	; Size in longwords
map_L1A2_width	equ 0x618
map_L1A2_height	equ 0x5C
map_blockmap_L1A2_width	equ 0x186
map_blockmap_L1A2_height	equ 0x17

map_blockmap_L1A2_coloffsets:
	dc.w 0x0000
	dc.w 0x0010
	dc.w 0x0020
	dc.w 0x0032
	dc.w 0x0042
	dc.w 0x0052
	dc.w 0x0062
	dc.w 0x0074
	dc.w 0x0086
	dc.w 0x0098
	dc.w 0x00AA
	dc.w 0x00C0
	dc.w 0x00DA
	dc.w 0x00EE
	dc.w 0x0102
	dc.w 0x011A
	dc.w 0x013A
	dc.w 0x0158
	dc.w 0x0170
	dc.w 0x017C
	dc.w 0x0188
	dc.w 0x0194
	dc.w 0x01A0
	dc.w 0x01AC
	dc.w 0x01B8
	dc.w 0x01C6
	dc.w 0x01D2
	dc.w 0x01DE
	dc.w 0x01EA
	dc.w 0x01F6
	dc.w 0x0202
	dc.w 0x0210
	dc.w 0x0220
	dc.w 0x024C
	dc.w 0x0278
	dc.w 0x0288
	dc.w 0x0298
	dc.w 0x02A4
	dc.w 0x02B0
	dc.w 0x02C0
	dc.w 0x02D0
	dc.w 0x02F0
	dc.w 0x0314
	dc.w 0x033A
	dc.w 0x0358
	dc.w 0x0376
	dc.w 0x0396
	dc.w 0x03B2
	dc.w 0x03CE
	dc.w 0x03F0
	dc.w 0x040E
	dc.w 0x0428
	dc.w 0x0440
	dc.w 0x0450
	dc.w 0x0462
	dc.w 0x0474
	dc.w 0x0484
	dc.w 0x0494
	dc.w 0x04AA
	dc.w 0x04BC
	dc.w 0x04CC
	dc.w 0x04D8
	dc.w 0x04E4
	dc.w 0x04F0
	dc.w 0x04FC
	dc.w 0x0508
	dc.w 0x0516
	dc.w 0x0522
	dc.w 0x052E
	dc.w 0x053A
	dc.w 0x0546
	dc.w 0x0552
	dc.w 0x0560
	dc.w 0x0574
	dc.w 0x0588
	dc.w 0x05A0
	dc.w 0x05B6
	dc.w 0x05CA
	dc.w 0x05E0
	dc.w 0x05F6
	dc.w 0x060C
	dc.w 0x0628
	dc.w 0x0648
	dc.w 0x066A
	dc.w 0x0686
	dc.w 0x06A6
	dc.w 0x06C4
	dc.w 0x06E6
	dc.w 0x070A
	dc.w 0x072C
	dc.w 0x0754
	dc.w 0x077E
	dc.w 0x079C
	dc.w 0x07BA
	dc.w 0x07D2
	dc.w 0x07F8
	dc.w 0x081A
	dc.w 0x082C
	dc.w 0x0842
	dc.w 0x0858
	dc.w 0x086A
	dc.w 0x0878
	dc.w 0x0888
	dc.w 0x0898
	dc.w 0x08A8
	dc.w 0x08BA
	dc.w 0x08CC
	dc.w 0x08DC
	dc.w 0x08EC
	dc.w 0x08FE
	dc.w 0x090C
	dc.w 0x091C
	dc.w 0x092C
	dc.w 0x093A
	dc.w 0x0948
	dc.w 0x0958
	dc.w 0x0964
	dc.w 0x0972
	dc.w 0x097E
	dc.w 0x098A
	dc.w 0x0998
	dc.w 0x09AE
	dc.w 0x09C8
	dc.w 0x09E2
	dc.w 0x09FC
	dc.w 0x0A10
	dc.w 0x0A26
	dc.w 0x0A3E
	dc.w 0x0A58
	dc.w 0x0A70
	dc.w 0x0A8E
	dc.w 0x0AB2
	dc.w 0x0AD6
	dc.w 0x0AEA
	dc.w 0x0AFC
	dc.w 0x0B0E
	dc.w 0x0B20
	dc.w 0x0B32
	dc.w 0x0B44
	dc.w 0x0B56
	dc.w 0x0B6A
	dc.w 0x0B7C
	dc.w 0x0B8E
	dc.w 0x0B9E
	dc.w 0x0BB0
	dc.w 0x0BC6
	dc.w 0x0BDE
	dc.w 0x0BF4
	dc.w 0x0C02
	dc.w 0x0C10
	dc.w 0x0C1E
	dc.w 0x0C2A
	dc.w 0x0C36
	dc.w 0x0C42
	dc.w 0x0C4E
	dc.w 0x0C5A
	dc.w 0x0C68
	dc.w 0x0C78
	dc.w 0x0C88
	dc.w 0x0C96
	dc.w 0x0CAA
	dc.w 0x0CBE
	dc.w 0x0CD6
	dc.w 0x0CEC
	dc.w 0x0D02
	dc.w 0x0D1A
	dc.w 0x0D36
	dc.w 0x0D56
	dc.w 0x0D7A
	dc.w 0x0DA0
	dc.w 0x0DC6
	dc.w 0x0DF0
	dc.w 0x0E12
	dc.w 0x0E40
	dc.w 0x0E6E
	dc.w 0x0E88
	dc.w 0x0EA2
	dc.w 0x0EBA
	dc.w 0x0ED2
	dc.w 0x0EEA
	dc.w 0x0F00
	dc.w 0x0F16
	dc.w 0x0F2E
	dc.w 0x0F48
	dc.w 0x0F60
	dc.w 0x0F74
	dc.w 0x0F88
	dc.w 0x0F9A
	dc.w 0x0FAC
	dc.w 0x0FBE
	dc.w 0x0FCE
	dc.w 0x0FDA
	dc.w 0x0FE6
	dc.w 0x0FF2
	dc.w 0x0FFE
	dc.w 0x100A
	dc.w 0x1016
	dc.w 0x1022
	dc.w 0x102E
	dc.w 0x103A
	dc.w 0x1046
	dc.w 0x1054
	dc.w 0x1062
	dc.w 0x1072
	dc.w 0x1080
	dc.w 0x1092
	dc.w 0x10A6
	dc.w 0x10B8
	dc.w 0x10CE
	dc.w 0x10E4
	dc.w 0x10FE
	dc.w 0x1118
	dc.w 0x1134
	dc.w 0x114E
	dc.w 0x1166
	dc.w 0x1184
	dc.w 0x11A2
	dc.w 0x11C4
	dc.w 0x11DA
	dc.w 0x11EC
	dc.w 0x11FC
	dc.w 0x1210
	dc.w 0x121E
	dc.w 0x122C
	dc.w 0x123A
	dc.w 0x124C
	dc.w 0x125E
	dc.w 0x1270
	dc.w 0x1284
	dc.w 0x12A4
	dc.w 0x12C8
	dc.w 0x12EC
	dc.w 0x1310
	dc.w 0x1332
	dc.w 0x135E
	dc.w 0x137E
	dc.w 0x139C
	dc.w 0x13B8
	dc.w 0x13CE
	dc.w 0x13E0
	dc.w 0x13EE
	dc.w 0x13FC
	dc.w 0x1410
	dc.w 0x1426
	dc.w 0x143C
	dc.w 0x1452
	dc.w 0x146A
	dc.w 0x1486
	dc.w 0x149A
	dc.w 0x14B0
	dc.w 0x14CA
	dc.w 0x14E0
	dc.w 0x14F8
	dc.w 0x1512
	dc.w 0x152E
	dc.w 0x1552
	dc.w 0x1574
	dc.w 0x1596
	dc.w 0x15BC
	dc.w 0x15E0
	dc.w 0x1608
	dc.w 0x1636
	dc.w 0x1664
	dc.w 0x1674
	dc.w 0x1684
	dc.w 0x1694
	dc.w 0x16A4
	dc.w 0x16B6
	dc.w 0x16C4
	dc.w 0x16D4
	dc.w 0x16F0
	dc.w 0x1710
	dc.w 0x1732
	dc.w 0x1756
	dc.w 0x177C
	dc.w 0x179A
	dc.w 0x17B6
	dc.w 0x17CC
	dc.w 0x17E2
	dc.w 0x17FE
	dc.w 0x181A
	dc.w 0x1830
	dc.w 0x1848
	dc.w 0x185E
	dc.w 0x1874
	dc.w 0x188A
	dc.w 0x18A0
	dc.w 0x18BA
	dc.w 0x18D0
	dc.w 0x18E6
	dc.w 0x18FC
	dc.w 0x1912
	dc.w 0x192A
	dc.w 0x1940
	dc.w 0x1958
	dc.w 0x1970
	dc.w 0x1986
	dc.w 0x199C
	dc.w 0x19B8
	dc.w 0x19D4
	dc.w 0x19F6
	dc.w 0x1A18
	dc.w 0x1A38
	dc.w 0x1A50
	dc.w 0x1A6C
	dc.w 0x1A8C
	dc.w 0x1AA8
	dc.w 0x1ABC
	dc.w 0x1ACE
	dc.w 0x1AE2
	dc.w 0x1AF4
	dc.w 0x1B06
	dc.w 0x1B16
	dc.w 0x1B26
	dc.w 0x1B36
	dc.w 0x1B46
	dc.w 0x1B58
	dc.w 0x1B6A
	dc.w 0x1B7A
	dc.w 0x1B8A
	dc.w 0x1B9E
	dc.w 0x1BB2
	dc.w 0x1BC6
	dc.w 0x1BDE
	dc.w 0x1BF6
	dc.w 0x1C0C
	dc.w 0x1C1C
	dc.w 0x1C2C
	dc.w 0x1C44
	dc.w 0x1C5C
	dc.w 0x1C74
	dc.w 0x1C88
	dc.w 0x1CA0
	dc.w 0x1CB8
	dc.w 0x1CD0
	dc.w 0x1CEA
	dc.w 0x1D08
	dc.w 0x1D26
	dc.w 0x1D46
	dc.w 0x1D66
	dc.w 0x1D8A
	dc.w 0x1DB0
	dc.w 0x1DD8
	dc.w 0x1E00
	dc.w 0x1E2C
	dc.w 0x1E58
	dc.w 0x1E6E
	dc.w 0x1E9C
	dc.w 0x1ECA
	dc.w 0x1EEE
	dc.w 0x1F12
	dc.w 0x1F32
	dc.w 0x1F4E
	dc.w 0x1F68
	dc.w 0x1F82
	dc.w 0x1F9A
	dc.w 0x1FB4
	dc.w 0x1FCE
	dc.w 0x1FE6
	dc.w 0x2000
	dc.w 0x201A
	dc.w 0x2032
	dc.w 0x204A
	dc.w 0x2060
	dc.w 0x2074
	dc.w 0x208A
	dc.w 0x209A
	dc.w 0x20A8
	dc.w 0x20B8
	dc.w 0x20C6
	dc.w 0x20D6
	dc.w 0x20EE
	dc.w 0x2108
	dc.w 0x2126
	dc.w 0x214C
	dc.w 0x2174
	dc.w 0x2196
	dc.w 0x21B8
	dc.w 0x21D4
	dc.w 0x21EE
	dc.w 0x2208
	dc.w 0x2224
	dc.w 0x2240
	dc.w 0x225A
	dc.w 0x2274
	dc.w 0x2290
	dc.w 0x22A2
	dc.w 0x22B2
	dc.w 0x22C2
	dc.w 0x22D2
