;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_divulong"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __divulong
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
	.section	 .text.__divulong
	.L_divulong__divulong_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 331: _divulong (unsigned long x, unsigned long y)
; genLabel
;	-----------------------------------------
;	 function _divulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
__divulong:
	.L_divulong__divulong_1:
	sub	sp, #8
	.L_divulong__divulong_2:
	.L_divulong__divulong_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 333: unsigned long reste = 0L;
; genAssign
	clrw	x
	ldw	(0x07, sp), x
	clrw	y
	.L_divulong__divulong_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 334: unsigned char count = 32;
; genAssign
	ld	a, #0x20
	.L_divulong__divulong_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 337: do
; genLabel
00105$:
	.L_divulong__divulong_6:
	.L_divulong__divulong_7:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 340: c = MSB_SET(x);
; genGetABit
	push	a
	.L_divulong__divulong_8:
	ld	a, (0x0c, sp)
	sll	a
	clr	a
	rlc	a
	ld	(0x05, sp), a
	pop	a
	.L_divulong__divulong_9:
	.L_divulong__divulong_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 341: x <<= 1;
; genLeftShiftLiteral
	sll	(0x0e, sp)
	rlc	(0x0d, sp)
	rlc	(0x0c, sp)
	rlc	(0x0b, sp)
	.L_divulong__divulong_11:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 342: reste <<= 1;
; genLeftShiftLiteral
	sll	(0x08, sp)
	rlc	(0x07, sp)
	rlcw	y
	.L_divulong__divulong_12:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 343: if (c)
; genIfx
	tnz	(0x04, sp)
	jrne	00130$
	jp	00102$
00130$:
	.L_divulong__divulong_13:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 344: reste |= 1L;
; genOr
	push	a
	.L_divulong__divulong_14:
	ldw	x, (0x08, sp)
	srlw	x
	scf
	rlcw	x
	pop	a
	.L_divulong__divulong_15:
; genAssign
	ldw	(0x07, sp), x
; genLabel
00102$:
	.L_divulong__divulong_16:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 346: if (reste >= y)
; genCmp
; genCmpTop
	ldw	x, (0x07, sp)
	cpw	x, (0x11, sp)
	push	a
	.L_divulong__divulong_17:
	ld	a, yl
	sbc	a, (0x11, sp)
	ld	a, yh
	sbc	a, (0x10, sp)
	pop	a
	.L_divulong__divulong_18:
	jrnc	00131$
	jp	00106$
00131$:
; skipping generated iCode
	.L_divulong__divulong_19:
	.L_divulong__divulong_20:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 348: reste -= y;
; genMinus
	ldw	x, (0x07, sp)
	subw	x, (0x11, sp)
	push	a
	.L_divulong__divulong_21:
	ld	a, yl
	sbc	a, (0x11, sp)
	ld	yl, a
	ld	a, yh
	sbc	a, (0x10, sp)
	ld	yh, a
	pop	a
	.L_divulong__divulong_22:
; genAssign
	ldw	(0x07, sp), x
	.L_divulong__divulong_23:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 350: x |= 1L;
; genOr
	push	a
	.L_divulong__divulong_24:
	ld	a, (0x0f, sp)
	or	a, #0x01
	ld	(0x05, sp), a
	ld	a, (0x0e, sp)
	ld	(0x04, sp), a
	ld	a, (0x0d, sp)
	ld	(0x03, sp), a
	ld	a, (0x0c, sp)
	ld	(0x02, sp), a
	pop	a
	.L_divulong__divulong_25:
; genAssign
	ldw	x, (0x03, sp)
	ldw	(0x0d, sp), x
	ldw	x, (0x01, sp)
	ldw	(0x0b, sp), x
	.L_divulong__divulong_26:
; genLabel
00106$:
	.L_divulong__divulong_27:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 353: while (--count);
; genMinus
	dec	a
	ld	xl, a
; genAssign
	ld	a, xl
; genIfx
	exg	a, xl
	tnz	a
	exg	a, xl
	jreq	00132$
	jp	00105$
00132$:
	.L_divulong__divulong_28:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 354: return x;
; genReturn
	ldw	x, (0x0d, sp)
	ldw	y, (0x0b, sp)
; genLabel
00108$:
	.L_divulong__divulong_29:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c: 355: }
