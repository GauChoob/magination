
import projutils.utils as utils
import projutils.filereference as filereference
import projutils.config as config
import projutils.tileset as tileset
import projutils.color as color
import projutils.sprite as sprite
import projutils.tilemap as tilemap
import os

sym = utils.SymFile('python/BITsym2.sym')
sym_full = utils.SymFile()
rom = utils.Rom()
out = config.outdir
sprite_palettes = sprite.SpritePalettes()
sprite_offsets = sprite.SpriteOffsets()


# sprite_list['Ripple'] = 'assets\sprites\objects\ripple'
sprite_list = {}
for dirpath, dirnames, filenames in os.walk('assets\\sprites\\'):
    if dirnames:
        continue
    for filename in filenames:
        if not filename.endswith('.spr'):
            continue
        folder = None
        if '_' in filename:
            folder = filename.split('_', 1)[0]
        else:
            folder = filename.split('.', 1)[0]
        sprite_list[folder] = dirpath + '\\'
sprite_list['ParathinTony'] = sprite_list['Parathin']


def colorize(ref: filereference.FileReference):
    if ref.identity != tileset.Bitmap:
        return False
    offset = 0x8000
    vbk = 0
    offset_name = ref.label_name.rsplit('_', 1)[1]
    if offset_name in sprite_offsets.bases:
        delta = sprite_offsets.bases[offset_name]
        if delta >= 0x100:
            vbk = 1
            delta -= 0x100
        offset += sprite_offsets.bases[offset_name]*0x10
    sprite_name = ref.label_name.rsplit('_', 1)[1]
    palette = color.Palette.init_from_original_file(sprite_palettes.get(sprite_name))
    ref.contents.colorize_from_sprite(ref._spr_glob, vbk, offset, palette, 0, True, 0)
    return True


def parse_path(ref: filereference.FileReference):
    if ref.bankaddress.getBank() == 0x26 or ref.identity == tilemap.AttrMap or ref.identity == tilemap.Tilemap:
        path = 'assets/credits/'
        label = ref.label_name.split('_', 1)[1]
        if label.endswith('RLE'):
            label = label[:-3]
        if ref.identity == tileset.BitSet:
            return [None, path + label + ref.contents.original_extension(), None]
        return [None, path + label + ref.contents.original_extension(), 'autogenerated/' + path + label + ref.contents.processed_extension() + '.rle']
    elif ref.identity == tileset.Bitmap:
        label = ref.label_name
        label_title = label.rsplit('_', 1)[1]
        path = sprite_list[label_title]
        spr_glob = path + label_title + '.spr'
        if not os.path.exists(path + label_title + '.spr'):
            spr_glob = path + label_title + '_*.spr'
        spr_glob = spr_glob.replace('ParathinTony', 'Parathin') # Special exception
        no_extension = path + label.split('_', 2)[2]
        no_extension = no_extension.replace('\\', '/')
        return [spr_glob, no_extension + ref.contents.original_extension(), 'autogenerated/' + no_extension + ref.contents.processed_extension()]
    elif ref.identity == color.Palette:
        no_extension = 'assets/sprites/scene/' + ref.label_name.split('_', 2)[2]
        return [None, no_extension + ref.contents.original_extension(), 'autogenerated/' + no_extension + ref.contents.processed_extension()]
    raise KeyError


def build_args(ref: filereference.FileReference):
    if ref.identity == tileset.Bitmap:
        size = ref._size
        tilesize = 0x10
        width = 0x10
        height = -(-size//tilesize//width)  # Round up
        return [ref.label_name.endswith('RLE'), width, height, size]
    elif ref.identity == color.Palette:
        return [ref._size//2]
    elif ref.identity == tilemap.Tilemap:
        return [ref.label_name.endswith('RLE'), ref._size]
    elif ref.identity == tilemap.AttrMap:
        return [ref.label_name.endswith('RLE'), ref._size]
    return []


def get_bank_list(bank):
    return sorted(sym.symbols[bank].items())


def parse_bank(bank):
    files = get_bank_list(bank)
    bitsprite_list = []
    transmit = input('"Transmit" to save in real folder\n') == 'Transmit'
    for i, (address, label) in enumerate(files):
        if len(label) > 1:
            raise KeyError
        label = label[0]
        print(f'{bank:02X}-{address:04X}: {label}')
        if label == 'END':
            continue
        address_end = files[i + 1][0]
        identity, label = label.split('_', 1)
        if identity == 'ATTRTILE':
            attraddr = utils.BankAddress(bank, address)
            sym.replaceSymbol(bank, attraddr.getAddress(), 'ATTR_' + label)
            attr = filereference.FileReference.create_from_address('ATTR', rom, attraddr, sym)
            attr._size = None
            attr.load_contents_from_rom(*build_args(attr))
            _, attr.original_path, attr.processed_path = parse_path(attr)
            tileaddr = utils.BankAddress(bank, address + attr.contents.size())
            sym.replaceSymbol(bank, tileaddr.getAddress(), 'TILE_' + label)
            tile = filereference.FileReference.create_from_address('TILE', rom, tileaddr, sym)
            tile._size = None
            tile.load_contents_from_rom(*build_args(tile))
            _, tile.original_path, tile.processed_path = parse_path(tile)
            out_attr = out + attr.original_path
            out_tile = out + tile.original_path
            os.makedirs(os.path.dirname(out_attr), exist_ok=True)
            attr.contents.save_original_file(out_attr)
            tile.contents.save_original_file(out_tile)
            if transmit:
                attr.contents.save_original_file(attr.original_path)
                tile.contents.save_original_file(tile.original_path)
            bitsprite_list.append(f'ATTRTILE_{label}::\n{attr.contents.generate_include(attr.processed_path)}\n{tile.contents.generate_include(tile.processed_path)}\n')
        else:
            if identity == 'BITSET':
                ref = filereference.FileReference.create_from_address(identity, rom, utils.BankAddress(bank, address), sym_full)
            else:
                ref = filereference.FileReference.create_from_address(identity, rom, utils.BankAddress(bank, address), sym)
            ref._size = address_end - address
            ref.load_contents_from_rom(*build_args(ref))
            ref._spr_glob, ref.original_path, ref.processed_path = parse_path(ref)
            colorize(ref)
            outpath = out + ref.original_path
            os.makedirs(os.path.dirname(outpath), exist_ok=True)
            ref.contents.save_original_file(outpath)
            if transmit:
                ref.contents.save_original_file(ref.original_path)
            #ref.replace_rom_text()
            bitsprite_list.append(f'    BITMAP_Sprite {ref.label_name}, "{ref.processed_path}"')
    with open('python/out/bitsprite.asm', 'w') as f:
        f.write('\n'.join(bitsprite_list))


parse_bank(0x41)