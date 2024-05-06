;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "main"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global _main
	.global _init_milis
	.global _TIM2_ITConfig
	.global _TIM2_Cmd
	.global _TIM2_TimeBaseInit
	.global _GPIO_Init
	.global _CLK_HSIPrescalerConfig
	.global _init
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.section .vectors,	"ax"
__interrupt_vect:
	int _start ; reset
	int _TRAP_IRQHandler ; trap
	int _TLI_IRQHandler ; int0
	int _AWU_IRQHandler ; int1
	int _CLK_IRQHandler ; int2
	int _EXTI_PORTA_IRQHandler ; int3
	int _EXTI_PORTB_IRQHandler ; int4
	int _EXTI_PORTC_IRQHandler ; int5
	int _EXTI_PORTD_IRQHandler ; int6
	int _EXTI_PORTE_IRQHandler ; int7
	int _CAN_RX_IRQHandler ; int8
	int _CAN_TX_IRQHandler ; int9
	int _SPI_IRQHandler ; int10
	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
	int _TIM1_CAP_COM_IRQHandler ; int12
	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
	int _TIM2_CAP_COM_IRQHandler ; int14
	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
	int _TIM3_CAP_COM_IRQHandler ; int16
	int _UART1_TX_IRQHandler ; int17
	int _UART1_RX_IRQHandler ; int18
	int _I2C_IRQHandler ; int19
	int _UART3_TX_IRQHandler ; int20
	int _UART3_RX_IRQHandler ; int21
	int _ADC2_IRQHandler ; int22
	int _TIM4_UPD_OVF_IRQHandler ; int23
	int _EEPROM_EEC_IRQHandler ; int24
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.section .text
	.global _start
_start:
	; Check if there is at least one byte allocated on .bss
	ldw x, #__bss_start
	cpw x, #__bss_end
	jreq 1$
0$:
	; Zeroing .bss
	clr (x)
	incw x
	cpw x, #__bss_end
	jrne 0$
1$:
	; Check if there is at least one byte allocated on .data
	ldw y, #__data_start
	cpw y, #_edata
	jreq 3$
	; Transfer .data from ROM to RAM
	ldw x, #__data_load_start
2$:
	ld a, (x)
	ld (y), a
	incw x
	incw y
	cpw y, #_edata
	jrne 2$
3$:
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.section .text
	.section	 .text._init
	.Lmain_init_0:
;	./src/main.c: 10: void init(void)
; genLabel
;	-----------------------------------------
;	 function init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_init:
	.Lmain_init_1:
	.Lmain_init_2:
;	./src/main.c: 12: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz
; genIPush
	push	#0x00
	.Lmain_init_3:
; genCall
	call	_CLK_HSIPrescalerConfig
	pop	a
	.Lmain_init_4:
	.Lmain_init_5:
;	./src/main.c: 14: GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_LOW_SLOW);
; genIPush
	push	#0xc0
	.Lmain_init_6:
; genIPush
	push	#0x20
	.Lmain_init_7:
; genIPush
	push	#0x0a
	.Lmain_init_8:
	push	#0x50
	.Lmain_init_9:
; genCall
	call	_GPIO_Init
	addw	sp, #4
	.Lmain_init_10:
	.Lmain_init_11:
;	./src/main.c: 16: GPIO_Init(BTN_PORT, BTN_PIN, GPIO_MODE_IN_FL_NO_IT);
; genIPush
	push	#0x00
	.Lmain_init_12:
; genIPush
	push	#0x10
	.Lmain_init_13:
; genIPush
	push	#0x14
	.Lmain_init_14:
	push	#0x50
	.Lmain_init_15:
; genCall
	call	_GPIO_Init
	addw	sp, #4
	.Lmain_init_16:
	.Lmain_init_17:
;	./src/main.c: 19: init_milis();
; genCall
	call	_init_milis
	.Lmain_init_18:
;	./src/main.c: 23: TIM2_TimeBaseInit(TIM2_PRESCALER_1024,37114-1);
; genIPush
	push	#0xf9
	.Lmain_init_19:
	push	#0x90
	.Lmain_init_20:
; genIPush
	push	#0x0a
	.Lmain_init_21:
; genCall
	call	_TIM2_TimeBaseInit
	addw	sp, #3
	.Lmain_init_22:
	.Lmain_init_23:
;	./src/main.c: 24: TIM2_Cmd(ENABLE); // rozběhnu TIM2 
; genIPush
	push	#0x01
	.Lmain_init_24:
; genCall
	call	_TIM2_Cmd
	pop	a
	.Lmain_init_25:
	.Lmain_init_26:
;	./src/main.c: 25: TIM2_ITConfig(TIM2_IT_UPDATE, ENABLE);  //povolení přerušení
; genIPush
	push	#0x01
	.Lmain_init_27:
; genIPush
	push	#0x01
	.Lmain_init_28:
; genCall
	call	_TIM2_ITConfig
	popw	x
	.Lmain_init_29:
	.Lmain_init_30:
;	./src/main.c: 26: enableInterrupts();  // povolí interupt 
;	genInline
	rim
; genLabel
00101$:
	.Lmain_init_31:
;	./src/main.c: 27: }
; genEndFunction
	.Lmain_init_32:
	.Lmain_initendf:
	ret
	.Lmain_init_33:
	.section	 .text._main
	.Lmain_main_34:
