    db 24        ; wTilemap_Width
    dw $00D8     ; Uncompressed file size (excluding header)
    ; The imported file size was actually $00DB because 3 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/core/end/bridge/Core_End_Bridge_Mask.collision.tilemap.rle"