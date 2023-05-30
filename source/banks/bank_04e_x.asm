SECTION "ROM Bank $04e", ROMX[$4000], BANK[$4e]


INCLUDE "assets/fightscene/arena/fightscene_arena_bitmaps2.asm"

    ; $61C8
    nop                                           ; $61C8: $00
    nop                                           ; $61C9: $00
    ld bc, $0400                                  ; $61CA: $01 $00 $04
    inc bc                                        ; $61CD: $03
    ld a, [bc]                                    ; $61CE: $0A
    inc b                                         ; $61CF: $04
    inc d                                         ; $61D0: $14
    ld [$1008], sp                                ; $61D1: $08 $08 $10
    ld [$0810], sp                                ; $61D4: $08 $10 $08
    db $10                                        ; $61D7: $10
    ld b, $00                                     ; $61D8: $06 $00
    add b                                         ; $61DA: $80
    ld a, a                                       ; $61DB: $7F
    ldh a, [rP1]                                  ; $61DC: $F0 $00
    nop                                           ; $61DE: $00
    nop                                           ; $61DF: $00
    nop                                           ; $61E0: $00
    nop                                           ; $61E1: $00
    nop                                           ; $61E2: $00
    nop                                           ; $61E3: $00
    nop                                           ; $61E4: $00
    nop                                           ; $61E5: $00
    nop                                           ; $61E6: $00
    nop                                           ; $61E7: $00
    nop                                           ; $61E8: $00
    nop                                           ; $61E9: $00
    inc b                                         ; $61EA: $04
    ld hl, sp+$04                                 ; $61EB: $F8 $04
    inc bc                                        ; $61ED: $03
    nop                                           ; $61EE: $00
    nop                                           ; $61EF: $00
    nop                                           ; $61F0: $00
    nop                                           ; $61F1: $00
    nop                                           ; $61F2: $00
    nop                                           ; $61F3: $00
    nop                                           ; $61F4: $00
    nop                                           ; $61F5: $00
    nop                                           ; $61F6: $00
    nop                                           ; $61F7: $00
    nop                                           ; $61F8: $00
    nop                                           ; $61F9: $00
    nop                                           ; $61FA: $00
    nop                                           ; $61FB: $00
    ld h, b                                       ; $61FC: $60
    add b                                         ; $61FD: $80
    ld h, h                                       ; $61FE: $64
    jr jr_04E_6207                                ; $61FF: $18 $06

    ld bc, $0000                                  ; $6201: $01 $00 $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00

jr_04E_6207:
    nop                                           ; $6207: $00
    ld [$0010], sp                                ; $6208: $08 $10 $00
    ld [$000C], sp                                ; $620B: $08 $0C $00
    ld [bc], a                                    ; $620E: $02
    inc b                                         ; $620F: $04
    nop                                           ; $6210: $00
    ld [bc], a                                    ; $6211: $02
    nop                                           ; $6212: $00
    ld bc, $0000                                  ; $6213: $01 $00 $00
    nop                                           ; $6216: $00
    nop                                           ; $6217: $00
    db $10                                        ; $6218: $10
    jr nz, jr_04E_622F                            ; $6219: $20 $14

    ld [$0006], sp                                ; $621B: $08 $06 $00
    ld [bc], a                                    ; $621E: $02
    ld bc, $0000                                  ; $621F: $01 $00 $00
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    nop                                           ; $6227: $00
    nop                                           ; $6228: $00
    nop                                           ; $6229: $00
    nop                                           ; $622A: $00
    nop                                           ; $622B: $00
    nop                                           ; $622C: $00
    nop                                           ; $622D: $00
    add b                                         ; $622E: $80

jr_04E_622F:
    nop                                           ; $622F: $00
    and b                                         ; $6230: $A0
    ld b, b                                       ; $6231: $40
    jr z, jr_04E_6244                             ; $6232: $28 $10

    ld a, [bc]                                    ; $6234: $0A
    inc b                                         ; $6235: $04
    ld [bc], a                                    ; $6236: $02
    ld bc, $0070                                  ; $6237: $01 $70 $00
    ld de, $010E                                  ; $623A: $11 $0E $01
    nop                                           ; $623D: $00
    nop                                           ; $623E: $00
    nop                                           ; $623F: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00

jr_04E_6244:
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    nop                                           ; $6249: $00
    nop                                           ; $624A: $00
    nop                                           ; $624B: $00
    nop                                           ; $624C: $00
    nop                                           ; $624D: $00
    nop                                           ; $624E: $00
    nop                                           ; $624F: $00
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    dec b                                         ; $6252: $05
    inc bc                                        ; $6253: $03
    rlca                                          ; $6254: $07
    rrca                                          ; $6255: $0F
    ld e, $0F                                     ; $6256: $1E $0F
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    nop                                           ; $625A: $00
    nop                                           ; $625B: $00
    nop                                           ; $625C: $00
    nop                                           ; $625D: $00
    nop                                           ; $625E: $00
    nop                                           ; $625F: $00
    ld a, [hl]                                    ; $6260: $7E
    nop                                           ; $6261: $00
    rst $38                                       ; $6262: $FF
    rst $38                                       ; $6263: $FF
    ret nz                                        ; $6264: $C0

    rst $38                                       ; $6265: $FF
    add b                                         ; $6266: $80
    nop                                           ; $6267: $00
    ld c, $1C                                     ; $6268: $0E $1C
    ld [$181C], sp                                ; $626A: $08 $1C $18
    inc c                                         ; $626D: $0C
    inc c                                         ; $626E: $0C
    inc c                                         ; $626F: $0C
    inc c                                         ; $6270: $0C
    ld b, $06                                     ; $6271: $06 $06
    inc bc                                        ; $6273: $03
    inc bc                                        ; $6274: $03
    ld bc, $0001                                  ; $6275: $01 $01 $00
    ld h, b                                       ; $6278: $60
    ld [hl], b                                    ; $6279: $70
    inc e                                         ; $627A: $1C
    jr c, jr_04E_628C                             ; $627B: $38 $0F

    ld c, $07                                     ; $627D: $0E $07
    inc bc                                        ; $627F: $03
    ld bc, $0000                                  ; $6280: $01 $00 $00
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    rlca                                          ; $6288: $07
    nop                                           ; $6289: $00
    rlca                                          ; $628A: $07
    rrca                                          ; $628B: $0F

jr_04E_628C:
    rrca                                          ; $628C: $0F
    rra                                           ; $628D: $1F
    rrca                                          ; $628E: $0F
    rra                                           ; $628F: $1F
    rrca                                          ; $6290: $0F
    rra                                           ; $6291: $1F
    rrca                                          ; $6292: $0F
    rrca                                          ; $6293: $0F
    rlca                                          ; $6294: $07
    rlca                                          ; $6295: $07
    ld bc, $9003                                  ; $6296: $01 $03 $90
    ld h, b                                       ; $6299: $60
    cp $FF                                        ; $629A: $FE $FF
    rst $38                                       ; $629C: $FF
    rst $38                                       ; $629D: $FF
    rst $38                                       ; $629E: $FF
    rst $38                                       ; $629F: $FF
    ld h, l                                       ; $62A0: $65
    add b                                         ; $62A1: $80
    nop                                           ; $62A2: $00
    nop                                           ; $62A3: $00
    ret nz                                        ; $62A4: $C0

    add b                                         ; $62A5: $80
    ret nz                                        ; $62A6: $C0

    ldh [$F0], a                                  ; $62A7: $E0 $F0
    ld hl, sp-$02                                 ; $62A9: $F8 $FE
    ld a, a                                       ; $62AB: $7F
    ccf                                           ; $62AC: $3F
    rra                                           ; $62AD: $1F
    rrca                                          ; $62AE: $0F
    rlca                                          ; $62AF: $07
    nop                                           ; $62B0: $00
    ld bc, $0000                                  ; $62B1: $01 $00 $00
    nop                                           ; $62B4: $00
    nop                                           ; $62B5: $00
    nop                                           ; $62B6: $00
    nop                                           ; $62B7: $00
    nop                                           ; $62B8: $00
    nop                                           ; $62B9: $00
    nop                                           ; $62BA: $00
    nop                                           ; $62BB: $00
    jr jr_04E_62C6                                ; $62BC: $18 $08

    jr jr_04E_62F8                                ; $62BE: $18 $38

    jr nc, jr_04E_62FA                            ; $62C0: $30 $38

    db $10                                        ; $62C2: $10
    stop                                          ; $62C3: $10 $00
    nop                                           ; $62C5: $00

jr_04E_62C6:
    nop                                           ; $62C6: $00
    nop                                           ; $62C7: $00
    nop                                           ; $62C8: $00
    nop                                           ; $62C9: $00
    nop                                           ; $62CA: $00
    nop                                           ; $62CB: $00
    jr @+$12                                      ; $62CC: $18 $10

    jr c, jr_04E_62E8                             ; $62CE: $38 $18

    jr c, jr_04E_630A                             ; $62D0: $38 $38

    jr c, jr_04E_630C                             ; $62D2: $38 $38

    nop                                           ; $62D4: $00
    nop                                           ; $62D5: $00
    nop                                           ; $62D6: $00
    nop                                           ; $62D7: $00
    nop                                           ; $62D8: $00
    nop                                           ; $62D9: $00
    nop                                           ; $62DA: $00
    nop                                           ; $62DB: $00
    ld [$1800], sp                                ; $62DC: $08 $00 $18
    ld [$0C08], sp                                ; $62DF: $08 $08 $0C
    inc b                                         ; $62E2: $04
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    nop                                           ; $62E7: $00

jr_04E_62E8:
    nop                                           ; $62E8: $00
    nop                                           ; $62E9: $00
    nop                                           ; $62EA: $00
    nop                                           ; $62EB: $00
    nop                                           ; $62EC: $00
    nop                                           ; $62ED: $00
    ld [$1C0C], sp                                ; $62EE: $08 $0C $1C
    jr jr_04E_62F3                                ; $62F1: $18 $00

jr_04E_62F3:
    nop                                           ; $62F3: $00
    nop                                           ; $62F4: $00
    nop                                           ; $62F5: $00
    nop                                           ; $62F6: $00
    nop                                           ; $62F7: $00

jr_04E_62F8:
    nop                                           ; $62F8: $00
    nop                                           ; $62F9: $00

jr_04E_62FA:
    ld bc, $0600                                  ; $62FA: $01 $00 $06
    ld bc, $001C                                  ; $62FD: $01 $1C $00
    stop                                          ; $6300: $10 $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    inc e                                         ; $6308: $1C
    nop                                           ; $6309: $00

jr_04E_630A:
    ldh a, [rP1]                                  ; $630A: $F0 $00

jr_04E_630C:
    ld b, b                                       ; $630C: $40
    add b                                         ; $630D: $80
    nop                                           ; $630E: $00
    nop                                           ; $630F: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    nop                                           ; $631A: $00
    nop                                           ; $631B: $00
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
    nop                                           ; $631F: $00
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    inc bc                                        ; $6322: $03
    nop                                           ; $6323: $00
    ld bc, $0000                                  ; $6324: $01 $00 $00
    nop                                           ; $6327: $00
    nop                                           ; $6328: $00
    nop                                           ; $6329: $00
    ld b, $01                                     ; $632A: $06 $01
    jr jr_04E_6335                                ; $632C: $18 $07

    inc hl                                        ; $632E: $23
    inc e                                         ; $632F: $1C
    db $EC                                        ; $6330: $EC
    db $10                                        ; $6331: $10
    ldh a, [rP1]                                  ; $6332: $F0 $00
    ret nz                                        ; $6334: $C0

jr_04E_6335:
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    db $E3                                        ; $6338: $E3
    inc e                                         ; $6339: $1C
    rrca                                          ; $633A: $0F
    ldh a, [$30]                                  ; $633B: $F0 $30
    ret nz                                        ; $633D: $C0

    add b                                         ; $633E: $80
    nop                                           ; $633F: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    nop                                           ; $6349: $00
    nop                                           ; $634A: $00
    nop                                           ; $634B: $00
    nop                                           ; $634C: $00
    nop                                           ; $634D: $00
    nop                                           ; $634E: $00
    nop                                           ; $634F: $00
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    inc bc                                        ; $6352: $03
    nop                                           ; $6353: $00
    ld [$4007], sp                                ; $6354: $08 $07 $40
    ccf                                           ; $6357: $3F
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    nop                                           ; $635A: $00
    nop                                           ; $635B: $00
    nop                                           ; $635C: $00
    nop                                           ; $635D: $00
    ld bc, $2700                                  ; $635E: $01 $00 $27
    nop                                           ; $6361: $00
    cp $00                                        ; $6362: $FE $00
    ld [$78F0], sp                                ; $6364: $08 $F0 $78
    add b                                         ; $6367: $80
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    nop                                           ; $636A: $00
    nop                                           ; $636B: $00
    jr nz, jr_04E_636E                            ; $636C: $20 $00

