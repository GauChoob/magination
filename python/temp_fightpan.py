
import projutils.utils as utils




rom = utils.Rom()

curpos = utils.BankAddress(0x04, 0x6B3C)
endpos = utils.BankAddress(0x04, 0x6BDC)

durations = [12, 11, 0x39]

while curpos < endpos:
    print(utils.AsmBytes(rom.getRawSection(curpos, 2)))
    curpos += 2
    
curpos = utils.BankAddress(0x04, 0x6B3C)
for duration in durations:
    print(sum([rom.getByte(curpos + i*2)*rom.getByte(curpos + i*2 + 1) for i in range(duration)]))
    curpos += 2*duration