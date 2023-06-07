from PIL import Image, ImageDraw
import pathlib
from typing import Self
import projutils.utils as utils
import projutils.png as png
import projutils.filecontents as filecontents


class Color:
    def _word_to_rgba(x: int) -> tuple[int, int, int, int]:
        """Convert a 16-bit integer into r, g, b, a values (0 - 31)"""
        r = x & 0b11111
        g = (x & 0b1111100000) >> 5
        b = (x & 0b111110000000000) >> 10
        a = (x & 0b1000000000000000) >> 15
        return r, g, b, a

    def _assertTransparency(self, allow_alpha: bool) -> None:
        if (not allow_alpha) and self.a:
            raise ValueError("Color has transparency! Set allow_alpha to True to allow this!")

    def __init__(self, *arg: int | tuple[int, int, int] | tuple[int, int, int, int]):
        """RGBA Color object (5-bit r, g, b values and 1-bit a value). Takes as input:
        int (16-bit GBC Color) or
        r (0-248), g (0-248), b (0-248), Optional[a (0 or 255)]"""
        if len(arg) == 1:
            if(isinstance(arg[0], int)):
                self.r, self.g, self.b, self.a = Color._word_to_rgba(arg[0])
                return
            raise ValueError("If passing 1 argument, it must be a 16-bit GBC Color")
        else:
            assert 3 <= len(arg) <= 4, "If passing a list, must pass 3 or 4 params: r, g, b, Optional[a]"
            for i in range(3):
                assert arg[i] % 8 == 0, "r, g, b values must be multiples of 8!"
            self.r = arg[0]//8
            self.g = arg[1]//8
            self.b = arg[2]//8
            if len(arg) == 4:
                self.a = 0 if arg[3] else 1
            else:
                self.a = 0
            assert 0 <= self.r <= 0x1F, "Input r value must be between 0 - 248"
            assert 0 <= self.g <= 0x1F, "Input g value must be between 0 - 248"
            assert 0 <= self.b <= 0x1F, "Input b value must be between 0 - 248"
            assert 0 <= self.a <= 1, "Input a value must be between 0 - 1"

    def get_word(self, allow_alpha: bool = False) -> int:
        """Returns the 16-bit GBC Color representation of the r, g, b, a value.
        Set allow_alpha to True to allow a = 0"""
        assert 0 <= self.r <= 0x1F, "r must be between 0 - 0x1F"
        assert 0 <= self.g <= 0x1F, "g must be between 0 - 0x1F"
        assert 0 <= self.b <= 0x1F, "b must be between 0 - 0x1F"
        assert 0 <= self.a <= 1, "a must be between 0 - 1"
        self._assertTransparency(allow_alpha)
        return self.r + (self.g << 5) + (self.b << 10) + (self.a << 15)

    def get_RGBA(self, allow_alpha: bool = False):
        """Returns a tuple (r, g, b, a), where r, g, b are values (0 - 248) and a = (0 or 255)
        Set allow_alpha to True to allow a = 0"""
        assert 0 <= self.r <= 0x1F, "r must be between 0 - 0x1F"
        assert 0 <= self.g <= 0x1F, "g must be between 0 - 0x1F"
        assert 0 <= self.b <= 0x1F, "b must be between 0 - 0x1F"
        assert 0 <= self.a <= 1, "a must be between 0 - 1"
        self._assertTransparency(allow_alpha)
        return self.r*8, self.g*8, self.b*8, 0 if self.a else 255

    def get_RGB(self, allow_alpha: bool = False):
        """Returns a tuple (r, g, b), where r, g, b are values (0 - 248)
        Set allow_alpha to True to allow a = 0"""
        return self.get_RGBA(allow_alpha)[:-1]

    def __repr__(self):
        return "${:02X} ${:02X} ${:02X} {}".format(self.r, self.g, self.b, self.a)


