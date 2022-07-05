import mido
import subprocess

mid = mido.MidiFile()

mid.type = 1
mid.ticks_per_beat = 64

track = mido.MidiTrack()
mid.tracks.append(track)

bpm = 120
track.append(mido.MetaMessage('set_tempo',time=0,tempo=60000000//bpm))

track.append(mido.Message('note_on',note=0x51,velocity=127,time=128))
track.append(mido.Message('note_off',note=0x51,velocity=127,time=128))
track.append(mido.Message('note_on',note=0x52,velocity=127,time=128))
track.append(mido.Message('note_off',note=0x52,velocity=127,time=128))
track.append(mido.Message('note_on',note=0x53,velocity=127,time=128))
track.append(mido.Message('note_off',note=0x53,velocity=127,time=128))
track.append(mido.Message('note_on',note=0x54,velocity=127,time=128))
track.append(mido.Message('note_off',note=0x54,velocity=127,time=128))
track.append(mido.Message('note_on',note=0x55,velocity=127,time=128))
track.append(mido.Message('note_off',note=0x55,velocity=127,time=128))
track.append(mido.Message('note_on',note=0x56,velocity=127,time=128))
track.append(mido.Message('note_off',note=0x56,velocity=127,time=128))

# track.append(mido.Message('program_change',program=10,time=0))
# track.append(mido.Message('note_on',note=64,velocity=127,time=128))
# track.append(mido.Message('note_off',note=64,velocity=127,time=128))

# track.append(mido.Message('program_change',program=7,time=0))
# track.append(mido.Message('note_on',note=64,velocity=127,time=128))
# track.append(mido.Message('note_off',note=64,velocity=127,time=128))

# track.append(mido.Message('program_change',program=85,time=0))
# track.append(mido.Message('note_on',note=64,velocity=127,time=128))
# track.append(mido.Message('note_off',note=64,velocity=127,time=128))

# track.append(mido.Message('program_change',program=9,time=0))
# track.append(mido.Message('note_on',note=64,velocity=127,time=128))
# track.append(mido.Message('note_off',note=64,velocity=127,time=128))

# track.append(mido.Message('program_change',program=1,time=0))
# track.append(mido.Message('note_on',note=64,velocity=127,time=128))
# track.append(mido.Message('note_off',note=64,velocity=127,time=128))

# track.append(mido.Message('program_change',program=2,time=0))
# track.append(mido.Message('note_on',note=64,velocity=127,time=128))
# track.append(mido.Message('note_off',note=64,velocity=127,time=128))

# track.append(mido.Message('program_change',program=0,time=0))
# track.append(mido.Message('note_on',note=64,velocity=127,time=128))
# track.append(mido.Message('note_off',note=64,velocity=127,time=128))

# track.append(mido.Message('program_change',program=3,time=0))
# track.append(mido.Message('note_on',note=64,velocity=127,time=128))
# track.append(mido.Message('note_off',note=64,velocity=127,time=128))

# track.append(mido.Message('program_change',program=6,time=0))
# track.append(mido.Message('note_on',note=64,velocity=127,time=128))
# track.append(mido.Message('note_off',note=64,velocity=127,time=128))

# track.append(mido.Message('program_change',program=124,time=0))
# track.append(mido.Message('note_on',note=64,velocity=127,time=128))
# track.append(mido.Message('note_off',note=64,velocity=127,time=128))

# track.append(mido.Message('program_change',program=126,time=0))
# track.append(mido.Message('note_on',note=64,velocity=127,time=128))
# track.append(mido.Message('note_off',note=64,velocity=127,time=128))

track.append(mido.MetaMessage('end_of_track'))

mid.save("python/out/Test.mid")

subprocess.call(["gm2song.exe","-G","test.mid","test.song.dat"], cwd = r'python/out/', shell=True)