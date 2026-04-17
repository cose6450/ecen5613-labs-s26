;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _output_clock
	.globl _increment_clock_values
	.globl _init_timer
	.globl _printf
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
	.globl _lcdgotoxy_PARM_2
	.globl _clock_paused
	.globl _current_overflow_count
	.globl _seconds_tenths
	.globl _seconds_ones
	.globl _seconds_tens
	.globl _minutes_ones
	.globl _minutes_tens
	.globl _clock_fields
	.globl _reload_counter
	.globl _lcdbusywait
	.globl _lcdinit
	.globl _lcdgotoaddr
	.globl _lcdgotoxy
	.globl _lcdputch
	.globl _lcdputstr
	.globl _lcdclear
	.globl _clock_init_and_start
	.globl _increment_clock
	.globl _reset_clock
	.globl _pause_clock
	.globl _unpause_clock
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_reset_clock_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_clock_fields::
	.ds 8
_minutes_tens::
	.ds 1
_minutes_ones::
	.ds 1
_seconds_tens::
	.ds 1
_seconds_ones::
	.ds 1
_seconds_tenths::
	.ds 1
_current_overflow_count::
	.ds 1
_clock_paused::
	.ds 1
_delay_i_131072_49:
	.ds 2
_lcdinit_i_327680_56:
	.ds 2
_lcdinit_i_327680_61:
	.ds 2
_lcdinit_i_327680_66:
	.ds 2
_lcdgotoaddr_addr_65536_68:
	.ds 1
_lcdgotoxy_PARM_2:
	.ds 1
_lcdgotoxy_row_65536_70:
	.ds 1
_lcdputch_cc_65536_72:
	.ds 1
_lcdputstr_ss_65536_74:
	.ds 3
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'reload_counter'
;------------------------------------------------------------
;	src/lcd.c:24: void reload_counter()
;	-----------------------------------------
;	 function reload_counter
;	-----------------------------------------
_reload_counter:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/lcd.c:26: TH0 = 0x4C;
	mov	_TH0,#0x4c
;	src/lcd.c:27: TL0 = 0x0D;
	mov	_TL0,#0x0d
;	src/lcd.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_timer'
;------------------------------------------------------------
;	src/lcd.c:31: void init_timer()
;	-----------------------------------------
;	 function init_timer
;	-----------------------------------------
_init_timer:
;	src/lcd.c:33: current_overflow_count = 0;
	mov	dptr,#_current_overflow_count
	clr	a
	movx	@dptr,a
;	src/lcd.c:34: TMOD |= 1 << TMOD_MODE1_POS;
	orl	_TMOD,#0x01
;	src/lcd.c:36: reload_counter();
	lcall	_reload_counter
;	src/lcd.c:37: ET0 = 1; // enable timer0 interrupt
;	assignBit
	setb	_ET0
;	src/lcd.c:38: EA = 1;  // enable global interrupt
;	assignBit
	setb	_EA
;	src/lcd.c:39: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
;	src/lcd.c:66: void lcdbusywait()
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
;	src/lcd.c:68: while(0x80 == ((*(volatile unsigned char *) (LCD_ADDRESS_BASE | LCD_RW_FLAG)) & 0x80)); 
00101$:
	mov	dptr,#0xf200
	mov	b,#0x00
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0x80
	mov	r6,#0x00
	cjne	r7,#0x80,00110$
	cjne	r6,#0x00,00110$
	sjmp	00101$
00110$:
;	src/lcd.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdinit'
;------------------------------------------------------------
;i                         Allocated with name '_lcdinit_i_327680_56'
;i                         Allocated with name '_lcdinit_i_327680_61'
;i                         Allocated with name '_lcdinit_i_327680_66'
;------------------------------------------------------------
;	src/lcd.c:72: void lcdinit()
;	-----------------------------------------
;	 function lcdinit
;	-----------------------------------------
_lcdinit:
;	src/lcd.c:57: for(volatile int i = 0; i < 600; i++)
	mov	dptr,#_lcdinit_i_327680_56
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00108$:
	mov	dptr,#_lcdinit_i_327680_56
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x58
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00102$
;	src/lcd.c:61: __endasm;  
	nop
;	src/lcd.c:57: for(volatile int i = 0; i < 600; i++)
	mov	dptr,#_lcdinit_i_327680_56
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lcdinit_i_327680_56
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:74: delay();
	sjmp	00108$
00102$:
;	src/lcd.c:75: INIT_CMD_ONE();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x30
	lcall	__gptrput
