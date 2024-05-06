;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "sprintf"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __print_format
	.global _vsprintf
	.global _sprintf
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
	.section	 .text._put_char_to_string
	.Lsprintf_put_char_to_string_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 34: put_char_to_string (char c, void* p) _REENTRANT
; genLabel
;	-----------------------------------------
;	 function put_char_to_string
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_put_char_to_string:
	.Lsprintf_put_char_to_string_1:
	pushw	x
	.Lsprintf_put_char_to_string_2:
	.Lsprintf_put_char_to_string_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 36: char **buf = (char **)p;
; genCast
; genAssign
	ldw	y, (0x06, sp)
; genAssign
	.Lsprintf_put_char_to_string_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 37: *(*buf)++ = c;
; genPointerGet
	ldw	x, y
	ldw	x, (x)
	ldw	(0x01, sp), x
; genPlus
	ldw	x, (0x01, sp)
	incw	x
; genPointerSet
	ldw	(y), x
; genPointerSet
	ldw	x, (0x01, sp)
	ld	a, (0x05, sp)
	ld	(x), a
; genLabel
00101$:
	.Lsprintf_put_char_to_string_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 38: }
; genEndFunction
	popw	x
	.Lsprintf_put_char_to_string_6:
	.Lsprintf_put_char_to_string_7:
	.Lsprintf_put_char_to_stringendf:
	ret
	.Lsprintf_put_char_to_string_8:
	.section	 .text._vsprintf
	.Lsprintf_vsprintf_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 41: vsprintf (char *buf, const char *format, va_list ap)
; genLabel
;	-----------------------------------------
;	 function vsprintf
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_vsprintf:
	.Lsprintf_vsprintf_10:
	.Lsprintf_vsprintf_11:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 44: i = _print_format (put_char_to_string, &buf, format, ap);
; genAddrOf
	ldw	x, sp
	addw	x, #3
; genCast
; genAssign
; genIPush
	ldw	y, (0x07, sp)
	pushw	y
	.Lsprintf_vsprintf_12:
; genIPush
	ldw	y, (0x07, sp)
	pushw	y
	.Lsprintf_vsprintf_13:
; genIPush
	pushw	x
	.Lsprintf_vsprintf_14:
; genIPush
	push	lo8(_put_char_to_string + 0)
	.Lsprintf_vsprintf_15:
	push	hi8(_put_char_to_string + 0)
	.Lsprintf_vsprintf_16:
; genCall
	call	__print_format
	addw	sp, #8
	.Lsprintf_vsprintf_17:
; genAssign
	.Lsprintf_vsprintf_18:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 45: *buf = 0;
; genAssign
	ldw	y, (0x03, sp)
; genPointerSet
	clr	(y)
	.Lsprintf_vsprintf_19:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 46: return i;
; genReturn
; genLabel
00101$:
	.Lsprintf_vsprintf_20:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 47: }
; genEndFunction
	.Lsprintf_vsprintf_21:
	.Lsprintf_vsprintfendf:
	ret
	.Lsprintf_vsprintf_22:
	.section	 .text._sprintf
	.Lsprintf_sprintf_23:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 50: sprintf (char *buf, const char *format, ...)
; genLabel
;	-----------------------------------------
;	 function sprintf
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_sprintf:
	.Lsprintf_sprintf_24:
	.Lsprintf_sprintf_25:
	.Lsprintf_sprintf_26:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 55: va_start (arg, format);
; genAddrOf
	ldw	x, sp
	addw	x, #5
; genCast
; genAssign
; genPlus
	incw	x
	incw	x
	exgw	x, y
; genAssign
	.Lsprintf_sprintf_27:
	.Lsprintf_sprintf_28:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 56: i = _print_format (put_char_to_string, &buf, format, arg);
; genAddrOf
	ldw	x, sp
	addw	x, #3
; genCast
; genAssign
; genIPush
	pushw	y
	.Lsprintf_sprintf_29:
; genIPush
	ldw	y, (0x07, sp)
	pushw	y
	.Lsprintf_sprintf_30:
; genIPush
	pushw	x
	.Lsprintf_sprintf_31:
; genIPush
	push	lo8(_put_char_to_string + 0)
	.Lsprintf_sprintf_32:
	push	hi8(_put_char_to_string + 0)
	.Lsprintf_sprintf_33:
; genCall
	call	__print_format
	addw	sp, #8
	.Lsprintf_sprintf_34:
; genAssign
	.Lsprintf_sprintf_35:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 57: *buf = 0;
; genAssign
	ldw	y, (0x03, sp)
; genPointerSet
	clr	(y)
	.Lsprintf_sprintf_36:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 60: return i;
; genReturn
; genLabel
00101$:
	.Lsprintf_sprintf_37:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c: 61: }
; genEndFunction
	.Lsprintf_sprintf_38:
	.Lsprintf_sprintfendf:
	ret
	.Lsprintf_sprintf_39:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lsprintf_put_char_to_string_0)
	.byte	3
	.sleb128	33
	.byte	1
	.byte	9
	.word	.Lsprintf_put_char_to_string_3-.Lsprintf_put_char_to_string_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lsprintf_put_char_to_string_4-.Lsprintf_put_char_to_string_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lsprintf_put_char_to_string_5-.Lsprintf_put_char_to_string_4
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lsprintf_put_char_to_string_7-.Lsprintf_put_char_to_string_5
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lsprintf_vsprintf_9)
	.byte	3
	.sleb128	40
	.byte	1
	.byte	9
	.word	.Lsprintf_vsprintf_11-.Lsprintf_vsprintf_9
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lsprintf_vsprintf_18-.Lsprintf_vsprintf_11
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lsprintf_vsprintf_19-.Lsprintf_vsprintf_18
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lsprintf_vsprintf_20-.Lsprintf_vsprintf_19
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lsprintf_vsprintf_21-.Lsprintf_vsprintf_20
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lsprintf_sprintf_23)
	.byte	3
	.sleb128	49
	.byte	1
	.byte	9
	.word	.Lsprintf_sprintf_26-.Lsprintf_sprintf_23
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	.Lsprintf_sprintf_28-.Lsprintf_sprintf_26
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lsprintf_sprintf_35-.Lsprintf_sprintf_28
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lsprintf_sprintf_36-.Lsprintf_sprintf_35
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lsprintf_sprintf_37-.Lsprintf_sprintf_36
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lsprintf_sprintf_38-.Lsprintf_sprintf_37
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.Lsprintf_sprintf_34)
	.word	0,(.Lsprintf_sprintf_39)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lsprintf_sprintf_33)
	.word	0,(.Lsprintf_sprintf_34)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.Lsprintf_sprintf_32)
	.word	0,(.Lsprintf_sprintf_33)
	.word	2
	.byte	120
	.sleb128	8
	.word	0,(.Lsprintf_sprintf_31)
	.word	0,(.Lsprintf_sprintf_32)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Lsprintf_sprintf_30)
	.word	0,(.Lsprintf_sprintf_31)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Lsprintf_sprintf_29)
	.word	0,(.Lsprintf_sprintf_30)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lsprintf_sprintf_24)
	.word	0,(.Lsprintf_sprintf_29)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lsprintf_vsprintf_17)
	.word	0,(.Lsprintf_vsprintf_22)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lsprintf_vsprintf_16)
	.word	0,(.Lsprintf_vsprintf_17)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.Lsprintf_vsprintf_15)
	.word	0,(.Lsprintf_vsprintf_16)
	.word	2
	.byte	120
	.sleb128	8
	.word	0,(.Lsprintf_vsprintf_14)
	.word	0,(.Lsprintf_vsprintf_15)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Lsprintf_vsprintf_13)
	.word	0,(.Lsprintf_vsprintf_14)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Lsprintf_vsprintf_12)
	.word	0,(.Lsprintf_vsprintf_13)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lsprintf_vsprintf_10)
	.word	0,(.Lsprintf_vsprintf_12)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lsprintf_put_char_to_string_6)
	.word	0,(.Lsprintf_put_char_to_string_8)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lsprintf_put_char_to_string_2)
	.word	0,(.Lsprintf_put_char_to_string_6)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lsprintf_put_char_to_string_1)
	.word	0,(.Lsprintf_put_char_to_string_2)
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
	.uleb128	13
	.uleb128	11
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	10
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
	.uleb128	3
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
	.uleb128	11
	.uleb128	24
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	2
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
	.uleb128	0
	.uleb128	0
	.uleb128	6
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
	.uleb128	8
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
	.uleb128	9
	.uleb128	38
	.byte	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	15
	.byte	0
	.uleb128	11
	.uleb128	11
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
	.uleb128	12
	.uleb128	11
	.byte	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	7
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/sprintf.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.word	0,185
	.ascii "put_char_to_string"
	.byte	0
	.word	0,(_put_char_to_string)
	.word	0,(.Lsprintf_put_char_to_stringendf+1)
	.byte	0
	.word	0,(.Ldebug_loc_start+184)
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "c"
	.byte	0
	.word	0,185
	.uleb128	4
	.byte	2
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	3
	.ascii "p"
	.byte	0
	.word	0,144
	.uleb128	5
	.byte	2
	.word	0,185
	.uleb128	5
	.byte	2
	.word	0,156
	.uleb128	6
	.byte	6
	.byte	84
	.byte	147
	.uleb128	1
	.byte	83
	.byte	147
	.uleb128	1
	.ascii "buf"
	.byte	0
	.word	0,162
	.uleb128	0
	.uleb128	7
	.ascii "unsigned char"
	.byte	0
	.byte	1
	.byte	8
	.uleb128	7
	.ascii "int"
	.byte	0
	.byte	2
	.byte	5
	.uleb128	8
	.word	0,304
	.ascii "vsprintf"
	.byte	0
	.word	0,(_vsprintf)
	.word	0,(.Lsprintf_vsprintfendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start+92)
	.word	0,202
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "buf"
	.byte	0
	.word	0,156
	.uleb128	9
	.word	0,185
	.uleb128	5
	.byte	2
	.word	0,252
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	4
	.ascii "format"
	.byte	0
	.word	0,257
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	6
	.ascii "ap"
	.byte	0
	.word	0,156
	.uleb128	6
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "i"
	.byte	0
	.word	0,202
	.uleb128	0
	.uleb128	10
	.ascii "sprintf"
	.byte	0
	.word	0,(_sprintf)
	.word	0,(.Lsprintf_sprintfendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,202
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "buf"
	.byte	0
	.word	0,156
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	4
	.ascii "format"
	.byte	0
	.word	0,257
	.uleb128	11
	.uleb128	12
	.word	0,(.Lsprintf_sprintf_25)
	.word	0,(.Lsprintf_sprintf_27)
	.uleb128	13
	.uleb128	6
	.byte	6
	.byte	84
	.byte	147
	.uleb128	1
	.byte	83
	.byte	147
	.uleb128	1
	.ascii "arg"
	.byte	0
	.word	0,156
	.uleb128	6
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "i"
	.byte	0
	.word	0,202
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
	.word	0,209
	.ascii "vsprintf"
	.byte	0
	.word	0,304
	.ascii "sprintf"
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
	.word	0,61
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.Lsprintf_sprintf_24)	;initial loc
	.word	0,.Lsprintf_sprintf_39-.Lsprintf_sprintf_24
	.byte	1
	.word	0,(.Lsprintf_sprintf_24)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lsprintf_sprintf_29)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lsprintf_sprintf_30)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Lsprintf_sprintf_31)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Lsprintf_sprintf_32)
	.byte	14
	.uleb128	9
	.byte	1
	.word	0,(.Lsprintf_sprintf_33)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.Lsprintf_sprintf_34)
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
	.word	0,61
	.word	0,(.Ldebug_CIE1_start-4)
	.word	0,(.Lsprintf_vsprintf_10)	;initial loc
	.word	0,.Lsprintf_vsprintf_22-.Lsprintf_vsprintf_10
	.byte	1
	.word	0,(.Lsprintf_vsprintf_10)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lsprintf_vsprintf_12)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lsprintf_vsprintf_13)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Lsprintf_vsprintf_14)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Lsprintf_vsprintf_15)
	.byte	14
	.uleb128	9
	.byte	1
	.word	0,(.Lsprintf_vsprintf_16)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.Lsprintf_vsprintf_17)
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
	.word	0,33
	.word	0,(.Ldebug_CIE2_start-4)
	.word	0,(.Lsprintf_put_char_to_string_1)	;initial loc
	.word	0,.Lsprintf_put_char_to_string_8-.Lsprintf_put_char_to_string_1
	.byte	1
	.word	0,(.Lsprintf_put_char_to_string_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lsprintf_put_char_to_string_2)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lsprintf_put_char_to_string_6)
	.byte	14
	.uleb128	2
