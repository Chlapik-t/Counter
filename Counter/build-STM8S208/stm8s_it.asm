;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "stm8s_it"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global _TIM4_ClearFlag
	.global _TRAP_IRQHandler
	.global _TLI_IRQHandler
	.global _AWU_IRQHandler
	.global _CLK_IRQHandler
	.global _EXTI_PORTA_IRQHandler
	.global _EXTI_PORTB_IRQHandler
	.global _EXTI_PORTC_IRQHandler
	.global _EXTI_PORTD_IRQHandler
	.global _EXTI_PORTE_IRQHandler
	.global _CAN_RX_IRQHandler
	.global _CAN_TX_IRQHandler
	.global _SPI_IRQHandler
	.global _TIM1_UPD_OVF_TRG_BRK_IRQHandler
	.global _TIM1_CAP_COM_IRQHandler
	.global _TIM2_UPD_OVF_BRK_IRQHandler
	.global _TIM2_CAP_COM_IRQHandler
	.global _TIM3_UPD_OVF_BRK_IRQHandler
	.global _TIM3_CAP_COM_IRQHandler
	.global _UART1_TX_IRQHandler
	.global _UART1_RX_IRQHandler
	.global _I2C_IRQHandler
	.global _UART3_TX_IRQHandler
	.global _UART3_RX_IRQHandler
	.global _ADC2_IRQHandler
	.global _TIM4_UPD_OVF_IRQHandler
	.global _EEPROM_EEC_IRQHandler
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
	.section	 .text._TRAP_IRQHandler
	.Lstm8s_it_TRAP_IRQHandler_0:
;	./src/stm8s_it.c: 65: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
; genLabel
;	-----------------------------------------
;	 function TRAP_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TRAP_IRQHandler:
	.Lstm8s_it_TRAP_IRQHandler_1:
	.Lstm8s_it_TRAP_IRQHandler_2:
;	./src/stm8s_it.c: 70: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_TRAP_IRQHandler_3:
	.Lstm8s_it_TRAP_IRQHandlerendf:
	iret
	.Lstm8s_it_TRAP_IRQHandler_4:
	.section	 .text._TLI_IRQHandler
	.Lstm8s_it_TLI_IRQHandler_5:
;	./src/stm8s_it.c: 76: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
; genLabel
;	-----------------------------------------
;	 function TLI_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TLI_IRQHandler:
	.Lstm8s_it_TLI_IRQHandler_6:
	.Lstm8s_it_TLI_IRQHandler_7:
;	./src/stm8s_it.c: 81: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_TLI_IRQHandler_8:
	.Lstm8s_it_TLI_IRQHandlerendf:
	iret
	.Lstm8s_it_TLI_IRQHandler_9:
	.section	 .text._AWU_IRQHandler
	.Lstm8s_it_AWU_IRQHandler_10:
;	./src/stm8s_it.c: 88: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
; genLabel
;	-----------------------------------------
;	 function AWU_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_AWU_IRQHandler:
	.Lstm8s_it_AWU_IRQHandler_11:
	.Lstm8s_it_AWU_IRQHandler_12:
;	./src/stm8s_it.c: 93: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_AWU_IRQHandler_13:
	.Lstm8s_it_AWU_IRQHandlerendf:
	iret
	.Lstm8s_it_AWU_IRQHandler_14:
	.section	 .text._CLK_IRQHandler
	.Lstm8s_it_CLK_IRQHandler_15:
;	./src/stm8s_it.c: 100: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
; genLabel
;	-----------------------------------------
;	 function CLK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_IRQHandler:
	.Lstm8s_it_CLK_IRQHandler_16:
	.Lstm8s_it_CLK_IRQHandler_17:
;	./src/stm8s_it.c: 105: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_CLK_IRQHandler_18:
	.Lstm8s_it_CLK_IRQHandlerendf:
	iret
	.Lstm8s_it_CLK_IRQHandler_19:
	.section	 .text._EXTI_PORTA_IRQHandler
	.Lstm8s_it_EXTI_PORTA_IRQHandler_20:
;	./src/stm8s_it.c: 112: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTA_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTA_IRQHandler:
	.Lstm8s_it_EXTI_PORTA_IRQHandler_21:
	.Lstm8s_it_EXTI_PORTA_IRQHandler_22:
;	./src/stm8s_it.c: 117: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_EXTI_PORTA_IRQHandler_23:
	.Lstm8s_it_EXTI_PORTA_IRQHandlerendf:
	iret
	.Lstm8s_it_EXTI_PORTA_IRQHandler_24:
	.section	 .text._EXTI_PORTB_IRQHandler
	.Lstm8s_it_EXTI_PORTB_IRQHandler_25:
;	./src/stm8s_it.c: 124: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTB_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTB_IRQHandler:
	.Lstm8s_it_EXTI_PORTB_IRQHandler_26:
	.Lstm8s_it_EXTI_PORTB_IRQHandler_27:
;	./src/stm8s_it.c: 129: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_EXTI_PORTB_IRQHandler_28:
	.Lstm8s_it_EXTI_PORTB_IRQHandlerendf:
	iret
	.Lstm8s_it_EXTI_PORTB_IRQHandler_29:
	.section	 .text._EXTI_PORTC_IRQHandler
	.Lstm8s_it_EXTI_PORTC_IRQHandler_30:
;	./src/stm8s_it.c: 136: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTC_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTC_IRQHandler:
	.Lstm8s_it_EXTI_PORTC_IRQHandler_31:
	.Lstm8s_it_EXTI_PORTC_IRQHandler_32:
;	./src/stm8s_it.c: 141: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_EXTI_PORTC_IRQHandler_33:
	.Lstm8s_it_EXTI_PORTC_IRQHandlerendf:
	iret
	.Lstm8s_it_EXTI_PORTC_IRQHandler_34:
	.section	 .text._EXTI_PORTD_IRQHandler
	.Lstm8s_it_EXTI_PORTD_IRQHandler_35:
;	./src/stm8s_it.c: 148: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTD_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTD_IRQHandler:
	.Lstm8s_it_EXTI_PORTD_IRQHandler_36:
	.Lstm8s_it_EXTI_PORTD_IRQHandler_37:
;	./src/stm8s_it.c: 153: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_EXTI_PORTD_IRQHandler_38:
	.Lstm8s_it_EXTI_PORTD_IRQHandlerendf:
	iret
	.Lstm8s_it_EXTI_PORTD_IRQHandler_39:
	.section	 .text._EXTI_PORTE_IRQHandler
	.Lstm8s_it_EXTI_PORTE_IRQHandler_40:
;	./src/stm8s_it.c: 160: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTE_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTE_IRQHandler:
	.Lstm8s_it_EXTI_PORTE_IRQHandler_41:
	.Lstm8s_it_EXTI_PORTE_IRQHandler_42:
