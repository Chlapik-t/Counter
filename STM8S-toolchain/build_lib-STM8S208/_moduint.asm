;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_moduint"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __moduint
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
	.section	 .text.__moduint
	.L_moduint__moduint_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 173: _moduint (unsigned int a, unsigned int b)
; genLabel
;	-----------------------------------------
;	 function _moduint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
__moduint:
	.L_moduint__moduint_1:
	push	a
	.L_moduint__moduint_2:
	.L_moduint__moduint_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 175: unsigned char count = 0;
; genAssign
	clr	a
	.L_moduint__moduint_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 177: while (!MSB_SET(b))
; genAssign
	ld	(0x01, sp), a
; genLabel
00103$:
; genGetABit
	tnz	(0x06, sp)
	jrpl	00144$
	jp	00117$
00144$:
; skipping generated iCode
	.L_moduint__moduint_5:
	.L_moduint__moduint_6:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 179: b <<= 1;
; genLeftShiftLiteral
	sll	(0x07, sp)
	rlc	(0x06, sp)
	.L_moduint__moduint_7:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 180: if (b > a)
; genCmp
; genCmpTop
	ldw	x, (0x06, sp)
	cpw	x, (0x04, sp)
	jrugt	00145$
	jp	00102$
00145$:
; skipping generated iCode
	.L_moduint__moduint_8:
	.L_moduint__moduint_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 182: b >>=1;
; genRightShiftLiteral
	srl	(0x06, sp)
	rrc	(0x07, sp)
	.L_moduint__moduint_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 183: break;
; genGoto
	jp	00117$
	.L_moduint__moduint_11:
; genLabel
00102$:
	.L_moduint__moduint_12:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 185: count++;
; genPlus
	inc	(0x01, sp)
; genAssign
	ld	a, (0x01, sp)
	.L_moduint__moduint_13:
; genGoto
	jp	00103$
	.L_moduint__moduint_14:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 187: do
; genLabel
00117$:
; genAssign
; genLabel
00108$:
	.L_moduint__moduint_15:
	.L_moduint__moduint_16:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 189: if (a >= b)
; genCmp
; genCmpTop
	ldw	x, (0x04, sp)
	cpw	x, (0x06, sp)
	jrnc	00146$
	jp	00107$
00146$:
; skipping generated iCode
	.L_moduint__moduint_17:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 190: a -= b;
; genMinus
	ldw	x, (0x04, sp)
	subw	x, (0x06, sp)
; genAssign
	ldw	(0x04, sp), x
; genLabel
00107$:
	.L_moduint__moduint_18:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 191: b >>= 1;
; genRightShiftLiteral
	srl	(0x06, sp)
	rrc	(0x07, sp)
	.L_moduint__moduint_19:
	.L_moduint__moduint_20:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 193: while (count--);
; genAssign
	ld	(0x01, sp), a
; genMinus
	dec	a
; genIfx
	tnz	(0x01, sp)
	jreq	00147$
	jp	00108$
00147$:
	.L_moduint__moduint_21:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 194: return a;
; genReturn
	ldw	x, (0x04, sp)
; genLabel
00111$:
	.L_moduint__moduint_22:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c: 195: }
; genEndFunction
	pop	a
	.L_moduint__moduint_23:
	.L_moduint__moduint_24:
	.L_moduint__moduintendf:
	ret
	.L_moduint__moduint_25:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_moduint__moduint_0)
	.byte	3
	.sleb128	172
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_3-.L_moduint__moduint_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_4-.L_moduint__moduint_3
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_6-.L_moduint__moduint_4
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_7-.L_moduint__moduint_6
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_9-.L_moduint__moduint_7
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_10-.L_moduint__moduint_9
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_12-.L_moduint__moduint_10
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_14-.L_moduint__moduint_12
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_16-.L_moduint__moduint_14
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_17-.L_moduint__moduint_16
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_18-.L_moduint__moduint_17
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_20-.L_moduint__moduint_18
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_21-.L_moduint__moduint_20
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_moduint__moduint_22-.L_moduint__moduint_21
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_moduint__moduint_24-.L_moduint__moduint_22
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_moduint__moduint_23)
	.word	0,(.L_moduint__moduint_25)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.L_moduint__moduint_2)
	.word	0,(.L_moduint__moduint_23)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.L_moduint__moduint_1)
	.word	0,(.L_moduint__moduint_2)
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_moduint.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.ascii "unsigned int"
	.byte	0
	.byte	2
	.byte	7
	.uleb128	3
	.word	0,211
	.ascii "_moduint"
	.byte	0
	.word	0,(__moduint)
	.word	0,(.L_moduint__moduintendf+1)
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
	.sleb128	4
	.ascii "b"
	.byte	0
	.word	0,98
	.uleb128	5
	.word	0,188
	.word	0,(.L_moduint__moduint_5)
	.word	0,(.L_moduint__moduint_13)
	.uleb128	6
	.word	0,(.L_moduint__moduint_8)
	.word	0,(.L_moduint__moduint_11)
	.uleb128	0
	.uleb128	6
	.word	0,(.L_moduint__moduint_15)
	.word	0,(.L_moduint__moduint_19)
	.uleb128	7
	.byte	1
	.byte	80
	.ascii "count"
	.byte	0
	.word	0,211
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
	.word	0,114
	.ascii "_moduint"
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
	.word	0,(.L_moduint__moduint_1)	;initial loc
	.word	0,.L_moduint__moduint_25-.L_moduint__moduint_1
	.byte	1
	.word	0,(.L_moduint__moduint_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_moduint__moduint_2)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.L_moduint__moduint_23)
	.byte	14
	.uleb128	2
