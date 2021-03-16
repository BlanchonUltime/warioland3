Func_18000: ; 18000 (6:4000)
	xor a
	ld [wc0dd], a
	ld a, [wcce9]
	sramswitch
	ld hl, wccea
	ld a, [hli]
	ld l, [hl]
	ld h, a
	ld a, [hl]
	add a
	ld e, a
	ld d, $00
	ld hl, wPermissionMap
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x18020

Func_18020: ; 18020 (6:4020)
	xor a ; SRAM0
	sramswitch
	xor a
	ld [wc0d8], a
	ld [wc0d9], a
	ld [wc18d], a
	ret
; 0x18032

	INCROM $18032, $19734

Func_19734: ; 19734 (6:5734)
	ld a, $01
	ld [wc0d8], a
	ld a, [wDirection]
	and a
	jr z, .dir_left
	jr .dir_right

	ld a, $01
	ld [wc0d8], a

.dir_right
	ld a, [wca8e]
	cp $42
	jr z, .asm_19774
	ld a, [wca72]
	sub $01
	ld c, a
	ld hl, wca64
	ld de, hffab
	ld a, [hld]
	add c
	ld [de], a
	dec de
	ld a, [hld]
	adc $00
	ld [de], a
	dec de
	ld a, [wca70]
	cpl
	inc a
	add $07
	ld c, a
	ld a, [hld]
	sub c
	ld [de], a
	dec de
	ld a, [hl]
	sbc $00
	ld [de], a
	jr .asm_19799

.asm_19774
	ld a, [wca72]
	sub $01
	ld c, a
	ld hl, wca64
	ld de, hffab
	ld a, [hld]
	add c
	ld [de], a
	dec de
	ld a, [hld]
	adc $00
	ld [de], a
	dec de
	ld a, [wca70]
	cpl
	inc a
	add $01
	ld c, a
	ld a, [hld]
	sub c
	ld [de], a
	dec de
	ld a, [hl]
	sbc $00
	ld [de], a
.asm_19799
	ldh a, [hffa9]
	and $f0
	ld [wc0dc], a
	call Func_19bc3
	and $0f
	jp z, .asm_19832
	ld a, [wca89]
	and a
	jp nz, .asm_19823
	ld a, b
	ret

	ld a, $01
	ld [wc0d8], a
.dir_left
	ld a, [wca8e]
	cp $42
	jr z, .asm_197e6
	ld a, [wca71]
	cpl
	inc a
	sub $01
	ld c, a
	ld hl, wca64
	ld de, hffab
	ld a, [hld]
	sub c
	ld [de], a
	dec de
	ld a, [hld]
	sbc $00
	ld [de], a
	dec de
	ld a, [wca70]
	cpl
	inc a
	add $07
	ld c, a
	ld a, [hld]
	sub c
	ld [de], a
	dec de
	ld a, [hl]
	sbc $00
	ld [de], a
	jr .asm_1980d

.asm_197e6
	ld a, [wca71]
	cpl
	inc a
	sub $01
	ld c, a
	ld hl, wca64
	ld de, hffab
	ld a, [hld]
	sub c
	ld [de], a
	dec de
	ld a, [hld]
	sbc $00
	ld [de], a
	dec de
	ld a, [wca70]
	cpl
	inc a
	add $01
	ld c, a
	ld a, [hld]
	sub c
	ld [de], a
	dec de
	ld a, [hl]
	sbc $00
	ld [de], a
.asm_1980d
	ldh a, [hffa9]
	and $f0
	ld [wc0dc], a
	call Func_19bc3
	and $0f
	jr z, .asm_19832
	ld a, [wca89]
	and a
	jr nz, .asm_19823
	ld a, b
	ret

.asm_19823
	ld a, $01
	ld [wc0d8], a
	call Func_19bd3
	ld a, $01
	ld [wc18d], a
	ld b, a
	ret

