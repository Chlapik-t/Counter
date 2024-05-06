;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_modslonglong"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __modslonglong
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
	.section	 .text.__modslonglong
	.L_modslonglong__modslonglong_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modslonglong.c: 36: _modslonglong (long long numerator, long long denominator)
; genLabel
;	-----------------------------------------
;	 function _modslonglong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 17 bytes.
__modslonglong:
	.L_modslonglong__modslonglong_1:
	sub	sp, #17
	.L_modslonglong__modslonglong_2:
	.L_modslonglong__modslonglong_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modslonglong.c: 38: bool numeratorneg = (numerator < 0);
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
	.L_modslonglong__modslonglong_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modslonglong.c: 39: bool denominatorneg = (denominator < 0);
; genCmp
; genCmpTop
	tnz	(0x1e, sp)
	jrmi	00126$
	clr	a
	jp	00127$
00126$:
	ld	a, #0x01
00127$:
	.L_modslonglong__modslonglong_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modslonglong.c: 42: if (numeratorneg)
; genIfx
	tnz	(0x11, sp)
	jrne	00128$
	jp	00102$
00128$:
	.L_modslonglong__modslonglong_6:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modslonglong.c: 43: numerator = -numerator;
; genUminus
	push	a
	.L_modslonglong__modslonglong_7:
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
	.L_modslonglong__modslonglong_8:
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
	.L_modslonglong__modslonglong_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modslonglong.c: 44: if (denominatorneg)
; genIfx
	tnz	a
	jrne	00130$
	jp	00104$
00130$:
	.L_modslonglong__modslonglong_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modslonglong.c: 45: denominator = -denominator;
; genUminus
	ld	a, (0x25, sp)
	neg	a
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
	clr	a
	sbc	a, (0x20, sp)
	ldw	x, (0x1e, sp)
	jrnc	00131$
	incw	x
00131$:
	negw	x
; genAssign
	ld	(0x20, sp), a
	ldw	(0x1e, sp), x
	ldw	y, (0x0f, sp)
	ldw	(0x24, sp), y
	ldw	y, (0x0d, sp)
	ldw	(0x22, sp), y
	ld	a, (0x0c, sp)
	ld	(0x21, sp), a
; genLabel
00104$:
	.L_modslonglong__modslonglong_11:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modslonglong.c: 47: r = (unsigned long long)numerator % (unsigned long long)denominator;
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
	ldw	x, (0x24, sp)
	ldw	(0x0f, sp), x
	ldw	x, (0x22, sp)
	ldw	(0x0d, sp), x
	ldw	x, (0x20, sp)
	ldw	(0x0b, sp), x
	ldw	x, (0x1e, sp)
	ldw	(0x09, sp), x
; genIPush
	ldw	x, (0x0f, sp)
	pushw	x
	.L_modslonglong__modslonglong_12:
	ldw	x, (0x0f, sp)
	pushw	x
	.L_modslonglong__modslonglong_13:
	ldw	x, (0x0f, sp)
	pushw	x
	.L_modslonglong__modslonglong_14:
	ldw	x, (0x0f, sp)
	pushw	x
	.L_modslonglong__modslonglong_15:
; genIPush
	ldw	x, (0x0f, sp)
	pushw	x
	.L_modslonglong__modslonglong_16:
	ldw	x, (0x0f, sp)
	pushw	x
	.L_modslonglong__modslonglong_17:
	ldw	x, (0x0f, sp)
	pushw	x
	.L_modslonglong__modslonglong_18:
	ldw	x, (0x0f, sp)
	pushw	x
	.L_modslonglong__modslonglong_19:
; genCall
	ldw	x, sp
	addw	x, #25
	pushw	x
	.L_modslonglong__modslonglong_20:
	call	__modulonglong
	addw	sp, #18
	.L_modslonglong__modslonglong_21:
; genAssign
	ldw	y, (0x0f, sp)
	ldw	(0x07, sp), y
	ldw	y, (0x0d, sp)
	ldw	(0x05, sp), y
	ldw	y, (0x0b, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x09, sp)
	ldw	(0x01, sp), y
	.L_modslonglong__modslonglong_22:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modslonglong.c: 49: return (numeratorneg ? -r : r);
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
	.L_modslonglong__modslonglong_23:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modslonglong.c: 50: }