jr_04E_636E:
    ldh [rP1], a                                  ; $636E: $E0 $00
    ret nz                                        ; $6370: $C0

    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    nop                                           ; $637A: $00
    nop                                           ; $637B: $00
    nop                                           ; $637C: $00
    nop                                           ; $637D: $00
    ld bc, $0700                                  ; $637E: $01 $00 $07
    nop                                           ; $6381: $00
    inc e                                         ; $6382: $1C
    inc bc                                        ; $6383: $03
    ld a, a                                       ; $6384: $7F
    nop                                           ; $6385: $00
    db $FC                                        ; $6386: $FC
    nop                                           ; $6387: $00
    ld bc, $0C00                                  ; $6388: $01 $00 $0C
    inc bc                                        ; $638B: $03
    db $10                                        ; $638C: $10
    rrca                                          ; $638D: $0F
    pop hl                                        ; $638E: $E1
    ld e, $3C                                     ; $638F: $1E $3C
    ret nz                                        ; $6391: $C0

    ld [hl], b                                    ; $6392: $70
    add b                                         ; $6393: $80
    add b                                         ; $6394: $80
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    ld bc, $04FE                                  ; $6398: $01 $FE $04
    ld hl, sp+$00                                 ; $639B: $F8 $00
    ldh [$80], a                                  ; $639D: $E0 $80
    nop                                           ; $639F: $00
    nop                                           ; $63A0: $00
    nop                                           ; $63A1: $00
    nop                                           ; $63A2: $00
    nop                                           ; $63A3: $00
    nop                                           ; $63A4: $00
    nop                                           ; $63A5: $00
    nop                                           ; $63A6: $00
    nop                                           ; $63A7: $00
    nop                                           ; $63A8: $00
    nop                                           ; $63A9: $00
    nop                                           ; $63AA: $00
    nop                                           ; $63AB: $00
    nop                                           ; $63AC: $00
    nop                                           ; $63AD: $00
    nop                                           ; $63AE: $00
    nop                                           ; $63AF: $00
    ld [bc], a                                    ; $63B0: $02
    ld bc, $0709                                  ; $63B1: $01 $09 $07
    scf                                           ; $63B4: $37
    rrca                                          ; $63B5: $0F
    ld e, a                                       ; $63B6: $5F
    ccf                                           ; $63B7: $3F
    inc c                                         ; $63B8: $0C
    nop                                           ; $63B9: $00
    ccf                                           ; $63BA: $3F
    nop                                           ; $63BB: $00
    ld b, a                                       ; $63BC: $47
    jr c, @+$09                                   ; $63BD: $38 $07

    ld a, b                                       ; $63BF: $78
    ld b, c                                       ; $63C0: $41
    cp $27                                        ; $63C1: $FE $27
    ld hl, sp-$24                                 ; $63C3: $F8 $DC
    ldh [rSVBK], a                                ; $63C5: $E0 $70
    add b                                         ; $63C7: $80
    ld b, $00                                     ; $63C8: $06 $00
    rst $38                                       ; $63CA: $FF
    nop                                           ; $63CB: $00
    cp $00                                        ; $63CC: $FE $00
    call c, $8000                                 ; $63CE: $DC $00 $80
    nop                                           ; $63D1: $00
    nop                                           ; $63D2: $00
    nop                                           ; $63D3: $00
    nop                                           ; $63D4: $00
    nop                                           ; $63D5: $00
    nop                                           ; $63D6: $00
    nop                                           ; $63D7: $00
    jr nc, jr_04E_63DA                            ; $63D8: $30 $00

jr_04E_63DA:
    ld a, [hl]                                    ; $63DA: $7E
    ld bc, $0106                                  ; $63DB: $01 $06 $01
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    inc bc                                        ; $63E0: $03
    nop                                           ; $63E1: $00
    dec c                                         ; $63E2: $0D
    inc bc                                        ; $63E3: $03
    dec de                                        ; $63E4: $1B
    inc b                                         ; $63E5: $04
    dec sp                                        ; $63E6: $3B
    inc b                                         ; $63E7: $04
    ld bc, $F100                                  ; $63E8: $01 $00 $F1
    rrca                                          ; $63EB: $0F
    rra                                           ; $63EC: $1F
    rst $38                                       ; $63ED: $FF
    ld e, h                                       ; $63EE: $5C
    ccf                                           ; $63EF: $3F
    ld h, [hl]                                    ; $63F0: $66
    ld hl, sp+$10                                 ; $63F1: $F8 $10
    ldh [$E0], a                                  ; $63F3: $E0 $E0
    nop                                           ; $63F5: $00
    add b                                         ; $63F6: $80
    nop                                           ; $63F7: $00
    db $FD                                        ; $63F8: $FD
    cp $E6                                        ; $63F9: $FE $E6
    ld hl, sp-$68                                 ; $63FB: $F8 $98
    ldh [$E0], a                                  ; $63FD: $E0 $E0
    nop                                           ; $63FF: $00
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    rrca                                          ; $6408: $0F
    nop                                           ; $6409: $00
    ld e, $00                                     ; $640A: $1E $00
    jr nc, jr_04E_640E                            ; $640C: $30 $00

jr_04E_640E:
    nop                                           ; $640E: $00
    nop                                           ; $640F: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    inc a                                         ; $6418: $3C
    nop                                           ; $6419: $00
    ld h, b                                       ; $641A: $60
    nop                                           ; $641B: $00
    nop                                           ; $641C: $00
    nop                                           ; $641D: $00
    nop                                           ; $641E: $00
    nop                                           ; $641F: $00
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    nop                                           ; $6429: $00
    nop                                           ; $642A: $00
    nop                                           ; $642B: $00
    nop                                           ; $642C: $00
    nop                                           ; $642D: $00
    nop                                           ; $642E: $00
    nop                                           ; $642F: $00
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    ld b, $00                                     ; $6436: $06 $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643A: $00
    nop                                           ; $643B: $00
    nop                                           ; $643C: $00
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    nop                                           ; $643F: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    jr jr_04E_6444                                ; $6442: $18 $00

jr_04E_6444:
    jr nc, jr_04E_6446                            ; $6444: $30 $00

jr_04E_6446:
    nop                                           ; $6446: $00
    ldh [rP1], a                                  ; $6447: $E0 $00
    nop                                           ; $6449: $00
    nop                                           ; $644A: $00
    nop                                           ; $644B: $00
    nop                                           ; $644C: $00
    nop                                           ; $644D: $00
    nop                                           ; $644E: $00
    nop                                           ; $644F: $00
    ld [bc], a                                    ; $6450: $02
    ld bc, $0F07                                  ; $6451: $01 $07 $0F
    rrca                                          ; $6454: $0F
    ccf                                           ; $6455: $3F
    ld a, a                                       ; $6456: $7F
    rst $38                                       ; $6457: $FF
    inc c                                         ; $6458: $0C
    nop                                           ; $6459: $00
    daa                                           ; $645A: $27
    jr jr_04E_64C8                                ; $645B: $18 $6B

    rla                                           ; $645D: $17
    ccf                                           ; $645E: $3F
    ld a, a                                       ; $645F: $7F
    db $FC                                        ; $6460: $FC
    cp $F8                                        ; $6461: $FE $F8
    db $FC                                        ; $6463: $FC
    ldh [$F0], a                                  ; $6464: $E0 $F0
    add b                                         ; $6466: $80
    ldh [$6C], a                                  ; $6467: $E0 $6C
    inc bc                                        ; $6469: $03
    or b                                          ; $646A: $B0
    ld a, [hl]                                    ; $646B: $7E
    ldh a, [$F0]                                  ; $646C: $F0 $F0
    add b                                         ; $646E: $80
    ret nz                                        ; $646F: $C0

    nop                                           ; $6470: $00
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    nop                                           ; $6473: $00

jr_04E_6474:
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00

jr_04E_647A:
    ld [bc], a                                    ; $647A: $02
    nop                                           ; $647B: $00
    nop                                           ; $647C: $00
    nop                                           ; $647D: $00
    nop                                           ; $647E: $00

jr_04E_647F:
    nop                                           ; $647F: $00
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    rlca                                          ; $6486: $07
    nop                                           ; $6487: $00
    jr nc, jr_04E_648A                            ; $6488: $30 $00

jr_04E_648A:
    ret nz                                        ; $648A: $C0

    ccf                                           ; $648B: $3F
    add hl, de                                    ; $648C: $19
    rlca                                          ; $648D: $07
    ld b, $01                                     ; $648E: $06 $01
    inc b                                         ; $6490: $04
    inc bc                                        ; $6491: $03
    add hl, de                                    ; $6492: $19
    rlca                                          ; $6493: $07
    ld a, c                                       ; $6494: $79
    rlca                                          ; $6495: $07
    cp [hl]                                       ; $6496: $BE
    rlca                                          ; $6497: $07
    dec e                                         ; $6498: $1D
    inc bc                                        ; $6499: $03
    rrca                                          ; $649A: $0F
    rst $38                                       ; $649B: $FF
    rst $38                                       ; $649C: $FF
    rst $38                                       ; $649D: $FF
    ld a, [hl]                                    ; $649E: $7E
    rst $38                                       ; $649F: $FF
    ld a, a                                       ; $64A0: $7F
    rst $38                                       ; $64A1: $FF
    push hl                                       ; $64A2: $E5
    di                                            ; $64A3: $F3
    nop                                           ; $64A4: $00
    ldh [rP1], a                                  ; $64A5: $E0 $00
    add b                                         ; $64A7: $80
    cp $FF                                        ; $64A8: $FE $FF
    ldh a, [rIE]                                  ; $64AA: $F0 $FF
    ldh [$E0], a                                  ; $64AC: $E0 $E0
    nop                                           ; $64AE: $00
    nop                                           ; $64AF: $00
    ret nz                                        ; $64B0: $C0

    nop                                           ; $64B1: $00
    jr nc, jr_04E_6474                            ; $64B2: $30 $C0

    ld a, h                                       ; $64B4: $7C
    nop                                           ; $64B5: $00
    inc b                                         ; $64B6: $04
    nop                                           ; $64B7: $00
    jr c, jr_04E_647A                             ; $64B8: $38 $C0

    rlca                                          ; $64BA: $07
    ld hl, sp+$00                                 ; $64BB: $F8 $00
    nop                                           ; $64BD: $00
    nop                                           ; $64BE: $00
    nop                                           ; $64BF: $00
    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    nop                                           ; $64C2: $00
    nop                                           ; $64C3: $00
    nop                                           ; $64C4: $00
    nop                                           ; $64C5: $00
    nop                                           ; $64C6: $00
    nop                                           ; $64C7: $00

jr_04E_64C8:
    rra                                           ; $64C8: $1F
    nop                                           ; $64C9: $00
    ld a, [hl]                                    ; $64CA: $7E
    nop                                           ; $64CB: $00
    ld [hl], b                                    ; $64CC: $70
    nop                                           ; $64CD: $00
    ret nz                                        ; $64CE: $C0

    nop                                           ; $64CF: $00
    ld bc, $0100                                  ; $64D0: $01 $00 $01
    nop                                           ; $64D3: $00
    nop                                           ; $64D4: $00
    nop                                           ; $64D5: $00
    nop                                           ; $64D6: $00
    nop                                           ; $64D7: $00
    and b                                         ; $64D8: $A0
    ld e, $E8                                     ; $64D9: $1E $E8
    db $10                                        ; $64DB: $10
    ld d, b                                       ; $64DC: $50
    jr nz, jr_04E_647F                            ; $64DD: $20 $A0

    ld b, b                                       ; $64DF: $40
    ret nz                                        ; $64E0: $C0

    nop                                           ; $64E1: $00
    add b                                         ; $64E2: $80
    nop                                           ; $64E3: $00
    nop                                           ; $64E4: $00
    nop                                           ; $64E5: $00
    nop                                           ; $64E6: $00
    nop                                           ; $64E7: $00
    ld a, a                                       ; $64E8: $7F
    rst $38                                       ; $64E9: $FF
    rst $38                                       ; $64EA: $FF
    ld a, a                                       ; $64EB: $7F
    nop                                           ; $64EC: $00
    nop                                           ; $64ED: $00
    nop                                           ; $64EE: $00
    nop                                           ; $64EF: $00
    inc e                                         ; $64F0: $1C
    inc e                                         ; $64F1: $1C
    inc a                                         ; $64F2: $3C
    ld a, $60                                     ; $64F3: $3E $60
    jr nc, @+$62                                  ; $64F5: $30 $60

