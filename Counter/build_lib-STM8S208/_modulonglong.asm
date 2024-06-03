;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_modulonglong"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __modulonglong
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
	.section	 .text.__modulonglong
	.L_modulonglong__modulonglong_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 38: _modulonglong (unsigned long long a, unsigned long long b)
; genLabel
;	-----------------------------------------
;	 function _modulonglong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 9 bytes.
__modulonglong:
	.L_modulonglong__modulonglong_1:
	sub	sp, #9
	.L_modulonglong__modulonglong_2:
	.L_modulonglong__modulonglong_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 40: unsigned char count = 0;
; genAssign
	clr	a
	.L_modulonglong__modulonglong_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 42: while (!MSB_SET(b))
; genAssign
	ld	(0x09, sp), a
; genLabel
00103$:
; genGetABit
	tnz	(0x16, sp)
	jrpl	00144$
	jp	00117$
00144$:
; skipping generated iCode
	.L_modulonglong__modulonglong_5:
	.L_modulonglong__modulonglong_6:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 44: b <<= 1;
; genLeftShiftLiteral
	sll	(0x1d, sp)
	rlc	(0x1c, sp)
	rlc	(0x1b, sp)
	rlc	(0x1a, sp)
	rlc	(0x19, sp)
	rlc	(0x18, sp)
	rlc	(0x17, sp)
	rlc	(0x16, sp)
	.L_modulonglong__modulonglong_7:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 45: if (b > a)
; genCmp
; genCmpTop
	ldw	x, (0x14, sp)
	cpw	x, (0x1c, sp)
	push	a
	.L_modulonglong__modulonglong_8:
	ld	a, (0x14, sp)
	sbc	a, (0x1c, sp)
	ld	a, (0x13, sp)
	sbc	a, (0x1b, sp)
	ld	a, (0x12, sp)
	sbc	a, (0x1a, sp)
	ld	a, (0x11, sp)
	sbc	a, (0x19, sp)
	ld	a, (0x10, sp)
	sbc	a, (0x18, sp)
	ld	a, (0x0f, sp)
	sbc	a, (0x17, sp)
	pop	a
	.L_modulonglong__modulonglong_9:
	jrc	00145$
	jp	00102$
00145$:
; skipping generated iCode
	.L_modulonglong__modulonglong_10:
	.L_modulonglong__modulonglong_11:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 47: b >>=1;
; genRightShiftLiteral
	srl	(0x16, sp)
	rrc	(0x17, sp)
	rrc	(0x18, sp)
	rrc	(0x19, sp)
	rrc	(0x1a, sp)
	rrc	(0x1b, sp)
	rrc	(0x1c, sp)
	rrc	(0x1d, sp)
	.L_modulonglong__modulonglong_12:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 48: break;
; genGoto
	jp	00117$
	.L_modulonglong__modulonglong_13:
; genLabel
00102$:
	.L_modulonglong__modulonglong_14:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 50: count++;
; genPlus
	inc	(0x09, sp)
; genAssign
	ld	a, (0x09, sp)
	.L_modulonglong__modulonglong_15:
; genGoto
	jp	00103$
	.L_modulonglong__modulonglong_16:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 52: do
; genLabel
00117$:
; genAssign
	ld	(0x09, sp), a
; genLabel
00108$:
	.L_modulonglong__modulonglong_17:
	.L_modulonglong__modulonglong_18:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 54: if (a >= b)
; genCmp
; genCmpTop
	ldw	x, (0x14, sp)
	cpw	x, (0x1c, sp)
	ld	a, (0x13, sp)
	sbc	a, (0x1b, sp)
	ld	a, (0x12, sp)
	sbc	a, (0x1a, sp)
	ld	a, (0x11, sp)
	sbc	a, (0x19, sp)
	ld	a, (0x10, sp)
	sbc	a, (0x18, sp)
	ld	a, (0x0f, sp)
	sbc	a, (0x17, sp)
	ld	a, (0x0e, sp)
	sbc	a, (0x16, sp)
	jrnc	00146$
	jp	00107$
00146$:
; skipping generated iCode
	.L_modulonglong__modulonglong_19:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 55: a -= b;
; genMinus
	ldw	x, (0x14, sp)
	subw	x, (0x1c, sp)
	ldw	(0x07, sp), x
	ld	a, (0x13, sp)
	sbc	a, (0x1b, sp)
	ld	(0x06, sp), a
	ld	a, (0x12, sp)
	sbc	a, (0x1a, sp)
	ld	(0x05, sp), a
	ld	a, (0x11, sp)
	sbc	a, (0x19, sp)
	ld	(0x04, sp), a
	ld	a, (0x10, sp)
	sbc	a, (0x18, sp)
	ld	(0x03, sp), a
	ld	a, (0x0f, sp)
	sbc	a, (0x17, sp)
	ld	(0x02, sp), a
	ld	a, (0x0e, sp)
	sbc	a, (0x16, sp)
	ld	(0x01, sp), a
; genAssign
	ldw	y, (0x07, sp)
	ldw	(0x14, sp), y
	ldw	y, (0x05, sp)
	ldw	(0x12, sp), y
	ldw	y, (0x03, sp)
	ldw	(0x10, sp), y
	ldw	y, (0x01, sp)
	ldw	(0x0e, sp), y
