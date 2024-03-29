;this file for FamiTone2 library generated by FamiStudio
    .export _z2_extract_music_data

_z2_extract_music_data:
	.byte 1
	.word @instruments
	.word @samples-3
	.word @song0ch0,@song0ch1,@song0ch2,@song0ch3,@song0ch4
	.byte .lobyte(@tempo_env2), .hibyte(@tempo_env2), 0, 0

@instruments:
	.word @env1,@env0,@env3,@env2
	.word @env1,@env0,@env3,@env2
	.word @env1,@env0,@env3,@env2
	.word @env1,@env0,@env3,@env2

@samples:
@env0:
	.byte $c0,$7f,$00,$00
@env1:
	.byte $04,$cf,$7f,$00,$01
@env2:
	.byte $00,$c0,$7f,$00,$01
@env3:
	.byte $7f,$00,$00
@tempo_env2:
	.byte $05,$80

@song0ch0:
@song0ch0loop:
@ref0:
	.byte $82,$2e,$db,$00,$00,$a1,$2e,$87,$00,$2e,$8b,$00,$2f,$8b,$00,$31,$8b,$00
@ref1:
	.byte $34,$9f,$00,$2a,$87,$00,$33,$9f,$00,$2a,$87,$00,$31,$9f,$00,$2a,$87,$00,$2f,$9f,$00,$2a,$87,$00
@ref2:
	.byte $2e,$9f,$00,$2c,$87,$00,$2e,$db,$00,$36,$8b,$00,$36,$8b,$00,$36,$8b,$00
@ref3:
	.byte $31,$ab,$00,$36,$8b,$00,$36,$8b,$00,$36,$8b,$00,$31,$ab,$00,$36,$8b,$00,$36,$8b,$00,$36,$8b,$00
@ref4:
	.byte $2e,$db,$00,$00,$a1,$2e,$87,$00,$2e,$8b,$00,$2f,$8b,$00,$31,$8b,$00
	.byte $ff,$18
	.word @ref1
	.byte $ff,$12
	.word @ref2
	.byte $ff,$18
	.word @ref3
@ref5:
	.byte $2c,$db,$00,$00,$a1,$2e,$87,$00,$2f,$9f,$00,$33,$87,$00
@ref6:
	.byte $3b,$ab,$00,$3a,$ab,$00,$38,$ab,$00,$36,$ab,$00
@ref7:
	.byte $34,$9f,$00,$34,$87,$00,$33,$ab,$00,$00,$a1,$2f,$87,$00,$2f,$8b,$00,$31,$8b,$00,$33,$8b,$00
@ref8:
	.byte $33,$9f,$00,$33,$87,$00,$31,$db,$00,$00,$ad
	.byte $ff,$0e
	.word @ref5
	.byte $ff,$0c
	.word @ref6
@ref9:
	.byte $35,$8b,$00,$33,$8b,$00,$35,$8b,$00,$31,$ab,$00,$00,$a1,$2c,$87,$00,$2c,$8b,$00,$2c,$8b,$00,$2c,$8b,$00
@ref10:
	.byte $29,$8b,$00,$27,$8b,$00,$29,$8b,$00,$25,$ab,$00,$00,$a1,$25,$87,$00,$25,$8b,$00,$25,$8b,$00,$25,$8b,$00
@ref11:
	.byte $2a,$db,$00,$00,$ad,$2f,$ab,$00
@ref12:
	.byte $2f,$9f,$00,$2f,$87,$00,$2e,$db,$00,$00,$ad
	.byte $ff,$08
	.word @ref11
	.byte $ff,$0b
	.word @ref12
@ref13:
	.byte $2c,$8b,$00,$2f,$8b,$00,$33,$8b,$00,$36,$8b,$00,$33,$8b,$00,$2f,$8b,$00,$2c,$8b,$00,$2f,$8b,$00,$33,$8b,$00,$36,$8b,$00,$33,$8b,$00,$2f,$8b,$00
@ref14:
	.byte $38,$8b,$00,$3a,$8b,$00,$38,$8b,$00,$36,$8b,$00,$38,$8b,$00,$36,$8b,$00,$35,$8b,$00,$36,$8b,$00,$35,$8b,$00,$33,$8b,$00,$35,$8b,$00,$33,$8b,$00
	.byte $ff,$24
	.word @ref13
@ref15:
	.byte $35,$9f,$00,$36,$87,$00,$33,$9f,$00,$35,$87,$00,$31,$9f,$00,$33,$87,$00,$2f,$9f,$00,$31,$87,$00
	.byte $fd
	.word @song0ch0loop

@song0ch1:
@song0ch1loop:
@ref16:
	.byte $84,$25,$ab,$00,$27,$8b,$00,$25,$8b,$00,$24,$8b,$00,$25,$9f,$00,$25,$87,$00,$25,$8b,$00,$27,$8b,$00,$2e,$8b,$00
