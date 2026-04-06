;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _high_speed_output_handler
	.globl _enter_power_down_mode
	.globl _enter_idle_mode
	.globl _freeze_command_handler
	.globl _init_watchdog
	.globl _kick_the_dog
	.globl _min_clock_speed_command_handler
	.globl _max_clock_speed_command_handler
	.globl _stop_pwm_command_handler
	.globl _run_pwm_command_handler
	.globl __sdcc_external_startup
	.globl _do_nothing_isr
	.globl _get_next_input_char
	.globl _printf
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_do_nothing_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'do_nothing_isr'
;------------------------------------------------------------
;	src/main.c:25: void do_nothing_isr() __interrupt(0)
;	-----------------------------------------
;	 function do_nothing_isr
;	-----------------------------------------
_do_nothing_isr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:27: CKRL = 0xFF;
	mov	_CKRL,#0xff
;	src/main.c:28: return;
;	src/main.c:29: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	src/main.c:31: int _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
;	src/main.c:35: CKCON0 |= 0x01;
	orl	_CKCON0,#0x01
;	src/main.c:39: PCON &= ~0x80;
	anl	_PCON,#0x7f
;	src/main.c:40: return 0;
	mov	dptr,#0x0000
;	src/main.c:41: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'run_pwm_command_handler'
;------------------------------------------------------------
;	src/main.c:43: void run_pwm_command_handler()
;	-----------------------------------------
;	 function run_pwm_command_handler
;	-----------------------------------------
_run_pwm_command_handler:
;	src/main.c:45: printf("\r\nRun PWM");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:46: CCAP2H = 0xAA;// 0xFF(max) / 3 (so 33percent) * 2 (so inverted)
	mov	_CCAP2H,#0xaa
;	src/main.c:47: CCAPM2 = 0x42; // sets ecom and pwm
	mov	_CCAPM2,#0x42
;	src/main.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_pwm_command_handler'
;------------------------------------------------------------
;	src/main.c:51: void stop_pwm_command_handler()
;	-----------------------------------------
;	 function stop_pwm_command_handler
;	-----------------------------------------
_stop_pwm_command_handler:
;	src/main.c:53: printf("\r\nStop P1.5 Output");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:54: CCAPM2 = 0x00; //turn of the pwm signal
	mov	_CCAPM2,#0x00
;	src/main.c:55: CKRL = 0xFF;
	mov	_CKRL,#0xff
;	src/main.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'max_clock_speed_command_handler'
;------------------------------------------------------------
;	src/main.c:58: void max_clock_speed_command_handler()
;	-----------------------------------------
;	 function max_clock_speed_command_handler
;	-----------------------------------------
_max_clock_speed_command_handler:
;	src/main.c:60: printf("\r\nMax Speed clk");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:61: CKRL = 0xFF; //we are already at the max clock speed
	mov	_CKRL,#0xff
;	src/main.c:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'min_clock_speed_command_handler'
;------------------------------------------------------------
;	src/main.c:64: void min_clock_speed_command_handler()
;	-----------------------------------------
;	 function min_clock_speed_command_handler
;	-----------------------------------------
_min_clock_speed_command_handler:
;	src/main.c:66: printf("\r\nMin Speed clk");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:67: CKRL = 0x00;
	mov	_CKRL,#0x00
;	src/main.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'kick_the_dog'
;------------------------------------------------------------
;	src/main.c:70: void kick_the_dog()
;	-----------------------------------------
;	 function kick_the_dog
;	-----------------------------------------
_kick_the_dog:
;	src/main.c:72: return;
;	src/main.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_watchdog'
;------------------------------------------------------------
;	src/main.c:78: void init_watchdog()
;	-----------------------------------------
;	 function init_watchdog
;	-----------------------------------------
_init_watchdog:
;	src/main.c:80: CMOD |= 0x40;
	orl	_CMOD,#0x40
;	src/main.c:81: CCAP4L = 0x00;
	mov	_CCAP4L,#0x00
;	src/main.c:82: CCAP4H = 0x00;
	mov	_CCAP4H,#0x00
;	src/main.c:83: kick_the_dog();
	lcall	_kick_the_dog
;	src/main.c:84: CCAPM4 = 0x48;
	mov	_CCAPM4,#0x48
;	src/main.c:85: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'freeze_command_handler'
;------------------------------------------------------------
;	src/main.c:87: void freeze_command_handler()
;	-----------------------------------------
;	 function freeze_command_handler
;	-----------------------------------------
_freeze_command_handler:
;	src/main.c:89: printf("\r\nFreezing (triggers watchdog)");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:90: init_watchdog();
	lcall	_init_watchdog
00103$:
;	src/main.c:92: }
	sjmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'enter_idle_mode'
;------------------------------------------------------------
;	src/main.c:94: void enter_idle_mode()
;	-----------------------------------------
;	 function enter_idle_mode
;	-----------------------------------------
_enter_idle_mode:
;	src/main.c:96: printf("\r\nEnter Idle Mode");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:98: PCON |= 0x01;
	orl	_PCON,#0x01
;	src/main.c:99: printf("\r\nExiting Idle Mode");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:100: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enter_power_down_mode'
;------------------------------------------------------------
;	src/main.c:102: void enter_power_down_mode()
;	-----------------------------------------
;	 function enter_power_down_mode
;	-----------------------------------------
_enter_power_down_mode:
;	src/main.c:104: printf("\r\nEnter Power Down Mode");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:105: PCON |= 0x02;
	orl	_PCON,#0x02
