
import projutils.utils as utils



FX = [
    [0x6DE9, 0x08, 'Fightscene_TileFX_DissolveTable_Fast_Data'],
    [0x6DF9, 0x10, 'Fightscene_TileFX_DissolveTable_Slow_Data'],
]
rom = utils.Rom()

for fx in FX:
    datatable = rom.getWord(utils.BankAddress(0x04, fx[0]))
    curpos = utils.BankAddress(0x04, datatable)
    print(curpos)
    print(fx[2]+':')
    for i in range(fx[1]):
        rowlower = rom.getByte(curpos)
        curpos += 1
        masklower = rom.getByte(curpos)
        curpos += 1
        rowupper = rom.getByte(curpos)
        curpos += 1
        maskupper = rom.getByte(curpos)
        curpos += 1
        assert rowlower + 1 == rowupper
        assert rowlower % 2 == 0
        assert maskupper == masklower
        print('Fightscene_TileFX_DissolveTable_Data ${:02X}, %{:08b}'.format(rowlower//2, masklower))
    if fx[2] == 'Fightscene_TileFX_DissolveTable_Slow_Data':
        print('    db ' + rom.getString(curpos, 10))
        curpos += 10
        print(utils.AsmBytes(rom.getRawSection(curpos, 6)))

# for fx in FX:
#     startpos = utils.BankAddress(0x04, fx[0])
#     curpos = utils.BankAddress(0x04, fx[0])
#     endpos = utils.BankAddress(0x04, fx[0] + fx[1])
#     outlines = []
#     label = 'Fightscene_FightFX_MoveTable_{:04X}'.format(fx[0])
#     while curpos < endpos:
#         linepos = curpos - startpos
#         x = rom.getSignedByte(curpos)
#         curpos += 1
#         y = rom.getSignedByte(curpos)
#         curpos += 1
#         delay = rom.getByte(curpos)
#         curpos += 1
#         if x == y == delay == 0:
#             goto = rom.getByte(curpos)
#             curpos += 1
#             times = rom.getByte(curpos)
#             curpos += 1
#             outlines.append(Loop(linepos, times))
#             found = False
#             for i, line in enumerate(outlines):
#                 if line.linepos == goto:
#                     found = True
#                     outlines.insert(i, Goto())
#                     break
#             if not found:
#                 print('LOOP ERROR with {}'.format(label))
#         else:
#             outlines.append(Normal(linepos, x, y, delay + 1))
#     outlines.insert(0, Start(label))
#     outlines.append(End())
#     print('\n'.join([str(line) for line in outlines]))
#     if curpos > endpos:
#         print('ERROR with {}'.format(label))
#         print(curpos, endpos)
#     print('\n\n\n')