;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_divschar"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __divschar
	.global __divuschar
	.global __divsuchar
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
	.section	 .text.__divschar
	.L_divschar__divschar_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divschar.c: 31: _divschar (signed char x, signed char y)
; genLabel
;	-----------------------------------------
;	 function _divschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divschar:
	.L_divschar__divschar_1:
	.L_divschar__divschar_2:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divschar.c: 33: return ((int)x / (int)y);
; genCast
	ld	a, (0x03, sp)
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
; genCast
	ld	a, (0x04, sp)
	ld	yl, a
	ld	a, yl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	yh, a
; genIPush
	pushw	y
	.L_divschar__divschar_3:
; genIPush
	pushw	x
	.L_divschar__divschar_4:
; genCall
	call	__divsint
	addw	sp, #4
	.L_divschar__divschar_5:
; genReturn
; genLabel
00101$:
	.L_divschar__divschar_6:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divschar.c: 34: }
; genEndFunction
	.L_divschar__divschar_7:
	.L_divschar__divscharendf:
	ret
	.L_divschar__divschar_8:
	.section	 .text.__divuschar
	.L_divschar__divuschar_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divschar.c: 37: _divuschar (unsigned char x, unsigned char y)
; genLabel
;	-----------------------------------------
;	 function _divuschar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
__divuschar:
	.L_divschar__divuschar_10:
	pushw	x
	.L_divschar__divuschar_11:
	.L_divschar__divuschar_12:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divschar.c: 39: return ((int)((signed char)x) / (int)y);
; genCast
; genAssign
	ld	a, (0x05, sp)
; genCast
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
; genCast
; genAssign
	ld	a, (0x06, sp)
	ld	(0x02, sp), a
	clr	(0x01, sp)
; genIPush
	ldw	y, (0x01, sp)
	pushw	y
	.L_divschar__divuschar_13:
; genIPush
	pushw	x
	.L_divschar__divuschar_14:
; genCall
	call	__divsint
	addw	sp, #4
	.L_divschar__divuschar_15:
; genReturn
; genLabel
00101$:
	.L_divschar__divuschar_16:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divschar.c: 40: }
; genEndFunction
	addw	sp, #2
	.L_divschar__divuschar_17:
	.L_divschar__divuschar_18:
	.L_divschar__divuscharendf:
	ret
	.L_divschar__divuschar_19:
	.section	 .text.__divsuchar
	.L_divschar__divsuchar_20:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divschar.c: 43: _divsuchar (signed char x, signed char y)
; genLabel
;	-----------------------------------------
;	 function _divsuchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__divsuchar:
	.L_divschar__divsuchar_21:
	.L_divschar__divsuchar_22:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divschar.c: 45: return ((int)((unsigned char)x) / (int)y);
; genCast
; genAssign
	ld	a, (0x03, sp)
; genCast
; genAssign
	clrw	y
	ld	yl, a
; genCast
	ld	a, (0x04, sp)
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
; genIPush
	pushw	x
	.L_divschar__divsuchar_23:
; genIPush
	pushw	y
	.L_divschar__divsuchar_24:
; genCall
	call	__divsint
	addw	sp, #4
	.L_divschar__divsuchar_25:
; genReturn
; genLabel
00101$:
	.L_divschar__divsuchar_26:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divschar.c: 46: }
