	.assume adl = 1
	.org $040000

	jp _main

; Header
_exe_name: db "MODE.BIN"

	align 64
	db "MOS"
	db 00h
	db 01h

; Code
_main:
	ld a, 22
	out0 (C0h),a
	ld a, 2
	out0 (C0h),a
	ld hl,0
	ret








