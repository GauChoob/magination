RLE_Decompress::
    ; Decompresses [hl] and copies it into [de]
    ; [hl] is RLE-encoded
    ;
    ; First byte:
    ; bit 7 -> 0 -> Uncompressed data of length N
    ;       -> 1 -> Compressed data: the indicated byte is repeated N times
    ; bit 6 -> 0 -> N is defined by bits 5-0 of the current byte (max $3F == 63)
    ;       -> 1 -> N is defined by (bits 5-0)*$100 + next byte (14-bit number) (max $3FFF == 16383)
    ; To signify end of block, set bits 6-0 to 0 (i.e. short sequence with N=0)
    ;
    ; Inputs:
    ;   [hl] -> Source (RLE-encoded)
    ;   [de] -> Destination
    ; Outputs:
    ;   [hl] is decompressed into [de]
    ;   hl is moved to the end of the compressed block of code

    ld a, [hl]
    bit 6, a
    jr nz, .BitX1
    .BitX0:
        bit 7, a
        jr nz, .Bit10
        .Bit00:
            jp .DecodeNorm
        .Bit10:
            jp .DecodeRLE
    .BitX1:
        bit 7, a
        jr nz, .Bit11
        .Bit01:
            jp .DecodeNormGrande
        .Bit11:
            jp .DecodeRLEGrande

    .DecodeNorm:
        ; Decodes %00XXXXXX [raw data of length %XXXXXX]
        ld a, [hl+]
        and %00111111
        and a
        ret z
        ld c, a
        .Loop1:
            ld a, [hl+]
            ld [de], a
            inc de
            dec c
            jr nz, .Loop1
        jp RLE_Decompress

    .DecodeNormGrande:
        ; Decodes %01XXXXXX $XXXXXXXX [raw data of length %XXXXXX_XXXXXXXX]
        ld a, [hl+]
        and %00111111
        ld b, a
        ld a, [hl+]
        ld c, a
        .Loop2:
            ld a, [hl+]
            ld [de], a
            inc de
            dec bc
            ld a, c
            or b
            jr nz, .Loop2
        jp RLE_Decompress

    .DecodeRLE:
        ; Decodes %10XXXXXX [single byte that will be repeated %XXXXXX times]
        ld a, [hl+]
        and %00111111
        and a
        ret z
        ld c, a
        ld a, [hl+]
        .Loop3:
            ld [de], a
            inc de
            dec c
            jr nz, .Loop3
        jp RLE_Decompress

    .DecodeRLEGrande:
        ; Decodes %10XXXXXX [single byte that will be repeated %XXXXXX_XXXXXXXX times]
        ld a, [hl+]
        and %00111111
        ld b, a
        ld a, [hl+]
        ld c, a
        .Loop4:
            ld a, [hl]
            ld [de], a
            inc de
            dec bc
            ld a, c
            or b
            jr nz, .Loop4
            inc hl
        jp RLE_Decompress