; genEndFunction
	.L_divschar__divsuchar_27:
	.L_divschar__divsucharendf:
	ret
	.L_divschar__divsuchar_28:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divschar.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_divschar__divschar_0)
	.byte	3
	.sleb128	30
	.byte	1
	.byte	9
	.word	.L_divschar__divschar_2-.L_divschar__divschar_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divschar__divschar_6-.L_divschar__divschar_2
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_divschar__divschar_7-.L_divschar__divschar_6
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_divschar__divuschar_9)
	.byte	3
	.sleb128	36
	.byte	1
	.byte	9
	.word	.L_divschar__divuschar_12-.L_divschar__divuschar_9
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divschar__divuschar_16-.L_divschar__divuschar_12
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_divschar__divuschar_18-.L_divschar__divuschar_16
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_divschar__divsuchar_20)
	.byte	3
	.sleb128	42
	.byte	1
	.byte	9
	.word	.L_divschar__divsuchar_22-.L_divschar__divsuchar_20
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divschar__divsuchar_26-.L_divschar__divsuchar_22
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_divschar__divsuchar_27-.L_divschar__divsuchar_26
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_divschar__divsuchar_25)
	.word	0,(.L_divschar__divsuchar_28)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.L_divschar__divsuchar_24)
	.word	0,(.L_divschar__divsuchar_25)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.L_divschar__divsuchar_23)
	.word	0,(.L_divschar__divsuchar_24)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.L_divschar__divsuchar_21)
	.word	0,(.L_divschar__divsuchar_23)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.L_divschar__divuschar_17)
	.word	0,(.L_divschar__divuschar_19)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.L_divschar__divuschar_15)
	.word	0,(.L_divschar__divuschar_17)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.L_divschar__divuschar_14)
	.word	0,(.L_divschar__divuschar_15)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.L_divschar__divuschar_13)
	.word	0,(.L_divschar__divuschar_14)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.L_divschar__divuschar_11)
	.word	0,(.L_divschar__divuschar_13)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.L_divschar__divuschar_10)
	.word	0,(.L_divschar__divuschar_11)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.L_divschar__divschar_5)
	.word	0,(.L_divschar__divschar_8)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.L_divschar__divschar_4)
	.word	0,(.L_divschar__divschar_5)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.L_divschar__divschar_3)
	.word	0,(.L_divschar__divschar_4)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.L_divschar__divschar_1)
	.word	0,(.L_divschar__divschar_3)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
	.uleb128	5
	.uleb128	46
	.byte	1
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divschar.c"
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
	.word	0,159
	.ascii "_divschar"
	.byte	0
	.word	0,(__divschar)
	.word	0,(.L_divschar__divscharendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start+136)
	.word	0,99
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "x"
	.byte	0
	.word	0,159
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	3
	.ascii "y"
	.byte	0
	.word	0,159
	.uleb128	0
	.uleb128	2
	.ascii "signed char"
	.byte	0
	.byte	1
	.byte	5
	.uleb128	3
	.word	0,228
	.ascii "_divuschar"
	.byte	0
	.word	0,(__divuschar)
	.word	0,(.L_divschar__divuscharendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start+56)
	.word	0,99
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "x"
	.byte	0
	.word	0,228
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	3
	.ascii "y"
	.byte	0
	.word	0,228
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
	.uleb128	5
	.ascii "_divsuchar"
	.byte	0
	.word	0,(__divsuchar)
	.word	0,(.L_divschar__divsucharendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,245
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "x"
	.byte	0
	.word	0,159
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	3
	.ascii "y"
	.byte	0
	.word	0,159
	.uleb128	0
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
	.ascii "_divschar"
	.byte	0
	.word	0,174
	.ascii "_divuschar"
	.byte	0
	.word	0,261
	.ascii "_divsuchar"
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
	.word	0,40
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.L_divschar__divsuchar_21)	;initial loc
	.word	0,.L_divschar__divsuchar_28-.L_divschar__divsuchar_21
	.byte	1
	.word	0,(.L_divschar__divsuchar_21)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_divschar__divsuchar_23)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.L_divschar__divsuchar_24)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.L_divschar__divsuchar_25)
	.byte	14
	.uleb128	2

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE1_end-.Ldebug_CIE1_start
.Ldebug_CIE1_start:
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
.Ldebug_CIE1_end:
	.word	0,54
	.word	0,(.Ldebug_CIE1_start-4)
	.word	0,(.L_divschar__divuschar_10)	;initial loc
	.word	0,.L_divschar__divuschar_19-.L_divschar__divuschar_10
	.byte	1
	.word	0,(.L_divschar__divuschar_10)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_divschar__divuschar_11)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.L_divschar__divuschar_13)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.L_divschar__divuschar_14)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.L_divschar__divuschar_15)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.L_divschar__divuschar_17)
	.byte	14
	.uleb128	2

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE2_end-.Ldebug_CIE2_start
.Ldebug_CIE2_start:
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
.Ldebug_CIE2_end:
	.word	0,40
	.word	0,(.Ldebug_CIE2_start-4)
	.word	0,(.L_divschar__divschar_1)	;initial loc
	.word	0,.L_divschar__divschar_8-.L_divschar__divschar_1
	.byte	1
	.word	0,(.L_divschar__divschar_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_divschar__divschar_3)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.L_divschar__divschar_4)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.L_divschar__divschar_5)
	.byte	14
	.uleb128	2
