;      0123456789abcdef
.byte "Test Songs      "

.export _song_table
_song_table:
    .WORD _title
    .WORD _battle
    .WORD _boss
    .WORD _cave_item_fanfare
    .WORD _credits
    .WORD _crystal_fanfare
    .WORD _final_boss
    .WORD _gp
    .WORD _house
    .WORD _overworld
    .WORD _palace
    .WORD _town_item_fanfare
    .WORD _town
    .WORD _triforce
    .WORD _zelda
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0

.export _drum_period
_drum_period:
    .BYTE $03
    .BYTE $0e
    .BYTE $06
    .BYTE $08
    .BYTE $09
    .BYTE $0a
    .BYTE $0b
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
.export _drum_patch
_drum_patch:
    .BYTE $08
    .BYTE $10
    .BYTE $08
    .BYTE $08
    .BYTE $08
    .BYTE $08
    .BYTE $08
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00

.export _instruments_table
_instruments_table:
    ; Instrument name: 'piano', type: VRC7
    .WORD 0,0,0,$0003
    ; Instrument name: 'snare', type: 2A03
    .WORD env_snare_volume,0,0,0
    ; Instrument name: 'hat', type: 2A03
    .WORD env_hat_volume,0,0,0
    ; Instrument name: 'bass', type: VRC7
    .WORD 0,0,0,$000d
    ; Instrument name: 'flute', type: VRC7
    .WORD 0,0,0,$0004
    ; Instrument name: 'guitar', type: VRC7
    .WORD 0,0,0,$0002
    ; Instrument name: 'brass', type: VRC7
    .WORD 0,0,0,$000c
    ; Instrument name: 'organ', type: VRC7
    .WORD 0,0,0,$0008
    ; Instrument name: 'synth', type: VRC7
    .WORD 0,0,0,$000e
    ; Instrument name: 'xylophone', type: VRC7
    .WORD 0,0,0,$000a
    ; Instrument name: 'trumpet', type: VRC7
    .WORD 0,0,0,$0007
    ; Instrument name: 'chorus', type: VRC7
    .WORD 0,0,0,$000f
    ; Instrument name: 'vibraphone', type: VRC7
    .WORD 0,0,0,$000a

env_snare_volume:
    .BYT $15,$14,$00,$f0,$c0,$90,$80,$70,$60,$50,$40,$40,$30,$30,$30,$20,$20,$10,$10,$10,$00
env_hat_volume:
    .BYT $0c,$0b,$00,$a0,$60,$40,$30,$20,$20,$10,$10,$00

.export _title
_title:
    .BYT 10, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD title_drumset_data
    .WORD 0
    .WORD title_piano_1_data
    .WORD title_piano_2_data
    .WORD title_bass_guitar_data
    .WORD title_violin_data
    .WORD title_electric_guitar_data
title_drumset_data:
    .WORD title_drumset_sequence
    .WORD title_drumset_measure1
    .WORD title_drumset_measure2
    .WORD title_drumset_measure3
    .WORD title_drumset_measure4
    .WORD title_drumset_measure5
    .WORD title_drumset_measure6
    .WORD title_drumset_measure7
    .WORD title_drumset_measure8
    .WORD title_drumset_measure9
    .WORD title_drumset_measure10
    .WORD title_drumset_measure11
title_drumset_sequence:
    .BYT  $01,$02,$02,$03,$04,$05,$04,$05,$04,$05,$04,$05,$06,$06,$06,$07,$08,$08,$08,$09,$08,$08,$08,$09,$0a,$0b,$0b,$0b,$0a,$0b,$0b,$0b,$84,$00
title_drumset_measure1:
    .BYT  $20,$00,$80,$00
title_drumset_measure2:
    .BYT  $80,$00
title_drumset_measure3:
    .BYT  $c0,$0f,$21,$c0,$00
title_drumset_measure4:
    .BYT  $21,$80,$00
title_drumset_measure5:
    .BYT  $11,$c0,$21,$c0,$00
title_drumset_measure6:
    .BYT  $22,$e0,$22,$f0,$23,$e0,$22,$f0,$23,$e0,$00
title_drumset_measure7:
    .BYT  $22,$e0,$22,$f0,$23,$e0,$22,$f0,$24,$f8,$25,$f8,$26,$f8,$27,$f8,$00
title_drumset_measure8:
    .BYT  $22,$e0,$23,$f0,$11,$f0,$22,$f0,$22,$f0,$23,$f0,$11,$f0,$00
title_drumset_measure9:
    .BYT  $22,$e0,$23,$f0,$11,$f0,$22,$f0,$22,$f0,$23,$f8,$23,$f8,$23,$f8,$23,$f8,$00
title_drumset_measure10:
    .BYT  $21,$e0,$23,$f0,$11,$e0,$22,$f0,$23,$f0,$11,$f0,$00
title_drumset_measure11:
    .BYT  $22,$e0,$23,$f0,$11,$e0,$22,$f0,$23,$f0,$11,$f0,$00
title_piano_1_data:
    .WORD title_piano_1_sequence
    .WORD title_piano_1_measure1
    .WORD title_piano_1_measure2
    .WORD title_piano_1_measure3
    .WORD title_piano_1_measure4
    .WORD title_piano_1_measure5
    .WORD title_piano_1_measure6
    .WORD title_piano_1_measure7
    .WORD title_piano_1_measure8
    .WORD title_piano_1_measure9
    .WORD title_piano_1_measure10
    .WORD title_piano_1_measure11
    .WORD title_piano_1_measure12
    .WORD title_piano_1_measure13
    .WORD title_piano_1_measure14
    .WORD title_piano_1_measure15
    .WORD title_piano_1_measure16
title_piano_1_sequence:
    .BYT  $01,$02,$02,$02,$03,$04,$05,$06,$03,$04,$05,$07,$08,$09,$0a,$0b,$0c,$0c,$0d,$0c,$0c,$0c,$0d,$0c,$0e,$0f,$0e,$0f,$0e,$0f,$0e,$0f,$84,$00
title_piano_1_measure1:
    .BYT  $20,$00,$80,$00
title_piano_1_measure2:
    .BYT  $80,$00
title_piano_1_measure3:
    .BYT  $15,$02,$0f,$48,$b4,$11,$fc,$45,$e2,$11,$fe,$48,$f1,$11,$ff,$00
title_piano_1_measure4:
    .BYT  $46,$86,$11,$fa,$00
title_piano_1_measure5:
    .BYT  $44,$b4,$11,$fc,$41,$e2,$11,$fe,$44,$f1,$11,$ff,$00
title_piano_1_measure6:
    .BYT  $43,$86,$11,$fa,$00
title_piano_1_measure7:
    .BYT  $48,$d2,$11,$fe,$43,$d2,$11,$fe,$3f,$e2,$11,$fe,$00
title_piano_1_measure8:
    .BYT  $15,$04,$48,$d2,$11,$fe,$48,$e2,$11,$fe,$48,$d2,$11,$fe,$00
title_piano_1_measure9:
    .BYT  $49,$d2,$11,$fe,$49,$e2,$11,$fe,$49,$d2,$11,$fe,$00
title_piano_1_measure10:
    .BYT  $4a,$d2,$11,$fe,$4a,$e2,$11,$fe,$4a,$d2,$11,$fe,$00
title_piano_1_measure11:
    .BYT  $4b,$d2,$11,$fe,$4c,$b4,$11,$fc,$00
title_piano_1_measure12:
    .BYT  $15,$08,$45,$e2,$11,$fe,$45,$e2,$11,$fe,$46,$f1,$11,$ff,$48,$d2,$11,$fe,$00
title_piano_1_measure13:
    .BYT  $46,$e2,$11,$fe,$43,$f1,$11,$ff,$4b,$e2,$11,$fe,$4a,$e2,$11,$fe,$48,$f1,$11,$ff,$00
title_piano_1_measure14:
    .BYT  $15,$10,$49,$f8,$44,$f8,$41,$f8,$3d,$f8,$49,$f8,$44,$f8,$41,$f8,$3d,$f8,$49,$f8,$44,$f8,$41,$f8,$3d,$f8,$49,$f8,$44,$f8,$41,$f8,$3d,$f8,$00
title_piano_1_measure15:
    .BYT  $48,$f8,$43,$f8,$40,$f8,$3c,$f8,$48,$f8,$43,$f8,$40,$f8,$3c,$f8,$48,$f8,$43,$f8,$40,$f8,$3c,$f8,$48,$f8,$43,$f8,$40,$f8,$3c,$f8,$00
title_piano_1_measure16:
    .BYT  $11,$80,$00
title_piano_2_data:
    .WORD title_piano_2_sequence
    .WORD title_piano_2_measure1
    .WORD title_piano_2_measure2
    .WORD title_piano_2_measure3
    .WORD title_piano_2_measure4
    .WORD title_piano_2_measure5
    .WORD title_piano_2_measure6
    .WORD title_piano_2_measure7
    .WORD title_piano_2_measure8
    .WORD title_piano_2_measure9
    .WORD title_piano_2_measure10
    .WORD title_piano_2_measure11
    .WORD title_piano_2_measure12
    .WORD title_piano_2_measure13
    .WORD title_piano_2_measure14
    .WORD title_piano_2_measure15
    .WORD title_piano_2_measure16
title_piano_2_sequence:
    .BYT  $01,$02,$02,$02,$03,$04,$05,$06,$03,$04,$05,$07,$08,$09,$0a,$0b,$0c,$0c,$0d,$0c,$0c,$0c,$0d,$0c,$0e,$0f,$0e,$0f,$0e,$0f,$0e,$0f,$84,$00
title_piano_2_measure1:
    .BYT  $20,$00,$80,$00
title_piano_2_measure2:
    .BYT  $80,$00
title_piano_2_measure3:
    .BYT  $0f,$45,$b4,$11,$fc,$41,$e2,$11,$fe,$45,$f1,$11,$ff,$00
title_piano_2_measure4:
    .BYT  $43,$86,$11,$fa,$00
title_piano_2_measure5:
    .BYT  $41,$b4,$11,$fc,$3d,$e2,$11,$fe,$41,$f1,$11,$ff,$00
title_piano_2_measure6:
    .BYT  $3f,$86,$11,$fa,$00
title_piano_2_measure7:
    .BYT  $43,$d2,$11,$fe,$3f,$d2,$11,$fe,$3c,$e2,$11,$fe,$00
title_piano_2_measure8:
    .BYT  $41,$d2,$11,$fe,$41,$e2,$11,$fe,$41,$d2,$11,$fe,$00
title_piano_2_measure9:
    .BYT  $42,$d2,$11,$fe,$42,$e2,$11,$fe,$42,$d2,$11,$fe,$00
title_piano_2_measure10:
    .BYT  $43,$d2,$11,$fe,$43,$e2,$11,$fe,$43,$d2,$11,$fe,$00
title_piano_2_measure11:
    .BYT  $44,$d2,$11,$fe,$43,$b4,$11,$fc,$00
title_piano_2_measure12:
    .BYT  $41,$e2,$11,$fe,$41,$e2,$11,$fe,$43,$f1,$11,$ff,$45,$d2,$11,$fe,$00
title_piano_2_measure13:
    .BYT  $43,$e2,$11,$fe,$3f,$f1,$11,$ff,$43,$e2,$11,$fe,$43,$e2,$11,$fe,$43,$f1,$11,$ff,$00
title_piano_2_measure14:
    .BYT  $44,$f8,$41,$f8,$3d,$f8,$38,$f8,$44,$f8,$41,$f8,$3d,$f8,$38,$f8,$44,$f8,$41,$f8,$3d,$f8,$38,$f8,$44,$f8,$41,$f8,$3d,$f8,$38,$f8,$00
title_piano_2_measure15:
    .BYT  $43,$f8,$40,$f8,$3c,$f8,$37,$f8,$43,$f8,$40,$f8,$3c,$f8,$37,$f8,$43,$f8,$40,$f8,$3c,$f8,$37,$f8,$43,$f8,$40,$f8,$3c,$f8,$37,$f8,$00
title_piano_2_measure16:
    .BYT  $11,$80,$00
title_bass_guitar_data:
    .WORD title_bass_guitar_sequence
    .WORD title_bass_guitar_measure1
    .WORD title_bass_guitar_measure2
    .WORD title_bass_guitar_measure3
    .WORD title_bass_guitar_measure4
    .WORD title_bass_guitar_measure5
    .WORD title_bass_guitar_measure6
    .WORD title_bass_guitar_measure7
    .WORD title_bass_guitar_measure8
    .WORD title_bass_guitar_measure9
    .WORD title_bass_guitar_measure10
    .WORD title_bass_guitar_measure11
    .WORD title_bass_guitar_measure12
    .WORD title_bass_guitar_measure13
    .WORD title_bass_guitar_measure14
title_bass_guitar_sequence:
    .BYT  $01,$02,$02,$02,$03,$04,$05,$06,$03,$04,$05,$06,$07,$07,$07,$08,$09,$09,$0a,$09,$09,$09,$0a,$09,$0b,$0c,$0b,$0d,$0b,$0c,$0b,$0d,$84,$00
title_bass_guitar_measure1:
    .BYT  $20,$18,$80,$00
title_bass_guitar_measure2:
    .BYT  $80,$00
title_bass_guitar_measure3:
    .BYT  $0f,$35,$b0,$30,$e0,$35,$f0,$00
title_bass_guitar_measure4:
    .BYT  $33,$a0,$30,$e0,$00
title_bass_guitar_measure5:
    .BYT  $31,$d0,$35,$d0,$38,$e0,$00
title_bass_guitar_measure6:
    .BYT  $37,$d0,$33,$d0,$30,$e0,$00
title_bass_guitar_measure7:
    .BYT  $35,$d0,$35,$e0,$35,$e0,$30,$f0,$00
title_bass_guitar_measure8:
    .BYT  $35,$d0,$30,$e0,$30,$f0,$34,$f0,$37,$f0,$00
title_bass_guitar_measure9:
    .BYT  $35,$e0,$30,$f0,$33,$e0,$32,$e0,$30,$f0,$00
title_bass_guitar_measure10:
    .BYT  $37,$e0,$33,$f0,$2e,$e0,$33,$e0,$37,$f0,$00
title_bass_guitar_measure11:
    .BYT  $31,$f0,$31,$f0,$31,$f0,$31,$f0,$35,$f0,$35,$f0,$38,$f0,$38,$f0,$00
title_bass_guitar_measure12:
    .BYT  $30,$f0,$30,$f0,$34,$f0,$34,$f0,$37,$f0,$37,$f0,$34,$f0,$34,$f0,$00
title_bass_guitar_measure13:
    .BYT  $30,$f0,$30,$f0,$34,$f0,$34,$f0,$37,$f0,$37,$f0,$3a,$e0,$00
title_bass_guitar_measure14:
    .BYT  $11,$80,$00
title_violin_data:
    .WORD title_violin_sequence
    .WORD title_violin_measure1
    .WORD title_violin_measure2
    .WORD title_violin_measure3
    .WORD title_violin_measure4
    .WORD title_violin_measure5
    .WORD title_violin_measure6
    .WORD title_violin_measure7
    .WORD title_violin_measure8
    .WORD title_violin_measure9
    .WORD title_violin_measure10
    .WORD title_violin_measure11
    .WORD title_violin_measure12
    .WORD title_violin_measure13
    .WORD title_violin_measure14
    .WORD title_violin_measure15
    .WORD title_violin_measure16
    .WORD title_violin_measure17
    .WORD title_violin_measure18
    .WORD title_violin_measure19
    .WORD title_violin_measure20
title_violin_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$03,$04,$02,$02,$02,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0a,$0b,$0c,$0e,$0f,$10,$11,$12,$0f,$13,$14,$84,$00
title_violin_measure1:
    .BYT  $20,$20,$80,$00
title_violin_measure2:
    .BYT  $80,$00
title_violin_measure3:
    .BYT  $bc,$0d,$43,$fc,$4b,$fc,$48,$fc,$43,$fc,$4b,$fc,$48,$fc,$43,$fc,$4b,$fc,$48,$fc,$43,$fc,$4b,$fc,$48,$fc,$43,$fc,$4b,$fc,$48,$fc,$00
title_violin_measure4:
    .BYT  $11,$80,$00
title_violin_measure5:
    .BYT  $0f,$4d,$f0,$41,$f0,$45,$f0,$48,$f0,$4d,$f0,$41,$f0,$45,$f0,$48,$f0,$00
title_violin_measure6:
    .BYT  $4d,$f0,$41,$f0,$46,$f0,$49,$f0,$4d,$f0,$41,$f0,$46,$f0,$49,$f0,$00
title_violin_measure7:
    .BYT  $4d,$f0,$41,$f0,$47,$f0,$4a,$f0,$4d,$f0,$41,$f0,$47,$f0,$4a,$f0,$00
title_violin_measure8:
    .BYT  $4d,$f0,$48,$f0,$45,$f0,$41,$ff,$42,$ff,$11,$ff,$43,$ff,$44,$ff,$45,$ff,$11,$ff,$46,$ff,$47,$ff,$48,$ff,$11,$ff,$49,$ff,$4a,$ff,$4b,$ff,$11,$ff,$4c,$ff,$4d,$c0,$00
title_violin_measure9:
    .BYT  $11,$e0,$52,$e0,$51,$f0,$4d,$e0,$48,$f0,$00
title_violin_measure10:
    .BYT  $f0,$45,$d0,$46,$e0,$48,$e0,$00
title_violin_measure11:
    .BYT  $4b,$e0,$4a,$e0,$48,$e0,$46,$e0,$00
