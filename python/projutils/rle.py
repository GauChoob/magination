import os
import io
import re
import projutils.utils as utils


# This module implements the RLE algorithm used in Magi Nation
# There are multiple different ways one could compress the a file, so the module checks to make sure
#  it is able to re-compress the file to the exact same signature as the original data
# It saves the compression algorithm used by a number "mode" that is included in the saved filename

modePriority = ["A", "B", "C", "D", "2"]
# mode "X" means unknown mode


def decompress_rle(data: bytes | utils.Rom, start: int, only_get_decompressed: bool = False) -> tuple[bytearray, str, bytes, int]:
    """Decompresses a file, then determines which compression algorithm was used to compress it.
    Returns (uncompressed_file, compression_algorithm, compressed_file, end_of_file_position)
    You can also pass only_get_decompressed to only return the decompressed bytearray"""

    if not isinstance(data, utils.Rom):
        data = utils.Rom(data)
    # First, decompress the file
    uncompressed = bytearray()
    pos = start
    while True:
        header = data.getByte(pos)
        pos += 1
        length = header & 0b00111111
        if header & 0b01000000:
            # Two-byte length
            length = length*256 + data.getByte(pos)
            pos += 1
        elif length == 0:
            # EOF
            break
        if header & 0b10000000:
            # Copy single byte multiple times
            uncompressed.extend(data.getRawSection(pos, 1)*length)
            pos += 1
        else:
            # Raw data, uncompressed
            uncompressed.extend(data.getRawSection(pos, length))
            pos += length
    end = pos

    if only_get_decompressed:
        return uncompressed

    # Get the original compressed file
    original_compressed = data.getRawSection(start, end-start)

    # Loop to find the correct compression mode
    for mode in modePriority:
        re_compressed = compress_rle(uncompressed, mode)
        if original_compressed == re_compressed:
            return uncompressed, mode, original_compressed, end
    # Failed to find correct mode - set mode to "X"
    return uncompressed, "X", original_compressed, end