;	src/lcd.c:57: for(volatile int i = 0; i < 600; i++)
	mov	dptr,#_lcdinit_i_327680_61
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00111$:
	mov	dptr,#_lcdinit_i_327680_61
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x58
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00104$
;	src/lcd.c:61: __endasm;  
	nop
;	src/lcd.c:57: for(volatile int i = 0; i < 600; i++)
	mov	dptr,#_lcdinit_i_327680_61
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lcdinit_i_327680_61
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:76: delay();
	sjmp	00111$
00104$:
;	src/lcd.c:77: INIT_CMD_ONE();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x30
	lcall	__gptrput
;	src/lcd.c:57: for(volatile int i = 0; i < 600; i++)
	mov	dptr,#_lcdinit_i_327680_66
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00114$:
	mov	dptr,#_lcdinit_i_327680_66
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x58
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00106$
;	src/lcd.c:61: __endasm;  
	nop
;	src/lcd.c:57: for(volatile int i = 0; i < 600; i++)
	mov	dptr,#_lcdinit_i_327680_66
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lcdinit_i_327680_66
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:78: delay();
	sjmp	00114$
00106$:
;	src/lcd.c:79: INIT_CMD_ONE();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x30
	lcall	__gptrput
;	src/lcd.c:80: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:81: FUNCTION_SET_TWO_LINES_FONT_0();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x38
	lcall	__gptrput
;	src/lcd.c:82: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:83: DISPLAY_OFF();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x08
	lcall	__gptrput
;	src/lcd.c:84: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:85: DISPLAY_ON();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x0c
	lcall	__gptrput
;	src/lcd.c:86: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:87: ENTRY_MODE_SET_ID_1_S_0();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x06
	lcall	__gptrput
;	src/lcd.c:88: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:89: DISPLAY_CLEAR();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x01
	lcall	__gptrput
;	src/lcd.c:90: lcdbusywait();
;	src/lcd.c:91: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddr'
;------------------------------------------------------------
;addr                      Allocated with name '_lcdgotoaddr_addr_65536_68'
;------------------------------------------------------------
;	src/lcd.c:95: void lcdgotoaddr(unsigned char addr)
;	-----------------------------------------
;	 function lcdgotoaddr
;	-----------------------------------------
_lcdgotoaddr:
	mov	a,dpl
	mov	dptr,#_lcdgotoaddr_addr_65536_68
	movx	@dptr,a
;	src/lcd.c:97: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:98: GOTOADDR(addr);
	mov	dptr,#_lcdgotoaddr_addr_65536_68
	movx	a,@dptr
	orl	a,#0x80
	mov	r7,a
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,r7
	lcall	__gptrput
;	src/lcd.c:99: lcdbusywait();
;	src/lcd.c:100: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;column                    Allocated with name '_lcdgotoxy_PARM_2'
;row                       Allocated with name '_lcdgotoxy_row_65536_70'
;------------------------------------------------------------
;	src/lcd.c:102: void lcdgotoxy(unsigned char row, unsigned char column)
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
	mov	a,dpl
	mov	dptr,#_lcdgotoxy_row_65536_70
	movx	@dptr,a
;	src/lcd.c:104: lcdgotoaddr(row << 6 | column); 
	movx	a,@dptr
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r7,a
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	orl	ar7,a
	mov	dpl,r7
;	src/lcd.c:105: }
	ljmp	_lcdgotoaddr
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;cc                        Allocated with name '_lcdputch_cc_65536_72'
;------------------------------------------------------------
;	src/lcd.c:107: void lcdputch(char cc)
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
	mov	a,dpl
	mov	dptr,#_lcdputch_cc_65536_72
	movx	@dptr,a
;	src/lcd.c:109: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:110: WRITECHAR(cc);
	mov	dptr,#_lcdputch_cc_65536_72
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#0xf100
	mov	b,#0x00
	mov	a,r7
	lcall	__gptrput
;	src/lcd.c:111: lcdbusywait();
;	src/lcd.c:112: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;ss                        Allocated with name '_lcdputstr_ss_65536_74'
;------------------------------------------------------------
;	src/lcd.c:114: void lcdputstr
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_lcdputstr_ss_65536_74
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:117: while (*ss != '\0')
	mov	dptr,#_lcdputstr_ss_65536_74
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00108$
;	src/lcd.c:119: lcdputch(*ss);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdputch
	pop	ar5
	pop	ar6
	pop	ar7
