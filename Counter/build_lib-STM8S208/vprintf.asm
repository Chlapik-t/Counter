;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "vprintf"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global _putchar
	.global __print_format
	.global _vprintf
	.global _printf
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
	.section	 .text._put_char_to_stdout
	.Lvprintf_put_char_to_stdout_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c: 34: put_char_to_stdout (char c, void* p) _REENTRANT
; genLabel
;	-----------------------------------------
;	 function put_char_to_stdout
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_put_char_to_stdout:
	.Lvprintf_put_char_to_stdout_1:
	.Lvprintf_put_char_to_stdout_2:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c: 37: putchar (c);
; genCast
; genAssign
	clrw	x
	ld	a, (0x03, sp)
	ld	xl, a
; genIPush
	pushw	x
	.Lvprintf_put_char_to_stdout_3:
; genCall
	call	_putchar
	popw	x
	.Lvprintf_put_char_to_stdout_4:
; genLabel
00101$:
	.Lvprintf_put_char_to_stdout_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c: 38: }
; genEndFunction
	.Lvprintf_put_char_to_stdout_6:
	.Lvprintf_put_char_to_stdoutendf:
	ret
	.Lvprintf_put_char_to_stdout_7:
	.section	 .text._vprintf
	.Lvprintf_vprintf_8:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c: 41: vprintf (const char *format, va_list ap)
; genLabel
;	-----------------------------------------
;	 function vprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_vprintf:
	.Lvprintf_vprintf_9:
	.Lvprintf_vprintf_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c: 43: return _print_format (put_char_to_stdout, NULL, format, ap);
; genIPush
	ldw	x, (0x05, sp)
	pushw	x
	.Lvprintf_vprintf_11:
; genIPush
	ldw	x, (0x05, sp)
	pushw	x
	.Lvprintf_vprintf_12:
; genIPush
	clrw	x
	pushw	x
	.Lvprintf_vprintf_13:
; genIPush
	push	lo8(_put_char_to_stdout + 0)
	.Lvprintf_vprintf_14:
	push	hi8(_put_char_to_stdout + 0)
	.Lvprintf_vprintf_15:
; genCall
	call	__print_format
	addw	sp, #8
	.Lvprintf_vprintf_16:
; genReturn
; genLabel
00101$:
	.Lvprintf_vprintf_17:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c: 44: }
; genEndFunction
	.Lvprintf_vprintf_18:
	.Lvprintf_vprintfendf:
	ret
	.Lvprintf_vprintf_19:
	.section	 .text._printf
	.Lvprintf_printf_20:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c: 47: printf (const char *format, ...)
; genLabel
;	-----------------------------------------
;	 function printf
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_printf:
	.Lvprintf_printf_21:
	.Lvprintf_printf_22:
	.Lvprintf_printf_23:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c: 52: va_start (arg, format);
; genAddrOf
	ldw	x, sp
	addw	x, #3
; genCast
; genAssign
; genPlus
	incw	x
	incw	x
; genAssign
	.Lvprintf_printf_24:
	.Lvprintf_printf_25:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c: 53: i = _print_format (put_char_to_stdout, NULL, format, arg);
; genIPush
	pushw	x
	.Lvprintf_printf_26:
; genIPush
	ldw	x, (0x05, sp)
	pushw	x
	.Lvprintf_printf_27:
; genIPush
	clrw	x
	pushw	x
	.Lvprintf_printf_28:
; genIPush
	push	lo8(_put_char_to_stdout + 0)
	.Lvprintf_printf_29:
	push	hi8(_put_char_to_stdout + 0)
	.Lvprintf_printf_30:
; genCall
	call	__print_format
	addw	sp, #8
	.Lvprintf_printf_31:
; genAssign
	.Lvprintf_printf_32:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c: 56: return i;
; genReturn
; genLabel
00101$:
	.Lvprintf_printf_33:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c: 57: }
