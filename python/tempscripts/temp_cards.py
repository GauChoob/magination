import replace_rom_text
from utils import *
import extract_image
import colorize

#replace_rom_text.reset_files()

#extract_image.extract_image("../MN.gbc",0x4a,0x668B,0x688B-0x668B,"")

#extract_image.png_to_twobpp(r"python\out\dreamcreatures\combat\AbaquistRLE5.tileset.color.png","python/out/dreamcreatures/combat/abatest.2bpp")


palettecard = colorize.paletteToPNGpalette("python/ReferenceDuel.png")
extract_image.extract_image("MenuBase","../MN.gbc",0x06,0x50B0,0x60,"",palettecard[7*4:7*4+4])