.asm_19832
	ld a, [wca8b]
	and a
	jp nz, .asm_198c1
	ld a, [wca6f]
	ld b, a
	ld a, [wca62]
	add b
	add $02
	and $f0
	ld b, a
	ld a, [wc0dc]
	cp b
	jp z, .asm_198c1
	ld a, $01
	ld [wc0d8], a
	call Func_19bd3
	and $0f
	ret z
	ld a, [wca74]
	and a
	jp nz, .asm_198c0
	ld a, [wca89]
	and a
	jr nz, .asm_198c0
	ld a, [wc0db]
	and a
	jr nz, .asm_198c0
	ld a, [wca8b]
	and a
	jr nz, .asm_198c0
	ld a, [wcac9]
	and a
	jr nz, .asm_198c0
	ld a, [wca8e]
	and a
	jr nz, .asm_198c0
	ld a, [wcaa0]
	and a
	jr nz, .asm_198c0

	ld a, [wJoypadDown]
	bit D_RIGHT_F, a
	jr nz, .asm_198aa
	bit D_LEFT_F, a
	jr nz, .asm_19894
	ld a, [wDirection]
	and a
	jr nz, .asm_198aa
.asm_19894
	ld b, $02
	call Func_1270
	farcall Func_1e855
	jr .asm_198c1
.asm_198aa
	ld b, $02
	call Func_1259
	farcall Func_1e855
	jr .asm_198c1
.asm_198c0
	ret
.asm_198c1
	xor a
	ld [wc18d], a
	ld b, a
	ret
; 0x198c7

Func_198c7: ; 198c7 (6:58c7)
	xor a
	ld [wc189], a
	ld hl, wca61
	ld de, hffa8
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	call Func_19b51
	ret
; 0x198e0

Func_198e0: ; 198e0 (6:58e0)
	ld a, $01
	ld [wced3], a
	call Func_198c7
	and a
	ret nz
	xor a
	ld [wced3], a
	ld a, [wca71]
	cpl
	inc a
	sub $03
	ld c, a
	ld hl, wca64
	ld de, hffab
	ld a, [hld]
	sub c
	ld [de], a
	dec de
	ld a, [hld]
	sbc $00
	ld [de], a
	dec de
	ld a, [hld]
	ld [de], a
	dec de
	ld a, [hl]
	ld [de], a
	call Func_19b8b
	and a
	ret nz
	ld a, [wca72]
	sub $03
	ld c, a
	ld hl, wca64
	ld de, hffab
	ld a, [hld]
	add c
	ld [de], a
	dec de
	ld a, [hld]
	adc $00
	ld [de], a
	dec de
	ld a, [hld]
	ld [de], a
	dec de
	ld a, [hl]
	ld [de], a
	call Func_19b8b
	and a
	ret nz
	ld a, [wcac9]
	and a
	ret z
	ld b, a
	ld hl, wca61
	ld de, hffa8
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ld a, $01
	ret
; 0x19942

Func_19942: ; 19942 (6:5942)
	ld a, [wca8e]
	cp $07
	jr z, .asm_1994e
	ld a, $01
	ld [wc0d8], a
.asm_1994e
	ld a, [wca6f]
	cpl
	inc a
	add $02
	ld c, a
	ld hl, wca64
	ld de, hffab
	ld a, [hld]
	ld [de], a
	dec de
	ld a, [hld]
	ld [de], a
	dec de
	ld a, [hld]
	sub c
	ld [de], a
	dec de
	ld a, [hl]
	sbc $00
	ld [de], a
	call Func_19beb
	ret
; 0x1996e

Func_1996e: ; 1996e (6:596e)
	ld a, $01
	ld [wced2], a
	call Func_19942
	and a
	ret nz
	xor a
	ld [wced2], a
	ld a, [wca8e]
	cp $07
	jr z, .asm_19988
	ld a, $01
	ld [wc0d8], a
.asm_19988
	ld a, [wca71]
	cpl
	inc a
	sub $03
	ld c, a
	ld hl, wca64
	ld de, hffab
	ld a, [hld]
	sub c
	ld [de], a
	dec de
	ld a, [hld]
	sbc $00
	ld [de], a
	dec de
	ld a, [wca6f]
	cpl
	inc a
	add $02
	ld c, a
	ld a, [hld]
	sub c
	ld [de], a
	dec de
	ld a, [hl]
	sbc $00
	ld [de], a
	call Func_19b9b
	and a
	ret nz
	ld a, [wca8e]
	cp $07
	jr z, .asm_199c0
	ld a, $01
	ld [wc0d8], a
