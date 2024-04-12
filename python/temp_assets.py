
import projutils.utils as utils
import projutils.filereference as filereference
import projutils.config as config
import projutils.tileset as tileset
import os

sym = utils.SymFile('python/BITsym2.sym')
rom = utils.Rom()
out = config.outdir

# sprite_list['ripple'] = 'assets\sprites\objects\ripple'
sprite_list = {}
for dirpath, dirnames, filenames in os.walk('assets\\sprites\\'):
    if dirnames:
        continue
    folder = dirpath.rsplit('\\', 1)[1]
    sprite_list[folder] = dirpath


destinations = {
    0x0A: sprite_list,
}


def parse_path(bank, ref: filereference.FileReference):
    label = ref.label_name
    label_title = label.rsplit('_', 1)[1]
    destination = destinations[bank]
    path = destination[label_title.lower()]
    return out + path + label + ref.contents.original_extension()


def build_args(ref, label):
    if ref.identity == tileset.Bitmap:
        return [label.endswith('RLE'), 0x10]
    return []


def get_bank_list(bank):
    return sorted(sym.symbols[bank].items())


def parse_bank(bank):
    files = get_bank_list(bank)
    for address, label in files:
        print(f'{bank:02X}-{address:04X}: {label}')
        if label == 'END':
            continue
        identity, label = label.split('_', 1)
        ref = filereference.FileReference.create_from_address(identity, rom, utils.BankAddress(bank, address), sym)
        ref.original_path = parse_path(bank, ref)
        ref.load_contents_from_rom(build_args(ref, label))
        ref.contents.save_original_file(ref.original_path)
        ref.replace_rom_text()
        break


parse_bank(0x0A)