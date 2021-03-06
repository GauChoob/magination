NEWCHARMAP MAGINATION

; UNIQUE CHARACTERS

CHARMAP "๐ก", $0C ; Right arrow
CHARMAP "๐ก", $0D ; Down arrow
CHARMAP "๐งด", $0E ; Jar
CHARMAP "๐ช", $0F ; Stool
CHARMAP "๐", $10 ; Ring
CHARMAP "๐", $11 ; Infused (animite)
CHARMAP "๐ฐ", $12 ; Animite
CHARMAP "๐", $13 ; Spell
CHARMAP "๐ฅฃ", $14 ; Drink
CHARMAP "๐ฏ", $15 ; Unknown jar ??
CHARMAP "๐", $16 ; Leaf
CHARMAP "๐ป", $17 ; Flower
CHARMAP "๐ด", $18 ; Root
CHARMAP "๐", $19 ; Mushroom
CHARMAP "๐", $1A ; Gem
CHARMAP "โ", $1B ; Relic
CHARMAP "ฮฃ", $1C ; Energy
CHARMAP "โฟ", $1D ; Fat arrow (half)
CHARMAP "๐", $1E ; Key

CHARMAP "/", $3B ; The slash character is actually positioned where the semi-colon is in ascii

; SPECIAL CHARACTERS

; All chars >= Text_SPECIALCHARLOW are considered special code chars and are not written
DEF Text_SPECIALCHARLOW    EQU $F7

; $F7-FA are undefined
CHARMAP "๐", $FB   ; <SKIPFORMAT>
CHARMAP "๐", $FC   ; <FORMAT>
CHARMAP "๐", $FD   ; <EOF>
CHARMAP "๐", $FE    ; <WAIT>
CHARMAP "โญ", $FF     ; <NEWLINE>

; ASCII-COMPATIBLE CHARACTERS

CHARMAP " ", $20
CHARMAP "!", $21

CHARMAP "'", $27

CHARMAP ",", $2C
CHARMAP "-", $2D
CHARMAP ".", $2E

CHARMAP "0", $30
CHARMAP "1", $31
CHARMAP "2", $32
CHARMAP "3", $33
CHARMAP "4", $34
CHARMAP "5", $35
CHARMAP "6", $36
CHARMAP "7", $37
CHARMAP "8", $38
CHARMAP "9", $39
CHARMAP ":", $3A

CHARMAP "?", $3F

CHARMAP "A", $41
CHARMAP "B", $42
CHARMAP "C", $43
CHARMAP "D", $44
CHARMAP "E", $45
CHARMAP "F", $46
CHARMAP "G", $47
CHARMAP "H", $48
CHARMAP "I", $49
CHARMAP "J", $4A
CHARMAP "K", $4B
CHARMAP "L", $4C
CHARMAP "M", $4D
CHARMAP "N", $4E
CHARMAP "O", $4F
CHARMAP "P", $50
CHARMAP "Q", $51
CHARMAP "R", $52
CHARMAP "S", $53
CHARMAP "T", $54
CHARMAP "U", $55
CHARMAP "V", $56
CHARMAP "W", $57
CHARMAP "X", $58
CHARMAP "Y", $59
CHARMAP "Z", $5A

CHARMAP "a", $61
CHARMAP "b", $62
CHARMAP "c", $63
CHARMAP "d", $64
CHARMAP "e", $65
CHARMAP "f", $66
CHARMAP "g", $67
CHARMAP "h", $68
CHARMAP "i", $69
CHARMAP "j", $6A
CHARMAP "k", $6B
CHARMAP "l", $6C
CHARMAP "m", $6D
CHARMAP "n", $6E
CHARMAP "o", $6F
CHARMAP "p", $70
CHARMAP "q", $71
CHARMAP "r", $72
CHARMAP "s", $73
CHARMAP "t", $74
CHARMAP "u", $75
CHARMAP "v", $76
CHARMAP "w", $77
CHARMAP "x", $78
CHARMAP "y", $79
CHARMAP "z", $7A