import os
import shutil
import projutils.config as config
import projutils.lbm as lbm
from PIL import Image

folders = [
    "lbmpcx",
    ]

actually_lbm = ['CREGATE4.PCX']  # Actually LBM files
actually_pcx = ['PAT_CRE2.LBM']  # Actually PCX files

for folder in folders:
    for header, dirs, files in os.walk(folder):
        outdir = os.path.join(config.outdir, header)
        if not os.path.exists(outdir):
            os.makedirs(outdir)
        for file in files:
            outfile = os.path.join(outdir, file)
            relpath = os.path.join(header, file)

            if(file in actually_pcx):
                with Image.open(relpath) as f:
                    f.save(outfile + '.png')

            elif(file[-4:].lower() in ['.lbm', '.bbm']) or file in actually_lbm:
                lbm.LBM(relpath).save_png(outfile + '.png')

            elif(file[-4:].lower() in ['.pcx', '.psd']):
                with Image.open(relpath) as f:
                    f.save(outfile + '.png')

            elif(file[-4:].lower() in ['.bmp', '.gif']):
                shutil.copy(relpath, outfile)
            else:
                print(relpath)
