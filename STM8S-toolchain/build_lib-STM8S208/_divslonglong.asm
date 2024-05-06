;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_divslonglong"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __divslonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.section .text
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.section .text
	.section	 .text.__divslonglong
	.L_divslonglong__divslonglong_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslonglong.c: 36: _divslonglong (long long numerator, long long denominator)
; genLabel
;	-----------------------------------------
;	 function _divslonglong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 17 bytes.
__divslonglong:
	.L_divslonglong__divslonglong_1:
	sub	sp, #17
	.L_divslonglong__divslonglong_2:
	.L_divslonglong__divslonglong_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslonglong.c: 38: bool numeratorneg = (numerator < 0);
; genCmp
; genCmpTop
	tnz	(0x16, sp)
	jrmi	00124$
	clr	(0x11, sp)
	jp	00125$
00124$:
	ld	a, #0x01
	ld	(0x11, sp), a
00125$:
	.L_divslonglong__divslonglong_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslonglong.c: 39: bool denominatorneg = (denominator < 0);
; genCmp
; genCmpTop
	tnz	(0x1e, sp)
	jrmi	00126$
	clr	a
	jp	00127$
00126$:
	ld	a, #0x01
00127$:
	.L_divslonglong__divslonglong_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslonglong.c: 42: if (numeratorneg)
; genIfx
	tnz	(0x11, sp)
	jrne	00128$
	jp	00102$
00128$:
	.L_divslonglong__divslonglong_6:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslonglong.c: 43: numerator = -numerator;
; genUminus
	push	a
	.L_divslonglong__divslonglong_7:
	ld	a, (0x1e, sp)
	neg	a
	ld	(0x11, sp), a
	clr	a
	sbc	a, (0x1d, sp)
	ld	(0x10, sp), a
	clr	a
	sbc	a, (0x1c, sp)
	ld	(0x0f, sp), a
	clr	a
	sbc	a, (0x1b, sp)
	ld	(0x0e, sp), a
	clr	a
	sbc	a, (0x1a, sp)
	ld	(0x0d, sp), a
	clr	a
	sbc	a, (0x19, sp)
	ld	(0x0c, sp), a
	ldw	x, (0x17, sp)
	jrnc	00129$
	incw	x
00129$:
	negw	x
	pop	a
	.L_divslonglong__divslonglong_8:
; genAssign
	ldw	(0x16, sp), x
	ldw	y, (0x0f, sp)
	ldw	(0x1c, sp), y
	ldw	y, (0x0d, sp)
	ldw	(0x1a, sp), y
	ldw	y, (0x0b, sp)
	ldw	(0x18, sp), y
; genLabel
00102$:
	.L_divslonglong__divslonglong_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslonglong.c: 44: if (denominatorneg)
; genIfx
	tnz	a
	jrne	00130$
	jp	00104$
00130$:
	.L_divslonglong__divslonglong_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslonglong.c: 45: denominator = -denominator;
; genUminus
	push	a
	.L_divslonglong__divslonglong_11:
	ld	a, (0x26, sp)
	neg	a
	ld	(0x11, sp), a
	clr	a
	sbc	a, (0x25, sp)
	ld	(0x10, sp), a
	clr	a
	sbc	a, (0x24, sp)
	ld	(0x0f, sp), a
	clr	a
	sbc	a, (0x23, sp)
	ld	(0x0e, sp), a
	clr	a
	sbc	a, (0x22, sp)
	ld	(0x0d, sp), a
	clr	a
	sbc	a, (0x21, sp)
	ld	(0x0c, sp), a
	ldw	x, (0x1f, sp)
	jrnc	00131$
	incw	x
00131$:
	negw	x
	pop	a
	.L_divslonglong__divslonglong_12:
; genAssign
	ldw	(0x1e, sp), x
	ldw	y, (0x0f, sp)
	ldw	(0x24, sp), y
	ldw	y, (0x0d, sp)
	ldw	(0x22, sp), y
	ldw	y, (0x0b, sp)
	ldw	(0x20, sp), y
; genLabel
00104$:
	.L_divslonglong__divslonglong_13:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslonglong.c: 47: d = (unsigned long long)numerator / (unsigned long long)denominator;