jr_04E_64F7:
    jr nz, jr_04E_64F7                            ; $64F7: $20 $FE

    cp $FF                                        ; $64F9: $FE $FF
    cp $10                                        ; $64FB: $FE $10
    jr nc, jr_04E_650F                            ; $64FD: $30 $10

    jr nc, jr_04E_6539                            ; $64FF: $30 $38

    ld [hl], b                                    ; $6501: $70
    ret c                                         ; $6502: $D8

    ld l, b                                       ; $6503: $68
    adc h                                         ; $6504: $8C
    ret nz                                        ; $6505: $C0

    call nz, $2480                                ; $6506: $C4 $80 $24
    jr nc, @+$09                                  ; $6509: $30 $07

    ld e, $1F                                     ; $650B: $1E $1F
    jr @+$12                                      ; $650D: $18 $10

jr_04E_650F:
    jr nc, @+$12                                  ; $650F: $30 $10

    jr nc, @+$12                                  ; $6511: $30 $10

    jr jr_04E_6533                                ; $6513: $18 $1E

    dec c                                         ; $6515: $0D
    rlca                                          ; $6516: $07
    rlca                                          ; $6517: $07
    inc b                                         ; $6518: $04
    ret nz                                        ; $6519: $C0

    ret nz                                        ; $651A: $C0

    ld b, h                                       ; $651B: $44
    inc h                                         ; $651C: $24
    ld l, b                                       ; $651D: $68
    jr c, @+$1A                                   ; $651E: $38 $18

    jr c, jr_04E_6532                             ; $6520: $38 $10

    jr nz, jr_04E_6594                            ; $6522: $20 $70

    ret nz                                        ; $6524: $C0

    ldh [rLCDC], a                                ; $6525: $E0 $40
    add b                                         ; $6527: $80
    ld a, a                                       ; $6528: $7F
    rst $38                                       ; $6529: $FF
    ld a, a                                       ; $652A: $7F
    nop                                           ; $652B: $00
    nop                                           ; $652C: $00
    nop                                           ; $652D: $00
    inc b                                         ; $652E: $04
    inc bc                                        ; $652F: $03

jr_04E_6530:
    rlca                                          ; $6530: $07
    rrca                                          ; $6531: $0F

jr_04E_6532:
    inc c                                         ; $6532: $0C

jr_04E_6533:
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    rlca                                          ; $6535: $07
    dec c                                         ; $6536: $0D
    ld b, $FE                                     ; $6537: $06 $FE

jr_04E_6539:
    cp $D6                                        ; $6539: $FE $D6
    jr c, jr_04E_6555                             ; $653B: $38 $18

jr_04E_653D:
    db $10                                        ; $653D: $10
    jr jr_04E_6530                                ; $653E: $18 $F0

    ld hl, sp-$10                                 ; $6540: $F8 $F0
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    db $10                                        ; $6544: $10
    ldh [$08], a                                  ; $6545: $E0 $08
    jr jr_04E_6556                                ; $6547: $18 $0D

    dec de                                        ; $6549: $1B
    ld a, $13                                     ; $654A: $3E $13
    ld [hl], $12                                  ; $654C: $36 $12
    inc de                                        ; $654E: $13
    ld a, [de]                                    ; $654F: $1A
    inc e                                         ; $6550: $1C
    add hl, bc                                    ; $6551: $09
    ld c, $04                                     ; $6552: $0E $04
    inc b                                         ; $6554: $04

jr_04E_6555:
    inc bc                                        ; $6555: $03

jr_04E_6556:
    ld bc, $3C00                                  ; $6556: $01 $00 $3C
    sbc b                                         ; $6559: $98
    db $FC                                        ; $655A: $FC
    ld a, b                                       ; $655B: $78
    inc a                                         ; $655C: $3C
    ld c, b                                       ; $655D: $48
    inc e                                         ; $655E: $1C
    ld [$8804], sp                                ; $655F: $08 $04 $88
    add b                                         ; $6562: $80
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    ld b, b                                       ; $6566: $40
    add b                                         ; $6567: $80
    dec a                                         ; $6568: $3D
    ld e, $76                                     ; $6569: $1E $76
    add hl, sp                                    ; $656B: $39
    ld [hl], b                                    ; $656C: $70
    ld h, c                                       ; $656D: $61
    ld h, c                                       ; $656E: $61
    ld h, b                                       ; $656F: $60
    inc de                                        ; $6570: $13
    ld hl, $171B                                  ; $6571: $21 $1B $17
    ld e, [hl]                                    ; $6574: $5E
    ccf                                           ; $6575: $3F
    di                                            ; $6576: $F3
    ld a, b                                       ; $6577: $78
    jr jr_04E_65AA                                ; $6578: $18 $30

    sub b                                         ; $657A: $90
    jr jr_04E_653D                                ; $657B: $18 $C0

    add b                                         ; $657D: $80
    add b                                         ; $657E: $80
    ret nz                                        ; $657F: $C0

    ret nz                                        ; $6580: $C0

    add b                                         ; $6581: $80
    adc e                                         ; $6582: $8B
    ld b, $DC                                     ; $6583: $06 $DC
    ld a, $88                                     ; $6585: $3E $88
    ld [hl], b                                    ; $6587: $70
    ret nz                                        ; $6588: $C0

    ldh [$E3], a                                  ; $6589: $E0 $E3
    pop bc                                        ; $658B: $C1
    db $E3                                        ; $658C: $E3
    ld b, c                                       ; $658D: $41
    ld d, c                                       ; $658E: $51
    cpl                                           ; $658F: $2F
    inc c                                         ; $6590: $0C
    inc bc                                        ; $6591: $03
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00

jr_04E_6594:
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    nop                                           ; $659A: $00
    add b                                         ; $659B: $80
    ret nz                                        ; $659C: $C0

    ret nz                                        ; $659D: $C0

    add b                                         ; $659E: $80
    ret nz                                        ; $659F: $C0

    ld b, b                                       ; $65A0: $40
    add b                                         ; $65A1: $80
    nop                                           ; $65A2: $00
    ret nz                                        ; $65A3: $C0

    ld h, b                                       ; $65A4: $60
    ld b, b                                       ; $65A5: $40
    jr nz, jr_04E_6608                            ; $65A6: $20 $60

    ld a, a                                       ; $65A8: $7F
    rst $38                                       ; $65A9: $FF

jr_04E_65AA:
    add b                                         ; $65AA: $80
    ld a, a                                       ; $65AB: $7F
    nop                                           ; $65AC: $00
    nop                                           ; $65AD: $00
    nop                                           ; $65AE: $00
    nop                                           ; $65AF: $00
    ld bc, $0100                                  ; $65B0: $01 $00 $01
    ld bc, $0108                                  ; $65B3: $01 $08 $01
    dec d                                         ; $65B6: $15
    jr c, @-$02                                   ; $65B7: $38 $FC

    cp $18                                        ; $65B9: $FE $18
    cp $18                                        ; $65BB: $FE $18
    ld [$7898], sp                                ; $65BD: $08 $98 $78
    ld hl, sp-$08                                 ; $65C0: $F8 $F8
    nop                                           ; $65C2: $00
    add b                                         ; $65C3: $80
    nop                                           ; $65C4: $00
    nop                                           ; $65C5: $00
    ld [$6600], sp                                ; $65C6: $08 $00 $66
    jr nz, jr_04E_65FD                            ; $65C9: $20 $32

    ld h, h                                       ; $65CB: $64
    jr c, jr_04E_660A                             ; $65CC: $38 $3C

    ld [hl], $19                                  ; $65CE: $36 $19
    inc bc                                        ; $65D0: $03
    rrca                                          ; $65D1: $0F
    ld bc, $0001                                  ; $65D2: $01 $01 $00
    ld bc, $0000                                  ; $65D5: $01 $00 $00
    adc b                                         ; $65D8: $88
    inc e                                         ; $65D9: $1C
    db $DC, $0C, $7C
    ld hl, sp-$74                                 ; $65DD: $F8 $8C
    ret nz                                        ; $65DF: $C0

    adc h                                         ; $65E0: $8C
    inc b                                         ; $65E1: $04
    inc l                                         ; $65E2: $2C
    ld e, $B9                                     ; $65E3: $1E $B9
    ld a, [c]                                     ; $65E5: $F2
    ld [hl], e                                    ; $65E6: $73
    ldh [rP1], a                                  ; $65E7: $E0 $00
    nop                                           ; $65E9: $00
    nop                                           ; $65EA: $00
    nop                                           ; $65EB: $00
    nop                                           ; $65EC: $00
    nop                                           ; $65ED: $00
    nop                                           ; $65EE: $00
    nop                                           ; $65EF: $00
    rlca                                          ; $65F0: $07
    nop                                           ; $65F1: $00
    ld b, $41                                     ; $65F2: $06 $41
    push bc                                       ; $65F4: $C5
    ld h, [hl]                                    ; $65F5: $66
    ld a, [hl]                                    ; $65F6: $7E
    rst $38                                       ; $65F7: $FF
    add b                                         ; $65F8: $80
    nop                                           ; $65F9: $00
    sub b                                         ; $65FA: $90
    nop                                           ; $65FB: $00
    sub b                                         ; $65FC: $90

jr_04E_65FD:
    nop                                           ; $65FD: $00
    ld [de], a                                    ; $65FE: $12
    add b                                         ; $65FF: $80
    ld [bc], a                                    ; $6600: $02
    sub b                                         ; $6601: $90
    ld [bc], a                                    ; $6602: $02
    sub b                                         ; $6603: $90
    ld [bc], a                                    ; $6604: $02
    sbc b                                         ; $6605: $98
    sbc [hl]                                      ; $6606: $9E
    cp h                                          ; $6607: $BC

jr_04E_6608:
    nop                                           ; $6608: $00
    nop                                           ; $6609: $00

jr_04E_660A:
    ld [$0800], sp                                ; $660A: $08 $00 $08
    nop                                           ; $660D: $00
    ld [rRAMG], sp                                ; $660E: $08 $00 $00
    nop                                           ; $6611: $00
    inc b                                         ; $6612: $04
    inc b                                         ; $6613: $04
    inc b                                         ; $6614: $04
    inc b                                         ; $6615: $04
    nop                                           ; $6616: $00
    ld h, e                                       ; $6617: $63
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    stop                                          ; $661A: $10 $00
    ld h, b                                       ; $661C: $60
    db $10                                        ; $661D: $10
    ld l, b                                       ; $661E: $68
    db $10                                        ; $661F: $10
    jr jr_04E_6692                                ; $6620: $18 $70

    ld a, [de]                                    ; $6622: $1A
    ldh a, [$50]                                  ; $6623: $F0 $50
    ld a, d                                       ; $6625: $7A
    ld d, d                                       ; $6626: $52
    ld a, d                                       ; $6627: $7A
    nop                                           ; $6628: $00
    nop                                           ; $6629: $00
    nop                                           ; $662A: $00
    nop                                           ; $662B: $00
    nop                                           ; $662C: $00
    nop                                           ; $662D: $00
    nop                                           ; $662E: $00
    nop                                           ; $662F: $00
    ld [bc], a                                    ; $6630: $02
    nop                                           ; $6631: $00
    ld [bc], a                                    ; $6632: $02
    nop                                           ; $6633: $00
    jr @+$04                                      ; $6634: $18 $02

    ld a, l                                       ; $6636: $7D
    ld e, $00                                     ; $6637: $1E $00
    nop                                           ; $6639: $00
    ld [$0800], sp                                ; $663A: $08 $00 $08
    nop                                           ; $663D: $00
    stop                                          ; $663E: $10 $00
    sub b                                         ; $6640: $90
    nop                                           ; $6641: $00
    stop                                          ; $6642: $10 $00
    and b                                         ; $6644: $A0
    db $10                                        ; $6645: $10
    jr nz, @-$0E                                  ; $6646: $20 $F0

    nop                                           ; $6648: $00
    nop                                           ; $6649: $00
    inc b                                         ; $664A: $04
    nop                                           ; $664B: $00
    inc b                                         ; $664C: $04
    nop                                           ; $664D: $00
    inc b                                         ; $664E: $04
    nop                                           ; $664F: $00
    ld bc, $2104                                  ; $6650: $01 $04 $21
    inc b                                         ; $6653: $04
    nop                                           ; $6654: $00
    dec h                                         ; $6655: $25
    and h                                         ; $6656: $A4
    ld h, l                                       ; $6657: $65
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    sbc b                                         ; $665A: $98
    nop                                           ; $665B: $00
    sbc b                                         ; $665C: $98
    nop                                           ; $665D: $00
    ld [rRAMG], sp                                ; $665E: $08 $00 $00
    ld [$0804], sp                                ; $6661: $08 $04 $08
    ld [$0808], sp                                ; $6664: $08 $08 $08
    ld [$0001], sp                                ; $6667: $08 $01 $00
    ld bc, $0000                                  ; $666A: $01 $00 $00
    nop                                           ; $666D: $00
    nop                                           ; $666E: $00
    nop                                           ; $666F: $00
    ld bc, $0100                                  ; $6670: $01 $00 $01
    nop                                           ; $6673: $00
    ld bc, $E000                                  ; $6674: $01 $00 $E0
    ld bc, $0000                                  ; $6677: $01 $00 $00
    nop                                           ; $667A: $00
    nop                                           ; $667B: $00
    nop                                           ; $667C: $00
    nop                                           ; $667D: $00
    stop                                          ; $667E: $10 $00
    stop                                          ; $6680: $10 $00
    stop                                          ; $6682: $10 $00
    nop                                           ; $6684: $00
    stop                                          ; $6685: $10 $00
    ld [de], a                                    ; $6687: $12
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668A: $00
    nop                                           ; $668B: $00
    nop                                           ; $668C: $00
    nop                                           ; $668D: $00
    nop                                           ; $668E: $00
    nop                                           ; $668F: $00
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00

