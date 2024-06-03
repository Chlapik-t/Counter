;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_mullonglong"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __mullonglong
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
	.section	 .text.__mullonglong
	.L_mullonglong__mullonglong_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c: 35: long long _mullonglong(long long ll, long long lr)
; genLabel
;	-----------------------------------------
;	 function _mullonglong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 27 bytes.
__mullonglong:
	.L_mullonglong__mullonglong_1:
	sub	sp, #27
	.L_mullonglong__mullonglong_2:
	.L_mullonglong__mullonglong_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c: 37: unsigned long long ret = 0ull;
; genAssign
	clrw	x
	ldw	(0x07, sp), x
	ldw	(0x05, sp), x
	ldw	(0x03, sp), x
	ldw	(0x01, sp), x
	.L_mullonglong__mullonglong_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c: 40: for (i = 0; i < sizeof (long long); i++)
; genAssign
	clr	(0x1a, sp)
; genLabel
00106$:
	.L_mullonglong__mullonglong_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c: 42: unsigned char l = ll >> (i * 8);
; genLeftShiftLiteral
	ld	a, (0x1a, sp)
	sll	a
	sll	a
	sll	a
	ld	(0x1b, sp), a
; genRightShift
	ldw	y, (0x24, sp)
	ldw	(0x16, sp), y
	ldw	y, (0x22, sp)
	ldw	(0x14, sp), y
	ldw	y, (0x20, sp)
	ldw	(0x12, sp), y
	ldw	x, (0x26, sp)
	ld	a, (0x1b, sp)
	jreq	00133$
00132$:
	sra	(0x12, sp)
	rrc	(0x13, sp)
	rrc	(0x14, sp)
	rrc	(0x15, sp)
	rrc	(0x16, sp)
	rrc	(0x17, sp)
	rrcw	x
	dec	a
	jrne	00132$
00133$:
	ldw	(0x18, sp), x
; genCast
; genAssign
	ld	a, (0x19, sp)
	ld	(0x11, sp), a
	.L_mullonglong__mullonglong_6:
	.L_mullonglong__mullonglong_7:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c: 43: for(j = 0; (i + j) < sizeof (long long); j++)
; genAssign
	clr	(0x1b, sp)
; genLabel
00104$:
; genCast
; genAssign
	clrw	x
	ld	a, (0x1a, sp)
	ld	xl, a
; genCast
; genAssign
	ld	a, (0x1b, sp)
	ld	(0x19, sp), a
	clr	(0x18, sp)
; genPlus
	addw	x, (0x18, sp)
; genCmp
; genCmpTop
	cpw	x, #0x0008
	jrslt	00134$
	jp	00107$
00134$:
; skipping generated iCode
	.L_mullonglong__mullonglong_8:
	.L_mullonglong__mullonglong_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c: 45: unsigned char r = lr >> (j * 8);
; genLeftShiftLiteral
	ld	a, (0x1b, sp)
	sll	a
	sll	a
	sll	a
	ld	(0x19, sp), a
; genRightShift
	ldw	y, (0x2c, sp)
	ldw	(0x16, sp), y
	ldw	y, (0x2a, sp)
	ldw	(0x14, sp), y
	ldw	y, (0x28, sp)
	ldw	(0x12, sp), y
	ldw	x, (0x2e, sp)
	ld	a, (0x19, sp)
	jreq	00136$
00135$:
	sra	(0x12, sp)
	rrc	(0x13, sp)
	rrc	(0x14, sp)
	rrc	(0x15, sp)
	rrc	(0x16, sp)
	rrc	(0x17, sp)
	rrcw	x
	dec	a
	jrne	00135$
00136$:
	ldw	(0x18, sp), x
; genCast
; genAssign
	ld	a, (0x19, sp)
	ld	xl, a
	.L_mullonglong__mullonglong_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c: 46: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
; genMult
	ld	a, (0x11, sp)
	mul	x, a
; genCast
; genAssign
; genCast
; genAssign
	ldw	(0x0f, sp), x
	clr	(0x0e, sp)
	clr	(0x0d, sp)
	clr	(0x0c, sp)
	clr	(0x0b, sp)
	clr	(0x0a, sp)
	clr	(0x09, sp)
; genPlus
	ld	a, (0x1a, sp)
	add	a, (0x1b, sp)
; genLeftShiftLiteral
	sll	a
	sll	a
	sll	a
	ld	(0x19, sp), a
; genLeftShift
	ldw	y, (0x0d, sp)
	ldw	(0x16, sp), y
	ldw	y, (0x0b, sp)
	ldw	(0x14, sp), y
	ldw	y, (0x09, sp)
	ldw	(0x12, sp), y
	ldw	x, (0x0f, sp)
	ld	a, (0x19, sp)
	jreq	00138$
00137$:
	sllw	x
	rlc	(0x17, sp)
	rlc	(0x16, sp)
	rlc	(0x15, sp)
	rlc	(0x14, sp)
	rlc	(0x13, sp)
	rlc	(0x12, sp)
	dec	a
	jrne	00137$
00138$:
	ldw	(0x18, sp), x
; genPlus
	ldw	x, (0x07, sp)
	addw	x, (0x18, sp)
	ldw	(0x0f, sp), x
	ld	a, (0x06, sp)
	adc	a, (0x17, sp)
	ld	(0x0e, sp), a
	ld	a, (0x05, sp)
	adc	a, (0x16, sp)
	ld	(0x0d, sp), a
	ld	a, (0x04, sp)
	adc	a, (0x15, sp)
	ld	(0x0c, sp), a
	ld	a, (0x03, sp)
	adc	a, (0x14, sp)
	ldw	y, (0x01, sp)
	jrnc	00139$
	incw	y