; genEndFunction
	addw	sp, #8
	.L_divulong__divulong_30:
	.L_divulong__divulong_31:
	.L_divulong__divulongendf:
	ret
	.L_divulong__divulong_32:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_divulong__divulong_0)
	.byte	3
	.sleb128	330
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_3-.L_divulong__divulong_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_4-.L_divulong__divulong_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_5-.L_divulong__divulong_4
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_7-.L_divulong__divulong_5
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_10-.L_divulong__divulong_7
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_11-.L_divulong__divulong_10
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_12-.L_divulong__divulong_11
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_13-.L_divulong__divulong_12
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_16-.L_divulong__divulong_13
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_20-.L_divulong__divulong_16
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_23-.L_divulong__divulong_20
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_27-.L_divulong__divulong_23
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_28-.L_divulong__divulong_27
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divulong__divulong_29-.L_divulong__divulong_28
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_divulong__divulong_31-.L_divulong__divulong_29
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_divulong__divulong_30)
	.word	0,(.L_divulong__divulong_32)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.L_divulong__divulong_25)
	.word	0,(.L_divulong__divulong_30)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.L_divulong__divulong_24)
	.word	0,(.L_divulong__divulong_25)
	.word	2
	.byte	120
	.sleb128	10
	.word	0,(.L_divulong__divulong_22)
	.word	0,(.L_divulong__divulong_24)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.L_divulong__divulong_21)
	.word	0,(.L_divulong__divulong_22)
	.word	2
	.byte	120
	.sleb128	10
	.word	0,(.L_divulong__divulong_18)
	.word	0,(.L_divulong__divulong_21)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.L_divulong__divulong_17)
	.word	0,(.L_divulong__divulong_18)
	.word	2
	.byte	120
	.sleb128	10
	.word	0,(.L_divulong__divulong_15)
	.word	0,(.L_divulong__divulong_17)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.L_divulong__divulong_14)
	.word	0,(.L_divulong__divulong_15)
	.word	2
	.byte	120
	.sleb128	10
	.word	0,(.L_divulong__divulong_9)
	.word	0,(.L_divulong__divulong_14)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.L_divulong__divulong_8)
	.word	0,(.L_divulong__divulong_9)
	.word	2
	.byte	120
	.sleb128	10
	.word	0,(.L_divulong__divulong_2)
	.word	0,(.L_divulong__divulong_8)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.L_divulong__divulong_1)
	.word	0,(.L_divulong__divulong_2)
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divulong.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.ascii "unsigned long"
	.byte	0
	.byte	4
	.byte	7
	.uleb128	3
	.word	0,237
	.ascii "_divulong"
	.byte	0
	.word	0,(__divulong)
	.word	0,(.L_divulong__divulongendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,99
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "x"
	.byte	0
	.word	0,99
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	6
	.ascii "y"
	.byte	0
	.word	0,99
	.uleb128	5
	.word	0,187
	.word	0,(.L_divulong__divulong_6)
	.uleb128	6
	.word	0,(.L_divulong__divulong_19)
	.word	0,(.L_divulong__divulong_26)
	.uleb128	0
	.uleb128	7
	.byte	14
	.byte	84
	.byte	147
	.uleb128	1
	.byte	83
	.byte	147
	.uleb128	1
	.byte	145
	.sleb128	-2
	.byte	147
	.uleb128	1
	.byte	145
	.sleb128	-1
	.byte	147
	.uleb128	1
	.ascii "reste"
	.byte	0
	.word	0,99
	.uleb128	7
	.byte	1
	.byte	80
	.ascii "count"
	.byte	0
	.word	0,237
	.uleb128	7
	.byte	2
	.byte	145
	.sleb128	-5
	.ascii "c"
	.byte	0
	.word	0,254
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
	.word	0,116
	.ascii "_divulong"
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
	.word	0,103
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.L_divulong__divulong_1)	;initial loc
	.word	0,.L_divulong__divulong_32-.L_divulong__divulong_1
	.byte	1
	.word	0,(.L_divulong__divulong_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_divulong__divulong_2)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.L_divulong__divulong_8)
	.byte	14
	.uleb128	11
	.byte	1
	.word	0,(.L_divulong__divulong_9)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.L_divulong__divulong_14)
	.byte	14
	.uleb128	11
	.byte	1
	.word	0,(.L_divulong__divulong_15)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.L_divulong__divulong_17)
	.byte	14
	.uleb128	11
	.byte	1
	.word	0,(.L_divulong__divulong_18)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.L_divulong__divulong_21)
	.byte	14
	.uleb128	11
	.byte	1
	.word	0,(.L_divulong__divulong_22)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.L_divulong__divulong_24)
	.byte	14
	.uleb128	11
	.byte	1
	.word	0,(.L_divulong__divulong_25)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.L_divulong__divulong_30)
	.byte	14
	.uleb128	2