;	src/main.c:106: printf("\r\nExiting Power Down Mode");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:107: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'high_speed_output_handler'
;------------------------------------------------------------
;	src/main.c:109: void high_speed_output_handler()
;	-----------------------------------------
;	 function high_speed_output_handler
;	-----------------------------------------
_high_speed_output_handler:
;	src/main.c:111: printf("\r\n Doing high speed output");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:112: CCAPM2 = 0x4C;
	mov	_CCAPM2,#0x4c
;	src/main.c:114: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;c                         Allocated with name '_main_c_65536_88'
;received_char             Allocated with name '_main_received_char_196609_91'
;------------------------------------------------------------
;	src/main.c:116: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c:119: CR = 1; //turns on PCA
;	assignBit
	setb	_CR
;	src/main.c:122: IT0 = 1;
;	assignBit
	setb	_IT0
;	src/main.c:123: EX0 = 1; 
;	assignBit
	setb	_EX0
;	src/main.c:124: EA = 1;
;	assignBit
	setb	_EA
00114$:
;	src/main.c:127: printf("\r\nEnter a char: ");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:129: char received_char = get_next_input_char();
	lcall	_get_next_input_char
	mov	r7,dpl
;	src/main.c:130: switch(received_char)
	cjne	r7,#0x66,00157$
	ljmp	00106$
00157$:
	cjne	r7,#0x68,00158$
	ljmp	00108$
00158$:
	cjne	r7,#0x69,00159$
	ljmp	00107$
00159$:
	cjne	r7,#0x6c,00160$
	ljmp	00105$
00160$:
	cjne	r7,#0x6d,00161$
	sjmp	00101$
00161$:
	cjne	r7,#0x70,00162$
	ljmp	00109$
00162$:
	cjne	r7,#0x72,00163$
	ljmp	00102$
00163$:
	cjne	r7,#0x73,00164$
	ljmp	00103$
00164$:
	cjne	r7,#0x77,00165$
	ljmp	00104$
00165$:
;	src/main.c:132: case 'm':
	sjmp	00114$
00101$:
;	src/main.c:133: printf("\r\n Menu");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:134: printf("\r\nr: run pwm");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:135: printf("\r\ns: stop p1.5 output");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:136: printf("\r\nw: max clock speed");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:137: printf("\r\nl: min clock speed");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:138: printf("\r\nf: freeze (triggers watchdog)");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:139: printf("\r\nh: high speed output");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:140: printf("\r\np: power down mode");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:141: printf("\r\ni: enter idle mode for a bit");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:142: break;
;	src/main.c:143: case 'r':
	sjmp	00111$
00102$:
;	src/main.c:144: run_pwm_command_handler();
	lcall	_run_pwm_command_handler
;	src/main.c:145: break;
;	src/main.c:146: case 's':
	sjmp	00111$
00103$:
;	src/main.c:147: stop_pwm_command_handler();
	lcall	_stop_pwm_command_handler
;	src/main.c:148: break;
;	src/main.c:149: case 'w':
	sjmp	00111$
00104$:
;	src/main.c:150: max_clock_speed_command_handler();
	lcall	_max_clock_speed_command_handler
;	src/main.c:151: break;
;	src/main.c:152: case 'l':
	sjmp	00111$
00105$:
;	src/main.c:153: min_clock_speed_command_handler();
	lcall	_min_clock_speed_command_handler
;	src/main.c:154: break;
;	src/main.c:155: case 'f':
	sjmp	00111$
00106$:
;	src/main.c:156: freeze_command_handler();
	lcall	_freeze_command_handler
;	src/main.c:157: break;
;	src/main.c:158: case 'i':
	sjmp	00111$
00107$:
;	src/main.c:159: enter_idle_mode();
	lcall	_enter_idle_mode
;	src/main.c:160: break;
;	src/main.c:161: case 'h':
	sjmp	00111$
00108$:
;	src/main.c:162: high_speed_output_handler();
	lcall	_high_speed_output_handler
;	src/main.c:163: break;
;	src/main.c:164: case 'p':
	sjmp	00111$
00109$:
;	src/main.c:165: enter_power_down_mode();
	lcall	_enter_power_down_mode
;	src/main.c:169: }
00111$:
;	src/main.c:170: printf("\r\nEND COMMAND");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:173: }
	ljmp	00114$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.db 0x0a
	.ascii "Run PWM"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0d
	.db 0x0a
	.ascii "Stop P1.5 Output"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0d
	.db 0x0a
	.ascii "Max Speed clk"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.ascii "Min Speed clk"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0d
	.db 0x0a
	.ascii "Freezing (triggers watchdog)"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0d
	.db 0x0a
	.ascii "Enter Idle Mode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0d
	.db 0x0a
	.ascii "Exiting Idle Mode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0d
	.db 0x0a
	.ascii "Enter Power Down Mode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0d
	.db 0x0a
	.ascii "Exiting Power Down Mode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0d
	.db 0x0a
	.ascii " Doing high speed output"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0d
	.db 0x0a
	.ascii "Enter a char: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0d
	.db 0x0a
	.ascii " Menu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0d
	.db 0x0a
	.ascii "r: run pwm"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0d
	.db 0x0a
	.ascii "s: stop p1.5 output"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0d
	.db 0x0a
	.ascii "w: max clock speed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0d
	.db 0x0a
	.ascii "l: min clock speed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0d
	.db 0x0a
	.ascii "f: freeze (triggers watchdog)"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0d
	.db 0x0a
	.ascii "h: high speed output"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0d
	.db 0x0a
	.ascii "p: power down mode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0d
	.db 0x0a
	.ascii "i: enter idle mode for a bit"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0d
	.db 0x0a
	.ascii "END COMMAND"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