;	./src/stm8s_it.c: 165: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_EXTI_PORTE_IRQHandler_43:
	.Lstm8s_it_EXTI_PORTE_IRQHandlerendf:
	iret
	.Lstm8s_it_EXTI_PORTE_IRQHandler_44:
	.section	 .text._CAN_RX_IRQHandler
	.Lstm8s_it_CAN_RX_IRQHandler_45:
;	./src/stm8s_it.c: 186: INTERRUPT_HANDLER(CAN_RX_IRQHandler, 8)
; genLabel
;	-----------------------------------------
;	 function CAN_RX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CAN_RX_IRQHandler:
	.Lstm8s_it_CAN_RX_IRQHandler_46:
	.Lstm8s_it_CAN_RX_IRQHandler_47:
;	./src/stm8s_it.c: 191: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_CAN_RX_IRQHandler_48:
	.Lstm8s_it_CAN_RX_IRQHandlerendf:
	iret
	.Lstm8s_it_CAN_RX_IRQHandler_49:
	.section	 .text._CAN_TX_IRQHandler
	.Lstm8s_it_CAN_TX_IRQHandler_50:
;	./src/stm8s_it.c: 198: INTERRUPT_HANDLER(CAN_TX_IRQHandler, 9)
; genLabel
;	-----------------------------------------
;	 function CAN_TX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CAN_TX_IRQHandler:
	.Lstm8s_it_CAN_TX_IRQHandler_51:
	.Lstm8s_it_CAN_TX_IRQHandler_52:
;	./src/stm8s_it.c: 203: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_CAN_TX_IRQHandler_53:
	.Lstm8s_it_CAN_TX_IRQHandlerendf:
	iret
	.Lstm8s_it_CAN_TX_IRQHandler_54:
	.section	 .text._SPI_IRQHandler
	.Lstm8s_it_SPI_IRQHandler_55:
;	./src/stm8s_it.c: 211: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
; genLabel
;	-----------------------------------------
;	 function SPI_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_IRQHandler:
	.Lstm8s_it_SPI_IRQHandler_56:
	.Lstm8s_it_SPI_IRQHandler_57:
;	./src/stm8s_it.c: 216: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_SPI_IRQHandler_58:
	.Lstm8s_it_SPI_IRQHandlerendf:
	iret
	.Lstm8s_it_SPI_IRQHandler_59:
	.section	 .text._TIM1_UPD_OVF_TRG_BRK_IRQHandler
	.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_60:
;	./src/stm8s_it.c: 223: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
; genLabel
;	-----------------------------------------
;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
	.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_61:
	.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_62:
;	./src/stm8s_it.c: 228: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_63:
	.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandlerendf:
	iret
	.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_64:
	.section	 .text._TIM1_CAP_COM_IRQHandler
	.Lstm8s_it_TIM1_CAP_COM_IRQHandler_65:
;	./src/stm8s_it.c: 235: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
; genLabel
;	-----------------------------------------
;	 function TIM1_CAP_COM_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_CAP_COM_IRQHandler:
	.Lstm8s_it_TIM1_CAP_COM_IRQHandler_66:
	.Lstm8s_it_TIM1_CAP_COM_IRQHandler_67:
;	./src/stm8s_it.c: 240: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_TIM1_CAP_COM_IRQHandler_68:
	.Lstm8s_it_TIM1_CAP_COM_IRQHandlerendf:
	iret
	.Lstm8s_it_TIM1_CAP_COM_IRQHandler_69:
	.section	 .text._TIM2_UPD_OVF_BRK_IRQHandler
	.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_70:
;	./src/stm8s_it.c: 272: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
; genLabel
;	-----------------------------------------
;	 function TIM2_UPD_OVF_BRK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_UPD_OVF_BRK_IRQHandler:
	.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_71:
	.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_72:
;	./src/stm8s_it.c: 277: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_73:
	.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandlerendf:
	iret
	.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_74:
	.section	 .text._TIM2_CAP_COM_IRQHandler
	.Lstm8s_it_TIM2_CAP_COM_IRQHandler_75:
;	./src/stm8s_it.c: 284: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
; genLabel
;	-----------------------------------------
;	 function TIM2_CAP_COM_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_CAP_COM_IRQHandler:
	.Lstm8s_it_TIM2_CAP_COM_IRQHandler_76:
	.Lstm8s_it_TIM2_CAP_COM_IRQHandler_77:
;	./src/stm8s_it.c: 289: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_TIM2_CAP_COM_IRQHandler_78:
	.Lstm8s_it_TIM2_CAP_COM_IRQHandlerendf:
	iret
	.Lstm8s_it_TIM2_CAP_COM_IRQHandler_79:
	.section	 .text._TIM3_UPD_OVF_BRK_IRQHandler
	.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_80:
;	./src/stm8s_it.c: 299: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
; genLabel
;	-----------------------------------------
;	 function TIM3_UPD_OVF_BRK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM3_UPD_OVF_BRK_IRQHandler:
	.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_81:
	.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_82:
;	./src/stm8s_it.c: 304: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_83:
	.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandlerendf:
	iret
	.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_84:
	.section	 .text._TIM3_CAP_COM_IRQHandler
	.Lstm8s_it_TIM3_CAP_COM_IRQHandler_85:
;	./src/stm8s_it.c: 311: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
; genLabel
;	-----------------------------------------
;	 function TIM3_CAP_COM_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM3_CAP_COM_IRQHandler:
	.Lstm8s_it_TIM3_CAP_COM_IRQHandler_86:
	.Lstm8s_it_TIM3_CAP_COM_IRQHandler_87:
;	./src/stm8s_it.c: 316: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_TIM3_CAP_COM_IRQHandler_88:
	.Lstm8s_it_TIM3_CAP_COM_IRQHandlerendf:
	iret
	.Lstm8s_it_TIM3_CAP_COM_IRQHandler_89:
	.section	 .text._UART1_TX_IRQHandler
	.Lstm8s_it_UART1_TX_IRQHandler_90:
;	./src/stm8s_it.c: 326: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
; genLabel
;	-----------------------------------------
;	 function UART1_TX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_TX_IRQHandler:
	.Lstm8s_it_UART1_TX_IRQHandler_91:
	.Lstm8s_it_UART1_TX_IRQHandler_92:
;	./src/stm8s_it.c: 331: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_UART1_TX_IRQHandler_93:
	.Lstm8s_it_UART1_TX_IRQHandlerendf:
	iret
	.Lstm8s_it_UART1_TX_IRQHandler_94:
	.section	 .text._UART1_RX_IRQHandler
	.Lstm8s_it_UART1_RX_IRQHandler_95:
;	./src/stm8s_it.c: 338: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
; genLabel
;	-----------------------------------------
;	 function UART1_RX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_RX_IRQHandler:
	.Lstm8s_it_UART1_RX_IRQHandler_96:
	.Lstm8s_it_UART1_RX_IRQHandler_97:
;	./src/stm8s_it.c: 343: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_UART1_RX_IRQHandler_98:
	.Lstm8s_it_UART1_RX_IRQHandlerendf:
	iret
	.Lstm8s_it_UART1_RX_IRQHandler_99:
	.section	 .text._I2C_IRQHandler
	.Lstm8s_it_I2C_IRQHandler_100:
;	./src/stm8s_it.c: 351: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
; genLabel
;	-----------------------------------------
;	 function I2C_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_I2C_IRQHandler:
	.Lstm8s_it_I2C_IRQHandler_101:
	.Lstm8s_it_I2C_IRQHandler_102:
;	./src/stm8s_it.c: 356: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_I2C_IRQHandler_103:
	.Lstm8s_it_I2C_IRQHandlerendf:
	iret
	.Lstm8s_it_I2C_IRQHandler_104:
	.section	 .text._UART3_TX_IRQHandler
	.Lstm8s_it_UART3_TX_IRQHandler_105:
;	./src/stm8s_it.c: 390: INTERRUPT_HANDLER(UART3_TX_IRQHandler, 20)
; genLabel
;	-----------------------------------------
;	 function UART3_TX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART3_TX_IRQHandler:
	.Lstm8s_it_UART3_TX_IRQHandler_106:
	.Lstm8s_it_UART3_TX_IRQHandler_107:
;	./src/stm8s_it.c: 395: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_UART3_TX_IRQHandler_108:
	.Lstm8s_it_UART3_TX_IRQHandlerendf:
	iret
	.Lstm8s_it_UART3_TX_IRQHandler_109:
	.section	 .text._UART3_RX_IRQHandler
	.Lstm8s_it_UART3_RX_IRQHandler_110:
;	./src/stm8s_it.c: 402: INTERRUPT_HANDLER(UART3_RX_IRQHandler, 21)
; genLabel
;	-----------------------------------------
;	 function UART3_RX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART3_RX_IRQHandler:
	.Lstm8s_it_UART3_RX_IRQHandler_111:
	.Lstm8s_it_UART3_RX_IRQHandler_112:
;	./src/stm8s_it.c: 407: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_UART3_RX_IRQHandler_113:
	.Lstm8s_it_UART3_RX_IRQHandlerendf:
	iret
	.Lstm8s_it_UART3_RX_IRQHandler_114:
	.section	 .text._ADC2_IRQHandler
	.Lstm8s_it_ADC2_IRQHandler_115:
;	./src/stm8s_it.c: 416: INTERRUPT_HANDLER(ADC2_IRQHandler, 22)
; genLabel
;	-----------------------------------------
;	 function ADC2_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_IRQHandler:
	.Lstm8s_it_ADC2_IRQHandler_116:
	.Lstm8s_it_ADC2_IRQHandler_117:
;	./src/stm8s_it.c: 422: return;
; genReturn
; genLabel
00101$:
	.Lstm8s_it_ADC2_IRQHandler_118:
;	./src/stm8s_it.c: 424: }
; genEndFunction
	.Lstm8s_it_ADC2_IRQHandler_119:
	.Lstm8s_it_ADC2_IRQHandlerendf:
	iret
	.Lstm8s_it_ADC2_IRQHandler_120:
	.section	 .text._TIM4_UPD_OVF_IRQHandler
	.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_121:
;	./src/stm8s_it.c: 473: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
; genLabel
;	-----------------------------------------
;	 function TIM4_UPD_OVF_IRQHandler
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_TIM4_UPD_OVF_IRQHandler:
	.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_122:
	.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_123:
;	./src/stm8s_it.c: 475: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
; genIPush
	push	#0x01
	.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_124:
; genCall
	call	_TIM4_ClearFlag
	pop	a
	.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_125:
	.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_126:
;	./src/stm8s_it.c: 476: miliseconds++;
; genAssign
	ldw	x, _miliseconds+2
	ldw	y, _miliseconds+0
; genPlus
	incw	x
	jrne	00103$
	incw	y
00103$:
; genAssign
	ldw	_miliseconds+2, x
	ldw	_miliseconds+0, y
; genLabel
00101$:
	.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_127:
;	./src/stm8s_it.c: 477: }
; genEndFunction
	.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_128:
	.Lstm8s_it_TIM4_UPD_OVF_IRQHandlerendf:
	iret
	.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_129:
	.section	 .text._EEPROM_EEC_IRQHandler
	.Lstm8s_it_EEPROM_EEC_IRQHandler_130:
;	./src/stm8s_it.c: 485: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
; genLabel
;	-----------------------------------------
;	 function EEPROM_EEC_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EEPROM_EEC_IRQHandler:
	.Lstm8s_it_EEPROM_EEC_IRQHandler_131:
	.Lstm8s_it_EEPROM_EEC_IRQHandler_132:
;	./src/stm8s_it.c: 490: }
; genLabel
00101$:
; genEndFunction
	.Lstm8s_it_EEPROM_EEC_IRQHandler_133:
	.Lstm8s_it_EEPROM_EEC_IRQHandlerendf:
	iret
	.Lstm8s_it_EEPROM_EEC_IRQHandler_134:
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
	.ascii "./src/stm8s_it.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_TRAP_IRQHandler_0)
	.byte	3
	.sleb128	64
	.byte	1
	.byte	9
	.word	.Lstm8s_it_TRAP_IRQHandler_2-.Lstm8s_it_TRAP_IRQHandler_0
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_TRAP_IRQHandler_3-.Lstm8s_it_TRAP_IRQHandler_2
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_TLI_IRQHandler_5)
	.byte	3
	.sleb128	75
	.byte	1
	.byte	9
	.word	.Lstm8s_it_TLI_IRQHandler_7-.Lstm8s_it_TLI_IRQHandler_5
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_TLI_IRQHandler_8-.Lstm8s_it_TLI_IRQHandler_7
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_AWU_IRQHandler_10)
	.byte	3
	.sleb128	87
	.byte	1
	.byte	9
	.word	.Lstm8s_it_AWU_IRQHandler_12-.Lstm8s_it_AWU_IRQHandler_10
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_AWU_IRQHandler_13-.Lstm8s_it_AWU_IRQHandler_12
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_CLK_IRQHandler_15)
	.byte	3
	.sleb128	99
	.byte	1
	.byte	9
	.word	.Lstm8s_it_CLK_IRQHandler_17-.Lstm8s_it_CLK_IRQHandler_15
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_CLK_IRQHandler_18-.Lstm8s_it_CLK_IRQHandler_17
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_EXTI_PORTA_IRQHandler_20)
	.byte	3
	.sleb128	111
	.byte	1
	.byte	9
	.word	.Lstm8s_it_EXTI_PORTA_IRQHandler_22-.Lstm8s_it_EXTI_PORTA_IRQHandler_20
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_EXTI_PORTA_IRQHandler_23-.Lstm8s_it_EXTI_PORTA_IRQHandler_22
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_EXTI_PORTB_IRQHandler_25)
	.byte	3
	.sleb128	123
	.byte	1
	.byte	9
	.word	.Lstm8s_it_EXTI_PORTB_IRQHandler_27-.Lstm8s_it_EXTI_PORTB_IRQHandler_25
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_EXTI_PORTB_IRQHandler_28-.Lstm8s_it_EXTI_PORTB_IRQHandler_27
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_EXTI_PORTC_IRQHandler_30)
	.byte	3
	.sleb128	135
	.byte	1
	.byte	9
	.word	.Lstm8s_it_EXTI_PORTC_IRQHandler_32-.Lstm8s_it_EXTI_PORTC_IRQHandler_30
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_EXTI_PORTC_IRQHandler_33-.Lstm8s_it_EXTI_PORTC_IRQHandler_32
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_EXTI_PORTD_IRQHandler_35)
	.byte	3
	.sleb128	147
	.byte	1
	.byte	9
	.word	.Lstm8s_it_EXTI_PORTD_IRQHandler_37-.Lstm8s_it_EXTI_PORTD_IRQHandler_35
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_EXTI_PORTD_IRQHandler_38-.Lstm8s_it_EXTI_PORTD_IRQHandler_37
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_EXTI_PORTE_IRQHandler_40)
	.byte	3
	.sleb128	159
	.byte	1
	.byte	9
	.word	.Lstm8s_it_EXTI_PORTE_IRQHandler_42-.Lstm8s_it_EXTI_PORTE_IRQHandler_40
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_EXTI_PORTE_IRQHandler_43-.Lstm8s_it_EXTI_PORTE_IRQHandler_42
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_CAN_RX_IRQHandler_45)
	.byte	3
	.sleb128	185
	.byte	1
	.byte	9
	.word	.Lstm8s_it_CAN_RX_IRQHandler_47-.Lstm8s_it_CAN_RX_IRQHandler_45
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_CAN_RX_IRQHandler_48-.Lstm8s_it_CAN_RX_IRQHandler_47
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_CAN_TX_IRQHandler_50)
	.byte	3
	.sleb128	197
	.byte	1
	.byte	9
	.word	.Lstm8s_it_CAN_TX_IRQHandler_52-.Lstm8s_it_CAN_TX_IRQHandler_50
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_CAN_TX_IRQHandler_53-.Lstm8s_it_CAN_TX_IRQHandler_52
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_SPI_IRQHandler_55)
	.byte	3
	.sleb128	210
	.byte	1
	.byte	9
	.word	.Lstm8s_it_SPI_IRQHandler_57-.Lstm8s_it_SPI_IRQHandler_55
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_SPI_IRQHandler_58-.Lstm8s_it_SPI_IRQHandler_57
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_60)
	.byte	3
	.sleb128	222
	.byte	1
	.byte	9
	.word	.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_62-.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_60
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_63-.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_62
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_TIM1_CAP_COM_IRQHandler_65)
	.byte	3
	.sleb128	234
	.byte	1
	.byte	9
	.word	.Lstm8s_it_TIM1_CAP_COM_IRQHandler_67-.Lstm8s_it_TIM1_CAP_COM_IRQHandler_65
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_TIM1_CAP_COM_IRQHandler_68-.Lstm8s_it_TIM1_CAP_COM_IRQHandler_67
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_70)
	.byte	3
	.sleb128	271
	.byte	1
	.byte	9
	.word	.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_72-.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_70
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_73-.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_72
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_TIM2_CAP_COM_IRQHandler_75)
	.byte	3
	.sleb128	283
	.byte	1
	.byte	9
	.word	.Lstm8s_it_TIM2_CAP_COM_IRQHandler_77-.Lstm8s_it_TIM2_CAP_COM_IRQHandler_75
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_TIM2_CAP_COM_IRQHandler_78-.Lstm8s_it_TIM2_CAP_COM_IRQHandler_77
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_80)
	.byte	3
	.sleb128	298
	.byte	1
	.byte	9
	.word	.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_82-.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_80
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_83-.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_82
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_TIM3_CAP_COM_IRQHandler_85)
	.byte	3
	.sleb128	310
	.byte	1
	.byte	9
	.word	.Lstm8s_it_TIM3_CAP_COM_IRQHandler_87-.Lstm8s_it_TIM3_CAP_COM_IRQHandler_85
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_TIM3_CAP_COM_IRQHandler_88-.Lstm8s_it_TIM3_CAP_COM_IRQHandler_87
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_UART1_TX_IRQHandler_90)
	.byte	3
	.sleb128	325
	.byte	1
	.byte	9
	.word	.Lstm8s_it_UART1_TX_IRQHandler_92-.Lstm8s_it_UART1_TX_IRQHandler_90
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_UART1_TX_IRQHandler_93-.Lstm8s_it_UART1_TX_IRQHandler_92
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_UART1_RX_IRQHandler_95)
	.byte	3
	.sleb128	337
	.byte	1
	.byte	9
	.word	.Lstm8s_it_UART1_RX_IRQHandler_97-.Lstm8s_it_UART1_RX_IRQHandler_95
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_UART1_RX_IRQHandler_98-.Lstm8s_it_UART1_RX_IRQHandler_97
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_I2C_IRQHandler_100)
	.byte	3
	.sleb128	350
	.byte	1
	.byte	9
	.word	.Lstm8s_it_I2C_IRQHandler_102-.Lstm8s_it_I2C_IRQHandler_100
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_I2C_IRQHandler_103-.Lstm8s_it_I2C_IRQHandler_102
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_UART3_TX_IRQHandler_105)
	.byte	3
	.sleb128	389
	.byte	1
	.byte	9
	.word	.Lstm8s_it_UART3_TX_IRQHandler_107-.Lstm8s_it_UART3_TX_IRQHandler_105
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_UART3_TX_IRQHandler_108-.Lstm8s_it_UART3_TX_IRQHandler_107
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_UART3_RX_IRQHandler_110)
	.byte	3
	.sleb128	401
	.byte	1
	.byte	9
	.word	.Lstm8s_it_UART3_RX_IRQHandler_112-.Lstm8s_it_UART3_RX_IRQHandler_110
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_UART3_RX_IRQHandler_113-.Lstm8s_it_UART3_RX_IRQHandler_112
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_ADC2_IRQHandler_115)
	.byte	3
	.sleb128	415
	.byte	1
	.byte	9
	.word	.Lstm8s_it_ADC2_IRQHandler_117-.Lstm8s_it_ADC2_IRQHandler_115
	.byte	3
	.sleb128	6
	.byte	1
	.byte	9
	.word	.Lstm8s_it_ADC2_IRQHandler_118-.Lstm8s_it_ADC2_IRQHandler_117
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_ADC2_IRQHandler_119-.Lstm8s_it_ADC2_IRQHandler_118
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_121)
	.byte	3
	.sleb128	472
	.byte	1
	.byte	9
	.word	.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_123-.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_121
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_126-.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_123
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_127-.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_126
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_128-.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_127
	.byte	0
	.uleb128	1
	.byte	1
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lstm8s_it_EEPROM_EEC_IRQHandler_130)
	.byte	3
	.sleb128	484
	.byte	1
	.byte	9
	.word	.Lstm8s_it_EEPROM_EEC_IRQHandler_132-.Lstm8s_it_EEPROM_EEC_IRQHandler_130
	.byte	3
	.sleb128	5
	.byte	1
	.byte	9
	.word	1+.Lstm8s_it_EEPROM_EEC_IRQHandler_133-.Lstm8s_it_EEPROM_EEC_IRQHandler_132
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.Lstm8s_it_EEPROM_EEC_IRQHandler_131)
	.word	0,(.Lstm8s_it_EEPROM_EEC_IRQHandler_134)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_125)
	.word	0,(.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_129)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_124)
	.word	0,(.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_125)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_122)
	.word	0,(.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_124)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_ADC2_IRQHandler_116)
	.word	0,(.Lstm8s_it_ADC2_IRQHandler_120)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_UART3_RX_IRQHandler_111)
	.word	0,(.Lstm8s_it_UART3_RX_IRQHandler_114)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_UART3_TX_IRQHandler_106)
	.word	0,(.Lstm8s_it_UART3_TX_IRQHandler_109)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_I2C_IRQHandler_101)
	.word	0,(.Lstm8s_it_I2C_IRQHandler_104)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_UART1_RX_IRQHandler_96)
	.word	0,(.Lstm8s_it_UART1_RX_IRQHandler_99)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_UART1_TX_IRQHandler_91)
	.word	0,(.Lstm8s_it_UART1_TX_IRQHandler_94)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_TIM3_CAP_COM_IRQHandler_86)
	.word	0,(.Lstm8s_it_TIM3_CAP_COM_IRQHandler_89)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_81)
	.word	0,(.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_84)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_TIM2_CAP_COM_IRQHandler_76)
	.word	0,(.Lstm8s_it_TIM2_CAP_COM_IRQHandler_79)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_71)
	.word	0,(.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_74)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_TIM1_CAP_COM_IRQHandler_66)
	.word	0,(.Lstm8s_it_TIM1_CAP_COM_IRQHandler_69)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_61)
	.word	0,(.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_64)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_SPI_IRQHandler_56)
	.word	0,(.Lstm8s_it_SPI_IRQHandler_59)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_CAN_TX_IRQHandler_51)
	.word	0,(.Lstm8s_it_CAN_TX_IRQHandler_54)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_CAN_RX_IRQHandler_46)
	.word	0,(.Lstm8s_it_CAN_RX_IRQHandler_49)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_EXTI_PORTE_IRQHandler_41)
	.word	0,(.Lstm8s_it_EXTI_PORTE_IRQHandler_44)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_EXTI_PORTD_IRQHandler_36)
	.word	0,(.Lstm8s_it_EXTI_PORTD_IRQHandler_39)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_EXTI_PORTC_IRQHandler_31)
	.word	0,(.Lstm8s_it_EXTI_PORTC_IRQHandler_34)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_EXTI_PORTB_IRQHandler_26)
	.word	0,(.Lstm8s_it_EXTI_PORTB_IRQHandler_29)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_EXTI_PORTA_IRQHandler_21)
	.word	0,(.Lstm8s_it_EXTI_PORTA_IRQHandler_24)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_CLK_IRQHandler_16)
	.word	0,(.Lstm8s_it_CLK_IRQHandler_19)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_AWU_IRQHandler_11)
	.word	0,(.Lstm8s_it_AWU_IRQHandler_14)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_TLI_IRQHandler_6)
	.word	0,(.Lstm8s_it_TLI_IRQHandler_9)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0
	.word	0,(.Lstm8s_it_TRAP_IRQHandler_1)
	.word	0,(.Lstm8s_it_TRAP_IRQHandler_4)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
	.uleb128	4
	.uleb128	53
	.byte	0
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
	.uleb128	60
	.uleb128	12
	.uleb128	63
	.uleb128	12
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
	.uleb128	2
	.uleb128	46
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
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
	.ascii "./src/stm8s_it.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.ascii "TRAP_IRQHandler"
	.byte	0
	.word	0,(_TRAP_IRQHandler)
	.word	0,(.Lstm8s_it_TRAP_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+524)
	.uleb128	2
	.ascii "TLI_IRQHandler"
	.byte	0
	.word	0,(_TLI_IRQHandler)
	.word	0,(.Lstm8s_it_TLI_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+504)
	.uleb128	2
	.ascii "AWU_IRQHandler"
	.byte	0
	.word	0,(_AWU_IRQHandler)
	.word	0,(.Lstm8s_it_AWU_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+484)
	.uleb128	2
	.ascii "CLK_IRQHandler"
	.byte	0
	.word	0,(_CLK_IRQHandler)
	.word	0,(.Lstm8s_it_CLK_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+464)
	.uleb128	2
	.ascii "EXTI_PORTA_IRQHandler"
	.byte	0
	.word	0,(_EXTI_PORTA_IRQHandler)
	.word	0,(.Lstm8s_it_EXTI_PORTA_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+444)
	.uleb128	2
	.ascii "EXTI_PORTB_IRQHandler"
	.byte	0
	.word	0,(_EXTI_PORTB_IRQHandler)
	.word	0,(.Lstm8s_it_EXTI_PORTB_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+424)
	.uleb128	2
	.ascii "EXTI_PORTC_IRQHandler"
	.byte	0
	.word	0,(_EXTI_PORTC_IRQHandler)
	.word	0,(.Lstm8s_it_EXTI_PORTC_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+404)
	.uleb128	2
	.ascii "EXTI_PORTD_IRQHandler"
	.byte	0
	.word	0,(_EXTI_PORTD_IRQHandler)
	.word	0,(.Lstm8s_it_EXTI_PORTD_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+384)
	.uleb128	2
	.ascii "EXTI_PORTE_IRQHandler"
	.byte	0
	.word	0,(_EXTI_PORTE_IRQHandler)
	.word	0,(.Lstm8s_it_EXTI_PORTE_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+364)
	.uleb128	2
	.ascii "CAN_RX_IRQHandler"
	.byte	0
	.word	0,(_CAN_RX_IRQHandler)
	.word	0,(.Lstm8s_it_CAN_RX_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+344)
	.uleb128	2
	.ascii "CAN_TX_IRQHandler"
	.byte	0
	.word	0,(_CAN_TX_IRQHandler)
	.word	0,(.Lstm8s_it_CAN_TX_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+324)
	.uleb128	2
	.ascii "SPI_IRQHandler"
	.byte	0
	.word	0,(_SPI_IRQHandler)
	.word	0,(.Lstm8s_it_SPI_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+304)
	.uleb128	2
	.ascii "TIM1_UPD_OVF_TRG_BRK_IRQHandler"
	.byte	0
	.word	0,(_TIM1_UPD_OVF_TRG_BRK_IRQHandler)
	.word	0,(.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+284)
	.uleb128	2
	.ascii "TIM1_CAP_COM_IRQHandler"
	.byte	0
	.word	0,(_TIM1_CAP_COM_IRQHandler)
	.word	0,(.Lstm8s_it_TIM1_CAP_COM_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+264)
	.uleb128	2
	.ascii "TIM2_UPD_OVF_BRK_IRQHandler"
	.byte	0
	.word	0,(_TIM2_UPD_OVF_BRK_IRQHandler)
	.word	0,(.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+244)
	.uleb128	2
	.ascii "TIM2_CAP_COM_IRQHandler"
	.byte	0
	.word	0,(_TIM2_CAP_COM_IRQHandler)
	.word	0,(.Lstm8s_it_TIM2_CAP_COM_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+224)
	.uleb128	2
	.ascii "TIM3_UPD_OVF_BRK_IRQHandler"
	.byte	0
	.word	0,(_TIM3_UPD_OVF_BRK_IRQHandler)
	.word	0,(.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+204)
	.uleb128	2
	.ascii "TIM3_CAP_COM_IRQHandler"
	.byte	0
	.word	0,(_TIM3_CAP_COM_IRQHandler)
	.word	0,(.Lstm8s_it_TIM3_CAP_COM_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+184)
	.uleb128	2
	.ascii "UART1_TX_IRQHandler"
	.byte	0
	.word	0,(_UART1_TX_IRQHandler)
	.word	0,(.Lstm8s_it_UART1_TX_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+164)
	.uleb128	2
	.ascii "UART1_RX_IRQHandler"
	.byte	0
	.word	0,(_UART1_RX_IRQHandler)
	.word	0,(.Lstm8s_it_UART1_RX_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+144)
	.uleb128	2
	.ascii "I2C_IRQHandler"
	.byte	0
	.word	0,(_I2C_IRQHandler)
	.word	0,(.Lstm8s_it_I2C_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+124)
	.uleb128	2
	.ascii "UART3_TX_IRQHandler"
	.byte	0
	.word	0,(_UART3_TX_IRQHandler)
	.word	0,(.Lstm8s_it_UART3_TX_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+104)
	.uleb128	2
	.ascii "UART3_RX_IRQHandler"
	.byte	0
	.word	0,(_UART3_RX_IRQHandler)
	.word	0,(.Lstm8s_it_UART3_RX_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+84)
	.uleb128	2
	.ascii "ADC2_IRQHandler"
	.byte	0
	.word	0,(_ADC2_IRQHandler)
	.word	0,(.Lstm8s_it_ADC2_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+64)
	.uleb128	2
	.ascii "TIM4_UPD_OVF_IRQHandler"
	.byte	0
	.word	0,(_TIM4_UPD_OVF_IRQHandler)
	.word	0,(.Lstm8s_it_TIM4_UPD_OVF_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start+20)
	.uleb128	2
	.ascii "EEPROM_EEC_IRQHandler"
	.byte	0
	.word	0,(_EEPROM_EEC_IRQHandler)
	.word	0,(.Lstm8s_it_EEPROM_EEC_IRQHandlerendf+1)
	.byte	3
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.uleb128	3
	.ascii "unsigned long"
	.byte	0
	.byte	4
	.byte	7
	.uleb128	4
	.word	0,989
	.uleb128	5
	.byte	5
	.byte	3
	.word	0,(_miliseconds)
	.ascii "miliseconds"
	.byte	0
	.byte	1
	.byte	1
	.word	0,1006
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
	.word	0,60
	.ascii "TRAP_IRQHandler"
	.byte	0
	.word	0,91
	.ascii "TLI_IRQHandler"
	.byte	0
	.word	0,121
	.ascii "AWU_IRQHandler"
	.byte	0
	.word	0,151
	.ascii "CLK_IRQHandler"
	.byte	0
	.word	0,181
	.ascii "EXTI_PORTA_IRQHandler"
	.byte	0
	.word	0,218
	.ascii "EXTI_PORTB_IRQHandler"
	.byte	0
	.word	0,255
	.ascii "EXTI_PORTC_IRQHandler"
	.byte	0
	.word	0,292
	.ascii "EXTI_PORTD_IRQHandler"
	.byte	0
	.word	0,329
	.ascii "EXTI_PORTE_IRQHandler"
	.byte	0
	.word	0,366
	.ascii "CAN_RX_IRQHandler"
	.byte	0
	.word	0,399
	.ascii "CAN_TX_IRQHandler"
	.byte	0
	.word	0,432
	.ascii "SPI_IRQHandler"
	.byte	0
	.word	0,462
	.ascii "TIM1_UPD_OVF_TRG_BRK_IRQHandler"
	.byte	0
	.word	0,509
	.ascii "TIM1_CAP_COM_IRQHandler"
	.byte	0
	.word	0,548
	.ascii "TIM2_UPD_OVF_BRK_IRQHandler"
	.byte	0
	.word	0,591
	.ascii "TIM2_CAP_COM_IRQHandler"
	.byte	0
	.word	0,630
	.ascii "TIM3_UPD_OVF_BRK_IRQHandler"
	.byte	0
	.word	0,673
	.ascii "TIM3_CAP_COM_IRQHandler"
	.byte	0
	.word	0,712
	.ascii "UART1_TX_IRQHandler"
	.byte	0
	.word	0,747
	.ascii "UART1_RX_IRQHandler"
	.byte	0
	.word	0,782
	.ascii "I2C_IRQHandler"
	.byte	0
	.word	0,812
	.ascii "UART3_TX_IRQHandler"
	.byte	0
	.word	0,847
	.ascii "UART3_RX_IRQHandler"
	.byte	0
	.word	0,882
	.ascii "ADC2_IRQHandler"
	.byte	0
	.word	0,913
	.ascii "TIM4_UPD_OVF_IRQHandler"
	.byte	0
	.word	0,952
	.ascii "EEPROM_EEC_IRQHandler"
	.byte	0
	.word	0,1011
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
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE0_end:
	.word	0,19
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.Lstm8s_it_EEPROM_EEC_IRQHandler_131)	;initial loc
	.word	0,.Lstm8s_it_EEPROM_EEC_IRQHandler_134-.Lstm8s_it_EEPROM_EEC_IRQHandler_131
	.byte	1
	.word	0,(.Lstm8s_it_EEPROM_EEC_IRQHandler_131)
	.byte	14
	.uleb128	9

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
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE1_end:
	.word	0,33
	.word	0,(.Ldebug_CIE1_start-4)
	.word	0,(.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_122)	;initial loc
	.word	0,.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_129-.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_122
	.byte	1
	.word	0,(.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_122)
	.byte	14
	.uleb128	9
	.byte	1
	.word	0,(.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_124)
	.byte	14
	.uleb128	10
	.byte	1
	.word	0,(.Lstm8s_it_TIM4_UPD_OVF_IRQHandler_125)
	.byte	14
	.uleb128	9

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
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE2_end:
	.word	0,19
	.word	0,(.Ldebug_CIE2_start-4)
	.word	0,(.Lstm8s_it_ADC2_IRQHandler_116)	;initial loc
	.word	0,.Lstm8s_it_ADC2_IRQHandler_120-.Lstm8s_it_ADC2_IRQHandler_116
	.byte	1
	.word	0,(.Lstm8s_it_ADC2_IRQHandler_116)
	.byte	14
	.uleb128	9

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
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE3_end:
	.word	0,19
	.word	0,(.Ldebug_CIE3_start-4)
	.word	0,(.Lstm8s_it_UART3_RX_IRQHandler_111)	;initial loc
	.word	0,.Lstm8s_it_UART3_RX_IRQHandler_114-.Lstm8s_it_UART3_RX_IRQHandler_111
	.byte	1
	.word	0,(.Lstm8s_it_UART3_RX_IRQHandler_111)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE4_end-.Ldebug_CIE4_start
