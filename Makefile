all: files rom

rom:
	rgbasm -h -L -o game.o source/game.asm
	rgblink -n game.sym -m game.map -o game.gbc -p 0 game.o
	rgbfix -v -p 0 game.gbc
	md5sum game.gbc

clean:
	py python\\make delete
	rm game.o game.gbc game.sym game.map -f

files:
	py python\\make main

preview:
	py python\\make preview $(scene)

tests:
	py -m unittest python\\projutils\\tests\\test_asm.py
	py -m unittest python\\projutils\\tests\\test_autopack.py
	py -m unittest python\\projutils\\tests\\test_battle.py
	py -m unittest python\\projutils\\tests\\test_collision.py
	py -m unittest python\\projutils\\tests\\test_color.py
	py -m unittest python\\projutils\\tests\\test_encoding.py
	py -m unittest python\\projutils\\tests\\test_fileregistry.py
	py -m unittest python\\projutils\\tests\\test_hotspot.py
	py -m unittest python\\projutils\\tests\\test_lbm.py
	py -m unittest python\\projutils\\tests\\test_magireader.py
	py -m unittest python\\projutils\\tests\\test_pattern.py
	py -m unittest python\\projutils\\tests\\test_preview.py
	py -m unittest python\\projutils\\tests\\test_preview_sprite.py
	py -m unittest python\\projutils\\tests\\test_rle.py
	py -m unittest python\\projutils\\tests\\test_sprite.py
	py -m unittest python\\projutils\\tests\\test_textreplace.py
	py -m unittest python\\projutils\\tests\\test_tilemap.py
	py -m unittest python\\projutils\\tests\\test_tileset.py
	py -m unittest python\\projutils\\tests\\test_utils.py
	py -m unittest python\\magiparser\\tests\\test_magiparser.py

help:
	$(info make -> generate game files)
	$(info )
	$(info make preview -> generate all scene previews (located in python/out/preview/))
	$(info make preview scene=Underneath_Fort_Outside-> generate one scene previews (located in python/out/preview/))
	$(info )
	$(info make clean -> delete generated assets, musyx, mgi, autopack)
	$(info .             can be useful if you rename files and the script gets confused)
	$(info )
	$(info make tests -> run python tests)
	$(info )
	