title_violin_measure12:
    .BYT  $48,$f0,$46,$e0,$45,$b0,$00
title_violin_measure13:
    .BYT  $11,$e0,$52,$e0,$51,$f0,$4d,$e0,$48,$f0,$00
title_violin_measure14:
    .BYT  $11,$e0,$49,$f0,$4b,$f0,$4d,$f0,$50,$e0,$50,$f0,$00
title_violin_measure15:
    .BYT  $4f,$f0,$4c,$e0,$48,$e0,$4c,$f0,$4f,$e0,$00
title_violin_measure16:
    .BYT  $11,$e0,$49,$f0,$4b,$f0,$4d,$f0,$50,$d0,$00
title_violin_measure17:
    .BYT  $4f,$80,$00
title_violin_measure18:
    .BYT  $11,$e0,$49,$f0,$4b,$f0,$4d,$f0,$50,$e0,$50,$f0,$00
title_violin_measure19:
    .BYT  $11,$e0,$49,$f0,$4b,$f0,$4d,$f0,$50,$e0,$11,$fc,$11,$fc,$11,$fc,$11,$fc,$00
title_violin_measure20:
    .BYT  $54,$81,$11,$ff,$00
title_electric_guitar_data:
    .WORD title_electric_guitar_sequence
    .WORD title_electric_guitar_measure1
    .WORD title_electric_guitar_measure2
    .WORD title_electric_guitar_measure3
    .WORD title_electric_guitar_measure4
    .WORD title_electric_guitar_measure5
    .WORD title_electric_guitar_measure6
    .WORD title_electric_guitar_measure7
title_electric_guitar_sequence:
    .BYT  $01,$02,$03,$04,$05,$05,$05,$05,$05,$05,$05,$05,$06,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$84,$00
title_electric_guitar_measure1:
    .BYT  $20,$28,$03,$46,$f0,$45,$f0,$41,$f0,$04,$3c,$f0,$46,$f0,$45,$f0,$05,$41,$f0,$3c,$f0,$00
title_electric_guitar_measure2:
    .BYT  $46,$f0,$06,$45,$f0,$41,$f0,$3c,$f0,$07,$46,$f0,$45,$f0,$41,$f0,$3c,$f0,$00
title_electric_guitar_measure3:
    .BYT  $08,$46,$f0,$45,$f0,$41,$f0,$09,$3c,$f0,$46,$f0,$45,$f0,$0a,$41,$f0,$3c,$f0,$00
title_electric_guitar_measure4:
    .BYT  $46,$f0,$0b,$45,$f0,$41,$f0,$3c,$f0,$0c,$46,$f0,$45,$f0,$41,$f0,$3c,$f0,$00
title_electric_guitar_measure5:
    .BYT  $0d,$46,$f0,$45,$f0,$41,$f0,$3c,$f0,$46,$f0,$45,$f0,$41,$f0,$3c,$f0,$00
title_electric_guitar_measure6:
    .BYT  $11,$80,$00
title_electric_guitar_measure7:
    .BYT  $80,$00
.export _battle
_battle:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD battle_drumset__noise_data
    .WORD 0
    .WORD battle_piano__pulse2_data
    .WORD battle_piano__pulse1_data
    .WORD battle_bass_guitar__triangle_data
battle_drumset__noise_data:
    .WORD battle_drumset__noise_sequence
    .WORD battle_drumset__noise_measure1
    .WORD battle_drumset__noise_measure2
    .WORD battle_drumset__noise_measure3
    .WORD battle_drumset__noise_measure4
battle_drumset__noise_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$03,$04,$80,$00
battle_drumset__noise_measure1:
    .BYT  $20,$00,$0d,$23,$ec,$23,$f6,$23,$f6,$11,$f6,$23,$f6,$23,$f6,$23,$f6,$00
battle_drumset__noise_measure2:
    .BYT  $23,$ec,$23,$f6,$23,$f6,$11,$f6,$23,$f6,$23,$f6,$23,$f6,$00
battle_drumset__noise_measure3:
    .BYT  $23,$f6,$23,$f6,$11,$f6,$23,$f6,$11,$f6,$23,$f6,$11,$f6,$23,$f6,$00
battle_drumset__noise_measure4:
    .BYT  $23,$ec,$11,$ec,$23,$d8,$00
battle_piano__pulse2_data:
    .WORD battle_piano__pulse2_sequence
    .WORD battle_piano__pulse2_measure1
    .WORD battle_piano__pulse2_measure2
    .WORD battle_piano__pulse2_measure3
    .WORD battle_piano__pulse2_measure4
    .WORD battle_piano__pulse2_measure5
    .WORD battle_piano__pulse2_measure6
    .WORD battle_piano__pulse2_measure7
    .WORD battle_piano__pulse2_measure8
    .WORD battle_piano__pulse2_measure9
    .WORD battle_piano__pulse2_measure10
    .WORD battle_piano__pulse2_measure11
    .WORD battle_piano__pulse2_measure12
    .WORD battle_piano__pulse2_measure13
    .WORD battle_piano__pulse2_measure14
    .WORD battle_piano__pulse2_measure15
    .WORD battle_piano__pulse2_measure16
    .WORD battle_piano__pulse2_measure17
    .WORD battle_piano__pulse2_measure18
    .WORD battle_piano__pulse2_measure19
    .WORD battle_piano__pulse2_measure20
battle_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0d,$0f,$09,$0a,$10,$11,$12,$12,$13,$14,$80,$00
battle_piano__pulse2_measure1:
    .BYT  $20,$30,$0d,$3e,$e4,$11,$fe,$43,$e4,$11,$fe,$43,$ec,$00
battle_piano__pulse2_measure2:
    .BYT  $f8,$11,$fe,$43,$e4,$11,$fe,$3e,$ed,$11,$ff,$3e,$ed,$11,$ff,$00
battle_piano__pulse2_measure3:
    .BYT  $3e,$e4,$11,$fe,$43,$e4,$11,$fe,$43,$ec,$00
battle_piano__pulse2_measure4:
    .BYT  $f8,$11,$fe,$43,$e4,$11,$fe,$43,$da,$11,$fe,$00
battle_piano__pulse2_measure5:
    .BYT  $3c,$e4,$11,$fe,$41,$e4,$11,$fe,$41,$ec,$00
battle_piano__pulse2_measure6:
    .BYT  $f8,$11,$fe,$41,$da,$11,$ea,$3c,$f6,$00
battle_piano__pulse2_measure7:
    .BYT  $f7,$11,$ff,$3c,$e4,$11,$fe,$45,$e4,$11,$fe,$45,$f6,$00
battle_piano__pulse2_measure8:
    .BYT  $f7,$11,$ff,$45,$e4,$11,$fe,$41,$e4,$11,$fe,$41,$f7,$11,$ff,$00
battle_piano__pulse2_measure9:
    .BYT  $3a,$da,$11,$ea,$3f,$ed,$11,$ff,$00
battle_piano__pulse2_measure10:
    .BYT  $3f,$e4,$11,$fe,$3f,$e4,$11,$fe,$43,$ed,$11,$ff,$00
battle_piano__pulse2_measure11:
    .BYT  $3f,$da,$11,$ea,$3f,$ed,$11,$ff,$00
battle_piano__pulse2_measure12:
    .BYT  $44,$e4,$11,$fe,$44,$e4,$11,$fe,$48,$ed,$11,$ff,$00
battle_piano__pulse2_measure13:
    .BYT  $45,$e4,$11,$fe,$42,$da,$11,$f4,$00
battle_piano__pulse2_measure14:
    .BYT  $ec,$45,$e4,$11,$fe,$48,$e4,$11,$fe,$00
battle_piano__pulse2_measure15:
    .BYT  $ec,$4c,$e4,$11,$fe,$4c,$e4,$11,$fe,$00
battle_piano__pulse2_measure16:
    .BYT  $41,$da,$11,$ea,$43,$ed,$11,$ff,$00
battle_piano__pulse2_measure17:
    .BYT  $45,$e4,$11,$fe,$46,$e4,$11,$fe,$48,$ed,$11,$ff,$00
battle_piano__pulse2_measure18:
    .BYT  $42,$ed,$11,$ff,$42,$f7,$11,$ff,$42,$ed,$11,$ff,$42,$f7,$11,$ff,$42,$f7,$11,$ff,$42,$f7,$11,$ff,$00
battle_piano__pulse2_measure19:
    .BYT  $48,$f7,$11,$ff,$48,$ed,$11,$ff,$48,$ed,$11,$ff,$48,$ed,$11,$ff,$48,$f7,$11,$ff,$00
battle_piano__pulse2_measure20:
    .BYT  $42,$da,$11,$d6,$00
battle_piano__pulse1_data:
    .WORD battle_piano__pulse1_sequence
    .WORD battle_piano__pulse1_measure1
    .WORD battle_piano__pulse1_measure2
    .WORD battle_piano__pulse1_measure3
    .WORD battle_piano__pulse1_measure4
    .WORD battle_piano__pulse1_measure5
    .WORD battle_piano__pulse1_measure6
    .WORD battle_piano__pulse1_measure7
    .WORD battle_piano__pulse1_measure8
    .WORD battle_piano__pulse1_measure9
    .WORD battle_piano__pulse1_measure10
    .WORD battle_piano__pulse1_measure11
    .WORD battle_piano__pulse1_measure12
    .WORD battle_piano__pulse1_measure13
    .WORD battle_piano__pulse1_measure14
    .WORD battle_piano__pulse1_measure15
    .WORD battle_piano__pulse1_measure16
    .WORD battle_piano__pulse1_measure17
    .WORD battle_piano__pulse1_measure18
    .WORD battle_piano__pulse1_measure19
battle_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0d,$0f,$09,$0a,$10,$0c,$11,$11,$12,$13,$80,$00
battle_piano__pulse1_measure1:
    .BYT  $20,$30,$0d,$43,$e4,$11,$fe,$4a,$e4,$11,$fe,$48,$ec,$00
battle_piano__pulse1_measure2:
    .BYT  $f8,$11,$fe,$46,$e4,$11,$fe,$45,$ed,$11,$ff,$41,$ed,$11,$ff,$00
battle_piano__pulse1_measure3:
    .BYT  $43,$e4,$11,$fe,$4d,$e4,$11,$fe,$4c,$ec,$00
battle_piano__pulse1_measure4:
    .BYT  $f8,$11,$fe,$48,$e4,$11,$fe,$4a,$da,$11,$fe,$00
battle_piano__pulse1_measure5:
    .BYT  $41,$e4,$11,$fe,$48,$e4,$11,$fe,$46,$ec,$00
battle_piano__pulse1_measure6:
    .BYT  $f8,$11,$fe,$45,$da,$11,$f4,$43,$ed,$11,$ff,$00
battle_piano__pulse1_measure7:
    .BYT  $41,$e4,$11,$fe,$4b,$e4,$11,$fe,$4a,$ed,$11,$ff,$00
battle_piano__pulse1_measure8:
    .BYT  $48,$e4,$11,$fe,$46,$e4,$11,$fe,$45,$ed,$11,$ff,$00
battle_piano__pulse1_measure9:
    .BYT  $3f,$da,$11,$ea,$41,$ed,$11,$ff,$00
battle_piano__pulse1_measure10:
    .BYT  $43,$e4,$11,$fe,$45,$e4,$11,$fe,$46,$ed,$11,$ff,$00
battle_piano__pulse1_measure11:
    .BYT  $44,$da,$11,$ea,$46,$ed,$11,$ff,$00
battle_piano__pulse1_measure12:
    .BYT  $48,$e4,$11,$fe,$4a,$e4,$11,$fe,$4b,$ed,$11,$ff,$00
battle_piano__pulse1_measure13:
    .BYT  $4a,$e4,$11,$fe,$45,$da,$11,$f4,$00
battle_piano__pulse1_measure14:
    .BYT  $ec,$48,$e4,$11,$fe,$4b,$e4,$11,$fe,$00
battle_piano__pulse1_measure15:
    .BYT  $ec,$4d,$e4,$11,$fe,$4d,$e4,$11,$fe,$00
battle_piano__pulse1_measure16:
    .BYT  $45,$da,$11,$ea,$46,$ed,$11,$ff,$00
battle_piano__pulse1_measure17:
    .BYT  $4a,$ed,$11,$ff,$48,$f7,$11,$ff,$4a,$ed,$11,$ff,$48,$f7,$11,$ff,$4a,$f7,$11,$ff,$48,$f7,$11,$ff,$00
battle_piano__pulse1_measure18:
    .BYT  $4d,$f7,$11,$ff,$4d,$ed,$11,$ff,$4d,$ed,$11,$ff,$4d,$ed,$11,$ff,$4d,$f7,$11,$ff,$00
battle_piano__pulse1_measure19:
    .BYT  $4a,$da,$11,$d6,$00
battle_bass_guitar__triangle_data:
    .WORD battle_bass_guitar__triangle_sequence
    .WORD battle_bass_guitar__triangle_measure1
    .WORD battle_bass_guitar__triangle_measure2
    .WORD battle_bass_guitar__triangle_measure3
    .WORD battle_bass_guitar__triangle_measure4
    .WORD battle_bass_guitar__triangle_measure5
    .WORD battle_bass_guitar__triangle_measure6
    .WORD battle_bass_guitar__triangle_measure7
    .WORD battle_bass_guitar__triangle_measure8
    .WORD battle_bass_guitar__triangle_measure9
battle_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$02,$02,$03,$03,$03,$03,$04,$04,$05,$05,$06,$06,$06,$06,$04,$04,$07,$07,$06,$06,$08,$09,$80,$00
battle_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$37,$ec,$3e,$f6,$37,$ec,$3e,$f6,$37,$f6,$3e,$f6,$00
battle_bass_guitar__triangle_measure2:
    .BYT  $37,$ec,$3e,$f6,$37,$ec,$3e,$f6,$37,$f6,$3e,$f6,$00
battle_bass_guitar__triangle_measure3:
    .BYT  $35,$ec,$3c,$f6,$35,$ec,$3c,$f6,$35,$f6,$3c,$f6,$00
battle_bass_guitar__triangle_measure4:
    .BYT  $33,$ec,$37,$f6,$3a,$e2,$3f,$ec,$00
battle_bass_guitar__triangle_measure5:
    .BYT  $38,$ec,$30,$f6,$33,$e2,$38,$ec,$00
battle_bass_guitar__triangle_measure6:
    .BYT  $32,$ec,$36,$f6,$39,$e2,$3c,$ec,$00
battle_bass_guitar__triangle_measure7:
    .BYT  $35,$ec,$39,$f6,$3c,$e2,$41,$ec,$00
battle_bass_guitar__triangle_measure8:
    .BYT  $32,$f6,$32,$ec,$32,$ec,$32,$ec,$32,$f6,$00
battle_bass_guitar__triangle_measure9:
    .BYT  $32,$ec,$32,$ec,$36,$f6,$39,$e2,$00
.export _boss
_boss:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD boss_piano__pulse2_data
    .WORD boss_piano__pulse1_data
    .WORD boss_bass_guitar__triangle_data
boss_piano__pulse2_data:
    .WORD boss_piano__pulse2_sequence
    .WORD boss_piano__pulse2_measure1
    .WORD boss_piano__pulse2_measure2
    .WORD boss_piano__pulse2_measure3
    .WORD boss_piano__pulse2_measure4
    .WORD boss_piano__pulse2_measure5
boss_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$02,$04,$05,$04,$05,$80,$00
boss_piano__pulse2_measure1:
    .BYT  $20,$30,$0d,$3c,$e4,$11,$fe,$3f,$e4,$11,$fe,$3e,$ed,$11,$ff,$00
boss_piano__pulse2_measure2:
    .BYT  $41,$e4,$11,$fe,$3f,$e4,$11,$fe,$3e,$ed,$11,$ff,$00
boss_piano__pulse2_measure3:
    .BYT  $3c,$e4,$11,$fe,$3f,$e4,$11,$fe,$3e,$ed,$11,$ff,$00
boss_piano__pulse2_measure4:
    .BYT  $3a,$e4,$11,$fe,$3d,$e4,$11,$fe,$3c,$ed,$11,$ff,$00
boss_piano__pulse2_measure5:
    .BYT  $3f,$e4,$11,$fe,$3d,$e4,$11,$fe,$3c,$ed,$11,$ff,$00
boss_piano__pulse1_data:
    .WORD boss_piano__pulse1_sequence
    .WORD boss_piano__pulse1_measure1
    .WORD boss_piano__pulse1_measure2
    .WORD boss_piano__pulse1_measure3
    .WORD boss_piano__pulse1_measure4
    .WORD boss_piano__pulse1_measure5
boss_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$02,$04,$05,$04,$05,$80,$00
boss_piano__pulse1_measure1:
    .BYT  $20,$30,$0d,$41,$e4,$11,$fe,$44,$e4,$11,$fe,$43,$ed,$11,$ff,$00
boss_piano__pulse1_measure2:
    .BYT  $46,$e4,$11,$fe,$44,$e4,$11,$fe,$43,$ed,$11,$ff,$00
boss_piano__pulse1_measure3:
    .BYT  $41,$e4,$11,$fe,$44,$e4,$11,$fe,$43,$ed,$11,$ff,$00
boss_piano__pulse1_measure4:
    .BYT  $3f,$e4,$11,$fe,$42,$e4,$11,$fe,$41,$ed,$11,$ff,$00
boss_piano__pulse1_measure5:
    .BYT  $44,$e4,$11,$fe,$42,$e4,$11,$fe,$41,$ed,$11,$ff,$00