jr_04E_6692:
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    add b                                         ; $6694: $80
    nop                                           ; $6695: $00
    ret nz                                        ; $6696: $C0

    nop                                           ; $6697: $00
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    nop                                           ; $669A: $00
    nop                                           ; $669B: $00
    inc b                                         ; $669C: $04
    nop                                           ; $669D: $00
    inc b                                         ; $669E: $04
    nop                                           ; $669F: $00
    inc b                                         ; $66A0: $04
    nop                                           ; $66A1: $00
    inc b                                         ; $66A2: $04
    nop                                           ; $66A3: $00
    ld [$9000], sp                                ; $66A4: $08 $00 $90
    nop                                           ; $66A7: $00
    nop                                           ; $66A8: $00
    nop                                           ; $66A9: $00
    ld bc, $0300                                  ; $66AA: $01 $00 $03
    nop                                           ; $66AD: $00
    inc bc                                        ; $66AE: $03
    nop                                           ; $66AF: $00
    dec b                                         ; $66B0: $05
    nop                                           ; $66B1: $00
    dec b                                         ; $66B2: $05
    nop                                           ; $66B3: $00
    dec d                                         ; $66B4: $15
    nop                                           ; $66B5: $00
    ld [de], a                                    ; $66B6: $12
    dec b                                         ; $66B7: $05
    nop                                           ; $66B8: $00
    nop                                           ; $66B9: $00
    nop                                           ; $66BA: $00
    nop                                           ; $66BB: $00
    nop                                           ; $66BC: $00
    nop                                           ; $66BD: $00
    nop                                           ; $66BE: $00
    nop                                           ; $66BF: $00
    nop                                           ; $66C0: $00
    nop                                           ; $66C1: $00
    add b                                         ; $66C2: $80
    nop                                           ; $66C3: $00
    add b                                         ; $66C4: $80
    nop                                           ; $66C5: $00
    add b                                         ; $66C6: $80
    nop                                           ; $66C7: $00
    nop                                           ; $66C8: $00
    nop                                           ; $66C9: $00
    nop                                           ; $66CA: $00
    nop                                           ; $66CB: $00
    nop                                           ; $66CC: $00
    nop                                           ; $66CD: $00
    nop                                           ; $66CE: $00
    nop                                           ; $66CF: $00
    nop                                           ; $66D0: $00
    nop                                           ; $66D1: $00
    inc b                                         ; $66D2: $04
    nop                                           ; $66D3: $00
    ld b, $00                                     ; $66D4: $06 $00
    ld h, d                                       ; $66D6: $62
    inc b                                         ; $66D7: $04
    nop                                           ; $66D8: $00
    nop                                           ; $66D9: $00
    nop                                           ; $66DA: $00
    nop                                           ; $66DB: $00
    ld [$0800], sp                                ; $66DC: $08 $00 $08
    nop                                           ; $66DF: $00
    ld [$0800], sp                                ; $66E0: $08 $00 $08
    nop                                           ; $66E3: $00
    ld [rRAMG], sp                                ; $66E4: $08 $00 $00
    ld [$FF7F], sp                                ; $66E7: $08 $7F $FF
    cp $7E                                        ; $66EA: $FE $7E
    nop                                           ; $66EC: $00
    ld a, h                                       ; $66ED: $7C
    ld a, [bc]                                    ; $66EE: $0A
    inc a                                         ; $66EF: $3C
    ld a, [hl]                                    ; $66F0: $7E
    inc a                                         ; $66F1: $3C

jr_04E_66F2:
    ld a, h                                       ; $66F2: $7C
    ld a, $6B                                     ; $66F3: $3E $6B
    jr nc, jr_04E_66F2                            ; $66F5: $30 $FB

    ld [hl], b                                    ; $66F7: $70
    cp $FC                                        ; $66F8: $FE $FC
    ld e, a                                       ; $66FA: $5F
    cp h                                          ; $66FB: $BC
    inc a                                         ; $66FC: $3C
    ldh a, [$F4]                                  ; $66FD: $F0 $F4
    ldh a, [$FC]                                  ; $66FF: $F0 $FC
    ldh a, [$FC]                                  ; $6701: $F0 $FC
    ld hl, sp-$30                                 ; $6703: $F8 $D0
    add sp, -$80                                  ; $6705: $E8 $80
    ret z                                         ; $6707: $C8

    rst $38                                       ; $6708: $FF
    rst $38                                       ; $6709: $FF
    rst $20                                       ; $670A: $E7
    add hl, de                                    ; $670B: $19
    nop                                           ; $670C: $00
    ld a, [de]                                    ; $670D: $1A
    nop                                           ; $670E: $00
    dec sp                                        ; $670F: $3B
    rlca                                          ; $6710: $07
    dec sp                                        ; $6711: $3B
    inc c                                         ; $6712: $0C
    ccf                                           ; $6713: $3F
    ld e, $1F                                     ; $6714: $1E $1F
    rra                                           ; $6716: $1F
    ld e, $FC                                     ; $6717: $1E $FC
    db $FC                                        ; $6719: $FC
    db $F4                                        ; $671A: $F4
    cp b                                          ; $671B: $B8
    ldh a, [$B8]                                  ; $671C: $F0 $B8
    ldh a, [$F8]                                  ; $671E: $F0 $F8
    ldh a, [$F8]                                  ; $6720: $F0 $F8
    ld b, b                                       ; $6722: $40
    jr c, jr_04E_6725                             ; $6723: $38 $00

jr_04E_6725:
    ld hl, sp-$78                                 ; $6725: $F8 $88
    ld a, b                                       ; $6727: $78
    halt                                          ; $6728: $76
    add hl, sp                                    ; $6729: $39
    ldh a, [$FB]                                  ; $672A: $F0 $FB
    ldh a, [$E3]                                  ; $672C: $F0 $E3
    db $EB                                        ; $672E: $EB
    rst $20                                       ; $672F: $E7
    rst $30                                       ; $6730: $F7
    cpl                                           ; $6731: $2F
    ld a, l                                       ; $6732: $7D
    ld a, [hl]                                    ; $6733: $7E
    or $79                                        ; $6734: $F6 $79
    jp $E6E0                                      ; $6736: $C3 $E0 $E6


    sbc b                                         ; $6739: $98
    and $88                                       ; $673A: $E6 $88
    and b                                         ; $673C: $A0
    adc $C0                                       ; $673D: $CE $C0
    xor [hl]                                      ; $673F: $AE
    ret nz                                        ; $6740: $C0

    xor [hl]                                      ; $6741: $AE
    ret                                           ; $6742: $C9


    cpl                                           ; $6743: $2F
    ld c, [hl]                                    ; $6744: $4E
    xor a                                         ; $6745: $AF
    inc c                                         ; $6746: $0C
    ldh a, [$FC]                                  ; $6747: $F0 $FC
    ld a, [hl]                                    ; $6749: $7E
    inc bc                                        ; $674A: $03
    rst $38                                       ; $674B: $FF
    db $10                                        ; $674C: $10
    ld bc, $0112                                  ; $674D: $01 $12 $01
    inc sp                                        ; $6750: $33
    ld bc, $0133                                  ; $6751: $01 $33 $01
    ld e, [hl]                                    ; $6754: $5E
    ld hl, $3D52                                  ; $6755: $21 $52 $3D
    jr jr_04E_6772                                ; $6758: $18 $18

    ld hl, sp-$04                                 ; $675A: $F8 $FC
    or b                                          ; $675C: $B0
    inc a                                         ; $675D: $3C
    or b                                          ; $675E: $B0
    ldh a, [$F0]                                  ; $675F: $F0 $F0
    ldh a, [$38]                                  ; $6761: $F0 $38
    sbc b                                         ; $6763: $98
    sbc h                                         ; $6764: $9C
    ld c, b                                       ; $6765: $48
    adc b                                         ; $6766: $88
    ld e, h                                       ; $6767: $5C
    ret nz                                        ; $6768: $C0

    inc bc                                        ; $6769: $03
    nop                                           ; $676A: $00
    ld bc, $0000                                  ; $676B: $01 $00 $00
    nop                                           ; $676E: $00
    inc b                                         ; $676F: $04
    jr nz, jr_04E_6776                            ; $6770: $20 $04

jr_04E_6772:
    jr nz, jr_04E_6774                            ; $6772: $20 $00

jr_04E_6774:
    jr z, jr_04E_6776                             ; $6774: $28 $00

jr_04E_6776:
    inc b                                         ; $6776: $04
    jr nz, jr_04E_6779                            ; $6777: $20 $00

jr_04E_6779:
    sub b                                         ; $6779: $90
    nop                                           ; $677A: $00
    stop                                          ; $677B: $10 $00
    jr nc, jr_04E_679F                            ; $677D: $30 $20

    nop                                           ; $677F: $00
    jr c, jr_04E_6782                             ; $6780: $38 $00

jr_04E_6782:
    jr nc, jr_04E_6784                            ; $6782: $30 $00

jr_04E_6784:
    nop                                           ; $6784: $00
    stop                                          ; $6785: $10 $00
    jr nc, jr_04E_67CA                            ; $6787: $30 $41

    add b                                         ; $6789: $80
    nop                                           ; $678A: $00
    pop bc                                        ; $678B: $C1
    nop                                           ; $678C: $00
    ld b, b                                       ; $678D: $40
    nop                                           ; $678E: $00
    ld bc, $0000                                  ; $678F: $01 $00 $00
    ld [$0C00], sp                                ; $6792: $08 $00 $0C
    nop                                           ; $6795: $00
    rrca                                          ; $6796: $0F
    nop                                           ; $6797: $00
    ld d, b                                       ; $6798: $50
    adc h                                         ; $6799: $8C
    ld b, b                                       ; $679A: $40
    sbc b                                         ; $679B: $98
    nop                                           ; $679C: $00
    ldh a, [rP1]                                  ; $679D: $F0 $00

jr_04E_679F:
    nop                                           ; $679F: $00
    nop                                           ; $67A0: $00
    nop                                           ; $67A1: $00
    nop                                           ; $67A2: $00
    nop                                           ; $67A3: $00
    nop                                           ; $67A4: $00
    nop                                           ; $67A5: $00
    nop                                           ; $67A6: $00
    nop                                           ; $67A7: $00
    ld d, $09                                     ; $67A8: $16 $09
    inc a                                         ; $67AA: $3C
    inc bc                                        ; $67AB: $03
    jr nz, jr_04E_67B5                            ; $67AC: $20 $07

    jr nz, @+$09                                  ; $67AE: $20 $07

    jr nc, jr_04E_67B9                            ; $67B0: $30 $07

    nop                                           ; $67B2: $00
    rra                                           ; $67B3: $1F
    ld b, b                                       ; $67B4: $40

jr_04E_67B5:
    rra                                           ; $67B5: $1F
    ld bc, $0040                                  ; $67B6: $01 $40 $00

jr_04E_67B9:
    add b                                         ; $67B9: $80
    nop                                           ; $67BA: $00
    add b                                         ; $67BB: $80
    nop                                           ; $67BC: $00
    add b                                         ; $67BD: $80
    jr nz, jr_04E_67C0                            ; $67BE: $20 $00

