SECTION "SMW RNG",ROMX,BANK[$01]
Signature:
	db "MineRobber9000 + GBDev"
Random_::
	push hl
	ld bc,wRandomState+3
	call TickRandom
	dec bc
	call TickRandom
	pop hl
	ret
TickRandom::
	ld hl,wRandomState
	ld a,[hl]
	add a,a
	add a,a
	scf
	adc a,[hl]
	ld [hli],a
	sla [hl]
	bit 5,[hl]
	jr nc,.one
	jr z,.three
	jr nz,.two
.one	jr nz,.three
.two	inc [hl]
.three	ld a,[hld]
	xor [hl]
	ld [bc],a
	ret

