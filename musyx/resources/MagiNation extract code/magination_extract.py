import musyx.info

musyxpos = 0x30*0x4000 #(MusyX is located at bank 0x30)
romfile = r"C:\Users\User\Master\Programs\Roms\MN\game.gbc"

musyx.info.get_NUMBER_OF_SONGS(romfile,musyxpos)
musyx.info.get_NUMBER_OF_MACROS(romfile,musyxpos)

import musyx.song, musyx.macro, musyx.adsr, musyx.sample, musyx.sfx, musyx.utils

macronames = []
musyx.macro.macro2mxm(romfile,musyxpos,macronames)

songnames = ["HappyTune",
"LevelUp",
"Victory",
"Bouncy",
"Overture_Pt_3",
"Overture_Pt_2",
"Overture_Pt_1",
"Quest",
"Rescue",
"Villainy",
"Mushroom_Farm",
"Parathin",
"Danger",
"Wasteland",
"The_Deep",
"Vash_Naroom",
"Orlon",
"Weave",
"Shadow_Geyser",
"Agram",
"Descent",
"Bogrom",
"Shop",
"Evu",
"Morag",
"Lesson",
"Gia",
"Sanctuary",
"Shadowhold",
"Ashyn",
"Mischief",
"Arderial",
"Core_Battle",
"Cald",
"Boss",
"Orwin",
"Glade",
"Curio",
"Forest",
"DreamCreature",
"Final_Battle",]
musyx.song.song2wav(romfile,musyxpos,songnames)

adsrnames = []
musyx.adsr.adsr2mxt(romfile,musyxpos,adsrnames)

samplenames = []
musyx.sample.sample2wav(romfile,musyxpos,samplenames)

sfxnames = []
musyx.sfx.sfx2info(romfile,musyxpos,sfxnames)