boss_bass_guitar__triangle_data:
    .WORD boss_bass_guitar__triangle_sequence
    .WORD boss_bass_guitar__triangle_measure1
    .WORD boss_bass_guitar__triangle_measure2
    .WORD boss_bass_guitar__triangle_measure3
boss_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$02,$02,$03,$03,$03,$03,$80,$00
boss_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$35,$ec,$3c,$f6,$35,$ec,$3c,$f6,$35,$f6,$3c,$f6,$00
boss_bass_guitar__triangle_measure2:
    .BYT  $35,$ec,$3c,$f6,$35,$ec,$3c,$f6,$35,$f6,$3c,$f6,$00
boss_bass_guitar__triangle_measure3:
    .BYT  $33,$ec,$3a,$f6,$33,$ec,$3a,$f6,$33,$f6,$3a,$f6,$00
.export _cave_item_fanfare
_cave_item_fanfare:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD cave_item_fanfare_piano__pulse2_data
    .WORD cave_item_fanfare_piano__pulse1_data
    .WORD cave_item_fanfare_bass_guitar__triangle_data
cave_item_fanfare_piano__pulse2_data:
    .WORD cave_item_fanfare_piano__pulse2_sequence
    .WORD cave_item_fanfare_piano__pulse2_measure1
    .WORD cave_item_fanfare_piano__pulse2_measure2
cave_item_fanfare_piano__pulse2_sequence:
    .BYT  $01,$02,$00
cave_item_fanfare_piano__pulse2_measure1:
    .BYT  $20,$38,$0d,$46,$f5,$11,$ff,$41,$f5,$11,$ff,$3e,$f5,$11,$ff,$46,$f5,$11,$ff,$43,$f5,$11,$ff,$3f,$f5,$11,$ff,$4a,$e8,$00
cave_item_fanfare_piano__pulse2_measure2:
    .BYT  $f6,$11,$ab,$12,$14,$ff,$00
cave_item_fanfare_piano__pulse1_data:
    .WORD cave_item_fanfare_piano__pulse1_sequence
    .WORD cave_item_fanfare_piano__pulse1_measure1
    .WORD cave_item_fanfare_piano__pulse1_measure2
cave_item_fanfare_piano__pulse1_sequence:
    .BYT  $01,$02,$00
cave_item_fanfare_piano__pulse1_measure1:
    .BYT  $20,$38,$0d,$4a,$f5,$11,$ff,$46,$f5,$11,$ff,$41,$f5,$11,$ff,$4b,$f5,$11,$ff,$46,$f5,$11,$ff,$43,$f5,$11,$ff,$4d,$e8,$00
cave_item_fanfare_piano__pulse1_measure2:
    .BYT  $f6,$11,$aa,$00
cave_item_fanfare_bass_guitar__triangle_data:
    .WORD cave_item_fanfare_bass_guitar__triangle_sequence
    .WORD cave_item_fanfare_bass_guitar__triangle_measure1
    .WORD cave_item_fanfare_bass_guitar__triangle_measure2
cave_item_fanfare_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$00
cave_item_fanfare_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$41,$f4,$3e,$f4,$3a,$f4,$43,$f4,$3f,$f4,$3a,$f4,$46,$e8,$00
cave_item_fanfare_bass_guitar__triangle_measure2:
    .BYT  $f4,$11,$ac,$00
.export _credits
_credits:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD credits_drumset__noise_data
    .WORD 0
    .WORD credits_piano__pulse2_data
    .WORD credits_piano__pulse1_data
    .WORD credits_bass_guitar__triangle_data
credits_drumset__noise_data:
    .WORD credits_drumset__noise_sequence
    .WORD credits_drumset__noise_measure1
    .WORD credits_drumset__noise_measure2
    .WORD credits_drumset__noise_measure3
    .WORD credits_drumset__noise_measure4
    .WORD credits_drumset__noise_measure5
    .WORD credits_drumset__noise_measure6
    .WORD credits_drumset__noise_measure7
    .WORD credits_drumset__noise_measure8
    .WORD credits_drumset__noise_measure9
    .WORD credits_drumset__noise_measure10
    .WORD credits_drumset__noise_measure11
    .WORD credits_drumset__noise_measure12
    .WORD credits_drumset__noise_measure13
    .WORD credits_drumset__noise_measure14
    .WORD credits_drumset__noise_measure15
    .WORD credits_drumset__noise_measure16
credits_drumset__noise_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$80,$00
credits_drumset__noise_measure1:
    .BYT  $20,$00,$0d,$23,$e4,$23,$f7,$11,$ff,$23,$f7,$23,$f7,$23,$e4,$23,$e4,$11,$ff,$00
credits_drumset__noise_measure2:
    .BYT  $23,$e4,$23,$f7,$23,$f7,$23,$f6,$23,$e4,$23,$e4,$23,$ff,$00
credits_drumset__noise_measure3:
    .BYT  $e5,$23,$f7,$11,$ff,$23,$f7,$23,$f7,$23,$e4,$23,$e4,$11,$ff,$23,$ff,$00
credits_drumset__noise_measure4:
    .BYT  $e5,$23,$f7,$23,$f7,$23,$f6,$23,$e4,$23,$e4,$23,$fe,$00
credits_drumset__noise_measure5:
    .BYT  $e6,$23,$f7,$11,$ff,$23,$f7,$23,$f7,$23,$e4,$23,$e4,$11,$ff,$23,$fe,$00
credits_drumset__noise_measure6:
    .BYT  $e6,$23,$f7,$23,$f7,$23,$f6,$23,$e4,$23,$e4,$23,$fd,$00
credits_drumset__noise_measure7:
    .BYT  $e7,$23,$f7,$11,$ff,$23,$f7,$23,$f7,$23,$e4,$23,$e4,$11,$ff,$23,$fd,$00
credits_drumset__noise_measure8:
    .BYT  $e7,$23,$f7,$23,$f7,$23,$f6,$23,$e4,$23,$e4,$23,$fc,$00
credits_drumset__noise_measure9:
    .BYT  $f6,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$11,$ff,$23,$fc,$00
credits_drumset__noise_measure10:
    .BYT  $f6,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$fb,$00
credits_drumset__noise_measure11:
    .BYT  $f7,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$11,$ff,$23,$fb,$00
credits_drumset__noise_measure12:
    .BYT  $f7,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$fa,$00
credits_drumset__noise_measure13:
    .BYT  $f8,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$11,$ff,$23,$fa,$00
credits_drumset__noise_measure14:
    .BYT  $f8,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f9,$00
credits_drumset__noise_measure15:
    .BYT  $f9,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$11,$ff,$23,$f9,$00
credits_drumset__noise_measure16:
    .BYT  $f9,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$11,$f8,$00
credits_piano__pulse2_data:
    .WORD credits_piano__pulse2_sequence
    .WORD credits_piano__pulse2_measure1
    .WORD credits_piano__pulse2_measure2
    .WORD credits_piano__pulse2_measure3
    .WORD credits_piano__pulse2_measure4
    .WORD credits_piano__pulse2_measure5
    .WORD credits_piano__pulse2_measure6
    .WORD credits_piano__pulse2_measure7
    .WORD credits_piano__pulse2_measure8
    .WORD credits_piano__pulse2_measure9
    .WORD credits_piano__pulse2_measure10
    .WORD credits_piano__pulse2_measure11
    .WORD credits_piano__pulse2_measure12
    .WORD credits_piano__pulse2_measure13
    .WORD credits_piano__pulse2_measure14
    .WORD credits_piano__pulse2_measure15
    .WORD credits_piano__pulse2_measure16
credits_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$80,$00
credits_piano__pulse2_measure1:
    .BYT  $20,$00,$0d,$3c,$cb,$11,$e1,$3c,$e5,$11,$fe,$00
credits_piano__pulse2_measure2:
    .BYT  $3d,$ed,$11,$fe,$3d,$fa,$11,$ff,$3d,$cb,$11,$fd,$3d,$f3,$11,$ff,$3d,$f3,$11,$ff,$3c,$ff,$00
credits_piano__pulse2_measure3:
    .BYT  $cc,$11,$e1,$3c,$e5,$11,$fe,$3d,$ff,$00
credits_piano__pulse2_measure4:
    .BYT  $ee,$11,$fe,$3d,$fa,$11,$ff,$3d,$cb,$11,$fd,$3d,$f3,$11,$ff,$3d,$f3,$11,$ff,$3a,$fe,$00
credits_piano__pulse2_measure5:
    .BYT  $cd,$11,$fd,$3a,$e5,$11,$ff,$3a,$e5,$11,$fe,$3b,$fe,$00
credits_piano__pulse2_measure6:
    .BYT  $e8,$11,$fe,$3b,$e6,$11,$fe,$3b,$e6,$11,$fe,$3b,$e5,$11,$ff,$3a,$fd,$00
credits_piano__pulse2_measure7:
    .BYT  $ce,$11,$fd,$3a,$e5,$11,$ff,$3a,$e5,$11,$fe,$3b,$fd,$00
credits_piano__pulse2_measure8:
    .BYT  $e9,$11,$fe,$3b,$e6,$11,$fe,$3b,$e6,$11,$fe,$3b,$e5,$11,$ff,$38,$fc,$00
credits_piano__pulse2_measure9:
    .BYT  $cf,$11,$fd,$38,$e5,$11,$ff,$38,$e5,$11,$fe,$37,$fc,$00
credits_piano__pulse2_measure10:
    .BYT  $f1,$11,$fe,$40,$fa,$11,$ff,$43,$cb,$11,$fd,$41,$f3,$11,$ff,$43,$f3,$11,$ff,$41,$fb,$00
credits_piano__pulse2_measure11:
    .BYT  $ea,$11,$ff,$41,$e5,$11,$ff,$41,$e5,$11,$ff,$41,$e5,$11,$fe,$3c,$fb,$00
credits_piano__pulse2_measure12:
    .BYT  $f8,$11,$ff,$37,$fa,$11,$ff,$37,$fa,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$38,$fa,$00
credits_piano__pulse2_measure13:
    .BYT  $d1,$11,$fd,$38,$e5,$11,$ff,$38,$e5,$11,$fe,$37,$fa,$00
credits_piano__pulse2_measure14:
    .BYT  $f3,$11,$fe,$40,$fa,$11,$ff,$43,$cb,$11,$fd,$41,$f3,$11,$ff,$43,$f3,$11,$ff,$41,$f9,$00
credits_piano__pulse2_measure15:
    .BYT  $ec,$11,$ff,$41,$e5,$11,$ff,$41,$e5,$11,$ff,$41,$e5,$11,$fe,$3c,$f9,$00
credits_piano__pulse2_measure16:
    .BYT  $fa,$11,$ff,$37,$fa,$11,$ff,$37,$fa,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$f7,$00
credits_piano__pulse1_data:
    .WORD credits_piano__pulse1_sequence
    .WORD credits_piano__pulse1_measure1
    .WORD credits_piano__pulse1_measure2
    .WORD credits_piano__pulse1_measure3
    .WORD credits_piano__pulse1_measure4
    .WORD credits_piano__pulse1_measure5
    .WORD credits_piano__pulse1_measure6
    .WORD credits_piano__pulse1_measure7
    .WORD credits_piano__pulse1_measure8
    .WORD credits_piano__pulse1_measure9
    .WORD credits_piano__pulse1_measure10
    .WORD credits_piano__pulse1_measure11
    .WORD credits_piano__pulse1_measure12
    .WORD credits_piano__pulse1_measure13
    .WORD credits_piano__pulse1_measure14
    .WORD credits_piano__pulse1_measure15
    .WORD credits_piano__pulse1_measure16
credits_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$80,$00
credits_piano__pulse1_measure1:
    .BYT  $20,$00,$0d,$45,$cb,$11,$e1,$45,$e5,$11,$fe,$00
credits_piano__pulse1_measure2:
    .BYT  $46,$ed,$11,$fe,$46,$fa,$11,$ff,$46,$cb,$11,$fd,$48,$f3,$11,$ff,$46,$f3,$11,$ff,$45,$ff,$00
credits_piano__pulse1_measure3:
    .BYT  $cc,$11,$e1,$45,$e5,$11,$fe,$46,$ff,$00
credits_piano__pulse1_measure4:
    .BYT  $ee,$11,$fe,$46,$fa,$11,$ff,$46,$cb,$11,$fd,$48,$f3,$11,$ff,$46,$f3,$11,$ff,$43,$fe,$00
credits_piano__pulse1_measure5:
    .BYT  $cd,$11,$fd,$44,$e5,$11,$ff,$46,$e5,$11,$fe,$44,$fe,$00
credits_piano__pulse1_measure6:
    .BYT  $e8,$11,$fe,$43,$e6,$11,$fe,$41,$e6,$11,$fe,$3f,$e5,$11,$ff,$43,$fd,$00
credits_piano__pulse1_measure7:
    .BYT  $ce,$11,$fd,$44,$e5,$11,$ff,$46,$e5,$11,$fe,$44,$fd,$00
credits_piano__pulse1_measure8:
    .BYT  $e9,$11,$fe,$43,$e6,$11,$fe,$41,$e6,$11,$fe,$3f,$e5,$11,$ff,$41,$fc,$00
credits_piano__pulse1_measure9:
    .BYT  $cf,$11,$fd,$40,$e5,$11,$ff,$41,$e5,$11,$fe,$40,$fc,$00
credits_piano__pulse1_measure10:
    .BYT  $f1,$11,$fe,$43,$fa,$11,$ff,$48,$cb,$11,$fd,$46,$f3,$11,$ff,$48,$f3,$11,$ff,$49,$fb,$00
credits_piano__pulse1_measure11:
    .BYT  $ea,$11,$ff,$48,$e5,$11,$ff,$46,$e5,$11,$ff,$44,$e5,$11,$fe,$43,$fb,$00
credits_piano__pulse1_measure12:
    .BYT  $f8,$11,$ff,$3c,$fa,$11,$ff,$3c,$fa,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$41,$fa,$00
credits_piano__pulse1_measure13:
    .BYT  $d1,$11,$fd,$40,$e5,$11,$ff,$41,$e5,$11,$fe,$40,$fa,$00
credits_piano__pulse1_measure14:
    .BYT  $f3,$11,$fe,$43,$fa,$11,$ff,$48,$cb,$11,$fd,$46,$f3,$11,$ff,$48,$f3,$11,$ff,$49,$f9,$00
credits_piano__pulse1_measure15:
    .BYT  $ec,$11,$ff,$48,$e5,$11,$ff,$46,$e5,$11,$ff,$44,$e5,$11,$fe,$43,$f9,$00
credits_piano__pulse1_measure16:
    .BYT  $fa,$11,$ff,$3c,$fa,$11,$ff,$3c,$fa,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$f7,$00
credits_bass_guitar__triangle_data:
    .WORD credits_bass_guitar__triangle_sequence
    .WORD credits_bass_guitar__triangle_measure1
    .WORD credits_bass_guitar__triangle_measure2
    .WORD credits_bass_guitar__triangle_measure3
    .WORD credits_bass_guitar__triangle_measure4
    .WORD credits_bass_guitar__triangle_measure5
    .WORD credits_bass_guitar__triangle_measure6
    .WORD credits_bass_guitar__triangle_measure7
    .WORD credits_bass_guitar__triangle_measure8
    .WORD credits_bass_guitar__triangle_measure9
    .WORD credits_bass_guitar__triangle_measure10
    .WORD credits_bass_guitar__triangle_measure11
    .WORD credits_bass_guitar__triangle_measure12
    .WORD credits_bass_guitar__triangle_measure13
    .WORD credits_bass_guitar__triangle_measure14
    .WORD credits_bass_guitar__triangle_measure15
    .WORD credits_bass_guitar__triangle_measure16
credits_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$80,$00
credits_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$35,$e4,$35,$f7,$11,$ff,$35,$f7,$35,$f7,$35,$e4,$35,$e4,$11,$ff,$00
credits_bass_guitar__triangle_measure2:
    .BYT  $35,$e4,$35,$f7,$35,$f7,$35,$f6,$35,$e4,$35,$e4,$35,$ff,$00
credits_bass_guitar__triangle_measure3:
    .BYT  $e5,$35,$f7,$11,$ff,$35,$f7,$35,$f7,$35,$e4,$35,$e4,$11,$ff,$35,$ff,$00
credits_bass_guitar__triangle_measure4:
    .BYT  $e5,$35,$f7,$35,$f7,$35,$f6,$35,$e4,$35,$e4,$33,$fe,$00
credits_bass_guitar__triangle_measure5:
    .BYT  $e6,$33,$f7,$11,$ff,$33,$f7,$33,$f7,$33,$e4,$33,$e4,$11,$ff,$33,$fe,$00
credits_bass_guitar__triangle_measure6:
    .BYT  $e6,$33,$f7,$33,$f7,$33,$f6,$33,$e4,$33,$e4,$33,$fd,$00
credits_bass_guitar__triangle_measure7:
    .BYT  $e7,$33,$f7,$11,$ff,$33,$f7,$33,$f7,$33,$e4,$33,$e4,$11,$ff,$33,$fd,$00
credits_bass_guitar__triangle_measure8:
    .BYT  $e7,$33,$f7,$33,$f7,$33,$f6,$33,$e4,$33,$e4,$31,$fc,$00
credits_bass_guitar__triangle_measure9:
    .BYT  $f6,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$11,$ff,$30,$fc,$00
credits_bass_guitar__triangle_measure10:
    .BYT  $f6,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$31,$fb,$00
credits_bass_guitar__triangle_measure11:
    .BYT  $f7,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$11,$ff,$30,$fb,$00
credits_bass_guitar__triangle_measure12:
    .BYT  $f7,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$31,$fa,$00
