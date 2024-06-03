;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_mullong"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __mullong
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
	.section	 .text.__mullong
	.L_mullong__mullong_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 734: _mullong (long a, long b)
; genLabel
;	-----------------------------------------
;	 function _mullong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 16 bytes.
__mullong:
	.L_mullong__mullong_1:
	sub	sp, #16
	.L_mullong__mullong_2:
	.L_mullong__mullong_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 738: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
; genAddrOf
	ldw	y, sp
	addw	y, #5
; genAddrOf
	ldw	x, sp
	addw	x, #19
	ldw	(0x09, sp), x
; genCast
; genAssign
	ldw	x, (0x09, sp)
; genAssign
; genPointerGet
	ld	a, (0x3, x)
; genAddrOf
	ldw	x, sp
	addw	x, #23
	ldw	(0x0b, sp), x
; genCast
; genAssign
	ldw	x, (0x0b, sp)
; genAssign
; genPointerGet
	push	a
	.L_mullong__mullong_4:
	ld	a, (0x1, x)
	ld	xl, a
	pop	a
	.L_mullong__mullong_5:
; genMult
	mul	x, a
; genPointerSet
	ldw	(y), x
	.L_mullong__mullong_6:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 739: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
; genPlus
	addw	y, #0x0002
; genAssign
	ldw	x, (0x09, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	ld	a, (0x3, x)
; genAssign
	ldw	x, (0x0b, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	push	a
	.L_mullong__mullong_7:
	ld	a, (0x3, x)
	ld	xl, a
	pop	a
	.L_mullong__mullong_8:
; genMult
	mul	x, a
; genPointerSet
	ldw	(y), x
	.L_mullong__mullong_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 740: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x05, sp)
	ld	(0x10, sp), a
; genAssign
	ldw	x, (0x09, sp)
; genCast
; genAssign
; genPointerGet
	ld	a, (x)
	ld	xl, a
; genAssign
	ldw	y, (0x0b, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	ld	a, (0x3, y)
; genMult
	mul	x, a
	ld	a, xl
; genPlus
	add	a, (0x10, sp)
	ld	(0x10, sp), a
; genPointerSet
	ld	a, (0x10, sp)
	ld	(0x05, sp), a
	.L_mullong__mullong_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 741: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
; genPointerGet
; Dummy read
	ld	a, (0x05, sp)
; genAssign
	ldw	x, (0x09, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	ld	a, (0x1, x)
	ld	xl, a
; genAssign
	ldw	y, (0x0b, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	ld	a, (0x2, y)
; genMult
	mul	x, a
	ld	a, xl
; genPlus
	add	a, (0x10, sp)
; genPointerSet
	ld	(0x05, sp), a
	.L_mullong__mullong_11:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 742: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	y, (0x05, sp)
	ldw	(0x0d, sp), y
; genAssign
	ldw	x, (0x09, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	ld	a, (0x1, x)
	ld	xl, a
; genAssign
	ldw	y, (0x0b, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	ld	a, (0x3, y)
; genMult
	mul	x, a
; genCast
; genAssign
; genPlus
	addw	x, (0x0d, sp)
	ldw	(0x0f, sp), x
; genPointerSet
	ldw	y, (0x0f, sp)
	ldw	(0x05, sp), y
	.L_mullong__mullong_12:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 744: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
; genPointerGet
; Dummy read
	ld	a, (0x06, sp)
	ld	a, (0x05, sp)
; genAssign
	ldw	x, (0x09, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	ld	a, (0x2, x)
	ld	xl, a
; genAssign
	ldw	y, (0x0b, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	ld	a, (0x2, y)
; genMult
	mul	x, a
; genCast
; genAssign
; genPlus
	addw	x, (0x0f, sp)
; genPointerSet
	ldw	(0x05, sp), x
	.L_mullong__mullong_13:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 746: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
; genAssign
	ldw	y, (0x09, sp)
; genCast
; genAssign
; genAssign
	ldw	x, (0x09, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	ld	a, (0x2, x)
; genAssign
	ldw	x, (0x0b, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	push	a
	.L_mullong__mullong_14:
	ld	a, (0x1, x)
	ld	xl, a
	pop	a
	.L_mullong__mullong_15:
; genMult
	mul	x, a
	ld	a, xl
; genPointerSet
	ld	(y), a
	.L_mullong__mullong_16:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 747: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
; genAssign
	ldw	y, (0x09, sp)
; genCast
; genAssign
; genPlus
	incw	y
; genAssign
	ldw	x, (0x09, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	ld	a, (0x2, x)
; genAssign
	ldw	x, (0x0b, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	push	a
	.L_mullong__mullong_17:
	ld	a, (0x3, x)
	ld	xl, a
	pop	a
	.L_mullong__mullong_18:
; genMult
	mul	x, a
; genPointerSet
	ldw	(y), x
	.L_mullong__mullong_19:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 749: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
; genAssign
	ldw	y, (0x0b, sp)
; genCast
; genAssign
; genAssign
	ldw	x, (0x09, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	ld	a, (0x3, x)
; genAssign
	ldw	x, (0x0b, sp)
; genCast
; genAssign
; genPointerGet
	push	a
	.L_mullong__mullong_20:
	ld	a, (x)
	ld	xl, a
	pop	a
	.L_mullong__mullong_21:
; genMult
	mul	x, a
	ld	a, xl
; genPointerSet
	ld	(y), a
	.L_mullong__mullong_22:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 750: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
; genAssign
	ldw	y, (0x0b, sp)
; genCast
; genAssign
; genPlus
	incw	y
; genAssign
	ldw	x, (0x09, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	ld	a, (0x3, x)
; genAssign
	ldw	x, (0x0b, sp)
; genCast
; genAssign
; genAssign
; genPointerGet
	push	a
	.L_mullong__mullong_23:
	ld	a, (0x2, x)
	ld	xl, a
	pop	a
	.L_mullong__mullong_24:
; genMult
	mul	x, a
; genPointerSet
	ldw	(y), x
	.L_mullong__mullong_25:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 752: bcast(b)->bi.b0 = 0;                                // B
; genAssign
	ldw	x, (0x0b, sp)
; genCast
; genAssign
; genPlus
	addw	x, #0x0003
; genPointerSet
	clr	(x)
	.L_mullong__mullong_26:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 753: bcast(a)->bi.b0 = 0;                                // C
; genAssign
	ldw	x, (0x09, sp)
; genCast
; genAssign
; genPlus
	addw	x, #0x0003
; genPointerSet
	clr	(x)
	.L_mullong__mullong_27:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 754: t.l += a;
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	y, (0x07, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x05, sp)
	ldw	(0x01, sp), y
; genCast
; genAssign
	ldw	x, (0x15, sp)
	ldw	(0x0b, sp), x
	ldw	x, (0x13, sp)
; genPlus
	ldw	y, (0x0b, sp)
	addw	y, (0x03, sp)
	ldw	(0x0f, sp), y
	ld	a, xl
	adc	a, (0x02, sp)
	ld	(0x0e, sp), a
	ld	a, xh
	adc	a, (0x01, sp)
	ld	(0x0d, sp), a
; genPointerSet
	ldw	x, (0x0f, sp)
	ldw	(0x07, sp), x
	ldw	x, (0x0d, sp)
	ldw	(0x05, sp), x
	.L_mullong__mullong_28:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 756: return t.l + b;
; genPointerGet
; Dummy read
	ld	a, (0x08, sp)
	ld	a, (0x07, sp)
	ld	a, (0x06, sp)
	ld	a, (0x05, sp)
; genCast
; genAssign
	ldw	x, (0x19, sp)
	ldw	(0x0b, sp), x
	ldw	x, (0x17, sp)
; genPlus
	ldw	y, (0x0b, sp)
	addw	y, (0x0f, sp)
	ld	a, xl
	adc	a, (0x0e, sp)
	ld	xl, a
	ld	a, xh
	adc	a, (0x0d, sp)
	ld	xh, a
; genReturn
	exgw	x, y
; genLabel
00101$:
	.L_mullong__mullong_29:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c: 757: }
; genEndFunction
	addw	sp, #16
	.L_mullong__mullong_30:
	.L_mullong__mullong_31:
	.L_mullong__mullongendf:
	ret
	.L_mullong__mullong_32:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_mullong__mullong_0)
	.byte	3
	.sleb128	733
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_3-.L_mullong__mullong_0
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_6-.L_mullong__mullong_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_9-.L_mullong__mullong_6
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_10-.L_mullong__mullong_9
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_11-.L_mullong__mullong_10
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_12-.L_mullong__mullong_11
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_13-.L_mullong__mullong_12
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_16-.L_mullong__mullong_13
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_19-.L_mullong__mullong_16
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_22-.L_mullong__mullong_19
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_25-.L_mullong__mullong_22
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_26-.L_mullong__mullong_25
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_27-.L_mullong__mullong_26
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_28-.L_mullong__mullong_27
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_mullong__mullong_29-.L_mullong__mullong_28
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_mullong__mullong_31-.L_mullong__mullong_29
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_mullong__mullong_30)
	.word	0,(.L_mullong__mullong_32)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.L_mullong__mullong_24)
	.word	0,(.L_mullong__mullong_30)
	.word	2
	.byte	120
	.sleb128	17
	.word	0,(.L_mullong__mullong_23)
	.word	0,(.L_mullong__mullong_24)
	.word	2
	.byte	120
	.sleb128	18
	.word	0,(.L_mullong__mullong_21)
	.word	0,(.L_mullong__mullong_23)
	.word	2
	.byte	120
	.sleb128	17
	.word	0,(.L_mullong__mullong_20)
	.word	0,(.L_mullong__mullong_21)
	.word	2
	.byte	120
	.sleb128	18
	.word	0,(.L_mullong__mullong_18)
	.word	0,(.L_mullong__mullong_20)
	.word	2
	.byte	120
	.sleb128	17
	.word	0,(.L_mullong__mullong_17)
	.word	0,(.L_mullong__mullong_18)
	.word	2
	.byte	120
	.sleb128	18
	.word	0,(.L_mullong__mullong_15)
	.word	0,(.L_mullong__mullong_17)
	.word	2
	.byte	120
	.sleb128	17
	.word	0,(.L_mullong__mullong_14)
	.word	0,(.L_mullong__mullong_15)
	.word	2
	.byte	120
	.sleb128	18
	.word	0,(.L_mullong__mullong_8)
	.word	0,(.L_mullong__mullong_14)
	.word	2
	.byte	120
	.sleb128	17
	.word	0,(.L_mullong__mullong_7)
	.word	0,(.L_mullong__mullong_8)
	.word	2
	.byte	120
	.sleb128	18
	.word	0,(.L_mullong__mullong_5)
	.word	0,(.L_mullong__mullong_7)
	.word	2
	.byte	120
	.sleb128	17
	.word	0,(.L_mullong__mullong_4)
	.word	0,(.L_mullong__mullong_5)
	.word	2
	.byte	120
	.sleb128	18
	.word	0,(.L_mullong__mullong_2)
	.word	0,(.L_mullong__mullong_4)
	.word	2
	.byte	120
	.sleb128	17
	.word	0,(.L_mullong__mullong_1)
	.word	0,(.L_mullong__mullong_2)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
	.uleb128	8
	.uleb128	53
	.byte	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
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
	.uleb128	9
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
	.uleb128	7
	.uleb128	13
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	56
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	19
	.byte	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
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
	.uleb128	5
	.uleb128	23
	.byte	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	11
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullong.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.ascii "long"
	.byte	0
	.byte	4
	.byte	5
	.uleb128	3
	.word	0,379
	.ascii "_mullong"
	.byte	0
	.word	0,(__mullong)
	.word	0,(.L_mullong__mullongendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,98
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "a"
	.byte	0
	.word	0,98
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	6
	.ascii "b"
	.byte	0
	.word	0,98
	.uleb128	5
	.word	0,368
	.ascii "bil"
	.byte	0
	.byte	4
	.uleb128	6
	.word	0,229
	.ascii "__00000000"
	.byte	0
	.byte	4
	.uleb128	7
	.ascii "b3"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,379
	.uleb128	7
	.ascii "b2"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	1
	.word	0,379
	.uleb128	7
	.ascii "b1"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	2
	.word	0,379
	.uleb128	7
	.ascii "b0"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	3
	.word	0,379
	.uleb128	0
	.uleb128	7
	.ascii "b"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,167
	.uleb128	6
	.word	0,279
	.ascii "__00000001"
	.byte	0
	.byte	4
	.uleb128	7
	.ascii "hi"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,396
	.uleb128	7
	.ascii "lo"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	2
	.word	0,396
	.uleb128	0
	.uleb128	7
	.ascii "i"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,239
	.uleb128	8
	.word	0,412
	.uleb128	7
	.ascii "l"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,289
	.uleb128	6
	.word	0,356
	.ascii "__00000002"
	.byte	0
	.byte	4
	.uleb128	7
	.ascii "b3"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,379
	.uleb128	7
	.ascii "i12"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	1
	.word	0,396
	.uleb128	7
	.ascii "b0"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	3
	.word	0,379
	.uleb128	0
	.uleb128	7
	.ascii "bi"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,304
	.uleb128	0
	.uleb128	9
	.byte	2
	.byte	145
	.sleb128	-12
	.ascii "t"
	.byte	0
	.word	0,157
	.uleb128	0
	.uleb128	2
	.ascii "unsigned char"
	.byte	0
	.byte	1
	.byte	8
	.uleb128	2
	.ascii "unsigned int"
	.byte	0
	.byte	2
	.byte	7
	.uleb128	2
	.ascii "unsigned long"
	.byte	0
	.byte	4
	.byte	7
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
	.word	0,106
	.ascii "_mullong"
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
	.word	0,(.L_mullong__mullong_1)	;initial loc
	.word	0,.L_mullong__mullong_32-.L_mullong__mullong_1
	.byte	1
	.word	0,(.L_mullong__mullong_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_mullong__mullong_2)
	.byte	14
	.uleb128	18
	.byte	1
	.word	0,(.L_mullong__mullong_4)
	.byte	14
	.uleb128	19
	.byte	1
	.word	0,(.L_mullong__mullong_5)
	.byte	14
	.uleb128	18
	.byte	1
	.word	0,(.L_mullong__mullong_7)
	.byte	14
	.uleb128	19
	.byte	1
	.word	0,(.L_mullong__mullong_8)
	.byte	14
	.uleb128	18
	.byte	1
	.word	0,(.L_mullong__mullong_14)
	.byte	14
	.uleb128	19
	.byte	1
	.word	0,(.L_mullong__mullong_15)
	.byte	14
	.uleb128	18
	.byte	1
	.word	0,(.L_mullong__mullong_17)
	.byte	14
	.uleb128	19
	.byte	1
	.word	0,(.L_mullong__mullong_18)
	.byte	14
	.uleb128	18
	.byte	1
	.word	0,(.L_mullong__mullong_20)
	.byte	14
	.uleb128	19
	.byte	1
	.word	0,(.L_mullong__mullong_21)
	.byte	14
	.uleb128	18
	.byte	1
	.word	0,(.L_mullong__mullong_23)
	.byte	14
	.uleb128	19
	.byte	1
	.word	0,(.L_mullong__mullong_24)
	.byte	14
	.uleb128	18
	.byte	1
	.word	0,(.L_mullong__mullong_30)
	.byte	14
	.uleb128	2
