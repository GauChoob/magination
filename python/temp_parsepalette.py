import os
import projutils.colorize as colorize
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as u
import projutils.battle_targets as targets
import projutils.elemental as elem
import io 


rom = u.Rom()

color.data_to_png("python/out/Cardscene.png",rom.getRawSection(u.BankAddress(0x04,0x4000),0x30))
color.data_to_png("python/out/Textbox.png",rom.getRawSection(u.BankAddress(0x04,0x4030),0x08))