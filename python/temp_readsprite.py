import projutils.utils as utils
import projutils.sprite as sprite

rom = utils.Rom(utils.Rom.MN)
sym = utils.SymFile()

spr = sprite.Sprite.init_from_rom(rom, sym, utils.BankAddress(0x20, 0x6E97))

spr.save_original_file('test')
