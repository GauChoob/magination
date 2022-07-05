import mido
import subprocess,os

for file in os.listdir("musyx/project/Midifiles"):
    mid = mido.MidiFile("musyx/project/Midifiles/"+file)
    quit=False
    for track in mid.tracks:
        for msg in track:
            if(msg.type == 'program_change' and msg.program==126):
                quit=True
                print(file)
                break
        if(quit):
            break