jr_04E_67C0:
    nop                                           ; $67C0: $00
    ld h, b                                       ; $67C1: $60
    nop                                           ; $67C2: $00
    add b                                         ; $67C3: $80
    ret nz                                        ; $67C4: $C0

    ld c, $C8                                     ; $67C5: $0E $C8
    ld b, $42                                     ; $67C7: $06 $42
    inc c                                         ; $67C9: $0C

jr_04E_67CA:
    ld b, b                                       ; $67CA: $40
    ld b, $00                                     ; $67CB: $06 $00
    nop                                           ; $67CD: $00
    nop                                           ; $67CE: $00
    nop                                           ; $67CF: $00
    nop                                           ; $67D0: $00
    nop                                           ; $67D1: $00
    nop                                           ; $67D2: $00
    nop                                           ; $67D3: $00
    nop                                           ; $67D4: $00
    nop                                           ; $67D5: $00
    jr jr_04E_67D8                                ; $67D6: $18 $00

jr_04E_67D8:
    nop                                           ; $67D8: $00
    jr z, jr_04E_67DB                             ; $67D9: $28 $00

jr_04E_67DB:
    ld [$0018], sp                                ; $67DB: $08 $18 $00
    ld [rRAMG], sp                                ; $67DE: $08 $00 $00
    nop                                           ; $67E1: $00
    nop                                           ; $67E2: $00
    nop                                           ; $67E3: $00
    nop                                           ; $67E4: $00
    nop                                           ; $67E5: $00
    nop                                           ; $67E6: $00
    nop                                           ; $67E7: $00
    ei                                            ; $67E8: $FB
    jr nc, @+$37                                  ; $67E9: $30 $35

    jr c, @+$40                                   ; $67EB: $38 $3E

    dec e                                         ; $67ED: $1D
    inc e                                         ; $67EE: $1C
    inc sp                                        ; $67EF: $33
    inc d                                         ; $67F0: $14
    dec sp                                        ; $67F1: $3B
    ld e, $1B                                     ; $67F2: $1E $1B
    rra                                           ; $67F4: $1F
    rrca                                          ; $67F5: $0F
    rlca                                          ; $67F6: $07
    rlca                                          ; $67F7: $07
    ld h, b                                       ; $67F8: $60
    ret c                                         ; $67F9: $D8

    ld d, b                                       ; $67FA: $50
    add sp, $20                                   ; $67FB: $E8 $20
    ld hl, sp+$28                                 ; $67FD: $F8 $28
    ld hl, sp+$78                                 ; $67FF: $F8 $78
    ldh a, [$60]                                  ; $6801: $F0 $60
    ldh a, [$C0]                                  ; $6803: $F0 $C0
    ldh [rLCDC], a                                ; $6805: $E0 $40
    add b                                         ; $6807: $80
    rra                                           ; $6808: $1F
    dec de                                        ; $6809: $1B
    ld e, $13                                     ; $680A: $1E $13
    ccf                                           ; $680C: $3F
    ld [bc], a                                    ; $680D: $02
    cpl                                           ; $680E: $2F
    ld [hl], $30                                  ; $680F: $36 $30
    rra                                           ; $6811: $1F
    db $10                                        ; $6812: $10
    rrca                                          ; $6813: $0F
    dec bc                                        ; $6814: $0B
    inc c                                         ; $6815: $0C
    inc c                                         ; $6816: $0C
    rlca                                          ; $6817: $07
    ld hl, sp+$18                                 ; $6818: $F8 $18
    cp h                                          ; $681A: $BC
    ld e, b                                       ; $681B: $58
    inc a                                         ; $681C: $3C
    ld c, b                                       ; $681D: $48
    inc e                                         ; $681E: $1C
    ld [$8804], sp                                ; $681F: $08 $04 $88
    nop                                           ; $6822: $00
    add b                                         ; $6823: $80
    add b                                         ; $6824: $80
    nop                                           ; $6825: $00
    ld b, b                                       ; $6826: $40
    add b                                         ; $6827: $80
    ld [c], a                                     ; $6828: $E2
    ret nz                                        ; $6829: $C0

    jp $B181                                      ; $682A: $C3 $81 $B1


    ld c, a                                       ; $682D: $4F

jr_04E_682E:
    inc c                                         ; $682E: $0C
    inc bc                                        ; $682F: $03
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    add b                                         ; $6838: $80
    add b                                         ; $6839: $80
    ret nz                                        ; $683A: $C0

    ret nz                                        ; $683B: $C0

    add b                                         ; $683C: $80
    ret nz                                        ; $683D: $C0

    nop                                           ; $683E: $00
    ret nz                                        ; $683F: $C0

    jr nz, @-$3E                                  ; $6840: $20 $C0

    ld h, b                                       ; $6842: $60
    ld b, b                                       ; $6843: $40
    jr nz, jr_04E_68A6                            ; $6844: $20 $60

    jr nz, jr_04E_68A8                            ; $6846: $20 $60

    ld [hl-], a                                   ; $6848: $32
    ld a, l                                       ; $6849: $7D
    inc h                                         ; $684A: $24
    ld [hl], e                                    ; $684B: $73
    jr c, jr_04E_68C5                             ; $684C: $38 $77

    ccf                                           ; $684E: $3F
    dec sp                                        ; $684F: $3B
    inc sp                                        ; $6850: $33
    ld e, $02                                     ; $6851: $1E $02
    inc bc                                        ; $6853: $03
    nop                                           ; $6854: $00
    ld bc, $0100                                  ; $6855: $01 $00 $01
    db $EC                                        ; $6858: $EC
    ld e, h                                       ; $6859: $5C
    ld e, [hl]                                    ; $685A: $5E
    db $FC                                        ; $685B: $FC
    cp $F8                                        ; $685C: $FE $F8
    add h                                         ; $685E: $84
    ld a, [$FE04]                                 ; $685F: $FA $04 $FE
    ld a, l                                       ; $6862: $7D
    ld a, [hl]                                    ; $6863: $7E
    ld sp, hl                                     ; $6864: $F9
    ld [hl], d                                    ; $6865: $72
    ld h, e                                       ; $6866: $63
    ret nz                                        ; $6867: $C0

    ld d, $20                                     ; $6868: $16 $20
    jr jr_04E_6892                                ; $686A: $18 $26

    ld [$0C04], sp                                ; $686C: $08 $04 $0C
    nop                                           ; $686F: $00
    inc c                                         ; $6870: $0C
    ld [hl], b                                    ; $6871: $70
    ld h, b                                       ; $6872: $60
    inc e                                         ; $6873: $1C
    jr nc, @+$0E                                  ; $6874: $30 $0C

    nop                                           ; $6876: $00
    inc c                                         ; $6877: $0C
    nop                                           ; $6878: $00
    stop                                          ; $6879: $10 $00
    stop                                          ; $687B: $10 $00
    db $10                                        ; $687D: $10
    ld [$0410], sp                                ; $687E: $08 $10 $04
    stop                                          ; $6881: $10 $00
    stop                                          ; $6883: $10 $00
    jr nc, jr_04E_6887                            ; $6885: $30 $00

jr_04E_6887:
    nop                                           ; $6887: $00
    dec b                                         ; $6888: $05
    ld [bc], a                                    ; $6889: $02
    inc b                                         ; $688A: $04
    inc bc                                        ; $688B: $03
    ld [bc], a                                    ; $688C: $02
    nop                                           ; $688D: $00
    ld [bc], a                                    ; $688E: $02
    nop                                           ; $688F: $00
    rlca                                          ; $6890: $07
    nop                                           ; $6891: $00

jr_04E_6892:
    ld b, $00                                     ; $6892: $06 $00
    inc b                                         ; $6894: $04
    ld bc, $010C                                  ; $6895: $01 $0C $01
    nop                                           ; $6898: $00
    add b                                         ; $6899: $80
    nop                                           ; $689A: $00
    nop                                           ; $689B: $00
    jr nz, jr_04E_682E                            ; $689C: $20 $90

    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    add b                                         ; $68A0: $80
    nop                                           ; $68A1: $00
    add b                                         ; $68A2: $80
    nop                                           ; $68A3: $00
    nop                                           ; $68A4: $00
    nop                                           ; $68A5: $00

jr_04E_68A6:
    nop                                           ; $68A6: $00
    nop                                           ; $68A7: $00

jr_04E_68A8:
    ld bc, $20C0                                  ; $68A8: $01 $C0 $20
    nop                                           ; $68AB: $00
    ld [hl], c                                    ; $68AC: $71
    nop                                           ; $68AD: $00
    ld [hl], c                                    ; $68AE: $71
    nop                                           ; $68AF: $00
    inc c                                         ; $68B0: $0C
    inc bc                                        ; $68B1: $03
    nop                                           ; $68B2: $00
    nop                                           ; $68B3: $00
    nop                                           ; $68B4: $00
    nop                                           ; $68B5: $00
    nop                                           ; $68B6: $00
    nop                                           ; $68B7: $00
    adc b                                         ; $68B8: $88
    nop                                           ; $68B9: $00
    add b                                         ; $68BA: $80
    nop                                           ; $68BB: $00
    and b                                         ; $68BC: $A0
    ld b, b                                       ; $68BD: $40
    jr nc, @-$3E                                  ; $68BE: $30 $C0

    add b                                         ; $68C0: $80
    ld b, b                                       ; $68C1: $40
    ld b, b                                       ; $68C2: $40
    nop                                           ; $68C3: $00
    nop                                           ; $68C4: $00

jr_04E_68C5:
    nop                                           ; $68C5: $00

jr_04E_68C6:
    nop                                           ; $68C6: $00
    jr nz, jr_04E_68E9                            ; $68C7: $20 $20

    nop                                           ; $68C9: $00
    jr nz, jr_04E_68CC                            ; $68CA: $20 $00

jr_04E_68CC:
    ld h, h                                       ; $68CC: $64
    ld [$0A65], sp                                ; $68CD: $08 $65 $0A
    rrca                                          ; $68D0: $0F
    nop                                           ; $68D1: $00
    dec bc                                        ; $68D2: $0B
    nop                                           ; $68D3: $00
    ld [bc], a                                    ; $68D4: $02
    nop                                           ; $68D5: $00
    nop                                           ; $68D6: $00
    nop                                           ; $68D7: $00
    nop                                           ; $68D8: $00
    nop                                           ; $68D9: $00
    inc d                                         ; $68DA: $14
    ld [$1020], sp                                ; $68DB: $08 $20 $10
    adc b                                         ; $68DE: $88
    inc b                                         ; $68DF: $04
    add b                                         ; $68E0: $80
    inc b                                         ; $68E1: $04
    ret nz                                        ; $68E2: $C0

    nop                                           ; $68E3: $00
    jr z, jr_04E_68A6                             ; $68E4: $28 $C0

    db $10                                        ; $68E6: $10
    ret nz                                        ; $68E7: $C0

    nop                                           ; $68E8: $00

jr_04E_68E9:
    nop                                           ; $68E9: $00
    nop                                           ; $68EA: $00
    nop                                           ; $68EB: $00
    nop                                           ; $68EC: $00
    nop                                           ; $68ED: $00
    nop                                           ; $68EE: $00
    nop                                           ; $68EF: $00
    ld [bc], a                                    ; $68F0: $02
    nop                                           ; $68F1: $00
    rrca                                          ; $68F2: $0F
    nop                                           ; $68F3: $00
    jr c, jr_04E_68FD                             ; $68F4: $38 $07

    ld bc, $001F                                  ; $68F6: $01 $1F $00
    nop                                           ; $68F9: $00
    nop                                           ; $68FA: $00
    nop                                           ; $68FB: $00
    nop                                           ; $68FC: $00

