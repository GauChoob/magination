def file_to_pattern(filein: str, fileout: str):
    """converts .pattern.tilemap and .pattern.attrmap to .pattern
    filein: file.pattern.tilemap
    fileout: destination .pattern file"""
    ext = "pattern.tilemap"
    assert filein[-len(ext):] == ext
    # Use tilemap and not attrmap

    tilefile = filein
    attrfile = filein[:-7] + "attrmap"

    data = []

    with open(tilefile, "rb") as f:
        data.append(f.read())
    with open(attrfile, "rb") as f:
        data.append(f.read())

    assert len(data[0]) == 0x400
    assert len(data[1]) == 0x400

    with open(fileout, "wb") as f:
        for i in range(2):
            for j in range(0x100):
                coord = 0x40*(j//0x10) + 2*(j % 0x10)
                f.write(data[i][coord:coord + 2])
                coord += 0x20
                f.write(data[i][coord:coord + 2])


def data_to_file(savefile, data):
    """converts raw pattern data to .pattern.tilemap and .pattern.attrmap"""
    assert savefile[-7:] == "pattern"
    filenames = [savefile+".tilemap", savefile+".attrmap"]

    assert len(data) == 0x800

    for i in range(2):
        with open(filenames[i], "wb") as f:
            for j in range(0x10):  # 0x10 metarows
                for k in range(2):  # 2 rows in each metarow
                    for m in range(0x10):  # 0x10 entries in each row
                        coord = 0x400*i + 0x40*j + m*4 + k*2
                        f.write(data[coord:coord+2])
