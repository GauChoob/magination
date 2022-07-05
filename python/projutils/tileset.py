import math
from typing import Tuple, Union
import projutils.png as png
import projutils.color as color


def data_to_pixels(data: bytes, width: int, height: int) -> list:
    """Gets the 2D pixel list from raw data.
    Width and height are specified in TILES"""
    pixels = []
    for y in range(height*8):
        row = []
        for x in range(width*8):
            tiley = y//8
            tilex = x//8
            tilerow = y % 8
            bitposition = x % 8
            offset = tiley*0x10*width + tilex*0x10 + tilerow*2

            shift = (7 - bitposition)
            mask = (1 << shift)
            color = ((data[offset] & mask) >> shift) + (((data[offset + 1] & mask) >> shift) << 1)

            row.append(color)
        pixels.append(row)
    return pixels


def data_to_png(fileout: str, data: bytes, width: int, palette: Union[int, color.Palette] = 0b11100100) -> str:
    """Converts .2bpp format data into a png file
    fileout: png filename
    data: raw data
    width: width, or 0 if the width should be autocalculated
    palette: leave as default 0b11100100 if greyscale, or provide 4 colors as a color.Palette object"""

    def factor_int_2(n: int) -> Tuple[int, int]:
        """Finds the most square arrangement of tiles"""
        val = math.ceil(math.sqrt(n))
        while True:
            if not n % val:
                val2 = n//val
                break
            val -= 1
        return val, val2

    def convert_palette_to_rgb(palette: int) -> list:
        """Generates a greyscale palette based on the input palette"""
        col0 = 255 - (((palette & 0x03) >> 0) << 6)
        col1 = 255 - (((palette & 0x0C) >> 2) << 6)
        col2 = 255 - (((palette & 0x30) >> 4) << 6)
        col3 = 255 - (((palette & 0xC0) >> 6) << 6)
        return [
            (col0, col0, col0),
            (col1, col1, col1),
            (col2, col2, col2),
            (col3, col3, col3)
        ]

    # defaults
    bytes_per_tile_row = 2  # 8 pixels at 2 bits per pixel
    bytes_per_tile = bytes_per_tile_row * 8  # 8 rows per tile
    num_tiles = len(data) // bytes_per_tile

    # Figure out the best image dimensions

    # If width not defined, then just try to make a squareish image
    if not width:
        width = factor_int_2(num_tiles)[0]
        width *= 8
    tiles_per_row = width // 8

    # if we have fewer tiles than the number of tiles per row
    # then just make a single row of tiles
    if num_tiles < tiles_per_row:
        tiles_per_row = num_tiles
        width = num_tiles * 8

    # If the image doesn't make a square, try to make a squareish image again
    tile_rows = (num_tiles / tiles_per_row)
    if not tile_rows.is_integer():
        width = factor_int_2(num_tiles)[0]
        width *= 8
        tiles_per_row = width // 8

    # If everything has failed, just make a single row
    if not tile_rows.is_integer():
        tiles_per_row = num_tiles
        width = num_tiles * 8
        tile_rows = (num_tiles / tiles_per_row)

    if not tile_rows.is_integer():
        raise ValueError('Invalid length ${:0x} or width {} for image block: {}'.format(len(data), width, fileout))
    tile_rows = int(tile_rows)

    # Ok we have decided on the width

    height = tile_rows*8

    pixel_data = data_to_pixels(data, tiles_per_row, tile_rows)

    if isinstance(palette, int):
        rgb_palette = convert_palette_to_rgb(palette)
    else:
        rgb_palette = palette.get_png_palette()

    with open(fileout, 'wb') as f:
        w = png.Writer(width, height, alpha=False, bitdepth=2, palette=rgb_palette)
        w.write(f, pixel_data)

    return fileout


def tileset_to_pixels(file: str, width: int, height: int) -> list:
    """Converts a 2bbp .tileset file into a 2D pixel list
    width/height are specified in TILES"""
    with open(file, "rb") as f:
        data = f.read()
    pixels = data_to_pixels(data, width, height)
    return pixels


def png_to_tileset(imagefile, outfile):
    """Converts a .png file into a .tileset file
    Automatically removes any colorizing data"""
    temp = png.Reader(imagefile)
    width, height, pixels, meta = temp.read()
    pixels = list(pixels)
    temp.file.close()

    assert width % 8 == 0
    assert height % 8 == 0

    width_tiles = width//8
    height_tiles = height//8

    with open(outfile, "wb") as f:
        for i in range(height_tiles):
            for j in range(width_tiles):
                for ip in range(8):
                    low = 0
                    high = 0
                    for jp in range(8):
                        color = pixels[i*8+ip][j*8+jp]
                        colorlow = color & 0b01  # strip the palette
                        colorlow = colorlow << (7-jp)
                        colorhigh = (color & 0b10) >> 1  # strip the palette
                        colorhigh = colorhigh << (7-jp)
                        low = low | colorlow
                        high = high | colorhigh
                    f.write(bytes([low, high]))
