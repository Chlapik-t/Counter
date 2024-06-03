;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "delay"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global _delay_us
	.global _delay_ms
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
	.section	 .text.__delay_cycl
	.Ldelay__delay_cycl_0:
;	./inc/delay.h: 18: static @inline void _delay_cycl( unsigned short __ticks )
; genLabel
;	-----------------------------------------
;	 function _delay_cycl
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__delay_cycl:
	.Ldelay__delay_cycl_1:
	.Ldelay__delay_cycl_2:
;	./inc/delay.h: 29: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	.Ldelay__delay_cycl_3:
;	./inc/delay.h: 30: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
	ldw	x, (0x03, sp)
; genLabel
00101$:
	.Ldelay__delay_cycl_4:
	.Ldelay__delay_cycl_5:
;	./inc/delay.h: 31: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	.Ldelay__delay_cycl_6:
	.Ldelay__delay_cycl_7:
;	./inc/delay.h: 32: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00117$
	jp	00101$
00117$:
	.Ldelay__delay_cycl_8:
;	./inc/delay.h: 33: __asm__("nop\n");
;	genInline
	nop
; genLabel
00104$:
	.Ldelay__delay_cycl_9:
;	./inc/delay.h: 43: }
; genEndFunction
	.Ldelay__delay_cycl_10:
	.Ldelay__delay_cyclendf:
	ret
	.Ldelay__delay_cycl_11:
	.section	 .text.__delay_us
	.Ldelay__delay_us_12:
;	./inc/delay.h: 45: static @inline void _delay_us( const unsigned short __us ){
; genLabel
;	-----------------------------------------
;	 function _delay_us
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__delay_us:
	.Ldelay__delay_us_13:
	.Ldelay__delay_us_14:
	.Ldelay__delay_us_15:
;	./inc/delay.h: 46: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genCast
; genAssign
	ldw	y, (0x03, sp)
	clrw	x
; genIPush
	pushw	y
	.Ldelay__delay_us_16:
	pushw	x
	.Ldelay__delay_us_17:
; genIPush
	push	#0x00
	.Ldelay__delay_us_18:
	push	#0x24
	.Ldelay__delay_us_19:
	push	#0xf4
	.Ldelay__delay_us_20:
	push	#0x00
	.Ldelay__delay_us_21:
; genCall
	call	__mullong
	addw	sp, #8
	.Ldelay__delay_us_22:
	.Ldelay__delay_us_23:
; genCast
; genAssign
; genIPush
	push	#0x40
	.Ldelay__delay_us_24:
	push	#0x42
	.Ldelay__delay_us_25:
	push	#0x0f
	.Ldelay__delay_us_26:
	push	#0x00
	.Ldelay__delay_us_27:
; genIPush
	pushw	x
	.Ldelay__delay_us_28:
	pushw	y
	.Ldelay__delay_us_29:
; genCall
	call	__divulong
	addw	sp, #8
	.Ldelay__delay_us_30:
	.Ldelay__delay_us_31:
; genRightShiftLiteral
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
; genCast
; genAssign
	.Ldelay__delay_us_32:
; genPlus
	incw	x
; genAssign
; genAssign
	.Ldelay__delay_us_33:
; genAssign
	exgw	x, y
	.Ldelay__delay_us_34:
	.Ldelay__delay_us_35:
;	./inc/delay.h: 29: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	.Ldelay__delay_us_36:
;	./inc/delay.h: 30: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genLabel
00101$:
	.Ldelay__delay_us_37:
	.Ldelay__delay_us_38:
;	./inc/delay.h: 31: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	ldw	x, y
	decw	x
; genAssign
	ldw	y, x
	.Ldelay__delay_us_39:
	.Ldelay__delay_us_40:
;	./inc/delay.h: 32: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00117$
	jp	00101$
00117$:
	.Ldelay__delay_us_41:
;	./inc/delay.h: 33: __asm__("nop\n");
;	genInline
	nop
	.Ldelay__delay_us_42:
	.Ldelay__delay_us_43:
;	./inc/delay.h: 46: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genLabel
00105$:
	.Ldelay__delay_us_44:
;	./inc/delay.h: 47: }
; genEndFunction
	.Ldelay__delay_us_45:
	.Ldelay__delay_usendf:
	ret
	.Ldelay__delay_us_46:
	.section	 .text._delay_us
	.Ldelay_delay_us_47:
;	./src/delay.c: 4: void delay_us(uint8_t us)
; genLabel
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_delay_us:
	.Ldelay_delay_us_48:
	.Ldelay_delay_us_49:
	.Ldelay_delay_us_50:
;	./src/delay.c: 6: _delay_us(us);
; genCast
; genAssign
	clrw	x
	ld	a, (0x03, sp)
	ld	xl, a
; genAssign
	.Ldelay_delay_us_51:
	.Ldelay_delay_us_52:
;	./inc/delay.h: 46: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genCast
; genAssign
	clrw	y
	.Ldelay_delay_us_53:
; genIPush
	pushw	x
	.Ldelay_delay_us_54:
	pushw	y
	.Ldelay_delay_us_55:
; genIPush
	push	#0x00
	.Ldelay_delay_us_56:
	push	#0x24
	.Ldelay_delay_us_57:
	push	#0xf4
	.Ldelay_delay_us_58:
	push	#0x00
	.Ldelay_delay_us_59:
; genCall
	call	__mullong
	addw	sp, #8
	.Ldelay_delay_us_60:
; genCast
; genAssign
; genIPush
	push	#0x40
	.Ldelay_delay_us_61:
	push	#0x42
	.Ldelay_delay_us_62:
	push	#0x0f
	.Ldelay_delay_us_63:
	push	#0x00
	.Ldelay_delay_us_64:
; genIPush
	pushw	x
	.Ldelay_delay_us_65:
	pushw	y
	.Ldelay_delay_us_66:
; genCall
	call	__divulong
	addw	sp, #8
	.Ldelay_delay_us_67:
; genRightShiftLiteral
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
; genCast
; genAssign
; genPlus
	incw	x
; genAssign
; genAssign
	.Ldelay_delay_us_68:
; genAssign
	exgw	x, y
	.Ldelay_delay_us_69:
	.Ldelay_delay_us_70:
;	./inc/delay.h: 29: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	.Ldelay_delay_us_71:
;	./inc/delay.h: 30: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genLabel
00101$:
	.Ldelay_delay_us_72:
	.Ldelay_delay_us_73:
;	./inc/delay.h: 31: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	ldw	x, y
	decw	x
; genAssign
	ldw	y, x
	.Ldelay_delay_us_74:
	.Ldelay_delay_us_75:
;	./inc/delay.h: 32: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00118$
	jp	00101$
00118$:
	.Ldelay_delay_us_76:
;	./inc/delay.h: 33: __asm__("nop\n");
;	genInline
	nop
	.Ldelay_delay_us_77:
	.Ldelay_delay_us_78:
;	./src/delay.c: 6: _delay_us(us);
; genLabel
00106$:
	.Ldelay_delay_us_79:
;	./src/delay.c: 7: }
; genEndFunction
	.Ldelay_delay_us_80:
	.Ldelay_delay_usendf:
	ret
	.Ldelay_delay_us_81:
	.section	 .text._delay_ms
	.Ldelay_delay_ms_82:
	.Ldelay_delay_ms_83:
;	./src/delay.c: 9: void delay_ms(uint16_t ms)
; genLabel
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_delay_ms:
	.Ldelay_delay_ms_84:
	pushw	x
	.Ldelay_delay_ms_85:
	.Ldelay_delay_ms_86:
;	./src/delay.c: 11: for (int16_t i = 0; i < ms; i++) {
; genAssign
	clrw	x
	.Ldelay_delay_ms_87:
; genAssign
	ldw	(0x01, sp), x
; genLabel
00123$:
; genCast
; genAssign
	ldw	x, (0x01, sp)
; genCmp
; genCmpTop
	cpw	x, (0x05, sp)
	jrc	00178$
	jp	00125$
00178$:
; skipping generated iCode
	.Ldelay_delay_ms_88:
	.Ldelay_delay_ms_89:
;	./inc/delay.h: 46: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	y, #0x01f5
	.Ldelay_delay_ms_90:
	.Ldelay_delay_ms_91:
;	./inc/delay.h: 29: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	.Ldelay_delay_ms_92:
;	./inc/delay.h: 30: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genLabel
00102$:
	.Ldelay_delay_ms_93:
	.Ldelay_delay_ms_94:
;	./inc/delay.h: 31: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	ldw	x, y
	decw	x
; genAssign
	ldw	y, x
	.Ldelay_delay_ms_95:
	.Ldelay_delay_ms_96:
;	./inc/delay.h: 32: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00179$
	jp	00102$
00179$:
	.Ldelay_delay_ms_97:
;	./inc/delay.h: 33: __asm__("nop\n");
;	genInline
	nop
	.Ldelay_delay_ms_98:
	.Ldelay_delay_ms_98:
	.Ldelay_delay_ms_99:
;	./inc/delay.h: 46: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	y, #0x01f5
	.Ldelay_delay_ms_100:
	.Ldelay_delay_ms_101:
;	./inc/delay.h: 29: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	.Ldelay_delay_ms_102:
;	./inc/delay.h: 30: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genLabel
00107$:
	.Ldelay_delay_ms_103:
	.Ldelay_delay_ms_104:
;	./inc/delay.h: 31: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	ldw	x, y
	decw	x
; genAssign
	ldw	y, x
	.Ldelay_delay_ms_105:
	.Ldelay_delay_ms_106:
;	./inc/delay.h: 32: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00180$
	jp	00107$
00180$:
	.Ldelay_delay_ms_107:
;	./inc/delay.h: 33: __asm__("nop\n");
;	genInline
	nop
	.Ldelay_delay_ms_108:
	.Ldelay_delay_ms_108:
	.Ldelay_delay_ms_109:
;	./inc/delay.h: 46: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	y, #0x01f5
	.Ldelay_delay_ms_110:
	.Ldelay_delay_ms_111:
;	./inc/delay.h: 29: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	.Ldelay_delay_ms_112:
;	./inc/delay.h: 30: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genLabel
00112$:
	.Ldelay_delay_ms_113:
	.Ldelay_delay_ms_114:
;	./inc/delay.h: 31: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	ldw	x, y
	decw	x
; genAssign
	ldw	y, x
	.Ldelay_delay_ms_115:
	.Ldelay_delay_ms_116:
;	./inc/delay.h: 32: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00181$
	jp	00112$
00181$:
	.Ldelay_delay_ms_117:
;	./inc/delay.h: 33: __asm__("nop\n");
;	genInline
	nop
	.Ldelay_delay_ms_118:
	.Ldelay_delay_ms_118:
	.Ldelay_delay_ms_119:
;	./inc/delay.h: 46: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	y, #0x01e7
	.Ldelay_delay_ms_120:
	.Ldelay_delay_ms_121:
;	./inc/delay.h: 29: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	.Ldelay_delay_ms_122:
;	./inc/delay.h: 30: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genLabel
00117$:
	.Ldelay_delay_ms_123:
	.Ldelay_delay_ms_124:
;	./inc/delay.h: 31: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	ldw	x, y
	decw	x
; genAssign
	ldw	y, x
	.Ldelay_delay_ms_125:
	.Ldelay_delay_ms_126:
;	./inc/delay.h: 32: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00182$
	jp	00117$
00182$:
	.Ldelay_delay_ms_127:
;	./inc/delay.h: 33: __asm__("nop\n");
;	genInline
	nop
	.Ldelay_delay_ms_128:
	.Ldelay_delay_ms_129:
;	./src/delay.c: 11: for (int16_t i = 0; i < ms; i++) {
; genPlus
	ldw	x, (0x01, sp)
	incw	x
	ldw	(0x01, sp), x
00183$:
; genGoto
	jp	00123$
; genLabel
00125$:
	.Ldelay_delay_ms_130:
;	./src/delay.c: 17: }
; genEndFunction
	popw	x
	.Ldelay_delay_ms_131:
	.Ldelay_delay_ms_132:
	.Ldelay_delay_msendf:
	ret
	.Ldelay_delay_ms_133:
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
	.ascii "./inc/delay.h"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.ascii "./src/delay.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Ldelay__delay_cycl_0)
	.byte	3
	.sleb128	17
	.byte	1
	.byte	9
	.word	.Ldelay__delay_cycl_2-.Ldelay__delay_cycl_0
	.byte	3
	.sleb128	11
	.byte	1
	.byte	9
	.word	.Ldelay__delay_cycl_3-.Ldelay__delay_cycl_2
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay__delay_cycl_5-.Ldelay__delay_cycl_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay__delay_cycl_7-.Ldelay__delay_cycl_5
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay__delay_cycl_8-.Ldelay__delay_cycl_7
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay__delay_cycl_9-.Ldelay__delay_cycl_8
	.byte	3
	.sleb128	10
	.byte	1
	.byte	9
	.word	1+.Ldelay__delay_cycl_10-.Ldelay__delay_cycl_9
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Ldelay__delay_us_12)
	.byte	3
	.sleb128	44
	.byte	1
	.byte	9
	.word	.Ldelay__delay_us_15-.Ldelay__delay_us_12
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay__delay_us_35-.Ldelay__delay_us_15
	.byte	3
	.sleb128	-17
	.byte	1
	.byte	9
	.word	.Ldelay__delay_us_36-.Ldelay__delay_us_35
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay__delay_us_38-.Ldelay__delay_us_36
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay__delay_us_40-.Ldelay__delay_us_38
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay__delay_us_41-.Ldelay__delay_us_40
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay__delay_us_43-.Ldelay__delay_us_41
	.byte	3
	.sleb128	13
	.byte	1
	.byte	9
	.word	.Ldelay__delay_us_44-.Ldelay__delay_us_43
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Ldelay__delay_us_45-.Ldelay__delay_us_44
	.byte	0
	.uleb128	1
	.byte	1
	.byte	4
	.uleb128	2
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Ldelay_delay_us_47)
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Ldelay_delay_us_50-.Ldelay_delay_us_47
	.byte	3
	.sleb128	2
	.byte	1
	.byte	4
	.uleb128	1
	.byte	9
	.word	.Ldelay_delay_us_52-.Ldelay_delay_us_50
	.byte	3
	.sleb128	40
	.byte	1
	.byte	9
	.word	.Ldelay_delay_us_70-.Ldelay_delay_us_52
	.byte	3
	.sleb128	-17
	.byte	1
	.byte	9
	.word	.Ldelay_delay_us_71-.Ldelay_delay_us_70
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_us_73-.Ldelay_delay_us_71
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_us_75-.Ldelay_delay_us_73
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_us_76-.Ldelay_delay_us_75
	.byte	3
	.sleb128	1
	.byte	1
	.byte	4
	.uleb128	2
	.byte	9
	.word	.Ldelay_delay_us_78-.Ldelay_delay_us_76
	.byte	3
	.sleb128	-27
	.byte	1
	.byte	9
	.word	.Ldelay_delay_us_79-.Ldelay_delay_us_78
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Ldelay_delay_us_80-.Ldelay_delay_us_79
	.byte	0
	.uleb128	1
	.byte	1
	.byte	4
	.uleb128	2
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Ldelay_delay_ms_83)
	.byte	3
	.sleb128	8
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_86-.Ldelay_delay_ms_83
	.byte	3
	.sleb128	2
	.byte	1
	.byte	4
	.uleb128	1
	.byte	9
	.word	.Ldelay_delay_ms_89-.Ldelay_delay_ms_86
	.byte	3
	.sleb128	35
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_91-.Ldelay_delay_ms_89
	.byte	3
	.sleb128	-17
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_92-.Ldelay_delay_ms_91
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_94-.Ldelay_delay_ms_92
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_96-.Ldelay_delay_ms_94
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_97-.Ldelay_delay_ms_96
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_99-.Ldelay_delay_ms_97
	.byte	3
	.sleb128	13
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_101-.Ldelay_delay_ms_99
	.byte	3
	.sleb128	-17
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_102-.Ldelay_delay_ms_101
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_104-.Ldelay_delay_ms_102
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_106-.Ldelay_delay_ms_104
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_107-.Ldelay_delay_ms_106
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_109-.Ldelay_delay_ms_107
	.byte	3
	.sleb128	13
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_111-.Ldelay_delay_ms_109
	.byte	3
	.sleb128	-17
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_112-.Ldelay_delay_ms_111
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_114-.Ldelay_delay_ms_112
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_116-.Ldelay_delay_ms_114
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_117-.Ldelay_delay_ms_116
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_119-.Ldelay_delay_ms_117
	.byte	3
	.sleb128	13
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_121-.Ldelay_delay_ms_119
	.byte	3
	.sleb128	-17
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_122-.Ldelay_delay_ms_121
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_124-.Ldelay_delay_ms_122
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_126-.Ldelay_delay_ms_124
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_127-.Ldelay_delay_ms_126
	.byte	3
	.sleb128	1
	.byte	1
	.byte	4
	.uleb128	2
	.byte	9
	.word	.Ldelay_delay_ms_129-.Ldelay_delay_ms_127
	.byte	3
	.sleb128	-22
	.byte	1
	.byte	9
	.word	.Ldelay_delay_ms_130-.Ldelay_delay_ms_129
	.byte	3
	.sleb128	6
	.byte	1
	.byte	9
	.word	1+.Ldelay_delay_ms_132-.Ldelay_delay_ms_130
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.Ldelay_delay_ms_131)
	.word	0,(.Ldelay_delay_ms_133)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Ldelay_delay_ms_85)
	.word	0,(.Ldelay_delay_ms_131)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Ldelay_delay_ms_84)
	.word	0,(.Ldelay_delay_ms_85)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Ldelay_delay_us_67)
	.word	0,(.Ldelay_delay_us_81)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Ldelay_delay_us_66)
	.word	0,(.Ldelay_delay_us_67)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.Ldelay_delay_us_65)
	.word	0,(.Ldelay_delay_us_66)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Ldelay_delay_us_64)
	.word	0,(.Ldelay_delay_us_65)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Ldelay_delay_us_63)
	.word	0,(.Ldelay_delay_us_64)
	.word	2
	.byte	120
	.sleb128	4
	.word	0,(.Ldelay_delay_us_62)
	.word	0,(.Ldelay_delay_us_63)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Ldelay_delay_us_61)
	.word	0,(.Ldelay_delay_us_62)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Ldelay_delay_us_60)
	.word	0,(.Ldelay_delay_us_61)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Ldelay_delay_us_59)
	.word	0,(.Ldelay_delay_us_60)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.Ldelay_delay_us_58)
	.word	0,(.Ldelay_delay_us_59)
	.word	2
	.byte	120
	.sleb128	8
	.word	0,(.Ldelay_delay_us_57)
	.word	0,(.Ldelay_delay_us_58)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Ldelay_delay_us_56)
	.word	0,(.Ldelay_delay_us_57)
	.word	2
	.byte	120
	.sleb128	6
	.word	0,(.Ldelay_delay_us_55)
	.word	0,(.Ldelay_delay_us_56)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Ldelay_delay_us_54)
	.word	0,(.Ldelay_delay_us_55)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Ldelay_delay_us_48)
	.word	0,(.Ldelay_delay_us_54)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Ldelay__delay_us_30)
	.word	0,(.Ldelay__delay_us_46)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Ldelay__delay_us_29)
	.word	0,(.Ldelay__delay_us_30)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.Ldelay__delay_us_28)
	.word	0,(.Ldelay__delay_us_29)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Ldelay__delay_us_27)
	.word	0,(.Ldelay__delay_us_28)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Ldelay__delay_us_26)
	.word	0,(.Ldelay__delay_us_27)
	.word	2
	.byte	120
	.sleb128	4
	.word	0,(.Ldelay__delay_us_25)
	.word	0,(.Ldelay__delay_us_26)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Ldelay__delay_us_24)
	.word	0,(.Ldelay__delay_us_25)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Ldelay__delay_us_22)
	.word	0,(.Ldelay__delay_us_24)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Ldelay__delay_us_21)
	.word	0,(.Ldelay__delay_us_22)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.Ldelay__delay_us_20)
	.word	0,(.Ldelay__delay_us_21)
	.word	2
	.byte	120
	.sleb128	8
	.word	0,(.Ldelay__delay_us_19)
	.word	0,(.Ldelay__delay_us_20)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Ldelay__delay_us_18)
	.word	0,(.Ldelay__delay_us_19)
	.word	2
	.byte	120
	.sleb128	6
	.word	0,(.Ldelay__delay_us_17)
	.word	0,(.Ldelay__delay_us_18)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Ldelay__delay_us_16)
	.word	0,(.Ldelay__delay_us_17)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Ldelay__delay_us_13)
	.word	0,(.Ldelay__delay_us_16)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Ldelay__delay_cycl_1)
	.word	0,(.Ldelay__delay_cycl_11)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
	.uleb128	13
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
	.uleb128	10
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
	.uleb128	12
	.uleb128	11
	.byte	1
	.uleb128	1
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	38
	.byte	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.uleb128	11
	.byte	1
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
	.uleb128	4
	.uleb128	11
	.byte	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.uleb128	11
	.byte	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	11
	.byte	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	9
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
	.ascii "./src/delay.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.word	0,113
	.ascii "_delay_cycl"
	.byte	0
	.word	0,(__delay_cycl)
	.word	0,(.Ldelay__delay_cyclendf+1)
	.byte	0
	.word	0,(.Ldebug_loc_start+420)
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "__ticks"
	.byte	0
	.word	0,113
	.uleb128	4
	.word	0,(.Ldelay__delay_cycl_4)
	.word	0,(.Ldelay__delay_cycl_6)
	.uleb128	0
	.uleb128	5
	.ascii "unsigned int"
	.byte	0
	.byte	2
	.byte	7
	.uleb128	2
	.word	0,264
	.ascii "_delay_us"
	.byte	0
	.word	0,(__delay_us)
	.word	0,(.Ldelay__delay_usendf+1)
	.byte	0
	.word	0,(.Ldebug_loc_start+232)
	.uleb128	6
	.word	0,113
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "__us"
	.byte	0
	.word	0,157
	.uleb128	7
	.word	0,(.Ldelay__delay_us_14)
	.word	0,(.Ldelay__delay_us_32)
	.uleb128	8
	.word	0,237
	.word	0,(.Ldelay__delay_us_33)
	.uleb128	9
	.word	0,216
	.word	0,(.Ldelay__delay_us_34)
	.word	0,(.Ldelay__delay_us_42)
	.uleb128	4
	.word	0,(.Ldelay__delay_us_37)
	.word	0,(.Ldelay__delay_us_39)
	.uleb128	0
	.uleb128	10
	.byte	6
	.byte	84
	.byte	147
	.uleb128	1
	.byte	83
	.byte	147
	.uleb128	1
	.ascii "__ticks"
	.byte	0
	.word	0,113
	.uleb128	0
	.uleb128	10
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "__1310720010"
	.byte	0
	.word	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.word	0,447
	.ascii "delay_us"
	.byte	0
	.word	0,(_delay_us)
	.word	0,(.Ldelay_delay_usendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start+44)
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "us"
	.byte	0
	.word	0,447
	.uleb128	11
	.word	0,(.Ldelay_delay_us_49)
	.uleb128	12
	.word	0,420
	.uleb128	12
	.word	0,406
	.uleb128	7
	.word	0,(.Ldelay_delay_us_51)
	.word	0,(.Ldelay_delay_us_53)
	.uleb128	8
	.word	0,379
	.word	0,(.Ldelay_delay_us_68)
	.uleb128	9
	.word	0,358
	.word	0,(.Ldelay_delay_us_69)
	.word	0,(.Ldelay_delay_us_77)
	.uleb128	4
	.word	0,(.Ldelay_delay_us_72)
	.word	0,(.Ldelay_delay_us_74)
	.uleb128	0
	.uleb128	10
	.byte	6
	.byte	84
	.byte	147
	.uleb128	1
	.byte	83
	.byte	147
	.uleb128	1
	.ascii "__ticks"
	.byte	0
	.word	0,113
	.uleb128	0
	.uleb128	10
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "__1310720010"
	.byte	0
	.word	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__us"
	.byte	0
	.word	0,157
	.uleb128	0
	.uleb128	10
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "__1310720012"
	.byte	0
	.word	0,157
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.ascii "unsigned char"
	.byte	0
	.byte	1
	.byte	8
	.uleb128	2
	.word	0,1041
	.ascii "delay_ms"
	.byte	0
	.word	0,(_delay_ms)
	.word	0,(.Ldelay_delay_msendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.uleb128	3
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "ms"
	.byte	0
	.word	0,113
	.uleb128	7
	.word	0,(.Ldelay_delay_ms_82)
	.word	0,(.Ldelay_delay_ms_87)
	.uleb128	12
	.word	0,1025
	.uleb128	12
	.word	0,644
	.uleb128	12
	.word	0,622
	.uleb128	12
	.word	0,608
	.uleb128	13
	.uleb128	8
	.word	0,585
	.word	0,(.Ldelay_delay_ms_88)
	.uleb128	9
	.word	0,564
	.word	0,(.Ldelay_delay_ms_90)
	.word	0,(.Ldelay_delay_ms_98)
	.uleb128	4
	.word	0,(.Ldelay_delay_ms_93)
	.word	0,(.Ldelay_delay_ms_95)
	.uleb128	0
	.uleb128	10
	.byte	6
	.byte	84
	.byte	147
	.uleb128	1
	.byte	83
	.byte	147
	.uleb128	1
	.ascii "__ticks"
	.byte	0
	.word	0,113
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__1310720010"
	.byte	0
	.word	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__us"
	.byte	0
	.word	0,157
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__2621440014"
	.byte	0
	.word	0,157
	.uleb128	0
	.uleb128	12
	.word	0,772
	.uleb128	12
	.word	0,750
	.uleb128	12
	.word	0,736
	.uleb128	13
	.uleb128	8
	.word	0,713
	.word	0,(.Ldelay_delay_ms_98)
	.uleb128	9
	.word	0,692
	.word	0,(.Ldelay_delay_ms_100)
	.word	0,(.Ldelay_delay_ms_108)
	.uleb128	4
	.word	0,(.Ldelay_delay_ms_103)
	.word	0,(.Ldelay_delay_ms_105)
	.uleb128	0
	.uleb128	10
	.byte	6
	.byte	84
	.byte	147
	.uleb128	1
	.byte	83
	.byte	147
	.uleb128	1
	.ascii "__ticks"
	.byte	0
	.word	0,113
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__1310720010"
	.byte	0
	.word	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__us"
	.byte	0
	.word	0,157
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__2621440016"
	.byte	0
	.word	0,157
	.uleb128	0
	.uleb128	12
	.word	0,900
	.uleb128	12
	.word	0,878
	.uleb128	12
	.word	0,864
	.uleb128	13
	.uleb128	8
	.word	0,841
	.word	0,(.Ldelay_delay_ms_108)
	.uleb128	9
	.word	0,820
	.word	0,(.Ldelay_delay_ms_110)
	.word	0,(.Ldelay_delay_ms_118)
	.uleb128	4
	.word	0,(.Ldelay_delay_ms_113)
	.word	0,(.Ldelay_delay_ms_115)
	.uleb128	0
	.uleb128	10
	.byte	6
	.byte	84
	.byte	147
	.uleb128	1
	.byte	83
	.byte	147
	.uleb128	1
	.ascii "__ticks"
	.byte	0
	.word	0,113
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__1310720010"
	.byte	0
	.word	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__us"
	.byte	0
	.word	0,157
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__2621440018"
	.byte	0
	.word	0,157
	.uleb128	0
	.uleb128	13
	.uleb128	12
	.word	0,1002
	.uleb128	12
	.word	0,988
	.uleb128	13
	.uleb128	8
	.word	0,965
	.word	0,(.Ldelay_delay_ms_118)
	.uleb128	9
	.word	0,944
	.word	0,(.Ldelay_delay_ms_120)
	.word	0,(.Ldelay_delay_ms_128)
	.uleb128	4
	.word	0,(.Ldelay_delay_ms_123)
	.word	0,(.Ldelay_delay_ms_125)
	.uleb128	0
	.uleb128	10
	.byte	6
	.byte	84
	.byte	147
	.uleb128	1
	.byte	83
	.byte	147
	.uleb128	1
	.ascii "__ticks"
	.byte	0
	.word	0,113
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__1310720010"
	.byte	0
	.word	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__us"
	.byte	0
	.word	0,157
	.uleb128	0
	.uleb128	10
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "__2621440020"
	.byte	0
	.word	0,157
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "i"
	.byte	0
	.word	0,1041
	.uleb128	0
	.uleb128	0
	.uleb128	5
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
	.word	0,264
	.ascii "delay_us"
	.byte	0
	.word	0,464
	.ascii "delay_ms"
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
	.word	0,(.Ldelay_delay_ms_84)	;initial loc
	.word	0,.Ldelay_delay_ms_133-.Ldelay_delay_ms_84
	.byte	1
	.word	0,(.Ldelay_delay_ms_84)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Ldelay_delay_ms_85)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Ldelay_delay_ms_131)
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
	.word	0,117
	.word	0,(.Ldebug_CIE1_start-4)
	.word	0,(.Ldelay_delay_us_48)	;initial loc
	.word	0,.Ldelay_delay_us_81-.Ldelay_delay_us_48
	.byte	1
	.word	0,(.Ldelay_delay_us_48)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Ldelay_delay_us_54)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Ldelay_delay_us_55)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Ldelay_delay_us_56)
	.byte	14
	.uleb128	7
	.byte	1
	.word	0,(.Ldelay_delay_us_57)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Ldelay_delay_us_58)
	.byte	14
	.uleb128	9
	.byte	1
	.word	0,(.Ldelay_delay_us_59)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.Ldelay_delay_us_60)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Ldelay_delay_us_61)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Ldelay_delay_us_62)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Ldelay_delay_us_63)
	.byte	14
	.uleb128	5
	.byte	1
	.word	0,(.Ldelay_delay_us_64)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Ldelay_delay_us_65)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Ldelay_delay_us_66)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.Ldelay_delay_us_67)
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
	.word	0,117
	.word	0,(.Ldebug_CIE2_start-4)
	.word	0,(.Ldelay__delay_us_13)	;initial loc
	.word	0,.Ldelay__delay_us_46-.Ldelay__delay_us_13
	.byte	1
	.word	0,(.Ldelay__delay_us_13)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Ldelay__delay_us_16)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Ldelay__delay_us_17)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Ldelay__delay_us_18)
	.byte	14
	.uleb128	7
	.byte	1
	.word	0,(.Ldelay__delay_us_19)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Ldelay__delay_us_20)
	.byte	14
	.uleb128	9
	.byte	1
	.word	0,(.Ldelay__delay_us_21)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.Ldelay__delay_us_22)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Ldelay__delay_us_24)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Ldelay__delay_us_25)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Ldelay__delay_us_26)
	.byte	14
	.uleb128	5
	.byte	1
	.word	0,(.Ldelay__delay_us_27)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Ldelay__delay_us_28)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Ldelay__delay_us_29)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.Ldelay__delay_us_30)
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
	.word	0,19
	.word	0,(.Ldebug_CIE3_start-4)
	.word	0,(.Ldelay__delay_cycl_1)	;initial loc
	.word	0,.Ldelay__delay_cycl_11-.Ldelay__delay_cycl_1
	.byte	1
	.word	0,(.Ldelay__delay_cycl_1)
	.byte	14
	.uleb128	2
