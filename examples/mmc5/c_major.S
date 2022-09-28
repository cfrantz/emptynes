.export _c_major_proto

_c_major_proto:
    .BYT 1, 0
    .WORD c_major_proto_piano_data
c_major_proto_piano_data:
    .WORD c_major_proto_piano_sequence
    .WORD c_major_proto_piano_measure1
    .WORD c_major_proto_piano_measure2
    .WORD c_major_proto_piano_measure3
    .WORD c_major_proto_piano_measure4
c_major_proto_piano_sequence:
    .BYT  $01,$02,$03,$04,$80
c_major_proto_piano_measure1:
    .BYT  $0a,$3c,$e4,$17,$fe,$3e,$e4,$17,$fe,$40,$e4,$17,$fe,$41,$e4,$17,$fe,$00
c_major_proto_piano_measure2:
    .BYT  $43,$e4,$17,$fe,$45,$e4,$17,$fe,$47,$e4,$17,$fe,$48,$e4,$17,$fe,$00
c_major_proto_piano_measure3:
    .BYT  $4a,$e4,$17,$fe,$4c,$e4,$17,$fe,$4d,$e4,$17,$fe,$4f,$e4,$17,$fe,$00
c_major_proto_piano_measure4:
    .BYT  $51,$e4,$17,$fe,$53,$e4,$17,$fe,$54,$e4,$17,$e0,$00
