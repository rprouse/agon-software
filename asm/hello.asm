	.assume adl = 1
	.org $040000

argv_ptrs_max: equ 16

	jp _start

; Header
_exe_name: db "HELLO.BIN"

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

	ld ix, argv_ptrs
	push ix
	call _parse_params
	pop ix
	ld b, 0
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

_parse_params:
	ld bc, _exe_name
	ld (ix+0), bc
	inc ix
	inc ix
	inc ix
	call _skip_spaces

	ld bc, 1
	ld b, argv_ptrs_max - 1

_parse_params_1:
	push bc
	push hl
	call _get_token
	ld a, c
	pop de
	pop bc
	or a
	ret z

	ld (ix+0), de
	push hl
	pop de
	call _skip_spaces
	xor a
	ld (de), a
	inc ix
	inc ix
	inc ix
	inc c
	ld a, c
	cp b
	jr c, _parse_params_1
	ret

_get_token:
	ld c, 0
@@:	ld a, (hl)
	or a
	ret z
	cp 13
	ret z
	cp ' '
	ret z
	inc hl
	inc c
	jr @b

_skip_spaces:
	ld a,(hl)
	cp ' '
	ret nz
	inc hl
	jr _skip_spaces

prstr:
	ld bc,0
	ld a,0
	rst.lil 18h
	ret

	; Old single byte at a time code
	ld a,(hl)
	or a
	ret z
	rst.lil 10h
	inc hl
	jr prstr

; Storage for the argv pointers
argv_ptrs: blkp argv_ptrs_max,0
string:    db "Hello Agon Light 2!\r\n",0