class Palette(filecontents.FileContentsSerializer):

    def __init__(self):
        super().__init__()
        self.palette: list[tuple[int, int, int, int]] = []

    def _load_processed(self, data: bytes):
        assert len(data) % 2 == 0
        for i in range(0, len(data), 2):
            rgba = Color(data[i]+256*data[i+1]).get_RGBA(allow_alpha=True)
            self.palette.append(rgba)

    def _load_original(self, filename: str | pathlib.PurePath):
        img = Image.open(filename)
        assert img.width % 8 == 0, "Image file dimensions must be a multiple of 8"
        assert img.height % 8 == 0, "Image file dimensions must be a multiple of 8"
        width = img.width//8
        height = img.height//8
        for y in range(height):
            for x in range(width):
                # Get *trash just in case the image file has an alpha value, but we discard this
                r, g, b, *trash = img.getpixel((x*8+4, y*8+4))
                assert r % 8 == 0, "r,g,b must all be multiples of 8! Error with Color #"+str(y*width+x)
                assert g % 8 == 0, "r,g,b must all be multiples of 8! Error with Color #"+str(y*width+x)
                assert b % 8 == 0, "r,g,b must all be multiples of 8! Error with Color #"+str(y*width+x)
                # Topleft pixel for alpha check
                rt, gt, bt, *trash = img.getpixel((x*8, y*8))
                a = 0 if (rt != r or gt != g or bt != b) else 255
                self.palette.append((r, g, b, a))
        img.close()

    @classmethod
    def init_from_rom(cls, sym: utils.SymFile, rom: utils.Rom, address: utils.BankAddress, color_n: int) -> Self:
        self = cls()
        data = rom.getRawSection(address, color_n*2)
        self._load_processed(data)
        return self

    @classmethod
    def init_from_original_file(cls, filename: str | pathlib.PurePath) -> Self:
        self = cls()
        self._load_original(filename)
        return self

    @classmethod
    def init_from_processed_file(cls, filename: str | pathlib.PurePath) -> Self:
        with open(filename, 'rb') as f:
            data = f.read()
        self = cls()
        self._load_processed(data)
        return self

    @classmethod
    def init_from_list(cls, palette: list[tuple[int, int, int, int]] | list[tuple[int, int, int]]):
        self = cls()
        depth = len(palette[0])  # rgb or rgba?
        assert 4 >= depth >= 3, "Invalid depth (must be 3 or 4)"
        assert all(isinstance(i, tuple) and len(i) == depth for i in palette), "Every element in the list you pass must contain a tuple of the same length"
        if depth == 3:
            # Normalize the palette to have an alpha channel
            self.palette = [color + (255,) for color in palette]
        else:
            # Make a shallow copy otherwise
            self.palette = palette[:]
        return self

    @classmethod
    def init_greyscale_palette(cls):
        """This palette cannot be saved as a .png file - it is only used for coloring tilesets"""
        return cls.init_from_list([
            (255, 255, 255),
            (191, 191, 191),
            (127, 127, 127),
            (63, 63, 63),
        ])

    def size(self) -> int:
        return len(self.palette)*2

    def save_original_file(self, filename: str | pathlib.PurePath, allow_alpha: bool = False) -> None:
        if not allow_alpha:
            assert self.has_no_alpha(), "Transparency not permitted. Set allow_alpha to True to allow transparency"
        colors = len(self.palette)
        if colors % 4 == 0:
            width = 4
        elif colors % 2 == 0:
            width = 2
        else:
            width = 1
        height = colors//width

        img = Image.new("RGB", (width*8, height*8), 0x000000)
        draw = ImageDraw.Draw(img)
        for y in range(height):
            for x in range(width):
                color = self.palette[x + y*width]
                r, g, b, a = color
                if a == 0:
                    ra = (r - 128) % 256
                    ga = (g - 128) % 256
                    ba = (b - 128) % 256
                    # Add a border to indicate transparency
                    draw.rectangle((x*8, y*8, (x+1)*8-1, (y+1)*8-1), (ra, ga, ba))
                    draw.rectangle((x*8+1, y*8+1, (x+1)*8-2, (y+1)*8-2), (r, g, b))
                else:
                    draw.rectangle((x*8, y*8, (x+1)*8-1, (y+1)*8-1), (r, g, b))
        del draw
        img.save(filename)
        img.close()

    def save_processed_file(self, filename: str | pathlib.PurePath, allow_alpha: bool = False) -> None:
        if not allow_alpha:
            assert self.has_no_alpha(), "Transparency not permitted. Set allow_alpha to True to allow transparency"
        with open(filename, 'wb') as f:
            for color in self.palette:
                colorval = Color(*color).get_word(allow_alpha)
                f.write(utils.PackWords(colorval))

    def generate_include(self, filename: str | pathlib.PurePath) -> str:
        return '    INCBIN "{}"'.format(filename)

    def has_no_alpha(self) -> bool:
        """Returns True if no color in the palette is transparent"""
        return all([color[3] == 255 for color in self.palette])

    def get_png_palette(self) -> list:
        """Gets a png palette used to colorize png files"""
        # Alpha channel not supported in pngs with palette, so we strip it out
        return [color[:-1] for color in self.palette]

    def add_greyscale(self):
        """Insert a greyscale palette as the first palette id"""
        tmp_pal = self.init_greyscale_palette().palette
        tmp_pal.extend(self.palette)
        self.palette = tmp_pal

    def __repr__(self):
        return str(self.palette)

    def __len__(self):
        return len(self.palette)