;	src/lcd.c:120: ss++;
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	mov	dptr,#_lcdputstr_ss_65536_74
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00108$:
	mov	dptr,#_lcdputstr_ss_65536_74
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:122: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdclear'
;------------------------------------------------------------
;	src/lcd.c:125: void lcdclear()
;	-----------------------------------------
;	 function lcdclear
;	-----------------------------------------
_lcdclear:
;	src/lcd.c:127: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:128: DISPLAY_CLEAR();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x01
	lcall	__gptrput
;	src/lcd.c:129: lcdbusywait();
;	src/lcd.c:130: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'clock_init_and_start'
;------------------------------------------------------------
;	src/lcd.c:135: void clock_init_and_start()
;	-----------------------------------------
;	 function clock_init_and_start
;	-----------------------------------------
_clock_init_and_start:
;	src/lcd.c:137: lcdinit();
	lcall	_lcdinit
;	src/lcd.c:138: clock_fields[0] = '0';
	mov	dptr,#_clock_fields
	mov	a,#0x30
	movx	@dptr,a
;	src/lcd.c:139: clock_fields[1] = '0';
	mov	dptr,#(_clock_fields + 0x0001)
	movx	@dptr,a
;	src/lcd.c:140: clock_fields[2] = ':';
	mov	dptr,#(_clock_fields + 0x0002)
	mov	a,#0x3a
	movx	@dptr,a
;	src/lcd.c:141: clock_fields[3] = '0';
	mov	dptr,#(_clock_fields + 0x0003)
	mov	a,#0x30
	movx	@dptr,a
;	src/lcd.c:142: clock_fields[4] = '0';
	mov	dptr,#(_clock_fields + 0x0004)
	movx	@dptr,a
;	src/lcd.c:143: clock_fields[5] = '.';
	mov	dptr,#(_clock_fields + 0x0005)
	mov	a,#0x2e
	movx	@dptr,a
;	src/lcd.c:144: clock_fields[6] = '0';
	mov	dptr,#(_clock_fields + 0x0006)
	mov	a,#0x30
	movx	@dptr,a
;	src/lcd.c:145: clock_fields[7] = '\0';
	mov	dptr,#(_clock_fields + 0x0007)
	clr	a
	movx	@dptr,a
;	src/lcd.c:146: lcdclear();
	lcall	_lcdclear
;	src/lcd.c:147: lcdputstr(clock_fields);
	mov	dptr,#_clock_fields
	mov	b,#0x00
	lcall	_lcdputstr
;	src/lcd.c:148: init_timer();
	lcall	_init_timer
;	src/lcd.c:149: TR0 = 1; // Start Timer0
;	assignBit
	setb	_TR0
;	src/lcd.c:150: printf("Clock_initialized");
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
;	src/lcd.c:151: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'increment_clock_values'
;------------------------------------------------------------
;	src/lcd.c:153: void increment_clock_values()
;	-----------------------------------------
;	 function increment_clock_values
;	-----------------------------------------
_increment_clock_values:
;	src/lcd.c:155: seconds_tenths++;
	mov	dptr,#_seconds_tenths
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/lcd.c:156: if (seconds_tenths < 10) return;
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00133$
00133$:
	jnc	00102$
	ret
00102$:
;	src/lcd.c:157: seconds_tenths = 0;
	mov	dptr,#_seconds_tenths
	clr	a
	movx	@dptr,a
;	src/lcd.c:158: seconds_ones++;
	mov	dptr,#_seconds_ones
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/lcd.c:159: if (seconds_ones < 10) return;
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00135$
00135$:
	jnc	00104$
	ret
00104$:
;	src/lcd.c:160: seconds_ones = 0;
	mov	dptr,#_seconds_ones
	clr	a
	movx	@dptr,a
;	src/lcd.c:161: seconds_tens++;
	mov	dptr,#_seconds_tens
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/lcd.c:162: if (seconds_tens < 6) return;
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00137$
00137$:
	jnc	00106$
	ret
00106$:
;	src/lcd.c:163: seconds_tens = 0;
	mov	dptr,#_seconds_tens
	clr	a
	movx	@dptr,a
;	src/lcd.c:164: minutes_ones++;
	mov	dptr,#_minutes_ones
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/lcd.c:165: if(minutes_ones < 10) return;
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00139$
00139$:
	jnc	00108$
	ret
00108$:
;	src/lcd.c:166: minutes_ones = 0;
	mov	dptr,#_minutes_ones
	clr	a
	movx	@dptr,a
;	src/lcd.c:167: minutes_tens++;
	mov	dptr,#_minutes_tens
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src/lcd.c:168: if (minutes_tens < 10) return;
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00141$
00141$:
	jnc	00110$
	ret
