import os
import projutils.colorize as colorize
import projutils.tileset as tileset
import projutils.color as color
import io 

pal = color.png_to_array("projutils/data/Icon.pal.png")

for file in os.listdir("C:/Programs/ROM/MN/leaked - annotated/Magi-Nation - September 2000/Manual/BIN"):
    if(file[-8:-4]=="ICON" or (file[4:9]=="WEEBO" and file[6:10] != "CARD" and file[0:3]=="BIT")):
        with open("C:/Programs/ROM/MN/leaked - annotated/Magi-Nation - September 2000/Manual/BIN/"+file,"rb") as f:
            fr = f.read()
            tileset.data_to_png("out/"+file[4:-4]+".png",fr,5*8,palette=pal)