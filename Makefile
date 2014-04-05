all: game.gb

game.o: game.asm
	rgbasm -o game.o game.asm

game.gb: game.o
	rgblink -n game.sym -m $*.map -o $@ $<
	rgbfix -jv -i XXXX -k XX -l 0x33 -m 0x01 -p 0 -r 0 -t game $@

clean:
	rm -f game.o game.gb
