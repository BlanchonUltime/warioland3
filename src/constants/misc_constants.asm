; Boolean checks
DEF FALSE EQU 0
DEF TRUE  EQU 1

DEF NULL EQU $ffff

DEF LCDC_DEFAULT EQU LCDCF_ON | LCDCF_OBJ16 | LCDCF_OBJON | LCDCF_BGON

; save corruption constants
DEF SAVE_CHECK_VAL_1 EQU $77
DEF SAVE_CHECK_VAL_2 EQU $61
DEF SAVE_CHECK_VAL_3 EQU $72
DEF SAVE_CHECK_VAL_4 EQU $33
