; Methods converted from C from https://github.com/james7780/Agon_C_Sprites/blob/main/vdp.c

_vdp_mode:
    push ix
    ld ix, 0
    add ix, sp
    ld sp, 22
    call _putch
    ld sp,ix
    call _putch
    pop ix
    ret