.Ldebug_CIE4_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE4_end:
	.word	0,19
	.word	0,(.Ldebug_CIE4_start-4)
	.word	0,(.Lstm8s_it_UART3_TX_IRQHandler_106)	;initial loc
	.word	0,.Lstm8s_it_UART3_TX_IRQHandler_109-.Lstm8s_it_UART3_TX_IRQHandler_106
	.byte	1
	.word	0,(.Lstm8s_it_UART3_TX_IRQHandler_106)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE5_end-.Ldebug_CIE5_start
.Ldebug_CIE5_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE5_end:
	.word	0,19
	.word	0,(.Ldebug_CIE5_start-4)
	.word	0,(.Lstm8s_it_I2C_IRQHandler_101)	;initial loc
	.word	0,.Lstm8s_it_I2C_IRQHandler_104-.Lstm8s_it_I2C_IRQHandler_101
	.byte	1
	.word	0,(.Lstm8s_it_I2C_IRQHandler_101)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE6_end-.Ldebug_CIE6_start
.Ldebug_CIE6_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE6_end:
	.word	0,19
	.word	0,(.Ldebug_CIE6_start-4)
	.word	0,(.Lstm8s_it_UART1_RX_IRQHandler_96)	;initial loc
	.word	0,.Lstm8s_it_UART1_RX_IRQHandler_99-.Lstm8s_it_UART1_RX_IRQHandler_96
	.byte	1
	.word	0,(.Lstm8s_it_UART1_RX_IRQHandler_96)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE7_end-.Ldebug_CIE7_start