def compress_rle(f: io.IOBase | bytes | bytearray, mode: str) -> bytearray:
    """Given a file object or bytes data, compress according to algorithm "mode"
    Returns a bytearray that contains the compressed data"""
    def header(length: int, compress: bool):
        # Generates the header byte(s) based on length and compress mode
        if length > 0b00111111_11111111:
            # Over the max length of 0b00111111_1111111 = 0x4000
            # This should not happen as a bank is max 0x4000 in size
            raise NotImplementedError("length is > 0x3FFF")
        compress = 0b10000000 if compress else 0b00000000
        if length <= 0b00111111:
            return bytes([compress | length])
        else:
            return bytes([compress | 0b01000000 | (length >> 8), length % 256])

    def getByte(data, start):
        if len(data) <= start:
            return -1
        else:
            return data[start]

    g = bytearray()
    if isinstance(f, io.IOBase):
        raw = f.read()
    else:
        raw = f

    if mode == "2":
        # No compression
        maxlen = len(raw)
        g.extend(header(maxlen, False))
        g.extend(raw[0:maxlen])
        g.extend(b'\x00')
        return g

    if mode in ["A", "B", "C", "D"]:
        """
                Alternative ABB_ + ABBCC behaviour    EOF bug
        Mode A                  No                      No
        Mode B                  Yes                     No
        Mode C                  No                      Yes
        Mode D                  Yes                     Yes

        Logic Schematic (_ = EOF):

        StartOfFile:
            Goto NewBlock
        NewBlock
            If _, goto EOF
            If A_, Header Uncompressed, write A, goto EOF
            If AA, Header Repetition, write A, goto Repetition
            If AB, Header Uncompressed, goto UncompressedFirst
        Repetition
            If A_, goto EOF
            If AA, goto Repetition
            If AB, goto NewBlock (pointing at B)
        UncompressedFirst
            assert not A_
            assert not AA
            If AB_, write AB, goto EOF
            If ABC, write AB, goto UncompressedSecond
            If ABB_,
                If Alternative behaviour (mode B/D)
                    Write A, goto NewBlock
                If Default behaviour (mode A/C)
                    Write ABB, goto EOF
            If ABBB, write A, goto NewBlock
            If ABBC_, Unknown (no occurances in sample files so far) -> assume write ABBC goto EOF
            If ABBCC, -> check the mode
                If Alternative behaviour (mode B/D)
                    Write A, goto NewBlock
                If Default behaviour (mode A/C)
                    Write ABB, goto NewBlock
            If ABBCD_, write ABBCD, goto EOF (1 sample data only)
            If ABBCDE, write ABBCD, goto UncompressedSecond
            If ABBCDD_, Unknown (not encountered natively) - assume write ABBCDD, goto EOF (but it could have different behaviour)
            If ABBCDDE, write ABBCDD, goto NewBlock (even if the NewBlock is another uncompressed sample)
            If ABBCDDD, write ABBC, goto NewBlock
        UncompressedSecond
            If A_, write A, goto EOF
            If AA, goto NewBlock
            If AB, write A, goto UncompressedSecond
        EOF
            If EOF_bug (mode C/D):
                If the file reaches EOF in an uncompressed chunk, the last byte will be encoded as its own block
                e.g. EOF looks like this: Header(8,Uncompressed) ABCDEFGH Header(1,Uncompressed) I $00
            Else (mode A/B):
                write $00
        """
        modeint = ord(mode) - ord("A")
        alternateABBCC = True if modeint & 0b01 else False
        eofbug = True if modeint & 0b10 else False

        curpos = 0
        maxlen = len(raw)
        while curpos < maxlen:
            # StartOfFile
            a = getByte(raw, curpos+0)
            b = getByte(raw, curpos+1)
            # _ - EOF
            if a == -1:
                break
            # A_ - UNCOMPRESSED
            if b == -1:
                length = 1
                g.extend(header(length, False))
                g.extend(raw[curpos:curpos+length])
                curpos += length
                continue
            # AA - COMPRESSED
            if a == b:
                length = 2
                # Loop while AA
                while getByte(raw, curpos+length) == a:
                    length += 1
                # AB or A_
                g.extend(header(length, True))
                g.extend(raw[curpos:curpos+1])
                curpos += length
                continue
            # AB - UNCOMPRESSEDFIRST
            if a != b:
                c = getByte(raw, curpos+2)
                d = getByte(raw, curpos+3)
                e = getByte(raw, curpos+4)
                f = getByte(raw, curpos+5)
                gg = getByte(raw, curpos+6)
                # ABC or AB_
                if b != c:
                    length = 2
                # ABB
                elif b == c:
                    # ABB_
                    if d == -1:
                        if alternateABBCC:
                            length = 1
                        else:
                            length = 3
                    # ABBB
                    elif c == d:
                        length = 1
                        g.extend(header(length, False))
                        g.extend(raw[curpos:curpos+length])
                        curpos += length
                        continue
                    # ABBC
                    elif c != d:
                        # ABBC_
                        if e == -1:
                            length = 4
                        # ABBCC
                        elif d == e:
                            if alternateABBCC:
                                length = 1
                                g.extend(header(length, False))
                                g.extend(raw[curpos:curpos+length])
                                curpos += length
                                continue
                            else:
                                length = 3
                                g.extend(header(length, False))
                                g.extend(raw[curpos:curpos+length])
                                curpos += length
                                continue
                        # ABBCD
                        elif d != e:
                            # ABBCD_
                            if f == -1:
                                length = 5
                            # ABBCDE
                            elif e != f:
                                length = 5
                            # ABBCDD
                            elif e == f:
                                # ABBCDD_
                                if gg == -1:
                                    length = 6  # not sure how this is handled and it has never happened
                                # ABBCDDD
                                elif f == gg:
                                    length = 4
                                    g.extend(header(length, False))
                                    g.extend(raw[curpos:curpos+length])
                                    curpos += length
                                    continue
                                # ABBCDDE
                                elif f != gg:
                                    length = 6
                                    g.extend(header(length, False))
                                    g.extend(raw[curpos:curpos+length])
                                    curpos += length
                                    continue
                # UNCOMPRESSEDSECOND
                # Loop until AA or __
                a = getByte(raw, curpos+length+0)
                b = getByte(raw, curpos+length+1)
                while a != b:
                    length += 1
                    a = getByte(raw, curpos+length+0)
                    b = getByte(raw, curpos+length+1)
                if eofbug and a == -1 and length >= 2:
                    length -= 1
                g.extend(header(length, False))
                g.extend(raw[curpos:curpos+length])
                curpos += length
                continue
        g.extend(b'\x00')
        return g

    raise ValueError("Unknown mode: {}".format(mode))


def upgrade_mode(folder: str = "assets/") -> None:
    """Loops through all the compressed files in the assets folder.
    Determines if there's a higher priority mode that can be used that produces the
    same compressed file. If so, change the file's mode to the higher priority mode"""

    rleregex = r"^(.*)RLE([0-9A-Z])\.(.*)(?!rle)$"

    counts = {}
    for mode in modePriority:
        counts[mode] = 0
    counts["X"] = 0

    for header, dirs, files in os.walk(folder):
        for file in files:
            relpath = os.path.join(header, file)
            dir = os.path.split(relpath)[0]
            # n is the mode (the compression algorithm used)
            matchobj = re.match(rleregex, file)
            if matchobj:
                basename = matchobj.group(1)
                mode = matchobj.group(2)
                ext = matchobj.group(3)
                with open(relpath, "rb") as f:
                    ori_unc = f.read()
                compressed = compress_rle(ori_unc, mode)
                compressedr = utils.Rom(compressed, 0)
                uncompressed, mode, ori_com, end = decompress_rle(compressedr, 0)

                assert ori_unc == uncompressed
                assert compressed == ori_com
                newfile = dir + "/" + basename + "RLE" + mode + "." + ext
                if mode == "X":
                    print("{} -> {}".format(file, newfile))
                    print("MODE X MODE X")
                    input()
                else:
                    print("{} -> {}".format(file, newfile))
                    os.rename(relpath, newfile)
                counts[mode] += 1
    for mode in counts:
        print("{}: {}".format(mode, counts[mode]))


def compress_to_file(filein: str, fileout: str, mode: str) -> None:
    """Compresses an uncompressed file using a given mode, and saves to a new file"""
    with open(filein, "rb") as f:
        with open(fileout, "wb") as g:
            g.write(compress_rle(f, mode))
