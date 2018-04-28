# SMW RN-GB

A port of the SMW RNG algorithm to the GameBoy.

The meat of the algorithm is in `smwrng.asm`. The other ASM files are mostly for the test ROM, which will tick the RNG every second.

# Credits

 - ISSOtm and the other fine people in the GBDev Discord for putting up with me.
 - Sanqui for the GameBoy ROM template used for the test ROM.
 - Dotsarecool and the Retro Game Mechanics Explained channel he runs for explaining the RNG algorithm. (This is actually a 1:1 port of the 6502 assembly code shown in the video!)