.Ldebug_CIE7_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE7_end:
	.word	0,19
	.word	0,(.Ldebug_CIE7_start-4)
	.word	0,(.Lstm8s_it_UART1_TX_IRQHandler_91)	;initial loc
	.word	0,.Lstm8s_it_UART1_TX_IRQHandler_94-.Lstm8s_it_UART1_TX_IRQHandler_91
	.byte	1
	.word	0,(.Lstm8s_it_UART1_TX_IRQHandler_91)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE8_end-.Ldebug_CIE8_start
.Ldebug_CIE8_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE8_end:
	.word	0,19
	.word	0,(.Ldebug_CIE8_start-4)
	.word	0,(.Lstm8s_it_TIM3_CAP_COM_IRQHandler_86)	;initial loc
	.word	0,.Lstm8s_it_TIM3_CAP_COM_IRQHandler_89-.Lstm8s_it_TIM3_CAP_COM_IRQHandler_86
	.byte	1
	.word	0,(.Lstm8s_it_TIM3_CAP_COM_IRQHandler_86)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE9_end-.Ldebug_CIE9_start
.Ldebug_CIE9_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE9_end:
	.word	0,19
	.word	0,(.Ldebug_CIE9_start-4)
	.word	0,(.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_81)	;initial loc
	.word	0,.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_84-.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_81
	.byte	1
	.word	0,(.Lstm8s_it_TIM3_UPD_OVF_BRK_IRQHandler_81)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE10_end-.Ldebug_CIE10_start
