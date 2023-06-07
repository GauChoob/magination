from __future__ import annotations
import copy
import glob
import math
import pathlib
from typing import Self
import projutils.png as png
import projutils.asm as asm
import projutils.tilemap as tilemap
import projutils.filecontents as filecontents
import projutils.color as color
import projutils.utils as utils
import projutils.filereference as filereference
import projutils.fileregistry as fileregistry
import projutils.sprite as sprite


class Bitmap(filecontents.FileContentsSerializer):

    DISCARDED_TILE = [0b10101010, 0b11001100]*8
    DISCARDED_PIXELS_ROW = [3, 2, 1, 0]*2

    def __init__(self):
        super().__init__()
        self.palette: color.Palette = color.Palette.init_greyscale_palette()
        self.pixels: list[list[int]] = None
        self.discarded_tiles: int = 0  # Number of tiles at the end of the image that are ignored

    @staticmethod
    def _optimize_tilewidth_tileheight(data: bytes, tilewidth: int, tileheight: int) -> tuple[int, int]:
        tilecount = len(data)//0x10

        # If width and height are defined, then we are already done
        if tilewidth and tileheight:
            assert tilecount == tilewidth*tileheight
            return tilewidth, tileheight

        # If only width is defined, check to see if tilecount/tilewidth makes a whole number for tileheight
        if tilewidth and (tileheight is None):
            if tilecount % tilewidth == 0:
                tileheight = tilecount//tilewidth
                return tilewidth, tileheight

        # Otherwise, try to find the most square arrangement of tiles
        tilewidth = math.ceil(math.sqrt(tilecount))
        while tilewidth > 1:
            if tilecount % tilewidth == 0:
                tileheight = tilecount//tilewidth
                return tilewidth, tileheight
            tilewidth -= 1

        # Otherwise, make a single row
        tilewidth = tilecount
        tileheight = 1
        return tilewidth, tileheight

    def _count_discarded_tiles(self):
        tilewidth = self.width//8
        while True:
            i = -(self.discarded_tiles//tilewidth)*8
            i_top = i - 8
            i_bottom = i
            j = -(self.discarded_tiles % tilewidth)*8
            j_left = j - 8
            j_right = j if j != 0 else None
            if all([self.pixels[i2][j_left:j_right] == self.DISCARDED_PIXELS_ROW for i2 in range(i_top, i_bottom)]):
                self.discarded_tiles += 1
            else:
                break

    def _load_processed(self, data: bytes, tilewidth: int, tileheight: int):
        """Gets the 2D pixel list from raw data."""
        tilewidth, tileheight = self._optimize_tilewidth_tileheight(data, tilewidth, tileheight)

        self.width = tilewidth*8
        self.height = tileheight*8
        self.pixels = []
        for y in range(tileheight*8):
            row = []
            for x in range(tilewidth*8):
                tiley = y//8
                tilex = x//8
                tilerow = y % 8
                bitposition = x % 8
                offset = tiley*0x10*tilewidth + tilex*0x10 + tilerow*2

                shift = (7 - bitposition)
                mask = (1 << shift)
                color = ((data[offset] & mask) >> shift) + (((data[offset + 1] & mask) >> shift) << 1)

                row.append(color)
            self.pixels.append(row)
        self._count_discarded_tiles()

    def _load_original(self, filename: str | pathlib.PurePath):
        """Converts a .png file into pixel data
        Automatically removes any colorizing data"""
        png_reader = png.Reader(filename)
        self.width, self.height, pixels, meta = png_reader.read()
        assert self.width % 8 == 0
        assert self.height % 8 == 0
        self.pixels = [list(row) for row in pixels]
        self.palette = color.Palette.init_from_list(meta['palette'])
        png_reader.file.close()
        self._count_discarded_tiles()

    def _to_processed_data(self) -> bytes:
        assert self.width == len(self.pixels[0])
        assert self.height == len(self.pixels)
        assert self.width % 8 == 0
        assert self.height % 8 == 0

        data = []
        for i in range(self.height//8):
            for j in range(self.width//8):
                for ip in range(8):
                    low = 0
                    high = 0
                    for jp in range(8):
                        color = self.pixels[i*8+ip][j*8+jp]
                        colorlow = color & 0b01  # strip the palette
                        colorlow = colorlow << (7-jp)
                        colorhigh = (color & 0b10) >> 1  # strip the palette
                        colorhigh = colorhigh << (7-jp)
                        low = low | colorlow
                        high = high | colorhigh
                    data.extend([low, high])
        if self.compression_mode and self.discarded_tiles:
            # If there is compression, we must discard the unused tiles
            data = data[:-self.discarded_tiles*0x10]
        if self.compression_mode is None and self.discarded_tiles:
            data[-self.discarded_tiles*0x10:] = self.DISCARDED_TILE*self.discarded_tiles
        return bytes(data)

    def _to_original_data(self) -> list[list[int]]:
        assert self.width == len(self.pixels[0])
        assert self.height == len(self.pixels)

        if not self.discarded_tiles:
            return self.pixels
        pixels = copy.deepcopy(self.pixels)
        tilewidth = self.width//8
        for tile in range(self.discarded_tiles):
            i = -(tile//tilewidth)*8
            i_top = i - 8
            i_bottom = i
            j = -(tile % tilewidth)*8
            j_left = j - 8
            j_right = j if j != 0 else None
            for row in range(i_top, i_bottom):
                pixels[row][j_left:j_right] = self.DISCARDED_PIXELS_ROW
        return pixels

    @classmethod
    def init_from_rom(cls, sym: utils.SymFile, rom: utils.Rom, address: utils.BankAddress, compressed: bool, tilewidth: int | None, tileheight: int | None) -> Self:
        self = cls()
        if compressed:
            data = self._handle_rle_from_rom(rom, address, compressed, None)
        else:
            self._size = tilewidth*tileheight*0x10
            data = rom.getRawSection(address, self._size)
        self._load_processed(data, tilewidth, tileheight)
        return self

    @classmethod
    def init_from_original_file(cls, filename: str | pathlib.PurePath) -> Self:
        self = cls()
        self._handle_rle_from_original_file(filename)
        self._load_original(filename)
        return self

    @classmethod
    def init_from_processed_file(cls, filename: str | pathlib.PurePath, tilewidth: int | None, tileheight: int | None) -> Self:
        self = cls()
        data = self._handle_rle_from_processed_file(filename)
        # If size is too big, we need to insert discarded tiles
        if tilewidth is not None and tileheight is not None and len(data) < tilewidth*tileheight*0x10:
            self.discarded_tiles = tilewidth*tileheight - len(data)//0x10
            data.extend(self.DISCARDED_TILE*self.discarded_tiles)
        self._load_processed(data, tilewidth, tileheight)
        return self

    def size(self) -> int:
        return self._size - self.discarded_tiles*0x10

    def save_original_file(self, filename: str | pathlib.PurePath) -> None:
        filename = self._handle_rle_save_original_file(filename)
        bitdepth = 2 if len(self.palette) == 4 else 8
        pixels = self._to_original_data()
        with open(filename, 'wb') as f:
            w = png.Writer(self.width, self.height, bitdepth=bitdepth, palette=self.palette.get_png_palette())
            w.write(f, pixels)

    def save_processed_file(self, filename: str | pathlib.PurePath) -> None:
        data = self._to_processed_data()
        filename, data = self._handle_rle_save_processed_file(filename, data)
        with open(filename, 'wb') as f:
            f.write(data)

    def generate_include(self, filename: str | pathlib.PurePath) -> str:
        if(self.compression_mode and self.discarded_tiles):
            return '    INCBIN "{}", 0, ${:04X}'.format(filename, self.size())
        return '    INCBIN "{}"'.format(filename)

    def decolorize(self):
        '''Strip out the palette id data from the pixels'''
        assert self.width == len(self.pixels[0])
        assert self.height == len(self.pixels)
        for i in range(self.width):
            for j in range(self.height):
                self.pixels[j][i] &= 0b11
        self.palette = color.Palette.init_greyscale_palette()

    def colorize_from_list(self,
                           palette_ids: list,
                           palette: color.Palette,
                           paletteoffset: int = 0,
                           addgreyscale: bool = True,
                           defaultpalette: int = 0) -> None:
        """This function allows you to quickly colorize a tileset based on a tilemap.
        palette_ids = list of sequential palette ids to colorize the imagefile
        palette = Palette Object
        paletteoffset = offset of the palette to colorize with the right colors
        addgreyscale = whether to have greyscale for unknown colors
        defaultpalette = palette id to use if the color is unknown. 0 will refer to greyscale if enabled"""
        assert self.width == len(self.pixels[0])
        assert self.height == len(self.pixels)

        # Get the raw palette color data
        if addgreyscale:
            palette.add_greyscale()
        self.palette = palette
        raw_palette = palette.get_png_palette()
        # Offset the palette ids by +1 if greyscale was added
        paletteoffset += addgreyscale

        # Make sure no palettes are out of bounds
        assert max(palette_ids) + paletteoffset < len(raw_palette)//4

        # Colorize each tile
        for y in range(self.height//8):
            for x in range(self.width//8):
                targettile = (y*self.width//8 + x) % 0x100
                if palette_ids[targettile] == -1:
                    newpaletteid = defaultpalette
                else:
                    newpaletteid = palette_ids[targettile]+paletteoffset
                for y2 in range(8):
                    for x2 in range(8):
                        self.pixels[y*8+y2][x*8+x2] += newpaletteid*4

    def colorize_from_tilemap(self,
                              tilemap: tilemap.Tilemap,
                              attrmap: tilemap.Tilemap,
                              vbk: int,
                              tilesetaddress: int,
                              palette: color.Palette,
                              paletteoffset: int = 0,
                              addgreyscale: bool = True,
                              defaultpalette: int = 0) -> None:
        """This function allows you to quickly colorize a tileset.png file based on the tilemap.
        tilemap = .tilemap
        attrmap = .attrmap
        vbk = bank of the tileset (0 or 1)
        tilesetaddress = offset of the tilemap to map to the tileset
        palette = Palette Object
        paletteoffset = offset of the palette to colorize with the right colors
        addgreyscale = whether to have greyscale for unknown colors
        defaultpalette = palette id to use if the color is unknown. 0 will refer to greyscale if enabled
        """

        def guessPaletteID(_tilemap: tilemap.Tilemap, _attrmap: tilemap.Tilemap, vbk: int) -> list:
            """For each tile id, determine the most commonly used palette ID
            Returns a list of the 256 tiles' most common palette IDs"""

            # tilemap and attrmap of equal size
            # vbk is the target vram bank of the tileset
            tilemap = _tilemap.map
            attrmap = _attrmap.map
            assert len(tilemap) == len(attrmap)

            # Initialized the tile list
            tiles = [[0, 0, 0, 0, 0, 0, 0, 0] for _ in range(256)]

            # Count the number of uses for each palette ID for each tile
            for i in range(len(tilemap)):
                tile = tilemap[i]
                attr = attrmap[i]
                if (attr & 0b1000) != vbk:
                    continue  # wrong VRAM bank
                tiles[tile][attr & 0b0111] += 1

            # Determine the most common palette id
            for i in range(256):
                max_value = max(tiles[i])
                if max_value == 0:
                    tiles[i] = -1
                else:
                    tiles[i] = tiles[i].index(max_value)
            return tiles

        # Get tiles_guessedpaletteid (most common palette id for each tile id)
        vbk = vbk*0b1000
        tiles_guessedpaletteid = guessPaletteID(tilemap, attrmap, vbk)

        assert self.width == len(self.pixels[0])
        assert self.height == len(self.pixels)

        # Get the raw palette color data
        if addgreyscale:
            palette.add_greyscale()
        self.palette = palette
        raw_palette = palette.get_png_palette()
        # Offset the palette ids by +1 if greyscale was added
        paletteoffset += addgreyscale

        # Make sure no palettes are out of bounds
        assert max(tiles_guessedpaletteid) + paletteoffset < len(raw_palette)//4

        # basetile is used to offset the tileset location to color the right tiles
        basetile = (tilesetaddress % 0x1000)//0x10
        for y in range(self.height//8):
            for x in range(self.width//8):
                targettile = (basetile + y*0x10 + x) % 0x100
                if tiles_guessedpaletteid[targettile] == -1:
                    newpaletteid = defaultpalette
                else:
                    newpaletteid = tiles_guessedpaletteid[targettile]+paletteoffset
                for y2 in range(8):
                    for x2 in range(8):
                        self.pixels[y*8+y2][x*8+x2] += newpaletteid*4

    def colorize_from_sprite(self,
                             glob_searchterm: str,
                             vbk: int,
                             tilesetaddress: int,
                             palette: color.Palette,
                             paletteoffset: int,
                             addgreyscale: bool,
                             defaultpalette: int
                             ):
        """This function allows you to quickly colorize a tileset.png file based on the tilemap.
        glob_searchterm: a glob search parameter to find all relevant .spr files
        vbk = bank of the tileset (0 or 1)
        tilesetaddress = location of the tileset in vram
        palette = Palette Object
        paletteoffset = offset of the palette to colorize with the right colors
        addgreyscale = whether to have greyscale for unknown colors
        defaultpalette = palette id to use if the color is unknown. 0 will refer to greyscale if enabled
        """
        tile_pal_count = [[0, 0, 0, 0, 0, 0, 0, 0] for _ in range(0x100)]

        def count_palette_id(sprite_path: str | pathlib.PurePath) -> None:
            spr = sprite.Sprite.init_from_original_file(sprite_path)
            for entry in spr.entries:
                attr = tilemap.TileAttribute(entry.attr)
                if attr.vbk != vbk:
                    continue
                tile_pal_count[entry.tileid][attr.pal] += 1

        def collapse_tile_pal_count() -> list[int]:
            for i in range(0x100):
                max_value = max(tile_pal_count[i])
                if max_value == 0:
                    tile_pal_count[i] = -1
                else:
                    tile_pal_count[i] = tile_pal_count[i].index(max_value)
            return tile_pal_count

        for sprite_path in glob.glob(glob_searchterm):
            count_palette_id(sprite_path)
        tile_pal_count = collapse_tile_pal_count()

        assert self.width == len(self.pixels[0])
        assert self.height == len(self.pixels)

        # Get the raw palette color data
        if addgreyscale:
            palette.add_greyscale()
        self.palette = palette
        raw_palette = palette.get_png_palette()
        # Offset the palette ids by +1 if greyscale was added
        paletteoffset += addgreyscale

        # Make sure no palettes are out of bounds
        assert max(tile_pal_count) + paletteoffset < len(raw_palette)//4

        # basetile is used to offset the tileset location to color the right tiles
        basetile = (tilesetaddress % 0x1000)//0x10
        for y in range(self.height//8):
            for x in range(self.width//8):
                targettile = (basetile + y*0x10 + x) % 0x100
                if tile_pal_count[targettile] == -1:
                    newpaletteid = defaultpalette
                else:
                    newpaletteid = tile_pal_count[targettile]+paletteoffset
                for y2 in range(8):
                    for x2 in range(8):
                        self.pixels[y*8+y2][x*8+x2] += newpaletteid*4


class BitSet(filecontents.FileContentsSerializer):

    def __init__(self):
        super().__init__()
        self.bitmaps: list[list[filereference.FileReference]] = [[], []]
        self.start: utils.BankAddress = None
        self.end: utils.BankAddress = None

    @classmethod
    def init_from_rom(cls, sym: utils.SymFile, rom: utils.Rom, address: utils.BankAddress) -> Self:
        self = cls()
        self.sym = sym
        self.start = address

        curpos = address
        for i in range(2):
            bitmap_n = rom.getByte(curpos)
            curpos += 1
            for bitmap in range(bitmap_n):
                destination = rom.getWord(curpos)
                source_addr = rom.getWord(curpos+2)
                width = rom.getByte(curpos+4)
                height = rom.getByte(curpos+5)
                source_bank = rom.getByte(curpos+6)
                curpos += 7
                source = filereference.FileReference.create_from_address('BITMAP', rom, utils.BankAddress(source_bank, source_addr), self.sym)
                source.destination = destination
                source.width = width
                source.height = height
                self.bitmaps[i].append(source)
        self.end = curpos
        return self

    @classmethod
    def init_from_original_file(cls, filename: str | pathlib.PurePath, fileregistry: fileregistry.LabelFileRegister) -> Self:
        self = cls()
        asmfile = asm.AsmFile(filename)
        asm_iter = iter(asmfile.lines)
        try:
            for vram in range(2):
                line = next(asm_iter)
                while not isinstance(line, asm.RawBytesLine):
                    assert line.size == 0
                    line = next(asm_iter)
                assert len(line.raw_bytes) == 1
                bitmap_n = line.raw_bytes[0]

                for bitmap in range(bitmap_n):
                    line = next(asm_iter)
                    while not isinstance(line, asm.LoadBitmapLine):
                        assert line.size == 0
                        line = next(asm_iter)
                    source = fileregistry.files[line.source_label]
                    source.destination = line.destination
                    source.width = line.width
                    source.height = line.height
                    self.bitmaps[vram].append(source)
        except StopIteration:
            raise EOFError('End of file reached before BitSet was fully loaded!')
        return self

    def size(self) -> int:
        return 2 + 7*(len(self.bitmaps[0]) + len(self.bitmaps[1]))

    def __str__(self):
        ret = []
        for vram in range(2):
            ret.append('    db {: <10}; VRAM{} entries'.format(len(self.bitmaps[vram]), vram))
            ret.append('')
            ret.append('    ; Destination, Source, Width, Height')
            for bitmap in self.bitmaps[vram]:
                ret.append('        LoadBitmap ${:04X}, {}, ${:02X}, ${:02X}'.format(bitmap.destination, bitmap.label_name, bitmap.width, bitmap.height))
            ret.append('')
        return '\n'.join(ret)

    def save_original_file(self, filename: str | pathlib.PurePath) -> None:
        with open(filename, 'w') as f:
            f.write(str(self))

    def generate_include(self, filename: str | pathlib.PurePath) -> str:
        return '    INCLUDE "{}"'.format(filename)

    def load_references_from_rom(self) -> None:
        for vram in range(2):
            for bitmap in self.bitmaps[vram]:
                bitmap.load_contents_from_rom(False, bitmap.width, bitmap.height)

    def load_references_from_original_file(self) -> None:
        for vram in range(2):
            for bitmap in self.bitmaps[vram]:
                bitmap.load_contents_from_original_file()

    def load_references_from_processed_file(self) -> None:
        for vram in range(2):
            for bitmap in self.bitmaps[vram]:
                bitmap.load_contents_from_processed_file(bitmap.width, bitmap.height)
