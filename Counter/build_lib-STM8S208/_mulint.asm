;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_mulint"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __mulint
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
	.section	 .text.__mulint
	.L_mulint__mulint_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mulint.c: 226: _mulint (int a, int b)
; genLabel
;	-----------------------------------------
;	 function _mulint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 5 bytes.
__mulint:
	.L_mulint__mulint_1:
	sub	sp, #5
	.L_mulint__mulint_2:
	.L_mulint__mulint_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mulint.c: 238: x = (union uu *)&a;
; genAddrOf
	ldw	x, sp
	addw	x, #8
; genCast
; genAssign
; genAssign
	ldw	(0x03, sp), x
	.L_mulint__mulint_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mulint.c: 239: y = (union uu *)&b;
; genAddrOf
	ldw	x, sp
	addw	x, #10
; genCast
; genAssign
; genAssign
	.L_mulint__mulint_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mulint.c: 243: t.t = (unsigned char)a * (unsigned char)b;
; skipping iCode since result will be rematerialized
; genCast
; genAssign
	ld	a, (0x09, sp)
	ld	yl, a
; genCast
; genAssign
	ld	a, (0x0b, sp)
; genMult
	mul	y, a
; genPointerSet
	ldw	(0x01, sp), y
	.L_mulint__mulint_6:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mulint.c: 244: t.s.hi += ((unsigned char)a * y->s.hi) + (x->s.hi * (unsigned char)b);
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x01, sp)
	ld	(0x05, sp), a
; genCast
; genAssign
	ld	a, (0x09, sp)
	ld	yl, a
; genPointerGet
	ld	a, (x)
; genMult
	mul	y, a
; genPointerGet
	ldw	x, (0x03, sp)
	ld	a, (x)
	ld	xl, a
; genCast
; genAssign
	ld	a, (0x0b, sp)
; genMult
	mul	x, a
; genPlus
	ld	a, yl
	pushw	x
	.L_mulint__mulint_7:
	add	a, (2, sp)
	popw	x
	.L_mulint__mulint_8:
; genPlus
	add	a, (0x05, sp)
; genPointerSet
	ld	(0x01, sp), a
	.L_mulint__mulint_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mulint.c: 246: return t.t;
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, (0x01, sp)
; genReturn
; genLabel
00101$:
	.L_mulint__mulint_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mulint.c: 247: }
; genEndFunction
	addw	sp, #5
	.L_mulint__mulint_11:
	.L_mulint__mulint_12:
	.L_mulint__mulintendf:
	ret
	.L_mulint__mulint_13:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mulint.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_mulint__mulint_0)
	.byte	3
	.sleb128	225
	.byte	1
	.byte	9
	.word	.L_mulint__mulint_3-.L_mulint__mulint_0
	.byte	3
	.sleb128	12
	.byte	1
	.byte	9
	.word	.L_mulint__mulint_4-.L_mulint__mulint_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_mulint__mulint_5-.L_mulint__mulint_4
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.L_mulint__mulint_6-.L_mulint__mulint_5
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_mulint__mulint_9-.L_mulint__mulint_6
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_mulint__mulint_10-.L_mulint__mulint_9
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_mulint__mulint_12-.L_mulint__mulint_10
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_mulint__mulint_11)
	.word	0,(.L_mulint__mulint_13)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.L_mulint__mulint_8)
	.word	0,(.L_mulint__mulint_11)
	.word	2
	.byte	120
	.sleb128	6
	.word	0,(.L_mulint__mulint_7)
	.word	0,(.L_mulint__mulint_8)
	.word	2
	.byte	120
	.sleb128	8
	.word	0,(.L_mulint__mulint_2)
	.word	0,(.L_mulint__mulint_7)
	.word	2
	.byte	120
	.sleb128	6
	.word	0,(.L_mulint__mulint_1)
	.word	0,(.L_mulint__mulint_2)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
	.uleb128	9
	.uleb128	15
	.byte	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
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
	.uleb128	10
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_mulint.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.ascii "int"
	.byte	0
	.byte	2
	.byte	5
	.uleb128	3
	.word	0,270
	.ascii "_mulint"
	.byte	0
	.word	0,(__mulint)
	.word	0,(.L_mulint__mulintendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,97
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "a"
	.byte	0
	.word	0,97
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	4
	.ascii "b"
	.byte	0
	.word	0,97
	.uleb128	5
	.word	0,229
	.ascii "uu"
	.byte	0
	.byte	2
	.uleb128	6
	.word	0,203
	.ascii "__00000000"
	.byte	0
	.byte	2
	.uleb128	7
	.ascii "hi"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,270
	.uleb128	7
	.ascii "lo"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	1
	.word	0,270
	.uleb128	0
	.uleb128	7
	.ascii "s"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,163
	.uleb128	8
	.word	0,287
	.uleb128	7
	.ascii "t"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,213
	.uleb128	0
	.uleb128	9
	.byte	2
	.word	0,154
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	-3
	.ascii "x"
	.byte	0
	.word	0,229
	.uleb128	10
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "y"
	.byte	0
	.word	0,229
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	-5
	.ascii "t"
	.byte	0
	.word	0,154
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
	.word	0,104
	.ascii "_mulint"
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
	.word	0,(.L_mulint__mulint_1)	;initial loc
	.word	0,.L_mulint__mulint_13-.L_mulint__mulint_1
	.byte	1
	.word	0,(.L_mulint__mulint_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_mulint__mulint_2)
	.byte	14
	.uleb128	7
	.byte	1
	.word	0,(.L_mulint__mulint_7)
	.byte	14
	.uleb128	9
	.byte	1
	.word	0,(.L_mulint__mulint_8)
	.byte	14
	.uleb128	7
	.byte	1
	.word	0,(.L_mulint__mulint_11)
	.byte	14
	.uleb128	2
