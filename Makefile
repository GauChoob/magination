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
	python python\\make main

preview:
	python python\\make preview $(scene)

tests:
	python -m unittest python\\projutils\\tests\\test_asm.py
	python -m unittest python\\projutils\\tests\\test_autopack.py
	python -m unittest python\\projutils\\tests\\test_battle.py
	python -m unittest python\\projutils\\tests\\test_collision.py
	python -m unittest python\\projutils\\tests\\test_color.py
	python -m unittest python\\projutils\\tests\\test_encoding.py
	python -m unittest python\\projutils\\tests\\test_fileregistry.py
	python -m unittest python\\projutils\\tests\\test_hotspot.py
	python -m unittest python\\projutils\\tests\\test_lbm.py
	python -m unittest python\\projutils\\tests\\test_magireader.py
	python -m unittest python\\projutils\\tests\\test_pattern.py
	python -m unittest python\\projutils\\tests\\test_preview.py
	python -m unittest python\\projutils\\tests\\test_preview_sprite.py
	python -m unittest python\\projutils\\tests\\test_rle.py
	python -m unittest python\\projutils\\tests\\test_sprite.py
	python -m unittest python\\projutils\\tests\\test_textreplace.py
	python -m unittest python\\projutils\\tests\\test_tilemap.py
	python -m unittest python\\projutils\\tests\\test_tileset.py
	python -m unittest python\\projutils\\tests\\test_utils.py
	python -m unittest python\\magiparser\\tests\\test_magiparser.py

flake:
	flake8 python\\magiparser python\\make python\\projutils

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
	$(info make flake -> run flake8 verification)
	$(info )
	