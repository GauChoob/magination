
; PARAMS

DEF GHOST_DATA EQU 1 ; Set to 1 to include unused data that was copied from the developer's computer into the final producted, likely from uninitialized memory in RAM
DEF TEST EQU 0 ;set to 1 when testing, otherwise 0
DEF DEBUG_TEXTBOX_CURSOR EQU 0 ;set to 1 when enabling the disabled feature
DEF FIX_BUGS EQU 0 ; Set to 1 to fix a few bugs that I found in the code

; Universal hardware constant file
INCLUDE "source/includes/hardware_constants.asm"

; Personalized charmaps
INCLUDE "source/includes/charmap/varbit.asm"
INCLUDE "source/includes/charmap/charmap.asm"

; General-purpose equs
INCLUDE "source/includes/equ.asm"
; General-purpose macros
INCLUDE "source/includes/macro.asm"
INCLUDE "source/includes/vram_equ.asm"


INCLUDE "source/macros/macro.asm"
INCLUDE "source/macros/objects.asm"
INCLUDE "source/macros/lookuptables.asm"
INCLUDE "source/macros/magiop.asm"


INCLUDE "source/game/cardscene/cardscene_equ.asm"
INCLUDE "source/game/cardscene/cardscene_macro.asm"
INCLUDE "source/engine/system/graphics/graphics_macro.asm"
INCLUDE "source/engine/system/graphics/screenfx/screenfx_equ.asm"
INCLUDE "source/engine/system/graphics/palette/palette_include.asm"
INCLUDE "source/engine/system/sound/sound_macro.asm"
INCLUDE "source/engine/system/sound/sound_equ.asm"
INCLUDE "source/engine/interrupt/interrupt_equ.asm"
INCLUDE "source/engine/interrupt/interrupt_macro.asm"
INCLUDE "source/engine/interrupt/timer/timer_macro.asm"
INCLUDE "source/engine/interrupt/vblank/vblank_macro.asm"


INCLUDE "source/engine/expression/expression_include.asm"
INCLUDE "source/engine/textbox/textbox_include.asm"
INCLUDE "source/engine/text/text_include.asm"
INCLUDE "source/engine/battery/battery_include.asm"
INCLUDE "source/engine/trigger/trigger_include.asm"
INCLUDE "source/engine/actor/actor_include.asm"
INCLUDE "source/engine/collision/collision_include.asm"
INCLUDE "source/engine/system/graphics/tilemap/tilemap_include.asm"
INCLUDE "source/engine/system/graphics/frame/frame_include.asm"
INCLUDE "source/game/menu/menu_include.asm"
INCLUDE "source/game/menu/mainmenu_include.asm"
INCLUDE "source/game/battle/battle_equ.asm"
INCLUDE "source/game/battle/battle_macro.asm"
INCLUDE "source/game/battle/battlecmd/battlecmd_macro.asm"
INCLUDE "source/game/battle/battlecmd/battlecmd_equ.asm"
INCLUDE "source/game/battle/relic/relic_include.asm"
INCLUDE "source/game/battle/itemspell/itemspell_include.asm"

INCLUDE "autogenerated/musyx/SoundIDs.asm"


INCLUDE "source/ram/vram.asm"

INCLUDE "source/ram/sram.asm"

INCLUDE "source/ram/wram_0.asm"
INCLUDE "source/ram/wram_X.asm"

INCLUDE "source/ram/oam.asm"
INCLUDE "source/ram/hram.asm"


    ; Boot
    ; Monochrome Gameboy
    ; Main engine loop
    ; Script
    ; Math
    ; Random system functions
INCLUDE "source/banks/bank_000.asm"
    ; MagiCode table
INCLUDE "source/banks/bank_001_x.asm"
    ; Battle bank
INCLUDE "source/banks/bank_002.asm"
INCLUDE "source/banks/bank_003.asm"
    ; Dream Creature table
    ; StartScreen headers
    ; StartScreen code
INCLUDE "source/banks/bank_004_x.asm"
INCLUDE "source/banks/bank_005.asm"
    ; Font tileset
    ; Tony's Main Menu
INCLUDE "source/banks/bank_006_startmenu.asm"
    ; Battery code
    ; Palette code
INCLUDE "source/banks/bank_007_x.asm"


;
;       TEXTBOX ICONS
;

    ; Icons - Bank 08 - full (40/40)
SECTION "Icons 00", ROMX[$4000], BANK[$08]
INCLUDE "source/assets/textbox_icons/icons0.asm"
    ; Icons - Bank 09 - half-full (20/40) - room for 20 more
SECTION "Icons 01", ROMX[$4000], BANK[$09]
INCLUDE "source/assets/textbox_icons/icons1.asm"


INCLUDE "source/banks/bank_00a.asm"
INCLUDE "source/banks/bank_00b.asm"
INCLUDE "source/banks/bank_00c.asm"
INCLUDE "source/banks/bank_00d.asm"

    ; Sprites - Bank 0E-11 - essentially full
; INCLUDE "source/banks/bank_00e.asm"
; INCLUDE "source/banks/bank_00f.asm"
; INCLUDE "source/banks/bank_010.asm"
; INCLUDE "source/banks/bank_011.asm"
; INCLUDE "source/banks/bank_020.asm"
INCLUDE "source/assets/sprites.asm"