.Ldebug_CIE10_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE10_end:
	.word	0,19
	.word	0,(.Ldebug_CIE10_start-4)
	.word	0,(.Lstm8s_it_TIM2_CAP_COM_IRQHandler_76)	;initial loc
	.word	0,.Lstm8s_it_TIM2_CAP_COM_IRQHandler_79-.Lstm8s_it_TIM2_CAP_COM_IRQHandler_76
	.byte	1
	.word	0,(.Lstm8s_it_TIM2_CAP_COM_IRQHandler_76)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE11_end-.Ldebug_CIE11_start
.Ldebug_CIE11_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE11_end:
	.word	0,19
	.word	0,(.Ldebug_CIE11_start-4)
	.word	0,(.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_71)	;initial loc
	.word	0,.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_74-.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_71
	.byte	1
	.word	0,(.Lstm8s_it_TIM2_UPD_OVF_BRK_IRQHandler_71)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE12_end-.Ldebug_CIE12_start
.Ldebug_CIE12_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE12_end:
	.word	0,19
	.word	0,(.Ldebug_CIE12_start-4)
	.word	0,(.Lstm8s_it_TIM1_CAP_COM_IRQHandler_66)	;initial loc
	.word	0,.Lstm8s_it_TIM1_CAP_COM_IRQHandler_69-.Lstm8s_it_TIM1_CAP_COM_IRQHandler_66
	.byte	1
	.word	0,(.Lstm8s_it_TIM1_CAP_COM_IRQHandler_66)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE13_end-.Ldebug_CIE13_start
