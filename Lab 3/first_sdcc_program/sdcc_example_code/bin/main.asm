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
	.globl _timer0_ISR
	.globl _init_timer_registers
	.globl __sdcc_external_startup
	.globl _free
	.globl _malloc
	.globl _printf_tiny
	.globl _putchar
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
	.globl _reload_counter
	.globl _current_overflow_count
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
_main_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_current_overflow_count::
	.ds 2
_reload_counter::
	.ds 2
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
	reti
	.ds	7
	ljmp	_timer0_ISR
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
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	src/main.c:48: int _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:51: return 0;
	mov	dptr,#0x0000
;	src/main.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_timer_registers'
;------------------------------------------------------------
;	src/main.c:64: void init_timer_registers()
;	-----------------------------------------
;	 function init_timer_registers
;	-----------------------------------------
_init_timer_registers:
;	src/main.c:66: TMOD |= 1 << TMOD_MODE1_POS;
	orl	_TMOD,#0x01
;	src/main.c:68: TH0 = 0x4C;
	mov	_TH0,#0x4c
;	src/main.c:69: TL0 = 0x0D;
	mov	_TL0,#0x0d
;	src/main.c:70: ET0 = 1; // enable timer0 interrupt
;	assignBit
	setb	_ET0
;	src/main.c:71: EA = 1;  // enable global interrupt
;	assignBit
	setb	_EA
;	src/main.c:72: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	src/main.c:78: void timer0_ISR(void) __interrupt(TF0_VECTOR)
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	src/main.c:80: current_overflow_count++; // increment the overflow count
	mov	dptr,#_current_overflow_count
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_current_overflow_count
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:81: reload_counter = true;    // since interrupt has elapsed we need to reload our couner
	mov	dptr,#_reload_counter
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/main.c:82: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;char_buff                 Allocated with name '_main_char_buff_65537_49'
;i                         Allocated with name '_main_i_131073_51'
;i                         Allocated with name '_main_i_131073_53'
;------------------------------------------------------------
;	src/main.c:84: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c:86: printf_tiny("Performing a simple test for malloc \n \r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/main.c:89: current_overflow_count = 0;
	mov	dptr,#_current_overflow_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:90: reload_counter = false;
	mov	dptr,#_reload_counter
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:94: char_buff = (char *)malloc(COUNT_ELEMENTS_MALLOC * sizeof(char));
	mov	dptr,#0x000a
	lcall	_malloc
	mov	r6,dpl
	mov	r5,dph
	mov	r7,#0x00
;	src/main.c:99: if (char_buff == NULL)
	mov	a,r6
	orl	a,r5
	jnz	00125$
;	src/main.c:103: printf_tiny("\033[31mMalloc operation failed! :( jumping to TIMER_ISR_TEST  \n\r\033[0m");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/main.c:105: goto TIMER_ISR_TEST;
	ljmp	00107$
;	src/main.c:108: for (int i = 0; i < COUNT_ELEMENTS_MALLOC; i++)
00125$:
	mov	r3,#0x00
	mov	r4,#0x00
00116$:
	clr	c
	mov	a,r3
	subb	a,#0x0a
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	src/main.c:110: char_buff[i] = 'a' + i;
	mov	a,r3
	add	a,r6
	mov	r0,a
	mov	a,r4
	addc	a,r5
	mov	r1,a
	mov	ar2,r7
	push	ar6
	push	ar5
	push	ar7
	mov	ar7,r3
	mov	a,#0x61
	add	a,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrput
;	src/main.c:108: for (int i = 0; i < COUNT_ELEMENTS_MALLOC; i++)
	inc	r3
	cjne	r3,#0x00,00163$
	inc	r4
00163$:
	pop	ar7
	pop	ar5
	pop	ar6
	sjmp	00116$
00103$:
;	src/main.c:113: for (int i = 0; i < COUNT_ELEMENTS_MALLOC; i++)
	mov	r3,#0x00
	mov	r4,#0x00
00119$:
	clr	c
	mov	a,r3
	subb	a,#0x0a
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jc	00164$
	ljmp	00106$
00164$:
;	src/main.c:115: if (char_buff[i] != ('a' + i))
	mov	a,r3
	add	a,r6
	mov	r0,a
	mov	a,r4
	addc	a,r5
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	a,#0x61
	add	a,r3
	mov	r1,a
	clr	a
	addc	a,r4
	mov	r2,a
	push	ar6
	push	ar5
	push	ar7
	mov	r7,#0x00
	mov	a,r0
	cjne	a,ar1,00165$
	mov	a,r7
	cjne	a,ar2,00165$
	pop	ar7
	pop	ar5
	pop	ar6
	sjmp	00105$
00165$:
	pop	ar7
	pop	ar5
	pop	ar6
;	src/main.c:117: printf_tiny("\033[31mExpectedValue mismatch! \n\r\033[0m");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00105$:
;	src/main.c:119: putchar(char_buff[i]);
	mov	a,r3
	add	a,r6
	mov	r0,a
	mov	a,r4
	addc	a,r5
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	r2,#0x00
	mov	dpl,r0
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:113: for (int i = 0; i < COUNT_ELEMENTS_MALLOC; i++)
	inc	r3
	cjne	r3,#0x00,00166$
	inc	r4
00166$:
	ljmp	00119$
00106$:
;	src/main.c:121: printf_tiny("\n\r");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	src/main.c:122: printf_tiny("\033[32mMalloc Test operation was successful \n\r\033[0m");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:124: free(char_buff);
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	lcall	_free
;	src/main.c:126: TIMER_ISR_TEST:
00107$:
;	src/main.c:127: init_timer_registers();
	lcall	_init_timer_registers
;	src/main.c:128: TR0 = 1; // Start Timer0
;	assignBit
	setb	_TR0
;	src/main.c:129: while (1)
00113$:
;	src/main.c:132: if (reload_counter == true)
	mov	dptr,#_reload_counter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x01,00109$
	cjne	r7,#0x00,00109$
;	src/main.c:138: }
	setb	_main_sloc0_1_0
	jbc	ea,00169$
	clr	_main_sloc0_1_0
00169$:
;	src/main.c:135: TH0 = 0x4C;
	mov	_TH0,#0x4c
;	src/main.c:136: TL0 = 0x0D;
	mov	_TL0,#0x0d
;	src/main.c:137: reload_counter = false;
	mov	dptr,#_reload_counter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	c,_main_sloc0_1_0
	mov	ea,c
00109$:
;	src/main.c:140: if (current_overflow_count == REQ_OVERFLOWS)
	mov	dptr,#_current_overflow_count
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x0a,00113$
	cjne	r7,#0x00,00113$
;	src/main.c:145: }
	setb	_main_sloc0_1_0
	jbc	ea,00172$
	clr	_main_sloc0_1_0
00172$:
;	src/main.c:143: P1_1 = !P1_1;               // change this to your led pin
	cpl	_P1_1
;	src/main.c:144: current_overflow_count = 0; // clear for next iteration
	mov	dptr,#_current_overflow_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	c,_main_sloc0_1_0
	mov	ea,c
;	src/main.c:147: }
	sjmp	00113$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Performing a simple test for malloc "
	.db 0x0a
	.ascii " "
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x1b
	.ascii "[31mMalloc operation failed! :( jumping to TIMER_ISR_TEST  "
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[0m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x1b
	.ascii "[31mExpectedValue mismatch! "
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[0m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x1b
	.ascii "[32mMalloc Test operation was successful "
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[0m"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