; genCast
; genAssign
	ldw	y, (0x1c, sp)
	ldw	(0x07, sp), y
	ldw	y, (0x1a, sp)
	ldw	(0x05, sp), y
	ldw	y, (0x18, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x16, sp)
	ldw	(0x01, sp), y
; genCast
; genAssign
	ldw	y, (0x24, sp)
	ldw	(0x0f, sp), y
	ldw	y, (0x22, sp)
	ldw	(0x0d, sp), y
	ldw	y, (0x20, sp)
	ldw	(0x0b, sp), y
	ldw	y, (0x1e, sp)
; genIPush
	push	a
	.L_divslonglong__divslonglong_14:
	ldw	x, (0x10, sp)
	pushw	x
	.L_divslonglong__divslonglong_15:
	ldw	x, (0x10, sp)
	pushw	x
	.L_divslonglong__divslonglong_16:
	ldw	x, (0x10, sp)
	pushw	x
	.L_divslonglong__divslonglong_17:
	pushw	y
	.L_divslonglong__divslonglong_18:
; genIPush
	ldw	x, (0x10, sp)
	pushw	x
	.L_divslonglong__divslonglong_19:
	ldw	x, (0x10, sp)
	pushw	x
	.L_divslonglong__divslonglong_20:
	ldw	x, (0x10, sp)
	pushw	x
	.L_divslonglong__divslonglong_21:
	ldw	x, (0x10, sp)
	pushw	x
	.L_divslonglong__divslonglong_22:
; genCall
	ldw	x, sp
	addw	x, #26
	pushw	x
	.L_divslonglong__divslonglong_23:
	call	__divulonglong
	addw	sp, #18
	.L_divslonglong__divslonglong_24:
	pop	a
	.L_divslonglong__divslonglong_25:
; genAssign
	ldw	y, (0x0f, sp)
	ldw	(0x07, sp), y
	ldw	y, (0x0d, sp)
	ldw	(0x05, sp), y
	ldw	y, (0x0b, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x09, sp)
	ldw	(0x01, sp), y
	.L_divslonglong__divslonglong_26:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslonglong.c: 49: return ((numeratorneg ^ denominatorneg) ? -d : d);
; genXor
	xor	a, (0x11, sp)
	ld	(0x11, sp), a
; genIfx
	tnz	(0x11, sp)
	jrne	00132$
	jp	00107$
00132$:
; genUminus
	ld	a, (0x08, sp)
	neg	a
	ld	(0x11, sp), a
	clr	a
	sbc	a, (0x07, sp)
	ld	(0x10, sp), a
	clr	a
	sbc	a, (0x06, sp)
	ld	(0x0f, sp), a
	clr	a
	sbc	a, (0x05, sp)
	ld	(0x0e, sp), a
	clr	a
	sbc	a, (0x04, sp)
	ld	(0x0d, sp), a
	clr	a
	sbc	a, (0x03, sp)
	ld	(0x0c, sp), a
	clr	a
	sbc	a, (0x02, sp)
	ld	(0x0b, sp), a
	clr	a
	sbc	a, (0x01, sp)
	ld	(0x0a, sp), a
; genAssign
; genGoto
	jp	00108$
; genLabel
00107$:
; genAssign
	ldw	y, (0x07, sp)
	ldw	(0x10, sp), y
	ldw	y, (0x05, sp)
	ldw	(0x0e, sp), y
	ldw	y, (0x03, sp)
	ldw	(0x0c, sp), y
	ldw	y, (0x01, sp)
	ldw	(0x0a, sp), y
; genLabel
00108$:
; genReturn
	ldw	x, (0x14, sp)
	ldw	y, (0x10, sp)
	ldw	(6, x), y
	ldw	y, (0x0e, sp)
	ldw	(4, x), y
	ldw	y, (0x0c, sp)
	ldw	(2, x), y
	ldw	y, (0x0a, sp)
	ldw	(x), y
; genLabel
00105$:
	.L_divslonglong__divslonglong_27:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslonglong.c: 50: }
