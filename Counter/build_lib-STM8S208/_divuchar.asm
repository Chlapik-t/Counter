;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_divuchar"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __divuchar
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
	.section	 .text.__divuchar
	.L_divuchar__divuchar_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuchar.c: 31: _divuchar (unsigned char x, unsigned char y)
; genLabel
;	-----------------------------------------
;	 function _divuchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__divuchar:
	.L_divuchar__divuchar_1:
	.L_divuchar__divuchar_2:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuchar.c: 33: return ((unsigned int)x / (unsigned int)y);
; genCast
; genAssign
	clrw	x
	ld	a, (0x03, sp)
	ld	xl, a
; genCast
; genAssign
	ld	a, (0x04, sp)
	clrw	y
; genDivMod
	ld	yl, a
	divw	x, y
; genReturn
; genLabel
00101$:
	.L_divuchar__divuchar_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuchar.c: 34: }
; genEndFunction
	.L_divuchar__divuchar_4:
	.L_divuchar__divucharendf:
	ret
	.L_divuchar__divuchar_5:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuchar.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_divuchar__divuchar_0)
	.byte	3
	.sleb128	30
	.byte	1
	.byte	9
	.word	.L_divuchar__divuchar_2-.L_divuchar__divuchar_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divuchar__divuchar_3-.L_divuchar__divuchar_2
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_divuchar__divuchar_4-.L_divuchar__divuchar_3
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_divuchar__divuchar_1)
	.word	0,(.L_divuchar__divuchar_5)
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divuchar.c"
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
	.word	0,168
	.ascii "_divuchar"
	.byte	0
	.word	0,(__divuchar)
	.word	0,(.L_divuchar__divucharendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,99
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "x"
	.byte	0
	.word	0,168
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	3
	.ascii "y"
	.byte	0
	.word	0,168
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
	.ascii "_divuchar"
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
	.word	0,19
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.L_divuchar__divuchar_1)	;initial loc
	.word	0,.L_divuchar__divuchar_5-.L_divuchar__divuchar_1
	.byte	1
	.word	0,(.L_divuchar__divuchar_1)
	.byte	14
	.uleb128	2
