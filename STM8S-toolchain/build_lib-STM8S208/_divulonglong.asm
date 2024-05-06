;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_divulonglong"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __divulonglong
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
	.section	 .text.__divulonglong
	.L_divulonglong__divulonglong_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 39: _divulonglong (unsigned long long x, unsigned long long y)
; genLabel
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 17 bytes.
__divulonglong:
	.L_divulonglong__divulonglong_1:
	sub	sp, #17
	.L_divulonglong__divulonglong_2:
	.L_divulonglong__divulonglong_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 41: unsigned long long reste = 0L;
; genAssign
	clrw	x
	ldw	(0x10, sp), x
	ldw	(0x0e, sp), x
	ldw	(0x0c, sp), x
	ldw	(0x0a, sp), x
	.L_divulonglong__divulonglong_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 42: unsigned char count = 64;
; genAssign
	ld	a, #0x40
	ld	(0x01, sp), a
	.L_divulonglong__divulonglong_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 45: do
; genLabel
00105$:
	.L_divulonglong__divulonglong_6:
	.L_divulonglong__divulonglong_7:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 48: c = MSB_SET(x);
; genGetABit
	ld	a, (0x16, sp)
	sll	a
	clr	a
	rlc	a
	.L_divulonglong__divulonglong_8:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 49: x <<= 1;
; genLeftShiftLiteral
	sll	(0x1d, sp)
	rlc	(0x1c, sp)
	rlc	(0x1b, sp)
	rlc	(0x1a, sp)
	rlc	(0x19, sp)
	rlc	(0x18, sp)
	rlc	(0x17, sp)
	rlc	(0x16, sp)
	.L_divulonglong__divulonglong_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 50: reste <<= 1;
; genLeftShiftLiteral
	sll	(0x11, sp)
	rlc	(0x10, sp)
	rlc	(0x0f, sp)
	rlc	(0x0e, sp)
	rlc	(0x0d, sp)
	rlc	(0x0c, sp)
	rlc	(0x0b, sp)
	rlc	(0x0a, sp)
	.L_divulonglong__divulonglong_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 51: if (c)
; genIfx
	tnz	a
	jrne	00130$
	jp	00102$
00130$:
	.L_divulonglong__divulonglong_11:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 52: reste |= 1L;
; genOr
	ld	a, (0x11, sp)
	or	a, #0x01
	ld	(0x09, sp), a
	ld	a, (0x10, sp)
	ld	(0x08, sp), a
	ld	a, (0x0f, sp)
	ld	(0x07, sp), a
	ld	a, (0x0e, sp)
	exg	a, xl
	ld	a, (0x0d, sp)
	exg	a, xl
	rlwa	x
	ld	a, (0x0c, sp)
	rrwa	x
	exg	a, yl
	ld	a, (0x0b, sp)
	exg	a, yl
	rlwa	y
	ld	a, (0x0a, sp)
	rrwa	y
; genAssign
	ld	(0x0e, sp), a
	ldw	(0x0c, sp), x
	ldw	(0x0a, sp), y
	ldw	y, (0x08, sp)
	ldw	(0x10, sp), y
	ld	a, (0x07, sp)
	ld	(0x0f, sp), a
; genLabel
00102$:
	.L_divulonglong__divulonglong_12:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 54: if (reste >= y)
; genCmp
; genCmpTop
	ldw	x, (0x10, sp)
	cpw	x, (0x24, sp)
	ld	a, (0x0f, sp)
	sbc	a, (0x23, sp)
	ld	a, (0x0e, sp)
	sbc	a, (0x22, sp)
	ld	a, (0x0d, sp)
	sbc	a, (0x21, sp)
	ld	a, (0x0c, sp)
	sbc	a, (0x20, sp)
	ld	a, (0x0b, sp)
	sbc	a, (0x1f, sp)
	ld	a, (0x0a, sp)
	sbc	a, (0x1e, sp)
	jrnc	00131$
	jp	00106$
00131$:
; skipping generated iCode
	.L_divulonglong__divulonglong_13:
	.L_divulonglong__divulonglong_14:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 56: reste -= y;
; genMinus
	ldw	x, (0x10, sp)
	subw	x, (0x24, sp)
	ldw	(0x08, sp), x
	ld	a, (0x0f, sp)
	sbc	a, (0x23, sp)
	ld	(0x07, sp), a
	ld	a, (0x0e, sp)
	sbc	a, (0x22, sp)
	ld	(0x06, sp), a
	ld	a, (0x0d, sp)
	sbc	a, (0x21, sp)
	ld	(0x05, sp), a
	ld	a, (0x0c, sp)
	sbc	a, (0x20, sp)
	ld	(0x04, sp), a
	ld	a, (0x0b, sp)
	sbc	a, (0x1f, sp)
	ld	xl, a
	ld	a, (0x0a, sp)
	sbc	a, (0x1e, sp)
	ld	xh, a
; genAssign
	ldw	(0x0a, sp), x
	ldw	y, (0x08, sp)
	ldw	(0x10, sp), y
	ldw	y, (0x06, sp)
	ldw	(0x0e, sp), y
	ldw	y, (0x04, sp)
	ldw	(0x0c, sp), y
	.L_divulonglong__divulonglong_15:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 58: x |= 1L;