.Ldebug_CIE13_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE13_end:
	.word	0,19
	.word	0,(.Ldebug_CIE13_start-4)
	.word	0,(.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_61)	;initial loc
	.word	0,.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_64-.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_61
	.byte	1
	.word	0,(.Lstm8s_it_TIM1_UPD_OVF_TRG_BRK_IRQHandler_61)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE14_end-.Ldebug_CIE14_start
.Ldebug_CIE14_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE14_end:
	.word	0,19
	.word	0,(.Ldebug_CIE14_start-4)
	.word	0,(.Lstm8s_it_SPI_IRQHandler_56)	;initial loc
	.word	0,.Lstm8s_it_SPI_IRQHandler_59-.Lstm8s_it_SPI_IRQHandler_56
	.byte	1
	.word	0,(.Lstm8s_it_SPI_IRQHandler_56)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE15_end-.Ldebug_CIE15_start
.Ldebug_CIE15_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE15_end:
	.word	0,19
	.word	0,(.Ldebug_CIE15_start-4)
	.word	0,(.Lstm8s_it_CAN_TX_IRQHandler_51)	;initial loc
	.word	0,.Lstm8s_it_CAN_TX_IRQHandler_54-.Lstm8s_it_CAN_TX_IRQHandler_51
	.byte	1
	.word	0,(.Lstm8s_it_CAN_TX_IRQHandler_51)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE16_end-.Ldebug_CIE16_start
.Ldebug_CIE16_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE16_end:
	.word	0,19
	.word	0,(.Ldebug_CIE16_start-4)
	.word	0,(.Lstm8s_it_CAN_RX_IRQHandler_46)	;initial loc
	.word	0,.Lstm8s_it_CAN_RX_IRQHandler_49-.Lstm8s_it_CAN_RX_IRQHandler_46
	.byte	1
	.word	0,(.Lstm8s_it_CAN_RX_IRQHandler_46)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE17_end-.Ldebug_CIE17_start
.Ldebug_CIE17_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE17_end:
	.word	0,19
	.word	0,(.Ldebug_CIE17_start-4)
	.word	0,(.Lstm8s_it_EXTI_PORTE_IRQHandler_41)	;initial loc
	.word	0,.Lstm8s_it_EXTI_PORTE_IRQHandler_44-.Lstm8s_it_EXTI_PORTE_IRQHandler_41
	.byte	1
	.word	0,(.Lstm8s_it_EXTI_PORTE_IRQHandler_41)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE18_end-.Ldebug_CIE18_start
.Ldebug_CIE18_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE18_end:
	.word	0,19
	.word	0,(.Ldebug_CIE18_start-4)
	.word	0,(.Lstm8s_it_EXTI_PORTD_IRQHandler_36)	;initial loc
	.word	0,.Lstm8s_it_EXTI_PORTD_IRQHandler_39-.Lstm8s_it_EXTI_PORTD_IRQHandler_36
	.byte	1
	.word	0,(.Lstm8s_it_EXTI_PORTD_IRQHandler_36)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE19_end-.Ldebug_CIE19_start
.Ldebug_CIE19_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE19_end:
	.word	0,19
	.word	0,(.Ldebug_CIE19_start-4)
	.word	0,(.Lstm8s_it_EXTI_PORTC_IRQHandler_31)	;initial loc
	.word	0,.Lstm8s_it_EXTI_PORTC_IRQHandler_34-.Lstm8s_it_EXTI_PORTC_IRQHandler_31
	.byte	1
	.word	0,(.Lstm8s_it_EXTI_PORTC_IRQHandler_31)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE20_end-.Ldebug_CIE20_start
.Ldebug_CIE20_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE20_end:
	.word	0,19
	.word	0,(.Ldebug_CIE20_start-4)
	.word	0,(.Lstm8s_it_EXTI_PORTB_IRQHandler_26)	;initial loc
	.word	0,.Lstm8s_it_EXTI_PORTB_IRQHandler_29-.Lstm8s_it_EXTI_PORTB_IRQHandler_26
	.byte	1
	.word	0,(.Lstm8s_it_EXTI_PORTB_IRQHandler_26)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE21_end-.Ldebug_CIE21_start
.Ldebug_CIE21_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE21_end:
	.word	0,19
	.word	0,(.Ldebug_CIE21_start-4)
	.word	0,(.Lstm8s_it_EXTI_PORTA_IRQHandler_21)	;initial loc
	.word	0,.Lstm8s_it_EXTI_PORTA_IRQHandler_24-.Lstm8s_it_EXTI_PORTA_IRQHandler_21
	.byte	1
	.word	0,(.Lstm8s_it_EXTI_PORTA_IRQHandler_21)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE22_end-.Ldebug_CIE22_start
.Ldebug_CIE22_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE22_end:
	.word	0,19
	.word	0,(.Ldebug_CIE22_start-4)
	.word	0,(.Lstm8s_it_CLK_IRQHandler_16)	;initial loc
	.word	0,.Lstm8s_it_CLK_IRQHandler_19-.Lstm8s_it_CLK_IRQHandler_16
	.byte	1
	.word	0,(.Lstm8s_it_CLK_IRQHandler_16)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE23_end-.Ldebug_CIE23_start
.Ldebug_CIE23_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE23_end:
	.word	0,19
	.word	0,(.Ldebug_CIE23_start-4)
	.word	0,(.Lstm8s_it_AWU_IRQHandler_11)	;initial loc
	.word	0,.Lstm8s_it_AWU_IRQHandler_14-.Lstm8s_it_AWU_IRQHandler_11
	.byte	1
	.word	0,(.Lstm8s_it_AWU_IRQHandler_11)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE24_end-.Ldebug_CIE24_start
.Ldebug_CIE24_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE24_end:
	.word	0,19
	.word	0,(.Ldebug_CIE24_start-4)
	.word	0,(.Lstm8s_it_TLI_IRQHandler_6)	;initial loc
	.word	0,.Lstm8s_it_TLI_IRQHandler_9-.Lstm8s_it_TLI_IRQHandler_6
	.byte	1
	.word	0,(.Lstm8s_it_TLI_IRQHandler_6)
	.byte	14
	.uleb128	9

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE25_end-.Ldebug_CIE25_start
.Ldebug_CIE25_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	9
	.byte	137
	.uleb128	1
.Ldebug_CIE25_end:
	.word	0,19
	.word	0,(.Ldebug_CIE25_start-4)
	.word	0,(.Lstm8s_it_TRAP_IRQHandler_1)	;initial loc
	.word	0,.Lstm8s_it_TRAP_IRQHandler_4-.Lstm8s_it_TRAP_IRQHandler_1
	.byte	1
	.word	0,(.Lstm8s_it_TRAP_IRQHandler_1)
	.byte	14
	.uleb128	9