credits_bass_guitar__triangle_measure13:
    .BYT  $f8,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$11,$ff,$30,$fa,$00
credits_bass_guitar__triangle_measure14:
    .BYT  $f8,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$31,$f9,$00
credits_bass_guitar__triangle_measure15:
    .BYT  $f9,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$11,$ff,$30,$f9,$00
credits_bass_guitar__triangle_measure16:
    .BYT  $f9,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$11,$f8,$00
.export _crystal_fanfare
_crystal_fanfare:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD crystal_fanfare_piano__pulse2_data
    .WORD crystal_fanfare_piano__pulse1_data
    .WORD crystal_fanfare_bass_guitar__triangle_data
crystal_fanfare_piano__pulse2_data:
    .WORD crystal_fanfare_piano__pulse2_sequence
    .WORD crystal_fanfare_piano__pulse2_measure1
    .WORD crystal_fanfare_piano__pulse2_measure2
    .WORD crystal_fanfare_piano__pulse2_measure3
crystal_fanfare_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$00
crystal_fanfare_piano__pulse2_measure1:
    .BYT  $20,$00,$0d,$40,$de,$11,$fe,$3e,$fa,$40,$fa,$3e,$e9,$11,$ff,$41,$ef,$11,$ff,$41,$fa,$00
crystal_fanfare_piano__pulse2_measure2:
    .BYT  $40,$de,$11,$fe,$3e,$fa,$40,$fa,$3e,$e9,$11,$ff,$41,$ef,$11,$ff,$41,$fa,$00
crystal_fanfare_piano__pulse2_measure3:
    .BYT  $43,$e9,$11,$ff,$37,$fa,$37,$fa,$37,$fa,$37,$fa,$37,$d2,$11,$ff,$12,$ff,$00
crystal_fanfare_piano__pulse1_data:
    .WORD crystal_fanfare_piano__pulse1_sequence
    .WORD crystal_fanfare_piano__pulse1_measure1
    .WORD crystal_fanfare_piano__pulse1_measure2
    .WORD crystal_fanfare_piano__pulse1_measure3
crystal_fanfare_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$00
crystal_fanfare_piano__pulse1_measure1:
    .BYT  $20,$00,$0d,$48,$de,$11,$fe,$46,$fa,$48,$fa,$46,$e9,$11,$ff,$4a,$ef,$11,$ff,$4a,$fa,$00
crystal_fanfare_piano__pulse1_measure2:
    .BYT  $48,$de,$11,$fe,$46,$fa,$48,$fa,$46,$e9,$11,$ff,$4a,$ef,$11,$ff,$4a,$fa,$00
crystal_fanfare_piano__pulse1_measure3:
    .BYT  $48,$e9,$11,$ff,$3c,$fa,$3c,$fa,$3c,$fa,$3c,$fa,$3c,$d2,$11,$fe,$00
crystal_fanfare_bass_guitar__triangle_data:
    .WORD crystal_fanfare_bass_guitar__triangle_sequence
    .WORD crystal_fanfare_bass_guitar__triangle_measure1
    .WORD crystal_fanfare_bass_guitar__triangle_measure2
    .WORD crystal_fanfare_bass_guitar__triangle_measure3
crystal_fanfare_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$00
crystal_fanfare_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$30,$f4,$37,$f4,$34,$f4,$35,$fa,$37,$fa,$35,$f4,$32,$f4,$3a,$ee,$3a,$fa,$00
crystal_fanfare_bass_guitar__triangle_measure2:
    .BYT  $30,$f4,$37,$f4,$34,$f4,$35,$fa,$37,$fa,$35,$f4,$32,$f4,$3a,$ee,$3a,$fa,$00
crystal_fanfare_bass_guitar__triangle_measure3:
    .BYT  $3c,$e8,$30,$fa,$30,$fa,$30,$fa,$30,$fa,$30,$d0,$00
.export _final_boss
_final_boss:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD final_boss_piano__pulse2_data
    .WORD final_boss_piano__pulse1_data
    .WORD final_boss_bass_guitar__triangle_data
final_boss_piano__pulse2_data:
    .WORD final_boss_piano__pulse2_sequence
    .WORD final_boss_piano__pulse2_measure1
    .WORD final_boss_piano__pulse2_measure2
    .WORD final_boss_piano__pulse2_measure3
    .WORD final_boss_piano__pulse2_measure4
    .WORD final_boss_piano__pulse2_measure5
    .WORD final_boss_piano__pulse2_measure6
    .WORD final_boss_piano__pulse2_measure7
final_boss_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$06,$07,$80,$00
final_boss_piano__pulse2_measure1:
    .BYT  $20,$30,$0d,$3c,$e4,$11,$fe,$3f,$e4,$11,$fe,$3e,$ec,$00
final_boss_piano__pulse2_measure2:
    .BYT  $f8,$11,$fe,$3d,$e4,$11,$fe,$3c,$da,$11,$fe,$00
final_boss_piano__pulse2_measure3:
    .BYT  $3f,$e4,$11,$fe,$42,$e4,$11,$fe,$41,$ec,$00
final_boss_piano__pulse2_measure4:
    .BYT  $f8,$11,$fe,$40,$e4,$11,$fe,$3f,$da,$11,$fe,$00
final_boss_piano__pulse2_measure5:
    .BYT  $3c,$e4,$11,$fe,$3f,$e4,$11,$fe,$3e,$ec,$00
final_boss_piano__pulse2_measure6:
    .BYT  $3e,$e4,$11,$fe,$43,$e4,$11,$fe,$43,$ec,$00
final_boss_piano__pulse2_measure7:
    .BYT  $f8,$11,$fe,$43,$e4,$11,$fe,$43,$da,$11,$fe,$00
final_boss_piano__pulse1_data:
    .WORD final_boss_piano__pulse1_sequence
    .WORD final_boss_piano__pulse1_measure1
    .WORD final_boss_piano__pulse1_measure2
    .WORD final_boss_piano__pulse1_measure3
    .WORD final_boss_piano__pulse1_measure4
    .WORD final_boss_piano__pulse1_measure5
    .WORD final_boss_piano__pulse1_measure6
    .WORD final_boss_piano__pulse1_measure7
final_boss_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$06,$07,$80,$00
final_boss_piano__pulse1_measure1:
    .BYT  $20,$30,$0d,$41,$e4,$11,$fe,$44,$e4,$11,$fe,$43,$ec,$00
final_boss_piano__pulse1_measure2:
    .BYT  $f8,$11,$fe,$42,$e4,$11,$fe,$41,$da,$11,$fe,$00
final_boss_piano__pulse1_measure3:
    .BYT  $44,$e4,$11,$fe,$47,$e4,$11,$fe,$46,$ec,$00
final_boss_piano__pulse1_measure4:
    .BYT  $f8,$11,$fe,$45,$e4,$11,$fe,$44,$da,$11,$fe,$00
final_boss_piano__pulse1_measure5:
    .BYT  $41,$e4,$11,$fe,$44,$e4,$11,$fe,$43,$ec,$00
final_boss_piano__pulse1_measure6:
    .BYT  $43,$e4,$11,$fe,$49,$e4,$11,$fe,$49,$ec,$00
final_boss_piano__pulse1_measure7:
    .BYT  $f8,$11,$fe,$49,$e4,$11,$fe,$49,$da,$11,$fe,$00
final_boss_bass_guitar__triangle_data:
    .WORD final_boss_bass_guitar__triangle_sequence
    .WORD final_boss_bass_guitar__triangle_measure1
    .WORD final_boss_bass_guitar__triangle_measure2
    .WORD final_boss_bass_guitar__triangle_measure3
    .WORD final_boss_bass_guitar__triangle_measure4
    .WORD final_boss_bass_guitar__triangle_measure5
final_boss_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$03,$02,$02,$03,$03,$04,$04,$04,$04,$80,$00
final_boss_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$35,$ec,$3c,$f6,$35,$ec,$3c,$f6,$35,$f6,$3c,$f6,$00
final_boss_bass_guitar__triangle_measure2:
    .BYT  $35,$ec,$3c,$f6,$35,$ec,$3c,$f6,$35,$f6,$3c,$f6,$00
final_boss_bass_guitar__triangle_measure3:
    .BYT  $38,$ec,$3f,$f6,$38,$ec,$3f,$f6,$38,$f6,$3f,$f6,$00
final_boss_bass_guitar__triangle_measure4:
    .BYT  $37,$ec,$3d,$f6,$37,$ec,$3d,$f6,$37,$f6,$3d,$f6,$00
final_boss_bass_guitar__triangle_measure5:
    .BYT  $11,$b0,$00
.export _gp
_gp:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD gp_drumset__noise_data
    .WORD 0
    .WORD gp_piano__pulse2_data
    .WORD gp_piano__pulse1_data
    .WORD gp_bass_guitar__triangle_data
gp_drumset__noise_data:
    .WORD gp_drumset__noise_sequence
    .WORD gp_drumset__noise_measure1
    .WORD gp_drumset__noise_measure2
    .WORD gp_drumset__noise_measure3
gp_drumset__noise_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$03,$80,$00
gp_drumset__noise_measure1:
    .BYT  $20,$00,$0d,$23,$e8,$11,$f4,$23,$f4,$11,$e8,$23,$e8,$00
gp_drumset__noise_measure2:
    .BYT  $23,$e8,$11,$f4,$23,$f4,$11,$e8,$23,$e8,$00
gp_drumset__noise_measure3:
    .BYT  $11,$a0,$00
gp_piano__pulse2_data:
    .WORD gp_piano__pulse2_sequence
    .WORD gp_piano__pulse2_measure1
    .WORD gp_piano__pulse2_measure2
    .WORD gp_piano__pulse2_measure3
    .WORD gp_piano__pulse2_measure4
    .WORD gp_piano__pulse2_measure5
gp_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$02,$03,$02,$03,$02,$04,$04,$04,$04,$04,$04,$04,$04,$03,$02,$03,$05,$80,$00
gp_piano__pulse2_measure1:
    .BYT  $20,$40,$0d,$39,$f5,$11,$ff,$3c,$f5,$11,$ff,$40,$f5,$11,$ff,$45,$f5,$11,$ff,$39,$f5,$11,$ff,$3c,$f5,$11,$ff,$40,$f5,$11,$ff,$44,$f5,$11,$ff,$00
gp_piano__pulse2_measure2:
    .BYT  $39,$f5,$11,$ff,$3c,$f5,$11,$ff,$40,$f5,$11,$ff,$43,$f5,$11,$ff,$39,$f5,$11,$ff,$3c,$f5,$11,$ff,$40,$f5,$11,$ff,$42,$f5,$11,$ff,$00
gp_piano__pulse2_measure3:
    .BYT  $39,$f5,$11,$ff,$3c,$f5,$11,$ff,$40,$f5,$11,$ff,$45,$f5,$11,$ff,$39,$f5,$11,$ff,$3c,$f5,$11,$ff,$40,$f5,$11,$ff,$44,$f5,$11,$ff,$00
gp_piano__pulse2_measure4:
    .BYT  $38,$f5,$11,$ff,$3c,$f5,$11,$ff,$3e,$f5,$11,$ff,$41,$f5,$11,$ff,$38,$f5,$11,$ff,$3c,$f5,$11,$ff,$3e,$f5,$11,$ff,$41,$f5,$11,$ff,$00
gp_piano__pulse2_measure5:
    .BYT  $3b,$f5,$11,$ff,$3c,$e9,$11,$ff,$3e,$e9,$11,$ff,$40,$de,$11,$fe,$00
gp_piano__pulse1_data:
    .WORD gp_piano__pulse1_sequence
    .WORD gp_piano__pulse1_measure1
    .WORD gp_piano__pulse1_measure2
    .WORD gp_piano__pulse1_measure3
    .WORD gp_piano__pulse1_measure4
    .WORD gp_piano__pulse1_measure5
    .WORD gp_piano__pulse1_measure6
    .WORD gp_piano__pulse1_measure7
    .WORD gp_piano__pulse1_measure8
    .WORD gp_piano__pulse1_measure9
    .WORD gp_piano__pulse1_measure10
    .WORD gp_piano__pulse1_measure11
    .WORD gp_piano__pulse1_measure12
gp_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$08,$09,$06,$07,$08,$09,$0a,$0b,$0a,$0c,$80,$00
gp_piano__pulse1_measure1:
    .BYT  $20,$40,$e8,$0d,$45,$e9,$11,$ff,$47,$f5,$11,$ff,$48,$f5,$11,$ff,$4a,$f5,$11,$ff,$4c,$f5,$11,$ff,$00
gp_piano__pulse1_measure2:
    .BYT  $53,$de,$11,$fe,$51,$de,$11,$fe,$4c,$e9,$11,$ff,$00
gp_piano__pulse1_measure3:
    .BYT  $4f,$de,$11,$fe,$4e,$de,$11,$fe,$4a,$e9,$11,$ff,$00
gp_piano__pulse1_measure4:
    .BYT  $4d,$de,$11,$fe,$4c,$de,$11,$fe,$48,$e9,$11,$ff,$00
gp_piano__pulse1_measure5:
    .BYT  $e8,$45,$e9,$11,$ff,$47,$f5,$11,$ff,$48,$f5,$11,$ff,$4a,$f5,$11,$ff,$4c,$f5,$11,$ff,$00
gp_piano__pulse1_measure6:
    .BYT  $e8,$44,$e9,$11,$ff,$48,$f5,$11,$ff,$4a,$e9,$11,$ff,$4d,$f4,$00
gp_piano__pulse1_measure7:
    .BYT  $de,$11,$fe,$4b,$e9,$11,$ff,$4d,$de,$11,$fe,$00
gp_piano__pulse1_measure8:
    .BYT  $4f,$f5,$11,$ff,$4d,$f5,$11,$ff,$4b,$f5,$11,$ff,$4d,$e9,$11,$ff,$4b,$f5,$11,$ff,$4a,$e9,$11,$ff,$00
gp_piano__pulse1_measure9:
    .BYT  $4b,$f5,$11,$ff,$4a,$f5,$11,$ff,$48,$f5,$11,$ff,$4a,$e9,$11,$ff,$48,$f5,$11,$ff,$46,$e9,$11,$ff,$00
gp_piano__pulse1_measure10:
    .BYT  $48,$f5,$11,$ff,$45,$e9,$11,$ff,$4c,$d2,$11,$f2,$00
gp_piano__pulse1_measure11:
    .BYT  $48,$f5,$11,$ff,$45,$e9,$11,$ff,$4f,$e9,$11,$ff,$4e,$de,$11,$fe,$00
gp_piano__pulse1_measure12:
    .BYT  $40,$f5,$11,$ff,$41,$e9,$11,$ff,$44,$e9,$11,$ff,$47,$de,$11,$fe,$00
gp_bass_guitar__triangle_data:
    .WORD gp_bass_guitar__triangle_sequence
    .WORD gp_bass_guitar__triangle_measure1
    .WORD gp_bass_guitar__triangle_measure2
    .WORD gp_bass_guitar__triangle_measure3
    .WORD gp_bass_guitar__triangle_measure4
    .WORD gp_bass_guitar__triangle_measure5
gp_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03,$03,$03,$03,$03,$02,$02,$02,$04,$80,$00
gp_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$39,$e8,$34,$f4,$39,$e8,$3c,$e8,$34,$f4,$00
gp_bass_guitar__triangle_measure2:
    .BYT  $39,$e8,$34,$f4,$39,$e8,$3c,$e8,$34,$f4,$00
gp_bass_guitar__triangle_measure3:
    .BYT  $35,$e8,$30,$f4,$35,$e8,$38,$e8,$30,$f4,$00
gp_bass_guitar__triangle_measure4:
    .BYT  $34,$f4,$35,$e8,$38,$e8,$3b,$dc,$00
gp_bass_guitar__triangle_measure5:
    .BYT  $11,$a0,$00
.export _house
_house:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD house_piano__pulse2_data
    .WORD house_piano__pulse1_data
    .WORD house_bass_guitar__triangle_data
house_piano__pulse2_data:
    .WORD house_piano__pulse2_sequence
    .WORD house_piano__pulse2_measure1
    .WORD house_piano__pulse2_measure2
    .WORD house_piano__pulse2_measure3
    .WORD house_piano__pulse2_measure4
house_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$80,$00
house_piano__pulse2_measure1:
    .BYT  $20,$48,$0d,$37,$f3,$11,$ff,$3b,$f3,$11,$ff,$3e,$f3,$11,$ff,$37,$f3,$11,$ff,$3b,$f2,$3e,$f2,$37,$f2,$3b,$f2,$11,$ff,$00
house_piano__pulse2_measure2:
    .BYT  $39,$f3,$11,$ff,$3c,$f3,$11,$ff,$41,$f3,$11,$ff,$39,$f3,$11,$ff,$3c,$f3,$11,$ff,$41,$f3,$11,$ff,$39,$f3,$11,$ff,$3c,$f3,$11,$ff,$37,$ff,$00
house_piano__pulse2_measure3:
    .BYT  $f4,$11,$ff,$3b,$f3,$11,$ff,$3e,$f3,$11,$ff,$37,$f3,$11,$ff,$3b,$f2,$3e,$f2,$37,$f2,$3b,$f2,$11,$ff,$39,$ff,$00
house_piano__pulse2_measure4:
    .BYT  $f4,$11,$ff,$3c,$f3,$11,$ff,$41,$f3,$11,$ff,$39,$f3,$11,$ff,$3c,$f3,$11,$ff,$41,$f3,$11,$ff,$39,$f3,$11,$ff,$3c,$f3,$11,$fd,$00
