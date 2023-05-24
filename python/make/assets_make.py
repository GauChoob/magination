import os
import re
import shutil

import sys
sys.path.append('python/')

if True:
    import projutils.rle as rle
    import projutils.color as color
    import projutils.tileset as tileset
    import projutils.pattern as pattern

# This module makes all the assets used in the assembly of the RAM
# It converts
#   tileset.png                 to      .tileset (2bpp)
#   pal.png                     to      .pal (list of Colors)
#   mtiledef.tilemap/attrmap    to      .mtiledef (metatile definition)
#   RLEx.extension  to      .extension.rle (run-length-encoded file)

folders = [
    "assets",
    # "python/out",  #For tests
    ]

rleextensions = [
    r"tilemap",
    r"attrmap",
    r"pal",
    r"tileset",
    r"collision\.tilemap",
    r"metatile\.tilemap",
    r"pattern"
]

# Include *RLEn.ext          n = 0-9A-Z
# Exclude *.RLE              ext = only if listed in the list above
rleregex = r"^(.*)RLE([0-9A-Z])\.(?!rle)({})$".format('|'.join(rleextensions))

outfolder = "autogenerated"

# All regex is case-sensitive


for folder in folders:
    for header, dirs, files in os.walk(folder):
        if not os.path.exists(os.path.join(outfolder, header)):
            os.makedirs(os.path.join(outfolder, header))
        for file in files:
            relpath = os.path.join(header, file)
            # Include *.tileset.png -> *.tileset
            if(re.match(r"^.*\.tileset\.png$", file)):
                print("2BPP      "+relpath)
                bitmap = tileset.Bitmap.init_from_original_file(relpath)
                bitmap.save_processed_file(os.path.join(outfolder, os.path.splitext(relpath)[0]))
            # Include *.pal.png -> *.pal
            elif(re.match(r"^.*\.pal\.png$", file)):
                print("PAL       "+relpath)
                pal = color.Palette(relpath)
                pal.save_pal(os.path.join(outfolder, os.path.splitext(relpath)[0]))
            # Include .pattern.tilemap (which also processes .pattern.attrmap) -> .pattern
            elif(re.match(r"^.*\.pattern\.tilemap$", file)):
                print("Pattern   "+relpath)
                pat = pattern.Pattern.init_from_original_file(relpath)
                pat.save_processed_file(os.path.join(outfolder, os.path.splitext(relpath)[0]))
            # Include *.tilemap, (including collision.tilemap and metatile.tile)
            elif(re.match(r"^.*\.tilemap$", file)):
                print("Tilemap   "+relpath)
                shutil.copyfile(relpath, os.path.join(outfolder, relpath))
            # Include *.attrmap (also uselessly copies pattern.attrmap)
            elif(re.match(r"^.*\.attrmap$", file)):
                print("Attrmap   "+relpath)
                shutil.copyfile(relpath, os.path.join(outfolder, relpath))
            # Include *.asm
            elif(re.match(r"^.*\.asm$", file)):
                print("Asm       "+relpath)
                shutil.copyfile(relpath, os.path.join(outfolder, relpath))

for folder in folders:
    for header, dirs, files in os.walk(os.path.join(outfolder, folder)):
        for file in files:
            relpath = os.path.join(header, file)
            dir = os.path.split(relpath)[0]
            # n is the mode (the compression algorithm used)
            matchobj = re.match(rleregex, file)
            if(matchobj):
                split = os.path.splitext(relpath)
                basename = matchobj.group(1)
                mode = matchobj.group(2)
                ext = matchobj.group(3)
                print("RLE-"+mode+"     "+relpath)
                newname = dir+"/"+basename+"."+ext+".rle"
                rle.compress_to_file(relpath, newname, mode)
