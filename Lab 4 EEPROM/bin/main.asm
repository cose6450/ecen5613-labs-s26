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
	.globl _x_command_handler
	.globl _print_dashed_line
	.globl _r_command_handler
	.globl _w_command_handler
	.globl __sdcc_external_startup
	.globl _eereset
	.globl _eeprom_init
	.globl _eepromreadbyte
	.globl _eepromwritebyte
	.globl _get_hex_value
	.globl _putchar
	.globl _getchar
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
_w_command_handler_address_65537_85:
	.ds 2
_w_command_handler_byte_65538_88:
	.ds 2
_r_command_handler_address_65537_94:
	.ds 2
_r_command_handler_byte_65538_97:
	.ds 1
_x_command_handler_start_address_65537_102:
	.ds 2
_x_command_handler_end_address_65538_105:
	.ds 2
_x_command_handler_byte_327682_112:
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
;	src/main.c:28: int _sdcc_external_startup()
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
;	src/main.c:31: return 0;
	mov	dptr,#0x0000
;	src/main.c:32: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'w_command_handler'
;------------------------------------------------------------
;address                   Allocated with name '_w_command_handler_address_65537_85'
;byte                      Allocated with name '_w_command_handler_byte_65538_88'
;------------------------------------------------------------
;	src/main.c:37: void w_command_handler()
;	-----------------------------------------
;	 function w_command_handler
;	-----------------------------------------
_w_command_handler:
;	src/main.c:39: printf("\r\nEnter an EEPROM address to write to in hex [0,7FF]: ");
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
;	src/main.c:40: int address = 0;
	mov	dptr,#_w_command_handler_address_65537_85
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:41: if (0 > get_hex_value(&address))
	mov	dptr,#_w_command_handler_address_65537_85
	mov	b,#0x00
	lcall	_get_hex_value
	mov	a,dph
	jnb	acc.7,00102$
;	src/main.c:43: printf("\r\n Failed to enter a hex integer, please try again");
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
;	src/main.c:44: return;
	ret
00102$:
;	src/main.c:46: if(address < 0 || address > 0x7FF)
	mov	dptr,#_w_command_handler_address_65537_85
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00103$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
00103$:
;	src/main.c:48: printf("\r\n Failed to enter an address within range, please try again");
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
;	src/main.c:49: return;
	ret
00104$:
;	src/main.c:51: printf("\r\nEnter a byte to write [0, FF]: ");
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
;	src/main.c:52: int byte = 0;
	mov	dptr,#_w_command_handler_byte_65538_88
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:53: if (0 > get_hex_value(&byte))
	mov	dptr,#_w_command_handler_byte_65538_88
	mov	b,#0x00
	lcall	_get_hex_value
	mov	a,dph
	jnb	acc.7,00107$
;	src/main.c:55: printf("\r\n Failed to enter a hex integer, please try again");
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
;	src/main.c:56: return;
	ret
00107$:
;	src/main.c:58: if(byte < 0 || byte > 0xFF)
	mov	dptr,#_w_command_handler_byte_65538_88
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00108$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
00108$:
;	src/main.c:60: printf("\r\n Failed to enter a value that's byte size, please try again");
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
;	src/main.c:61: return;
	ret
00109$:
;	src/main.c:63: if (0 != eepromwritebyte(address, (uint8_t)byte))
	mov	dptr,#_w_command_handler_address_65537_85
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_eepromwritebyte_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_eepromwritebyte
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00112$
;	src/main.c:65: printf("\r\nFailed to write to the eeprom");
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
	ret
00112$:
;	src/main.c:69: printf("\r\n Success: wrote to the eeprom");
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
;	src/main.c:71: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'r_command_handler'
;------------------------------------------------------------
;address                   Allocated with name '_r_command_handler_address_65537_94'
;byte                      Allocated with name '_r_command_handler_byte_65538_97'
;------------------------------------------------------------
;	src/main.c:74: void r_command_handler()
;	-----------------------------------------
;	 function r_command_handler
;	-----------------------------------------
_r_command_handler:
;	src/main.c:76: printf("\r\nEnter an EEPROM address to read from in hex [0,7FF]: ");
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
;	src/main.c:77: int address = 0;
	mov	dptr,#_r_command_handler_address_65537_94
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:78: if (0 > get_hex_value(&address))
	mov	dptr,#_r_command_handler_address_65537_94
	mov	b,#0x00
	lcall	_get_hex_value
	mov	a,dph
	jnb	acc.7,00102$
;	src/main.c:80: printf("\r\n Failed to enter a hex integer, please try again");
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
;	src/main.c:81: return;
	ret
00102$:
;	src/main.c:83: if(address < 0 || address > 0x7FF)
	mov	dptr,#_r_command_handler_address_65537_94
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00103$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
00103$:
;	src/main.c:85: printf("\r\n Failed to enter an address within range, please try again");
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
;	src/main.c:86: return;
	ret
00104$:
;	src/main.c:89: if (0 != eepromreadbyte(address, &byte))
	mov	dptr,#_eepromreadbyte_PARM_2
	mov	a,#_r_command_handler_byte_65538_97
	movx	@dptr,a
	mov	a,#(_r_command_handler_byte_65538_97 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_eepromreadbyte
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00107$
;	src/main.c:91: printf("\r\nFailed to read from the eeprom");
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
	ret
