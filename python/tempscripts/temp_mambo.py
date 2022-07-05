import mido
import subprocess

mid = mido.MidiFile("python/mambo2.mid")

drumlookup = {
    35:3,
    39:6,
}


for i in range(len(mid.tracks)):
    lastdrum = 35
    newtrack = []
    print(len(mid.tracks[i]))
    for msg in mid.tracks[i]:
        try:
            #print(msg.key)
            if(msg.channel == 3 and msg.note != lastdrum):
                lastdrum = msg.note
                newtrack.append(mido.Message('program_change',program=drumlookup[lastdrum],time=0,channel=3))
        except AttributeError:
            pass
        newtrack.append(msg)
    mid.tracks[i] = newtrack


mid.save("python/out/mambo.mid")

subprocess.call(["gm2song.exe","-G","mambo.mid","mambo.song.dat"], cwd = r'python/out/', shell=True)