; genEndFunction
	addw	sp, #17
	.L_divslonglong__divslonglong_28:
	.L_divslonglong__divslonglong_29:
	.L_divslonglong__divslonglongendf:
	ret
	.L_divslonglong__divslonglong_30:
	.section .text
	.section .text.rodata
	.section .data
	.section CABS (ABS)

	.section .debug_line, ""
	.word	0,.Ldebug_line_end-.Ldebug_line_start
.Ldebug_line_start:
	.word	2
	.word	0,.Ldebug_line_stmt-6-.Ldebug_line_start
	.byte	1
	.byte	1
	.byte	-5
	.byte	15
	.byte	10
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.ascii "/usr/local/stow/sdcc-gas/bin/../share/sdcc/include/stm8"
	.byte	0
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/include/stm8"
	.byte	0
	.ascii "/usr/local/stow/sdcc-gas/bin/../share/sdcc/include"
	.byte	0
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/include"
	.byte	0
	.byte	0
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslonglong.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_divslonglong__divslonglong_0)
	.byte	3
	.sleb128	35
	.byte	1
	.byte	9
	.word	.L_divslonglong__divslonglong_3-.L_divslonglong__divslonglong_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divslonglong__divslonglong_4-.L_divslonglong__divslonglong_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divslonglong__divslonglong_5-.L_divslonglong__divslonglong_4
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.L_divslonglong__divslonglong_6-.L_divslonglong__divslonglong_5
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divslonglong__divslonglong_9-.L_divslonglong__divslonglong_6
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divslonglong__divslonglong_10-.L_divslonglong__divslonglong_9
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divslonglong__divslonglong_13-.L_divslonglong__divslonglong_10
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divslonglong__divslonglong_26-.L_divslonglong__divslonglong_13
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divslonglong__divslonglong_27-.L_divslonglong__divslonglong_26
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_divslonglong__divslonglong_29-.L_divslonglong__divslonglong_27
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_divslonglong__divslonglong_28)
	.word	0,(.L_divslonglong__divslonglong_30)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.L_divslonglong__divslonglong_25)
	.word	0,(.L_divslonglong__divslonglong_28)
	.word	2
	.byte	120
	.sleb128	20
	.word	0,(.L_divslonglong__divslonglong_24)
	.word	0,(.L_divslonglong__divslonglong_25)
	.word	2
	.byte	120
	.sleb128	21
	.word	0,(.L_divslonglong__divslonglong_23)
	.word	0,(.L_divslonglong__divslonglong_24)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.L_divslonglong__divslonglong_22)
	.word	0,(.L_divslonglong__divslonglong_23)
	.word	2
	.byte	120
	.sleb128	37
	.word	0,(.L_divslonglong__divslonglong_21)
	.word	0,(.L_divslonglong__divslonglong_22)
	.word	2
	.byte	120
	.sleb128	35
	.word	0,(.L_divslonglong__divslonglong_20)
	.word	0,(.L_divslonglong__divslonglong_21)
	.word	2
	.byte	120
	.sleb128	33
	.word	0,(.L_divslonglong__divslonglong_19)
	.word	0,(.L_divslonglong__divslonglong_20)
	.word	2
	.byte	120
	.sleb128	31
	.word	0,(.L_divslonglong__divslonglong_18)
	.word	0,(.L_divslonglong__divslonglong_19)
	.word	2
	.byte	120
	.sleb128	29
	.word	0,(.L_divslonglong__divslonglong_17)
	.word	0,(.L_divslonglong__divslonglong_18)
	.word	2
	.byte	120
	.sleb128	27
	.word	0,(.L_divslonglong__divslonglong_16)
	.word	0,(.L_divslonglong__divslonglong_17)
	.word	2
	.byte	120
	.sleb128	25
	.word	0,(.L_divslonglong__divslonglong_15)
	.word	0,(.L_divslonglong__divslonglong_16)
	.word	2
	.byte	120
	.sleb128	23
	.word	0,(.L_divslonglong__divslonglong_14)
	.word	0,(.L_divslonglong__divslonglong_15)
	.word	2
	.byte	120
	.sleb128	21
	.word	0,(.L_divslonglong__divslonglong_12)
	.word	0,(.L_divslonglong__divslonglong_14)
	.word	2
	.byte	120
	.sleb128	20
	.word	0,(.L_divslonglong__divslonglong_11)
	.word	0,(.L_divslonglong__divslonglong_12)
	.word	2
	.byte	120
	.sleb128	21
	.word	0,(.L_divslonglong__divslonglong_8)
	.word	0,(.L_divslonglong__divslonglong_11)
	.word	2
	.byte	120
	.sleb128	20
	.word	0,(.L_divslonglong__divslonglong_7)
	.word	0,(.L_divslonglong__divslonglong_8)
	.word	2
	.byte	120
	.sleb128	21
	.word	0,(.L_divslonglong__divslonglong_2)
	.word	0,(.L_divslonglong__divslonglong_7)
	.word	2
	.byte	120
	.sleb128	20
	.word	0,(.L_divslonglong__divslonglong_1)
	.word	0,(.L_divslonglong__divslonglong_2)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
	.uleb128	4
	.uleb128	5
	.byte	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	52
	.byte	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	46
	.byte	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	36
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.section .debug_info, ""
	.word	0,.Ldebug_info_end-.Ldebug_info_start
