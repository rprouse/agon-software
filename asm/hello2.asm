	.assume adl = 1
	.org $040000

	jp _start

; Header
_exe_name: db "HELLO2.BIN"

	align 64
	db "MOS"
	db 00h
	db 01h

; Code
_start:
	push af
	push bc
	push de
	push ix
	push iy

	call _main

	pop iy
	pop ix
	pop de
	pop bc
	pop af

	ld hl, 0
	ret

_main:
	ld hl, string
	call prstr
	ret

prstr:
	ld bc,0
	ld a,0
	rst.lil 18h
	ret

string:    db "Hello Agon Light 2!\r\n",0