00110$:
;	src/lcd.c:169: minutes_tens = 0; //silent overflow
	mov	dptr,#_minutes_tens
	clr	a
	movx	@dptr,a
;	src/lcd.c:170: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_clock'
;------------------------------------------------------------
;	src/lcd.c:172: void output_clock()
;	-----------------------------------------
;	 function output_clock
;	-----------------------------------------
_output_clock:
;	src/lcd.c:174: clock_fields[0] = '0' + minutes_tens;
	mov	dptr,#_minutes_tens
	movx	a,@dptr
	add	a,#0x30
	mov	dptr,#_clock_fields
	movx	@dptr,a
;	src/lcd.c:175: clock_fields[1] = '0' + minutes_ones;
	mov	dptr,#_minutes_ones
	movx	a,@dptr
	add	a,#0x30
	mov	dptr,#(_clock_fields + 0x0001)
	movx	@dptr,a
;	src/lcd.c:176: clock_fields[3] = '0' + seconds_tens;
	mov	dptr,#_seconds_tens
	movx	a,@dptr
	add	a,#0x30
	mov	dptr,#(_clock_fields + 0x0003)
	movx	@dptr,a
;	src/lcd.c:177: clock_fields[4] = '0' + seconds_ones;
	mov	dptr,#_seconds_ones
	movx	a,@dptr
	add	a,#0x30
	mov	dptr,#(_clock_fields + 0x0004)
	movx	@dptr,a
;	src/lcd.c:178: clock_fields[6] = '0' + seconds_tenths;
	mov	dptr,#_seconds_tenths
	movx	a,@dptr
	add	a,#0x30
	mov	dptr,#(_clock_fields + 0x0006)
	movx	@dptr,a
;	src/lcd.c:179: lcdgotoaddr(0); 
	mov	dpl,#0x00
	lcall	_lcdgotoaddr
;	src/lcd.c:180: lcdputstr(clock_fields); 
	mov	dptr,#_clock_fields
	mov	b,#0x00
;	src/lcd.c:181: }
	ljmp	_lcdputstr
;------------------------------------------------------------
;Allocation info for local variables in function 'increment_clock'
;------------------------------------------------------------
;	src/lcd.c:183: void increment_clock()
;	-----------------------------------------
;	 function increment_clock
;	-----------------------------------------
_increment_clock:
;	src/lcd.c:185: increment_clock_values();
	lcall	_increment_clock_values
;	src/lcd.c:186: output_clock();
;	src/lcd.c:187: }
	ljmp	_output_clock
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_clock'
;------------------------------------------------------------
;	src/lcd.c:189: void reset_clock()
;	-----------------------------------------
;	 function reset_clock
;	-----------------------------------------
_reset_clock:
;	src/lcd.c:199: }
	setb	_reset_clock_sloc0_1_0
	jbc	ea,00103$
	clr	_reset_clock_sloc0_1_0
00103$:
;	src/lcd.c:193: minutes_tens = 0;
	mov	dptr,#_minutes_tens
	clr	a
	movx	@dptr,a
;	src/lcd.c:194: minutes_ones = 0;
	mov	dptr,#_minutes_ones
	movx	@dptr,a
;	src/lcd.c:195: seconds_tens = 0;
	mov	dptr,#_seconds_tens
	movx	@dptr,a
;	src/lcd.c:196: seconds_ones = 0;
	mov	dptr,#_seconds_ones
	movx	@dptr,a
;	src/lcd.c:197: seconds_tenths = 0;
	mov	dptr,#_seconds_tenths
	movx	@dptr,a
;	src/lcd.c:198: output_clock();
	lcall	_output_clock
	mov	c,_reset_clock_sloc0_1_0
	mov	ea,c
;	src/lcd.c:200: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pause_clock'
;------------------------------------------------------------
;	src/lcd.c:204: void pause_clock()
;	-----------------------------------------
;	 function pause_clock
;	-----------------------------------------
_pause_clock:
;	src/lcd.c:206: clock_paused = CLOCK_PAUSED;
	mov	dptr,#_clock_paused
	mov	a,#0x01
	movx	@dptr,a
;	src/lcd.c:207: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'unpause_clock'
;------------------------------------------------------------
;	src/lcd.c:209: void unpause_clock()
;	-----------------------------------------
;	 function unpause_clock
;	-----------------------------------------
_unpause_clock:
;	src/lcd.c:211: clock_paused = CLOCK_RUNNING;
	mov	dptr,#_clock_paused
	clr	a
	movx	@dptr,a
;	src/lcd.c:212: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Clock_initialized"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
