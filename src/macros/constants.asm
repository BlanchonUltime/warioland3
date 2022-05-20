; Enumerate constants

MACRO const_def
IF _NARG >= 1
const_value = \1
ELSE
const_value = 0
endc
IF _NARG >= 2
const_inc = \2
ELSE
const_inc = 1
ENDC
ENDM

MACRO const
DEF \1 EQU const_value
const_value = const_value + const_inc
ENDM

MACRO shift_const
DEF \1 EQU (1 << const_value)
const_value = const_value + const_inc
ENDM

MACRO const_skip
IF _NARG >= 1
const_value = const_value + const_inc * (\1)
ELSE
const_value = const_value + const_inc
ENDC
ENDM
