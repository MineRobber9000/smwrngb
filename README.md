# SMW RN-GB

A port of the SMW RNG algorithm to the GameBoy.

The meat of the algorithm is in `smwrng.asm`. The other ASM files are mostly for the test ROM, which will tick the RNG every second.

# Credits

 - ISSOtm and the other fine people in the [GBDev Discord](https://discord.gg/gpBxq85) for putting up with me.
 - Sanqui for [the GameBoy ROM template](https://gist.github.com/Sanqui/9984480) used for the test ROM.
 - [Dotsarecool and the Retro Game Mechanics Explained channel he runs for explaining the RNG algorithm.](https://www.youtube.com/watch?v=q15yNrJHOak) (This is actually a 1:1 port of the 6502 assembly code shown in the video!)
