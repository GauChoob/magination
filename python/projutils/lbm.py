import struct
import math
import projutils.png as png


class Chunk:
    def __init__(self, data: bytes, position: int):
        """Decodes an IFF chunk. Used in lbm files."""
        self.name = data[position + 0:position + 4].decode('latin1')
        self.size = struct.unpack('>I', data[position + 4:position + 8])[0]
        self.data = data[position + 8:position + 8 + self.size]
        self.end = position + 8 + self.size + self.size % 2

    def __repr__(self):
        return '"{}"'.format(self.name)


class LBM:

    def decompress_rle(data: bytes, size: int) -> list[bytes]:
        """Decompresses RLE-encoded data with a max size of size"""
        out = b''
        position = 0
        data_len = len(data)
        while len(out) < size:
            if position >= data_len:
                raise EOFError
            header = data[position]
            if header > 128:
                val = data[position + 1:position + 2]
                out += val*(257 - header)
                position += 2
            elif header < 128:
                val = data[position + 1:position + 2 + header]
                out += val
                position += header + 2
            else:
                break
        return out

    def parse_pixels(self, data: bytes, is_tiny: bool) -> list[list[int]]:
        """Given raw data from TINY or BODY, return a pixels 2D array"""
        width = self.tiny_width if is_tiny else self.image_width
        height = self.tiny_height if is_tiny else self.image_height

        if self.compression == 1:
            size = width*height
            data = LBM.decompress_rle(data, size)
        elif self.compression > 1:
            raise NotImplementedError(self.compression)

        if self.format == 'PBM ':

            assert self.num_planes == 8
            assert self.mask != 1

            pixels = [[data[row*width + column]for column in range(width)] for row in range(height)]
            return pixels

        elif self.format == 'ILBM':
            width_padded = math.ceil(width/16)*2
            num_planes = self.num_planes + 1 if self.mask == 1 else 0
            mask = 1 if self.mask else 0
            # calculate a new height based on the amount of data we actually have
            # If we have a mask, then it seems like the total size of the data is unchanged even though the mask data takes up extra space
            # Meaning that the data terminates early and the bottom rows of the image are chopped off
            height2 = height*width//(width_padded*num_planes)
            pixels = []
            for i in range(height2):
                pixels.append([])
                for j in range(width):
                    pixel = 0
                    for n in range(num_planes - 1 - mask, -1, -1):
                        pixel = pixel << 1
                        pixel += 1 if data[width_padded*num_planes*i + width_padded*n + j//8] & (1 << (7 - (j % 8))) else 0
                    if(mask):
                        n = num_planes - 1
                        if data[width_padded*num_planes*i + width_padded*n + j//8] & ((7 - width) % 8) == 0:
                            pass  # Let's preserve the bytes of data instead of masking them out like we should
                            # pixel = 255
                    pixels[i].append(pixel)
            # If the bottom rows of the image are chopped off because we have a mask, then extend the last row
            while len(pixels) < height:
                pixels.append(pixels[-1])
            return pixels
        else:
            raise KeyError('Unknown FORM format')

    def __init__(self, filename: str):
        """Opens .lbm and .bbm (brush) image files"""

        def uint16():
            nonlocal cur_pos
            ret = struct.unpack('>H', chunk.data[cur_pos: cur_pos + 2])[0]
            cur_pos += 2
            return ret

        def int16():
            nonlocal cur_pos
            ret = struct.unpack('>h', chunk.data[cur_pos: cur_pos + 2])[0]
            cur_pos += 2
            return ret

        def uint8():
            nonlocal cur_pos
            ret = struct.unpack('B', chunk.data[cur_pos: cur_pos + 1])[0]
            cur_pos += 1
            return ret

        self.filename = filename
        with open(filename, 'rb') as f:
            file_data = f.read()

        form = Chunk(file_data, 0)
        self.format = form.data[0:4].decode('latin1')

        position = 4
        chunks = []
        while position <= form.size - 4:
            chunk = Chunk(form.data, position)
            chunks.append(chunk)
            position = chunk.end

        self.color_cycles = []
        for chunk in chunks:
            cur_pos = 0

            if chunk.name == 'BMHD':
                self.image_width = uint16()
                self.image_height = uint16()
                if(self.filename[-4:].lower() == '.bbm'):
                    # Brush file. For some unknown reason we need to correct the image dimensions:
                    self.image_width += 1
                    self.image_height -= 1
                self.origin_x = int16()
                self.origin_y = int16()
                self.num_planes = uint8()
                self.mask = uint8()
                self.compression = uint8()
                uint8()
                self.transparent_color = uint16()
                self.x_aspect = uint8()
                self.y_aspect = uint8()
                self.page_width = int16()
                self.page_height = int16()

            elif chunk.name == 'CMAP':
                self.palette = []
                for i in range(0, chunk.size, 3):
                    self.palette.append((uint8(), uint8(), uint8()))

            elif chunk.name == 'DPPS':
                # Unknown chunk
                pass

            elif chunk.name == 'CRNG':
                int16()
                color_cycle_rate = int16()
                color_cycle_flags = int16()
                color_cycle_low = uint8()
                color_cycle_high = uint8()
                self.color_cycles.append({
                    'rate': color_cycle_rate,
                    'flags': color_cycle_flags,
                    'low': color_cycle_low,
                    'high': color_cycle_high,
                })

            elif chunk.name == 'TINY':
                self.tiny_width = uint16()
                self.tiny_height = uint16()
                self.tiny_body = self.parse_pixels(chunk.data[cur_pos:], True)

            elif chunk.name == 'BODY':
                self.body = self.parse_pixels(chunk.data, False)

            elif chunk.name == 'GRAB':
                self.hotspot_x = int16()
                self.hotspot_y = int16()

            else:
                raise KeyError('Unknown chunk')

    def save_png(self, filename):
        with open(filename, 'wb') as f:
            w = png.Writer(self.image_width, self.image_height, bitdepth=8, palette=self.palette)
            w.write(f, self.body)