00107$:
;	src/main.c:95: printf("\r\n %03x: %02hhx", address, byte);
	mov	dptr,#_r_command_handler_byte_65538_97
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	dptr,#_r_command_handler_address_65537_94
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	src/main.c:97: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_dashed_line'
;------------------------------------------------------------
;	src/main.c:99: void print_dashed_line()
;	-----------------------------------------
;	 function print_dashed_line
;	-----------------------------------------
_print_dashed_line:
;	src/main.c:101: printf("\r\n---------------------------------------------------");
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
;	src/main.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'x_command_handler'
;------------------------------------------------------------
;start_address             Allocated with name '_x_command_handler_start_address_65537_102'
;end_address               Allocated with name '_x_command_handler_end_address_65538_105'
;row_start                 Allocated with name '_x_command_handler_row_start_131074_109'
;i                         Allocated with name '_x_command_handler_i_262146_111'
;byte                      Allocated with name '_x_command_handler_byte_327682_112'
;------------------------------------------------------------
;	src/main.c:104: void x_command_handler()
;	-----------------------------------------
;	 function x_command_handler
;	-----------------------------------------
_x_command_handler:
;	src/main.c:106: printf("\r\nEnter a valid starting hex address [0, 7FF]: ");
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
;	src/main.c:107: int start_address = 0;
	mov	dptr,#_x_command_handler_start_address_65537_102
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:108: if (0 > get_hex_value(&start_address))
	mov	dptr,#_x_command_handler_start_address_65537_102
	mov	b,#0x00
	lcall	_get_hex_value
	mov	a,dph
	jnb	acc.7,00102$
;	src/main.c:110: printf("\r\n Failed to enter a hex integer, please try again");
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
;	src/main.c:111: return;
	ret
00102$:
;	src/main.c:113: if(start_address < 0 || start_address > 0x7FF)
	mov	dptr,#_x_command_handler_start_address_65537_102
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00103$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
00103$:
;	src/main.c:115: printf("\r\n Failed to enter an address within range, please try again");
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
;	src/main.c:116: return;
	ret
00104$:
;	src/main.c:119: printf("\r\nEnter a valid ending hex address [0,7FF]: ");
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
;	src/main.c:120: int end_address = 0;
	mov	dptr,#_x_command_handler_end_address_65538_105
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:121: if (0 > get_hex_value(&end_address))
	mov	dptr,#_x_command_handler_end_address_65538_105
	mov	b,#0x00
	lcall	_get_hex_value
	mov	a,dph
	jnb	acc.7,00107$
;	src/main.c:123: printf("\r\n Failed to enter a hex integer, please try again");
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
;	src/main.c:124: return;
	ret
00107$:
;	src/main.c:126: if(end_address < 0 || end_address > 0x7FF)
	mov	dptr,#_x_command_handler_end_address_65538_105
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00108$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
00108$:
;	src/main.c:128: printf("\r\n Failed to enter an address within range, please try again");
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
;	src/main.c:129: return;
	ret
00109$:
;	src/main.c:132: if (start_address > end_address)
	mov	dptr,#_x_command_handler_start_address_65537_102
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00112$
;	src/main.c:134: printf("\r\n start_address is greater than end address; please try again");
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
;	src/main.c:135: return; 
	ret
00112$:
;	src/main.c:138: start_address &= ~(0xF);
	mov	dptr,#_x_command_handler_start_address_65537_102
	mov	a,#0xf0
	anl	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:139: end_address &= ~(0xF);
	mov	dptr,#_x_command_handler_end_address_65538_105
	mov	a,#0xf0
	anl	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:140: end_address += 0x10;
	mov	dptr,#_x_command_handler_end_address_65538_105
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_x_command_handler_end_address_65538_105
	mov	a,#0x10
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:143: for(int row_start = start_address; row_start < end_address; row_start+=16)
	mov	dptr,#_x_command_handler_start_address_65537_102
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00121$:
	mov	dptr,#_x_command_handler_end_address_65538_105
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00172$
	ret
00172$:
;	src/main.c:145: printf("\r\n%03X: ", row_start);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	src/main.c:146: for(int i = 0; i < 16; i++)
	mov	ar4,r6
	mov	ar5,r7
	mov	r2,#0x00
	mov	r3,#0x00
00118$:
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00173$
	ljmp	00122$
00173$:
;	src/main.c:148: int byte = 0;
	mov	dptr,#_x_command_handler_byte_327682_112
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:149: if(0 != eepromreadbyte(row_start + i, &byte))
	mov	a,r2
	add	a,r4
	mov	r0,a
	mov	a,r3
	addc	a,r5
	mov	r1,a
	mov	dptr,#_eepromreadbyte_PARM_2
	mov	a,#_x_command_handler_byte_327682_112
	movx	@dptr,a
	mov	a,#(_x_command_handler_byte_327682_112 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_eepromreadbyte
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00114$
;	src/main.c:151: printf("\r\n Failed to read byte from eeprom, ending command \r\n");
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
;	src/main.c:152: return;
	ret
