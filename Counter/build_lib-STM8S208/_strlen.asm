;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_strlen"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global _strlen
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
	.section	 .text._strlen
	.L_strlen_strlen_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_strlen.c: 35: size_t strlen ( const char * str )
; genLabel
;	-----------------------------------------
;	 function strlen
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_strlen:
	.L_strlen_strlen_1:
	.L_strlen_strlen_2:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_strlen.c: 37: register int i = 0 ;
; genAssign
	clrw	x
	.L_strlen_strlen_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_strlen.c: 39: while (*str++)
; genAssign
; genAssign
	ldw	y, (0x03, sp)
; genLabel
00101$:
; genPointerGet
	ld	a, (y)
; genPlus
	incw	y
; genIfx
	tnz	a
	jrne	00117$
	jp	00108$
00117$:
	.L_strlen_strlen_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_strlen.c: 40: i++ ;
; genPlus
	incw	x
; genGoto
	jp	00101$
; genLabel
00108$:
; genAssign
	.L_strlen_strlen_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_strlen.c: 42: return i;
; genReturn
; genLabel
00104$:
	.L_strlen_strlen_6:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_strlen.c: 43: }
; genEndFunction
	.L_strlen_strlen_7:
	.L_strlen_strlenendf:
	ret
	.L_strlen_strlen_8:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_strlen.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_strlen_strlen_0)
	.byte	3
	.sleb128	34
	.byte	1
	.byte	9
	.word	.L_strlen_strlen_2-.L_strlen_strlen_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_strlen_strlen_3-.L_strlen_strlen_2
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_strlen_strlen_4-.L_strlen_strlen_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_strlen_strlen_5-.L_strlen_strlen_4
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_strlen_strlen_6-.L_strlen_strlen_5
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_strlen_strlen_7-.L_strlen_strlen_6
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_strlen_strlen_1)
	.word	0,(.L_strlen_strlen_8)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
	.uleb128	5
	.uleb128	15
	.byte	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	6
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
	.uleb128	4
	.uleb128	38
	.byte	0
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_strlen.c"
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
	.word	0,180
	.ascii "strlen"
	.byte	0
	.word	0,(_strlen)
	.word	0,(.L_strlen_strlenendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,97
	.uleb128	4
	.word	0,180
	.uleb128	5
	.byte	2
	.word	0,142
	.uleb128	6
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "str"
	.byte	0
	.word	0,147
	.uleb128	7
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "i"
	.byte	0
	.word	0,197
	.uleb128	0
	.uleb128	2
	.ascii "unsigned char"
	.byte	0
	.byte	1
	.byte	8
	.uleb128	2
	.ascii "int"
	.byte	0
	.byte	2
	.byte	5
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
	.word	0,113
	.ascii "strlen"
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
	.word	0,(.L_strlen_strlen_1)	;initial loc
	.word	0,.L_strlen_strlen_8-.L_strlen_strlen_1
	.byte	1
	.word	0,(.L_strlen_strlen_1)
	.byte	14
	.uleb128	2
