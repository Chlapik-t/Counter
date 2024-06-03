;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "printf_large"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global _strlen
	.global __print_format
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
	.section	 .text._output_digit
	.Lprintf_large_output_digit_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 116: output_digit (unsigned char n, bool lower_case, pfn_outputchar output_char, void* p)
; genLabel
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_output_digit:
	.Lprintf_large_output_digit_1:
	.Lprintf_large_output_digit_2:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 118: register unsigned char c = n + (unsigned char)'0';
; genPlus
	ld	a, (0x03, sp)
	add	a, #0x30
	.Lprintf_large_output_digit_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 120: if (c > (unsigned char)'9')
; genCmp
; genCmpTop
	cp	a, #0x39
	jrugt	00117$
	jp	00104$
00117$:
; skipping generated iCode
	.Lprintf_large_output_digit_4:
	.Lprintf_large_output_digit_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 122: c += (unsigned char)('A' - '0' - 10);
; genPlus
	add	a, #0x07
	.Lprintf_large_output_digit_6:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 123: if (lower_case)
; genIfx
	tnz	(0x04, sp)
	jrne	00118$
	jp	00104$
00118$:
	.Lprintf_large_output_digit_7:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 124: c += (unsigned char)('a' - 'A');
; genPlus
	add	a, #0x20
	.Lprintf_large_output_digit_8:
; genLabel
00104$:
	.Lprintf_large_output_digit_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 126: output_char( c, p );
; genIPush
	ldw	x, (0x07, sp)
	pushw	x
	.Lprintf_large_output_digit_10:
; genIPush
	push	a
	.Lprintf_large_output_digit_11:
; genCall
	ldw	x, (0x08, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large_output_digit_12:
; genLabel
00105$:
	.Lprintf_large_output_digit_13:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 127: }
; genEndFunction
	.Lprintf_large_output_digit_14:
	.Lprintf_large_output_digitendf:
	ret
	.Lprintf_large_output_digit_15:
	.section	 .text._output_2digits
	.Lprintf_large_output_2digits_16:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 149: output_2digits (unsigned char b, bool lower_case, pfn_outputchar output_char, void* p)
; genLabel
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_output_2digits:
	.Lprintf_large_output_2digits_17:
	push	a
	.Lprintf_large_output_2digits_18:
	.Lprintf_large_output_2digits_19:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 151: output_digit( b>>4,   lower_case, output_char, p );
; genRightShiftLiteral
	ld	a, (0x04, sp)
	swap	a
	and	a, #0x0f
	ld	(0x01, sp), a
; genIPush
	ldw	x, (0x08, sp)
	pushw	x
	.Lprintf_large_output_2digits_20:
; genIPush
	ldw	x, (0x08, sp)
	pushw	x
	.Lprintf_large_output_2digits_21:
; genIPush
	ld	a, (0x09, sp)
	push	a
	.Lprintf_large_output_2digits_22:
; genIPush
	ld	a, (0x06, sp)
	push	a
	.Lprintf_large_output_2digits_23:
; genCall
	call	_output_digit
	addw	sp, #6
	.Lprintf_large_output_2digits_24:
	.Lprintf_large_output_2digits_25:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 152: output_digit( b&0x0F, lower_case, output_char, p );
; genAssign
	ld	a, (0x04, sp)
; genAnd
	and	a, #0x0f
	ld	(0x01, sp), a
; genIPush
	ldw	x, (0x08, sp)
	pushw	x
	.Lprintf_large_output_2digits_26:
; genIPush
	ldw	x, (0x08, sp)
	pushw	x
	.Lprintf_large_output_2digits_27:
; genIPush
	ld	a, (0x09, sp)
	push	a
	.Lprintf_large_output_2digits_28:
; genIPush
	ld	a, (0x06, sp)
	push	a
	.Lprintf_large_output_2digits_29:
; genCall
	call	_output_digit
	addw	sp, #6
	.Lprintf_large_output_2digits_30:
; genLabel
00101$:
	.Lprintf_large_output_2digits_31:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 153: }
; genEndFunction
	pop	a
	.Lprintf_large_output_2digits_32:
	.Lprintf_large_output_2digits_33:
	.Lprintf_large_output_2digitsendf:
	ret
	.Lprintf_large_output_2digits_34:
	.section	 .text._calculate_digit
	.Lprintf_large_calculate_digit_35:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 168: calculate_digit (value_t _AUTOMEM * value, unsigned char radix)
; genLabel
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 9 bytes.
_calculate_digit:
	.Lprintf_large_calculate_digit_36:
	sub	sp, #9
	.Lprintf_large_calculate_digit_37:
	.Lprintf_large_calculate_digit_38:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 170: unsigned long ul = value->ul;
; genAssign
	ldw	y, (0x0c, sp)
	ldw	(0x01, sp), y
; genPointerGet
	ldw	x, (0x01, sp)
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
; genAssign
	ldw	(0x08, sp), y
	ldw	(0x06, sp), x
	.Lprintf_large_calculate_digit_39:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 171: unsigned char _AUTOMEM * pb4 = &value->byte[4];
; genPlus
	ldw	x, (0x01, sp)
	addw	x, #0x0004
; genAssign
	ldw	(0x03, sp), x
	.Lprintf_large_calculate_digit_40:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 172: unsigned char i = 32;
; genAssign
	ld	a, #0x20
	ld	(0x05, sp), a
	.Lprintf_large_calculate_digit_41:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 174: do
; genLabel
00103$:
	.Lprintf_large_calculate_digit_42:
	.Lprintf_large_calculate_digit_43:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 176: *pb4 = (*pb4 << 1) | ((ul >> 31) & 0x01);
; genPointerGet
	ldw	x, (0x03, sp)
	ld	a, (x)
; genCast
; genAssign
; genLeftShiftLiteral
	sll	a
	ld	xl, a
; genGetABit
	ld	a, (0x06, sp)
	sll	a
	clr	a
	rlc	a
; genCast
; genAssign
; genOr
	pushw	x
	.Lprintf_large_calculate_digit_44:
	or	a, (2, sp)
	popw	x
	.Lprintf_large_calculate_digit_45:
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
	.Lprintf_large_calculate_digit_46:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 177: ul <<= 1;
; genLeftShiftLiteral
	sll	(0x09, sp)
	rlc	(0x08, sp)
	rlc	(0x07, sp)
	rlc	(0x06, sp)
	.Lprintf_large_calculate_digit_47:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 179: if (radix <= *pb4 )
; genCmp
; genCmpTop
	cp	a, (0x0e, sp)
	jrnc	00123$
	jp	00104$
00123$:
; skipping generated iCode
	.Lprintf_large_calculate_digit_48:
	.Lprintf_large_calculate_digit_49:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 181: *pb4 -= radix;
; genPointerGet
	ldw	x, (0x03, sp)
	ld	a, (x)
; genMinus
	sub	a, (0x0e, sp)
; genPointerSet
	ldw	x, (0x03, sp)
	ld	(x), a
	.Lprintf_large_calculate_digit_50:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 182: ul |= 1;
; genOr
	ld	a, (0x09, sp)
	or	a, #0x01
	ld	yl, a
	ld	a, (0x08, sp)
	ld	yh, a
	ld	a, (0x07, sp)
	ld	xl, a
	ld	a, (0x06, sp)
	ld	xh, a
; genAssign
	ldw	(0x08, sp), y
	ldw	(0x06, sp), x
	.Lprintf_large_calculate_digit_51:
; genLabel
00104$:
	.Lprintf_large_calculate_digit_52:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 184: } while (--i);
; genMinus
	ld	a, (0x05, sp)
	dec	a
; genAssign
	ld	(0x05, sp), a
; genIfx
	tnz	a
	jreq	00124$
	jp	00103$
00124$:
	.Lprintf_large_calculate_digit_53:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 185: value->ul = ul;
; genPointerSet
	ldw	x, (0x01, sp)
	ldw	y, (0x08, sp)
	ldw	(0x2, x), y
	ldw	y, (0x06, sp)
	ldw	(x), y
; genLabel
00106$:
	.Lprintf_large_calculate_digit_54:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 186: }
; genEndFunction
	addw	sp, #9
	.Lprintf_large_calculate_digit_55:
	.Lprintf_large_calculate_digit_56:
	.Lprintf_large_calculate_digitendf:
	ret
	.Lprintf_large_calculate_digit_57:
	.section	 .text.__print_format
	.Lprintf_large__print_format_58:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
; genLabel
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 38 bytes.
__print_format:
	.Lprintf_large__print_format_59:
	sub	sp, #38
	.Lprintf_large__print_format_60:
	.Lprintf_large__print_format_61:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 466: charsOutputted = 0;
; genAssign
	clrw	x
	ldw	(0x25, sp), x
	.Lprintf_large__print_format_62:
	.Lprintf_large__print_format_63:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 475: while( c=*format++ )
; genAddrOf
	ldw	x, sp
	incw	x
	ldw	(0x0c, sp), x
	.Lprintf_large__print_format_64:
; skipping iCode since result will be rematerialized
	.Lprintf_large__print_format_65:
	.Lprintf_large__print_format_65:
; skipping iCode since result will be rematerialized
	.Lprintf_large__print_format_66:
	.Lprintf_large__print_format_66:
; genAddrOf
	ldw	x, sp
	addw	x, #11
	ldw	(0x0e, sp), x
	.Lprintf_large__print_format_67:
; skipping iCode since result will be rematerialized
	.Lprintf_large__print_format_68:
; skipping iCode since result will be rematerialized
	.Lprintf_large__print_format_69:
; genAddrOf
	ldw	x, sp
	incw	x
	ldw	(0x10, sp), x
	.Lprintf_large__print_format_70:
; genLabel
00231$:
; genAssign
	ldw	x, (0x2d, sp)
; genPointerGet
	ld	a, (x)
; genPlus
	incw	x
; genAssign
	ldw	(0x2d, sp), x
; genAssign
	ld	xl, a
; genIfx
	tnz	a
	jrne	00627$
	jp	00233$
00627$:
	.Lprintf_large__print_format_71:
	.Lprintf_large__print_format_72:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 477: if ( c=='%' )
; genCmpEQorNE
	ld	a, xl
	cp	a, #0x25
	jrne	00629$
	jp	00630$
00629$:
	jp	00229$
00630$:
	.Lprintf_large__print_format_73:
; skipping generated iCode
	.Lprintf_large__print_format_74:
	.Lprintf_large__print_format_75:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 479: left_justify    = 0;
; genAssign
	clr	(0x12, sp)
	.Lprintf_large__print_format_76:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 480: zero_padding    = 0;
; genAssign
	clr	(0x13, sp)
	.Lprintf_large__print_format_77:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 481: prefix_sign     = 0;
; genAssign
	clr	(0x14, sp)
	.Lprintf_large__print_format_78:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 482: prefix_space    = 0;
; genAssign
	clr	(0x15, sp)
	.Lprintf_large__print_format_79:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 483: signed_argument = 0;
; genAssign
	clr	(0x16, sp)
	.Lprintf_large__print_format_80:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 484: char_argument   = 0;
; genAssign
	clr	(0x17, sp)
	.Lprintf_large__print_format_81:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 485: long_argument   = 0;
; genAssign
	clr	(0x18, sp)
	.Lprintf_large__print_format_82:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 486: float_argument  = 0;
; genAssign
	clr	(0x19, sp)
	.Lprintf_large__print_format_83:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 487: radix           = 0;
; genAssign
	clr	(0x1a, sp)
	.Lprintf_large__print_format_84:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 488: width           = 0;
; genAssign
	clrw	x
	ldw	(0x1b, sp), x
	.Lprintf_large__print_format_85:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 489: decimals        = -1;
; genAssign
	ldw	x, #0xffff
	ldw	(0x23, sp), x
	.Lprintf_large__print_format_86:
	.Lprintf_large__print_format_87:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 491: get_conversion_spec:
; genAssign
	ldw	y, (0x2d, sp)
	ldw	(0x21, sp), y
; genLabel
	.Lprintf_large$_print_format$get_conversion_spec:
00101$:
	.Lprintf_large__print_format_88:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 493: c = *format++;
; genPointerGet
	ldw	x, (0x21, sp)
	ld	a, (x)
; genPlus
	ldw	x, (0x21, sp)
	incw	x
	ldw	(0x21, sp), x
00631$:
; genAssign
	ldw	y, (0x21, sp)
	ldw	(0x2d, sp), y
	.Lprintf_large__print_format_89:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 495: if (c=='%')
; genCmpEQorNE
	cp	a, #0x25
	jrne	00633$
	jp	00634$
