import os
import projutils.tileset as tileset
import projutils.utils as utils
import projutils.filereference as filereference
import projutils.color as color

rom = utils.Rom()
sym = utils.SymFile()
sym.addSymbol(0x0D, 0x6A30, 'BITMAP_Battle_Summon')
sym.addSymbol(0x41, 0x6250, 'BITMAP_Battle_Effects')
sym.addSymbol(0x24, 0x5990, 'BITMAP_Battle_Tony')
sym.addSymbol(0x24, 0x6140, 'BITMAP_Battle_Togoth')
sym.addSymbol(0x0D, 0x6030, 'BITMAP_Battle_Ogar')
sym.addSymbol(0x24, 0x5D70, 'BITMAP_Battle_Korremar')
sym.addSymbol(0x24, 0x6310, 'BITMAP_Battle_Warrada')
sym.addSymbol(0x0A, 0x61F0, 'BITMAP_Battle_Korg')
sym.addSymbol(0x0d, 0x6e70, 'BITMAP_Battle_Zet')
sym.addSymbol(0x0D, 0x5DE0, 'BITMAP_Battle_Morag')
sym.addSymbol(0x24, 0x4030, 'BITMAP_Battle_Agram')
sym.addSymbol(0x24, 0x4750, 'BITMAP_Battle_ShadowMagi1')
sym.addSymbol(0x24, 0x4990, 'BITMAP_Battle_ShadowMagi2')
sym.addSymbol(0x24, 0x4bd0, 'BITMAP_Battle_ShadowMagi3')
sym.addSymbol(0x24, 0x4d10, 'BITMAP_Battle_ShadowMagi4')
sym.addSymbol(0x24, 0x4ec0, 'BITMAP_Battle_ShadowMagi5')
sym.addSymbol(0x24, 0x5080, 'BITMAP_Battle_ShadowMagi6')
sym.addSymbol(0x24, 0x5230, 'BITMAP_Battle_ShadowMagi7')
sym.addSymbol(0x24, 0x53e0, 'BITMAP_Battle_ShadowMagi8')
sym.addSymbol(0x24, 0x5F60, 'BITMAP_Battle_Salafy')

names = [
    ('Togoth', 0)
    ('Ogar', 0)
    ('Korremar', 0)
    ('Warrada', 0)
    ('Korg', 0)
    ('Zet', 0)
    ('Morag', 0)
    ('Agram', 0)
    ('Agram', 0)
    ('Agram', 0)
    ('ShadowMagi1', 0)
    ('ShadowMagi2', 0)
    ('ShadowMagi3', 0)
    ('ShadowMagi4', 0)
    ('ShadowMagi5', 0)
    ('ShadowMagi6', 0)
    ('ShadowMagi7', 0)
    ('ShadowMagi8', 0)
    ('Salafy', 0)
    ('Salafy', 0)
]

done_names = set()

BANK = 0x04
START = 0x61C3
OUT = 'python/out/'
OUT_BITSET = OUT + 'bitsets/'
OUT_BITMAP = OUT + 'bitmaps/'
FROM_SPRITE = 'assets/sprites/'
ALL_SPRITES = 'python/projutils/data/AllSprites.pal.png'

for folder in [OUT_BITSET, OUT_BITMAP]:
    os.makedirs(folder, exist_ok=True)

header = []
for i, (name, discard_count) in enumerate(names):
    table_address = utils.BankAddress(BANK, START + 2*i)
    header.append('    dw BITSET_BATTLE_' + name)
    if name in done_names:
        continue
    done_names.add(name)

    bitset_address = utils.BankAddress(BANK, rom.getWord(table_address))
    bitset = filereference.FileReference.create_from_address('BITSET', rom, bitset_address, sym)
    bitset.load_contents_from_rom()
    bitset.contents.load_references_from_rom()
    bitset.contents.save_original_file(OUT_BITSET + name + '.bitmapset.asm')
    if i == 0:
        tony_ref: filereference.FileReference = bitset.contents.bitmaps[1][0]
        tony: tileset.Bitmap = tony_ref.contents
        search_term = FROM_SPRITE + 'tony/TonyBattle_*.spr'
        tony.colorize_from_sprite(
            search_term,
            1,
            tony_ref.destination,
            color.Palette.init_from_original_file(ALL_SPRITES),
            0,
            True,
            0
            )
        tony.discarded_tiles = 0
        tony.save_original_file(OUT_BITMAP + 'Battle_Tony.tileset.png')

        summon_ref: filereference.FileReference = bitset.contents.bitmaps[0][1]
        summon: tileset.Bitmap = summon_ref.contents
        summon.colorize_from_list(
            [6]*(16+16+16+4) + [-1]*12,
            color.Palette.init_from_original_file(ALL_SPRITES),
            0,
            True,
            0
        )
        summon.discarded_tiles = 0
        summon.save_original_file(OUT_BITMAP + 'Battle_Summon.tileset.png')

        effect_ref: filereference.FileReference = bitset.contents.bitmaps[0][2]
        effect: tileset.Bitmap = effect_ref.contents
        effect.colorize_from_list(
            (
                [0]*5 + [2]*9 + [0]*2 +
                [2]*4 + [1]*6 + [0]*6 +
                [0]*7 + [6]*9 +
                [6]*3 + [0]*3 + [0]*10 +
                [0]*16 +
                [-1]*16 +
                [-1]*10 + [0] + [-1]*5
            ),
            color.Palette.init_from_original_file(ALL_SPRITES),
            0,
            True,
            0
        )
        effect.discarded_tiles = 0
        effect.save_original_file(OUT_BITMAP + 'Battle_Effects.tileset.png')
    for bitmap in bitset.contents.bitmaps[0]:
        if bitmap.label_name in ['BITMAP_Battle_Summon', 'BITMAP_Battle_Effects']:
            continue
        print(bitmap.label_name)
        search_term = FROM_SPRITE + name.lower() + '/' + name + 'Battle_*.spr'
        print(search_term)
        bitmap.contents.colorize_from_sprite(
            search_term,
            0,
            bitmap.destination,
            color.Palette.init_from_original_file(ALL_SPRITES),
            0,
            True,
            0
            )
        bitmap.contents.discarded_tiles = discard_count
        bitmap.contents.save_original_file(OUT_BITMAP + bitmap.label_name[7:] + '.tileset.png')

print('\n'.join(header))
