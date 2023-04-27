	.assume adl = 1
	.org $040000

	jp _main

; Header
_exe_name: db "HELLO2.BIN"

	align 64
	db "MOS"
	db 00h
	db 01h

; Code
_main:
	ld hl, string
	call prstr
	ld hl,0
	ret

prstr:
	ld bc,0
	ld a,0
	rst.lil 18h
	ret

string:    db "Hello Agon Light 2!\r\n",0
