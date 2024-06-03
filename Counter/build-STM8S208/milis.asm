;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "milis"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global _TIM4_ClearFlag
	.global _TIM4_ITConfig
	.global _TIM4_Cmd
	.global _TIM4_TimeBaseInit
	.global _ITC_SetSoftwarePriority
	.global _miliseconds
	.global _milis
	.global _init_milis
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
G$miliseconds$0_0$0:
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
	.section	 .text._milis
	.Lmilis_milis_0:
;	./src/milis.c: 13: MILIS_PROTOTYPE
; genLabel
;	-----------------------------------------
;	 function milis
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_milis:
	.Lmilis_milis_1:
	sub	sp, #4
	.Lmilis_milis_2:
	.Lmilis_milis_3:
;	./src/milis.c: 20: TIM4_ITConfig(TIM4_IT_UPDATE, DISABLE);
; genIPush
	push	#0x00
	.Lmilis_milis_4:
; genIPush
	push	#0x01
	.Lmilis_milis_5:
; genCall
	call	_TIM4_ITConfig
	popw	x
	.Lmilis_milis_6:
	.Lmilis_milis_7:
;	./src/milis.c: 21: tmp = miliseconds;
; genAssign
	ldw	x, _miliseconds+2
	ldw	(0x03, sp), x
	ldw	x, _miliseconds+0
	ldw	(0x01, sp), x
	.Lmilis_milis_8:
;	./src/milis.c: 22: TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
; genIPush
	pushw	x
	.Lmilis_milis_9:
	push	#0x01
	.Lmilis_milis_10:
; genIPush
	push	#0x01
	.Lmilis_milis_11:
; genCall
	call	_TIM4_ITConfig
	popw	x
	.Lmilis_milis_12:
	popw	x
	.Lmilis_milis_13:
	.Lmilis_milis_14:
;	./src/milis.c: 23: return tmp;
; genReturn
	ldw	x, (0x03, sp)
	ldw	y, (0x01, sp)
; genLabel
00101$:
	.Lmilis_milis_15:
;	./src/milis.c: 24: }
; genEndFunction
	addw	sp, #4
	.Lmilis_milis_16:
	.Lmilis_milis_17:
	.Lmilis_milisendf:
	ret
	.Lmilis_milis_18:
	.section	 .text._init_milis
	.Lmilis_init_milis_19:
;	./src/milis.c: 27: void init_milis(void)
; genLabel
;	-----------------------------------------
;	 function init_milis
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_init_milis:
	.Lmilis_init_milis_20:
	.Lmilis_init_milis_21:
;	./src/milis.c: 29: TIM4_TimeBaseInit(PRESCALER, PERIOD);       // (16MHz / 128) / 125 = 1000Hz
; genIPush
	push	#0x7c
	.Lmilis_init_milis_22:
; genIPush
	push	#0x07
	.Lmilis_init_milis_23:
; genCall
	call	_TIM4_TimeBaseInit
	popw	x
	.Lmilis_init_milis_24:
	.Lmilis_init_milis_25:
;	./src/milis.c: 30: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
; genIPush
	push	#0x01
	.Lmilis_init_milis_26:
; genCall
	call	_TIM4_ClearFlag
	pop	a
	.Lmilis_init_milis_27:
	.Lmilis_init_milis_28:
;	./src/milis.c: 31: TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
; genIPush
	push	#0x01
	.Lmilis_init_milis_29:
; genIPush
	push	#0x01
	.Lmilis_init_milis_30:
; genCall
	call	_TIM4_ITConfig
	popw	x
	.Lmilis_init_milis_31:
	.Lmilis_init_milis_32:
;	./src/milis.c: 32: ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF, ITC_PRIORITYLEVEL_1);     // nízká priorita pøerušení
; genIPush
	push	#0x01
	.Lmilis_init_milis_33:
; genIPush
	push	#0x17
	.Lmilis_init_milis_34:
; genCall
	call	_ITC_SetSoftwarePriority
	popw	x
	.Lmilis_init_milis_35:
	.Lmilis_init_milis_36:
;	./src/milis.c: 33: enableInterrupts();
;	genInline
	rim
	.Lmilis_init_milis_37:
;	./src/milis.c: 34: TIM4_Cmd(ENABLE);
; genIPush
	push	#0x01
	.Lmilis_init_milis_38:
; genCall
	call	_TIM4_Cmd
	pop	a
	.Lmilis_init_milis_39:
; genLabel
00101$:
	.Lmilis_init_milis_40:
;	./src/milis.c: 35: }
; genEndFunction
	.Lmilis_init_milis_41:
	.Lmilis_init_milisendf:
	ret
	.Lmilis_init_milis_42:
	.section .text
	.section .text.rodata
	.section .data
