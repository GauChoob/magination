import os
import projutils.utils as utils
import projutils.config as config

# Snippets containing data to put into the Sprite Attribute Table (OAM)

SPRITE_FOLDER = config.outdir + "sprite/"


class Sprite:

    class SpriteEntry:
        def __init__(self, y, x, tileid, attr):
            self.y = y
            self.x = x
            self.tileid = tileid
            self.attr = attr

        def __str__(self):
            def sign(val):
                if val >= 0:
                    return ' '
                else:
                    return '-'

            return '    db {}${:02X}, {}${:02X}, ${:02X}, ${:02X}'.format(sign(self.y), abs(self.y), sign(self.x), abs(self.x), self.tileid, self.attr)

    EOF_BYTE = -0x80  # Negative because y is signed

    def __init__(self, rom: utils.Rom, address: utils.BankAddress):
        """Given a ROM, will read the OAM data for 1 "sprite", which is a collection of 4-byte OAM entries that collectively make up a single image"""
        self.start = address
        curpos = address

        self.entries = []
        while True:
            y = rom.getSignedByte(curpos)
            curpos += 1
            if y == Sprite.EOF_BYTE:
                break
            x = rom.getSignedByte(curpos)
            curpos += 1
            tileid = rom.getByte(curpos)
            curpos += 1
            attr = rom.getByte(curpos)
            curpos += 1
            self.entries.append(Sprite.SpriteEntry(y, x, tileid, attr))

        self.end = curpos

    def __str__(self):
        """.asm representation of file"""
        ret = ['    ; OAM Sprite entries', '    ;   Y     X  tileid attr']
        ret.extend([str(entry) for entry in self.entries])
        ret.append('    OAM_End')
        return '\n'.join(ret)

    def save(self, filename):
        """Saves the sprite as a .asm file"""
        os.makedirs(SPRITE_FOLDER, exist_ok=True)
        with open(os.path.join(SPRITE_FOLDER, filename + '.oam.asm'), 'w') as f:
            f.write(str(self))

    def size(self):
        """Returns the size in bytesof the sprite oam data"""
        return self.end - self.start
