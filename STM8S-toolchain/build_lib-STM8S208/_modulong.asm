;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_modulong"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __modulong
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
	.section	 .text.__modulong
	.L_modulong__modulong_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 340: _modulong (unsigned long a, unsigned long b)
; genLabel
;	-----------------------------------------
;	 function _modulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
__modulong:
	.L_modulong__modulong_1:
	push	a
	.L_modulong__modulong_2:
	.L_modulong__modulong_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 342: unsigned char count = 0;
; genAssign
	clr	a
	.L_modulong__modulong_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 344: while (!MSB_SET(b))
; genAssign
	ld	(0x01, sp), a
; genLabel
00103$:
; genGetABit
	tnz	(0x08, sp)
	jrpl	00144$
	jp	00117$
00144$:
; skipping generated iCode
	.L_modulong__modulong_5:
	.L_modulong__modulong_6:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 346: b <<= 1;
; genLeftShiftLiteral
	sll	(0x0b, sp)
	rlc	(0x0a, sp)
	rlc	(0x09, sp)
	rlc	(0x08, sp)
	.L_modulong__modulong_7:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 347: if (b > a)
; genCmp
; genCmpTop
	ldw	x, (0x06, sp)
	cpw	x, (0x0a, sp)
	push	a
	.L_modulong__modulong_8:
	ld	a, (0x06, sp)
	sbc	a, (0x0a, sp)
	ld	a, (0x05, sp)
	sbc	a, (0x09, sp)
	pop	a
	.L_modulong__modulong_9:
	jrc	00145$
	jp	00102$
00145$:
; skipping generated iCode
	.L_modulong__modulong_10:
	.L_modulong__modulong_11:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 349: b >>=1;
; genRightShiftLiteral
	srl	(0x08, sp)
	rrc	(0x09, sp)
	rrc	(0x0a, sp)
	rrc	(0x0b, sp)
	.L_modulong__modulong_12:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 350: break;
; genGoto
	jp	00117$
	.L_modulong__modulong_13:
; genLabel
00102$:
	.L_modulong__modulong_14:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 352: count++;
; genPlus
	inc	(0x01, sp)
; genAssign
	ld	a, (0x01, sp)
	.L_modulong__modulong_15:
; genGoto
	jp	00103$
	.L_modulong__modulong_16:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 354: do
; genLabel
00117$:
; genAssign
	ld	(0x01, sp), a
; genLabel
00108$:
	.L_modulong__modulong_17:
	.L_modulong__modulong_18:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 356: if (a >= b)
; genCmp
; genCmpTop
	ldw	x, (0x06, sp)
	cpw	x, (0x0a, sp)
	ld	a, (0x05, sp)
	sbc	a, (0x09, sp)
	ld	a, (0x04, sp)
	sbc	a, (0x08, sp)
	jrnc	00146$
	jp	00107$
00146$:
; skipping generated iCode
	.L_modulong__modulong_19:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 357: a -= b;
; genMinus
	ldw	y, (0x06, sp)
	subw	y, (0x0a, sp)
	ld	a, (0x05, sp)
	sbc	a, (0x09, sp)
	ld	xl, a
	ld	a, (0x04, sp)
	sbc	a, (0x08, sp)
	ld	xh, a
; genAssign
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
; genLabel
00107$:
	.L_modulong__modulong_20:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 358: b >>= 1;
; genRightShiftLiteral
	srl	(0x08, sp)
	rrc	(0x09, sp)
	rrc	(0x0a, sp)
	rrc	(0x0b, sp)
	.L_modulong__modulong_21:
	.L_modulong__modulong_22:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 360: while (count--);
; genAssign
	ld	a, (0x01, sp)
; genMinus
	dec	(0x01, sp)
; genIfx
	tnz	a
	jreq	00147$
	jp	00108$
00147$:
	.L_modulong__modulong_23:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 362: return a;
; genReturn
	ldw	x, (0x06, sp)
	ldw	y, (0x04, sp)
; genLabel
00111$:
	.L_modulong__modulong_24:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c: 363: }
; genEndFunction
	pop	a
	.L_modulong__modulong_25:
	.L_modulong__modulong_26:
	.L_modulong__modulongendf:
	ret
	.L_modulong__modulong_27:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_modulong__modulong_0)
	.byte	3
	.sleb128	339
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_3-.L_modulong__modulong_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_4-.L_modulong__modulong_3
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_6-.L_modulong__modulong_4
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_7-.L_modulong__modulong_6
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_11-.L_modulong__modulong_7
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_12-.L_modulong__modulong_11
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_14-.L_modulong__modulong_12
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_16-.L_modulong__modulong_14
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_18-.L_modulong__modulong_16
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_19-.L_modulong__modulong_18
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_20-.L_modulong__modulong_19
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_22-.L_modulong__modulong_20
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_23-.L_modulong__modulong_22
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_modulong__modulong_24-.L_modulong__modulong_23
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_modulong__modulong_26-.L_modulong__modulong_24
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_modulong__modulong_25)
	.word	0,(.L_modulong__modulong_27)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.L_modulong__modulong_9)
	.word	0,(.L_modulong__modulong_25)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.L_modulong__modulong_8)
	.word	0,(.L_modulong__modulong_9)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.L_modulong__modulong_2)
	.word	0,(.L_modulong__modulong_8)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.L_modulong__modulong_1)
	.word	0,(.L_modulong__modulong_2)
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_modulong.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.ascii "unsigned long"
	.byte	0
	.byte	4
	.byte	7
	.uleb128	3
	.word	0,214
	.ascii "_modulong"
	.byte	0
	.word	0,(__modulong)
	.word	0,(.L_modulong__modulongendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,99
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "a"
	.byte	0
	.word	0,99
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	6
	.ascii "b"
	.byte	0
	.word	0,99
	.uleb128	5
	.word	0,191
	.word	0,(.L_modulong__modulong_5)
	.word	0,(.L_modulong__modulong_15)
	.uleb128	6
	.word	0,(.L_modulong__modulong_10)
	.word	0,(.L_modulong__modulong_13)
	.uleb128	0
	.uleb128	6
	.word	0,(.L_modulong__modulong_17)
	.word	0,(.L_modulong__modulong_21)
	.uleb128	7
	.byte	1
	.byte	80
	.ascii "count"
	.byte	0
	.word	0,214
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
	.word	0,116
	.ascii "_modulong"
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
	.word	0,(.L_modulong__modulong_1)	;initial loc
	.word	0,.L_modulong__modulong_27-.L_modulong__modulong_1
	.byte	1
	.word	0,(.L_modulong__modulong_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_modulong__modulong_2)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.L_modulong__modulong_8)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.L_modulong__modulong_9)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.L_modulong__modulong_25)
	.byte	14
	.uleb128	2