@ref17:
	.byte $2a,$9f,$00,$27,$87,$00,$2a,$9f,$00,$27,$87,$00,$2a,$9f,$00,$27,$87,$00,$2a,$9f,$00,$27,$87,$00
@ref18:
	.byte $25,$9f,$00,$25,$87,$00,$25,$db,$00,$31,$8b,$00,$31,$8b,$00,$31,$8b,$00
@ref19:
	.byte $2e,$ab,$00,$31,$8b,$00,$31,$8b,$00,$31,$8b,$00,$2e,$ab,$00,$31,$8b,$00,$31,$8b,$00,$31,$8b,$00
@ref20:
	.byte $25,$ab,$00,$27,$8b,$00,$25,$8b,$00,$24,$8b,$00,$25,$9f,$00,$25,$87,$00,$25,$8b,$00,$27,$8b,$00,$2e,$8b,$00
	.byte $ff,$18
	.word @ref17
	.byte $ff,$12
	.word @ref18
	.byte $ff,$18
	.word @ref19
@ref21:
	.byte $23,$ab,$00,$25,$8b,$00,$23,$8b,$00,$22,$8b,$00,$23,$9f,$00,$25,$87,$00,$27,$9f,$00,$2f,$87,$00
@ref22:
	.byte $33,$ab,$00,$31,$ab,$00,$33,$ab,$00,$2e,$ab,$00
@ref23:
	.byte $2c,$9f,$00,$2c,$87,$00,$2a,$ab,$00,$00,$a1,$2a,$87,$00,$27,$8b,$00,$2a,$8b,$00,$2f,$8b,$00
@ref24:
	.byte $2e,$9f,$00,$2e,$87,$00,$2e,$87,$00,$2d,$87,$00,$2e,$87,$00,$2f,$87,$00,$2e,$ab,$00,$2a,$ab,$00
	.byte $ff,$18
	.word @ref21
	.byte $ff,$0c
	.word @ref22
@ref25:
	.byte $2c,$8b,$00,$2c,$8b,$00,$2c,$8b,$00,$2c,$ab,$00,$00,$a1,$29,$87,$00,$29,$8b,$00,$29,$8b,$00,$29,$8b,$00
@ref26:
	.byte $20,$8b,$00,$20,$8b,$00,$20,$8b,$00,$20,$ab,$00,$00,$a1,$20,$87,$00,$20,$8b,$00,$20,$8b,$00,$20,$8b,$00
@ref27:
	.byte $22,$db,$00,$00,$ad,$27,$ab,$00
@ref28:
	.byte $27,$9f,$00,$27,$87,$00,$25,$db,$00,$00,$ad
	.byte $ff,$08
	.word @ref27
	.byte $ff,$0b
	.word @ref28
@ref29:
	.byte $27,$8b,$00,$2c,$8b,$00,$2f,$8b,$00,$33,$8b,$00,$2f,$8b,$00,$2c,$8b,$00,$27,$8b,$00,$2c,$8b,$00,$2f,$8b,$00,$33,$8b,$00,$2f,$8b,$00,$2c,$8b,$00
@ref30:
	.byte $2f,$87,$00,$33,$87,$00,$2f,$87,$00,$33,$87,$00,$2f,$87,$00,$33,$87,$00,$2f,$87,$00,$33,$87,$00,$2c,$87,$00,$2f,$87,$00,$2c,$87,$00,$2f,$87,$00,$2c,$87,$00,$2f,$87,$00,$2c,$87,$00,$2f,$87,$00
	.byte $ff,$24
	.word @ref29
@ref31:
	.byte $31,$ab,$00,$2f,$ab,$00,$2c,$ab,$00,$29,$ab,$00
	.byte $fd
	.word @song0ch1loop

@song0ch2:
@song0ch2loop:
@ref32:
	.byte $86,$2a,$ab,$00,$2a,$8b,$00,$2a,$8b,$00,$2a,$8b,$00,$2e,$ab,$00,$2a,$ab,$00
@ref33:
	.byte $2f,$ab,$00,$2f,$ab,$00,$2f,$ab,$00,$2f,$ab,$00
@ref34:
	.byte $2a,$ab,$00,$2a,$8b,$00,$2a,$8b,$00,$2a,$8b,$00,$2a,$ab,$00,$3a,$8b,$00,$3a,$8b,$00,$3a,$8b,$00
@ref35:
	.byte $36,$ab,$00,$3a,$8b,$00,$3a,$8b,$00,$3a,$8b,$00,$36,$ab,$00,$3a,$8b,$00,$3a,$8b,$00,$3a,$8b,$00
@ref36:
	.byte $2a,$ab,$00,$2a,$8b,$00,$2a,$8b,$00,$2a,$8b,$00,$2e,$ab,$00,$2a,$ab,$00
	.byte $ff,$0c
	.word @ref33
	.byte $ff,$18
	.word @ref34
	.byte $ff,$18
	.word @ref35
