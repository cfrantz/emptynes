.export _c_dyads_proto
_c_dyads_proto:
    .BYT 2, 0
    .WORD c_dyads_proto_piano_1_data
    .WORD c_dyads_proto_piano_2_data
c_dyads_proto_piano_1_data:
    .WORD c_dyads_proto_piano_1_sequence
    .WORD c_dyads_proto_piano_1_measure1
    .WORD c_dyads_proto_piano_1_measure2
    .WORD c_dyads_proto_piano_1_measure3
    .WORD c_dyads_proto_piano_1_measure4
c_dyads_proto_piano_1_sequence:
    .BYT  $01,$02,$03,$04,$00
c_dyads_proto_piano_1_measure1:
    .BYT  $0a,$3c,$e4,$17,$fe,$3e,$e4,$17,$fe,$40,$e4,$17,$fe,$41,$e4,$17,$fe,$00
c_dyads_proto_piano_1_measure2:
    .BYT  $43,$e4,$17,$fe,$45,$e4,$17,$fe,$47,$e4,$17,$fe,$48,$e4,$17,$fe,$00
c_dyads_proto_piano_1_measure3:
    .BYT  $4a,$e4,$17,$fe,$4c,$e4,$17,$fe,$4d,$e4,$17,$fe,$4f,$e4,$17,$fe,$00
c_dyads_proto_piano_1_measure4:
    .BYT  $51,$e4,$17,$fe,$53,$e4,$17,$fe,$54,$e4,$17,$e0,$00
c_dyads_proto_piano_2_data:
    .WORD c_dyads_proto_piano_2_sequence
    .WORD c_dyads_proto_piano_2_measure1
    .WORD c_dyads_proto_piano_2_measure2
    .WORD c_dyads_proto_piano_2_measure3
    .WORD c_dyads_proto_piano_2_measure4
c_dyads_proto_piano_2_sequence:
    .BYT  $01,$02,$03,$04,$00
c_dyads_proto_piano_2_measure1:
    .BYT  $0a,$40,$e4,$17,$fe,$41,$e4,$17,$fe,$43,$e4,$17,$fe,$45,$e4,$17,$fe,$00
c_dyads_proto_piano_2_measure2:
    .BYT  $47,$e4,$17,$fe,$48,$e4,$17,$fe,$4a,$e4,$17,$fe,$4c,$e4,$17,$fe,$00
c_dyads_proto_piano_2_measure3:
    .BYT  $4d,$e4,$17,$fe,$4f,$e4,$17,$fe,$51,$e4,$17,$fe,$53,$e4,$17,$fe,$00
c_dyads_proto_piano_2_measure4:
    .BYT  $54,$e4,$17,$fe,$56,$e4,$17,$fe,$58,$e4,$17,$e0,$00