; genEndFunction
	.Lvprintf_printf_34:
	.Lvprintf_printfendf:
	ret
	.Lvprintf_printf_35:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lvprintf_put_char_to_stdout_0)
	.byte	3
	.sleb128	33
	.byte	1
	.byte	9
	.word	.Lvprintf_put_char_to_stdout_2-.Lvprintf_put_char_to_stdout_0
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lvprintf_put_char_to_stdout_5-.Lvprintf_put_char_to_stdout_2
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lvprintf_put_char_to_stdout_6-.Lvprintf_put_char_to_stdout_5
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lvprintf_vprintf_8)
	.byte	3
	.sleb128	40
	.byte	1
	.byte	9
	.word	.Lvprintf_vprintf_10-.Lvprintf_vprintf_8
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lvprintf_vprintf_17-.Lvprintf_vprintf_10
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lvprintf_vprintf_18-.Lvprintf_vprintf_17
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lvprintf_printf_20)
	.byte	3
	.sleb128	46
	.byte	1
	.byte	9
	.word	.Lvprintf_printf_23-.Lvprintf_printf_20
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	.Lvprintf_printf_25-.Lvprintf_printf_23
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lvprintf_printf_32-.Lvprintf_printf_25
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lvprintf_printf_33-.Lvprintf_printf_32
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lvprintf_printf_34-.Lvprintf_printf_33
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.Lvprintf_printf_31)
	.word	0,(.Lvprintf_printf_35)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lvprintf_printf_30)
	.word	0,(.Lvprintf_printf_31)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.Lvprintf_printf_29)
	.word	0,(.Lvprintf_printf_30)
	.word	2
	.byte	120
	.sleb128	8
	.word	0,(.Lvprintf_printf_28)
	.word	0,(.Lvprintf_printf_29)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Lvprintf_printf_27)
	.word	0,(.Lvprintf_printf_28)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Lvprintf_printf_26)
	.word	0,(.Lvprintf_printf_27)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lvprintf_printf_21)
	.word	0,(.Lvprintf_printf_26)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lvprintf_vprintf_16)
	.word	0,(.Lvprintf_vprintf_19)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lvprintf_vprintf_15)
	.word	0,(.Lvprintf_vprintf_16)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.Lvprintf_vprintf_14)
	.word	0,(.Lvprintf_vprintf_15)
	.word	2
	.byte	120
	.sleb128	8
	.word	0,(.Lvprintf_vprintf_13)
	.word	0,(.Lvprintf_vprintf_14)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Lvprintf_vprintf_12)
	.word	0,(.Lvprintf_vprintf_13)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Lvprintf_vprintf_11)
	.word	0,(.Lvprintf_vprintf_12)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lvprintf_vprintf_9)
	.word	0,(.Lvprintf_vprintf_11)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lvprintf_put_char_to_stdout_4)
	.word	0,(.Lvprintf_put_char_to_stdout_7)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lvprintf_put_char_to_stdout_3)
	.word	0,(.Lvprintf_put_char_to_stdout_4)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lvprintf_put_char_to_stdout_1)
	.word	0,(.Lvprintf_put_char_to_stdout_3)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
	.uleb128	8
	.uleb128	15
	.byte	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	12
	.uleb128	11
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	13
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	11
	.uleb128	11
	.byte	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	5
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/vprintf.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.word	0,157
	.ascii "put_char_to_stdout"
	.byte	0
	.word	0,(_put_char_to_stdout)
	.word	0,(.Lvprintf_put_char_to_stdoutendf+1)
	.byte	0
	.word	0,(.Ldebug_loc_start+184)
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "c"
	.byte	0
	.word	0,157
	.uleb128	4
	.byte	2
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	3
	.ascii "p"
	.byte	0
	.word	0,144
	.uleb128	0
	.uleb128	5
	.ascii "unsigned char"
	.byte	0
	.byte	1
	.byte	8
	.uleb128	5
	.ascii "int"
	.byte	0
	.byte	2
	.byte	5
	.uleb128	6
	.word	0,255
	.ascii "vprintf"
	.byte	0
	.word	0,(_vprintf)
	.word	0,(.Lvprintf_vprintfendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start+92)
	.word	0,174
	.uleb128	7
	.word	0,157
	.uleb128	8
	.byte	2
	.word	0,211
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "format"
	.byte	0
	.word	0,216
	.uleb128	8
	.byte	2
	.word	0,157
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	4
	.ascii "ap"
	.byte	0
	.word	0,237
	.uleb128	0
	.uleb128	9
	.ascii "printf"
	.byte	0
	.word	0,(_printf)
	.word	0,(.Lvprintf_printfendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,174
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "format"
	.byte	0
	.word	0,216
	.uleb128	10
	.uleb128	11
	.word	0,(.Lvprintf_printf_22)
	.word	0,(.Lvprintf_printf_24)
	.uleb128	12
	.uleb128	13
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "arg"
	.byte	0
	.word	0,237
	.uleb128	13
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "i"
	.byte	0
	.word	0,174
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
	.word	0,181
	.ascii "vprintf"
	.byte	0
	.word	0,255
	.ascii "printf"
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
	.word	0,(.Lvprintf_printf_21)	;initial loc
	.word	0,.Lvprintf_printf_35-.Lvprintf_printf_21
	.byte	1
	.word	0,(.Lvprintf_printf_21)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lvprintf_printf_26)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lvprintf_printf_27)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Lvprintf_printf_28)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Lvprintf_printf_29)
	.byte	14
	.uleb128	9
	.byte	1
	.word	0,(.Lvprintf_printf_30)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.Lvprintf_printf_31)
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
	.word	0,(.Lvprintf_vprintf_9)	;initial loc
	.word	0,.Lvprintf_vprintf_19-.Lvprintf_vprintf_9
	.byte	1
	.word	0,(.Lvprintf_vprintf_9)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lvprintf_vprintf_11)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lvprintf_vprintf_12)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Lvprintf_vprintf_13)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Lvprintf_vprintf_14)
	.byte	14
	.uleb128	9
	.byte	1
	.word	0,(.Lvprintf_vprintf_15)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.Lvprintf_vprintf_16)
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
	.word	0,(.Lvprintf_put_char_to_stdout_1)	;initial loc
	.word	0,.Lvprintf_put_char_to_stdout_7-.Lvprintf_put_char_to_stdout_1
	.byte	1
	.word	0,(.Lvprintf_put_char_to_stdout_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lvprintf_put_char_to_stdout_3)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lvprintf_put_char_to_stdout_4)
	.byte	14
	.uleb128	2