00633$:
	jp	00103$
00634$:
	.Lprintf_large__print_format_90:
; skipping generated iCode
	.Lprintf_large__print_format_91:
	.Lprintf_large__print_format_92:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 497: OUTPUT_CHAR(c, p);
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_93:
; genIPush
	push	a
	.Lprintf_large__print_format_94:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_95:
; genPlus
	ldw	x, (0x25, sp)
	incw	x
; genAssign
	ldw	(0x25, sp), x
	.Lprintf_large__print_format_96:
	.Lprintf_large__print_format_96:
	.Lprintf_large__print_format_97:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 498: continue;
; genGoto
	jp	00231$
	.Lprintf_large__print_format_98:
; genLabel
00103$:
	.Lprintf_large__print_format_99:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 501: if (isdigit(c))
; genCmp
; genCmpTop
	cp	a, #0x30
	jrnc	00635$
	jp	00110$
00635$:
; skipping generated iCode
; genCmp
; genCmpTop
	cp	a, #0x39
	jrule	00636$
	jp	00110$
00636$:
; skipping generated iCode
	.Lprintf_large__print_format_100:
	.Lprintf_large__print_format_101:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 503: if (decimals==-1)
; genCmpEQorNE
	ldw	x, (0x23, sp)
	incw	x
	jrne	00638$
	jp	00639$
00638$:
	jp	00107$
00639$:
	.Lprintf_large__print_format_102:
; skipping generated iCode
	.Lprintf_large__print_format_103:
	.Lprintf_large__print_format_104:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 505: width = 10*width + c - '0';
; genMult
; genMultLit
	ldw	x, (0x1b, sp)
	sllw	x
	sllw	x
	addw	x, (0x1b, sp)
	sllw	x
	exgw	x, y
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genCast
; genAssign
	ldw	(0x1f, sp), x
; genPlus
	addw	y, (0x1f, sp)
; genMinus
	subw	y, #0x0030
; genAssign
	ldw	(0x1b, sp), y
	.Lprintf_large__print_format_105:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 506: if (width == 0)
; genIfx
	ldw	x, (0x1b, sp)
	jreq	00640$
	jp	00101$
00640$:
	.Lprintf_large__print_format_106:
	.Lprintf_large__print_format_107:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 509: zero_padding = 1;
; genAssign
	ld	a, #0x01
	ld	(0x13, sp), a
	.Lprintf_large__print_format_108:
; genGoto
	jp	00101$
; genLabel
00107$:
	.Lprintf_large__print_format_109:
	.Lprintf_large__print_format_110:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 514: decimals = 10*decimals + c - '0';
; genMult
; genMultLit
	ldw	x, (0x23, sp)
	sllw	x
	sllw	x
	addw	x, (0x23, sp)
	sllw	x
; genCast
; genAssign
	ld	(0x24, sp), a
	clr	(0x23, sp)
; genPlus
	addw	x, (0x23, sp)
; genMinus
	subw	x, #0x0030
; genAssign
	ldw	(0x23, sp), x
	.Lprintf_large__print_format_111:
	.Lprintf_large__print_format_112:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 516: goto get_conversion_spec;
; genGoto
	jp	00101$
	.Lprintf_large__print_format_113:
; genLabel
00110$:
	.Lprintf_large__print_format_114:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 519: if (c=='.')
; genCmpEQorNE
	cp	a, #0x2e
	jrne	00642$
	jp	00643$
00642$:
	jp	00115$
00643$:
	.Lprintf_large__print_format_115:
; skipping generated iCode
	.Lprintf_large__print_format_116:
	.Lprintf_large__print_format_117:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 521: if (decimals==-1)
; genCmpEQorNE
	ldw	x, (0x23, sp)
	incw	x
	jrne	00645$
	jp	00646$
00645$:
	jp	00101$
00646$:
	.Lprintf_large__print_format_118:
; skipping generated iCode
	.Lprintf_large__print_format_119:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 522: decimals=0;
; genAssign
	clrw	x
	ldw	(0x23, sp), x
	.Lprintf_large__print_format_120:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 525: goto get_conversion_spec;
; genGoto
	jp	00101$
	.Lprintf_large__print_format_121:
; genLabel
00115$:
	.Lprintf_large__print_format_122:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 528: if (islower(c))
; genCmp
; genCmpTop
	cp	a, #0x61
	jrnc	00647$
	jp	00117$
00647$:
; skipping generated iCode
; genCmp
; genCmpTop
	cp	a, #0x7a
	jrule	00648$
	jp	00117$
00648$:
; skipping generated iCode
	.Lprintf_large__print_format_123:
	.Lprintf_large__print_format_124:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 530: c = toupper(c);
; genAnd
	and	a, #0xdf
	.Lprintf_large__print_format_125:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 531: lower_case = 1;
; genAssign
	push	a
	.Lprintf_large__print_format_126:
	ld	a, #0x01
	ld	(0x1e, sp), a
	pop	a
	.Lprintf_large__print_format_127:
	.Lprintf_large__print_format_128:
; genGoto
	jp	00118$
; genLabel
00117$:
	.Lprintf_large__print_format_129:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 534: lower_case = 0;
; genAssign
	clr	(0x1d, sp)
; genLabel
00118$:
	.Lprintf_large__print_format_130:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 536: switch( c )
; genCmpEQorNE
	cp	a, #0x20
	jrne	00650$
	jp	00122$
00650$:
	.Lprintf_large__print_format_131:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x2b
	jrne	00653$
	jp	00121$
00653$:
	.Lprintf_large__print_format_132:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x2d
	jrne	00656$
	jp	00120$
00656$:
	.Lprintf_large__print_format_133:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x42
	jrne	00659$
	jp	00123$
00659$:
	.Lprintf_large__print_format_134:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x43
	jrne	00662$
	jp	00129$
00662$:
	.Lprintf_large__print_format_135:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x44
	jrne	00665$
	jp	00154$
00665$:
	.Lprintf_large__print_format_136:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x46
	jrne	00668$
	jp	00158$
00668$:
	.Lprintf_large__print_format_137:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x48
	jrne	00671$
	jp	00101$
00671$:
	.Lprintf_large__print_format_138:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x49
	jrne	00674$
	jp	00154$
00674$:
	.Lprintf_large__print_format_139:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x4a
	jrne	00677$
	jp	00101$
00677$:
	.Lprintf_large__print_format_140:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x4c
	jrne	00680$
	jp	00128$
00680$:
	.Lprintf_large__print_format_141:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x4f
	jrne	00683$
	jp	00155$
00683$:
	.Lprintf_large__print_format_142:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x50
	jrne	00686$
	jp	00152$
00686$:
	.Lprintf_large__print_format_143:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x53
	jrne	00689$
	jp	00133$
00689$:
	.Lprintf_large__print_format_144:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x54
	jrne	00692$
	jp	00101$
00692$:
	.Lprintf_large__print_format_145:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x55
	jrne	00695$
	jp	00156$
00695$:
	.Lprintf_large__print_format_146:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x58
	jrne	00698$
	jp	00157$
00698$:
	.Lprintf_large__print_format_147:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x5a
	jrne	00701$
	jp	00101$
00701$:
	.Lprintf_large__print_format_148:
; skipping generated iCode
; genGoto
	jp	00159$
	.Lprintf_large__print_format_149:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 538: case '-':
; genLabel
00120$:
	.Lprintf_large__print_format_150:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 539: left_justify = 1;
; genAssign
	ld	a, #0x01
	ld	(0x12, sp), a
	.Lprintf_large__print_format_151:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 540: goto get_conversion_spec;
; genGoto
	jp	00101$
	.Lprintf_large__print_format_152:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 541: case '+':
; genLabel
00121$:
	.Lprintf_large__print_format_153:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 542: prefix_sign = 1;
; genAssign
	ld	a, #0x01
	ld	(0x14, sp), a
	.Lprintf_large__print_format_154:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 543: goto get_conversion_spec;
; genGoto
	jp	00101$
	.Lprintf_large__print_format_155:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 544: case ' ':
; genLabel
00122$:
	.Lprintf_large__print_format_156:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 545: prefix_space = 1;
; genAssign
	ld	a, #0x01
	ld	(0x15, sp), a
	.Lprintf_large__print_format_157:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 546: goto get_conversion_spec;
; genGoto
	jp	00101$
	.Lprintf_large__print_format_158:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 547: case 'B': /* byte */
; genLabel
00123$:
	.Lprintf_large__print_format_159:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 548: char_argument = 1;
; genAssign
	ld	a, #0x01
	ld	(0x17, sp), a
	.Lprintf_large__print_format_160:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 549: goto get_conversion_spec;
; genGoto
	jp	00101$
	.Lprintf_large__print_format_161:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 556: case 'L': /* long */
; genLabel
00128$:
	.Lprintf_large__print_format_162:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 557: long_argument = 1;
; genAssign
	ld	a, #0x01
	ld	(0x18, sp), a
	.Lprintf_large__print_format_163:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 558: goto get_conversion_spec;
; genGoto
	jp	00101$
	.Lprintf_large__print_format_164:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 560: case 'C':
; genLabel
00129$:
	.Lprintf_large__print_format_165:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 561: if( char_argument )
; genIfx
	tnz	(0x17, sp)
	jrne	00703$
	jp	00131$
00703$:
	.Lprintf_large__print_format_166:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 562: c = va_arg(ap,char);
; genPlus
	ldw	x, (0x2f, sp)
	incw	x
; genAssign
	ldw	(0x2f, sp), x
; genAssign
; genPointerGet
	addw	x, #0xffff
	ld	a, (x)
; genGoto
	jp	00132$
; genLabel
00131$:
	.Lprintf_large__print_format_167:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 564: c = va_arg(ap,int);
; genPlus
	ldw	x, (0x2f, sp)
	incw	x
	incw	x
; genAssign
	ldw	(0x2f, sp), x
; genMinus
	decw	x
	decw	x
; genCast
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genLabel
00132$:
	.Lprintf_large__print_format_168:
	.Lprintf_large__print_format_169:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 565: OUTPUT_CHAR( c, p );
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_170:
; genIPush
	push	a
	.Lprintf_large__print_format_171:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_172:
; genPlus
	ldw	x, (0x25, sp)
	incw	x
; genAssign
	ldw	(0x25, sp), x
	.Lprintf_large__print_format_173:
	.Lprintf_large__print_format_174:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 566: break;
; genGoto
	jp	00160$
	.Lprintf_large__print_format_175:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 568: case 'S':
; genLabel
00133$:
	.Lprintf_large__print_format_176:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 569: PTR = va_arg(ap,ptr_t);
; genPlus
	ldw	x, (0x2f, sp)
	incw	x
	incw	x
; genAssign
	ldw	(0x2f, sp), x
; genMinus
	decw	x
	decw	x
; genCast
; genAssign
; genPointerGet
	ldw	x, (x)
; genPointerSet
	ldw	y, (0x0c, sp)
	ldw	(y), x
	.Lprintf_large__print_format_177:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 582: length = strlen(PTR);
; genIPush
	pushw	x
	.Lprintf_large__print_format_178:
; genCall
	call	_strlen
	addw	sp, #2
	.Lprintf_large__print_format_179:
; genAssign
	ldw	(0x1e, sp), x
	.Lprintf_large__print_format_180:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 584: if ( decimals == -1 )
; genCmpEQorNE
	ldw	x, (0x23, sp)
	incw	x
	jrne	00705$
	jp	00706$
00705$:
	jp	00135$
00706$:
	.Lprintf_large__print_format_181:
; skipping generated iCode
	.Lprintf_large__print_format_182:
	.Lprintf_large__print_format_183:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 586: decimals = length;
; genAssign
	ldw	y, (0x1e, sp)
	ldw	(0x23, sp), y
	.Lprintf_large__print_format_184:
; genLabel
00135$:
	.Lprintf_large__print_format_185:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 588: if ( ( !left_justify ) && (length < width) )
; genIfx
	tnz	(0x12, sp)
	jreq	00707$
	jp	00277$
00707$:
; genCmp
; genCmpTop
	ldw	x, (0x1e, sp)
	cpw	x, (0x1b, sp)
	jrc	00708$
	jp	00277$
00708$:
; skipping generated iCode
	.Lprintf_large__print_format_186:
	.Lprintf_large__print_format_187:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 590: width -= length;
; genMinus
	ldw	x, (0x1b, sp)
	subw	x, (0x1e, sp)
; genAssign
	.Lprintf_large__print_format_188:
	.Lprintf_large__print_format_189:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 591: while( width-- != 0 )
; genAssign
; genAssign
	ldw	(0x21, sp), x