@ref37:
	.byte $2c,$ab,$00,$2c,$8b,$00,$2c,$8b,$00,$2c,$8b,$00,$2c,$ab,$00,$2c,$ab,$00
@ref38:
	.byte $2c,$8b,$00,$2b,$8b,$00,$2c,$8b,$00,$2e,$ab,$00,$2f,$8b,$00,$2e,$8b,$00,$2f,$8b,$00,$33,$ab,$00
@ref39:
	.byte $2f,$ab,$00,$2f,$8b,$00,$2a,$8b,$00,$2f,$8b,$00,$33,$ab,$00,$2f,$ab,$00
@ref40:
	.byte $2a,$9f,$00,$2a,$87,$00,$2e,$ab,$00,$31,$ab,$00,$2a,$ab,$00
	.byte $ff,$12
	.word @ref37
	.byte $ff,$18
	.word @ref38
@ref41:
	.byte $25,$ab,$00,$29,$8b,$00,$28,$8b,$00,$29,$8b,$00,$2c,$ab,$00,$2f,$ab,$00
@ref42:
	.byte $31,$ab,$00,$2f,$8b,$00,$2e,$8b,$00,$2f,$8b,$00,$29,$ab,$00,$25,$ab,$00
@ref43:
	.byte $2a,$ab,$00,$2a,$8b,$00,$2a,$8b,$00,$2a,$8b,$00,$2a,$ab,$00,$2a,$ab,$00
	.byte $ff,$12
	.word @ref43
	.byte $ff,$12
	.word @ref43
	.byte $ff,$12
	.word @ref43
@ref44:
	.byte $2c,$db,$00,$00,$ad,$2f,$87,$00,$33,$9f,$00
	.byte $ff,$0b
	.word @ref44
	.byte $ff,$0b
	.word @ref44
@ref45:
	.byte $25,$9f,$00,$29,$87,$00,$29,$9f,$00,$2c,$87,$00,$2c,$9f,$00,$29,$87,$00,$2f,$9f,$00,$25,$87,$00
	.byte $fd
	.word @song0ch2loop

@song0ch3:
@song0ch3loop:
@ref46:
	.byte $80,$21,$ab,$00,$21,$8b,$00,$21,$8b,$00,$21,$8b,$00,$21,$ab,$00,$21,$ab,$00
@ref47:
	.byte $f7,$c7
@ref48:
	.byte $f7,$c7
@ref49:
	.byte $f7,$c7
@ref50:
	.byte $21,$ab,$00,$21,$8b,$00,$21,$8b,$00,$21,$8b,$00,$21,$ab,$00,$21,$ab,$00
@ref51:
	.byte $f7,$c7
@ref52:
	.byte $f7,$c7
@ref53:
	.byte $f7,$c7
	.byte $ff,$12
	.word @ref50
@ref54:
	.byte $f7,$c7
	.byte $ff,$12
	.word @ref50
@ref55:
	.byte $f7,$c7
	.byte $ff,$12
	.word @ref50
@ref56:
	.byte $f7,$c7
	.byte $ff,$12
	.word @ref50
@ref57:
	.byte $f7,$c7
	.byte $ff,$12
	.word @ref50
@ref58:
	.byte $f7,$c7
	.byte $ff,$12
	.word @ref50
@ref59:
	.byte $f7,$c7
@ref60:
	.byte $21,$db,$00,$21,$ab,$00,$21,$87,$00,$21,$9f,$00
	.byte $ff,$0c
	.word @ref60
	.byte $ff,$0c
	.word @ref60
@ref61:
	.byte $21,$9f,$00,$21,$87,$00,$21,$9f,$00,$21,$87,$00,$21,$9f,$00,$21,$87,$00,$21,$9f,$00,$21,$87,$00
	.byte $fd
	.word @song0ch3loop

@song0ch4:
@song0ch4loop:
@ref62:
	.byte $f7,$c7
@ref63:
	.byte $f7,$c7
@ref64:
	.byte $f7,$c7
@ref65:
	.byte $f7,$c7
@ref66:
	.byte $f7,$c7
@ref67:
	.byte $f7,$c7
@ref68:
	.byte $f7,$c7
@ref69:
	.byte $f7,$c7
@ref70:
	.byte $f7,$c7
@ref71:
	.byte $f7,$c7
@ref72:
	.byte $f7,$c7
@ref73:
	.byte $f7,$c7
@ref74:
	.byte $f7,$c7
@ref75:
	.byte $f7,$c7
@ref76:
	.byte $f7,$c7
@ref77:
	.byte $f7,$c7
@ref78:
	.byte $f7,$c7
@ref79:
	.byte $f7,$c7
@ref80:
	.byte $f7,$c7
@ref81:
	.byte $f7,$c7
@ref82:
	.byte $f7,$c7
@ref83:
	.byte $f7,$c7
@ref84:
	.byte $f7,$c7
@ref85:
	.byte $f7,$c7
	.byte $fd
	.word @song0ch4loop
