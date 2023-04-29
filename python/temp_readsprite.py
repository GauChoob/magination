import projutils.utils as u
import projutils.sprite as sprite

rom = u.Rom(u.Rom.MN)

spr = sprite.Sprite(rom, u.BankAddress(0x20, 0x6E97))

spr.save('test')
