
import projutils.utils as utils
import projutils.filereference as filereference
import projutils.config as config
import projutils.tileset as tileset


sym = utils.SymFile('python/BITsym2.sym')
rom = utils.Rom()
out = config.outdir

banks = {
    0x0A: 'assets/sprites/'
}

def build_args(ref, label):
    if ref.identity == tileset.Bitmap:
        return [label.endswith('RLE'), 0x10]
    return []


def parse_path(bank, path, label):
    return out + path + label


def get_bank_list(bank):
    return sorted(sym.symbols[bank].items())


def parse_bank(bank, path):
    files = get_bank_list(bank)
    for address, label in files:
        print(f'{bank:02X}-{address:04X}: {label}')
        if label == 'END':
            continue
        identity, label = label.split('_', 1)
        ref = filereference.FileReference.create_from_address(identity, rom, utils.BankAddress(bank, address), sym)
        ref.original_path = parse_path(bank, path, label)
        ref.load_contents_from_rom(build_args(ref, label))
        ref.contents.save_original_file(ref.original_path)
        ref.replace_rom_text()