INCLUDE "source/banks/bank_012.asm"
INCLUDE "source/banks/bank_013.asm"
INCLUDE "source/banks/bank_014.asm"
INCLUDE "source/banks/bank_015.asm"
INCLUDE "source/banks/bank_016.asm"
INCLUDE "source/banks/bank_017.asm"
INCLUDE "source/banks/bank_018.asm"
INCLUDE "source/banks/bank_019.asm"
INCLUDE "source/banks/bank_01a.asm"
INCLUDE "source/banks/bank_01b.asm"
INCLUDE "source/banks/bank_01c.asm"
INCLUDE "source/banks/bank_01d.asm"
INCLUDE "source/banks/bank_01e.asm"
INCLUDE "source/banks/bank_01f.asm"
    ; PALETTES
    ;   Sprites
    ;   Start Screen
    ;   Combat sprites
INCLUDE "source/banks/bank_021_palettes.asm"
INCLUDE "source/banks/bank_022.asm"
INCLUDE "source/banks/bank_023.asm"
INCLUDE "source/banks/bank_024.asm"
INCLUDE "source/banks/bank_025.asm"
INCLUDE "source/banks/bank_026.asm"
    ; Splash screen assets
INCLUDE "source/banks/bank_027_x.asm"
INCLUDE "source/banks/bank_028.asm"
INCLUDE "source/banks/bank_029.asm"
    ; MagiCode for loading screen
INCLUDE "source/banks/bank_02a_x.asm"
INCLUDE "source/banks/bank_02b.asm"
INCLUDE "source/banks/bank_02e.asm"
INCLUDE "source/banks/bank_02f.asm"


;
;       MUSYX (30-3F)
;
    ; musyx.asm (musyx driver)
    ; musyx .proj file (soundmacro, adsr, sfx, song data)
    ; musyx .pool file (sample and song data)
INCLUDE "musyx/musyx_pack.asm"



INCLUDE "source/banks/bank_040.asm"
INCLUDE "source/banks/bank_041.asm"
    ; ?
    ; Tilemaps for StartScreen 0-D
INCLUDE "source/banks/bank_042_x.asm"
    ; Tilesets for StartScreen 0-6
    ; ?
INCLUDE "source/banks/bank_043_x.asm"

;
;       DREAM CREATURE CARD ICON BITMAPS (44, 45)
;

    ; Full (51/51), but more can be placed anywhere
SECTION "Cards 00", ROMX[$4000], BANK[$44]
INCLUDE "source/assets/dream_creatures/cards/cards0.asm"
    ; Full (51/51), but more can be placed anywhere
SECTION "Cards 01", ROMX[$4000], BANK[$45]
INCLUDE "source/assets/dream_creatures/cards/cards1.asm"



;
;       DREAM CREATURE COMBAT SPRITE (46, 48, 49, 4A, 4B, 4D)
;

; Bank 47 is empty, and 4C is skipped (used for other purposes)

    ; Tilemap/attrmap for all the combat sprites. Room for more
SECTION "DC Combat Tilemaps", ROMX[$4000], BANK[$46]
INCLUDE "source/assets/dream_creatures/sprites/tilemaps.asm"

    ; Only a small amount of room left.
SECTION "DC Combat Bitmaps 00", ROMX[$4000], BANK[$48]
INCLUDE "source/assets/dream_creatures/sprites/bitmaps00.asm"
    ;  Only a small amount of room left.
SECTION "DC Combat Bitmaps 01", ROMX[$4000], BANK[$49]
INCLUDE "source/assets/dream_creatures/sprites/bitmaps01.asm"
    ; Tilesets for combat sprites. Only a small amount of room left.
    ; Contains an extra unused copy of Abaquist's tileset but uncompressed (BUG/ERROR)
SECTION "DC Combat Bitmaps 02", ROMX[$4000], BANK[$4A]
INCLUDE "source/assets/dream_creatures/sprites/bitmaps02.asm"
    ; Tilesets for combat sprites. Only a small amount of room left.
SECTION "DC Combat Bitmaps 03", ROMX[$4000], BANK[$4B]
INCLUDE "source/assets/dream_creatures/sprites/bitmaps03.asm"
    ; Tilesets for combat sprites. Only a small amount of room left.
SECTION "DC Combat Bitmaps 04", ROMX[$4000], BANK[$4D]
INCLUDE "source/assets/dream_creatures/sprites/bitmaps04.asm"

    ; Item/Spell scripts
INCLUDE "source/banks/bank_04c.asm"

    ; Tilesets for StartScreen 7-D
    ; ?
INCLUDE "source/banks/bank_04e_x.asm"
    ; Scene headers
    ; ? Combat animations?
INCLUDE "source/banks/bank_04f.asm"

;
;       SCENE DATA AUTOPACKER (MR. YUK)
;

    ; Scene assets are autopacked into banks $50-$7F
    ; Note that banks $7D, $7E and $7F are empty (not all banks are used)
INCLUDE "autogenerated/autopack/autopack.asm"

;
;       EMPTY BANKS
;

SECTION "Empty 2C", ROMX[$4000], BANK[$2C]
SECTION "Empty 2D", ROMX[$4000], BANK[$2D]
; Bank 37 is empty (empty skipped bank - MusyX bug)
; Banks 3D, 3E, 3F are empty (extra space for MusyX music files)
SECTION "Empty 47", ROMX[$4000], BANK[$47] ; Was probably originally reserved for Dream Creature Combat Sprite Tilemaps
; Banks 7D, 7E and 7F are empty (extra space for the autopacker)


IF GHOST_DATA == 1
    INCLUDE "source/ghost_data.asm"
ENDC