.asm_199c0
	ld a, [wca72]
	sub $03
	ld c, a
	ld hl, wca64
	ld de, hffab
	ld a, [hld]
	add c
	ld [de], a
	dec de
	ld a, [hld]
	adc $00
	ld [de], a
	dec de
	ld a, [wca6f]
	cpl
	inc a
	add $02
	ld c, a
	ld a, [hld]
	sub c
	ld [de], a
	dec de
	ld a, [hl]
	sbc $00
	ld [de], a
	call Func_19b9b
	ret
; 0x199e9

	INCROM $199e9, $19b12

Func_19b12: ; 19b12 (6:5b12)
	ld hl, wca61
	ld de, hffa8
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	jr Func_19b3a

Func_19b25: ; 19b25 (6:5b25)
	ld hl, wca64
	ld de, hffab
	ld a, [hld]
	ld [de], a
	dec de
	ld a, [hld]
	ld [de], a
	dec de
	ld a, [hld]
	sub $04
	ld [de], a
	dec de
	ld a, [hl]
	sbc $00
	ld [de], a
;	fallthrough

Func_19b3a: ; 19b3a (6:5b3a)
	xor a
	ld [wc0db], a
	ld [wLadderInteraction], a
	ld [wc0d7], a
	ld [wcaa0], a
	ld [wc1c8], a
	ld [wc1c9], a
	call Func_19c0b
	ret
; 0x19b51

Func_19b51: ; 19b51 (6:5b51)
	ld hl, hffa8
	call Func_bdb
	ld a, $01
	ld [wc0d6], a
	call Func_18000
	ld b, a
	ret
; 0x19b61

	INCROM $19b61, $19b8b

Func_19b8b: ; 19b8b (6:5b8b)
	ld hl, hffa8
	call Func_bdb
	ld a, $04
	ld [wc0d6], a
	call Func_18000
	ld b, a
	ret
; 0x19b9b

Func_19b9b: ; 19b9b (6:5b9b)
	ld hl, hffa8
	call Func_bdb
	ld a, $08
	ld [wc0d6], a
	call Func_18000
	ld b, a
	ret
; 0x19bab

	INCROM $19bab, $19bc3

Func_19bc3: ; 19bc3 (6:5bc3)
	ld hl, hffa8
	call Func_bdb
	ld a, $10
	ld [wc0d6], a
;	fallthrough

Func_19bce: ; 19bce (6:5bce)
	call Func_18000
	ld b, a
	ret
; 0x19bd3

Func_19bd3: ; 19bd3 (6:5bd3)
	ld hl, wccea
	dec [hl]
	ld a, [hl]
	cp $9f
	jr nz, .asm_19be6
	ld a, [wcce9]
	dec a
	ld [wcce9], a
	ld a, $bf
	ld [hl], a
.asm_19be6
	ld a, [hli]
	ld l, [hl]
	ld h, a
	jr Func_19bce
; 0x19beb

Func_19beb: ; 19beb (6:5beb)
	ld hl, hffa8
	call Func_bdb
	ld a, $20
	ld [wc0d6], a
	call Func_18000
	ld b, a
	ret
; 0x19bfb

	INCROM $19bfb, $19c0b

Func_19c0b: ; 19c0b (6:5c0b)
	ld hl, hffa8
	call Func_bdb
	ld a, $80
	ld [wc0d6], a
	call Func_18000
	ld b, a
	ret
; 0x19c1b

Func_19c1b: ; 19c1b (6:5c1b)
	ld a, [wWarioState]
	sub $30
	jumptable

	dw $5ce7
	dw $5ef1
	dw $6046
	dw $6077
	dw $60b4
	dw $617e
	dw $61c5
	dw $6296
	dw $62d6
	dw $6394
	dw $6436
	dw $651d
	dw $655c
	dw $6617
	dw $66b6
	dw $67d6
	dw $689e
	dw $68ff
	dw $6980
	dw $69e9
	dw $6a5c
	dw $6ac9
	dw $6b44
	dw $68ff
	dw $6980
	dw $6bb1
	dw $6bf4
	dw $6c73
	dw $6d7d
	dw $6dfb
	dw $6ed0
	dw $6f98
	dw $700f
	dw $70a9
	dw Func_156d
	dw Func_156d
	dw Func_156d
	dw Func_156d
	dw Func_156d
	dw Func_156d
	dw Func_156d
	dw Func_156d
	dw Func_156d
	dw Func_156d
	dw Func_156d
	dw Func_156d
	dw Func_156d
	dw Func_156d