;	./src/main.c: 30: int main(void)
; genLabel
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
	.Lmain_main_35:
	.Lmain_main_36:
;	./src/main.c: 35: init();
; genCall
	call	_init
	.Lmain_main_37:
;	./src/main.c: 37: while (1) {
; genLabel
00102$:
; genGoto
	jp	00102$
; genLabel
00104$:
	.Lmain_main_38:
;	./src/main.c: 40: }
; genEndFunction
	.Lmain_main_39:
	.Lmain_mainendf:
	ret
	.Lmain_main_40:
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
	.ascii "./src/main.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lmain_init_0)
	.byte	3
	.sleb128	9
	.byte	1
	.byte	9
	.word	.Lmain_init_2-.Lmain_init_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lmain_init_5-.Lmain_init_2
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lmain_init_11-.Lmain_init_5
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lmain_init_17-.Lmain_init_11
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	.Lmain_init_18-.Lmain_init_17
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.Lmain_init_23-.Lmain_init_18
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lmain_init_26-.Lmain_init_23
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lmain_init_30-.Lmain_init_26
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lmain_init_31-.Lmain_init_30
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lmain_init_32-.Lmain_init_31
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lmain_main_34)
	.byte	3
	.sleb128	29
	.byte	1
	.byte	9
	.word	.Lmain_main_36-.Lmain_main_34
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	.Lmain_main_37-.Lmain_main_36
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lmain_main_38-.Lmain_main_37
	.byte	3
	.sleb128	3
	.byte	1
	.byte	9
	.word	1+.Lmain_main_39-.Lmain_main_38
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.Lmain_main_35)
	.word	0,(.Lmain_main_40)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lmain_init_29)
	.word	0,(.Lmain_init_33)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lmain_init_28)
	.word	0,(.Lmain_init_29)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lmain_init_27)
	.word	0,(.Lmain_init_28)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lmain_init_25)
	.word	0,(.Lmain_init_27)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lmain_init_24)
	.word	0,(.Lmain_init_25)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lmain_init_22)
	.word	0,(.Lmain_init_24)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lmain_init_21)
	.word	0,(.Lmain_init_22)
	.word	2
	.byte	120
	.sleb128	4
	.word	0,(.Lmain_init_20)
	.word	0,(.Lmain_init_21)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lmain_init_19)
	.word	0,(.Lmain_init_20)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lmain_init_16)
	.word	0,(.Lmain_init_19)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lmain_init_15)
	.word	0,(.Lmain_init_16)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Lmain_init_14)
	.word	0,(.Lmain_init_15)
	.word	2
	.byte	120
	.sleb128	4
	.word	0,(.Lmain_init_13)
	.word	0,(.Lmain_init_14)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lmain_init_12)
	.word	0,(.Lmain_init_13)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lmain_init_10)
	.word	0,(.Lmain_init_12)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lmain_init_9)
	.word	0,(.Lmain_init_10)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Lmain_init_8)
	.word	0,(.Lmain_init_9)
	.word	2
	.byte	120
	.sleb128	4
	.word	0,(.Lmain_init_7)
	.word	0,(.Lmain_init_8)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lmain_init_6)
	.word	0,(.Lmain_init_7)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lmain_init_4)
	.word	0,(.Lmain_init_6)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lmain_init_3)
	.word	0,(.Lmain_init_4)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lmain_init_1)
	.word	0,(.Lmain_init_3)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
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
	.uleb128	4
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
	.uleb128	3
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
	.ascii "./src/main.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.ascii "init"
	.byte	0
	.word	0,(_init)
	.word	0,(.Lmain_initendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start+20)
	.uleb128	3
	.ascii "int"
	.byte	0
	.byte	2
	.byte	5
	.uleb128	4
	.word	0,123
	.ascii "main"
	.byte	0
	.word	0,(_main)
	.word	0,(.Lmain_mainendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,75
	.uleb128	5
	.byte	2
	.byte	145
	.sleb128	0
	.ascii "time"
	.byte	0
	.word	0,123
	.uleb128	0
	.uleb128	3
	.ascii "unsigned long"
	.byte	0
	.byte	4
	.byte	7
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
	.word	0,56
	.ascii "init"
	.byte	0
	.word	0,82
	.ascii "main"
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
	.word	0,(.Lmain_main_35)	;initial loc
	.word	0,.Lmain_main_40-.Lmain_main_35
	.byte	1
	.word	0,(.Lmain_main_35)
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
	.word	0,166
	.word	0,(.Ldebug_CIE1_start-4)
	.word	0,(.Lmain_init_1)	;initial loc
	.word	0,.Lmain_init_33-.Lmain_init_1
	.byte	1
	.word	0,(.Lmain_init_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lmain_init_3)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lmain_init_4)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lmain_init_6)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lmain_init_7)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lmain_init_8)
	.byte	14
	.uleb128	5
	.byte	1
	.word	0,(.Lmain_init_9)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Lmain_init_10)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lmain_init_12)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lmain_init_13)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lmain_init_14)
	.byte	14
	.uleb128	5
	.byte	1
	.word	0,(.Lmain_init_15)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Lmain_init_16)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lmain_init_19)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lmain_init_20)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lmain_init_21)
	.byte	14
	.uleb128	5
	.byte	1
	.word	0,(.Lmain_init_22)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lmain_init_24)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lmain_init_25)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lmain_init_27)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lmain_init_28)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lmain_init_29)
	.byte	14
	.uleb128	2
