import projutils.tilemap as tilemap
import projutils.sprite as sprite


class VRAMTile:
    def __init__(self):
        """Contains a 8x8 VRAM tile (both bank 0 and 1)"""
        self.baseimage = [[[0 for x in range(8)] for y in range(8)] for bank in range(2)]

    def storeImage(self, vbk: int, pixels: list, x: int, y: int) -> None:
        """Stores a tileset from the pixels at coordinate x, y into the VRAMTile
        vbk: target bank
        pixels, x, y: source tileset information"""
        for cury in range(0, 8):
            for curx in range(0, 8):
                self.baseimage[vbk][cury][curx] = pixels[y*8+cury][x*8+curx]

    def paintImage(self, pixelcanvas: list, x: int, y: int, attributes: int) -> list:
        """Paints the VRAM tile into the canvas, using the provided attributes.
        Returns the updated canvas"""
        attr = tilemap.TileAttribute(attributes)

        for cury in range(8):
            targety = y*8 + (7-cury if attr.vflip else cury)
            for curx in range(8):
                targetx = x*8 + (7-curx if attr.hflip else curx)
                pixelcanvas[targety][targetx] = self.baseimage[attr.vbk][cury][curx] + attr.pal*4

        return pixelcanvas

    def paintSprite(self, pixelcanvas: list, x: int, y: int, attributes: int) -> list:
        """Paints the VRAM tile into the canvas, using the provided attributes.
        Returns the updated canvas"""
        attr = tilemap.TileAttribute(attributes)

        for cury in range(8):
            targety = y + (7-cury if attr.vflip else cury)
            for curx in range(8):
                targetx = x + (7-curx if attr.hflip else curx)
                pixel = self.baseimage[attr.vbk][cury][curx] % 4
                if pixel:
                    pixelcanvas[targety][targetx] = pixel + attr.pal*4

        return pixelcanvas


class VRAMTiles:
    def __init__(self):
        """Represents an entire VRAM"""
        self.tiles = [VRAMTile() for _ in range(0x100)]

    def paintSprite(self, pixelcanvas: list, sprite: sprite.Sprite, offsetx: int = 128, offsety: int = 128) -> list:
        """Paints the VRAM tile into the canvas, using the provided attributes.
        Returns the updated canvas"""
        for entry in reversed(sprite.entries):
            self.tiles[entry.tileid].paintSprite(pixelcanvas, entry.x + offsetx, entry.y + offsety, entry.attr)
        return pixelcanvas

    def storeImage(self, vbk: int, pixels: list, tileid: int) -> None:
        """Stores a tileset of unspecified width
        vbk: target bank
        pixels: source tileset information
        tileid: target location"""
        width = len(pixels[0])//8
        height = len(pixels)//8
        for y in range(height):
            for x in range(width):
                self.tiles[tileid].storeImage(vbk, pixels, x, y)
                tileid += 1