; genOr
	ld	a, (0x1d, sp)
	or	a, #0x01
	ld	(0x09, sp), a
	ld	a, (0x1c, sp)
	ld	(0x08, sp), a
	ld	a, (0x1b, sp)
	ld	(0x07, sp), a
	ld	a, (0x1a, sp)
	ld	(0x06, sp), a
	ld	a, (0x19, sp)
	ld	(0x05, sp), a
	ld	a, (0x18, sp)
	ld	(0x04, sp), a
	ld	a, (0x17, sp)
	ld	(0x03, sp), a
	ld	a, (0x16, sp)
	ld	(0x02, sp), a
; genAssign
	ldw	y, (0x08, sp)
	ldw	(0x1c, sp), y
	ldw	y, (0x06, sp)
	ldw	(0x1a, sp), y
	ldw	y, (0x04, sp)
	ldw	(0x18, sp), y
	ldw	y, (0x02, sp)
	ldw	(0x16, sp), y
	.L_divulonglong__divulonglong_16:
; genLabel
00106$:
	.L_divulonglong__divulonglong_17:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 61: while (--count);
; genMinus
	ld	a, (0x01, sp)
	dec	a
; genAssign
	ld	(0x01, sp), a
; genIfx
	tnz	a
	jreq	00132$
	jp	00105$
00132$:
	.L_divulonglong__divulonglong_18:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 62: return x;
; genReturn
	ldw	x, (0x14, sp)
	ldw	y, (0x1c, sp)
	ldw	(6, x), y
	ldw	y, (0x1a, sp)
	ldw	(4, x), y
	ldw	y, (0x18, sp)
	ldw	(2, x), y
	ldw	y, (0x16, sp)
	ldw	(x), y
; genLabel
00108$:
	.L_divulonglong__divulonglong_19:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c: 63: }
; genEndFunction
	addw	sp, #17
	.L_divulonglong__divulonglong_20:
	.L_divulonglong__divulonglong_21:
	.L_divulonglong__divulonglongendf:
	ret
	.L_divulonglong__divulonglong_22:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_divulonglong__divulonglong_0)
	.byte	3
	.sleb128	38
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_3-.L_divulonglong__divulonglong_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_4-.L_divulonglong__divulonglong_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_5-.L_divulonglong__divulonglong_4
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_7-.L_divulonglong__divulonglong_5
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_8-.L_divulonglong__divulonglong_7
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_9-.L_divulonglong__divulonglong_8
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_10-.L_divulonglong__divulonglong_9
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_11-.L_divulonglong__divulonglong_10
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_12-.L_divulonglong__divulonglong_11
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_14-.L_divulonglong__divulonglong_12
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_15-.L_divulonglong__divulonglong_14
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_17-.L_divulonglong__divulonglong_15
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_18-.L_divulonglong__divulonglong_17
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divulonglong__divulonglong_19-.L_divulonglong__divulonglong_18
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_divulonglong__divulonglong_21-.L_divulonglong__divulonglong_19
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_divulonglong__divulonglong_20)
	.word	0,(.L_divulonglong__divulonglong_22)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.L_divulonglong__divulonglong_2)
	.word	0,(.L_divulonglong__divulonglong_20)
	.word	2
	.byte	120
	.sleb128	20
	.word	0,(.L_divulonglong__divulonglong_1)
	.word	0,(.L_divulonglong__divulonglong_2)
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
	.uleb128	7
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
	.uleb128	6
	.uleb128	11
	.byte	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	11
	.byte	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulonglong.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.ascii "unsigned long long"
	.byte	0
	.byte	8
	.byte	7
	.uleb128	3
	.word	0,238
	.ascii "_divulonglong"
	.byte	0
	.word	0,(__divulonglong)
	.word	0,(.L_divulonglong__divulonglongendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,103
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "x"
	.byte	0
	.word	0,103
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	10
	.ascii "y"
	.byte	0
	.word	0,103
	.uleb128	5
	.word	0,200
	.word	0,(.L_divulonglong__divulonglong_6)
	.uleb128	6
	.word	0,(.L_divulonglong__divulonglong_13)
	.word	0,(.L_divulonglong__divulonglong_16)
	.uleb128	0
	.uleb128	7
	.byte	2
	.byte	145
	.sleb128	-8
	.ascii "reste"
	.byte	0
	.word	0,103
	.uleb128	7
	.byte	2
	.byte	145
	.sleb128	-17
	.ascii "count"
	.byte	0
	.word	0,238
	.uleb128	7
	.byte	1
	.byte	80
	.ascii "c"
	.byte	0
	.word	0,255
	.uleb128	0
	.uleb128	2
	.ascii "unsigned char"
	.byte	0
	.byte	1
	.byte	8
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
	.word	0,125
	.ascii "_divulonglong"
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
	.word	0,33
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.L_divulonglong__divulonglong_1)	;initial loc
	.word	0,.L_divulonglong__divulonglong_22-.L_divulonglong__divulonglong_1
	.byte	1
	.word	0,(.L_divulonglong__divulonglong_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_divulonglong__divulonglong_2)
	.byte	14
	.uleb128	21
	.byte	1
	.word	0,(.L_divulonglong__divulonglong_20)
	.byte	14
	.uleb128	4
