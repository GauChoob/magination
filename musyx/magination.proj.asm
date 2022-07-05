; This is the sounddata.proj file that is appended to musyx.asm
; See the MusyX pdf manual for some details

; This file is identical to the generated .proj file,
;   except this one is manually annotated

; THIS FILE IS NOT USED TO GENERATE THE ROM FILE, SERVING ONLY AS A REFERENCE
; The .proj file at musyx/project/Output/magination.proj is used instead
; The labels are mirrored in proj_constants.asm

    ; $5A79
snd_ProjectData::

    ; $5A79 | $0000
sdp_ADSRTableAddress::
    dw sdp_ADSRLookupTable - snd_ProjectData

    ; $5A7B | $0002
sdp_SFXTableAddress::
    dw sdp_SFXLookupTable - snd_ProjectData
    ; $5A7D | $0004
sdp_NumberOfSFXs::
    db (sdp_SFXLookupTable.End - sdp_SFXLookupTable)/4 ;$28

    ; $5A7E | $0005
sdp_SampleTableAddress::
    dw sdp_SampleLookupTable - snd_ProjectData
    ; $5A80 | $0007
sdp_NumberOfSamples::
    db (sdp_SampleLookupTable.End - sdp_SampleLookupTable)/6 ;$04

    ; $5A81 | $0008
sdp_GBSlave_Check::
    db $00 ;Always 0. If GB Slave, duplicate of sdp_NumberOfSamples

    ; $5A82 | $0009
sdp_SampleMapMacro_Address::
    dw $063D ;$0000 if no samplemap
    ; $5A84 | $000B
sdp_NumberOfSampleMapEntries::
    db $01

    ; $5A85 | $000C
sdp_SongTableAddress::
    dw sdp_SongLookupTable - snd_ProjectData
    ; $5A87 | $000E
sdp_NumberOfSongs::
    db (sdp_SongLookupTable.End - sdp_SongLookupTable)/3;$29

    ; $5A88 | $000F | $0000
    ; The last label with a fixed address
sdp_SoundMacroLookupTable::
    ; A list of all the soundmacros
    ; Pointers to each soundmacro, where the address base is
    ;   sdp_SoundMacroLookupTable ($5A88 | $000F)
    dw $0064
    dw $007F
    dw $009F
    dw $00B0
    dw $00C9
    dw $00E8
    dw $010B
    dw $0126
    dw $0140
    dw $0156
    dw $017D
    dw $0197
    dw $01AF
    dw $01C0
    dw $01D1
    dw $01EB
    dw $0209
    dw $021A
    dw $023A
    dw $0288
    dw $02A0
    dw $02AF
    dw $02CF
    dw $0320
    dw $0344
    dw $0361
    dw $038E
    dw $03D4
    dw $0427
    dw $0450
    dw $046A
    dw $0482
    dw $04A9
    dw $04B7
    dw $04EA
    dw $0500
    dw $0511
    dw $0526
    dw $0532
    dw $0535
    dw $0559
    dw $0569
    dw $0579
    dw $059B
    dw $05B0
    dw $05CD
    dw $05D9
    dw $05FB
    dw $0621
    dw $062E
.End::
    ; $5AEC | $0073 | $0064