00114$:
;	src/main.c:154: printf("%02X ", byte);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	dptr,#_x_command_handler_byte_327682_112
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:146: for(int i = 0; i < 16; i++)
	inc	r2
	cjne	r2,#0x00,00175$
	inc	r3
00175$:
	ljmp	00118$
00122$:
;	src/main.c:143: for(int row_start = start_address; row_start < end_address; row_start+=16)
	mov	a,#0x10
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
;	src/main.c:157: }
	ljmp	00121$
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;received_char             Allocated with name '_main_received_char_196609_117'
;------------------------------------------------------------
;	src/main.c:161: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c:163: eeprom_init();
	lcall	_eeprom_init
;	src/main.c:164: print_dashed_line();
	lcall	_print_dashed_line
00110$:
;	src/main.c:167: printf("\r\nEnter a command char (? for help): ");
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
;	src/main.c:168: char received_char = getchar();
	lcall	_getchar
	mov	r6,dpl
;	src/main.c:169: putchar(received_char);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	_putchar
	pop	ar6
;	src/main.c:170: switch(received_char)
	cjne	r6,#0x3f,00137$
	sjmp	00101$
00137$:
	cjne	r6,#0x65,00138$
	ljmp	00105$
00138$:
	cjne	r6,#0x72,00139$
	sjmp	00103$
00139$:
	cjne	r6,#0x77,00140$
	sjmp	00102$
00140$:
	cjne	r6,#0x78,00141$
	sjmp	00104$
00141$:
	ljmp	00106$
;	src/main.c:172: case '?':
00101$:
;	src/main.c:173: printf("\r\nw - write a byte");
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
;	src/main.c:174: printf("\r\nr - read a byte");
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
;	src/main.c:175: printf("\r\nx - hex dump");
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
;	src/main.c:176: printf("\r\ne - eeprom reset");
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:177: break;
;	src/main.c:178: case 'w':
	sjmp	00107$
00102$:
;	src/main.c:179: w_command_handler();
	lcall	_w_command_handler
;	src/main.c:180: break;
;	src/main.c:181: case 'r':
	sjmp	00107$
00103$:
;	src/main.c:182: r_command_handler();
	lcall	_r_command_handler
;	src/main.c:183: break;
;	src/main.c:184: case 'x':
	sjmp	00107$
00104$:
;	src/main.c:185: x_command_handler();
	lcall	_x_command_handler
;	src/main.c:186: break;
;	src/main.c:187: case 'e':
	sjmp	00107$
00105$:
;	src/main.c:188: eereset();
	lcall	_eereset
;	src/main.c:189: printf("\r\nDid EEPROM Reset");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:190: break;
;	src/main.c:191: default:
	sjmp	00107$
00106$:
;	src/main.c:192: printf("\r\nUnrecognized command, please enter a valid command char");
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:193: continue; //no command, don't print the end command line
	ljmp	00110$
;	src/main.c:194: }
00107$:
;	src/main.c:195: printf("\r\nEND COMMAND");
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:196: print_dashed_line();
	lcall	_print_dashed_line
;	src/main.c:198: }
	ljmp	00110$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.db 0x0a
	.ascii "Enter an EEPROM address to write to in hex [0,7FF]: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0d
	.db 0x0a
	.ascii " Failed to enter a hex integer, please try again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0d
	.db 0x0a
	.ascii " Failed to enter an address within range, please try again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.ascii "Enter a byte to write [0, FF]: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0d
	.db 0x0a
	.ascii " Failed to enter a value that's byte size, please try again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0d
	.db 0x0a
	.ascii "Failed to write to the eeprom"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0d
	.db 0x0a
	.ascii " Success: wrote to the eeprom"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0d
	.db 0x0a
	.ascii "Enter an EEPROM address to read from in hex [0,7FF]: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0d
	.db 0x0a
	.ascii "Failed to read from the eeprom"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0d
	.db 0x0a
	.ascii " %03x: %02hhx"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0d
	.db 0x0a
	.ascii "---------------------------------------------------"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0d
	.db 0x0a
	.ascii "Enter a valid starting hex address [0, 7FF]: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0d
	.db 0x0a
	.ascii "Enter a valid ending hex address [0,7FF]: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0d
	.db 0x0a
	.ascii " start_address is greater than end address; please try again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0d
	.db 0x0a
	.ascii "%03X: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0d
	.db 0x0a
	.ascii " Failed to read byte from eeprom, ending command "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "%02X "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0d
	.db 0x0a
	.ascii "Enter a command char (? for help): "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0d
	.db 0x0a
	.ascii "w - write a byte"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0d
	.db 0x0a
	.ascii "r - read a byte"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0d
	.db 0x0a
	.ascii "x - hex dump"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0x0d
	.db 0x0a
	.ascii "e - eeprom reset"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.db 0x0d
	.db 0x0a
	.ascii "Did EEPROM Reset"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0d
	.db 0x0a
	.ascii "Unrecognized command, please enter a valid command char"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0d
	.db 0x0a
	.ascii "END COMMAND"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
