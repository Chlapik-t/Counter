;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_divslong"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __divslong
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
	.section	 .text.__divslong
	.L_divslong__divslong_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslong.c: 259: _divslong (long x, long y)
; genLabel
;	-----------------------------------------
;	 function _divslong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 10 bytes.
__divslong:
	.L_divslong__divslong_1:
	sub	sp, #10
	.L_divslong__divslong_2:
	.L_divslong__divslong_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslong.c: 263: r = (unsigned long)(x < 0 ? -x : x) / (unsigned long)(y < 0 ? -y : y);
; genCmp
; genCmpTop
	tnz	(0x0d, sp)
	jrmi	00125$
	clr	(0x01, sp)
	jp	00126$
00125$:
	ld	a, #0x01
	ld	(0x01, sp), a
00126$:
; genIfx
	tnz	(0x01, sp)
	jrne	00127$
	jp	00106$
00127$:
; genUminus
	ldw	y, (0x0f, sp)
	negw	y
	ldw	x, (0x0d, sp)
	jrnc	00128$
	incw	x
00128$:
	negw	x
; genAssign
	ldw	(0x09, sp), y
	ldw	(0x07, sp), x
; genGoto
	jp	00107$
; genLabel
00106$:
; genAssign
	ldw	y, (0x0f, sp)
	ldw	(0x09, sp), y
	ldw	y, (0x0d, sp)
	ldw	(0x07, sp), y
; genLabel
00107$:
; genCast
; genAssign
	ldw	y, (0x09, sp)
	ldw	(0x04, sp), y
	ldw	y, (0x07, sp)
	ldw	(0x02, sp), y
; genCmp
; genCmpTop
	tnz	(0x11, sp)
	jrmi	00129$
	clr	(0x06, sp)
	jp	00130$
00129$:
	ld	a, #0x01
	ld	(0x06, sp), a
00130$:
; genIfx
	tnz	(0x06, sp)
	jrne	00131$
	jp	00108$
00131$:
; genUminus
	ld	a, (0x14, sp)
	neg	a
	ld	(0x0a, sp), a
	clr	a
	sbc	a, (0x13, sp)
	ld	(0x09, sp), a
	clr	a
	sbc	a, (0x12, sp)
	ld	(0x08, sp), a
	clr	a
	sbc	a, (0x11, sp)
	ld	(0x07, sp), a
; genAssign
; genGoto
	jp	00109$
; genLabel
00108$:
; genAssign
	ldw	y, (0x13, sp)
	ldw	(0x09, sp), y
	ldw	y, (0x11, sp)
	ldw	(0x07, sp), y
; genLabel
00109$:
; genCast
; genAssign
	ldw	x, (0x09, sp)
	ldw	y, (0x07, sp)
; genIPush
	pushw	x
	.L_divslong__divslong_4:
	pushw	y
	.L_divslong__divslong_5:
; genIPush
	ldw	x, (0x08, sp)
	pushw	x
	.L_divslong__divslong_6:
	ldw	x, (0x08, sp)
	pushw	x
	.L_divslong__divslong_7:
; genCall
	call	__divulong
	addw	sp, #8
	.L_divslong__divslong_8:
; genAssign
	ldw	(0x09, sp), x
	ldw	(0x07, sp), y
	.L_divslong__divslong_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslong.c: 264: if ((x < 0) ^ (y < 0))
; genXor
	ld	a, (0x01, sp)
	xor	a, (0x06, sp)
; genIfx
	tnz	a
	jrne	00132$
	jp	00102$
00132$:
	.L_divslong__divslong_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslong.c: 265: return -r;
; genUminus
	ldw	x, (0x09, sp)
	negw	x
	ldw	y, (0x07, sp)
	jrnc	00133$
	incw	y
00133$:
	negw	y
; genReturn
	jp	00104$
; genLabel
00102$:
	.L_divslong__divslong_11:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslong.c: 267: return r;
; genReturn
	ldw	x, (0x09, sp)
	ldw	y, (0x07, sp)
; genLabel
00104$:
	.L_divslong__divslong_12:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslong.c: 268: }
; genEndFunction
	addw	sp, #10
	.L_divslong__divslong_13:
	.L_divslong__divslong_14:
	.L_divslong__divslongendf:
	ret
	.L_divslong__divslong_15:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslong.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_divslong__divslong_0)
	.byte	3
	.sleb128	258
	.byte	1
	.byte	9
	.word	.L_divslong__divslong_3-.L_divslong__divslong_0
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.L_divslong__divslong_9-.L_divslong__divslong_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divslong__divslong_10-.L_divslong__divslong_9
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divslong__divslong_11-.L_divslong__divslong_10
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divslong__divslong_12-.L_divslong__divslong_11
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_divslong__divslong_14-.L_divslong__divslong_12
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_divslong__divslong_13)
	.word	0,(.L_divslong__divslong_15)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.L_divslong__divslong_8)
	.word	0,(.L_divslong__divslong_13)
	.word	2
	.byte	120
	.sleb128	11
	.word	0,(.L_divslong__divslong_7)
	.word	0,(.L_divslong__divslong_8)
	.word	2
	.byte	120
	.sleb128	19
	.word	0,(.L_divslong__divslong_6)
	.word	0,(.L_divslong__divslong_7)
	.word	2
	.byte	120
	.sleb128	17
	.word	0,(.L_divslong__divslong_5)
	.word	0,(.L_divslong__divslong_6)
	.word	2
	.byte	120
	.sleb128	15
	.word	0,(.L_divslong__divslong_4)
	.word	0,(.L_divslong__divslong_5)
	.word	2
	.byte	120
	.sleb128	13
	.word	0,(.L_divslong__divslong_2)
	.word	0,(.L_divslong__divslong_4)
	.word	2
	.byte	120
	.sleb128	11
	.word	0,(.L_divslong__divslong_1)
	.word	0,(.L_divslong__divslong_2)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
	.uleb128	3
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
	.uleb128	5
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divslong.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.ascii "long"
	.byte	0
	.byte	4
	.byte	5
	.uleb128	3
	.ascii "_divslong"
	.byte	0
	.word	0,(__divslong)
	.word	0,(.L_divslong__divslongendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,99
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "x"
	.byte	0
	.word	0,99
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	6
	.ascii "y"
	.byte	0
	.word	0,99
	.uleb128	5
	.byte	2
	.byte	145
	.sleb128	-4
	.ascii "r"
	.byte	0
	.word	0,99
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
	.word	0,107
	.ascii "_divslong"
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
	.word	0,68
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.L_divslong__divslong_1)	;initial loc
	.word	0,.L_divslong__divslong_15-.L_divslong__divslong_1
	.byte	1
	.word	0,(.L_divslong__divslong_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_divslong__divslong_2)
	.byte	14
	.uleb128	12
	.byte	1
	.word	0,(.L_divslong__divslong_4)
	.byte	14
	.uleb128	14
	.byte	1
	.word	0,(.L_divslong__divslong_5)
	.byte	14
	.uleb128	16
	.byte	1
	.word	0,(.L_divslong__divslong_6)
	.byte	14
	.uleb128	18
	.byte	1
	.word	0,(.L_divslong__divslong_7)
	.byte	14
	.uleb128	20
	.byte	1
	.word	0,(.L_divslong__divslong_8)
	.byte	14
	.uleb128	12
	.byte	1
	.word	0,(.L_divslong__divslong_13)
	.byte	14
	.uleb128	2