house_piano__pulse1_data:
    .WORD house_piano__pulse1_sequence
    .WORD house_piano__pulse1_measure1
    .WORD house_piano__pulse1_measure2
    .WORD house_piano__pulse1_measure3
    .WORD house_piano__pulse1_measure4
house_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$80,$00
house_piano__pulse1_measure1:
    .BYT  $20,$48,$0d,$47,$cb,$11,$ef,$48,$e5,$11,$ff,$4a,$f2,$11,$ff,$00
house_piano__pulse1_measure2:
    .BYT  $4d,$cb,$11,$fd,$4c,$ec,$11,$ff,$4d,$ec,$11,$ff,$4c,$f3,$11,$ff,$4a,$ff,$00
house_piano__pulse1_measure3:
    .BYT  $cc,$11,$ef,$47,$e5,$11,$ff,$43,$f2,$11,$ff,$45,$ff,$00
house_piano__pulse1_measure4:
    .BYT  $ee,$11,$fe,$47,$ec,$11,$ff,$48,$f3,$11,$ff,$4c,$ec,$11,$ff,$4a,$ec,$11,$ff,$48,$f3,$11,$fd,$00
house_bass_guitar__triangle_data:
    .WORD house_bass_guitar__triangle_sequence
    .WORD house_bass_guitar__triangle_measure1
    .WORD house_bass_guitar__triangle_measure2
    .WORD house_bass_guitar__triangle_measure3
    .WORD house_bass_guitar__triangle_measure4
house_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$80,$00
house_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$20,$18,$20,$18,$0d,$37,$d6,$32,$d6,$37,$e4,$11,$ff,$00
house_bass_guitar__triangle_measure2:
    .BYT  $35,$d6,$30,$d6,$35,$e4,$37,$ff,$00
house_bass_guitar__triangle_measure3:
    .BYT  $d7,$32,$d6,$37,$e4,$11,$ff,$35,$ff,$00
house_bass_guitar__triangle_measure4:
    .BYT  $d7,$30,$d6,$35,$e4,$11,$fe,$00
.export _overworld
_overworld:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD overworld_drumset__noise_data
    .WORD 0
    .WORD overworld_piano__pulse2_data
    .WORD overworld_piano__pulse1_data
    .WORD overworld_bass_guitar__triangle_data
overworld_drumset__noise_data:
    .WORD overworld_drumset__noise_sequence
    .WORD overworld_drumset__noise_measure1
    .WORD overworld_drumset__noise_measure2
    .WORD overworld_drumset__noise_measure3
    .WORD overworld_drumset__noise_measure4
overworld_drumset__noise_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$04,$80,$00
overworld_drumset__noise_measure1:
    .BYT  $20,$00,$0d,$23,$e8,$23,$f8,$23,$f8,$23,$f8,$23,$e8,$23,$e8,$00
overworld_drumset__noise_measure2:
    .BYT  $23,$e8,$23,$f8,$23,$f8,$23,$f8,$23,$e8,$23,$e8,$00
overworld_drumset__noise_measure3:
    .BYT  $23,$e8,$11,$e8,$23,$e8,$23,$fa,$23,$ee,$00
overworld_drumset__noise_measure4:
    .BYT  $23,$ee,$23,$fa,$23,$ee,$23,$fa,$23,$ee,$23,$fa,$23,$ee,$23,$fa,$00
overworld_piano__pulse2_data:
    .WORD overworld_piano__pulse2_sequence
    .WORD overworld_piano__pulse2_measure1
    .WORD overworld_piano__pulse2_measure2
    .WORD overworld_piano__pulse2_measure3
    .WORD overworld_piano__pulse2_measure4
    .WORD overworld_piano__pulse2_measure5
    .WORD overworld_piano__pulse2_measure6
    .WORD overworld_piano__pulse2_measure7
    .WORD overworld_piano__pulse2_measure8
    .WORD overworld_piano__pulse2_measure9
    .WORD overworld_piano__pulse2_measure10
    .WORD overworld_piano__pulse2_measure11
    .WORD overworld_piano__pulse2_measure12
    .WORD overworld_piano__pulse2_measure13
    .WORD overworld_piano__pulse2_measure14
    .WORD overworld_piano__pulse2_measure15
    .WORD overworld_piano__pulse2_measure16
overworld_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$08,$09,$06,$07,$0a,$0b,$0c,$0d,$0c,$0d,$0e,$0f,$0e,$10,$80,$00
overworld_piano__pulse2_measure1:
    .BYT  $20,$50,$0d,$3c,$e9,$11,$ff,$3e,$f8,$3c,$f8,$3b,$f8,$3c,$ef,$11,$ff,$3c,$fa,$3c,$f8,$3e,$f8,$45,$f8,$00
overworld_piano__pulse2_measure2:
    .BYT  $41,$ef,$11,$ff,$3e,$fa,$41,$ef,$11,$ff,$3e,$fa,$41,$ef,$11,$ff,$3e,$fa,$41,$ef,$11,$ff,$3e,$fa,$00
overworld_piano__pulse2_measure3:
    .BYT  $3c,$ef,$11,$ff,$3c,$fa,$3c,$d2,$11,$fe,$48,$f8,$48,$f8,$48,$f8,$00
overworld_piano__pulse2_measure4:
    .BYT  $45,$e9,$11,$ff,$48,$f8,$48,$f8,$48,$f8,$45,$e9,$11,$ff,$48,$f8,$48,$f8,$48,$f8,$00
overworld_piano__pulse2_measure5:
    .BYT  $3c,$e9,$11,$ff,$3e,$f8,$3c,$f8,$3b,$f8,$3c,$ef,$11,$ff,$3c,$fa,$3c,$f8,$3e,$f8,$45,$f8,$00
overworld_piano__pulse2_measure6:
    .BYT  $3a,$e9,$11,$ff,$3c,$f8,$3a,$f8,$39,$f8,$3a,$ef,$11,$ff,$3c,$fa,$3e,$ef,$11,$ff,$46,$fa,$00
overworld_piano__pulse2_measure7:
    .BYT  $4a,$e9,$11,$ff,$48,$e9,$11,$ff,$4a,$e9,$11,$ff,$45,$e9,$11,$ff,$00
overworld_piano__pulse2_measure8:
    .BYT  $43,$ef,$11,$ff,$43,$fa,$41,$e9,$11,$ed,$41,$fa,$3e,$f8,$41,$f8,$46,$f8,$00
overworld_piano__pulse2_measure9:
    .BYT  $45,$ef,$11,$ff,$45,$fa,$45,$fa,$44,$fa,$45,$fa,$46,$fa,$45,$e9,$11,$ff,$41,$e9,$11,$ff,$00
overworld_piano__pulse2_measure10:
    .BYT  $43,$f8,$43,$f8,$43,$f8,$43,$e9,$11,$ed,$40,$fa,$40,$f8,$40,$f8,$40,$f8,$00
overworld_piano__pulse2_measure11:
    .BYT  $37,$f8,$37,$f8,$37,$f8,$37,$e9,$11,$ed,$37,$fa,$37,$f8,$37,$f8,$37,$f8,$00
overworld_piano__pulse2_measure12:
    .BYT  $39,$d2,$11,$e6,$3e,$e9,$11,$ff,$00
overworld_piano__pulse2_measure13:
    .BYT  $3e,$ef,$11,$ff,$3e,$fa,$3c,$d2,$11,$e6,$00
overworld_piano__pulse2_measure14:
    .BYT  $3e,$f8,$43,$f8,$46,$f8,$4a,$f8,$46,$f8,$43,$f8,$3e,$f8,$43,$f8,$46,$f8,$4a,$f8,$46,$f8,$43,$f8,$00
overworld_piano__pulse2_measure15:
    .BYT  $46,$fa,$4a,$fa,$46,$fa,$4a,$fa,$46,$fa,$4a,$fa,$46,$fa,$4a,$fa,$43,$fa,$46,$fa,$43,$fa,$46,$fa,$43,$fa,$46,$fa,$43,$fa,$46,$fa,$00
overworld_piano__pulse2_measure16:
    .BYT  $48,$e9,$11,$ff,$46,$e9,$11,$ff,$43,$e9,$11,$ff,$40,$e9,$11,$ff,$00
overworld_piano__pulse1_data:
    .WORD overworld_piano__pulse1_sequence
    .WORD overworld_piano__pulse1_measure1
    .WORD overworld_piano__pulse1_measure2
    .WORD overworld_piano__pulse1_measure3
    .WORD overworld_piano__pulse1_measure4
    .WORD overworld_piano__pulse1_measure5
    .WORD overworld_piano__pulse1_measure6
    .WORD overworld_piano__pulse1_measure7
    .WORD overworld_piano__pulse1_measure8
    .WORD overworld_piano__pulse1_measure9
    .WORD overworld_piano__pulse1_measure10
    .WORD overworld_piano__pulse1_measure11
    .WORD overworld_piano__pulse1_measure12
    .WORD overworld_piano__pulse1_measure13
    .WORD overworld_piano__pulse1_measure14
    .WORD overworld_piano__pulse1_measure15
    .WORD overworld_piano__pulse1_measure16
overworld_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$08,$09,$06,$07,$0a,$0b,$0c,$0d,$0c,$0d,$0e,$0f,$0e,$10,$80,$00
overworld_piano__pulse1_measure1:
    .BYT  $20,$50,$0d,$45,$d2,$11,$ec,$45,$fa,$45,$f8,$46,$f8,$48,$f8,$00
overworld_piano__pulse1_measure2:
    .BYT  $4b,$ef,$11,$ff,$41,$fa,$4a,$ef,$11,$ff,$41,$fa,$48,$ef,$11,$ff,$41,$fa,$46,$ef,$11,$ff,$41,$fa,$00
overworld_piano__pulse1_measure3:
    .BYT  $45,$ef,$11,$ff,$43,$fa,$45,$d2,$11,$fe,$4d,$f8,$4d,$f8,$4d,$f8,$00
overworld_piano__pulse1_measure4:
    .BYT  $48,$e9,$11,$ff,$4d,$f8,$4d,$f8,$4d,$f8,$48,$e9,$11,$ff,$4d,$f8,$4d,$f8,$4d,$f8,$00
overworld_piano__pulse1_measure5:
    .BYT  $45,$d2,$11,$ec,$45,$fa,$45,$f8,$46,$f8,$48,$f8,$00
overworld_piano__pulse1_measure6:
    .BYT  $43,$d2,$11,$ec,$45,$fa,$46,$ef,$11,$ff,$4a,$fa,$00
overworld_piano__pulse1_measure7:
    .BYT  $52,$e9,$11,$ff,$51,$e9,$11,$ff,$4f,$e9,$11,$ff,$4d,$e9,$11,$ff,$00
overworld_piano__pulse1_measure8:
    .BYT  $4b,$ef,$11,$ff,$4b,$fa,$4a,$e9,$11,$ed,$46,$fa,$46,$f8,$48,$f8,$4a,$f8,$00
overworld_piano__pulse1_measure9:
    .BYT  $4a,$ef,$11,$ff,$4a,$fa,$48,$d2,$11,$e6,$00
overworld_piano__pulse1_measure10:
    .BYT  $4c,$f8,$4a,$f8,$4c,$f8,$48,$e9,$11,$ed,$43,$fa,$43,$f8,$43,$f8,$43,$f8,$00
overworld_piano__pulse1_measure11:
    .BYT  $40,$f8,$3e,$f8,$40,$f8,$3c,$e9,$11,$ed,$3c,$fa,$3c,$f8,$3c,$f8,$3c,$f8,$00
overworld_piano__pulse1_measure12:
    .BYT  $41,$d2,$11,$e6,$46,$e9,$11,$ff,$00
overworld_piano__pulse1_measure13:
    .BYT  $46,$ef,$11,$ff,$46,$fa,$45,$d2,$11,$e6,$00
overworld_piano__pulse1_measure14:
    .BYT  $43,$f8,$46,$f8,$4a,$f8,$4d,$f8,$4a,$f8,$46,$f8,$43,$f8,$46,$f8,$4a,$f8,$4d,$f8,$4a,$f8,$46,$f8,$00
overworld_piano__pulse1_measure15:
    .BYT  $4f,$f8,$51,$f8,$4f,$f8,$4d,$f8,$4f,$f8,$4d,$f8,$4c,$f8,$4d,$f8,$4c,$f8,$4a,$f8,$4c,$f8,$4a,$f8,$00
overworld_piano__pulse1_measure16:
    .BYT  $4c,$ef,$11,$ff,$4d,$fa,$4a,$ef,$11,$ff,$4c,$fa,$48,$ef,$11,$ff,$4a,$fa,$46,$ef,$11,$ff,$48,$fa,$00
overworld_bass_guitar__triangle_data:
    .WORD overworld_bass_guitar__triangle_sequence
    .WORD overworld_bass_guitar__triangle_measure1
    .WORD overworld_bass_guitar__triangle_measure2
    .WORD overworld_bass_guitar__triangle_measure3
    .WORD overworld_bass_guitar__triangle_measure4
    .WORD overworld_bass_guitar__triangle_measure5
    .WORD overworld_bass_guitar__triangle_measure6
    .WORD overworld_bass_guitar__triangle_measure7
    .WORD overworld_bass_guitar__triangle_measure8
    .WORD overworld_bass_guitar__triangle_measure9
    .WORD overworld_bass_guitar__triangle_measure10
    .WORD overworld_bass_guitar__triangle_measure11
    .WORD overworld_bass_guitar__triangle_measure12
    .WORD overworld_bass_guitar__triangle_measure13
    .WORD overworld_bass_guitar__triangle_measure14
overworld_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$08,$09,$06,$07,$0a,$0b,$0c,$0c,$0c,$0c,$0d,$0d,$0d,$0e,$80,$00
overworld_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$35,$e8,$35,$f8,$35,$f8,$35,$f8,$39,$e8,$35,$e8,$00
overworld_bass_guitar__triangle_measure2:
    .BYT  $3a,$e8,$3a,$e8,$3a,$e8,$3a,$e8,$00
overworld_bass_guitar__triangle_measure3:
    .BYT  $35,$e8,$35,$f8,$35,$f8,$35,$f8,$35,$e8,$45,$f8,$45,$f8,$45,$f8,$00
overworld_bass_guitar__triangle_measure4:
    .BYT  $41,$e8,$45,$f8,$45,$f8,$45,$f8,$41,$e8,$45,$f8,$45,$f8,$45,$f8,$00
overworld_bass_guitar__triangle_measure5:
    .BYT  $35,$e8,$35,$f8,$35,$f8,$35,$f8,$39,$e8,$35,$e8,$00
overworld_bass_guitar__triangle_measure6:
    .BYT  $37,$e8,$37,$f8,$37,$f8,$37,$f8,$37,$e8,$37,$e8,$00
overworld_bass_guitar__triangle_measure7:
    .BYT  $37,$f8,$36,$f8,$37,$f8,$39,$e8,$3a,$f8,$39,$f8,$3a,$f8,$3e,$e8,$00
overworld_bass_guitar__triangle_measure8:
    .BYT  $3a,$e8,$3a,$f8,$35,$f8,$3a,$f8,$3e,$e8,$3a,$e8,$00
overworld_bass_guitar__triangle_measure9:
    .BYT  $35,$ee,$35,$fa,$39,$e8,$3c,$e8,$35,$e8,$00
overworld_bass_guitar__triangle_measure10:
    .BYT  $30,$e8,$34,$f8,$33,$f8,$34,$f8,$37,$e8,$3a,$e8,$00
overworld_bass_guitar__triangle_measure11:
    .BYT  $3c,$e8,$3a,$f8,$39,$f8,$3a,$f8,$34,$e8,$30,$e8,$00
overworld_bass_guitar__triangle_measure12:
    .BYT  $35,$e8,$35,$f8,$35,$f8,$35,$f8,$35,$e8,$35,$e8,$00
overworld_bass_guitar__triangle_measure13:
    .BYT  $37,$d0,$11,$e8,$3a,$fa,$3e,$ee,$00
overworld_bass_guitar__triangle_measure14:
    .BYT  $30,$ee,$34,$fa,$34,$ee,$37,$fa,$37,$ee,$34,$fa,$3a,$ee,$30,$fa,$00
.export _palace
_palace:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD palace_drumset__noise_data
    .WORD 0
    .WORD palace_piano__pulse2_data
    .WORD palace_piano__pulse1_data
    .WORD palace_bass_guitar__triangle_data
palace_drumset__noise_data:
    .WORD palace_drumset__noise_sequence
    .WORD palace_drumset__noise_measure1
    .WORD palace_drumset__noise_measure2
    .WORD palace_drumset__noise_measure3
    .WORD palace_drumset__noise_measure4
    .WORD palace_drumset__noise_measure5
    .WORD palace_drumset__noise_measure6
    .WORD palace_drumset__noise_measure7
palace_drumset__noise_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$03,$04,$03,$04,$03,$04,$03,$05,$02,$02,$02,$02,$02,$02,$02,$02,$06,$06,$06,$06,$06,$06,$04,$04,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$03,$04,$03,$04,$03,$04,$03,$05,$80,$00
palace_drumset__noise_measure1:
    .BYT  $20,$00,$0d,$23,$e8,$23,$f4,$23,$f4,$11,$f4,$23,$f4,$23,$f4,$23,$f4,$00
palace_drumset__noise_measure2:
    .BYT  $23,$e8,$23,$f4,$23,$f4,$11,$f4,$23,$f4,$23,$f4,$23,$f4,$00
palace_drumset__noise_measure3:
    .BYT  $23,$f4,$23,$f4,$11,$f4,$23,$f4,$11,$f4,$23,$f4,$23,$e8,$00