; genEndFunction
	addw	sp, #17
	.L_modslonglong__modslonglong_24:
	.L_modslonglong__modslonglong_25:
	.L_modslonglong__modslonglongendf:
	ret
	.L_modslonglong__modslonglong_26:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modslonglong.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_modslonglong__modslonglong_0)
	.byte	3
	.sleb128	35
	.byte	1
	.byte	9
	.word	.L_modslonglong__modslonglong_3-.L_modslonglong__modslonglong_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modslonglong__modslonglong_4-.L_modslonglong__modslonglong_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_modslonglong__modslonglong_5-.L_modslonglong__modslonglong_4
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.L_modslonglong__modslonglong_6-.L_modslonglong__modslonglong_5
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_modslonglong__modslonglong_9-.L_modslonglong__modslonglong_6
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_modslonglong__modslonglong_10-.L_modslonglong__modslonglong_9
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_modslonglong__modslonglong_11-.L_modslonglong__modslonglong_10
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modslonglong__modslonglong_22-.L_modslonglong__modslonglong_11
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modslonglong__modslonglong_23-.L_modslonglong__modslonglong_22
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_modslonglong__modslonglong_25-.L_modslonglong__modslonglong_23
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_modslonglong__modslonglong_24)
	.word	0,(.L_modslonglong__modslonglong_26)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.L_modslonglong__modslonglong_21)
	.word	0,(.L_modslonglong__modslonglong_24)
	.word	2
	.byte	120
	.sleb128	20
	.word	0,(.L_modslonglong__modslonglong_20)
	.word	0,(.L_modslonglong__modslonglong_21)
	.word	2
	.byte	120
	.sleb128	38
	.word	0,(.L_modslonglong__modslonglong_19)
	.word	0,(.L_modslonglong__modslonglong_20)
	.word	2
	.byte	120
	.sleb128	36
	.word	0,(.L_modslonglong__modslonglong_18)
	.word	0,(.L_modslonglong__modslonglong_19)
	.word	2
	.byte	120
	.sleb128	34
	.word	0,(.L_modslonglong__modslonglong_17)
	.word	0,(.L_modslonglong__modslonglong_18)
	.word	2
	.byte	120
	.sleb128	32
	.word	0,(.L_modslonglong__modslonglong_16)
	.word	0,(.L_modslonglong__modslonglong_17)
	.word	2
	.byte	120
	.sleb128	30
	.word	0,(.L_modslonglong__modslonglong_15)
	.word	0,(.L_modslonglong__modslonglong_16)
	.word	2
	.byte	120
	.sleb128	28
	.word	0,(.L_modslonglong__modslonglong_14)
	.word	0,(.L_modslonglong__modslonglong_15)
	.word	2
	.byte	120
	.sleb128	26
	.word	0,(.L_modslonglong__modslonglong_13)
	.word	0,(.L_modslonglong__modslonglong_14)
	.word	2
	.byte	120
	.sleb128	24
	.word	0,(.L_modslonglong__modslonglong_12)
	.word	0,(.L_modslonglong__modslonglong_13)
	.word	2
	.byte	120
	.sleb128	22
	.word	0,(.L_modslonglong__modslonglong_8)
	.word	0,(.L_modslonglong__modslonglong_12)
	.word	2
	.byte	120
	.sleb128	20
	.word	0,(.L_modslonglong__modslonglong_7)
	.word	0,(.L_modslonglong__modslonglong_8)
	.word	2
	.byte	120
	.sleb128	21
	.word	0,(.L_modslonglong__modslonglong_2)
	.word	0,(.L_modslonglong__modslonglong_7)
	.word	2
	.byte	120
	.sleb128	20
	.word	0,(.L_modslonglong__modslonglong_1)
	.word	0,(.L_modslonglong__modslonglong_2)
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modslonglong.c"
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
	.ascii "_modslonglong"
	.byte	0
	.word	0,(__modslonglong)
	.word	0,(.L_modslonglong__modslonglongendf+1)
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
	.ascii "r"
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
	.ascii "_modslonglong"
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
	.word	0,117
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.L_modslonglong__modslonglong_1)	;initial loc
	.word	0,.L_modslonglong__modslonglong_26-.L_modslonglong__modslonglong_1
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_2)
	.byte	14
	.uleb128	21
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_7)
	.byte	14
	.uleb128	22
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_8)
	.byte	14
	.uleb128	21
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_12)
	.byte	14
	.uleb128	23
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_13)
	.byte	14
	.uleb128	25
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_14)
	.byte	14
	.uleb128	27
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_15)
	.byte	14
	.uleb128	29
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_16)
	.byte	14
	.uleb128	31
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_17)
	.byte	14
	.uleb128	33
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_18)
	.byte	14
	.uleb128	35
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_19)
	.byte	14
	.uleb128	37
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_20)
	.byte	14
	.uleb128	39
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_21)
	.byte	14
	.uleb128	21
	.byte	1
	.word	0,(.L_modslonglong__modslonglong_24)
	.byte	14
	.uleb128	4