jr_04E_68FD:
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    ret nz                                        ; $6902: $C0

    nop                                           ; $6903: $00
    jr nc, jr_04E_68C6                            ; $6904: $30 $C0

    ret c                                         ; $6906: $D8

    ldh [$2F], a                                  ; $6907: $E0 $2F
    rra                                           ; $6909: $1F
    ld e, l                                       ; $690A: $5D
    ccf                                           ; $690B: $3F
    ld e, [hl]                                    ; $690C: $5E
    ccf                                           ; $690D: $3F
    ld e, a                                       ; $690E: $5F
    ccf                                           ; $690F: $3F
    ld e, a                                       ; $6910: $5F
    ccf                                           ; $6911: $3F
    rst $18                                       ; $6912: $DF
    ccf                                           ; $6913: $3F
    add a                                         ; $6914: $87
    ld a, a                                       ; $6915: $7F
    ld d, c                                       ; $6916: $51
    rst $38                                       ; $6917: $FF
    add sp, -$10                                  ; $6918: $E8 $F0
    db $F4                                        ; $691A: $F4
    ld hl, sp-$04                                 ; $691B: $F8 $FC
    ldh a, [$E4]                                  ; $691D: $F0 $E4
    ld hl, sp-$7A                                 ; $691F: $F8 $86
    ld hl, sp-$6D                                 ; $6921: $F8 $93
    db $EC                                        ; $6923: $EC
    or c                                          ; $6924: $B1
    adc $70                                       ; $6925: $CE $70
    adc a                                         ; $6927: $8F
    inc bc                                        ; $6928: $03
    nop                                           ; $6929: $00
    ld [bc], a                                    ; $692A: $02
    ld bc, $0102                                  ; $692B: $01 $02 $01
    inc b                                         ; $692E: $04
    inc bc                                        ; $692F: $03
    inc b                                         ; $6930: $04
    inc bc                                        ; $6931: $03
    ld b, $01                                     ; $6932: $06 $01
    rlca                                          ; $6934: $07
    nop                                           ; $6935: $00
    ld bc, $0400                                  ; $6936: $01 $00 $04
    ei                                            ; $6939: $FB
    ld c, h                                       ; $693A: $4C
    di                                            ; $693B: $F3
    inc h                                         ; $693C: $24
    ei                                            ; $693D: $FB
    pop af                                        ; $693E: $F1
    rst $38                                       ; $693F: $FF
    ei                                            ; $6940: $FB
    rst $38                                       ; $6941: $FF
    ld hl, sp-$01                                 ; $6942: $F8 $FF
    db $10                                        ; $6944: $10
    rst $38                                       ; $6945: $FF
    pop bc                                        ; $6946: $C1
    ld a, $28                                     ; $6947: $3E $28
    rst $00                                       ; $6949: $C7
    cp d                                          ; $694A: $BA
    rst $00                                       ; $694B: $C7
    db $10                                        ; $694C: $10
    rst $28                                       ; $694D: $EF
    add $FF                                       ; $694E: $C6 $FF
    add sp, -$01                                  ; $6950: $E8 $FF
    db $FD                                        ; $6952: $FD
    cp $01                                        ; $6953: $FE $01
    cp $0A                                        ; $6955: $FE $0A
    db $FC                                        ; $6957: $FC
    inc sp                                        ; $6958: $33
    inc c                                         ; $6959: $0C
    ld de, $300E                                  ; $695A: $11 $0E $30
    rrca                                          ; $695D: $0F
    db $10                                        ; $695E: $10
    rrca                                          ; $695F: $0F
    inc sp                                        ; $6960: $33
    inc c                                         ; $6961: $0C
    ld h, h                                       ; $6962: $64
    dec de                                        ; $6963: $1B
    scf                                           ; $6964: $37
    ld [$003F], sp                                ; $6965: $08 $3F $00
    jp nz, $E23C                                  ; $6968: $C2 $3C $E2

    inc e                                         ; $696B: $1C
    jp nz, $843C                                  ; $696C: $C2 $3C $84

    ld a, b                                       ; $696F: $78
    ld c, h                                       ; $6970: $4C
    or b                                          ; $6971: $B0
    adc h                                         ; $6972: $8C
    ld [hl], b                                    ; $6973: $70
    ld e, b                                       ; $6974: $58
    and b                                         ; $6975: $A0
    ld hl, sp+$00                                 ; $6976: $F8 $00

jr_04E_6978:
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    nop                                           ; $697A: $00
    nop                                           ; $697B: $00
    nop                                           ; $697C: $00
    nop                                           ; $697D: $00
    nop                                           ; $697E: $00
    nop                                           ; $697F: $00
    rlca                                          ; $6980: $07
    nop                                           ; $6981: $00
    inc c                                         ; $6982: $0C
    inc bc                                        ; $6983: $03
    inc sp                                        ; $6984: $33
    rrca                                          ; $6985: $0F
    ld h, $1F                                     ; $6986: $26 $1F
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698A: $00
    nop                                           ; $698B: $00
    nop                                           ; $698C: $00
    nop                                           ; $698D: $00
    nop                                           ; $698E: $00
    nop                                           ; $698F: $00
    ldh [rP1], a                                  ; $6990: $E0 $00
    jr nc, @-$3E                                  ; $6992: $30 $C0

    or b                                          ; $6994: $B0
    ret nz                                        ; $6995: $C0

    jr jr_04E_6978                                ; $6996: $18 $E0

    dec hl                                        ; $6998: $2B
    rra                                           ; $6999: $1F
    ld e, h                                       ; $699A: $5C
    ccf                                           ; $699B: $3F
    ld a, [hl+]                                   ; $699C: $2A
    rra                                           ; $699D: $1F
    ld [hl], l                                    ; $699E: $75
    rra                                           ; $699F: $1F
    ld c, b                                       ; $69A0: $48
    ccf                                           ; $69A1: $3F
    ld b, d                                       ; $69A2: $42
    ccf                                           ; $69A3: $3F
    add b                                         ; $69A4: $80
    ld a, a                                       ; $69A5: $7F
    adc c                                         ; $69A6: $89
    ld [hl], a                                    ; $69A7: $77
    ld c, h                                       ; $69A8: $4C
    ldh a, [$A4]                                  ; $69A9: $F0 $A4
    ld hl, sp-$7A                                 ; $69AB: $F8 $86
    ld hl, sp+$0A                                 ; $69AD: $F8 $0A
    db $F4                                        ; $69AF: $F4
    inc sp                                        ; $69B0: $33
    call z, $8E71                                 ; $69B1: $CC $71 $8E
    ld d, c                                       ; $69B4: $51
    adc [hl]                                      ; $69B5: $8E
    ld e, c                                       ; $69B6: $59
    add [hl]                                      ; $69B7: $86
    cp l                                          ; $69B8: $BD
    ld b, e                                       ; $69B9: $43
    sbc c                                         ; $69BA: $99
    ld h, a                                       ; $69BB: $67
    adc b                                         ; $69BC: $88
    ld [hl], a                                    ; $69BD: $77
    nop                                           ; $69BE: $00
    rst $38                                       ; $69BF: $FF
    ld a, b                                       ; $69C0: $78
    rst $38                                       ; $69C1: $FF
    ld bc, wScript_Scroll_CopySource                                  ; $69C2: $01 $FE $C6
    jr c, jr_04E_6A2B                             ; $69C5: $38 $64

    jr jr_04E_69F9                                ; $69C7: $18 $30

    rst $08                                       ; $69C9: $CF
    or h                                          ; $69CA: $B4
    rst $08                                       ; $69CB: $CF
    ld [bc], a                                    ; $69CC: $02
    rst $38                                       ; $69CD: $FF
    inc b                                         ; $69CE: $04
    rst $38                                       ; $69CF: $FF
    ld bc, $47FE                                  ; $69D0: $01 $FE $47
    jr c, jr_04E_6A17                             ; $69D3: $38 $42

    inc a                                         ; $69D5: $3C
    ld h, d                                       ; $69D6: $62
    inc e                                         ; $69D7: $1C
    ld h, [hl]                                    ; $69D8: $66
    jr jr_04E_69FB                                ; $69D9: $18 $20

    inc e                                         ; $69DB: $1C
    ld h, $18                                     ; $69DC: $26 $18
    ld [hl-], a                                   ; $69DE: $32
    inc c                                         ; $69DF: $0C
    ld d, $08                                     ; $69E0: $16 $08
    inc sp                                        ; $69E2: $33
    inc c                                         ; $69E3: $0C
    inc de                                        ; $69E4: $13
    inc c                                         ; $69E5: $0C
    ld hl, $2A1E                                  ; $69E6: $21 $1E $2A
    inc e                                         ; $69E9: $1C
    ld [hl+], a                                   ; $69EA: $22
    inc e                                         ; $69EB: $1C
    ld [hl-], a                                   ; $69EC: $32
    inc c                                         ; $69ED: $0C
    inc [hl]                                      ; $69EE: $34
    ld [$102E], sp                                ; $69EF: $08 $2E $10
    inc [hl]                                      ; $69F2: $34
    ld [$007C], sp                                ; $69F3: $08 $7C $00
    add sp, $10                                   ; $69F6: $E8 $10
    ld l, b                                       ; $69F8: $68

jr_04E_69F9:
    rra                                           ; $69F9: $1F
    add c                                         ; $69FA: $81

jr_04E_69FB:
    ld a, [hl]                                    ; $69FB: $7E
    add e                                         ; $69FC: $83
    ld a, h                                       ; $69FD: $7C
    adc h                                         ; $69FE: $8C
    ld [hl], b                                    ; $69FF: $70
    ldh a, [rP1]                                  ; $6A00: $F0 $00
    nop                                           ; $6A02: $00
    nop                                           ; $6A03: $00
    nop                                           ; $6A04: $00
    nop                                           ; $6A05: $00
    nop                                           ; $6A06: $00
    nop                                           ; $6A07: $00
    or b                                          ; $6A08: $B0
    ld b, b                                       ; $6A09: $40
    ldh a, [rP1]                                  ; $6A0A: $F0 $00
    ret nz                                        ; $6A0C: $C0

    nop                                           ; $6A0D: $00
    nop                                           ; $6A0E: $00
    nop                                           ; $6A0F: $00
    nop                                           ; $6A10: $00
    nop                                           ; $6A11: $00
    nop                                           ; $6A12: $00
    nop                                           ; $6A13: $00
    nop                                           ; $6A14: $00
    nop                                           ; $6A15: $00
    nop                                           ; $6A16: $00

jr_04E_6A17:
    nop                                           ; $6A17: $00
    nop                                           ; $6A18: $00
    nop                                           ; $6A19: $00
    nop                                           ; $6A1A: $00
    nop                                           ; $6A1B: $00
    nop                                           ; $6A1C: $00
    nop                                           ; $6A1D: $00
    nop                                           ; $6A1E: $00
    nop                                           ; $6A1F: $00
    inc bc                                        ; $6A20: $03
    nop                                           ; $6A21: $00
    dec bc                                        ; $6A22: $0B
    nop                                           ; $6A23: $00
    ld c, $01                                     ; $6A24: $0E $01
    inc e                                         ; $6A26: $1C
    inc bc                                        ; $6A27: $03
    nop                                           ; $6A28: $00
    nop                                           ; $6A29: $00
    nop                                           ; $6A2A: $00

jr_04E_6A2B:
    nop                                           ; $6A2B: $00
    nop                                           ; $6A2C: $00
    nop                                           ; $6A2D: $00
    jr nz, jr_04E_6A30                            ; $6A2E: $20 $00

jr_04E_6A30:
    ld hl, sp+$00                                 ; $6A30: $F8 $00
    db $FC                                        ; $6A32: $FC
    nop                                           ; $6A33: $00
    ld e, h                                       ; $6A34: $5C
    and b                                         ; $6A35: $A0
    cp h                                          ; $6A36: $BC
    ld b, b                                       ; $6A37: $40
    add hl, bc                                    ; $6A38: $09
    ld b, $1D                                     ; $6A39: $06 $1D
    ld [bc], a                                    ; $6A3B: $02
    ld c, $01                                     ; $6A3C: $0E $01
    rrca                                          ; $6A3E: $0F
    nop                                           ; $6A3F: $00
    rra                                           ; $6A40: $1F
    nop                                           ; $6A41: $00
    ld a, a                                       ; $6A42: $7F
    nop                                           ; $6A43: $00
    ld l, a                                       ; $6A44: $6F
    db $10                                        ; $6A45: $10
    rst $18                                       ; $6A46: $DF
    jr nz, jr_04E_6AC1                            ; $6A47: $20 $78

    add b                                         ; $6A49: $80
    db $EC                                        ; $6A4A: $EC
    nop                                           ; $6A4B: $00
    sbc $00                                       ; $6A4C: $DE $00
    add $00                                       ; $6A4E: $C6 $00
    adc $00                                       ; $6A50: $CE $00
    rst $00                                       ; $6A52: $C7
    nop                                           ; $6A53: $00
    rst $20                                       ; $6A54: $E7
    nop                                           ; $6A55: $00
    ld h, a                                       ; $6A56: $67
    add b                                         ; $6A57: $80
    db $ED                                        ; $6A58: $ED
    db $10                                        ; $6A59: $10
    sbc $21                                       ; $6A5A: $DE $21
    rst $38                                       ; $6A5C: $FF
    nop                                           ; $6A5D: $00
    xor $11                                       ; $6A5E: $EE $11
    ld a, l                                       ; $6A60: $7D
    nop                                           ; $6A61: $00
    ld a, b                                       ; $6A62: $78
    nop                                           ; $6A63: $00
    ld a, b                                       ; $6A64: $78
    nop                                           ; $6A65: $00
    jr c, jr_04E_6A68                             ; $6A66: $38 $00

