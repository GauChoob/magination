import replace_rom_text
from utils import *
import extract_image
import colorize


for file in os.listdir("python/out"):
    
colorize.colorTileset("python/test/MusyX.tileset.png","python/test/MusyXRLE0.tilemap","python/test/MusyXRLE0.attrmap",0,0,"python/test/MusyX.pal.png",0,addgreyscale=False,defaultpalette=0)