; 0x19c81

Func_19c81: ; 19c81 (6:5c81)
	ld a, ST_UNKNOWN_30
	ld [wWarioState], a
	xor a
	ld [wceed], a
	ld [wIdleCounter], a
	ld [wca89], a
	ld a, $04
	ld [wca7b], a
	ld a, $40
	ld [wca7c], a
	ld a, $00
	ld [$ca7d], a
	call Func_15b0
	ld a, $05
	ld [wca7e], a
	ld a, $40
	ld [wca7f], a
	ld a, $00
	ld [$ca80], a
	xor a
	ld [wFrameDuration], a
	ld [wca68], a

	ld a, [wDirection]
	ld [wIdleCycles], a
	and a
	jr nz, .asm_19ccd
	ld a, HIGH(Frameset_14252)
	ld [wFramesetPtr + 0], a
	ld a, LOW(Frameset_14252)
	ld [wFramesetPtr + 1], a
	jr .got_frameset
.asm_19ccd
	ld a, HIGH(Frameset_1425f)
	ld [wFramesetPtr + 0], a
	ld a, LOW(Frameset_1425f)
	ld [wFramesetPtr + 1], a
.got_frameset
	ld a, $05
	ldh [hCallFuncBank], a
	ld a, $53
	ldh [hCallFuncPointer], a
	ld a, $0e
	ldh [$ff8e], a
	call hCallFunc
	ret
; 0x19ce7

	INCROM $19ce7, $19e7f

Func_19e7f: ; 19e7f (6:5e7f)
	xor a
	ld [wIdleCounter], a
	ld a, [wDirection]
	ld [wIdleCycles], a
	ld a, ST_UNKNOWN_31
	ld [wWarioState], a
	xor a
	ld [wceed], a
	ld [wca89], a
	ld [wca9a], a
	inc a
	ld [wca8b], a
	ld a, $04
	ld [wca7b], a
	ld a, $48
	ld [wca7c], a
	ld a, $00
	ld [$ca7d], a
	call Func_15b0
	ld a, $05
	ld [wca7e], a
	ld a, $42
	ld [wca7f], a
	ld a, $6c
	ld [$ca80], a
	xor a
	ld [wFrameDuration], a
	ld [wca68], a
	ld a, [wIdleCycles]
	cp $01
	jr z, .asm_19ed7
	ld a, HIGH(Frameset_14a38)
	ld [wFramesetPtr + 0], a
	ld a, LOW(Frameset_14a38)
	ld [wFramesetPtr + 1], a
	jr .got_frameset
.asm_19ed7
	ld a, HIGH(Frameset_14a3b)
	ld [wFramesetPtr + 0], a
	ld a, LOW(Frameset_14a3b)
	ld [wFramesetPtr + 1], a
.got_frameset
	ld a, $05
	ldh [hCallFuncBank], a
	ld a, $53
	ldh [hCallFuncPointer], a
	ld a, $0e
	ldh [$ff8e], a
	call hCallFunc
	ret
; 0x19ef1

	INCROM $19ef1, $1a3bb

SetState_LadderClimbing: ; 1a3bb (6:63bb)
	ld a, ST_LADDER_CLIMBING
	ld [wWarioState], a
	ld a, [wca64]
	and $f0
	add $08
	ld [wca64], a
	xor a
	ld [wceed], a
	ld [wIdleCounter], a
	ld [wIdleCycles], a
	ld [wca96], a
	ld [wca75], a
	ld [wca74], a
	ld [wca99], a
	ld a, $ff
	ld [wca70], a
	ld a, $f7
	ld [wca71], a
	ld a, $09
	ld [wca72], a
	ld a, $e5
	ld [wca6f], a
	ld a, $04
	ld [wca7b], a
	ld a, $68
	ld [wca7c + 0], a
	ld a, $00
	ld [wca7c + 1], a
	call Func_15b0
	ld a, $05
	ld [wca7e], a
	ld a, $55
	ld [wca7f + 0], a
	ld a, $cc
	ld [wca7f + 1], a
	xor a
	ld [wFrameDuration], a
	ld [wca68], a
	ld a, HIGH(Frameset_158d6)
	ld [wFramesetPtr + 0], a
	ld a, LOW(Frameset_158d6)
	ld [wFramesetPtr + 1], a
	ld a, BANK(Frameset_158d6)
	ldh [hCallFuncBank], a
	call_hram Func_e53
	ret
