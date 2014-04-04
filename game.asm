; rst vectors
SECTION "rst00",HOME[0]
    ret

SECTION "rst08",HOME[8]
    ret

SECTION "rst10",HOME[$10]
    ret

SECTION "rst18",HOME[$18]
    ret

SECTION "rst20",HOME[$20]
    ret

SECTION "rst30",HOME[$30]
    ret

SECTION "rst38",HOME[$38]
    ret

SECTION "vblank",HOME[$40]
    jp VBlank
SECTION "lcdc",HOME[$48]
    reti
SECTION "timer",HOME[$50]
    reti
SECTION "serial",HOME[$58]
    reti
SECTION "joypad",HOME[$60]
    reti

SECTION "bank0",HOME[$61]

SECTION "romheader",HOME[$100]
    nop
    jp Start

Section "start",HOME[$150]

Start:
.loop
    halt
    jr .loop

VBlank:
    reti