sdp_SoundMacroOpcodes::
    ; $5AEC | $0073 | $0064
    ; 00
    db $0E, $03
    db $29, $00, $09
    db $0C, $FF
    db $09, $0F
    db $10, $24
    db $04, $00, $00, $00, $0B
    db $11, $FD, $DC
    db $04, $00, $00, $00, $08
    db $1A, $01
    db $00

    ; $5B07 | $008E | $007F
    ; 01
    db $0E, $03
    db $29, $00, $09
    db $0C, $FF
    db $09, $0F
    db $11, $FE, $80
    db $10, $4C
    db $04, $00, $00, $00, $0B
    db $10, $54
    db $11, $FE, $80
    db $04, $00, $00, $00, $0B
    db $1A, $01
    db $00

    ; $5B27 | $00AE | $009F
    ; 02
    db $0E, $83
    db $09, $01
    db $04, $00, $00, $00, $02
    db $13, $01
    db $04, $00, $00, $00, $02
    db $00

    ; $5B38 | $00BF | $00B0
    ; 03
    db $0E, $03
    db $10, $02
    db $09, $02
    db $0C, $FF
    db $04, $00, $00, $01, $2E
    db $09, $02
    db $04, $00, $00, $02, $5A
    db $05, $00, $FF, $EC
    db $00

    ; $5B51 | $00D8 | $00C9
    ; 04
    db $0E, $00
    db $09, $0F
    db $0C, $02
    db $07, $28, $00
    db $03, $01, $9F, $3C, $00, $00
    db $04, $00, $00, $00, $17
    db $11, $FC, $40
    db $04, $00, $00, $00, $05
    db $1A, $01
    db $00

    ; $5B70 | $00F7 | $00E8
    ; 05
    db $0E, $03
    db $0C, $FF
    db $10, $04
    db $27, $02, $24
    db $0A, $00
    db $04, $00, $00, $00, $08
    db $11, $FF, $C2
    db $0A, $02
    db $04, $00, $00, $00, $08
    db $10, $00
    db $10, $00
    db $0A, $01
    db $1A, $01
    db $00

    ; $5B93 | $011A | $010B
    ; 06
    db $0E, $03
    db $10, $02
    db $27, $00, $3E
    db $0C, $FF
    db $04, $00, $00, $00, $B6
    db $10, $00
    db $11, $FF, $B2
    db $04, $00, $00, $00, $32
    db $1A, $01
    db $00

    ; $5BAE | $0135 | $0126
    ; 07
    db $0E, $03
    db $09, $0F
    db $0C, $FF
    db $10, $57
    db $04, $00, $00, $00, $38
    db $10, $64
    db $11, $FF, $36
    db $04, $00, $00, $00, $14
    db $1A, $01
    db $00

    ; $5BC8 | $014F | $0140
    ; 08
    db $0E, $03
    db $09, $0F
    db $0C, $FF
    db $10, $54
    db $04, $00, $00, $00, $26
    db $11, $FD, $DC
    db $04, $00, $00, $00, $08
    db $00

    ; $5BDE | $0165 | $0156
    ; 09
    db $0E, $03
    db $27, $00, $CA
    db $0C, $FF
    db $04, $00, $00, $00, $08
    db $10, $63
    db $04, $00, $00, $00, $0E
    db $10, $23
    db $04, $00, $00, $00, $0E
    db $10, $02
    db $11, $FF, $67
    db $04, $00, $00, $00, $1A
    db $1A, $01
    db $00

    ; $5C05 | $018C | $017D
    ; 0A
    db $0E, $03
    db $09, $0F
    db $0C, $FF
    db $10, $45
    db $04, $00, $00, $00, $08
    db $10, $32
    db $11, $FD, $00
    db $04, $00, $00, $00, $06
    db $1A, $01
    db $00

    ; $5C1F | $01A6 | $0197
    ; 0B
    db $0E, $03
    db $0C, $FF
    db $09, $08
    db $10, $12
    db $04, $00, $00, $00, $0C
    db $11, $F1, $00
    db $04, $00, $00, $00, $02
    db $1A, $01
    db $00

    ; $5C37 | $01BE | $01AF
    ; 0C
    db $0E, $03
    db $0C, $FF
    db $10, $50
    db $11, $FF, $67
    db $04, $00, $00, $00, $1A
    db $1A, $01
    db $00

    ; $5C48 | $01CF | $01C0
    ; 0D
    db $0E, $03
    db $0C, $FF
    db $10, $50
    db $11, $FF, $67
    db $04, $00, $00, $00, $1A
    db $1A, $01
    db $00

    ; $5C59 | $01E0 | $01D1
    ; 0E
    db $0E, $01
    db $20
    db $0C, $02
    db $07, $3C, $00
    db $03, $01, $39, $3C, $00, $80
    db $11, $FF, $B2
    db $04, $00, $00, $00, $32
    db $20
    db $1A, $01
    db $00

    ; $5C73 | $01FA | $01EB
    ; 0F
    db $0E, $02
    db $20
    db $01, $00, $04, $0D
    db $11, $FF, $B2
    db $1D, $00, $0F, $00, $60
    db $04, $00, $00, $00, $20
    db $04, $00, $00, $00, $14
    db $1A, $01
    db $1F
    db $0D
    db $00

    ; $5C91 | $0218 | $0209
    ; 10
    db $0E, $03
    db $10, $2B
    db $0C, $FF
    db $11, $FF, $99
    db $04, $00, $00, $00, $26
    db $1A, $01
    db $00

    ; $5CA2 | $0229 | $021A
    ; 11
    db $0E, $03
    db $0C, $FF
    db $10, $04
    db $04, $00, $00, $00, $26
    db $11, $FF, $D9
    db $04, $00, $00, $00, $14
    db $11, $FF, $D9
    db $10, $03
    db $04, $00, $00, $00, $62
    db $1A, $01
    db $00

    ; $5CC2 | $0249 | $023A
    ; 12
    db $0E, $03
    db $0C, $FF
    db $10, $82
    db $04, $00, $00, $00, $08
    db $0A, $02
    db $04, $00, $00, $00, $08
    db $0A, $00
    db $04, $00, $00, $00, $08
    db $0A, $01
    db $04, $00, $00, $00, $08
    db $11, $FF, $A0
    db $0A, $02
    db $10, $6A
    db $04, $00, $00, $00, $06
    db $0A, $00
    db $10, $6A
    db $04, $00, $00, $00, $06
    db $0A, $01
    db $11, $FF, $36
    db $10, $2E
    db $04, $00, $00, $00, $08
    db $11, $FF, $67
    db $10, $2F
    db $04, $00, $00, $00, $1A
    db $1A, $01
    db $00

    ; $5D10 | $0297 | $0288
    ; 13
    db $0E, $01
    db $0C, $02
    db $07, $4C, $00
    db $03, $01, $A3, $50, $33, $00
    db $11, $FD, $DC
    db $04, $00, $00, $00, $08
    db $1A, $01
    db $00

    ; $5D28 | $02AF | $02A0
    ; 14
    db $0E, $03
    db $10, $7C
    db $11, $FF, $B2
    db $0C, $FF
    db $04, $00, $00, $00, $32
    db $00

    ; $5D37 | $02BE | $02AF
    ; 15
    db $0E, $03
    db $09, $0F
    db $10, $9B
    db $0C, $FF
    db $04, $00, $00, $00, $0E
    db $10, $7C
    db $04, $00, $00, $00, $14
    db $10, $74
    db $04, $01, $00, $00, $3E
    db $05, $00, $FF, $E1
    db $00

    ; $5D57 | $02DE | $02CF
    ; 16
    db $0E, $03
    db $27, $0F, $00
    db $0C, $FF
    db $10, $00
    db $04, $00, $00, $00, $02
    db $10, $33
    db $04, $00, $00, $00, $03
    db $10, $00
    db $04, $00, $00, $00, $02
    db $10, $33
    db $04, $00, $00, $00, $03
    db $10, $00
    db $04, $00, $00, $00, $02
    db $10, $33
    db $04, $00, $00, $00, $03
    db $10, $00
    db $04, $00, $00, $00, $02
    db $10, $33
    db $04, $00, $00, $00, $03
    db $10, $22
    db $04, $00, $00, $00, $05
    db $11, $FC, $40
    db $04, $00, $00, $00, $05
    db $1A, $01
    db $00

    ; $5DA8 | $032F | $0320
    ; 17
    db $0E, $03
    db $09, $08
    db $0C, $FF
    db $27, $02, $24
    db $10, $49
    db $04, $00, $00, $00, $0E
    db $10, $4A
    db $04, $00, $00, $00, $08
    db $10, $38
    db $11, $FF, $7C
    db $04, $00, $00, $00, $1E
    db $1A, $01
    db $00

    ; $5DCC | $0353 | $0344
    ; 18
    db $0E, $02
    db $01, $00, $03, $0D
    db $1D, $00, $0F, $02, $24
    db $04, $00, $00, $00, $26
    db $11, $FF, $A0
    db $04, $00, $00, $00, $29
    db $1A, $01
    db $20
    db $0D
    db $00

    ; $5DE9 | $0370 | $0361
    ; 19
    db $0E, $03
    db $0C, $FF
    db $10, $6D
    db $04, $00, $00, $00, $1A
    db $10, $6E
    db $04, $00, $00, $00, $08
    db $10, $6D
    db $04, $00, $00, $00, $1A
    db $10, $6D
    db $04, $00, $00, $00, $08
    db $10, $6F
    db $11, $FF, $B2
    db $04, $00, $00, $00, $32
    db $1A, $01
    db $00

    ; $5E16 | $039D | $038E
    ; 1A
    db $0E, $10
    db $20
    db $0C, $02
    db $07, $58, $00
    db $0F, $00
    db $01, $00, $00, $08
    db $04, $00, $00, $00, $05
    db $07, $5A, $FE
    db $11, $FE, $D9
    db $07, $58, $00
    db $04, $00, $00, $00, $05
    db $07, $5A, $FE
    db $11, $FE, $D9
    db $07, $24, $00
    db $04, $00, $00, $00, $05
    db $07, $5A, $FE
    db $11, $FE, $D9
    db $07, $58, $00
    db $04, $00, $00, $00, $05
    db $07, $5A, $FE
    db $11, $FE, $D9
    db $1A, $01
    db $00

    ; $5E5C | $03E3 | $03D4
    ; 1B
    db $0E, $03
    db $27, $02, $24
    db $10, $92
    db $0C, $FF
    db $04, $00, $00, $00, $0A
    db $10, $9A
    db $04, $00, $00, $00, $08
    db $10, $91
    db $04, $00, $00, $00, $0E
    db $10, $82
    db $04, $00, $00, $00, $0E
    db $10, $62
    db $04, $00, $00, $00, $08
    db $10, $53
    db $04, $00, $00, $00, $0E
    db $10, $53
    db $04, $00, $00, $00, $08
    db $10, $52
    db $04, $00, $00, $00, $0E
    db $10, $51
    db $04, $00, $00, $00, $08
    db $10, $50
    db $11, $FF, $67
    db $04, $00, $00, $00, $1A
    db $1A, $01
    db $00

    ; $5EAF | $0436 | $0427
    ; 1C
    db $0E, $03
    db $10, $73
    db $27, $00, $CA
    db $0C, $FF
    db $04, $00, $00, $00, $08
    db $10, $63
    db $04, $00, $00, $00, $0E
    db $10, $53
    db $04, $00, $00, $00, $0E
    db $10, $02
    db $11, $FF, $67
    db $04, $00, $00, $00, $1A
    db $1A, $01
    db $00

    ; $5ED8 | $045F | $0450
    ; 1D
    db $0E, $01
    db $20
    db $0C, $02
    db $07, $4C, $00
    db $03, $01, $CC, $58, $33, $00
    db $11, $FF, $67
    db $04, $00, $00, $00, $1A
    db $20
    db $1A, $01
    db $00

    ; $5EF2 | $0479 | $046A
    ; 1E
    db $0E, $01
    db $0C, $02
    db $09, $0F
    db $01, $00, $04, $08
    db $07, $0C, $00
    db $11, $FF, $52
    db $04, $00, $00, $00, $17
    db $1A, $01
    db $00

    ; $5F0A | $0491 | $0482
    ; 1F
    db $0E, $03
    db $27, $0F, $00
    db $0C, $FF
    db $10, $00
    db $04, $00, $00, $00, $05
    db $10, $33
    db $04, $00, $00, $00, $05
    db $10, $22
    db $04, $00, $00, $00, $05
    db $11, $FC, $40
    db $04, $00, $00, $00, $05
    db $1A, $01
    db $00

    ; $5F31 | $04B8 | $04A9
    ; 20
    db $0E, $02
    db $09, $0F
    db $21, $00
    db $04, $00, $00, $00, $0D
    db $1A, $03
    db $00

    ; $5F3F | $04C6 | $04B7
    ; 21
    db $0E, $03
    db $0C, $FF
    db $27, $02, $24
    db $10, $51
    db $04, $00, $00, $00, $0E
    db $10, $44
    db $04, $00, $00, $00, $08
    db $27, $02, $24
    db $10, $51
    db $04, $00, $00, $00, $0E
    db $10, $44
    db $04, $00, $00, $00, $08
    db $10, $50
    db $11, $FF, $7C
    db $04, $00, $00, $00, $1E
    db $1A, $01
    db $00

    ; $5F72 | $04F9 | $04EA
    ; 22
    db $0E, $03
    db $09, $0F
    db $27, $03, $C0
    db $10, $5D
    db $0C, $FF
    db $11, $FF, $10
    db $04, $00, $00, $00, $11
    db $1A, $01
    db $00

    ; $5F88 | $050F | $0500
    ; 23
    db $0E, $03
    db $0C, $FF
    db $10, $04
    db $11, $FF, $7C
    db $04, $00, $00, $00, $1E
    db $1A, $01
    db $00

    ; $5F99 | $0520 | $0511
    ; 24
    db $0E, $00
    db $20
    db $09, $0F
    db $0C, $02
    db $07, $40, $0A
    db $11, $FF, $52
    db $04, $00, $00, $00, $17
    db $1A, $01
    db $00

    ; $5FAE | $0535 | $0526
    ; 25
    db $0E, $02
    db $21, $00
    db $04, $00, $00, $00, $0D
    db $1A, $03
    db $00

    ; $5FBA | $0541 | $0532
    ; 26
    db $1A, $00
    db $00

    ; $5FBD | $0544 | $0535
    ; 27
    db $0E, $00
    db $0C, $03
    db $03, $FF, $C2, $F4, $00, $00
    db $04, $00, $00, $00, $08
    db $03, $00, $EC, $0C, $00, $00
    db $04, $00, $00, $00, $0E
    db $11, $FD, $DC
    db $04, $00, $00, $00, $08
    db $20
    db $00

    ; $5FE1 | $0568 | $0559
    ; 28
    db $0E, $03
    db $0C, $00
    db $10, $21
    db $09, $05
    db $13, $01
    db $04, $00, $00, $00, $02
    db $00

    ; $5FF1 | $0578 | $0569
    ; 29
    db $0E, $03
    db $0C, $00
    db $10, $88
    db $09, $09
    db $13, $01
    db $04, $00, $00, $00, $02
    db $00

    ; $6001 | $0588 | $0579
    ; 2A
    db $0E, $00
    db $20
    db $0C, $02
    db $01, $00, $19, $02
    db $04, $00, $00, $00, $08
    db $08, $01, $00, $0F
    db $04, $01, $00, $00, $00
    db $20
    db $13, $01
    db $28, $00
    db $04, $00, $00, $00, $05
    db $00

    ; $6023 | $05AA | $059B
    ; 2B
    db $0E, $02
    db $0C, $01
    db $09, $0F
    db $01, $00, $01, $13
    db $04, $01, $00, $00, $00
    db $20
    db $13, $01
    db $28, $00
    db $00

    ; $6038 | $05BF | $05B0
    ; 2C
    db $0E, $01
    db $20
    db $0C, $03
    db $01, $00, $10, $08
    db $04, $00, $01, $00, $0E
    db $08, $00, $00, $0A
    db $04, $01, $00, $00, $00
    db $20
    db $13, $01
    db $28, $00
    db $00

    ; $6055 | $05DC | $05CD
    ; 2D
    db $0E, $02
    db $0C, $03
    db $09, $0F
    db $04, $01, $00, $00, $00
    db $00

    ; $6061 | $05E8 | $05D9
    ; 2E
    db $0E, $01
    db $20
    db $0C, $02
    db $01, $00, $19, $02
    db $04, $00, $00, $00, $08
    db $08, $01, $00, $0F
    db $04, $01, $00, $00, $00
    db $20
    db $13, $01
    db $04, $00, $00, $00, $05
    db $28, $00
    db $00

    ; $6083 | $060A | $05FB
    ; 2F
    db $0E, $03
    db $0C, $00
    db $10, $01
    db $11, $FF, $C2
    db $0A, $02
    db $04, $00, $00, $00, $15
    db $0A, $00
    db $10, $10
    db $04, $00, $00, $00, $15
    db $0A, $01
    db $10, $00
    db $11, $FF, $D6
    db $04, $01, $00, $00, $00
    db $00

    ; $60A9 | $0630 | $0621
    ; 30
    db $0E, $02
    db $0C, $02
    db $0F, $01
    db $04, $01, $00, $00, $00
    db $0D
    db $00

    ; $60B6 | $063D | $062E
    ; 31 (SampleMap SoundMacro)
    db $00
    db $00
