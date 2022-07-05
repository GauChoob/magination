from utils import *

import math
NOTES = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']

def frequency_to_note(frequency):
    # define constants that control the algorithm
    NOTES = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B'] # these are the 12 notes in each octave
    OCTAVE_MULTIPLIER = 2 # going up an octave multiplies by 2
    KNOWN_NOTE_NAME, KNOWN_NOTE_OCTAVE, KNOWN_NOTE_FREQUENCY = ('A', 4, 440) # A4 = 440 Hz

    # calculate the distance to the known note
    # since notes are spread evenly, going up a note will multiply by a constant
    # so we can use log to know how many times a frequency was multiplied to get from the known note to our note
    # this will give a positive integer value for notes higher than the known note, and a negative value for notes lower than it (and zero for the same note)
    note_multiplier = OCTAVE_MULTIPLIER**(1/len(NOTES))
    frequency_relative_to_known_note = frequency / KNOWN_NOTE_FREQUENCY
    distance_from_known_note = math.log(frequency_relative_to_known_note, note_multiplier)

    # round to make up for floating point inaccuracies
    distance_from_known_note = round(distance_from_known_note)

    # using the distance in notes and the octave and name of the known note,
    # we can calculate the octave and name of our note
    # NOTE: the "absolute index" doesn't have any actual meaning, since it doesn't care what its zero point is. it is just useful for calculation
    known_note_index_in_octave = NOTES.index(KNOWN_NOTE_NAME)
    known_note_absolute_index = KNOWN_NOTE_OCTAVE * len(NOTES) + known_note_index_in_octave
    note_absolute_index = known_note_absolute_index + distance_from_known_note
    note_octave, note_index_in_octave = note_absolute_index // len(NOTES), note_absolute_index % len(NOTES)
    note_name = NOTES[note_index_in_octave]
    return (note_name, note_octave)

def convert_to_words(rom,bank,address,end):
    pos = bank_address_to_pos(bank,address)
    posend = bank_address_to_pos(bank,end)
    length = posend-pos
    assert length % 2 == 0
    with open("python/out/temp.txt","w") as g:
        with open(rom,"rb") as f:
            f.seek(pos)
            g.write(headeraddress+write_address(pos)+"\n")
            curnote = 5*12+0
            for i in range(length):
                val = f.read(1)
                note = NOTES[curnote % 12]+str(curnote//12)
                curnote+=1
                note2 = NOTES[curnote % 12]+str(curnote//12)
                if(curnote == 5*12+0x24):
                    curnote -= 0x54
                realkey = i
                if(realkey<=0x23):
                    realkey+=0x54
                g.write(db+"${:02X}      ;{:02X} {:02X}   {:3} -> {:3}\n".format(val[0],realkey,i,note,note2))
            g.write(headeraddress+write_address(posend)+"\n")

convert_to_words("game.gbc",0x30,0x5282,0x52D6)