palace_drumset__noise_measure4:
    .BYT  $23,$e8,$11,$e8,$23,$e8,$11,$e8,$00
palace_drumset__noise_measure5:
    .BYT  $11,$e8,$23,$f4,$23,$f4,$11,$e8,$23,$e8,$00
palace_drumset__noise_measure6:
    .BYT  $23,$f4,$23,$f4,$23,$f4,$23,$f4,$11,$f4,$23,$f4,$23,$e8,$00
palace_drumset__noise_measure7:
    .BYT  $23,$f4,$23,$f4,$23,$f4,$23,$f4,$23,$f4,$23,$f4,$23,$f4,$23,$f4,$00
palace_piano__pulse2_data:
    .WORD palace_piano__pulse2_sequence
    .WORD palace_piano__pulse2_measure1
    .WORD palace_piano__pulse2_measure2
    .WORD palace_piano__pulse2_measure3
    .WORD palace_piano__pulse2_measure4
    .WORD palace_piano__pulse2_measure5
    .WORD palace_piano__pulse2_measure6
    .WORD palace_piano__pulse2_measure7
    .WORD palace_piano__pulse2_measure8
    .WORD palace_piano__pulse2_measure9
    .WORD palace_piano__pulse2_measure10
    .WORD palace_piano__pulse2_measure11
    .WORD palace_piano__pulse2_measure12
    .WORD palace_piano__pulse2_measure13
    .WORD palace_piano__pulse2_measure14
    .WORD palace_piano__pulse2_measure15
palace_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$02,$04,$02,$03,$02,$05,$06,$05,$06,$05,$06,$07,$08,$04,$02,$03,$02,$04,$02,$03,$02,$09,$09,$0a,$0a,$09,$09,$0b,$0c,$0d,$0d,$0e,$0e,$0f,$0f,$0e,$0e,$0d,$0d,$0e,$0e,$0f,$0f,$0e,$0e,$05,$06,$05,$06,$05,$06,$07,$08,$80,$00
palace_piano__pulse2_measure1:
    .BYT  $20,$58,$0d,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$00
palace_piano__pulse2_measure2:
    .BYT  $3f,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$3f,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$3f,$f5,$11,$ff,$3a,$f5,$11,$ff,$00
palace_piano__pulse2_measure3:
    .BYT  $40,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$40,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$40,$f5,$11,$ff,$3a,$f5,$11,$ff,$00
palace_piano__pulse2_measure4:
    .BYT  $3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$00
palace_piano__pulse2_measure5:
    .BYT  $42,$f5,$11,$ff,$42,$e9,$11,$ff,$42,$e9,$11,$ff,$42,$f5,$11,$ff,$42,$e9,$11,$ff,$00
palace_piano__pulse2_measure6:
    .BYT  $a0,$00
palace_piano__pulse2_measure7:
    .BYT  $42,$f5,$11,$ff,$42,$e9,$11,$ff,$42,$e9,$11,$ff,$42,$f5,$11,$ff,$42,$e8,$00
palace_piano__pulse2_measure8:
    .BYT  $ea,$11,$f2,$42,$de,$11,$fe,$42,$e9,$11,$ff,$00
palace_piano__pulse2_measure9:
    .BYT  $42,$f5,$11,$ff,$3c,$f5,$11,$ff,$39,$f5,$11,$ff,$42,$f5,$11,$ff,$3c,$f5,$11,$ff,$39,$f5,$11,$ff,$42,$f5,$11,$ff,$3c,$f5,$11,$ff,$00
palace_piano__pulse2_measure10:
    .BYT  $38,$f5,$11,$ff,$3c,$f5,$11,$ff,$41,$f5,$11,$ff,$38,$f5,$11,$ff,$3c,$f5,$11,$ff,$41,$f5,$11,$ff,$38,$f5,$11,$ff,$3c,$f5,$11,$ff,$00
palace_piano__pulse2_measure11:
    .BYT  $39,$f5,$11,$ff,$39,$e9,$11,$ff,$39,$d2,$11,$f2,$00
palace_piano__pulse2_measure12:
    .BYT  $39,$f5,$11,$ff,$39,$e9,$11,$ff,$39,$e9,$11,$ff,$3e,$e9,$11,$ff,$42,$f5,$11,$ff,$00
palace_piano__pulse2_measure13:
    .BYT  $37,$fa,$3a,$fa,$3e,$fa,$43,$fa,$46,$fa,$43,$fa,$3e,$fa,$3a,$fa,$37,$fa,$3a,$fa,$3e,$fa,$43,$fa,$46,$fa,$43,$fa,$3e,$fa,$3a,$fa,$00
palace_piano__pulse2_measure14:
    .BYT  $38,$fa,$3c,$fa,$41,$fa,$44,$fa,$48,$fa,$44,$fa,$41,$fa,$3c,$fa,$38,$fa,$3c,$fa,$41,$fa,$44,$fa,$48,$fa,$44,$fa,$41,$fa,$3c,$fa,$00
palace_piano__pulse2_measure15:
    .BYT  $37,$fa,$3b,$fa,$40,$fa,$43,$fa,$47,$fa,$43,$fa,$40,$fa,$3b,$fa,$37,$fa,$3b,$fa,$40,$fa,$43,$fa,$47,$fa,$43,$fa,$40,$fa,$3b,$fa,$00
palace_piano__pulse1_data:
    .WORD palace_piano__pulse1_sequence
    .WORD palace_piano__pulse1_measure1
    .WORD palace_piano__pulse1_measure2
    .WORD palace_piano__pulse1_measure3
    .WORD palace_piano__pulse1_measure4
    .WORD palace_piano__pulse1_measure5
    .WORD palace_piano__pulse1_measure6
    .WORD palace_piano__pulse1_measure7
    .WORD palace_piano__pulse1_measure8
    .WORD palace_piano__pulse1_measure9
    .WORD palace_piano__pulse1_measure10
    .WORD palace_piano__pulse1_measure11
    .WORD palace_piano__pulse1_measure12
    .WORD palace_piano__pulse1_measure13
    .WORD palace_piano__pulse1_measure14
    .WORD palace_piano__pulse1_measure15
    .WORD palace_piano__pulse1_measure16
    .WORD palace_piano__pulse1_measure17
    .WORD palace_piano__pulse1_measure18
    .WORD palace_piano__pulse1_measure19
    .WORD palace_piano__pulse1_measure20
    .WORD palace_piano__pulse1_measure21
    .WORD palace_piano__pulse1_measure22
palace_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$08,$07,$06,$07,$09,$0a,$05,$02,$03,$04,$05,$02,$03,$04,$0b,$0c,$0d,$0e,$0b,$0c,$0f,$10,$11,$12,$13,$14,$15,$16,$13,$14,$11,$12,$13,$14,$15,$16,$13,$14,$06,$07,$08,$07,$06,$07,$09,$0a,$80,$00
palace_piano__pulse1_measure1:
    .BYT  $20,$58,$0d,$43,$d2,$11,$f2,$45,$f5,$11,$ff,$46,$f5,$11,$ff,$4a,$f5,$11,$ff,$00
palace_piano__pulse1_measure2:
    .BYT  $4b,$de,$11,$fe,$46,$de,$11,$fe,$4b,$e9,$11,$ff,$00
palace_piano__pulse1_measure3:
    .BYT  $4c,$de,$11,$fe,$46,$de,$11,$fe,$4c,$e9,$11,$ff,$00
palace_piano__pulse1_measure4:
    .BYT  $4b,$e9,$11,$ff,$4f,$f5,$11,$ff,$4d,$e9,$11,$ff,$4b,$de,$11,$fe,$00
palace_piano__pulse1_measure5:
    .BYT  $43,$d2,$11,$f2,$45,$f5,$11,$ff,$46,$f5,$11,$ff,$4a,$f5,$11,$ff,$00
palace_piano__pulse1_measure6:
    .BYT  $4a,$f5,$11,$ff,$4a,$e9,$11,$ff,$4a,$e9,$11,$ff,$4a,$f5,$11,$ff,$48,$e9,$11,$ff,$00
palace_piano__pulse1_measure7:
    .BYT  $a0,$00
palace_piano__pulse1_measure8:
    .BYT  $4a,$f5,$11,$ff,$4a,$e9,$11,$ff,$4a,$e9,$11,$ff,$4a,$f5,$11,$ff,$4b,$e9,$11,$ff,$00
palace_piano__pulse1_measure9:
    .BYT  $4a,$f5,$11,$ff,$4a,$e9,$11,$ff,$4a,$e9,$11,$ff,$4a,$f5,$11,$ff,$4d,$e8,$00
palace_piano__pulse1_measure10:
    .BYT  $ea,$11,$f2,$4b,$de,$11,$fe,$4a,$e9,$11,$ff,$00
palace_piano__pulse1_measure11:
    .BYT  $48,$f5,$11,$ff,$45,$f5,$11,$ff,$46,$f5,$11,$ff,$48,$e9,$11,$ff,$46,$f5,$11,$ff,$45,$e9,$11,$ff,$00
palace_piano__pulse1_measure12:
    .BYT  $45,$f5,$11,$ff,$42,$f5,$11,$ff,$43,$f5,$11,$ff,$45,$e9,$11,$ff,$43,$f5,$11,$ff,$42,$e9,$11,$ff,$00
palace_piano__pulse1_measure13:
    .BYT  $4d,$f5,$11,$ff,$48,$f5,$11,$ff,$4a,$f5,$11,$ff,$4b,$e9,$11,$ff,$4a,$f5,$11,$ff,$48,$e9,$11,$ff,$00
palace_piano__pulse1_measure14:
    .BYT  $48,$f5,$11,$ff,$44,$f5,$11,$ff,$46,$f5,$11,$ff,$48,$e9,$11,$ff,$4a,$f5,$11,$ff,$4b,$e9,$11,$ff,$00
palace_piano__pulse1_measure15:
    .BYT  $3e,$f5,$11,$ff,$3e,$e9,$11,$ff,$3f,$d2,$11,$f2,$00
palace_piano__pulse1_measure16:
    .BYT  $3e,$f5,$11,$ff,$3e,$e9,$11,$ff,$42,$e9,$11,$ff,$45,$e9,$11,$ff,$48,$f5,$11,$ff,$00
palace_piano__pulse1_measure17:
    .BYT  $4a,$d2,$11,$f2,$48,$e9,$11,$ff,$46,$f5,$11,$ff,$00
palace_piano__pulse1_measure18:
    .BYT  $45,$f1,$11,$ff,$46,$f1,$11,$ff,$48,$f1,$11,$ff,$4a,$f1,$11,$ff,$4b,$f1,$11,$ff,$4d,$f1,$11,$ff,$00
palace_piano__pulse1_measure19:
    .BYT  $4d,$d2,$11,$f2,$4b,$e9,$11,$ff,$4a,$f5,$11,$ff,$00
palace_piano__pulse1_measure20:
    .BYT  $4b,$f1,$11,$ff,$4a,$f1,$11,$ff,$48,$f1,$11,$ff,$4a,$f1,$11,$ff,$4b,$f1,$11,$ff,$4d,$f1,$11,$ff,$00
palace_piano__pulse1_measure21:
    .BYT  $4f,$d2,$11,$f2,$43,$e9,$11,$ff,$45,$f5,$11,$ff,$00
palace_piano__pulse1_measure22:
    .BYT  $47,$f1,$11,$ff,$48,$f1,$11,$ff,$4a,$f1,$11,$ff,$4c,$f1,$11,$ff,$4d,$f1,$11,$ff,$4f,$f1,$11,$ff,$00
palace_bass_guitar__triangle_data:
    .WORD palace_bass_guitar__triangle_sequence
    .WORD palace_bass_guitar__triangle_measure1
    .WORD palace_bass_guitar__triangle_measure2
    .WORD palace_bass_guitar__triangle_measure3
    .WORD palace_bass_guitar__triangle_measure4
    .WORD palace_bass_guitar__triangle_measure5
    .WORD palace_bass_guitar__triangle_measure6
    .WORD palace_bass_guitar__triangle_measure7
    .WORD palace_bass_guitar__triangle_measure8
    .WORD palace_bass_guitar__triangle_measure9
    .WORD palace_bass_guitar__triangle_measure10
    .WORD palace_bass_guitar__triangle_measure11
    .WORD palace_bass_guitar__triangle_measure12
    .WORD palace_bass_guitar__triangle_measure13
    .WORD palace_bass_guitar__triangle_measure14
palace_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$02,$04,$02,$03,$02,$05,$06,$05,$06,$05,$06,$05,$07,$04,$02,$03,$02,$04,$02,$03,$02,$08,$08,$09,$09,$08,$08,$0a,$0b,$0c,$0c,$0d,$0d,$0e,$0e,$0d,$0d,$0c,$0c,$0d,$0d,$0e,$0e,$0d,$0d,$05,$06,$05,$06,$05,$06,$05,$07,$80,$00
palace_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$37,$e8,$32,$f4,$37,$e8,$32,$f4,$3a,$f4,$32,$f4,$00
palace_bass_guitar__triangle_measure2:
    .BYT  $37,$e8,$33,$f4,$37,$e8,$33,$f4,$3a,$f4,$33,$f4,$00
palace_bass_guitar__triangle_measure3:
    .BYT  $37,$e8,$34,$f4,$37,$e8,$34,$f4,$3a,$f4,$34,$f4,$00
palace_bass_guitar__triangle_measure4:
    .BYT  $37,$e8,$32,$f4,$37,$e8,$32,$f4,$3a,$f4,$32,$f4,$00
palace_bass_guitar__triangle_measure5:
    .BYT  $32,$f4,$32,$e8,$32,$e8,$32,$f4,$32,$e8,$00
palace_bass_guitar__triangle_measure6:
    .BYT  $e8,$32,$e8,$36,$e8,$39,$e8,$00
palace_bass_guitar__triangle_measure7:
    .BYT  $e8,$11,$f4,$36,$dc,$39,$e8,$00
palace_bass_guitar__triangle_measure8:
    .BYT  $32,$f4,$39,$f4,$36,$f4,$32,$e8,$3c,$f4,$39,$e8,$00
palace_bass_guitar__triangle_measure9:
    .BYT  $35,$f4,$3c,$f4,$38,$f4,$35,$e8,$3c,$f4,$38,$e8,$00
palace_bass_guitar__triangle_measure10:
    .BYT  $36,$f4,$36,$e8,$36,$e8,$36,$f4,$36,$f4,$36,$f4,$00
palace_bass_guitar__triangle_measure11:
    .BYT  $36,$f4,$36,$e8,$32,$e8,$36,$e8,$32,$f4,$00
palace_bass_guitar__triangle_measure12:
    .BYT  $37,$f4,$32,$f4,$37,$f4,$3a,$f4,$37,$f4,$32,$f4,$37,$f4,$3a,$f4,$00
palace_bass_guitar__triangle_measure13:
    .BYT  $35,$f4,$30,$f4,$35,$f4,$38,$f4,$35,$f4,$30,$f4,$35,$f4,$38,$f4,$00
palace_bass_guitar__triangle_measure14:
    .BYT  $34,$f4,$3b,$f4,$34,$f4,$37,$f4,$34,$f4,$3b,$f4,$34,$f4,$37,$f4,$00
.export _town_item_fanfare
_town_item_fanfare:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD town_item_fanfare_piano__pulse2_data
    .WORD town_item_fanfare_piano__pulse1_data
    .WORD town_item_fanfare_bass_guitar__triangle_data
town_item_fanfare_piano__pulse2_data:
    .WORD town_item_fanfare_piano__pulse2_sequence
    .WORD town_item_fanfare_piano__pulse2_measure1
town_item_fanfare_piano__pulse2_sequence:
    .BYT  $01,$00
town_item_fanfare_piano__pulse2_measure1:
    .BYT  $20,$38,$0d,$3c,$f5,$11,$ff,$3d,$f5,$11,$ff,$3e,$f5,$11,$ff,$3f,$de,$11,$e6,$00
town_item_fanfare_piano__pulse1_data:
    .WORD town_item_fanfare_piano__pulse1_sequence
    .WORD town_item_fanfare_piano__pulse1_measure1
town_item_fanfare_piano__pulse1_sequence:
    .BYT  $01,$00
town_item_fanfare_piano__pulse1_measure1:
    .BYT  $20,$38,$0d,$45,$f5,$11,$ff,$46,$f5,$11,$ff,$47,$f5,$11,$ff,$48,$de,$11,$e6,$00
town_item_fanfare_bass_guitar__triangle_data:
    .WORD town_item_fanfare_bass_guitar__triangle_sequence
    .WORD town_item_fanfare_bass_guitar__triangle_measure1
town_item_fanfare_bass_guitar__triangle_sequence:
    .BYT  $01,$00
town_item_fanfare_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$35,$f4,$36,$f4,$37,$f4,$38,$dc,$11,$e8,$00
.export _town
_town:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD town_drumset__noise_data
    .WORD 0
    .WORD town_piano__pulse2_data
    .WORD town_piano__pulse1_data
    .WORD town_bass_guitar__triangle_data