.End

    ; $60B8 | $063F | $0000
sdp_ADSRLookupTable::
    dw $0004
    dw $000B
.End
    ; $60BC | $0643 | $0004
sdp_ADSRData::
    dw $0F00
    dw $FE67
    db $07
    dw $F900

    dw $03C0
    dw $FF80
    db $07
    dw $FFC7
.End

    ; $60CA | $0651
sdp_SFXLookupTable::
    ; db SoundMacro_Converted_ID
    ; db Priority
    ; db DefKey
    ; db DefVel - 0-127//8 -> $00-$0F
    ; length is sdp_NumberOfSFXs*4
    db $25, $0A, $3C, $0F
    db $24, $0A, $3C, $0F
    db $22, $0A, $3C, $0F
    db $1C, $0A, $3C, $0F
    db $1B, $0A, $3C, $0F
    db $21, $0A, $3C, $0F
    db $1A, $0A, $3C, $0F
    db $19, $0A, $3C, $0F
    db $18, $0A, $3C, $0F
    db $1F, $0A, $3C, $0F
    db $1D, $0A, $3C, $0F
    db $20, $0B, $3C, $0F
    db $23, $0A, $3C, $0F
    db $17, $0A, $3C, $0F
    db $16, $0A, $3C, $0F
    db $15, $0A, $3C, $0F
    db $14, $0A, $3C, $0F
    db $13, $0A, $3C, $0F
    db $12, $0A, $3C, $0F
    db $11, $0A, $3C, $0F
    db $10, $0A, $3C, $0F
    db $0F, $0A, $3C, $0F
    db $0E, $0A, $3C, $0F
    db $0C, $0A, $3C, $0F
    db $0B, $0A, $3C, $0F
    db $0A, $0A, $3C, $0F
    db $09, $0A, $3C, $0F
    db $08, $0A, $3C, $0F
    db $07, $0A, $3C, $0F
    db $05, $0B, $3C, $0F
    db $06, $0B, $3C, $0F
    db $04, $0A, $3C, $0F
    db $03, $0A, $3C, $0F
    db $02, $0A, $3C, $0F
    db $1E, $0A, $3C, $0F
    db $0D, $0A, $3C, $0F
    db $0D, $0A, $3C, $0F
    db $0D, $0A, $3C, $0F
    db $01, $0A, $3C, $0F
    db $00, $0A, $3C, $0F
