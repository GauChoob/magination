all: clean files game.gbc

game.o: source/game.asm source/banks/*.asm source/includes/*.asm source/macros/*.asm source/ram/*.asm musyx/*.asm source/test/*.asm source/engine/*.asm
	rgbasm -h -L -o game.o source/game.asm

game.gbc: game.o
	rgblink -n game.sym -m game.map -o $@ -p 0 $<
	rgbfix -v -p 0 $@
	md5sum $@

clean:
	rm game.o game.gbc game.sym game.map -f

delfiles:
	python python\\make delete

files:
	python python\\make main

preview:
	python python\\make\\preview_make.py

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

help:
	$(info -> generate game files)
	$(info )
	$(info preview -> generate scene previews (python/out/preview/))
	$(info )
	$(info delfiles -> delete generated assets, musyx, mgi, autopack)
	