jr_04E_6A68:
    ld a, a                                       ; $6A68: $7F
    add b                                         ; $6A69: $80
    sbc c                                         ; $6A6A: $99
    ld h, [hl]                                    ; $6A6B: $66
    daa                                           ; $6A6C: $27
    ret c                                         ; $6A6D: $D8

    xor c                                         ; $6A6E: $A9
    ld d, [hl]                                    ; $6A6F: $56
    rst $10                                       ; $6A70: $D7

jr_04E_6A71:
    jr z, jr_04E_6A71                             ; $6A71: $28 $FE

    nop                                           ; $6A73: $00
    ld l, h                                       ; $6A74: $6C
    db $10                                        ; $6A75: $10
    ld l, h                                       ; $6A76: $6C
    db $10                                        ; $6A77: $10
    inc a                                         ; $6A78: $3C
    nop                                           ; $6A79: $00
    inc a                                         ; $6A7A: $3C
    nop                                           ; $6A7B: $00
    inc a                                         ; $6A7C: $3C
    nop                                           ; $6A7D: $00
    inc a                                         ; $6A7E: $3C
    nop                                           ; $6A7F: $00
    inc e                                         ; $6A80: $1C
    nop                                           ; $6A81: $00
    ld a, $00                                     ; $6A82: $3E $00
    ld e, $00                                     ; $6A84: $1E $00
    ld e, $00                                     ; $6A86: $1E $00
    ld l, [hl]                                    ; $6A88: $6E
    db $10                                        ; $6A89: $10
    halt                                          ; $6A8A: $76
    ld [$003E], sp                                ; $6A8B: $08 $3E $00
    inc [hl]                                      ; $6A8E: $34
    ld [$003E], sp                                ; $6A8F: $08 $3E $00
    ld d, $08                                     ; $6A92: $16 $08
    inc a                                         ; $6A94: $3C
    nop                                           ; $6A95: $00
    ld c, $00                                     ; $6A96: $0E $00
    ld a, [de]                                    ; $6A98: $1A
    inc b                                         ; $6A99: $04
    ld e, $00                                     ; $6A9A: $1E $00
    ld e, $00                                     ; $6A9C: $1E $00
    ld e, $00                                     ; $6A9E: $1E $00
    rra                                           ; $6AA0: $1F
    nop                                           ; $6AA1: $00
    rrca                                          ; $6AA2: $0F
    nop                                           ; $6AA3: $00
    ld b, $00                                     ; $6AA4: $06 $00
    nop                                           ; $6AA6: $00
    nop                                           ; $6AA7: $00
    inc e                                         ; $6AA8: $1C
    nop                                           ; $6AA9: $00
    inc c                                         ; $6AAA: $0C
    nop                                           ; $6AAB: $00
    ld a, $00                                     ; $6AAC: $3E $00
    db $FC                                        ; $6AAE: $FC
    nop                                           ; $6AAF: $00
    db $FC                                        ; $6AB0: $FC
    nop                                           ; $6AB1: $00
    ld a, b                                       ; $6AB2: $78
    nop                                           ; $6AB3: $00
    xor b                                         ; $6AB4: $A8
    nop                                           ; $6AB5: $00
    ld d, b                                       ; $6AB6: $50
    nop                                           ; $6AB7: $00
    nop                                           ; $6AB8: $00
    nop                                           ; $6AB9: $00
    nop                                           ; $6ABA: $00
    nop                                           ; $6ABB: $00
    nop                                           ; $6ABC: $00
    nop                                           ; $6ABD: $00
    ld bc, $0100                                  ; $6ABE: $01 $00 $01

jr_04E_6AC1:
    nop                                           ; $6AC1: $00
    ld [bc], a                                    ; $6AC2: $02
    nop                                           ; $6AC3: $00
    ld bc, $0700                                  ; $6AC4: $01 $00 $07
    nop                                           ; $6AC7: $00
    rra                                           ; $6AC8: $1F
    nop                                           ; $6AC9: $00
    ld a, $00                                     ; $6ACA: $3E $00
    cp e                                          ; $6ACC: $BB
    nop                                           ; $6ACD: $00
    db $FD                                        ; $6ACE: $FD
    nop                                           ; $6ACF: $00
    pop af                                        ; $6AD0: $F1
    nop                                           ; $6AD1: $00
    cp c                                          ; $6AD2: $B9
    nop                                           ; $6AD3: $00
    ld d, l                                       ; $6AD4: $55
    nop                                           ; $6AD5: $00
    jp hl                                         ; $6AD6: $E9


    nop                                           ; $6AD7: $00
    nop                                           ; $6AD8: $00
    nop                                           ; $6AD9: $00
    add b                                         ; $6ADA: $80
    nop                                           ; $6ADB: $00
    ret nz                                        ; $6ADC: $C0

    nop                                           ; $6ADD: $00
    ldh [rP1], a                                  ; $6ADE: $E0 $00
    ret nz                                        ; $6AE0: $C0

    nop                                           ; $6AE1: $00
    ldh [rP1], a                                  ; $6AE2: $E0 $00
    ret nz                                        ; $6AE4: $C0

    nop                                           ; $6AE5: $00
    ret nz                                        ; $6AE6: $C0

    nop                                           ; $6AE7: $00
    dec b                                         ; $6AE8: $05
    nop                                           ; $6AE9: $00
    rlca                                          ; $6AEA: $07
    nop                                           ; $6AEB: $00
    ld [bc], a                                    ; $6AEC: $02
    nop                                           ; $6AED: $00
    inc b                                         ; $6AEE: $04
    nop                                           ; $6AEF: $00
    nop                                           ; $6AF0: $00
    nop                                           ; $6AF1: $00
    ld [$0400], sp                                ; $6AF2: $08 $00 $04
    nop                                           ; $6AF5: $00
    ld [$FB00], sp                                ; $6AF6: $08 $00 $FB
    nop                                           ; $6AF9: $00
    rst $38                                       ; $6AFA: $FF
    nop                                           ; $6AFB: $00
    cp a                                          ; $6AFC: $BF
    nop                                           ; $6AFD: $00
    ld e, a                                       ; $6AFE: $5F
    nop                                           ; $6AFF: $00
    rra                                           ; $6B00: $1F
    nop                                           ; $6B01: $00
    rlca                                          ; $6B02: $07
    nop                                           ; $6B03: $00
    inc bc                                        ; $6B04: $03
    nop                                           ; $6B05: $00
    rlca                                          ; $6B06: $07
    nop                                           ; $6B07: $00
    add b                                         ; $6B08: $80
    nop                                           ; $6B09: $00
    add b                                         ; $6B0A: $80
    nop                                           ; $6B0B: $00
    ret nz                                        ; $6B0C: $C0

    nop                                           ; $6B0D: $00
    ret nz                                        ; $6B0E: $C0

    nop                                           ; $6B0F: $00
    ldh [rP1], a                                  ; $6B10: $E0 $00
    ldh [rP1], a                                  ; $6B12: $E0 $00
    ldh a, [rP1]                                  ; $6B14: $F0 $00
    ldh [rP1], a                                  ; $6B16: $E0 $00
    nop                                           ; $6B18: $00
    nop                                           ; $6B19: $00
    ld [$0400], sp                                ; $6B1A: $08 $00 $04
    nop                                           ; $6B1D: $00
    nop                                           ; $6B1E: $00
    nop                                           ; $6B1F: $00
    inc c                                         ; $6B20: $0C
    nop                                           ; $6B21: $00
    inc b                                         ; $6B22: $04
    nop                                           ; $6B23: $00
    inc b                                         ; $6B24: $04
    nop                                           ; $6B25: $00
    inc c                                         ; $6B26: $0C
    nop                                           ; $6B27: $00
    rlca                                          ; $6B28: $07
    nop                                           ; $6B29: $00
    rlca                                          ; $6B2A: $07
    nop                                           ; $6B2B: $00
    rla                                           ; $6B2C: $17
    nop                                           ; $6B2D: $00
    rrca                                          ; $6B2E: $0F
    nop                                           ; $6B2F: $00
    ccf                                           ; $6B30: $3F
    nop                                           ; $6B31: $00
    ld c, $00                                     ; $6B32: $0E $00
    ld e, $00                                     ; $6B34: $1E $00
    inc d                                         ; $6B36: $14
    nop                                           ; $6B37: $00
    ldh a, [rP1]                                  ; $6B38: $F0 $00
    ldh [rP1], a                                  ; $6B3A: $E0 $00
    ldh a, [rP1]                                  ; $6B3C: $F0 $00
    add b                                         ; $6B3E: $80
    nop                                           ; $6B3F: $00
    nop                                           ; $6B40: $00
    nop                                           ; $6B41: $00
    nop                                           ; $6B42: $00
    nop                                           ; $6B43: $00
    nop                                           ; $6B44: $00
    nop                                           ; $6B45: $00
    nop                                           ; $6B46: $00
    nop                                           ; $6B47: $00
    inc e                                         ; $6B48: $1C
    nop                                           ; $6B49: $00
    ld c, $00                                     ; $6B4A: $0E $00
    inc b                                         ; $6B4C: $04
    nop                                           ; $6B4D: $00
    ld c, $00                                     ; $6B4E: $0E $00
    inc c                                         ; $6B50: $0C
    nop                                           ; $6B51: $00
    ld c, $00                                     ; $6B52: $0E $00
    ld b, $00                                     ; $6B54: $06 $00
    ld c, $00                                     ; $6B56: $0E $00
    jr c, jr_04E_6B5A                             ; $6B58: $38 $00

jr_04E_6B5A:
    inc d                                         ; $6B5A: $14
    nop                                           ; $6B5B: $00
    jr z, jr_04E_6B5E                             ; $6B5C: $28 $00

jr_04E_6B5E:
    stop                                          ; $6B5E: $10 $00
    jr nc, jr_04E_6B62                            ; $6B60: $30 $00

jr_04E_6B62:
    jr z, jr_04E_6B64                             ; $6B62: $28 $00

jr_04E_6B64:
    stop                                          ; $6B64: $10 $00
    jr nc, jr_04E_6B68                            ; $6B66: $30 $00

jr_04E_6B68:
    inc c                                         ; $6B68: $0C
    nop                                           ; $6B69: $00
    ld b, $00                                     ; $6B6A: $06 $00
    ld c, $00                                     ; $6B6C: $0E $00
    inc b                                         ; $6B6E: $04
    nop                                           ; $6B6F: $00
    ld e, $00                                     ; $6B70: $1E $00
    ld a, [bc]                                    ; $6B72: $0A
    nop                                           ; $6B73: $00
    rla                                           ; $6B74: $17
    nop                                           ; $6B75: $00
    dec b                                         ; $6B76: $05
    nop                                           ; $6B77: $00
    ld d, b                                       ; $6B78: $50
    nop                                           ; $6B79: $00
    jr nz, jr_04E_6B7C                            ; $6B7A: $20 $00

jr_04E_6B7C:
    stop                                          ; $6B7C: $10 $00
    jr nc, jr_04E_6B80                            ; $6B7E: $30 $00

jr_04E_6B80:
    ld b, b                                       ; $6B80: $40
    nop                                           ; $6B81: $00
    jr nc, jr_04E_6B84                            ; $6B82: $30 $00

jr_04E_6B84:
    ldh [rP1], a                                  ; $6B84: $E0 $00
    ldh a, [rP1]                                  ; $6B86: $F0 $00
    rlca                                          ; $6B88: $07
    nop                                           ; $6B89: $00
    ld bc, $0000                                  ; $6B8A: $01 $00 $00
    nop                                           ; $6B8D: $00
    nop                                           ; $6B8E: $00
    nop                                           ; $6B8F: $00
    nop                                           ; $6B90: $00
    nop                                           ; $6B91: $00
    nop                                           ; $6B92: $00
    nop                                           ; $6B93: $00
    nop                                           ; $6B94: $00
    nop                                           ; $6B95: $00
    nop                                           ; $6B96: $00
    nop                                           ; $6B97: $00
    ldh [rP1], a                                  ; $6B98: $E0 $00
    ldh [rP1], a                                  ; $6B9A: $E0 $00
    or b                                          ; $6B9C: $B0
    nop                                           ; $6B9D: $00
    ld b, b                                       ; $6B9E: $40
    nop                                           ; $6B9F: $00
    nop                                           ; $6BA0: $00
    nop                                           ; $6BA1: $00
    nop                                           ; $6BA2: $00
    nop                                           ; $6BA3: $00
    nop                                           ; $6BA4: $00
    nop                                           ; $6BA5: $00
    nop                                           ; $6BA6: $00
    nop                                           ; $6BA7: $00
    jr jr_04E_6BAA                                ; $6BA8: $18 $00

