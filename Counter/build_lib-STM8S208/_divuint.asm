;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_divuint"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __divuint
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
	.section	 .text.__divuint
	.L_divuint__divuint_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 155: _divuint (unsigned int x, unsigned int y)
; genLabel
;	-----------------------------------------
;	 function _divuint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
__divuint:
	.L_divuint__divuint_1:
	push	a
	.L_divuint__divuint_2:
	.L_divuint__divuint_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 157: unsigned int reste = 0;
; genAssign
	clrw	x
	.L_divuint__divuint_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 158: unsigned char count = 16;
; genAssign
	ld	a, #0x10
	ld	(0x01, sp), a
	.L_divuint__divuint_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 161: do
; genLabel
00105$:
	.L_divuint__divuint_6:
	.L_divuint__divuint_7:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 164: c = MSB_SET(x);
; genGetABit
	ld	a, (0x04, sp)
	sll	a
	clr	a
	rlc	a
	.L_divuint__divuint_8:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 165: x <<= 1;
; genLeftShiftLiteral
	sll	(0x05, sp)
	rlc	(0x04, sp)
	.L_divuint__divuint_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 166: reste <<= 1;
; genLeftShiftLiteral
	sllw	x
	.L_divuint__divuint_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 167: if (c)
; genIfx
	tnz	a
	jrne	00130$
	jp	00102$
00130$:
	.L_divuint__divuint_11:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 168: reste |= 1;
; genOr
	srlw	x
	scf
	rlcw	x
; genAssign
; genLabel
00102$:
	.L_divuint__divuint_12:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 170: if (reste >= y)
; genCmp
; genCmpTop
	cpw	x, (0x06, sp)
	jrnc	00131$
	jp	00106$
00131$:
; skipping generated iCode
	.L_divuint__divuint_13:
	.L_divuint__divuint_14:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 172: reste -= y;
; genMinus
	subw	x, (0x06, sp)
; genAssign
	.L_divuint__divuint_15:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 174: x |= 1;
; genOr
	ld	a, (0x05, sp)
	or	a, #0x01
	ld	yl, a
	ld	a, (0x04, sp)
	ld	yh, a
; genAssign
	ldw	(0x04, sp), y
	.L_divuint__divuint_16:
; genLabel
00106$:
	.L_divuint__divuint_17:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 177: while (--count);
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
	.L_divuint__divuint_18:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 178: return x;
; genReturn
	ldw	x, (0x04, sp)
; genLabel
00108$:
	.L_divuint__divuint_19:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c: 179: }
; genEndFunction
	pop	a
	.L_divuint__divuint_20:
	.L_divuint__divuint_21:
	.L_divuint__divuintendf:
	ret
	.L_divuint__divuint_22:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_divuint__divuint_0)
	.byte	3
	.sleb128	154
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_3-.L_divuint__divuint_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_4-.L_divuint__divuint_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_5-.L_divuint__divuint_4
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_7-.L_divuint__divuint_5
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_8-.L_divuint__divuint_7
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_9-.L_divuint__divuint_8
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_10-.L_divuint__divuint_9
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_11-.L_divuint__divuint_10
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_12-.L_divuint__divuint_11
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_14-.L_divuint__divuint_12
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_15-.L_divuint__divuint_14
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_17-.L_divuint__divuint_15
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_18-.L_divuint__divuint_17
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divuint__divuint_19-.L_divuint__divuint_18
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_divuint__divuint_21-.L_divuint__divuint_19
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_divuint__divuint_20)
	.word	0,(.L_divuint__divuint_22)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.L_divuint__divuint_2)
	.word	0,(.L_divuint__divuint_20)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.L_divuint__divuint_1)
	.word	0,(.L_divuint__divuint_2)
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuint.c"
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
	.word	0,226
	.ascii "_divuint"
	.byte	0
	.word	0,(__divuint)
	.word	0,(.L_divuint__divuintendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,98
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "x"
	.byte	0
	.word	0,98
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	4
	.ascii "y"
	.byte	0
	.word	0,98
	.uleb128	5
	.word	0,184
	.word	0,(.L_divuint__divuint_6)
	.uleb128	6
	.word	0,(.L_divuint__divuint_13)
	.word	0,(.L_divuint__divuint_16)
	.uleb128	0
	.uleb128	7
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "reste"
	.byte	0
	.word	0,98
	.uleb128	7
	.byte	2
	.byte	145
	.sleb128	-1
	.ascii "count"
	.byte	0
	.word	0,226
	.uleb128	7
	.byte	1
	.byte	80
	.ascii "c"
	.byte	0
	.word	0,243
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
	.word	0,114
	.ascii "_divuint"
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
	.word	0,(.L_divuint__divuint_1)	;initial loc
	.word	0,.L_divuint__divuint_22-.L_divuint__divuint_1
	.byte	1
	.word	0,(.L_divuint__divuint_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_divuint__divuint_2)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.L_divuint__divuint_20)
	.byte	14
	.uleb128	2
