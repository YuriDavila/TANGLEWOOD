	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $26, $0a	; Set volume for channel FM 6
	dc.b $46, $ad	; Set instrument for channel FM 6
	dc.b $26, $0a	; Set volume for channel FM 6
	dc.b $06, $03	; Note C#0 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $06, $03	; Note C#0 on channel FM 6
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
	dc.b $fe, $09	; Delay
	dc.b $ff	; The End
