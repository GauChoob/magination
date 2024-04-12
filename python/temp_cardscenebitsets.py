import os
import projutils.tileset as tileset
import projutils.utils as utils
import projutils.filereference as filereference
import projutils.color as color

rom = utils.Rom()
sym = utils.SymFile()
sym.replaceSymbol(0x0D, 0x6A30, 'BITMAP_Sprite_Sparkle')
sym.replaceSymbol(0x41, 0x6250, 'BITMAP_Battle_CardsceneFX')
sym.replaceSymbol(0x24, 0x5990, 'BITMAP_Sprite_TonyBattle')
sym.replaceSymbol(0x24, 0x6140, 'BITMAP_Battle_Togoth')
sym.replaceSymbol(0x0D, 0x6030, 'BITMAP_Sprite_OgarBattle')
sym.replaceSymbol(0x24, 0x5D70, 'BITMAP_Sprite_KorremarBattle')
sym.replaceSymbol(0x24, 0x6310, 'BITMAP_Battle_Warrada')
sym.replaceSymbol(0x0A, 0x61F0, 'BITMAP_Sprite_KorgBattle')
sym.replaceSymbol(0x0d, 0x6e70, 'BITMAP_Sprite_ZetBattle')
sym.replaceSymbol(0x0D, 0x5DE0, 'BITMAP_Sprite_MoragBattle')
sym.replaceSymbol(0x24, 0x4030, 'BITMAP_Sprite_AgramBattle')
sym.replaceSymbol(0x24, 0x4750, 'BITMAP_Sprite_ShadowMagi1Battle')
sym.replaceSymbol(0x24, 0x4990, 'BITMAP_Sprite_ShadowMagi2Battle')
sym.replaceSymbol(0x24, 0x4bd0, 'BITMAP_Sprite_ShadowMagi3Battle')
sym.replaceSymbol(0x24, 0x4d10, 'BITMAP_Sprite_ShadowMagi4Battle')
sym.replaceSymbol(0x24, 0x4ec0, 'BITMAP_Sprite_ShadowMagi5Battle')
sym.replaceSymbol(0x24, 0x5080, 'BITMAP_Sprite_ShadowMagi6Battle')
sym.replaceSymbol(0x24, 0x5230, 'BITMAP_Sprite_ShadowMagi7Battle')
sym.replaceSymbol(0x24, 0x53e0, 'BITMAP_Sprite_ShadowMagi8Battle')
sym.replaceSymbol(0x24, 0x5F60, 'BITMAP_Sprite_SalafyBattle')

names = [
    ('Togoth', 3),
    ('Ogar', 0),
    ('Korremar', 1),
    ('Warrada', 5),
    ('Korg', 13),
    ('Zet', 6),
    ('Morag', 10),  # Actually 11, but the last tile is leaked from the next asset
    ('Agram', 15),
    ('Agram', 15),
    ('Agram', 15),
    ('ShadowMagi1', 12),
    ('ShadowMagi2', 12),
    ('ShadowMagi3', 12),
    ('ShadowMagi4', 5),
    ('ShadowMagi5', 4),
    ('ShadowMagi6', 5),
    ('ShadowMagi7', 4),  # Actually 5, but the last tile is leaked from the next asset
    ('ShadowMagi8', 10),
    ('Salafy', 6),
    ('Salafy', 6),
]

done_names = set()

BANK = 0x04
START = 0x61C3
OUT = 'python/out/'
OUT_BITSET = OUT  # + 'bitsets/'
OUT_BITMAP = OUT  # + 'bitmaps/'
FROM_SPRITE = 'assets/sprites/scene/'
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
    sym.addSymbol(BANK, bitset_address.getAddress(), 'BITSET_Battle_{}'.format(name))
    bitset = filereference.FileReference.create_from_address('BITSET', rom, bitset_address, sym)
    bitset.processed_path = FROM_SPRITE + name.lower() + '/' + name + 'Battle.bitmapset.asm'
    bitset.load_contents_from_rom()
    bitset.contents.load_references_from_rom()
    bitset.contents.save_original_file(OUT_BITSET + name + 'Battle.bitmapset.asm')
    #bitset.replace_rom_text()
    if i == 0:
        tony_ref: filereference.FileReference = bitset.contents.bitmaps[1][0]
        tony: tileset.Bitmap = tony_ref.contents
        tony_ref.processed_path = 'autogenerated/' + FROM_SPRITE + 'tony/TonyBattle.tileset'
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
        tony.discarded_tiles = 8
        tony.save_original_file(OUT_BITMAP + 'TonyBattle.tileset.png')
        #tony_ref.replace_rom_text()

        summon_ref: filereference.FileReference = bitset.contents.bitmaps[0][1]
        summon: tileset.Bitmap = summon_ref.contents
        summon_ref.processed_path = 'autogenerated/' + FROM_SPRITE + 'objects/SummonBattle.tileset'
        summon.colorize_from_list(
            [6]*(16+16+16+4) + [-1]*12,
            color.Palette.init_from_original_file(ALL_SPRITES),
            0,
            True,
            0
        )
        summon.discarded_tiles = 12
        summon.save_original_file(OUT_BITMAP + 'SummonBattle.tileset.png')
        #summon_ref.replace_rom_text()

        effect_ref: filereference.FileReference = bitset.contents.bitmaps[0][2]
        effect: tileset.Bitmap = effect_ref.contents
        effect_ref.processed_path = 'autogenerated/' + FROM_SPRITE + 'objects/EffectsBattle.tileset'
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
        effect.discarded_tiles = 5
        effect.save_original_file(OUT_BITMAP + 'EffectsBattle.tileset.png')
        #effect_ref.replace_rom_text()
    for bitmap in bitset.contents.bitmaps[0]:
        if bitmap.label_name in ['BITMAP_Sprite_Sparkle', 'BITMAP_Battle_CardsceneFX']:
            continue
        bitmap.processed_path = 'autogenerated/' + FROM_SPRITE + name.lower() + '/' + name + 'Battle.tileset'
        search_term = FROM_SPRITE + name.lower() + '/' + name + 'Battle_*.spr'
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
        bitmap.contents.save_original_file(OUT_BITMAP + bitmap.label_name[14:] + 'Battle.tileset.png')
        #bitmap.replace_rom_text()

print('\n'.join(header))