; genLabel
00107$:
	.L_modulonglong__modulonglong_20:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 56: b >>= 1;
; genRightShiftLiteral
	srl	(0x16, sp)
	rrc	(0x17, sp)
	rrc	(0x18, sp)
	rrc	(0x19, sp)
	rrc	(0x1a, sp)
	rrc	(0x1b, sp)
	rrc	(0x1c, sp)
	rrc	(0x1d, sp)
	.L_modulonglong__modulonglong_21:
	.L_modulonglong__modulonglong_22:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 58: while (count--);
; genAssign
	ld	a, (0x09, sp)
; genMinus
	dec	(0x09, sp)
; genIfx
	tnz	a
	jreq	00147$
	jp	00108$
00147$:
	.L_modulonglong__modulonglong_23:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 60: return a;
; genReturn
	ldw	x, (0x0c, sp)
	ldw	y, (0x14, sp)
	ldw	(6, x), y
	ldw	y, (0x12, sp)
	ldw	(4, x), y
	ldw	y, (0x10, sp)
	ldw	(2, x), y
	ldw	y, (0x0e, sp)
	ldw	(x), y
; genLabel
00111$:
	.L_modulonglong__modulonglong_24:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c: 61: }
; genEndFunction
	addw	sp, #9
	.L_modulonglong__modulonglong_25:
	.L_modulonglong__modulonglong_26:
	.L_modulonglong__modulonglongendf:
	ret
	.L_modulonglong__modulonglong_27:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_modulonglong__modulonglong_0)
	.byte	3
	.sleb128	37
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_3-.L_modulonglong__modulonglong_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_4-.L_modulonglong__modulonglong_3
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_6-.L_modulonglong__modulonglong_4
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_7-.L_modulonglong__modulonglong_6
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_11-.L_modulonglong__modulonglong_7
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_12-.L_modulonglong__modulonglong_11
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_14-.L_modulonglong__modulonglong_12
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_16-.L_modulonglong__modulonglong_14
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_18-.L_modulonglong__modulonglong_16
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_19-.L_modulonglong__modulonglong_18
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_20-.L_modulonglong__modulonglong_19
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_22-.L_modulonglong__modulonglong_20
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_23-.L_modulonglong__modulonglong_22
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulonglong__modulonglong_24-.L_modulonglong__modulonglong_23
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_modulonglong__modulonglong_26-.L_modulonglong__modulonglong_24
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_modulonglong__modulonglong_25)
	.word	0,(.L_modulonglong__modulonglong_27)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.L_modulonglong__modulonglong_9)
	.word	0,(.L_modulonglong__modulonglong_25)
	.word	2
	.byte	120
	.sleb128	12
	.word	0,(.L_modulonglong__modulonglong_8)
	.word	0,(.L_modulonglong__modulonglong_9)
	.word	2
	.byte	120
	.sleb128	13
	.word	0,(.L_modulonglong__modulonglong_2)
	.word	0,(.L_modulonglong__modulonglong_8)
	.word	2
	.byte	120
	.sleb128	12
	.word	0,(.L_modulonglong__modulonglong_1)
	.word	0,(.L_modulonglong__modulonglong_2)
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
	.uleb128	18
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulonglong.c"
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
	.word	0,227
	.ascii "_modulonglong"
	.byte	0
	.word	0,(__modulonglong)
	.word	0,(.L_modulonglong__modulonglongendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,103
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "a"
	.byte	0
	.word	0,103
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	10
	.ascii "b"
	.byte	0
	.word	0,103
	.uleb128	5
	.word	0,204
	.word	0,(.L_modulonglong__modulonglong_5)
	.word	0,(.L_modulonglong__modulonglong_15)
	.uleb128	6
	.word	0,(.L_modulonglong__modulonglong_10)
	.word	0,(.L_modulonglong__modulonglong_13)
	.uleb128	0
	.uleb128	6
	.word	0,(.L_modulonglong__modulonglong_17)
	.word	0,(.L_modulonglong__modulonglong_21)
	.uleb128	7
	.byte	1
	.byte	80
	.ascii "count"
	.byte	0
	.word	0,227
	.uleb128	0
	.uleb128	2
	.ascii "unsigned char"
	.byte	0
	.byte	1
	.byte	8
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
	.ascii "_modulonglong"
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
	.word	0,47
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.L_modulonglong__modulonglong_1)	;initial loc
	.word	0,.L_modulonglong__modulonglong_27-.L_modulonglong__modulonglong_1
	.byte	1
	.word	0,(.L_modulonglong__modulonglong_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_modulonglong__modulonglong_2)
	.byte	14
	.uleb128	13
	.byte	1
	.word	0,(.L_modulonglong__modulonglong_8)
	.byte	14
	.uleb128	14
	.byte	1
	.word	0,(.L_modulonglong__modulonglong_9)
	.byte	14
	.uleb128	13
	.byte	1
	.word	0,(.L_modulonglong__modulonglong_25)
	.byte	14
	.uleb128	4