00139$:
	addw	y, (0x12, sp)
; genAssign
	ld	(0x03, sp), a
	ldw	(0x01, sp), y
	ldw	y, (0x0f, sp)
	ldw	(0x07, sp), y
	ldw	y, (0x0d, sp)
	ldw	(0x05, sp), y
	ld	a, (0x0c, sp)
	ld	(0x04, sp), a
	.L_mullonglong__mullonglong_11:
	.L_mullonglong__mullonglong_12:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c: 43: for(j = 0; (i + j) < sizeof (long long); j++)
; genPlus
	inc	(0x1b, sp)
; genGoto
	jp	00104$
; genLabel
00107$:
	.L_mullonglong__mullonglong_13:
	.L_mullonglong__mullonglong_14:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c: 40: for (i = 0; i < sizeof (long long); i++)
; genPlus
	inc	(0x1a, sp)
; genCmp
; genCmpTop
	ld	a, (0x1a, sp)
	cp	a, #0x08
	jrnc	00140$
	jp	00106$
00140$:
; skipping generated iCode
	.L_mullonglong__mullonglong_15:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c: 50: return(ret);
; genReturn
	ldw	x, (0x1e, sp)
	ldw	y, (0x07, sp)
	ldw	(6, x), y
	ldw	y, (0x05, sp)
	ldw	(4, x), y
	ldw	y, (0x03, sp)
	ldw	(2, x), y
	ldw	y, (0x01, sp)
	ldw	(x), y
; genLabel
00108$:
	.L_mullonglong__mullonglong_16:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c: 51: }
; genEndFunction
	addw	sp, #27
	.L_mullonglong__mullonglong_17:
	.L_mullonglong__mullonglong_18:
	.L_mullonglong__mullonglongendf:
	ret
	.L_mullonglong__mullonglong_19:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_mullonglong__mullonglong_0)
	.byte	3
	.sleb128	34
	.byte	1
	.byte	9
	.word	.L_mullonglong__mullonglong_3-.L_mullonglong__mullonglong_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_mullonglong__mullonglong_4-.L_mullonglong__mullonglong_3
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.L_mullonglong__mullonglong_5-.L_mullonglong__mullonglong_4
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_mullonglong__mullonglong_7-.L_mullonglong__mullonglong_5
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_mullonglong__mullonglong_9-.L_mullonglong__mullonglong_7
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_mullonglong__mullonglong_10-.L_mullonglong__mullonglong_9
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_mullonglong__mullonglong_12-.L_mullonglong__mullonglong_10
	.byte	3
	.sleb128	-3
	.byte	1
	.byte	9
	.word	.L_mullonglong__mullonglong_14-.L_mullonglong__mullonglong_12
	.byte	3
	.sleb128	-3
	.byte	1
	.byte	9
	.word	.L_mullonglong__mullonglong_15-.L_mullonglong__mullonglong_14
	.byte	3
	.sleb128	10
	.byte	1
	.byte	9
	.word	.L_mullonglong__mullonglong_16-.L_mullonglong__mullonglong_15
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_mullonglong__mullonglong_18-.L_mullonglong__mullonglong_16
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_mullonglong__mullonglong_17)
	.word	0,(.L_mullonglong__mullonglong_19)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.L_mullonglong__mullonglong_2)
	.word	0,(.L_mullonglong__mullonglong_17)
	.word	2
	.byte	120
	.sleb128	30
	.word	0,(.L_mullonglong__mullonglong_1)
	.word	0,(.L_mullonglong__mullonglong_2)
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
	.byte	1
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mullonglong.c"
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
	.word	0,248
	.ascii "_mullonglong"
	.byte	0
	.word	0,(__mullonglong)
	.word	0,(.L_mullonglong__mullonglongendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,102
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "ll"
	.byte	0
	.word	0,102
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	10
	.ascii "lr"
	.byte	0
	.word	0,102
	.uleb128	5
	.word	0,205
	.word	0,(.L_mullonglong__mullonglong_6)
	.word	0,(.L_mullonglong__mullonglong_13)
	.uleb128	6
	.word	0,(.L_mullonglong__mullonglong_8)
	.word	0,(.L_mullonglong__mullonglong_11)
	.uleb128	7
	.byte	1
	.byte	81
	.ascii "r"
	.byte	0
	.word	0,270
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.byte	2
	.byte	145
	.sleb128	-27
	.ascii "ret"
	.byte	0
	.word	0,248
	.uleb128	7
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "i"
	.byte	0
	.word	0,270
	.uleb128	7
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "j"
	.byte	0
	.word	0,270
	.uleb128	7
	.byte	2
	.byte	145
	.sleb128	-11
	.ascii "l"
	.byte	0
	.word	0,270
	.uleb128	0
	.uleb128	2
	.ascii "unsigned long long"
	.byte	0
	.byte	8
	.byte	7
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
	.word	0,115
	.ascii "_mullonglong"
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
	.word	0,(.L_mullonglong__mullonglong_1)	;initial loc
	.word	0,.L_mullonglong__mullonglong_19-.L_mullonglong__mullonglong_1
	.byte	1
	.word	0,(.L_mullonglong__mullonglong_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_mullonglong__mullonglong_2)
	.byte	14
	.uleb128	31
	.byte	1
	.word	0,(.L_mullonglong__mullonglong_17)
	.byte	14
	.uleb128	4