; 0x1a436

	INCROM $1a436, $1ac10

SetState_Sleeping: ; 1ac10 (6:6c10)
	ld a, ST_SLEEPING
	ld [wWarioState], a
	xor a
	ld [wceed], a
	ld [wIdleCounter], a
	ld [wIdleCycles], a
	ld a, $04
	ld [wca7b], a
	ld a, $40
	ld [wca7c + 0], a
	ld a, $00
	ld [wca7c + 1], a
	call Func_15b0
	ld a, $05
	ld [wca7e], a
	ld a, $40
	ld [wca7f + 0], a
	ld a, $00
	ld [wca7f + 1], a
	xor a
	ld [wFrameDuration], a
	ld [wca68], a

	ld a, [wDirection]
	and a
	jr nz, .asm_1ac59
	ld a, HIGH(Frameset_1421c)
	ld [wFramesetPtr + 0], a
	ld a, LOW(Frameset_1421c)
	ld [wFramesetPtr + 1], a
	jr .got_frameset
.asm_1ac59
	ld a, HIGH(Frameset_14225)
	ld [wFramesetPtr + 0], a
	ld a, LOW(Frameset_14225)
	ld [wFramesetPtr + 1], a
.got_frameset
	ld a, BANK(Frameset_14225)
	ldh [hCallFuncBank], a
	call_hram Func_e53
	ret
; 0x1ac73

	INCROM $1ac73, $1ad9a

Func_1ad9a: ; 1ad9a (6:6d9a)
	ld a, ST_UNKNOWN_4D
	ld [wWarioState], a
	xor a
	ld [wFrameDuration], a
	ld [wca68], a
	ld [wIdleCounter], a
	ld a, $03
	ld [wca9b], a

	ld a, $04
	ld [wca7b], a
	ld a, $40
	ld [wca7c + 0], a
	ld a, $00
	ld [wca7c + 1], a
	call Func_15b0
	ld a, $05
	ld [wca7e], a
	ld a, $4a
	ld [wca7f + 0], a
	ld a, $82
	ld [wca7f + 1], a

	ld a, [wDirection]
	and a
	jr nz, .asm_1ade1
	ld a, HIGH(Frameset_14d0b)
	ld [wFramesetPtr + 0], a
	ld a, LOW(Frameset_14d0b)
	ld [wFramesetPtr + 1], a
	jr .asm_1adeb
.asm_1ade1
	ld a, HIGH(Frameset_14d10)
	ld [wFramesetPtr + 0], a
	ld a, LOW(Frameset_14d10)
	ld [wFramesetPtr + 1], a
.asm_1adeb
	ld a, BANK(Frameset_14d10)
	ldh [hCallFuncBank], a
	call_hram Func_e53
	ret
; 0x1adfb

	INCROM $1adfb, $1ae68

Func_1ae68: ; 1ae68 (6:6e68)
	ld a, ST_UNKNOWN_4E
	ld [wWarioState], a
	xor a
	ld [wceed], a
	ld [wIdleCounter], a
	ld [wIdleCycles], a
	ld [wca96], a
	ld a, $ff
	ld [wca70], a
	ld a, $f7
	ld [wca71], a
	ld a, $09
	ld [wca72], a
	ld a, $e5
	ld [wca6f], a
	ld a, $04
	ld [wca7b], a
	ld a, $68
	ld [wca7c + 0], a
	ld a, $00
	ld [wca7c + 1], a
	call Func_15b0
	ld a, $05
	ld [wca7e], a
	ld a, $55
	ld [wca7f + 0], a
	ld a, $cc
	ld [wca7f + 1], a
	xor a
	ld [wFrameDuration], a
	ld [wca68], a
	ld a, HIGH(Frameset_158d6)
	ld [wFramesetPtr + 0], a
	ld a, LOW(Frameset_158d6)
	ld [wFramesetPtr + 1], a
	ld a, BANK(Frameset_158d6)
	ldh [hCallFuncBank], a
	call_hram Func_e53
	ret
; 0x1aed0

	INCROM $1aed0, $1c000