; genLabel
00136$:
; genAssign
	ldw	x, (0x21, sp)
; genMinus
	ldw	y, (0x21, sp)
	decw	y
	ldw	(0x21, sp), y
; genIfx
	tnzw	x
	jrne	00709$
	jp	00312$
00709$:
	.Lprintf_large__print_format_190:
	.Lprintf_large__print_format_191:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 593: OUTPUT_CHAR( ' ', p );
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_192:
; genIPush
	push	#0x20
	.Lprintf_large__print_format_193:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_194:
; genPlus
	ldw	x, (0x25, sp)
	incw	x
	ldw	(0x25, sp), x
00710$:
	.Lprintf_large__print_format_195:
; genGoto
	jp	00136$
	.Lprintf_large__print_format_196:
	.Lprintf_large__print_format_197:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 597: while ( (c = *PTR)  && (decimals-- > 0))
; genLabel
00312$:
; genAssign
; genAssign
	ldw	y, (0x21, sp)
	ldw	(0x1b, sp), y
; genLabel
00277$:
; genAssign
	ldw	y, (0x0c, sp)
	ldw	(0x20, sp), y
; genAssign
; genAssign
; genLabel
00143$:
; genPointerGet
	ldw	x, (0x20, sp)
	ldw	x, (x)
; genPointerGet
	ld	a, (x)
; genAssign
	ld	(0x22, sp), a
; genIfx
	tnz	a
	jrne	00711$
	jp	00313$
00711$:
; genCmp
; genCmpTop
	ldw	x, (0x23, sp)
	cpw	x, #0x0000
	jrsgt	00712$
	jp	00313$
00712$:
; skipping generated iCode
; genMinus
	ldw	x, (0x23, sp)
	decw	x
	ldw	(0x23, sp), x
	.Lprintf_large__print_format_198:
	.Lprintf_large__print_format_199:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 599: OUTPUT_CHAR( c, p );
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_200:
; genIPush
	ld	a, (0x24, sp)
	push	a
	.Lprintf_large__print_format_201:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_202:
; genPlus
	ldw	x, (0x25, sp)
	incw	x
	ldw	(0x25, sp), x
00713$:
	.Lprintf_large__print_format_203:
	.Lprintf_large__print_format_203:
	.Lprintf_large__print_format_204:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 600: PTR++;
; genPointerGet
	ldw	x, (0x20, sp)
	ldw	x, (x)
; genPlus
	incw	x
; genPointerSet
	ldw	y, (0x20, sp)
	ldw	(y), x
	.Lprintf_large__print_format_205:
; genGoto
	jp	00143$
	.Lprintf_large__print_format_206:
; genLabel
00313$:
; genAssign
	.Lprintf_large__print_format_207:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 603: if ( left_justify && (length < width))
; genIfx
	tnz	(0x12, sp)
	jrne	00714$
	jp	00160$
00714$:
; genCmp
; genCmpTop
	ldw	x, (0x1e, sp)
	cpw	x, (0x1b, sp)
	jrc	00715$
	jp	00160$
00715$:
; skipping generated iCode
	.Lprintf_large__print_format_208:
	.Lprintf_large__print_format_209:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 605: width -= length;
; genMinus
	ldw	x, (0x1b, sp)
	subw	x, (0x1e, sp)
; genAssign
	.Lprintf_large__print_format_210:
	.Lprintf_large__print_format_211:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 606: while( width-- != 0 )
; genAssign
; genAssign
; genLabel
00146$:
; genAssign
	ldw	(0x23, sp), x
; genMinus
	decw	x
; genIfx
	ldw	y, (0x23, sp)
	jrne	00716$
	jp	00314$
00716$:
	.Lprintf_large__print_format_212:
	.Lprintf_large__print_format_213:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 608: OUTPUT_CHAR( ' ', p );
; genIPush
	pushw	x
	.Lprintf_large__print_format_214:
	ldw	y, (0x2d, sp)
	pushw	y
	.Lprintf_large__print_format_215:
; genIPush
	push	#0x20
	.Lprintf_large__print_format_216:
; genCall
	ldw	x, (0x2e, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_217:
	popw	x
	.Lprintf_large__print_format_218:
; genPlus
	ldw	y, (0x25, sp)
	incw	y
	ldw	(0x25, sp), y
	.Lprintf_large__print_format_219:
; genGoto
	jp	00146$
	.Lprintf_large__print_format_220:
	.Lprintf_large__print_format_221:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 613: case 'P':
; genLabel
00152$:
	.Lprintf_large__print_format_222:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 614: PTR = va_arg(ap,ptr_t);
; genPlus
	ldw	x, (0x2f, sp)
	incw	x
	incw	x
; genAssign
	ldw	(0x2f, sp), x
; genMinus
	decw	x
	decw	x
; genCast
; genAssign
; genPointerGet
	ldw	x, (x)
; genPointerSet
	ldw	y, (0x0c, sp)
	ldw	(y), x
	.Lprintf_large__print_format_223:
	.Lprintf_large__print_format_224:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 658: OUTPUT_CHAR('0', p);
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_225:
; genIPush
	push	#0x30
	.Lprintf_large__print_format_226:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_227:
; genPlus
	ldw	x, (0x25, sp)
	incw	x
; genAssign
	.Lprintf_large__print_format_228:
	.Lprintf_large__print_format_228:
	.Lprintf_large__print_format_229:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 659: OUTPUT_CHAR('x', p);
; genIPush
	pushw	x
	.Lprintf_large__print_format_230:
	ldw	y, (0x2d, sp)
	pushw	y
	.Lprintf_large__print_format_231:
; genIPush
	push	#0x78
	.Lprintf_large__print_format_232:
; genCall
	ldw	x, (0x2e, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_233:
	popw	x
	.Lprintf_large__print_format_234:
; genPlus
	incw	x
; genAssign
	ldw	(0x24, sp), x
	.Lprintf_large__print_format_235:
	.Lprintf_large__print_format_235:
	.Lprintf_large__print_format_236:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 660: OUTPUT_2DIGITS( value.byte[1] );
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x02, sp)
	ld	(0x26, sp), a
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_237:
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_238:
; genIPush
	ld	a, (0x21, sp)
	push	a
	.Lprintf_large__print_format_239:
; genIPush
	ld	a, (0x2b, sp)
	push	a
	.Lprintf_large__print_format_240:
; genCall
	call	_output_2digits
	addw	sp, #6
	.Lprintf_large__print_format_241:
; genPlus
	ldw	x, (0x24, sp)
	incw	x
	incw	x
; genAssign
	ldw	(0x24, sp), x
	.Lprintf_large__print_format_242:
	.Lprintf_large__print_format_243:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 661: OUTPUT_2DIGITS( value.byte[0] );
; genPointerGet
	ld	a, (0x01, sp)
	ld	(0x26, sp), a
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_244:
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_245:
; genIPush
	ld	a, (0x21, sp)
	push	a
	.Lprintf_large__print_format_246:
; genIPush
	ld	a, (0x2b, sp)
	push	a
	.Lprintf_large__print_format_247:
; genCall
	call	_output_2digits
	addw	sp, #6
	.Lprintf_large__print_format_248:
; genPlus
	ldw	x, (0x24, sp)
	incw	x
	incw	x
; genAssign
	ldw	(0x25, sp), x
	.Lprintf_large__print_format_249:
	.Lprintf_large__print_format_250:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 663: break;
; genGoto
	jp	00160$
	.Lprintf_large__print_format_251:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 666: case 'I':
; genLabel
00154$:
	.Lprintf_large__print_format_252:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 667: signed_argument = 1;
; genAssign
	ld	a, #0x01
	ld	(0x16, sp), a
	.Lprintf_large__print_format_253:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 668: radix = 10;
; genAssign
	ld	a, #0x0a
	ld	(0x1a, sp), a
	.Lprintf_large__print_format_254:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 669: break;
; genGoto
	jp	00160$
	.Lprintf_large__print_format_255:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 671: case 'O':
; genLabel
00155$:
	.Lprintf_large__print_format_256:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 672: radix = 8;
; genAssign
	ld	a, #0x08
	ld	(0x1a, sp), a
	.Lprintf_large__print_format_257:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 673: break;
; genGoto
	jp	00160$
	.Lprintf_large__print_format_258:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 675: case 'U':
; genLabel
00156$:
	.Lprintf_large__print_format_259:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 676: radix = 10;
; genAssign
	ld	a, #0x0a
	ld	(0x1a, sp), a
	.Lprintf_large__print_format_260:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 677: break;
; genGoto
	jp	00160$
	.Lprintf_large__print_format_261:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 679: case 'X':
; genLabel
00157$:
	.Lprintf_large__print_format_262:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 680: radix = 16;
; genAssign
	ld	a, #0x10
	ld	(0x1a, sp), a
	.Lprintf_large__print_format_263:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 681: break;
; genGoto
	jp	00160$
	.Lprintf_large__print_format_264:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 683: case 'F':
; genLabel
00158$:
	.Lprintf_large__print_format_265:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 684: float_argument=1;
; genAssign
	ld	a, #0x01
	ld	(0x19, sp), a
	.Lprintf_large__print_format_266:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 685: break;
; genGoto
	jp	00160$
	.Lprintf_large__print_format_267:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 687: default:
; genLabel
00159$:
	.Lprintf_large__print_format_268:
	.Lprintf_large__print_format_269:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 689: OUTPUT_CHAR( c, p );
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_270:
; genIPush
	push	a
	.Lprintf_large__print_format_271:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_272:
; genPlus
	ldw	x, (0x25, sp)
	incw	x
; genAssign
	ldw	(0x25, sp), x
	.Lprintf_large__print_format_273:
	.Lprintf_large__print_format_274:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 872: return charsOutputted;
; genGoto
	jp	00160$
	.Lprintf_large__print_format_275:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 691: }
; genLabel
00314$:
; genAssign
; genAssign
	ldw	(0x1b, sp), x
; genLabel
00160$:
	.Lprintf_large__print_format_276:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 693: if (float_argument)
; genIfx
	tnz	(0x19, sp)
	jrne	00717$
	jp	00226$
00717$:
	.Lprintf_large__print_format_277:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 695: value.f = va_arg(ap, float);
; skipping iCode since result will be rematerialized
; genPlus
	ldw	x, (0x2f, sp)
	addw	x, #0x0004
; genAssign
	ldw	(0x2f, sp), x
; genMinus
	subw	x, #0x0004
; genCast
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
; genPointerSet
	ldw	(0x03, sp), y
	ldw	(0x01, sp), x
	.Lprintf_large__print_format_278:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 697: PTR="<NO FLOAT>";
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #(___str_0 + 0)
	ldw	(0x01, sp), x
	.Lprintf_large__print_format_279:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 698: while (c=*PTR++)
; genAssign
	ldw	y, (0x25, sp)
	ldw	(0x23, sp), y
; genLabel
00161$:
; genPointerGet
	ldw	x, (0x0c, sp)
	ldw	x, (x)
	ldw	(0x21, sp), x
; genPlus
	ldw	x, (0x21, sp)
	incw	x
; genPointerSet
	ldw	y, (0x0c, sp)
	ldw	(y), x
; genPointerGet
	ldw	x, (0x21, sp)
	ld	a, (x)
; genAssign
	ld	xl, a
; genIfx
	tnz	a
	jrne	00718$
	jp	00231$
00718$:
	.Lprintf_large__print_format_280:
	.Lprintf_large__print_format_281:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 700: OUTPUT_CHAR (c, p);
; genIPush
	ldw	y, (0x2b, sp)
	pushw	y
	.Lprintf_large__print_format_282:
; genIPush
	ld	a, xl
	push	a
	.Lprintf_large__print_format_283:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_284:
; genPlus
	ldw	x, (0x23, sp)
	incw	x
	ldw	(0x23, sp), x
00719$:
; genAssign
	ldw	y, (0x23, sp)
	ldw	(0x25, sp), y
	.Lprintf_large__print_format_285:
; genGoto
	jp	00161$
	.Lprintf_large__print_format_286:
; genLabel
00226$:
	.Lprintf_large__print_format_287:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 718: else if (radix != 0)
; genIfx
	tnz	(0x1a, sp)
	jrne	00720$
	jp	00231$
00720$:
	.Lprintf_large__print_format_288:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 723: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
; genCast
; genAssign
	ldw	x, (0x0e, sp)
; genAssign
	ldw	(0x22, sp), x
	.Lprintf_large__print_format_289:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 726: if (char_argument)
; genIfx
	tnz	(0x17, sp)
	jrne	00721$
	jp	00172$
