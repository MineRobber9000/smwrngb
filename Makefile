RANDOM_TICK:=VBlank

SOURCES:=$(wildcard *.asm)

OBJECTS:=$(patsubst %.asm,%.o,$(SOURCES))

all: testrom.gb

%.o: %.asm
	rgbasm -D$(RANDOM_TICK)Random -o $@ $<

testrom.gb: $(OBJECTS)
	rgblink -d -n testrom.sym -o $@ $^
	rgbfix -jv -k 01 -l 0x33 -m 0x01 -p 0 -r 0 -t SMW_RNG_TESTROM $@

clean:
	rm -f $(OBJECTS) testrom.gb testrom.sym