town_drumset__noise_data:
    .WORD town_drumset__noise_sequence
    .WORD town_drumset__noise_measure1
    .WORD town_drumset__noise_measure2
    .WORD town_drumset__noise_measure3
    .WORD town_drumset__noise_measure4
    .WORD town_drumset__noise_measure5
    .WORD town_drumset__noise_measure6
    .WORD town_drumset__noise_measure7
    .WORD town_drumset__noise_measure8
    .WORD town_drumset__noise_measure9
    .WORD town_drumset__noise_measure10
    .WORD town_drumset__noise_measure11
    .WORD town_drumset__noise_measure12
    .WORD town_drumset__noise_measure13
    .WORD town_drumset__noise_measure14
    .WORD town_drumset__noise_measure15
    .WORD town_drumset__noise_measure16
    .WORD town_drumset__noise_measure17
    .WORD town_drumset__noise_measure18
    .WORD town_drumset__noise_measure19
    .WORD town_drumset__noise_measure20
    .WORD town_drumset__noise_measure21
    .WORD town_drumset__noise_measure22
    .WORD town_drumset__noise_measure23
    .WORD town_drumset__noise_measure24
    .WORD town_drumset__noise_measure25
    .WORD town_drumset__noise_measure26
    .WORD town_drumset__noise_measure27
    .WORD town_drumset__noise_measure28
    .WORD town_drumset__noise_measure29
    .WORD town_drumset__noise_measure30
    .WORD town_drumset__noise_measure31
town_drumset__noise_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$1f,$1f,$1f,$80,$00
town_drumset__noise_measure1:
    .BYT  $20,$00,$0d,$23,$e4,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$11,$ff,$00
town_drumset__noise_measure2:
    .BYT  $23,$e4,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$23,$ff,$00
town_drumset__noise_measure3:
    .BYT  $e5,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$11,$ff,$23,$ff,$00
town_drumset__noise_measure4:
    .BYT  $e5,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$23,$fe,$00
town_drumset__noise_measure5:
    .BYT  $e6,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$11,$ff,$23,$fe,$00
town_drumset__noise_measure6:
    .BYT  $e6,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$23,$fd,$00
town_drumset__noise_measure7:
    .BYT  $e7,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$11,$ff,$23,$fd,$00
town_drumset__noise_measure8:
    .BYT  $e7,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$23,$fc,$00
town_drumset__noise_measure9:
    .BYT  $e8,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$11,$ff,$23,$fc,$00
town_drumset__noise_measure10:
    .BYT  $e8,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$23,$fb,$00
town_drumset__noise_measure11:
    .BYT  $e9,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$11,$ff,$23,$fb,$00
town_drumset__noise_measure12:
    .BYT  $e9,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$23,$fa,$00
town_drumset__noise_measure13:
    .BYT  $ea,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$11,$ff,$23,$fa,$00
town_drumset__noise_measure14:
    .BYT  $ea,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$23,$f9,$00
town_drumset__noise_measure15:
    .BYT  $eb,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$11,$ff,$23,$f9,$00
town_drumset__noise_measure16:
    .BYT  $eb,$11,$f2,$23,$f2,$11,$e4,$23,$e4,$23,$f8,$00
town_drumset__noise_measure17:
    .BYT  $ec,$11,$e4,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$11,$ff,$23,$f8,$00
town_drumset__noise_measure18:
    .BYT  $ec,$11,$e4,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f7,$00
town_drumset__noise_measure19:
    .BYT  $ed,$11,$e4,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$11,$ff,$23,$f7,$00
town_drumset__noise_measure20:
    .BYT  $ed,$11,$e4,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f6,$00
town_drumset__noise_measure21:
    .BYT  $ee,$11,$e4,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$11,$ff,$23,$f6,$00
town_drumset__noise_measure22:
    .BYT  $ee,$11,$e4,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f5,$00
town_drumset__noise_measure23:
    .BYT  $ef,$11,$e4,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$11,$ff,$23,$f5,$00
town_drumset__noise_measure24:
    .BYT  $ef,$11,$e4,$23,$f2,$23,$f2,$23,$f2,$23,$f2,$23,$f4,$00
town_drumset__noise_measure25:
    .BYT  $f0,$11,$f2,$23,$f2,$11,$d6,$23,$f2,$11,$ff,$23,$f4,$00
town_drumset__noise_measure26:
    .BYT  $f0,$11,$f2,$23,$f2,$11,$d6,$23,$f2,$23,$f3,$00
town_drumset__noise_measure27:
    .BYT  $f1,$11,$f2,$23,$f2,$11,$d6,$23,$f2,$11,$ff,$23,$f3,$00
town_drumset__noise_measure28:
    .BYT  $f1,$11,$f2,$23,$f2,$11,$d6,$23,$f2,$23,$f2,$00
town_drumset__noise_measure29:
    .BYT  $f2,$23,$f2,$23,$f2,$11,$f2,$23,$f2,$23,$f2,$23,$f2,$11,$ff,$23,$fa,$11,$ff,$23,$f9,$00
town_drumset__noise_measure30:
    .BYT  $f9,$23,$f9,$23,$f2,$23,$f9,$23,$f9,$11,$f9,$23,$f9,$23,$f2,$23,$f2,$23,$f2,$11,$f1,$00
town_drumset__noise_measure31:
    .BYT  $8f,$00
town_piano__pulse2_data:
    .WORD town_piano__pulse2_sequence
    .WORD town_piano__pulse2_measure1
    .WORD town_piano__pulse2_measure2
    .WORD town_piano__pulse2_measure3
    .WORD town_piano__pulse2_measure4
    .WORD town_piano__pulse2_measure5
    .WORD town_piano__pulse2_measure6
    .WORD town_piano__pulse2_measure7
    .WORD town_piano__pulse2_measure8
    .WORD town_piano__pulse2_measure9
    .WORD town_piano__pulse2_measure10
    .WORD town_piano__pulse2_measure11
    .WORD town_piano__pulse2_measure12
    .WORD town_piano__pulse2_measure13
    .WORD town_piano__pulse2_measure14
    .WORD town_piano__pulse2_measure15
    .WORD town_piano__pulse2_measure16
    .WORD town_piano__pulse2_measure17
    .WORD town_piano__pulse2_measure18
    .WORD town_piano__pulse2_measure19
    .WORD town_piano__pulse2_measure20
    .WORD town_piano__pulse2_measure21
    .WORD town_piano__pulse2_measure22
    .WORD town_piano__pulse2_measure23
    .WORD town_piano__pulse2_measure24
    .WORD town_piano__pulse2_measure25
    .WORD town_piano__pulse2_measure26
    .WORD town_piano__pulse2_measure27
    .WORD town_piano__pulse2_measure28
    .WORD town_piano__pulse2_measure29
    .WORD town_piano__pulse2_measure30
    .WORD town_piano__pulse2_measure31
    .WORD town_piano__pulse2_measure32
    .WORD town_piano__pulse2_measure33
    .WORD town_piano__pulse2_measure34
town_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$80,$00
town_piano__pulse2_measure1:
    .BYT  $20,$60,$e4,$0d,$45,$f3,$11,$ff,$43,$f3,$11,$ff,$41,$f2,$40,$e5,$11,$ff,$40,$f1,$00
town_piano__pulse2_measure2:
    .BYT  $f4,$11,$fe,$40,$e6,$11,$fe,$40,$e6,$11,$fe,$40,$d8,$11,$fe,$41,$ff,$00
town_piano__pulse2_measure3:
    .BYT  $cc,$11,$ef,$45,$f2,$45,$f2,$41,$f0,$00
town_piano__pulse2_measure4:
    .BYT  $cd,$11,$c2,$00
town_piano__pulse2_measure5:
    .BYT  $e6,$45,$e5,$11,$ff,$45,$f2,$45,$d8,$11,$fd,$47,$fe,$00
town_piano__pulse2_measure6:
    .BYT  $e8,$11,$fe,$47,$e6,$11,$fe,$47,$e6,$11,$fe,$47,$e5,$11,$ff,$43,$fd,$00
town_piano__pulse2_measure7:
    .BYT  $db,$11,$fe,$49,$e5,$11,$ff,$45,$f2,$45,$f2,$45,$ee,$00
town_piano__pulse2_measure8:
    .BYT  $f7,$11,$fe,$4a,$f3,$11,$ff,$4d,$f3,$11,$ff,$4f,$e6,$11,$fe,$4d,$f3,$11,$ff,$4a,$e5,$11,$fb,$00
town_piano__pulse2_measure9:
    .BYT  $e8,$45,$f3,$11,$ff,$43,$f3,$11,$ff,$41,$f2,$40,$e5,$11,$ff,$40,$ed,$00
town_piano__pulse2_measure10:
    .BYT  $f8,$11,$fe,$40,$e6,$11,$fe,$40,$e6,$11,$fe,$40,$d8,$11,$fe,$41,$fb,$00
town_piano__pulse2_measure11:
    .BYT  $d0,$11,$ef,$45,$f2,$45,$f2,$41,$ec,$00
town_piano__pulse2_measure12:
    .BYT  $d1,$11,$be,$00
town_piano__pulse2_measure13:
    .BYT  $ea,$44,$e5,$11,$ff,$41,$f2,$44,$d8,$11,$fd,$43,$fa,$00
town_piano__pulse2_measure14:
    .BYT  $ec,$11,$fe,$3e,$e6,$11,$fe,$47,$e6,$11,$fe,$4a,$e5,$11,$ff,$43,$f9,$00
town_piano__pulse2_measure15:
    .BYT  $ec,$11,$ff,$40,$f3,$11,$ff,$43,$ca,$11,$e8,$00
town_piano__pulse2_measure16:
    .BYT  $8f,$00
town_piano__pulse2_measure17:
    .BYT  $fa,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$51,$e5,$11,$ff,$3e,$f2,$41,$f2,$51,$f2,$11,$f7,$00
town_piano__pulse2_measure18:
    .BYT  $fa,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$53,$e6,$11,$fe,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$53,$f3,$11,$f6,$00
town_piano__pulse2_measure19:
    .BYT  $fb,$3b,$f3,$11,$ff,$40,$f3,$11,$ff,$4f,$e5,$11,$ff,$3b,$f2,$40,$f2,$4f,$f2,$11,$f6,$00
town_piano__pulse2_measure20:
    .BYT  $fb,$4f,$f3,$11,$ff,$4e,$f3,$11,$ff,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4b,$f3,$11,$ff,$4a,$f3,$11,$ff,$48,$f3,$11,$f5,$00
town_piano__pulse2_measure21:
    .BYT  $fc,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$51,$e5,$11,$ff,$3e,$f2,$41,$f2,$51,$f2,$11,$f5,$00
town_piano__pulse2_measure22:
    .BYT  $fc,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$53,$e6,$11,$fe,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$53,$f3,$11,$f4,$00
town_piano__pulse2_measure23:
    .BYT  $fd,$3b,$f3,$11,$ff,$40,$f3,$11,$ff,$4f,$e5,$11,$ff,$3b,$f2,$40,$f2,$4f,$f2,$11,$f4,$00
town_piano__pulse2_measure24:
    .BYT  $fd,$4f,$f3,$11,$ff,$4e,$f3,$11,$ff,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4b,$f3,$11,$ff,$4a,$f3,$11,$ff,$48,$f3,$11,$ff,$3e,$f4,$00
town_piano__pulse2_measure25:
    .BYT  $ff,$11,$ff,$41,$f3,$11,$ff,$45,$f3,$11,$ff,$3e,$ca,$11,$ef,$40,$f4,$00
town_piano__pulse2_measure26:
    .BYT  $ff,$11,$ff,$3b,$f3,$11,$ff,$37,$f3,$11,$ff,$40,$cb,$11,$ef,$3e,$f3,$00
town_piano__pulse2_measure27:
    .BYT  $11,$ff,$41,$f3,$11,$ff,$45,$f3,$11,$ff,$3e,$ca,$11,$ef,$41,$f3,$00
town_piano__pulse2_measure28:
    .BYT  $11,$ff,$3c,$f3,$11,$ff,$38,$f3,$11,$ff,$48,$cb,$11,$ef,$3a,$f3,$11,$ff,$00
town_piano__pulse2_measure29:
    .BYT  $3e,$f3,$11,$ff,$41,$f3,$11,$ff,$3a,$f3,$11,$ff,$3e,$f2,$41,$f2,$3a,$f2,$3e,$f2,$11,$ff,$38,$f3,$11,$ff,$00
town_piano__pulse2_measure30:
    .BYT  $3c,$f3,$11,$ff,$3e,$f3,$11,$ff,$38,$f3,$11,$ff,$3c,$f3,$11,$ff,$3e,$f3,$11,$ff,$38,$f3,$11,$ff,$3c,$f3,$11,$ff,$3a,$f3,$11,$ff,$3e,$ff,$00
town_piano__pulse2_measure31:
    .BYT  $f4,$11,$ff,$41,$f3,$11,$ff,$3a,$f3,$11,$ff,$3e,$f2,$41,$f2,$3a,$f2,$3e,$f2,$11,$ff,$38,$f3,$11,$ff,$3c,$ff,$00
town_piano__pulse2_measure32:
    .BYT  $f4,$11,$ff,$3e,$f3,$11,$ff,$38,$f3,$11,$ff,$3c,$f3,$11,$ff,$3e,$f3,$11,$ff,$38,$f3,$11,$ff,$3c,$f3,$11,$ff,$3e,$f0,$00
town_piano__pulse2_measure33:
    .BYT  $f5,$11,$ff,$3e,$f3,$11,$ff,$3e,$e5,$11,$ff,$3e,$d8,$11,$fd,$3e,$f0,$00
town_piano__pulse2_measure34:
    .BYT  $fd,$11,$fe,$43,$ec,$11,$ff,$47,$f3,$11,$ff,$4a,$cb,$11,$ec,$00
town_piano__pulse1_data:
    .WORD town_piano__pulse1_sequence
    .WORD town_piano__pulse1_measure1
    .WORD town_piano__pulse1_measure2
    .WORD town_piano__pulse1_measure3
    .WORD town_piano__pulse1_measure4
    .WORD town_piano__pulse1_measure5
    .WORD town_piano__pulse1_measure6
    .WORD town_piano__pulse1_measure7
    .WORD town_piano__pulse1_measure8
    .WORD town_piano__pulse1_measure9
    .WORD town_piano__pulse1_measure10
    .WORD town_piano__pulse1_measure11
    .WORD town_piano__pulse1_measure12
    .WORD town_piano__pulse1_measure13
    .WORD town_piano__pulse1_measure14
    .WORD town_piano__pulse1_measure15
    .WORD town_piano__pulse1_measure16
    .WORD town_piano__pulse1_measure17
    .WORD town_piano__pulse1_measure18
    .WORD town_piano__pulse1_measure19
    .WORD town_piano__pulse1_measure20
    .WORD town_piano__pulse1_measure21
    .WORD town_piano__pulse1_measure22
    .WORD town_piano__pulse1_measure23
    .WORD town_piano__pulse1_measure24
    .WORD town_piano__pulse1_measure25
    .WORD town_piano__pulse1_measure26
    .WORD town_piano__pulse1_measure27
    .WORD town_piano__pulse1_measure28
    .WORD town_piano__pulse1_measure29
    .WORD town_piano__pulse1_measure30
    .WORD town_piano__pulse1_measure31
    .WORD town_piano__pulse1_measure32
    .WORD town_piano__pulse1_measure33
    .WORD town_piano__pulse1_measure34
town_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$80,$00
town_piano__pulse1_measure1:
    .BYT  $20,$60,$e4,$0d,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4a,$f2,$48,$e5,$11,$ff,$43,$f1,$00
town_piano__pulse1_measure2:
    .BYT  $f4,$11,$fe,$45,$e6,$11,$fe,$47,$e6,$11,$fe,$48,$d8,$11,$fe,$4c,$ff,$00
town_piano__pulse1_measure3:
    .BYT  $cc,$11,$ef,$4d,$f2,$4c,$f2,$45,$f0,$00
town_piano__pulse1_measure4:
    .BYT  $cd,$11,$c2,$00
town_piano__pulse1_measure5:
    .BYT  $e6,$48,$e5,$11,$ff,$4a,$f2,$4c,$d8,$11,$fd,$4f,$fe,$00
town_piano__pulse1_measure6:
    .BYT  $e8,$11,$fe,$4d,$e6,$11,$fe,$4c,$e6,$11,$fe,$4a,$e5,$11,$ff,$4c,$fd,$00
town_piano__pulse1_measure7:
    .BYT  $ce,$11,$ef,$4d,$f2,$4c,$f2,$4a,$ee,$00
town_piano__pulse1_measure8:
    .BYT  $f7,$11,$fe,$4d,$f3,$11,$ff,$51,$f3,$11,$ff,$53,$e6,$11,$fe,$51,$f3,$11,$ff,$4f,$e5,$11,$fb,$00
town_piano__pulse1_measure9:
    .BYT  $e8,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4a,$f2,$48,$e5,$11,$ff,$43,$ed,$00
town_piano__pulse1_measure10:
    .BYT  $f8,$11,$fe,$45,$e6,$11,$fe,$47,$e6,$11,$fe,$48,$d8,$11,$fe,$4c,$fb,$00
town_piano__pulse1_measure11:
    .BYT  $d0,$11,$ef,$4d,$f2,$4c,$f2,$45,$ec,$00
town_piano__pulse1_measure12:
    .BYT  $d1,$11,$be,$00
town_piano__pulse1_measure13:
    .BYT  $ea,$48,$e5,$11,$ff,$44,$f2,$48,$d8,$11,$fd,$47,$fa,$00
town_piano__pulse1_measure14:
    .BYT  $ec,$11,$fe,$4f,$e6,$11,$fe,$4a,$e6,$11,$fe,$4d,$e5,$11,$ff,$4c,$f9,$00
town_piano__pulse1_measure15:
    .BYT  $ec,$11,$ff,$43,$f3,$11,$ff,$48,$ca,$11,$e8,$00
town_piano__pulse1_measure16:
    .BYT  $8f,$00