_miliseconds:
	.byte 0x00, 0x00, 0x00, 0x00	; 0
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
	.ascii "./src/milis.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lmilis_milis_0)
	.byte	3
	.sleb128	12
	.byte	1
	.byte	9
	.word	.Lmilis_milis_3-.Lmilis_milis_0
	.byte	3
	.sleb128	7
	.byte	1
	.byte	9
	.word	.Lmilis_milis_7-.Lmilis_milis_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lmilis_milis_8-.Lmilis_milis_7
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lmilis_milis_14-.Lmilis_milis_8
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lmilis_milis_15-.Lmilis_milis_14
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lmilis_milis_17-.Lmilis_milis_15
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lmilis_init_milis_19)
	.byte	3
	.sleb128	26
	.byte	1
	.byte	9
	.word	.Lmilis_init_milis_21-.Lmilis_init_milis_19
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lmilis_init_milis_25-.Lmilis_init_milis_21
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lmilis_init_milis_28-.Lmilis_init_milis_25
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lmilis_init_milis_32-.Lmilis_init_milis_28
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lmilis_init_milis_36-.Lmilis_init_milis_32
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lmilis_init_milis_37-.Lmilis_init_milis_36
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lmilis_init_milis_40-.Lmilis_init_milis_37
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lmilis_init_milis_41-.Lmilis_init_milis_40
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.Lmilis_init_milis_39)
	.word	0,(.Lmilis_init_milis_42)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lmilis_init_milis_38)
	.word	0,(.Lmilis_init_milis_39)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lmilis_init_milis_35)
	.word	0,(.Lmilis_init_milis_38)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lmilis_init_milis_34)
	.word	0,(.Lmilis_init_milis_35)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lmilis_init_milis_33)
	.word	0,(.Lmilis_init_milis_34)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lmilis_init_milis_31)
	.word	0,(.Lmilis_init_milis_33)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lmilis_init_milis_30)
	.word	0,(.Lmilis_init_milis_31)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lmilis_init_milis_29)
	.word	0,(.Lmilis_init_milis_30)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lmilis_init_milis_27)
	.word	0,(.Lmilis_init_milis_29)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lmilis_init_milis_26)
	.word	0,(.Lmilis_init_milis_27)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lmilis_init_milis_24)
	.word	0,(.Lmilis_init_milis_26)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lmilis_init_milis_23)
	.word	0,(.Lmilis_init_milis_24)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lmilis_init_milis_22)
	.word	0,(.Lmilis_init_milis_23)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lmilis_init_milis_20)
	.word	0,(.Lmilis_init_milis_22)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lmilis_milis_16)
	.word	0,(.Lmilis_milis_18)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lmilis_milis_13)
	.word	0,(.Lmilis_milis_16)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Lmilis_milis_12)
	.word	0,(.Lmilis_milis_13)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Lmilis_milis_11)
	.word	0,(.Lmilis_milis_12)
	.word	2
	.byte	120
	.sleb128	9
	.word	0,(.Lmilis_milis_10)
	.word	0,(.Lmilis_milis_11)
	.word	2
	.byte	120
	.sleb128	8
	.word	0,(.Lmilis_milis_9)
	.word	0,(.Lmilis_milis_10)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Lmilis_milis_6)
	.word	0,(.Lmilis_milis_9)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Lmilis_milis_5)
	.word	0,(.Lmilis_milis_6)
	.word	2
	.byte	120
	.sleb128	7
	.word	0,(.Lmilis_milis_4)
	.word	0,(.Lmilis_milis_5)
	.word	2
	.byte	120
	.sleb128	6
	.word	0,(.Lmilis_milis_2)
	.word	0,(.Lmilis_milis_4)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Lmilis_milis_1)
	.word	0,(.Lmilis_milis_2)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
	.uleb128	6
	.uleb128	53
	.byte	0
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
	.uleb128	63
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
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
	.uleb128	5
	.uleb128	46
	.byte	0
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
	.ascii "./src/milis.c"
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
	.word	0,115
	.ascii "milis"
	.byte	0
	.word	0,(_milis)
	.word	0,(.Lmilis_milisendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start+176)
	.word	0,57
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	-4
	.ascii "tmp"
	.byte	0
	.word	0,57
	.uleb128	0
	.uleb128	5
	.ascii "init_milis"
	.byte	0
	.word	0,(_init_milis)
	.word	0,(.Lmilis_init_milisendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.uleb128	6
	.word	0,57
	.uleb128	7
	.byte	5
	.byte	3
	.word	0,(_miliseconds)
	.ascii "miliseconds"
	.byte	0
	.byte	1
	.word	0,140
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
	.word	0,74
	.ascii "milis"
	.byte	0
	.word	0,115
	.ascii "init_milis"
	.byte	0
	.word	0,145
	.ascii "miliseconds"
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
	.word	0,110
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.Lmilis_init_milis_20)	;initial loc
	.word	0,.Lmilis_init_milis_42-.Lmilis_init_milis_20
	.byte	1
	.word	0,(.Lmilis_init_milis_20)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lmilis_init_milis_22)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lmilis_init_milis_23)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lmilis_init_milis_24)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lmilis_init_milis_26)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lmilis_init_milis_27)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lmilis_init_milis_29)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lmilis_init_milis_30)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lmilis_init_milis_31)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lmilis_init_milis_33)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lmilis_init_milis_34)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lmilis_init_milis_35)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lmilis_init_milis_38)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lmilis_init_milis_39)
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
	.word	0,89
	.word	0,(.Ldebug_CIE1_start-4)
	.word	0,(.Lmilis_milis_1)	;initial loc
	.word	0,.Lmilis_milis_18-.Lmilis_milis_1
	.byte	1
	.word	0,(.Lmilis_milis_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lmilis_milis_2)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Lmilis_milis_4)
	.byte	14
	.uleb128	7
	.byte	1
	.word	0,(.Lmilis_milis_5)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Lmilis_milis_6)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Lmilis_milis_9)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Lmilis_milis_10)
	.byte	14
	.uleb128	9
	.byte	1
	.word	0,(.Lmilis_milis_11)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.Lmilis_milis_12)
	.byte	14
	.uleb128	8
	.byte	1
	.word	0,(.Lmilis_milis_13)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Lmilis_milis_16)
	.byte	14
	.uleb128	2