00721$:
	.Lprintf_large__print_format_290:
	.Lprintf_large__print_format_291:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 728: value.l = va_arg(ap, char);
; skipping iCode since result will be rematerialized
; genPlus
	ldw	x, (0x2f, sp)
	incw	x
; genAssign
	ldw	(0x2f, sp), x
; genAssign
; genPointerGet
	addw	x, #0xffff
	ld	a, (x)
; genCast
; genAssign
	clrw	x
	ld	xl, a
	clrw	y
; genPointerSet
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
	.Lprintf_large__print_format_292:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 729: if (!signed_argument)
; genIfx
	tnz	(0x16, sp)
	jreq	00722$
	jp	00173$
00722$:
	.Lprintf_large__print_format_293:
	.Lprintf_large__print_format_294:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 731: value.l &= 0xFF;
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, (0x03, sp)
	ldw	y, (0x01, sp)
; genAnd
	clr	a
	ld	xh, a
	clrw	y
; genPointerSet
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
	.Lprintf_large__print_format_295:
; genGoto
	jp	00173$
; genLabel
00172$:
	.Lprintf_large__print_format_296:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 734: else if (long_argument)
; genIfx
	tnz	(0x18, sp)
	jrne	00723$
	jp	00169$
00723$:
	.Lprintf_large__print_format_297:
	.Lprintf_large__print_format_298:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 736: value.l = va_arg(ap, long);
; skipping iCode since result will be rematerialized
; genPlus
	ldw	x, (0x2f, sp)
	addw	x, #0x0004
; genAssign
	ldw	(0x2f, sp), x
; genMinus
	subw	x, #0x0004
; genCast
; genAssign
; genPointerGet
	ldw	y, x
	ldw	y, (0x2, y)
	ldw	x, (x)
; genPointerSet
	ldw	(0x03, sp), y
	ldw	(0x01, sp), x
	.Lprintf_large__print_format_299:
; genGoto
	jp	00173$
; genLabel
00169$:
	.Lprintf_large__print_format_300:
	.Lprintf_large__print_format_301:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 740: value.l = va_arg(ap, int);
; skipping iCode since result will be rematerialized
; genPlus
	ldw	x, (0x2f, sp)
	incw	x
	incw	x
; genAssign
	ldw	(0x2f, sp), x
; genMinus
	decw	x
	decw	x
; genCast
; genAssign
; genPointerGet
	ldw	x, (x)
; genCast
	clrw	y
	tnzw	x
	jrpl	00724$
	decw	y
00724$:
; genPointerSet
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
	.Lprintf_large__print_format_302:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 741: if (!signed_argument)
; genIfx
	tnz	(0x16, sp)
	jreq	00725$
	jp	00173$
00725$:
	.Lprintf_large__print_format_303:
	.Lprintf_large__print_format_304:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 743: value.l &= 0xFFFF;
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	y, (0x03, sp)
	ldw	x, (0x01, sp)
; genAnd
	clrw	x
; genPointerSet
	ldw	(0x03, sp), y
	ldw	(0x01, sp), x
	.Lprintf_large__print_format_305:
; genLabel
00173$:
	.Lprintf_large__print_format_306:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 747: if ( signed_argument )
; genIfx
	tnz	(0x16, sp)
	jrne	00726$
	jp	00178$
00726$:
	.Lprintf_large__print_format_307:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 749: if (value.l < 0)
; genPointerGet
	ldw	y, (0x03, sp)
	ldw	x, (0x01, sp)
; genCmp
; genCmpTop
	tnzw	x
	jrmi	00727$
	jp	00175$
00727$:
; skipping generated iCode
	.Lprintf_large__print_format_308:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 750: value.l = -value.l;
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	y, (0x03, sp)
	ldw	(0x20, sp), y
	ldw	y, (0x01, sp)
	ldw	(0x1e, sp), y
; genUminus
	ldw	y, (0x20, sp)
	negw	y
	ldw	x, (0x1e, sp)
	jrnc	00728$
	incw	x
00728$:
	negw	x
; genPointerSet
	ldw	(0x03, sp), y
	ldw	(0x01, sp), x
; genGoto
	jp	00178$
; genLabel
00175$:
	.Lprintf_large__print_format_309:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 752: signed_argument = 0;
; genAssign
	clr	(0x16, sp)
	.Lprintf_large__print_format_310:
; genLabel
00178$:
	.Lprintf_large__print_format_311:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 755: length=0;
; genAssign
	clrw	x
	.Lprintf_large__print_format_312:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 756: lsd = 1;
; genAssign
	ld	a, #0x01
	ld	(0x24, sp), a
	.Lprintf_large__print_format_313:
	.Lprintf_large__print_format_314:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 758: do {
; genAssign
	ldw	y, (0x22, sp)
	ldw	(0x20, sp), y
; genAssign
	ldw	(0x22, sp), x
; genLabel
00182$:
	.Lprintf_large__print_format_315:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 759: value.byte[4] = 0;
; skipping iCode since result will be rematerialized
; genPointerSet
	clr	(0x05, sp)
	.Lprintf_large__print_format_316:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 761: calculate_digit(&value, radix);
; genCast
; genAssign
	ldw	x, (0x10, sp)
; genIPush
	ld	a, (0x1a, sp)
	push	a
	.Lprintf_large__print_format_317:
; genIPush
	pushw	x
	.Lprintf_large__print_format_318:
; genCall
	call	_calculate_digit
	addw	sp, #3
	.Lprintf_large__print_format_319:
	.Lprintf_large__print_format_320:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 765: if (!lsd)
; genIfx
	tnz	(0x24, sp)
	jreq	00729$
	jp	00180$
00729$:
	.Lprintf_large__print_format_321:
	.Lprintf_large__print_format_322:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 767: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x05, sp)
; genCast
; genAssign
; genLeftShiftLiteral
	swap	a
	and	a, #0xf0
	ld	xl, a
; genPointerGet
	ld	a, (0x05, sp)
; genRightShiftLiteral
	swap	a
	and	a, #0x0f
; genCast
; genAssign
; genOr
	pushw	x
	.Lprintf_large__print_format_323:
	or	a, (2, sp)
	popw	x
	.Lprintf_large__print_format_324:
	ld	(0x1f, sp), a
; genPointerGet
	ldw	x, (0x20, sp)
	ld	a, (x)
; genOr
	or	a, (0x1f, sp)
; genPointerSet
	ldw	x, (0x20, sp)
	ld	(x), a
	.Lprintf_large__print_format_325:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 768: pstore--;
; genMinus
	ldw	x, (0x20, sp)
	decw	x
	ldw	(0x20, sp), x
	.Lprintf_large__print_format_326:
; genGoto
	jp	00181$
; genLabel
00180$:
	.Lprintf_large__print_format_327:
	.Lprintf_large__print_format_328:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 772: *pstore = value.byte[4];
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x05, sp)
; genPointerSet
	ldw	x, (0x20, sp)
	ld	(x), a
	.Lprintf_large__print_format_329:
; genLabel
00181$:
	.Lprintf_large__print_format_330:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 774: length++;
; genPlus
	ldw	x, (0x22, sp)
	incw	x
	ldw	(0x22, sp), x
00730$:
	.Lprintf_large__print_format_331:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 775: lsd = !lsd;
; genNot
	ld	a, (0x24, sp)
	sub	a, #0x01
	clr	a
	rlc	a
	ld	(0x24, sp), a
	.Lprintf_large__print_format_332:
	.Lprintf_large__print_format_333:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 776: } while( value.ul );
; genPointerGet
	ldw	x, (0x03, sp)
	ldw	y, (0x01, sp)
; genIfx
	tnzw	x
	jrne	00731$
	tnzw	y
	jreq	00732$
00731$:
	jp	00182$
00732$:
	.Lprintf_large__print_format_334:
	.Lprintf_large__print_format_335:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 778: if (width == 0)
; genAssign
	ldw	y, (0x20, sp)
	ldw	(0x1e, sp), y
; genAssign
	ldw	y, (0x22, sp)
	ldw	(0x20, sp), y
; genIfx
	ldw	x, (0x1b, sp)
	jreq	00733$
	jp	00186$
00733$:
	.Lprintf_large__print_format_336:
	.Lprintf_large__print_format_337:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 783: width = 1;
; genAssign
	ldw	x, #0x0001
	ldw	(0x1b, sp), x
	.Lprintf_large__print_format_338:
; genLabel
00186$:
	.Lprintf_large__print_format_339:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 787: if (!zero_padding && !left_justify)
; genIfx
	tnz	(0x13, sp)
	jreq	00734$
	jp	00191$
00734$:
; genIfx
	tnz	(0x12, sp)
	jreq	00735$
	jp	00191$
00735$:
	.Lprintf_large__print_format_340:
	.Lprintf_large__print_format_341:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 789: while ( width > (unsigned char) (length+1) )
; genAssign
; genAssign
	ldw	y, (0x1b, sp)
	ldw	(0x22, sp), y
	.Lprintf_large__print_format_342:
; genLabel
00187$:
; genCast
; genAssign
	ld	a, (0x21, sp)
; genCast
; genAssign
; genPlus
	inc	a
; genCast
; genAssign
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genCmp
; genCmpTop
	cpw	x, (0x22, sp)
	jrc	00736$
	jp	00316$
00736$:
; skipping generated iCode
	.Lprintf_large__print_format_343:
	.Lprintf_large__print_format_344:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 791: OUTPUT_CHAR( ' ', p );
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_345:
; genIPush
	push	#0x20
	.Lprintf_large__print_format_346:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_347:
; genPlus
	ldw	x, (0x25, sp)
	incw	x
	ldw	(0x25, sp), x
00737$:
	.Lprintf_large__print_format_348:
	.Lprintf_large__print_format_348:
	.Lprintf_large__print_format_349:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 792: width--;
; genMinus
	ldw	x, (0x22, sp)
	decw	x
	ldw	(0x22, sp), x
	.Lprintf_large__print_format_350:
; genGoto
	jp	00187$
	.Lprintf_large__print_format_351:
; genLabel
00316$:
; genAssign
; genAssign
	ldw	y, (0x22, sp)
	ldw	(0x1b, sp), y
; genLabel
00191$:
	.Lprintf_large__print_format_352:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 796: if (signed_argument) // this now means the original value was negative
; genIfx
	tnz	(0x16, sp)
	jrne	00738$
	jp	00201$
00738$:
	.Lprintf_large__print_format_353:
	.Lprintf_large__print_format_354:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 798: OUTPUT_CHAR( '-', p );
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_355:
; genIPush
	push	#0x2d
	.Lprintf_large__print_format_356:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_357:
; genPlus
	ldw	x, (0x25, sp)
	incw	x
; genAssign
	ldw	(0x25, sp), x
	.Lprintf_large__print_format_358:
	.Lprintf_large__print_format_358:
	.Lprintf_large__print_format_359:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 800: width--;
; genMinus
	ldw	x, (0x1b, sp)
	decw	x
; genAssign
	ldw	(0x1b, sp), x
	.Lprintf_large__print_format_360:
; genGoto
	jp	00202$
; genLabel
00201$:
	.Lprintf_large__print_format_361:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 802: else if (length != 0)
; genIfx
	ldw	x, (0x20, sp)
	jrne	00739$
	jp	00202$
00739$:
	.Lprintf_large__print_format_362:
	.Lprintf_large__print_format_363:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 805: if (prefix_sign)
; genIfx
	tnz	(0x14, sp)
	jrne	00740$
	jp	00196$
00740$:
	.Lprintf_large__print_format_364:
	.Lprintf_large__print_format_365:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 807: OUTPUT_CHAR( '+', p );
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_366:
; genIPush
	push	#0x2b
	.Lprintf_large__print_format_367:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_368:
; genPlus
	ldw	x, (0x25, sp)
	incw	x
; genAssign
	ldw	(0x25, sp), x
	.Lprintf_large__print_format_369:
	.Lprintf_large__print_format_369:
	.Lprintf_large__print_format_370:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 809: width--;
; genMinus
	ldw	x, (0x1b, sp)
	decw	x
; genAssign
	ldw	(0x1b, sp), x
	.Lprintf_large__print_format_371:
; genGoto
	jp	00202$
; genLabel
00196$:
	.Lprintf_large__print_format_372:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 811: else if (prefix_space)
; genIfx
	tnz	(0x15, sp)
	jrne	00741$
	jp	00202$
00741$:
	.Lprintf_large__print_format_373:
	.Lprintf_large__print_format_374:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 813: OUTPUT_CHAR( ' ', p );
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_375:
; genIPush
	push	#0x20
	.Lprintf_large__print_format_376:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_377:
; genPlus
	ldw	x, (0x25, sp)
	incw	x
; genAssign
	ldw	(0x25, sp), x
	.Lprintf_large__print_format_378:
	.Lprintf_large__print_format_378:
	.Lprintf_large__print_format_379:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 815: width--;
; genMinus
	ldw	x, (0x1b, sp)
	decw	x
; genAssign
	ldw	(0x1b, sp), x
	.Lprintf_large__print_format_380:
; genLabel
00202$:
	.Lprintf_large__print_format_381:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 820: if (!left_justify)
; genIfx
	tnz	(0x12, sp)
	jreq	00742$
	jp	00210$
00742$:
	.Lprintf_large__print_format_382:
	.Lprintf_large__print_format_383:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 822: while ( width-- > length )
; genAssign
; genAssign
	ldw	y, (0x1b, sp)
	ldw	(0x22, sp), y
	.Lprintf_large__print_format_384:
; genLabel
00203$:
; genAssign
	ldw	y, (0x22, sp)
; genMinus
	ldw	x, (0x22, sp)
	decw	x
	ldw	(0x22, sp), x
; genCmp
; genCmpTop
	ldw	x, y
	cpw	x, (0x20, sp)
	jrugt	00743$
	jp	00317$
00743$:
; skipping generated iCode
	.Lprintf_large__print_format_385:
	.Lprintf_large__print_format_386:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 824: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
; genIfx
	tnz	(0x13, sp)
	jrne	00744$
	jp	00236$
00744$:
; genAssign
	ldw	x, #0x0030
; genGoto
	jp	00237$
; genLabel
00236$:
; genAssign
	ldw	x, #0x0020
; genLabel
00237$:
; genCast
; genAssign
	ld	a, xl
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_387:
; genIPush
	push	a
	.Lprintf_large__print_format_388:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_389:
; genPlus
	ldw	x, (0x25, sp)
	incw	x
	ldw	(0x25, sp), x
00745$:
	.Lprintf_large__print_format_390:
; genGoto
	jp	00203$
	.Lprintf_large__print_format_391:
; genLabel
00210$:
	.Lprintf_large__print_format_392:
	.Lprintf_large__print_format_393:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 830: if (width > length)
; genCmp
; genCmpTop
	ldw	x, (0x1b, sp)
	cpw	x, (0x20, sp)
	jrugt	00746$
	jp	00207$
00746$:
; skipping generated iCode
	.Lprintf_large__print_format_394:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 831: width -= length;
; genMinus
	ldw	x, (0x1b, sp)
	subw	x, (0x20, sp)
; genAssign
	ldw	(0x1b, sp), x
; genGoto
	jp	00309$
; genLabel
00207$:
	.Lprintf_large__print_format_395:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 833: width = 0;
; genAssign
	clrw	x
	ldw	(0x1b, sp), x
	.Lprintf_large__print_format_396:
	.Lprintf_large__print_format_397:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 872: return charsOutputted;
; genGoto
	jp	00309$
	.Lprintf_large__print_format_398:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 837: while( length-- )
; genLabel
00317$:
; genAssign
; genAssign
	ldw	y, (0x22, sp)
	ldw	(0x1b, sp), y
; genLabel
00309$:
; genAssign
	ldw	y, (0x1e, sp)
	ldw	(0x22, sp), y
; genAssign
; genAssign
; genLabel
00215$:
; genAssign
	ldw	x, (0x20, sp)
; genMinus
	ldw	y, (0x20, sp)
	decw	y
	ldw	(0x20, sp), y
; genIfx
	tnzw	x
	jrne	00747$
	jp	00318$
00747$:
	.Lprintf_large__print_format_399:
	.Lprintf_large__print_format_400:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 839: lsd = !lsd;
; genNot
	ld	a, (0x24, sp)
	sub	a, #0x01
	clr	a
	rlc	a
	ld	(0x24, sp), a
	.Lprintf_large__print_format_401:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 840: if (!lsd)
; genIfx
	tnz	(0x24, sp)
	jreq	00748$
	jp	00213$
00748$:
	.Lprintf_large__print_format_402:
	.Lprintf_large__print_format_403:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 842: pstore++;
; genPlus
	ldw	x, (0x22, sp)
	incw	x
	ldw	(0x22, sp), x
00749$:
	.Lprintf_large__print_format_404:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 843: value.byte[4] = *pstore >> 4;
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, (0x22, sp)
	ld	a, (x)
; genRightShiftLiteral
	swap	a
	and	a, #0x0f
; genPointerSet
	ld	(0x05, sp), a
	.Lprintf_large__print_format_405:
; genGoto
	jp	00214$
; genLabel
00213$:
	.Lprintf_large__print_format_406:
	.Lprintf_large__print_format_407:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 847: value.byte[4] = *pstore & 0x0F;
; skipping iCode since result will be rematerialized
; genPointerGet
	ldw	x, (0x22, sp)
	ld	a, (x)
; genAnd
	and	a, #0x0f
; genPointerSet
	ld	(0x05, sp), a
	.Lprintf_large__print_format_408:
; genLabel
00214$:
	.Lprintf_large__print_format_409:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 850: output_digit( value.byte[4], lower_case, output_char, p );
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, (0x05, sp)
	ld	(0x1f, sp), a
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_410:
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_411:
; genIPush
	ld	a, (0x21, sp)
	push	a
	.Lprintf_large__print_format_412:
; genIPush
	ld	a, (0x24, sp)
	push	a
	.Lprintf_large__print_format_413:
; genCall
	call	_output_digit
	addw	sp, #6
	.Lprintf_large__print_format_414:
	.Lprintf_large__print_format_415:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 851: charsOutputted++;
; genPlus
	ldw	x, (0x25, sp)
	incw	x
	ldw	(0x25, sp), x
00750$:
	.Lprintf_large__print_format_416:
; genGoto
	jp	00215$
	.Lprintf_large__print_format_417:
; genLabel
00318$:
; genAssign
	.Lprintf_large__print_format_418:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 856: if (left_justify)
; genIfx
	tnz	(0x12, sp)
	jrne	00751$
	jp	00231$
00751$:
	.Lprintf_large__print_format_419:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 858: while (width-- > 0)
; genAssign
	ldw	y, (0x25, sp)
	ldw	(0x21, sp), y
; genAssign
	ldw	y, (0x1b, sp)
	ldw	(0x23, sp), y
	.Lprintf_large__print_format_420:
; genLabel
00218$:
; genAssign
	ldw	x, (0x23, sp)
; genMinus
	ldw	y, (0x23, sp)
	decw	y
	ldw	(0x23, sp), y
; genIfx
	tnzw	x
	jrne	00752$
	jp	00231$
00752$:
	.Lprintf_large__print_format_421:
	.Lprintf_large__print_format_422:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 860: OUTPUT_CHAR(' ', p);
; genIPush
	ldw	x, (0x2b, sp)
	pushw	x
	.Lprintf_large__print_format_423:
; genIPush
	push	#0x20
	.Lprintf_large__print_format_424:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_425:
; genPlus
	ldw	x, (0x21, sp)
	incw	x
	ldw	(0x21, sp), x
00753$:
; genAssign
	ldw	y, (0x21, sp)
	ldw	(0x25, sp), y
	.Lprintf_large__print_format_426:
; genGoto
	jp	00218$
	.Lprintf_large__print_format_427:
; genLabel
00229$:
	.Lprintf_large__print_format_428:
	.Lprintf_large__print_format_429:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 868: OUTPUT_CHAR( c, p );
; genIPush
	ldw	y, (0x2b, sp)
	pushw	y
	.Lprintf_large__print_format_430:
; genIPush
	ld	a, xl
	push	a
	.Lprintf_large__print_format_431:
; genCall
	ldw	x, (0x2c, sp)
	call	(x)
	addw	sp, #3
	.Lprintf_large__print_format_432:
; genPlus
	ldw	x, (0x25, sp)
	incw	x
; genAssign
	ldw	(0x25, sp), x
	.Lprintf_large__print_format_433:
; genGoto
	jp	00231$
; genLabel
00233$:
	.Lprintf_large__print_format_434:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 872: return charsOutputted;
; genReturn
	ldw	x, (0x25, sp)
; genLabel
00234$:
	.Lprintf_large__print_format_435:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c: 873: }
; genEndFunction
	addw	sp, #38
	.Lprintf_large__print_format_436:
	.Lprintf_large__print_format_437:
	.Lprintf_large__print_formatendf:
	ret
	.Lprintf_large__print_format_438:
	.section .text
	.section .text.rodata
	.section .text.rodata.___str_0
