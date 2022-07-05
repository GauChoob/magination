import replace_rom_text
from utils import *
import extract_image
from PIL import Image, ImageDraw, ImagePalette
import palette
import os

def paletteToPNGpalette(file):
    img = Image.open(file)
    assert img.width % 8 == 0
    assert img.height % 8 == 0
    width = (img.width//8)
    height = (img.height//8)
    #colors = width*height
    palette = []
    for y in range(height):
        for x in range(width):
            r,g,b = img.getpixel((x*8+4,y*8+4))
            try:
                assert r % 8 == 0
                assert g % 8 == 0
                assert b % 8 == 0
            except AssertionError:
                print("Error! r,g,b must all be multiples of 8!")
                print("Color #"+str(y*width+x))
            palette.append((r,g,b))
    return palette


import png
def colorTileset(imagefile,tilemap,attrmap,vbk,tileoffset,palette,paletteoffset,addgreyscale=True,defaultpalette=0):

    def guessPaletteID(tilemap,attrmap,vbk):
        #tilemap and attrmap of equal size
        #vbk is the target vram bank of the tileset
        with open(tilemap,"rb") as f:
            tilemap = f.read()
        with open(attrmap,"rb") as f:
            attrmap = f.read()
        assert(len(tilemap)==len(attrmap))
        
        tiles = [[0,0,0,0,0,0,0,0] for _ in range(256)]
        
        for i in range(len(tilemap)):
            tile = tilemap[i]
            attr = attrmap[i]
            if (attr & 0b1000) != vbk:
                continue #wrong VRAM bank
            tiles[tile][attr % 0b0111] += 1
            
        for i in range(256):
            max_value = max(tiles[i])
            if(max_value == 0):
                tiles[i] = -1
            else:
                tiles[i] = tiles[i].index(max_value)
        return tiles

    guessedpalette = guessPaletteID(tilemap,attrmap,vbk)

    temp = png.Reader(imagefile)
    width,height,pixels,meta = temp.read()
    pixels=list(pixels)
    
    assert width % 8 == 0
    assert height % 8 ==0
    
    newpal = []
    if(addgreyscale):
        newpal = [(0xFF,0xFF,0xFF),(0xBF,0xBF,0xBF),(0x7F,0x7F,0x7F),(0x3F,0x3F,0x3F)]
        paletteoffset += 1
    newpal.extend(paletteToPNGpalette(palette))

    assert max(guessedpalette)+paletteoffset < len(newpal)//4 #Make sure no palettes are out of bounds
    
    for i in range(256):
        targettile = (i+tileoffset) & 0xFF
        y = targettile // (width//8)
        if(y>=(height//8)):
            continue
        x = targettile - (width//8)*y
        if(guessedpalette[i] == -1):
            newpaletteid = defaultpalette
        else:
            newpaletteid = guessedpalette[i]+paletteoffset
        for y2 in range(8):
            for x2 in range(8):
                pixels[y*8+y2][x*8+x2] += newpaletteid*4
                
    
    imagefilesplit = os.path.splitext(imagefile)
    f = open(imagefilesplit[0]+".color"+imagefilesplit[1], 'wb')
    w = png.Writer(width, height, alpha=False, bitdepth=8, palette=newpal)
    w.write(f, pixels)
    f.close()
    
palette.data_to_png("Reference.png",bytes([0x02, 0x08, 0x4B, 0x10, 0xB5, 0x19, 0xFF, 0x7F]))
colorTileset("python/test/InteractiveImaginationLogo.tileset.png","python/test/InteractiveImaginationLogoRLE0.tilemap","python/test/InteractiveImaginationLogoRLE0.attrmap",0,0,"python/test/InteractiveImaginationLogo.pal.png",0,addgreyscale=True,defaultpalette=0)