jr_04E_6BAA:
    inc h                                         ; $6BAA: $24
    jr @+$5C                                      ; $6BAB: $18 $5A

    inc a                                         ; $6BAD: $3C
    ld a, [hl]                                    ; $6BAE: $7E
    inc a                                         ; $6BAF: $3C
    inc a                                         ; $6BB0: $3C
    ld a, [hl]                                    ; $6BB1: $7E
    rst $38                                       ; $6BB2: $FF
    ld a, [hl]                                    ; $6BB3: $7E
    rst $38                                       ; $6BB4: $FF
    ld a, [hl]                                    ; $6BB5: $7E
    rst $38                                       ; $6BB6: $FF
    ld a, [hl]                                    ; $6BB7: $7E
    inc b                                         ; $6BB8: $04
    nop                                           ; $6BB9: $00
    rrca                                          ; $6BBA: $0F
    nop                                           ; $6BBB: $00
    ld de, $270E                                  ; $6BBC: $11 $0E $27
    rra                                           ; $6BBF: $1F
    cpl                                           ; $6BC0: $2F
    rra                                           ; $6BC1: $1F
    ccf                                           ; $6BC2: $3F
    rra                                           ; $6BC3: $1F
    ld e, l                                       ; $6BC4: $5D
    inc sp                                        ; $6BC5: $33
    ld h, b                                       ; $6BC6: $60
    ld bc, $00C0                                  ; $6BC7: $01 $C0 $00
    jr nc, @-$3E                                  ; $6BCA: $30 $C0

    and b                                         ; $6BCC: $A0
    ld b, b                                       ; $6BCD: $40
    db $EC                                        ; $6BCE: $EC
    ret nz                                        ; $6BCF: $C0

    db $EC                                        ; $6BD0: $EC
    ldh [$F4], a                                  ; $6BD1: $E0 $F4
    ld hl, sp-$0A                                 ; $6BD3: $F8 $F6
    ld hl, sp-$05                                 ; $6BD5: $F8 $FB
    ld hl, sp+$7B                                 ; $6BD7: $F8 $7B
    db $FC                                        ; $6BD9: $FC
    cp a                                          ; $6BDA: $BF
    ld a, h                                       ; $6BDB: $7C
    ld a, a                                       ; $6BDC: $7F
    inc a                                         ; $6BDD: $3C
    ld e, h                                       ; $6BDE: $5C
    ccf                                           ; $6BDF: $3F
    ld e, a                                       ; $6BE0: $5F
    ld a, $5F                                     ; $6BE1: $3E $5F
    ld a, $1F                                     ; $6BE3: $3E $1F
    ld a, $5F                                     ; $6BE5: $3E $5F
    ld a, $00                                     ; $6BE7: $3E $00
    nop                                           ; $6BE9: $00
    nop                                           ; $6BEA: $00
    nop                                           ; $6BEB: $00
    nop                                           ; $6BEC: $00
    nop                                           ; $6BED: $00
    inc bc                                        ; $6BEE: $03
    nop                                           ; $6BEF: $00
    ld b, $01                                     ; $6BF0: $06 $01
    ld [$0807], sp                                ; $6BF2: $08 $07 $08
    rlca                                          ; $6BF5: $07
    inc de                                        ; $6BF6: $13
    inc c                                         ; $6BF7: $0C
    nop                                           ; $6BF8: $00
    nop                                           ; $6BF9: $00
    ld [hl], b                                    ; $6BFA: $70
    nop                                           ; $6BFB: $00
    ld a, c                                       ; $6BFC: $79
    nop                                           ; $6BFD: $00
    ld sp, hl                                     ; $6BFE: $F9
    nop                                           ; $6BFF: $00
    ld a, [$7E00]                                 ; $6C00: $FA $00 $7E
    add b                                         ; $6C03: $80
    ld d, e                                       ; $6C04: $53
    adc h                                         ; $6C05: $8C
    adc $01                                       ; $6C06: $CE $01
    nop                                           ; $6C08: $00
    nop                                           ; $6C09: $00
    nop                                           ; $6C0A: $00
    nop                                           ; $6C0B: $00
    add b                                         ; $6C0C: $80
    nop                                           ; $6C0D: $00
    ret nz                                        ; $6C0E: $C0

    nop                                           ; $6C0F: $00
    ret nz                                        ; $6C10: $C0

    nop                                           ; $6C11: $00
    nop                                           ; $6C12: $00
    nop                                           ; $6C13: $00
    nop                                           ; $6C14: $00
    nop                                           ; $6C15: $00
    or b                                          ; $6C16: $B0
    nop                                           ; $6C17: $00
    inc e                                         ; $6C18: $1C
    nop                                           ; $6C19: $00

jr_04E_6C1A:
    jr z, jr_04E_6C2C                             ; $6C1A: $28 $10

    jr nc, jr_04E_6C1E                            ; $6C1C: $30 $00

jr_04E_6C1E:
    jr nc, jr_04E_6C20                            ; $6C1E: $30 $00

jr_04E_6C20:
    jr nz, jr_04E_6C22                            ; $6C20: $20 $00

jr_04E_6C22:
    nop                                           ; $6C22: $00
    nop                                           ; $6C23: $00
    nop                                           ; $6C24: $00
    nop                                           ; $6C25: $00
    nop                                           ; $6C26: $00
    nop                                           ; $6C27: $00
    cp $01                                        ; $6C28: $FE $01
    jr c, @+$09                                   ; $6C2A: $38 $07

jr_04E_6C2C:
    add hl, bc                                    ; $6C2C: $09
    ld b, $04                                     ; $6C2D: $06 $04
    inc bc                                        ; $6C2F: $03
    ld [bc], a                                    ; $6C30: $02
    ld bc, $0102                                  ; $6C31: $01 $02 $01
    ld bc, $0100                                  ; $6C34: $01 $00 $01
    nop                                           ; $6C37: $00
    jr jr_04E_6C1A                                ; $6C38: $18 $E0

    ld [$08F0], sp                                ; $6C3A: $08 $F0 $08
    ldh a, [$8C]                                  ; $6C3D: $F0 $8C
    ld [hl], b                                    ; $6C3F: $70
    db $E4                                        ; $6C40: $E4
    jr @-$0C                                      ; $6C41: $18 $F2

    inc c                                         ; $6C43: $0C
    halt                                          ; $6C44: $76
    adc b                                         ; $6C45: $88
    ld h, b                                       ; $6C46: $60
    sbc b                                         ; $6C47: $98
    ld h, b                                       ; $6C48: $60
    sbc b                                         ; $6C49: $98
    daa                                           ; $6C4A: $27
    sbc b                                         ; $6C4B: $98
    ld a, a                                       ; $6C4C: $7F
    add b                                         ; $6C4D: $80
    inc sp                                        ; $6C4E: $33
    db $CC, $83, $7C
    pop bc                                        ; $6C52: $C1
    ld a, $A1                                     ; $6C53: $3E $A1

jr_04E_6C55:
    ld e, $61                                     ; $6C55: $1E $61
    ld e, $78                                     ; $6C57: $1E $78
    nop                                           ; $6C59: $00
    ld a, $00                                     ; $6C5A: $3E $00
    ld a, $00                                     ; $6C5C: $3E $00
    ld c, $00                                     ; $6C5E: $0E $00
    rlca                                          ; $6C60: $07
    nop                                           ; $6C61: $00
    inc bc                                        ; $6C62: $03
    nop                                           ; $6C63: $00
    inc bc                                        ; $6C64: $03
    nop                                           ; $6C65: $00
    nop                                           ; $6C66: $00
    nop                                           ; $6C67: $00
    ldh [rP1], a                                  ; $6C68: $E0 $00
    ldh a, [rP1]                                  ; $6C6A: $F0 $00
    ld hl, sp+$00                                 ; $6C6C: $F8 $00
    ret z                                         ; $6C6E: $C8

    nop                                           ; $6C6F: $00
    ld c, h                                       ; $6C70: $4C
    nop                                           ; $6C71: $00
    ld l, h                                       ; $6C72: $6C
    nop                                           ; $6C73: $00
    ld a, h                                       ; $6C74: $7C
    nop                                           ; $6C75: $00
    ld a, h                                       ; $6C76: $7C
    nop                                           ; $6C77: $00
    jr c, jr_04E_6C7A                             ; $6C78: $38 $00

jr_04E_6C7A:
    jr nc, jr_04E_6C7C                            ; $6C7A: $30 $00

jr_04E_6C7C:
    ld [hl], b                                    ; $6C7C: $70
    nop                                           ; $6C7D: $00
    ld a, b                                       ; $6C7E: $78
    nop                                           ; $6C7F: $00
    ld e, [hl]                                    ; $6C80: $5E
    nop                                           ; $6C81: $00
    ld a, $00                                     ; $6C82: $3E $00
    ld a, $00                                     ; $6C84: $3E $00
    inc a                                         ; $6C86: $3C
    nop                                           ; $6C87: $00
    jr jr_04E_6C8A                                ; $6C88: $18 $00

jr_04E_6C8A:
    inc h                                         ; $6C8A: $24
    db $18, $5A

    inc h                                         ; $6C8D: $24
    ld b, d                                       ; $6C8E: $42
    inc h                                         ; $6C8F: $24
    ld b, d                                       ; $6C90: $42
    inc h                                         ; $6C91: $24
    ld e, d                                       ; $6C92: $5A
    inc h                                         ; $6C93: $24
    inc h                                         ; $6C94: $24
    db $18, $18

    nop                                           ; $6C97: $00
    ld bc, $0600                                  ; $6C98: $01 $00 $06
    ld bc, $0205                                  ; $6C9B: $01 $05 $02
    ld a, [bc]                                    ; $6C9E: $0A
    inc b                                         ; $6C9F: $04
    inc d                                         ; $6CA0: $14
    ld [$0814], sp                                ; $6CA1: $08 $14 $08
    jr z, jr_04E_6CB6                             ; $6CA4: $28 $10

    jr z, jr_04E_6CB8                             ; $6CA6: $28 $10

    jr z, jr_04E_6CBA                             ; $6CA8: $28 $10

    ld d, b                                       ; $6CAA: $50

    db $20, $50, $20, $50, $20, $50, $20, $50

    jr nz, jr_04E_6C55                            ; $6CB3: $20 $A0

    ld b, b                                       ; $6CB5: $40

jr_04E_6CB6:
    and b                                         ; $6CB6: $A0
    ld b, b                                       ; $6CB7: $40

jr_04E_6CB8:
    and b                                         ; $6CB8: $A0
    ld b, b                                       ; $6CB9: $40

jr_04E_6CBA:
    and b                                         ; $6CBA: $A0
    ld b, b                                       ; $6CBB: $40
    and b                                         ; $6CBC: $A0
    ld b, b                                       ; $6CBD: $40
    and b                                         ; $6CBE: $A0
    ld b, b                                       ; $6CBF: $40
    and b                                         ; $6CC0: $A0
    ld b, b                                       ; $6CC1: $40
    and b                                         ; $6CC2: $A0
    ld b, b                                       ; $6CC3: $40
    and b                                         ; $6CC4: $A0
    ld b, b                                       ; $6CC5: $40
    and b                                         ; $6CC6: $A0
    ld b, b                                       ; $6CC7: $40
    nop                                           ; $6CC8: $00
    nop                                           ; $6CC9: $00
    nop                                           ; $6CCA: $00
    nop                                           ; $6CCB: $00
    nop                                           ; $6CCC: $00
    nop                                           ; $6CCD: $00
    nop                                           ; $6CCE: $00
    nop                                           ; $6CCF: $00
    nop                                           ; $6CD0: $00
    nop                                           ; $6CD1: $00
    nop                                           ; $6CD2: $00
    nop                                           ; $6CD3: $00
    nop                                           ; $6CD4: $00
    nop                                           ; $6CD5: $00
    nop                                           ; $6CD6: $00
    nop                                           ; $6CD7: $00
    nop                                           ; $6CD8: $00
    nop                                           ; $6CD9: $00
    nop                                           ; $6CDA: $00
    nop                                           ; $6CDB: $00
    nop                                           ; $6CDC: $00
    nop                                           ; $6CDD: $00
    nop                                           ; $6CDE: $00
    nop                                           ; $6CDF: $00
    nop                                           ; $6CE0: $00
    nop                                           ; $6CE1: $00
    nop                                           ; $6CE2: $00
    nop                                           ; $6CE3: $00
    nop                                           ; $6CE4: $00
    nop                                           ; $6CE5: $00
    nop                                           ; $6CE6: $00