___str_0:
	.ascii "<NO FLOAT>"
	.byte 0x00
	.section .text
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lprintf_large_output_digit_0)
	.byte	3
	.sleb128	115
	.byte	1
	.byte	9
	.word	.Lprintf_large_output_digit_2-.Lprintf_large_output_digit_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large_output_digit_3-.Lprintf_large_output_digit_2
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large_output_digit_5-.Lprintf_large_output_digit_3
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large_output_digit_6-.Lprintf_large_output_digit_5
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large_output_digit_7-.Lprintf_large_output_digit_6
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large_output_digit_9-.Lprintf_large_output_digit_7
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large_output_digit_13-.Lprintf_large_output_digit_9
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lprintf_large_output_digit_14-.Lprintf_large_output_digit_13
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lprintf_large_output_2digits_16)
	.byte	3
	.sleb128	148
	.byte	1
	.byte	9
	.word	.Lprintf_large_output_2digits_19-.Lprintf_large_output_2digits_16
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large_output_2digits_25-.Lprintf_large_output_2digits_19
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large_output_2digits_31-.Lprintf_large_output_2digits_25
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lprintf_large_output_2digits_33-.Lprintf_large_output_2digits_31
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lprintf_large_calculate_digit_35)
	.byte	3
	.sleb128	167
	.byte	1
	.byte	9
	.word	.Lprintf_large_calculate_digit_38-.Lprintf_large_calculate_digit_35
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large_calculate_digit_39-.Lprintf_large_calculate_digit_38
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large_calculate_digit_40-.Lprintf_large_calculate_digit_39
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large_calculate_digit_41-.Lprintf_large_calculate_digit_40
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large_calculate_digit_43-.Lprintf_large_calculate_digit_41
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large_calculate_digit_46-.Lprintf_large_calculate_digit_43
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large_calculate_digit_47-.Lprintf_large_calculate_digit_46
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large_calculate_digit_49-.Lprintf_large_calculate_digit_47
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large_calculate_digit_50-.Lprintf_large_calculate_digit_49
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large_calculate_digit_52-.Lprintf_large_calculate_digit_50
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large_calculate_digit_53-.Lprintf_large_calculate_digit_52
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large_calculate_digit_54-.Lprintf_large_calculate_digit_53
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lprintf_large_calculate_digit_56-.Lprintf_large_calculate_digit_54
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lprintf_large__print_format_58)
	.byte	3
	.sleb128	433
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_61-.Lprintf_large__print_format_58
	.byte	3
	.sleb128	32
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_63-.Lprintf_large__print_format_61
	.byte	3
	.sleb128	9
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_72-.Lprintf_large__print_format_63
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_75-.Lprintf_large__print_format_72
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_76-.Lprintf_large__print_format_75
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_77-.Lprintf_large__print_format_76
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_78-.Lprintf_large__print_format_77
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_79-.Lprintf_large__print_format_78
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_80-.Lprintf_large__print_format_79
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_81-.Lprintf_large__print_format_80
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_82-.Lprintf_large__print_format_81
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_83-.Lprintf_large__print_format_82
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_84-.Lprintf_large__print_format_83
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_85-.Lprintf_large__print_format_84
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_87-.Lprintf_large__print_format_85
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_88-.Lprintf_large__print_format_87
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_89-.Lprintf_large__print_format_88
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_92-.Lprintf_large__print_format_89
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_97-.Lprintf_large__print_format_92
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_99-.Lprintf_large__print_format_97
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_101-.Lprintf_large__print_format_99
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_104-.Lprintf_large__print_format_101
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_105-.Lprintf_large__print_format_104
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_107-.Lprintf_large__print_format_105
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_110-.Lprintf_large__print_format_107
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_112-.Lprintf_large__print_format_110
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_114-.Lprintf_large__print_format_112
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_117-.Lprintf_large__print_format_114
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_119-.Lprintf_large__print_format_117
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_120-.Lprintf_large__print_format_119
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_122-.Lprintf_large__print_format_120
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_124-.Lprintf_large__print_format_122
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_125-.Lprintf_large__print_format_124
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_129-.Lprintf_large__print_format_125
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_130-.Lprintf_large__print_format_129
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_149-.Lprintf_large__print_format_130
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_150-.Lprintf_large__print_format_149
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_151-.Lprintf_large__print_format_150
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_152-.Lprintf_large__print_format_151
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_153-.Lprintf_large__print_format_152
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_154-.Lprintf_large__print_format_153
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_155-.Lprintf_large__print_format_154
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_156-.Lprintf_large__print_format_155
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_157-.Lprintf_large__print_format_156
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_158-.Lprintf_large__print_format_157
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_159-.Lprintf_large__print_format_158
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_160-.Lprintf_large__print_format_159
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_161-.Lprintf_large__print_format_160
	.byte	3
	.sleb128	7
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_162-.Lprintf_large__print_format_161
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_163-.Lprintf_large__print_format_162
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_164-.Lprintf_large__print_format_163
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_165-.Lprintf_large__print_format_164
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_166-.Lprintf_large__print_format_165
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_167-.Lprintf_large__print_format_166
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_169-.Lprintf_large__print_format_167
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_174-.Lprintf_large__print_format_169
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_175-.Lprintf_large__print_format_174
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_176-.Lprintf_large__print_format_175
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_177-.Lprintf_large__print_format_176
	.byte	3
	.sleb128	13
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_180-.Lprintf_large__print_format_177
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_183-.Lprintf_large__print_format_180
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_185-.Lprintf_large__print_format_183
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_187-.Lprintf_large__print_format_185
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_189-.Lprintf_large__print_format_187
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_191-.Lprintf_large__print_format_189
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_197-.Lprintf_large__print_format_191
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_199-.Lprintf_large__print_format_197
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_204-.Lprintf_large__print_format_199
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_207-.Lprintf_large__print_format_204
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_209-.Lprintf_large__print_format_207
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_211-.Lprintf_large__print_format_209
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_213-.Lprintf_large__print_format_211
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_221-.Lprintf_large__print_format_213
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_222-.Lprintf_large__print_format_221
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_224-.Lprintf_large__print_format_222
	.byte	3
	.sleb128	44
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_229-.Lprintf_large__print_format_224
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_236-.Lprintf_large__print_format_229
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_243-.Lprintf_large__print_format_236
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_250-.Lprintf_large__print_format_243
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_251-.Lprintf_large__print_format_250
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_252-.Lprintf_large__print_format_251
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_253-.Lprintf_large__print_format_252
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_254-.Lprintf_large__print_format_253
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_255-.Lprintf_large__print_format_254
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_256-.Lprintf_large__print_format_255
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_257-.Lprintf_large__print_format_256
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_258-.Lprintf_large__print_format_257
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_259-.Lprintf_large__print_format_258
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_260-.Lprintf_large__print_format_259
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_261-.Lprintf_large__print_format_260
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_262-.Lprintf_large__print_format_261
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_263-.Lprintf_large__print_format_262
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_264-.Lprintf_large__print_format_263
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_265-.Lprintf_large__print_format_264
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_266-.Lprintf_large__print_format_265
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_267-.Lprintf_large__print_format_266
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_269-.Lprintf_large__print_format_267
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_274-.Lprintf_large__print_format_269
	.byte	3
	.sleb128	183
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_275-.Lprintf_large__print_format_274
	.byte	3
	.sleb128	-181
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_276-.Lprintf_large__print_format_275
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_277-.Lprintf_large__print_format_276
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_278-.Lprintf_large__print_format_277
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_279-.Lprintf_large__print_format_278
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_281-.Lprintf_large__print_format_279
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_287-.Lprintf_large__print_format_281
	.byte	3
	.sleb128	18
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_288-.Lprintf_large__print_format_287
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_289-.Lprintf_large__print_format_288
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_291-.Lprintf_large__print_format_289
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_292-.Lprintf_large__print_format_291
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_294-.Lprintf_large__print_format_292
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_296-.Lprintf_large__print_format_294
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_298-.Lprintf_large__print_format_296
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_301-.Lprintf_large__print_format_298
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_302-.Lprintf_large__print_format_301
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_304-.Lprintf_large__print_format_302
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_306-.Lprintf_large__print_format_304
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_307-.Lprintf_large__print_format_306
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_308-.Lprintf_large__print_format_307
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_309-.Lprintf_large__print_format_308
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_311-.Lprintf_large__print_format_309
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_312-.Lprintf_large__print_format_311
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_314-.Lprintf_large__print_format_312
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_315-.Lprintf_large__print_format_314
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_316-.Lprintf_large__print_format_315
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_320-.Lprintf_large__print_format_316
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_322-.Lprintf_large__print_format_320
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_325-.Lprintf_large__print_format_322
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_328-.Lprintf_large__print_format_325
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_330-.Lprintf_large__print_format_328
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_331-.Lprintf_large__print_format_330
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_333-.Lprintf_large__print_format_331
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_335-.Lprintf_large__print_format_333
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_337-.Lprintf_large__print_format_335
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_339-.Lprintf_large__print_format_337
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_341-.Lprintf_large__print_format_339
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_344-.Lprintf_large__print_format_341
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_349-.Lprintf_large__print_format_344
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_352-.Lprintf_large__print_format_349
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_354-.Lprintf_large__print_format_352
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_359-.Lprintf_large__print_format_354
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_361-.Lprintf_large__print_format_359
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_363-.Lprintf_large__print_format_361
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_365-.Lprintf_large__print_format_363
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_370-.Lprintf_large__print_format_365
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_372-.Lprintf_large__print_format_370
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_374-.Lprintf_large__print_format_372
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_379-.Lprintf_large__print_format_374
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_381-.Lprintf_large__print_format_379
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_383-.Lprintf_large__print_format_381
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_386-.Lprintf_large__print_format_383
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_393-.Lprintf_large__print_format_386
	.byte	3
	.sleb128	6
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_394-.Lprintf_large__print_format_393
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_395-.Lprintf_large__print_format_394
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_397-.Lprintf_large__print_format_395
	.byte	3
	.sleb128	39
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_398-.Lprintf_large__print_format_397
	.byte	3
	.sleb128	-35
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_400-.Lprintf_large__print_format_398
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_401-.Lprintf_large__print_format_400
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_403-.Lprintf_large__print_format_401
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_404-.Lprintf_large__print_format_403
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_407-.Lprintf_large__print_format_404
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_409-.Lprintf_large__print_format_407
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_415-.Lprintf_large__print_format_409
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_418-.Lprintf_large__print_format_415
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_419-.Lprintf_large__print_format_418
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_422-.Lprintf_large__print_format_419
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_429-.Lprintf_large__print_format_422
	.byte	3
	.sleb128	8
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_434-.Lprintf_large__print_format_429
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.Lprintf_large__print_format_435-.Lprintf_large__print_format_434
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lprintf_large__print_format_437-.Lprintf_large__print_format_435
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.Lprintf_large__print_format_436)
	.word	0,(.Lprintf_large__print_format_438)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lprintf_large__print_format_432)
	.word	0,(.Lprintf_large__print_format_436)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_431)
	.word	0,(.Lprintf_large__print_format_432)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_430)
	.word	0,(.Lprintf_large__print_format_431)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_425)
	.word	0,(.Lprintf_large__print_format_430)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_424)
	.word	0,(.Lprintf_large__print_format_425)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_423)
	.word	0,(.Lprintf_large__print_format_424)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_414)
	.word	0,(.Lprintf_large__print_format_423)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_413)
	.word	0,(.Lprintf_large__print_format_414)
	.word	2
	.byte	120
	.sleb128	45
	.word	0,(.Lprintf_large__print_format_412)
	.word	0,(.Lprintf_large__print_format_413)
	.word	2
	.byte	120
	.sleb128	44
	.word	0,(.Lprintf_large__print_format_411)
	.word	0,(.Lprintf_large__print_format_412)
	.word	2
	.byte	120
	.sleb128	43
	.word	0,(.Lprintf_large__print_format_410)
	.word	0,(.Lprintf_large__print_format_411)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_389)
	.word	0,(.Lprintf_large__print_format_410)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_388)
	.word	0,(.Lprintf_large__print_format_389)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_387)
	.word	0,(.Lprintf_large__print_format_388)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_377)
	.word	0,(.Lprintf_large__print_format_387)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_376)
	.word	0,(.Lprintf_large__print_format_377)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_375)
	.word	0,(.Lprintf_large__print_format_376)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_368)
	.word	0,(.Lprintf_large__print_format_375)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_367)
	.word	0,(.Lprintf_large__print_format_368)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_366)
	.word	0,(.Lprintf_large__print_format_367)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_357)
	.word	0,(.Lprintf_large__print_format_366)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_356)
	.word	0,(.Lprintf_large__print_format_357)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_355)
	.word	0,(.Lprintf_large__print_format_356)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_347)
	.word	0,(.Lprintf_large__print_format_355)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_346)
	.word	0,(.Lprintf_large__print_format_347)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_345)
	.word	0,(.Lprintf_large__print_format_346)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_324)
	.word	0,(.Lprintf_large__print_format_345)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_323)
	.word	0,(.Lprintf_large__print_format_324)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_319)
	.word	0,(.Lprintf_large__print_format_323)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_318)
	.word	0,(.Lprintf_large__print_format_319)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_317)
	.word	0,(.Lprintf_large__print_format_318)
	.word	2
	.byte	120
	.sleb128	40
	.word	0,(.Lprintf_large__print_format_284)
	.word	0,(.Lprintf_large__print_format_317)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_283)
	.word	0,(.Lprintf_large__print_format_284)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_282)
	.word	0,(.Lprintf_large__print_format_283)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_272)
	.word	0,(.Lprintf_large__print_format_282)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_271)
	.word	0,(.Lprintf_large__print_format_272)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_270)
	.word	0,(.Lprintf_large__print_format_271)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_248)
	.word	0,(.Lprintf_large__print_format_270)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_247)
	.word	0,(.Lprintf_large__print_format_248)
	.word	2
	.byte	120
	.sleb128	45
	.word	0,(.Lprintf_large__print_format_246)
	.word	0,(.Lprintf_large__print_format_247)
	.word	2
	.byte	120
	.sleb128	44
	.word	0,(.Lprintf_large__print_format_245)
	.word	0,(.Lprintf_large__print_format_246)
	.word	2
	.byte	120
	.sleb128	43
	.word	0,(.Lprintf_large__print_format_244)
	.word	0,(.Lprintf_large__print_format_245)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_241)
	.word	0,(.Lprintf_large__print_format_244)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_240)
	.word	0,(.Lprintf_large__print_format_241)
	.word	2
	.byte	120
	.sleb128	45
	.word	0,(.Lprintf_large__print_format_239)
	.word	0,(.Lprintf_large__print_format_240)
	.word	2
	.byte	120
	.sleb128	44
	.word	0,(.Lprintf_large__print_format_238)
	.word	0,(.Lprintf_large__print_format_239)
	.word	2
	.byte	120
	.sleb128	43
	.word	0,(.Lprintf_large__print_format_237)
	.word	0,(.Lprintf_large__print_format_238)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_234)
	.word	0,(.Lprintf_large__print_format_237)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_233)
	.word	0,(.Lprintf_large__print_format_234)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_232)
	.word	0,(.Lprintf_large__print_format_233)
	.word	2
	.byte	120
	.sleb128	44
	.word	0,(.Lprintf_large__print_format_231)
	.word	0,(.Lprintf_large__print_format_232)
	.word	2
	.byte	120
	.sleb128	43
	.word	0,(.Lprintf_large__print_format_230)
	.word	0,(.Lprintf_large__print_format_231)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_227)
	.word	0,(.Lprintf_large__print_format_230)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_226)
	.word	0,(.Lprintf_large__print_format_227)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_225)
	.word	0,(.Lprintf_large__print_format_226)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_218)
	.word	0,(.Lprintf_large__print_format_225)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_217)
	.word	0,(.Lprintf_large__print_format_218)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_216)
	.word	0,(.Lprintf_large__print_format_217)
	.word	2
	.byte	120
	.sleb128	44
	.word	0,(.Lprintf_large__print_format_215)
	.word	0,(.Lprintf_large__print_format_216)
	.word	2
	.byte	120
	.sleb128	43
	.word	0,(.Lprintf_large__print_format_214)
	.word	0,(.Lprintf_large__print_format_215)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_202)
	.word	0,(.Lprintf_large__print_format_214)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_201)
	.word	0,(.Lprintf_large__print_format_202)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_200)
	.word	0,(.Lprintf_large__print_format_201)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_194)
	.word	0,(.Lprintf_large__print_format_200)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_193)
	.word	0,(.Lprintf_large__print_format_194)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_192)
	.word	0,(.Lprintf_large__print_format_193)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_181)
	.word	0,(.Lprintf_large__print_format_192)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_179)
	.word	0,(.Lprintf_large__print_format_181)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_178)
	.word	0,(.Lprintf_large__print_format_179)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_172)
	.word	0,(.Lprintf_large__print_format_178)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_171)
	.word	0,(.Lprintf_large__print_format_172)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_170)
	.word	0,(.Lprintf_large__print_format_171)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_148)
	.word	0,(.Lprintf_large__print_format_170)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_147)
	.word	0,(.Lprintf_large__print_format_148)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_146)
	.word	0,(.Lprintf_large__print_format_147)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_145)
	.word	0,(.Lprintf_large__print_format_146)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_144)
	.word	0,(.Lprintf_large__print_format_145)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_143)
	.word	0,(.Lprintf_large__print_format_144)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_142)
	.word	0,(.Lprintf_large__print_format_143)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_141)
	.word	0,(.Lprintf_large__print_format_142)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_140)
	.word	0,(.Lprintf_large__print_format_141)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_139)
	.word	0,(.Lprintf_large__print_format_140)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_138)
	.word	0,(.Lprintf_large__print_format_139)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_137)
	.word	0,(.Lprintf_large__print_format_138)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_136)
	.word	0,(.Lprintf_large__print_format_137)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_135)
	.word	0,(.Lprintf_large__print_format_136)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_134)
	.word	0,(.Lprintf_large__print_format_135)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_133)
	.word	0,(.Lprintf_large__print_format_134)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_132)
	.word	0,(.Lprintf_large__print_format_133)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_131)
	.word	0,(.Lprintf_large__print_format_132)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_127)
	.word	0,(.Lprintf_large__print_format_131)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_126)
	.word	0,(.Lprintf_large__print_format_127)
	.word	2
	.byte	120
	.sleb128	40
	.word	0,(.Lprintf_large__print_format_118)
	.word	0,(.Lprintf_large__print_format_126)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_115)
	.word	0,(.Lprintf_large__print_format_118)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_102)
	.word	0,(.Lprintf_large__print_format_115)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_95)
	.word	0,(.Lprintf_large__print_format_102)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_94)
	.word	0,(.Lprintf_large__print_format_95)
	.word	2
	.byte	120
	.sleb128	42
	.word	0,(.Lprintf_large__print_format_93)
	.word	0,(.Lprintf_large__print_format_94)
	.word	2
	.byte	120
	.sleb128	41
	.word	0,(.Lprintf_large__print_format_90)
	.word	0,(.Lprintf_large__print_format_93)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_73)
	.word	0,(.Lprintf_large__print_format_90)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_60)
	.word	0,(.Lprintf_large__print_format_73)
	.word	2
	.byte	120
	.sleb128	39
	.word	0,(.Lprintf_large__print_format_59)
	.word	0,(.Lprintf_large__print_format_60)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lprintf_large_calculate_digit_55)
	.word	0,(.Lprintf_large_calculate_digit_57)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lprintf_large_calculate_digit_45)
	.word	0,(.Lprintf_large_calculate_digit_55)
	.word	2
	.byte	120
	.sleb128	10
	.word	0,(.Lprintf_large_calculate_digit_44)
	.word	0,(.Lprintf_large_calculate_digit_45)
	.word	2
	.byte	120
	.sleb128	12
	.word	0,(.Lprintf_large_calculate_digit_37)
	.word	0,(.Lprintf_large_calculate_digit_44)
	.word	2
	.byte	120
	.sleb128	10
	.word	0,(.Lprintf_large_calculate_digit_36)
	.word	0,(.Lprintf_large_calculate_digit_37)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lprintf_large_output_2digits_32)
	.word	0,(.Lprintf_large_output_2digits_34)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lprintf_large_output_2digits_30)
	.word	0,(.Lprintf_large_output_2digits_32)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lprintf_large_output_2digits_29)
	.word	0,(.Lprintf_large_output_2digits_30)
	.word	2
	.byte	120
	.sleb128	8
	.word	0,(.Lprintf_large_output_2digits_28)
	.word	0,(.Lprintf_large_output_2digits_29)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Lprintf_large_output_2digits_27)
	.word	0,(.Lprintf_large_output_2digits_28)
	.word	2
	.byte	120
	.sleb128	6
	.word	0,(.Lprintf_large_output_2digits_26)
	.word	0,(.Lprintf_large_output_2digits_27)
	.word	2
	.byte	120
	.sleb128	4
	.word	0,(.Lprintf_large_output_2digits_24)
	.word	0,(.Lprintf_large_output_2digits_26)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lprintf_large_output_2digits_23)
	.word	0,(.Lprintf_large_output_2digits_24)
	.word	2
	.byte	120
	.sleb128	8
	.word	0,(.Lprintf_large_output_2digits_22)
	.word	0,(.Lprintf_large_output_2digits_23)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Lprintf_large_output_2digits_21)
	.word	0,(.Lprintf_large_output_2digits_22)
	.word	2
	.byte	120
	.sleb128	6
	.word	0,(.Lprintf_large_output_2digits_20)
	.word	0,(.Lprintf_large_output_2digits_21)
	.word	2
	.byte	120
	.sleb128	4
	.word	0,(.Lprintf_large_output_2digits_18)
	.word	0,(.Lprintf_large_output_2digits_20)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lprintf_large_output_2digits_17)
	.word	0,(.Lprintf_large_output_2digits_18)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lprintf_large_output_digit_12)
	.word	0,(.Lprintf_large_output_digit_15)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lprintf_large_output_digit_11)
	.word	0,(.Lprintf_large_output_digit_12)
	.word	2
	.byte	120
	.sleb128	4
	.word	0,(.Lprintf_large_output_digit_10)
	.word	0,(.Lprintf_large_output_digit_11)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lprintf_large_output_digit_1)
	.word	0,(.Lprintf_large_output_digit_10)
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
	.uleb128	11
	.uleb128	53
	.byte	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	19
	.uleb128	11
	.byte	1
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
	.uleb128	12
	.uleb128	1
	.byte	1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	21
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
	.uleb128	8
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
	.uleb128	17
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
	.uleb128	15
	.uleb128	38
	.byte	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	15
	.byte	0
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	21
	.uleb128	10
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
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
	.uleb128	7
	.uleb128	11
	.byte	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	14
	.uleb128	13
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	56
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	20
	.uleb128	11
	.byte	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	16
	.uleb128	11
	.byte	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	18
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
	.uleb128	13
	.uleb128	33
	.byte	0
	.uleb128	47
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	9
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
	.uleb128	10
	.uleb128	23
	.byte	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	11
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/printf_large.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.word	0,220
	.ascii "output_digit"
	.byte	0
	.word	0,(_output_digit)
	.word	0,(.Lprintf_large_output_digitendf+1)
	.byte	0
	.word	0,(.Ldebug_loc_start+1476)
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "n"
	.byte	0
	.word	0,220
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	3
	.ascii "lower_case"
	.byte	0
	.word	0,237
	.uleb128	4
	.uleb128	5
	.byte	2
	.word	0,162
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	4
	.ascii "output_char"
	.byte	0
	.word	0,163
	.uleb128	6
	.byte	2
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	6
	.ascii "p"
	.byte	0
	.word	0,189
	.uleb128	7
	.word	0,(.Lprintf_large_output_digit_4)
	.word	0,(.Lprintf_large_output_digit_8)
	.uleb128	8
	.byte	1
	.byte	80
	.ascii "c"
	.byte	0
	.word	0,220
	.uleb128	0
	.uleb128	9
	.ascii "unsigned char"
	.byte	0
	.byte	1
	.byte	8
	.uleb128	9
	.ascii "_Bool"
	.byte	0
	.byte	1
	.byte	2
	.uleb128	2
	.word	0,339
	.ascii "output_2digits"
	.byte	0
	.word	0,(_output_2digits)
	.word	0,(.Lprintf_large_output_2digitsendf+1)
	.byte	0
	.word	0,(.Ldebug_loc_start+1312)
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "b"
	.byte	0
	.word	0,220
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	3
	.ascii "lower_case"
	.byte	0
	.word	0,237
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	4
	.ascii "output_char"
	.byte	0
	.word	0,163
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	6
	.ascii "p"
	.byte	0
	.word	0,189
	.uleb128	0
	.uleb128	2
	.word	0,589
	.ascii "calculate_digit"
	.byte	0
	.word	0,(_calculate_digit)
	.word	0,(.Lprintf_large_calculate_digitendf+1)
	.byte	0
	.word	0,(.Ldebug_loc_start+1244)
	.uleb128	10
	.word	0,496
	.ascii "__00000000"
	.byte	0
	.byte	5
	.uleb128	11
	.word	0,220
	.uleb128	12
	.word	0,408
	.byte	5
	.word	0,390
	.uleb128	13
	.byte	4
	.uleb128	0
	.uleb128	14
	.ascii "byte"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,395
	.uleb128	11
	.word	0,589
	.uleb128	14
	.ascii "l"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,421
	.uleb128	11
	.word	0,589
	.uleb128	14
	.ascii "ul"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,436
	.uleb128	11
	.word	0,597
	.uleb128	14
	.ascii "f"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,452
	.uleb128	11
	.word	0,220
	.uleb128	15
	.word	0,467
	.uleb128	5
	.byte	2
	.word	0,472
	.uleb128	14
	.ascii "ptr"
	.byte	0
	.byte	2
	.byte	35
	.uleb128	0
	.word	0,477
	.uleb128	0
	.uleb128	5
	.byte	2
	.word	0,373
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "value"
	.byte	0
	.word	0,496
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	4
	.ascii "radix"
	.byte	0
	.word	0,220
	.uleb128	16
	.word	0,549
	.word	0,(.Lprintf_large_calculate_digit_42)
	.uleb128	7
	.word	0,(.Lprintf_large_calculate_digit_48)
	.word	0,(.Lprintf_large_calculate_digit_51)
	.uleb128	0
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-4
	.ascii "ul"
	.byte	0
	.word	0,606
	.uleb128	5
	.byte	2
	.word	0,220
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-7
	.ascii "pb4"
	.byte	0
	.word	0,560
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-5
	.ascii "i"
	.byte	0
	.word	0,220
	.uleb128	0
	.uleb128	9
	.ascii "long"
	.byte	0
	.byte	4
	.byte	5
	.uleb128	9
	.ascii "float"
	.byte	0
	.byte	4
	.byte	4
	.uleb128	9
	.ascii "unsigned long"
	.byte	0
	.byte	4
	.byte	7
	.uleb128	9
	.ascii "int"
	.byte	0
	.byte	2
	.byte	5
	.uleb128	17
	.word	0,1719
	.ascii "_print_format"
	.byte	0
	.word	0,(__print_format)
	.word	0,(.Lprintf_large__print_formatendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,623
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "pfn"
	.byte	0
	.word	0,163
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	4
	.ascii "pvoid"
	.byte	0
	.word	0,189
	.uleb128	15
	.word	0,220
	.uleb128	5
	.byte	2
	.word	0,692
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	6
	.ascii "format"
	.byte	0
	.word	0,697
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	8
	.ascii "ap"
	.byte	0
	.word	0,560
	.uleb128	16
	.word	0,1374
	.word	0,(.Lprintf_large__print_format_71)
	.uleb128	18
	.word	0,1362
	.word	0,(.Lprintf_large__print_format_74)
	.word	0,(.Lprintf_large__print_format_86)
	.uleb128	18
	.word	0,774
	.word	0,(.Lprintf_large__print_format_96)
	.word	0,(.Lprintf_large__print_format_98)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_91)
	.word	0,(.Lprintf_large__print_format_96)
	.uleb128	0
	.uleb128	18
	.word	0,816
	.word	0,(.Lprintf_large__print_format_100)
	.word	0,(.Lprintf_large__print_format_113)
	.uleb128	16
	.word	0,806
	.word	0,(.Lprintf_large__print_format_103)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_106)
	.word	0,(.Lprintf_large__print_format_108)
	.uleb128	0
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_109)
	.word	0,(.Lprintf_large__print_format_111)
	.uleb128	0
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_116)
	.word	0,(.Lprintf_large__print_format_121)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_123)
	.word	0,(.Lprintf_large__print_format_128)
	.uleb128	18
	.word	0,984
	.word	0,(.Lprintf_large__print_format_62)
	.word	0,(.Lprintf_large__print_format_206)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_168)
	.word	0,(.Lprintf_large__print_format_173)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_182)
	.word	0,(.Lprintf_large__print_format_184)
	.uleb128	18
	.word	0,890
	.word	0,(.Lprintf_large__print_format_186)
	.word	0,(.Lprintf_large__print_format_196)
	.uleb128	19
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_190)
	.word	0,(.Lprintf_large__print_format_195)
	.uleb128	0
	.uleb128	0
	.uleb128	18
	.word	0,913
	.word	0,(.Lprintf_large__print_format_203)
	.word	0,(.Lprintf_large__print_format_205)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_198)
	.word	0,(.Lprintf_large__print_format_203)
	.uleb128	0
	.uleb128	18
	.word	0,938
	.word	0,(.Lprintf_large__print_format_208)
	.word	0,(.Lprintf_large__print_format_220)
	.uleb128	19
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_212)
	.word	0,(.Lprintf_large__print_format_219)
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_223)
	.word	0,(.Lprintf_large__print_format_228)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_228)
	.word	0,(.Lprintf_large__print_format_235)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_235)
	.word	0,(.Lprintf_large__print_format_242)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_64)
	.word	0,(.Lprintf_large__print_format_249)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_268)
	.word	0,(.Lprintf_large__print_format_273)
	.uleb128	0
	.uleb128	18
	.word	0,1009
	.word	0,(.Lprintf_large__print_format_65)
	.word	0,(.Lprintf_large__print_format_286)
	.uleb128	19
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_280)
	.word	0,(.Lprintf_large__print_format_285)
	.uleb128	0
	.uleb128	0
	.uleb128	20
	.word	0,(.Lprintf_large__print_format_66)
	.word	0,(.Lprintf_large__print_format_417)
	.uleb128	16
	.word	0,1037
	.word	0,(.Lprintf_large__print_format_290)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_293)
	.word	0,(.Lprintf_large__print_format_295)
	.uleb128	0
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_297)
	.word	0,(.Lprintf_large__print_format_299)
	.uleb128	16
	.word	0,1065
	.word	0,(.Lprintf_large__print_format_300)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_303)
	.word	0,(.Lprintf_large__print_format_305)
	.uleb128	0
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_67)
	.word	0,(.Lprintf_large__print_format_68)
	.uleb128	18
	.word	0,1106
	.word	0,(.Lprintf_large__print_format_69)
	.word	0,(.Lprintf_large__print_format_332)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_321)
	.word	0,(.Lprintf_large__print_format_326)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_327)
	.word	0,(.Lprintf_large__print_format_329)
	.uleb128	0
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_336)
	.word	0,(.Lprintf_large__print_format_338)
	.uleb128	18
	.word	0,1148
	.word	0,(.Lprintf_large__print_format_342)
	.word	0,(.Lprintf_large__print_format_351)
	.uleb128	20
	.word	0,(.Lprintf_large__print_format_348)
	.word	0,(.Lprintf_large__print_format_350)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_343)
	.word	0,(.Lprintf_large__print_format_348)
	.uleb128	0
	.uleb128	0
	.uleb128	18
	.word	0,1171
	.word	0,(.Lprintf_large__print_format_358)
	.word	0,(.Lprintf_large__print_format_360)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_353)
	.word	0,(.Lprintf_large__print_format_358)
	.uleb128	0
	.uleb128	16
	.word	0,1223
	.word	0,(.Lprintf_large__print_format_362)
	.uleb128	18
	.word	0,1203
	.word	0,(.Lprintf_large__print_format_369)
	.word	0,(.Lprintf_large__print_format_371)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_364)
	.word	0,(.Lprintf_large__print_format_369)
	.uleb128	0
	.uleb128	20
	.word	0,(.Lprintf_large__print_format_378)
	.word	0,(.Lprintf_large__print_format_380)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_373)
	.word	0,(.Lprintf_large__print_format_378)
	.uleb128	0
	.uleb128	0
	.uleb128	18
	.word	0,1248
	.word	0,(.Lprintf_large__print_format_384)
	.word	0,(.Lprintf_large__print_format_391)
	.uleb128	19
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_385)
	.word	0,(.Lprintf_large__print_format_390)
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_392)
	.word	0,(.Lprintf_large__print_format_396)
	.uleb128	18
	.word	0,1289
	.word	0,(.Lprintf_large__print_format_399)
	.word	0,(.Lprintf_large__print_format_416)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_402)
	.word	0,(.Lprintf_large__print_format_405)
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_406)
	.word	0,(.Lprintf_large__print_format_408)
	.uleb128	0
	.uleb128	18
	.word	0,1314
	.word	0,(.Lprintf_large__print_format_420)
	.word	0,(.Lprintf_large__print_format_427)
	.uleb128	19
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_421)
	.word	0,(.Lprintf_large__print_format_426)
	.uleb128	0
	.uleb128	0
	.uleb128	12
	.word	0,1327
	.byte	6
	.word	0,220
	.uleb128	13
	.byte	5
	.uleb128	0
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-33
	.ascii "store"
	.byte	0
	.word	0,1314
	.uleb128	8
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "pstore"
	.byte	0
	.word	0,560
	.uleb128	0
	.uleb128	0
	.uleb128	19
	.uleb128	7
	.word	0,(.Lprintf_large__print_format_428)
	.word	0,(.Lprintf_large__print_format_433)
	.uleb128	0
	.uleb128	0
	.uleb128	21
	.ascii "get_conversion_spec"
	.byte	0
	.word	0,(.Lprintf_large$_print_format$get_conversion_spec)
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-21
	.ascii "left_justify"
	.byte	0
	.word	0,237
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-20
	.ascii "zero_padding"
	.byte	0
	.word	0,237
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-19
	.ascii "prefix_sign"
	.byte	0
	.word	0,237
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-18
	.ascii "prefix_space"
	.byte	0
	.word	0,237
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-17
	.ascii "signed_argument"
	.byte	0
	.word	0,237
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-16
	.ascii "char_argument"
	.byte	0
	.word	0,237
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-15
	.ascii "long_argument"
	.byte	0
	.word	0,237
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-14
	.ascii "float_argument"
	.byte	0
	.word	0,237
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-10
	.ascii "lower_case"
	.byte	0
	.word	0,237
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-38
	.ascii "value"
	.byte	0
	.word	0,373
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-3
	.ascii "charsOutputted"
	.byte	0
	.word	0,623
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-3
	.ascii "lsd"
	.byte	0
	.word	0,237
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-13
	.ascii "radix"
	.byte	0
	.word	0,220
	.uleb128	8
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "width"
	.byte	0
	.word	0,1719
	.uleb128	8
	.byte	2
	.byte	145
	.sleb128	-4
	.ascii "decimals"
	.byte	0
	.word	0,623
	.uleb128	8
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "length"
	.byte	0
	.word	0,1719
	.uleb128	8
	.byte	1
	.byte	80
	.ascii "c"
	.byte	0
	.word	0,220
	.uleb128	0
	.uleb128	9
	.ascii "unsigned int"
	.byte	0
	.byte	2
	.byte	7
	.uleb128	12
	.word	0,1748
	.byte	11
	.word	0,692
	.uleb128	13
	.byte	10
	.uleb128	0
	.uleb128	8
	.byte	5
	.byte	3
	.word	0,(___str_0)
	.ascii "__str_0"
	.byte	0
	.word	0,1735
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
	.word	0,630
	.ascii "_print_format"
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
	.word	0,733
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.Lprintf_large__print_format_59)	;initial loc
	.word	0,.Lprintf_large__print_format_438-.Lprintf_large__print_format_59
	.byte	1
	.word	0,(.Lprintf_large__print_format_59)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lprintf_large__print_format_60)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_73)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_90)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_93)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_94)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_95)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_102)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_115)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_118)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_126)
	.byte	14
	.uleb128	41
	.byte	1
	.word	0,(.Lprintf_large__print_format_127)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_131)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_132)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_133)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_134)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_135)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_136)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_137)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_138)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_139)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_140)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_141)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_142)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_143)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_144)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_145)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_146)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_147)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_148)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_170)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_171)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_172)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_178)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_179)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_181)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_192)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_193)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_194)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_200)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_201)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_202)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_214)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_215)
	.byte	14
	.uleb128	44
	.byte	1
	.word	0,(.Lprintf_large__print_format_216)
	.byte	14
	.uleb128	45
	.byte	1
	.word	0,(.Lprintf_large__print_format_217)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_218)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_225)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_226)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_227)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_230)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_231)
	.byte	14
	.uleb128	44
	.byte	1
	.word	0,(.Lprintf_large__print_format_232)
	.byte	14
	.uleb128	45
	.byte	1
	.word	0,(.Lprintf_large__print_format_233)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_234)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_237)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_238)
	.byte	14
	.uleb128	44
	.byte	1
	.word	0,(.Lprintf_large__print_format_239)
	.byte	14
	.uleb128	45
	.byte	1
	.word	0,(.Lprintf_large__print_format_240)
	.byte	14
	.uleb128	46
	.byte	1
	.word	0,(.Lprintf_large__print_format_241)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_244)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_245)
	.byte	14
	.uleb128	44
	.byte	1
	.word	0,(.Lprintf_large__print_format_246)
	.byte	14
	.uleb128	45
	.byte	1
	.word	0,(.Lprintf_large__print_format_247)
	.byte	14
	.uleb128	46
	.byte	1
	.word	0,(.Lprintf_large__print_format_248)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_270)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_271)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_272)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_282)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_283)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_284)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_317)
	.byte	14
	.uleb128	41
	.byte	1
	.word	0,(.Lprintf_large__print_format_318)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_319)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_323)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_324)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_345)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_346)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_347)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_355)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_356)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_357)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_366)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_367)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_368)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_375)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_376)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_377)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_387)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_388)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_389)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_410)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_411)
	.byte	14
	.uleb128	44
	.byte	1
	.word	0,(.Lprintf_large__print_format_412)
	.byte	14
	.uleb128	45
	.byte	1
	.word	0,(.Lprintf_large__print_format_413)
	.byte	14
	.uleb128	46
	.byte	1
	.word	0,(.Lprintf_large__print_format_414)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_423)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_424)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_425)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_430)
	.byte	14
	.uleb128	42
	.byte	1
	.word	0,(.Lprintf_large__print_format_431)
	.byte	14
	.uleb128	43
	.byte	1
	.word	0,(.Lprintf_large__print_format_432)
	.byte	14
	.uleb128	40
	.byte	1
	.word	0,(.Lprintf_large__print_format_436)
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
	.word	0,47
	.word	0,(.Ldebug_CIE1_start-4)
	.word	0,(.Lprintf_large_calculate_digit_36)	;initial loc
	.word	0,.Lprintf_large_calculate_digit_57-.Lprintf_large_calculate_digit_36
	.byte	1
	.word	0,(.Lprintf_large_calculate_digit_36)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lprintf_large_calculate_digit_37)
	.byte	14
	.uleb128	11
	.byte	1
	.word	0,(.Lprintf_large_calculate_digit_44)
	.byte	14
	.uleb128	13
	.byte	1
	.word	0,(.Lprintf_large_calculate_digit_45)
	.byte	14
	.uleb128	11
	.byte	1
	.word	0,(.Lprintf_large_calculate_digit_55)
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
	.word	0,103
	.word	0,(.Ldebug_CIE2_start-4)
	.word	0,(.Lprintf_large_output_2digits_17)	;initial loc
	.word	0,.Lprintf_large_output_2digits_34-.Lprintf_large_output_2digits_17
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_17)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_18)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_20)
	.byte	14
	.uleb128	5
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_21)
	.byte	14
	.uleb128	7
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_22)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_23)
	.byte	14
	.uleb128	9
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_24)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_26)
	.byte	14
	.uleb128	5
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_27)
	.byte	14
	.uleb128	7
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_28)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_29)
	.byte	14
	.uleb128	9
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_30)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lprintf_large_output_2digits_32)
	.byte	14
	.uleb128	2

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE3_end-.Ldebug_CIE3_start
.Ldebug_CIE3_start:
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
.Ldebug_CIE3_end:
	.word	0,40
	.word	0,(.Ldebug_CIE3_start-4)
	.word	0,(.Lprintf_large_output_digit_1)	;initial loc
	.word	0,.Lprintf_large_output_digit_15-.Lprintf_large_output_digit_1
	.byte	1
	.word	0,(.Lprintf_large_output_digit_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lprintf_large_output_digit_10)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lprintf_large_output_digit_11)
	.byte	14
	.uleb128	5
	.byte	1
	.word	0,(.Lprintf_large_output_digit_12)
	.byte	14
	.uleb128	2