.End::

    ; $616A | $06F1
sdp_SampleLookupTable::
    ; length is 6*n
    ; db 2 address
    ; db 2 length/$10
    ; db 1 0 if low-quality 1920 Hz ; 1 if high-quality 8192 Hz
    ; db 1 Relative bank
    dw $4000
    dw $000C
    db $00
    db $01

    dw $40C0
    dw $0001
    db $00
    db $01

    dw $40D0
    dw $0001
    db $00
    db $01

    dw $40E0
    dw $0001
    db $00
    db $01
.End::

    ; $6182 | $0709
sdp_SongLookupTable::
    ; Relative bank, Address
    ; length is 3*sdp_NumberOfSongs
    db $0C
    dw $6FD1

    db $0A
    dw $7D6D

    db $06
    dw $7F02

    db $09
    dw $7EE1

    db $03
    dw $4000

    db $02
    dw $4000

    db $03
    dw $5ECA

    db $06
    dw $56AA

    db $04
    dw $4000

    db $0B
    dw $5B41

    db $0C
    dw $4000

    db $04
    dw $5AC3

    db $09
    dw $65F7

    db $0C
    dw $62D3

    db $0A
    dw $4000

    db $09
    dw $4000

    db $0B
    dw $684F

    db $0A
    dw $504C

    db $08
    dw $4000

    db $0B
    dw $4DB6

    db $0B
    dw $4000

    db $0B
    dw $7551

    db $03
    dw $79C6

    db $0A
    dw $5FBA

    db $0A
    dw $6EDC

    db $02
    dw $763A

    db $0C
    dw $4C52

    db $09
    dw $768B

    db $05
    dw $5860

    db $0C
    dw $54A0

    db $0C
    dw $5BDD

    db $05
    dw $4000

    db $08
    dw $55BD

    db $08
    dw $6ABC

    db $05
    dw $7019

    db $09
    dw $543A

    db $04
    dw $750F

    db $0C
    dw $6D03

    db $0C
    dw $6804

    db $06
    dw $4000

    db $06
    dw $6CE4
.End::
    ; $61FD | $0784