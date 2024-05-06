;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_muluchar"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __muluchar
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
	.section	 .text.__muluchar
	.L_muluchar__muluchar_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_muluchar.c: 30: _muluchar (unsigned char x, unsigned char y)
; genLabel
;	-----------------------------------------
;	 function _muluchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
__muluchar:
	.L_muluchar__muluchar_1:
	sub	sp, #3
	.L_muluchar__muluchar_2:
	.L_muluchar__muluchar_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_muluchar.c: 32: unsigned int result = 0;
; genAssign
	clrw	x
	.L_muluchar__muluchar_4:
	.L_muluchar__muluchar_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_muluchar.c: 34: for (unsigned char i = 0; i < 8; i++)
; genAssign
	clr	(0x03, sp)
	.L_muluchar__muluchar_6:
; genLabel
00105$:
; genCmp
; genCmpTop
	ld	a, (0x03, sp)
	cp	a, #0x08
	jrc	00125$
	jp	00103$
00125$:
; skipping generated iCode
	.L_muluchar__muluchar_7:
	.L_muluchar__muluchar_8:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_muluchar.c: 36: result <<= 1;
; genLeftShiftLiteral
	sllw	x
	.L_muluchar__muluchar_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_muluchar.c: 37: if (x & 0x80)
; genAssign
	ld	a, (0x06, sp)
; genAnd
	tnz	a
	jrmi	00126$
	jp	00102$
00126$:
; skipping generated iCode
	.L_muluchar__muluchar_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_muluchar.c: 38: result += y;
; genCast
; genAssign
	clrw	y
	ld	a, (0x07, sp)
	ld	yl, a
; genCast
; genAssign
	ldw	(0x01, sp), y
; genPlus
	addw	x, (0x01, sp)
; genAssign
; genLabel
00102$:
	.L_muluchar__muluchar_11:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_muluchar.c: 39: x <<= 1;
; genCast
; genAssign
	ld	a, (0x06, sp)
; genLeftShiftLiteral
	sll	a
	ld	(0x06, sp), a
	.L_muluchar__muluchar_12:
	.L_muluchar__muluchar_13:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_muluchar.c: 34: for (unsigned char i = 0; i < 8; i++)
; genPlus
	inc	(0x03, sp)
; genGoto
	jp	00105$
; genLabel
00103$:
	.L_muluchar__muluchar_14:
	.L_muluchar__muluchar_15:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_muluchar.c: 42: return result;
; genReturn
; genLabel
00107$:
	.L_muluchar__muluchar_16:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_muluchar.c: 43: }
; genEndFunction
	addw	sp, #3
	.L_muluchar__muluchar_17:
	.L_muluchar__muluchar_18:
	.L_muluchar__mulucharendf:
	ret
	.L_muluchar__muluchar_19:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_muluchar.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_muluchar__muluchar_0)
	.byte	3
	.sleb128	29
	.byte	1
	.byte	9
	.word	.L_muluchar__muluchar_3-.L_muluchar__muluchar_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_muluchar__muluchar_5-.L_muluchar__muluchar_3
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_muluchar__muluchar_8-.L_muluchar__muluchar_5
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_muluchar__muluchar_9-.L_muluchar__muluchar_8
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_muluchar__muluchar_10-.L_muluchar__muluchar_9
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_muluchar__muluchar_11-.L_muluchar__muluchar_10
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_muluchar__muluchar_13-.L_muluchar__muluchar_11
	.byte	3
	.sleb128	-5
	.byte	1
	.byte	9
	.word	.L_muluchar__muluchar_15-.L_muluchar__muluchar_13
	.byte	3
	.sleb128	8
	.byte	1
	.byte	9
	.word	.L_muluchar__muluchar_16-.L_muluchar__muluchar_15
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_muluchar__muluchar_18-.L_muluchar__muluchar_16
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_muluchar__muluchar_17)
	.word	0,(.L_muluchar__muluchar_19)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.L_muluchar__muluchar_2)
	.word	0,(.L_muluchar__muluchar_17)
	.word	2
	.byte	120
	.sleb128	4
	.word	0,(.L_muluchar__muluchar_1)
	.word	0,(.L_muluchar__muluchar_2)
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_muluchar.c"
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
	.word	0,220
	.ascii "_muluchar"
	.byte	0
	.word	0,(__muluchar)
	.word	0,(.L_muluchar__mulucharendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,99
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "x"
	.byte	0
	.word	0,220
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	3
	.ascii "y"
	.byte	0
	.word	0,220
	.uleb128	5
	.word	0,200
	.word	0,(.L_muluchar__muluchar_4)
	.word	0,(.L_muluchar__muluchar_14)
	.uleb128	6
	.word	0,(.L_muluchar__muluchar_7)
	.word	0,(.L_muluchar__muluchar_12)
	.uleb128	7
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "i"
	.byte	0
	.word	0,220
	.uleb128	0
	.uleb128	7
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "result"
	.byte	0
	.word	0,99
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
	.word	0,115
	.ascii "_muluchar"
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
	.word	0,(.L_muluchar__muluchar_1)	;initial loc
	.word	0,.L_muluchar__muluchar_19-.L_muluchar__muluchar_1
	.byte	1
	.word	0,(.L_muluchar__muluchar_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_muluchar__muluchar_2)
	.byte	14
	.uleb128	5
	.byte	1
	.word	0,(.L_muluchar__muluchar_17)
	.byte	14
	.uleb128	2
