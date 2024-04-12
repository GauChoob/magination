
; PARAMS

DEF GHOST_DATA EQU 1 ; Set to 1 to include unused data that was copied from the developer's computer into the final producted, likely from uninitialized memory in RAM
DEF TEST EQU 0 ;set to 1 when testing, otherwise 0
DEF DEBUG_TEXTBOX_CURSOR EQU 0 ;set to 1 when enabling the disabled feature
DEF DEBUG_TEXTBOX_SOUND EQU 0 ;set to 1 when enabling the disabled feature - TODO currently broken probably because the bank isn't completely decompiled. We need to check later that this debug function works
DEF DEBUG_SOUNDS EQU 0 ; Set to 1 to enable Sound_Test
DEF FIX_BUGS EQU 0 ; Set to 1 to fix a few bugs that I found in the code

; Universal hardware constant file
INCLUDE "source/includes/hardware_constants.asm"

; Personalized charmap
INCLUDE "source/includes/charmap.asm"

; General-purpose equs
INCLUDE "source/includes/equ.asm"
; General-purpose macros
INCLUDE "source/includes/macro.asm"
INCLUDE "source/includes/vram_equ.asm"
; Fixed bank definitions
INCLUDE "source/includes/bank_distribution.asm"


INCLUDE "source/macros/macro.asm"
INCLUDE "source/macros/objects.asm"
INCLUDE "source/macros/lookuptables.asm"


INCLUDE "source/engine/actor/actor_include.asm"
INCLUDE "source/engine/collision/collision_include.asm"
INCLUDE "source/engine/encounter/encounter_include.asm"
INCLUDE "source/engine/expression/expression_include.asm"
INCLUDE "source/engine/hotspot/hotspot_include.asm"
INCLUDE "source/engine/interrupt/interrupt_equ.asm"
INCLUDE "source/engine/interrupt/interrupt_macro.asm"
INCLUDE "source/engine/interrupt/timer/timer_macro.asm"
INCLUDE "source/engine/interrupt/vblank/vblank_macro.asm"
INCLUDE "source/engine/script/script_include.asm"
INCLUDE "source/engine/script/magiop_include.asm"
INCLUDE "source/engine/system/battery/battery_include.asm"
INCLUDE "source/engine/system/graphics/frame/frame_include.asm"
INCLUDE "source/engine/system/graphics/graphics_macro.asm"
INCLUDE "source/engine/system/graphics/palette/palette_include.asm"
INCLUDE "source/engine/system/graphics/screenfx/screenfx_equ.asm"
INCLUDE "source/engine/system/graphics/tilemap/tilemap_include.asm"
INCLUDE "source/engine/system/math/math_include.asm"
INCLUDE "source/engine/system/sound/sound_equ.asm"
INCLUDE "source/engine/system/sound/sound_macro.asm"
INCLUDE "source/engine/text/text_include.asm"
INCLUDE "source/engine/textbox/textbox_include.asm"
INCLUDE "source/engine/trigger/trigger_include.asm"
INCLUDE "source/game/ai/ai_include.asm"
INCLUDE "source/game/battle/battle_equ.asm"
INCLUDE "source/game/battle/battle_macro.asm"
INCLUDE "source/game/battle/battlecmd/battlecmd_macro.asm"
INCLUDE "source/game/battle/battlecmd/battlecmd_equ.asm"
INCLUDE "source/game/battle/battlecmd/levelup/battlecmd_levelup_equ.asm"
INCLUDE "source/game/battle/itemspell/itemspell_include.asm"
INCLUDE "source/game/battle/relic/relic_include.asm"
INCLUDE "source/game/cardscene/cardscene_include.asm"
INCLUDE "source/game/creature/creature_include.asm"
INCLUDE "source/game/fightscene/fightscene_include.asm"
INCLUDE "source/game/menu/mainmenu_include.asm"
INCLUDE "source/game/menu/menu_include.asm"

INCLUDE "autogenerated/musyx/SoundIDs.asm"


INCLUDE "source/ram/vram.asm"

INCLUDE "source/ram/sram.asm"

INCLUDE "source/ram/wram_0.asm"
INCLUDE "source/ram/wram_X.asm"

INCLUDE "source/ram/oam.asm"
INCLUDE "source/ram/hram.asm"

    ; Sprites - Bank 0E, 0F, 10, 11, 20 - essentially full
    ;           Bank 25 - the first half is reserved for sprites
INCLUDE "source/assets/sprites.asm"

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

    ; Cardscene Card tile/attrmaps, and Fightscene Arena tilemaps
    ; Lots of space remaining ($4FF0-$8000)
SECTION "Cardscene Fightscene Tilemaps", ROMX[$4000], BANK[$42]
INCLUDE "assets/cardscene/cardscene_cardtileattrmaps.asm"
INCLUDE "assets/fightscene/fightscene_arena_tilemaps.asm"
    ; Cardscene background and Fightscene Arena bitmaps (1/2)
    ; Lots of space remaining ($649D-$8000)
SECTION "Cardscene Fightscene Bitmaps1", ROMX[$4000], BANK[$43]
INCLUDE "assets/fightscene/fightscene_arena_bitmaps1.asm"
INCLUDE "assets/cardscene/arenabackground.asm"

;
;       DREAM CREATURE CARD ICON BITMAPS (44, 45)
;

    ; Full (51/51), but more can be placed anywhere
SECTION "Cards 00", ROMX[$4000], BANK[$44]
INCLUDE "assets/cardscene/cards0.asm"
    ; Full (51/51), but more can be placed anywhere
SECTION "Cards 01", ROMX[$4000], BANK[$45]
INCLUDE "assets/cardscene/cards1.asm"



;
;       DREAM CREATURE FIGHTSCENE SPRITE (46, 48, 49, 4A, 4B, 4D)
;

; Bank 47 is empty, and 4C is skipped (used for other purposes)

    ; Tilemap/attrmap for all the fightscene sprites. Room for more
SECTION "DC Fightscene Tilemaps", ROMX[$4000], BANK[$46]
INCLUDE "assets/fightscene/fightscene_creature_tilemaps.asm"

    ; Only a small amount of room left.
SECTION "DC Fightscene Bitmaps 1", ROMX[$4000], BANK[$48]
INCLUDE "assets/fightscene/fightscene_creature_bitmaps1.asm"
    ;  Only a small amount of room left.
SECTION "DC Fightscene Bitmaps 2", ROMX[$4000], BANK[$49]
INCLUDE "assets/fightscene/fightscene_creature_bitmaps2.asm"
    ; Tilesets for fightscene sprites. Only a small amount of room left.
    ; Contains an extra unused copy of Abaquist's tileset but uncompressed (BUG)
SECTION "DC Fightscene Bitmaps 3", ROMX[$4000], BANK[$4A]
INCLUDE "assets/fightscene/fightscene_creature_bitmaps3.asm"
    ; Tilesets for fightscene sprites. Only a small amount of room left.
SECTION "DC Fightscene Bitmaps 4", ROMX[$4000], BANK[$4B]
INCLUDE "assets/fightscene/fightscene_creature_bitmaps4.asm"
    ; Tilesets for fightscene sprites. Only a small amount of room left.
SECTION "DC Fightscene Bitmaps 5", ROMX[$4000], BANK[$4D]
INCLUDE "assets/fightscene/fightscene_creature_bitmaps5.asm"

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
