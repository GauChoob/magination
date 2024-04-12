
import projutils.utils as utils
import projutils.filereference as filereference
import projutils.config as config
import projutils.tileset as tileset
import projutils.color as color
import projutils.sprite as sprite
import os

sym = utils.SymFile('python/BITsym2.sym')
rom = utils.Rom()
out = config.outdir
sprite_pal = color.Palette.init_from_original_file('python/projutils/data/AllSprites.pal.png')
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



destinations = {
    0x0A: sprite_list,
}


def colorize(ref: filereference.FileReference):
    if ref.identity != tileset.Bitmap:
        return False
    offset = 0x8000
    offset_name = ref.label_name.rsplit('_', 1)[1]
    if offset_name in sprite_offsets.bases:
        offset += sprite_offsets.bases[offset_name]*0x10
    ref.contents.colorize_from_sprite(ref._spr_glob, 0, offset, color.Palette.init_from_list(sprite_pal.palette), 0, True, 0)
    return True


def parse_path(bank, ref: filereference.FileReference):
    label = ref.label_name
    label_title = label.rsplit('_', 1)[1]
    destination = destinations[bank]
    path = destination[label_title]
    spr_glob = path + label_title + '_*.spr'
    no_extension = path + label
    no_extension = no_extension.replace('\\', '/')
    return [spr_glob, no_extension + ref.contents.original_extension(), no_extension + ref.contents.processed_extension()]


def build_args(ref: filereference.FileReference):
    if ref.identity == tileset.Bitmap:
        size = ref._size
        tilesize = 0x10
        width = 0x10
        height = -(-size//tilesize//width)  # Round up
        return [ref.label_name.endswith('RLE'), width, height, size]
    return []


def get_bank_list(bank):
    return sorted(sym.symbols[bank].items())


def parse_bank(bank):
    files = get_bank_list(bank)
    bitsprite_list = []
    for i, (address, label) in enumerate(files):
        if len(label) > 1:
            raise KeyError
        label = label[0]
        print(f'{bank:02X}-{address:04X}: {label}')
        if label == 'END':
            continue
        address_end = files[i + 1][0]
        identity, label = label.split('_', 1)
        ref = filereference.FileReference.create_from_address(identity, rom, utils.BankAddress(bank, address), sym)
        ref._size = address_end - address
        ref.load_contents_from_rom(*build_args(ref))
        ref._spr_glob, ref.original_path, ref.processed_path = parse_path(bank, ref)
        colorize(ref)
        outpath = out + ref.original_path
        os.makedirs(os.path.dirname(outpath), exist_ok=True)
        ref.contents.save_original_file(outpath)
        #ref.contents.save_original_file(ref.original_path)
        ref.replace_rom_text()
        bitsprite_list.append(f'    BITMAP_Sprite {ref.label_name}, "{ref.processed_path}"')
    with open('python/out/bitsprite.asm', 'w') as f:
        f.write('\n'.join(bitsprite_list))


parse_bank(0x0A)