town_piano__pulse1_measure17:
    .BYT  $ec,$48,$e5,$11,$ff,$47,$f2,$48,$d8,$11,$fd,$47,$f8,$00
town_piano__pulse1_measure18:
    .BYT  $d3,$11,$fd,$45,$f3,$11,$ff,$47,$e6,$11,$fe,$45,$f3,$11,$ff,$43,$f7,$00
town_piano__pulse1_measure19:
    .BYT  $d4,$11,$ef,$40,$e5,$11,$ff,$43,$f2,$11,$ff,$45,$f7,$00
town_piano__pulse1_measure20:
    .BYT  $d4,$11,$bb,$00
town_piano__pulse1_measure21:
    .BYT  $ee,$48,$e5,$11,$ff,$47,$f2,$48,$d8,$11,$fd,$47,$f6,$00
town_piano__pulse1_measure22:
    .BYT  $d5,$11,$fd,$45,$f3,$11,$ff,$47,$e6,$11,$fe,$45,$f3,$11,$ff,$43,$f5,$00
town_piano__pulse1_measure23:
    .BYT  $d6,$11,$ef,$40,$e5,$11,$ff,$43,$f2,$11,$ff,$45,$f5,$00
town_piano__pulse1_measure24:
    .BYT  $d6,$11,$c5,$4d,$f4,$00
town_piano__pulse1_measure25:
    .BYT  $ff,$11,$ff,$4c,$f3,$11,$ff,$4a,$f3,$11,$ff,$4d,$ca,$11,$ef,$43,$f4,$00
town_piano__pulse1_measure26:
    .BYT  $ff,$11,$ff,$41,$f3,$11,$ff,$40,$f3,$11,$ff,$43,$cb,$11,$ef,$51,$f3,$00
town_piano__pulse1_measure27:
    .BYT  $11,$ff,$4f,$f3,$11,$ff,$4d,$f3,$11,$ff,$51,$ca,$11,$ef,$44,$f3,$00
town_piano__pulse1_measure28:
    .BYT  $11,$ff,$43,$f3,$11,$ff,$41,$f3,$11,$ff,$48,$cb,$11,$ef,$46,$f3,$11,$ff,$00
town_piano__pulse1_measure29:
    .BYT  $48,$e5,$11,$ff,$4b,$f3,$11,$ff,$4a,$e5,$11,$ff,$48,$f2,$4a,$f2,$11,$ff,$44,$f3,$11,$ff,$00
town_piano__pulse1_measure30:
    .BYT  $46,$e6,$11,$fe,$4a,$f3,$11,$ff,$48,$e6,$11,$fe,$46,$f3,$11,$ff,$48,$f3,$11,$ff,$46,$f3,$11,$ff,$48,$ff,$00
town_piano__pulse1_measure31:
    .BYT  $e6,$11,$ff,$4b,$f3,$11,$ff,$4a,$e5,$11,$ff,$48,$f2,$4a,$f2,$11,$ff,$44,$f3,$11,$ff,$46,$ff,$00
town_piano__pulse1_measure32:
    .BYT  $e7,$11,$fe,$4a,$f3,$11,$ff,$48,$e6,$11,$fe,$46,$f3,$11,$ff,$48,$f3,$11,$ff,$46,$f0,$00
town_piano__pulse1_measure33:
    .BYT  $f5,$11,$ff,$44,$f3,$11,$ff,$46,$e5,$11,$ff,$44,$d8,$11,$fd,$43,$f0,$00
town_piano__pulse1_measure34:
    .BYT  $fd,$11,$fe,$47,$ec,$11,$ff,$4a,$f3,$11,$ff,$4f,$cb,$11,$ec,$00
town_bass_guitar__triangle_data:
    .WORD town_bass_guitar__triangle_sequence
    .WORD town_bass_guitar__triangle_measure1
    .WORD town_bass_guitar__triangle_measure2
    .WORD town_bass_guitar__triangle_measure3
    .WORD town_bass_guitar__triangle_measure4
    .WORD town_bass_guitar__triangle_measure5
    .WORD town_bass_guitar__triangle_measure6
    .WORD town_bass_guitar__triangle_measure7
    .WORD town_bass_guitar__triangle_measure8
    .WORD town_bass_guitar__triangle_measure9
    .WORD town_bass_guitar__triangle_measure10
    .WORD town_bass_guitar__triangle_measure11
    .WORD town_bass_guitar__triangle_measure12
    .WORD town_bass_guitar__triangle_measure13
    .WORD town_bass_guitar__triangle_measure14
    .WORD town_bass_guitar__triangle_measure15
    .WORD town_bass_guitar__triangle_measure16
    .WORD town_bass_guitar__triangle_measure17
    .WORD town_bass_guitar__triangle_measure18
    .WORD town_bass_guitar__triangle_measure19
    .WORD town_bass_guitar__triangle_measure20
    .WORD town_bass_guitar__triangle_measure21
    .WORD town_bass_guitar__triangle_measure22
    .WORD town_bass_guitar__triangle_measure23
    .WORD town_bass_guitar__triangle_measure24
    .WORD town_bass_guitar__triangle_measure25
    .WORD town_bass_guitar__triangle_measure26
    .WORD town_bass_guitar__triangle_measure27
    .WORD town_bass_guitar__triangle_measure28
    .WORD town_bass_guitar__triangle_measure29
    .WORD town_bass_guitar__triangle_measure30
    .WORD town_bass_guitar__triangle_measure31
    .WORD town_bass_guitar__triangle_measure32
    .WORD town_bass_guitar__triangle_measure33
    .WORD town_bass_guitar__triangle_measure34
town_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$80,$00
town_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$30,$e4,$37,$f2,$34,$e4,$3c,$f2,$37,$f2,$34,$f2,$11,$ff,$00
town_bass_guitar__triangle_measure2:
    .BYT  $30,$e4,$37,$f2,$34,$e4,$3c,$f2,$37,$f2,$34,$f2,$32,$ff,$00
town_bass_guitar__triangle_measure3:
    .BYT  $e5,$39,$f2,$35,$e4,$3e,$f2,$39,$f2,$35,$f2,$11,$ff,$32,$ff,$00
town_bass_guitar__triangle_measure4:
    .BYT  $e5,$39,$f2,$35,$e4,$3e,$f2,$39,$f2,$35,$f2,$35,$fe,$00
town_bass_guitar__triangle_measure5:
    .BYT  $e6,$3c,$f2,$39,$e4,$41,$f2,$3c,$f2,$39,$f2,$11,$ff,$37,$fe,$00
town_bass_guitar__triangle_measure6:
    .BYT  $e6,$3e,$f2,$3b,$e4,$43,$f2,$3e,$f2,$3b,$f2,$34,$fd,$00
town_bass_guitar__triangle_measure7:
    .BYT  $e7,$3b,$f2,$39,$e4,$3d,$f2,$40,$f2,$39,$f2,$11,$ff,$32,$fd,$00
town_bass_guitar__triangle_measure8:
    .BYT  $e7,$39,$f2,$37,$e4,$3b,$f2,$3e,$f2,$3b,$f2,$30,$fc,$00
town_bass_guitar__triangle_measure9:
    .BYT  $e8,$37,$f2,$34,$e4,$3c,$f2,$37,$f2,$34,$f2,$11,$ff,$30,$fc,$00
town_bass_guitar__triangle_measure10:
    .BYT  $e8,$37,$f2,$34,$e4,$3c,$f2,$37,$f2,$34,$f2,$32,$fb,$00
town_bass_guitar__triangle_measure11:
    .BYT  $e9,$39,$f2,$35,$e4,$3e,$f2,$39,$f2,$35,$f2,$11,$ff,$32,$fb,$00
town_bass_guitar__triangle_measure12:
    .BYT  $e9,$39,$f2,$35,$e4,$3e,$f2,$39,$f2,$35,$f2,$35,$fa,$00
town_bass_guitar__triangle_measure13:
    .BYT  $ea,$3c,$f2,$38,$e4,$3c,$f2,$41,$f2,$3c,$f2,$11,$ff,$37,$fa,$00
town_bass_guitar__triangle_measure14:
    .BYT  $ea,$3e,$f2,$3b,$e4,$3e,$f2,$41,$f2,$3e,$f2,$30,$f9,$00
town_bass_guitar__triangle_measure15:
    .BYT  $eb,$37,$f2,$34,$e4,$37,$f2,$3c,$f2,$37,$f2,$11,$ff,$30,$f9,$00
town_bass_guitar__triangle_measure16:
    .BYT  $eb,$37,$f2,$34,$e4,$3a,$f2,$34,$f2,$3a,$f2,$32,$f8,$00
town_bass_guitar__triangle_measure17:
    .BYT  $d0,$11,$f2,$39,$f2,$39,$f2,$39,$f2,$11,$ff,$37,$f8,$00
town_bass_guitar__triangle_measure18:
    .BYT  $d0,$11,$f2,$3e,$f2,$3e,$f2,$3e,$f2,$34,$f7,$00
town_bass_guitar__triangle_measure19:
    .BYT  $d1,$11,$f2,$3b,$f2,$3b,$f2,$3b,$f2,$11,$ff,$39,$f7,$00
town_bass_guitar__triangle_measure20:
    .BYT  $d1,$11,$f2,$40,$f2,$40,$f2,$40,$f2,$32,$f6,$00
town_bass_guitar__triangle_measure21:
    .BYT  $d2,$11,$f2,$39,$f2,$39,$f2,$39,$f2,$11,$ff,$37,$f6,$00
town_bass_guitar__triangle_measure22:
    .BYT  $d2,$11,$f2,$3e,$f2,$3e,$f2,$3e,$f2,$34,$f5,$00
town_bass_guitar__triangle_measure23:
    .BYT  $d3,$11,$f2,$3b,$f2,$3b,$f2,$3b,$f2,$11,$ff,$39,$f5,$00
town_bass_guitar__triangle_measure24:
    .BYT  $d3,$11,$f2,$40,$f2,$40,$f2,$40,$f2,$32,$f4,$00
town_bass_guitar__triangle_measure25:
    .BYT  $fe,$32,$f2,$32,$f2,$32,$c8,$11,$f1,$34,$f4,$00
town_bass_guitar__triangle_measure26:
    .BYT  $fe,$34,$f2,$34,$f2,$34,$c8,$11,$f2,$32,$f3,$00
town_bass_guitar__triangle_measure27:
    .BYT  $ff,$32,$f2,$32,$f2,$32,$c8,$11,$f1,$35,$f3,$00
town_bass_guitar__triangle_measure28:
    .BYT  $ff,$35,$f2,$35,$f2,$35,$c8,$11,$f2,$3a,$f2,$00
town_bass_guitar__triangle_measure29:
    .BYT  $e4,$3e,$d6,$41,$e4,$11,$ff,$38,$f2,$00
town_bass_guitar__triangle_measure30:
    .BYT  $e4,$3c,$d6,$3e,$e4,$3a,$f1,$00
town_bass_guitar__triangle_measure31:
    .BYT  $e5,$3e,$d6,$41,$e4,$11,$ff,$38,$f1,$00
town_bass_guitar__triangle_measure32:
    .BYT  $e5,$3c,$d6,$3e,$e4,$35,$f0,$00
town_bass_guitar__triangle_measure33:
    .BYT  $f4,$35,$f2,$35,$e4,$35,$d6,$11,$ff,$37,$fa,$11,$ff,$3e,$f7,$00
town_bass_guitar__triangle_measure34:
    .BYT  $fb,$37,$f9,$32,$f2,$37,$f9,$3e,$f2,$37,$f9,$32,$f2,$37,$f2,$3e,$f2,$11,$ef,$00
.export _triforce
_triforce:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD triforce_piano__pulse2_data
    .WORD triforce_piano__pulse1_data
    .WORD triforce_bass_guitar__triangle_data
triforce_piano__pulse2_data:
    .WORD triforce_piano__pulse2_sequence
    .WORD triforce_piano__pulse2_measure1
    .WORD triforce_piano__pulse2_measure2
    .WORD triforce_piano__pulse2_measure3
triforce_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$00
triforce_piano__pulse2_measure1:
    .BYT  $20,$00,$0d,$40,$e9,$11,$f3,$40,$fa,$40,$fa,$48,$f8,$46,$f8,$44,$f8,$46,$f8,$41,$f8,$41,$f8,$00
triforce_piano__pulse2_measure2:
    .BYT  $40,$e9,$11,$f3,$40,$fa,$40,$fa,$48,$f8,$46,$f8,$44,$f8,$46,$f8,$41,$f8,$41,$f8,$00
triforce_piano__pulse2_measure3:
    .BYT  $43,$e9,$11,$ff,$37,$fa,$37,$fa,$37,$fa,$37,$fa,$37,$e9,$11,$e8,$12,$ff,$00
triforce_piano__pulse1_data:
    .WORD triforce_piano__pulse1_sequence
    .WORD triforce_piano__pulse1_measure1
    .WORD triforce_piano__pulse1_measure2
    .WORD triforce_piano__pulse1_measure3
triforce_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$00
triforce_piano__pulse1_measure1:
    .BYT  $20,$00,$0d,$48,$e9,$11,$f3,$48,$fa,$48,$fa,$4b,$f8,$4a,$f8,$48,$f8,$4a,$f8,$48,$f8,$46,$f8,$00
triforce_piano__pulse1_measure2:
    .BYT  $48,$e9,$11,$f3,$48,$fa,$48,$fa,$4b,$f8,$4a,$f8,$48,$f8,$4a,$f8,$48,$f8,$46,$f8,$00
triforce_piano__pulse1_measure3:
    .BYT  $48,$e9,$11,$ff,$3c,$fa,$3c,$fa,$3c,$fa,$3c,$fa,$3c,$e9,$11,$e7,$00
triforce_bass_guitar__triangle_data:
    .WORD triforce_bass_guitar__triangle_sequence
    .WORD triforce_bass_guitar__triangle_measure1
    .WORD triforce_bass_guitar__triangle_measure2
    .WORD triforce_bass_guitar__triangle_measure3
triforce_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$00
triforce_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$34,$f8,$37,$f8,$30,$f8,$37,$f8,$3c,$f8,$34,$f8,$38,$f8,$3f,$f8,$3c,$f8,$35,$f8,$3e,$f8,$3a,$f8,$00
triforce_bass_guitar__triangle_measure2:
    .BYT  $34,$f8,$37,$f8,$30,$f8,$37,$f8,$3c,$f8,$34,$f8,$38,$f8,$3f,$f8,$3c,$f8,$35,$f8,$3e,$f8,$3a,$f8,$00
triforce_bass_guitar__triangle_measure3:
    .BYT  $3c,$e8,$30,$fa,$30,$fa,$30,$fa,$30,$fa,$30,$e8,$11,$e8,$00
.export _zelda
_zelda:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD zelda_piano__pulse2_data
    .WORD zelda_piano__pulse1_data
    .WORD zelda_bass_guitar__triangle_data
zelda_piano__pulse2_data:
    .WORD zelda_piano__pulse2_sequence
    .WORD zelda_piano__pulse2_measure1
    .WORD zelda_piano__pulse2_measure2
    .WORD zelda_piano__pulse2_measure3
    .WORD zelda_piano__pulse2_measure4
zelda_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$80,$00
zelda_piano__pulse2_measure1:
    .BYT  $20,$00,$0d,$41,$e9,$11,$ff,$45,$e9,$11,$ff,$48,$e9,$11,$ff,$41,$e9,$11,$ff,$00
zelda_piano__pulse2_measure2:
    .BYT  $45,$e9,$11,$ff,$48,$e9,$11,$ff,$41,$e9,$11,$ff,$45,$e9,$11,$ff,$00
zelda_piano__pulse2_measure3:
    .BYT  $40,$e9,$11,$ff,$43,$e9,$11,$ff,$47,$e9,$11,$ff,$40,$e9,$11,$ff,$00
zelda_piano__pulse2_measure4:
    .BYT  $43,$e9,$11,$ff,$47,$e9,$11,$ff,$40,$e9,$11,$ff,$43,$e9,$11,$ff,$00
zelda_piano__pulse1_data:
    .WORD zelda_piano__pulse1_sequence
    .WORD zelda_piano__pulse1_measure1
    .WORD zelda_piano__pulse1_measure2
    .WORD zelda_piano__pulse1_measure3
zelda_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$02,$80,$00
zelda_piano__pulse1_measure1:
    .BYT  $20,$00,$0d,$4a,$e9,$11,$ff,$4c,$e9,$11,$ff,$4f,$e9,$11,$ff,$4d,$e9,$11,$ff,$00
zelda_piano__pulse1_measure2:
    .BYT  $4c,$d2,$11,$ce,$00
zelda_piano__pulse1_measure3:
    .BYT  $4a,$e9,$11,$ff,$4c,$e9,$11,$ff,$4f,$e9,$11,$ff,$4d,$e9,$11,$ff,$00
zelda_bass_guitar__triangle_data:
    .WORD zelda_bass_guitar__triangle_sequence
    .WORD zelda_bass_guitar__triangle_measure1
    .WORD zelda_bass_guitar__triangle_measure2
    .WORD zelda_bass_guitar__triangle_measure3
    .WORD zelda_bass_guitar__triangle_measure4
zelda_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$80,$00
zelda_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$35,$d0,$11,$e8,$35,$e8,$00
zelda_bass_guitar__triangle_measure2:
    .BYT  $e8,$11,$e8,$35,$d0,$00
zelda_bass_guitar__triangle_measure3:
    .BYT  $34,$d0,$11,$e8,$34,$e8,$00
zelda_bass_guitar__triangle_measure4:
    .BYT  $e8,$11,$e8,$34,$d0,$00