.Ldebug_info_start:
	.word	2
	.word	0,(.Ldebug_abbrev)
	.byte	4
	.uleb128	1
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslonglong.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.ascii "long long"
	.byte	0
	.byte	8
	.byte	5
	.uleb128	3
	.word	0,244
	.ascii "_divslonglong"
	.byte	0
	.word	0,(__divslonglong)
	.word	0,(.L_divslonglong__divslonglongendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,103
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "numerator"
	.byte	0
	.word	0,103
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	10
	.ascii "denominator"
	.byte	0
	.word	0,103
	.uleb128	5
	.byte	2
	.byte	145
	.sleb128	-1
	.ascii "numeratorneg"
	.byte	0
	.word	0,244
	.uleb128	5
	.byte	1
	.byte	80
	.ascii "denominatorneg"
	.byte	0
	.word	0,244
	.uleb128	5
	.byte	2
	.byte	145
	.sleb128	-17
	.ascii "d"
	.byte	0
	.word	0,103
	.uleb128	0
	.uleb128	2
	.ascii "_Bool"
	.byte	0
	.byte	1
	.byte	2
	.uleb128	0
	.uleb128	0
	.uleb128	0
.Ldebug_info_end:

	.section .debug_pubnames, ""
	.word	0,.Ldebug_pubnames_end-.Ldebug_pubnames_start
.Ldebug_pubnames_start:
	.word	2
	.word	0,(.Ldebug_info_start-4)
	.word	0,4+.Ldebug_info_end-.Ldebug_info_start
	.word	0,116
	.ascii "_divslonglong"
	.byte	0
	.word	0,0
.Ldebug_pubnames_end:

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE0_end-.Ldebug_CIE0_start
.Ldebug_CIE0_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	2
	.byte	137
	.uleb128	1
.Ldebug_CIE0_end:
	.word	0,145
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.L_divslonglong__divslonglong_1)	;initial loc
	.word	0,.L_divslonglong__divslonglong_30-.L_divslonglong__divslonglong_1
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_2)
	.byte	14
	.uleb128	21
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_7)
	.byte	14
	.uleb128	22
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_8)
	.byte	14
	.uleb128	21
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_11)
	.byte	14
	.uleb128	22
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_12)
	.byte	14
	.uleb128	21
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_14)
	.byte	14
	.uleb128	22
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_15)
	.byte	14
	.uleb128	24
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_16)
	.byte	14
	.uleb128	26
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_17)
	.byte	14
	.uleb128	28
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_18)
	.byte	14
	.uleb128	30
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_19)
	.byte	14
	.uleb128	32
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_20)
	.byte	14
	.uleb128	34
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_21)
	.byte	14
	.uleb128	36
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_22)
	.byte	14
	.uleb128	38
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_23)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_24)
	.byte	14
	.uleb128	22
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_25)
	.byte	14
	.uleb128	21
	.byte	1
	.word	0,(.L_divslonglong__divslonglong_28)
	.byte	14
	.uleb128	4
