lb: MACRO ; r, hi, lo
	ld \1, (\2) << 8 + ((\3) & $ff)
ENDM

bankswitch: MACRO
	ld [wROMBank], a
	ld [MBC5RomBank], a
ENDM

sramswitch: MACRO
	ld [wSRAMBank], a
	ld [MBC5SRamBank], a
ENDM

jumptable: MACRO
	rst $28
ENDM

call_hram: MACRO
	ld a, LOW(\1)
	ldh [hCallFuncPointer], a
	ld a, HIGH(\1)
	ldh [hCallFuncPointer + 1], a
	call hCallFunc
ENDM

farcall: MACRO
if _NARG == 1
	ld a, BANK(\1)
	ldh [hCallFuncBank], a
	call_hram \1
else
	ld a, \1
	ldh [hCallFuncBank], a
	ld a, [\2]
	ldh [hCallFuncPointer], a
	ld a, [\2 + 1]
	ldh [hCallFuncPointer + 1], a
	call hCallFunc
endc
ENDM
