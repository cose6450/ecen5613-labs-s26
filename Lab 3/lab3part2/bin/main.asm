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
	.globl _hashtag_command_handler
	.globl _dollar_sign_command_handler
	.globl _percent_command_handler
	.globl _enter_command_handler
	.globl _qmark_command_handler
	.globl _heap_report
	.globl _command_header
	.globl _store_in_buffer
	.globl _initialize_buffers
	.globl _is_alphabet_char
	.globl __sdcc_external_startup
	.globl ___memcpy
	.globl _memset
	.globl _reset_char_count
	.globl _get_char_count
	.globl _get_next_input_char
	.globl _get_input_buffer
	.globl _get_string
	.globl _free
	.globl _malloc
	.globl _atoi
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
	.globl _store_in_buffer_PARM_2
	.globl _buffers
	.globl _get_user_buffer_sz
	.globl _free_all_buffers
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
_initialize_buffers_sloc0_1_0:
	.ds 2
_initialize_buffers_sloc1_1_0:
	.ds 2
_initialize_buffers_sloc2_1_0:
	.ds 3
_store_in_buffer_sloc0_1_0:
	.ds 2
_store_in_buffer_sloc1_1_0:
	.ds 3
_heap_report_sloc0_1_0:
	.ds 2
_heap_report_sloc1_1_0:
	.ds 2
_heap_report_sloc2_1_0:
	.ds 2
_heap_report_sloc3_1_0:
	.ds 2
_heap_report_sloc4_1_0:
	.ds 3
_qmark_command_handler_sloc0_1_0:
	.ds 3
_enter_command_handler_sloc0_1_0:
	.ds 3
_enter_command_handler_sloc1_1_0:
	.ds 2
_enter_command_handler_sloc2_1_0:
	.ds 2
_enter_command_handler_sloc3_1_0:
	.ds 2
_percent_command_handler_sloc0_1_0:
	.ds 3
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
_is_alphabet_char_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_buffers::
	.ds 48
_is_alphabet_char_c_65536_76:
	.ds 1
_initialize_buffers_max_user_input_65537_81:
	.ds 2
_initialize_buffers_total_heap_sz_65538_89:
	.ds 2
_store_in_buffer_PARM_2:
	.ds 1
_store_in_buffer_buffer_65536_93:
	.ds 3
_command_header_command_string_65536_97:
	.ds 3
_heap_report_total_heap_sz_65537_100:
	.ds 2
_get_user_buffer_sz_maximum_sz_65536_104:
	.ds 2
_qmark_command_handler_curr_output_char_65538_113:
	.ds 2
_qmark_command_handler_curr_char_196610_115:
	.ds 1
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
;	src/main.c:51: int _sdcc_external_startup()
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
;	src/main.c:54: return 0;
	mov	dptr,#0x0000
;	src/main.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_alphabet_char'
;------------------------------------------------------------
;c                         Allocated with name '_is_alphabet_char_c_65536_76'
;------------------------------------------------------------
;	src/main.c:81: bool is_alphabet_char(char c)
;	-----------------------------------------
;	 function is_alphabet_char
;	-----------------------------------------
_is_alphabet_char:
	mov	a,dpl
	mov	dptr,#_is_alphabet_char_c_65536_76
	movx	@dptr,a
;	src/main.c:83: return (c <= 'Z' && c >= 'A')
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x5a
	mov	_is_alphabet_char_sloc0_1_0,c
	jc	00108$
	cjne	r7,#0x41,00121$
00121$:
	mov	_is_alphabet_char_sloc0_1_0,c
	jnc	00104$
00108$:
;	src/main.c:84: || (c <= 'z' && c >= 'a');
	mov	dptr,#_is_alphabet_char_c_65536_76
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x7a
	mov	_is_alphabet_char_sloc0_1_0,c
	jc	00103$
	cjne	r7,#0x61,00124$
00124$:
	mov	_is_alphabet_char_sloc0_1_0,c
	jnc	00104$
00103$:
;	assignBit
	clr	_is_alphabet_char_sloc0_1_0
	sjmp	00105$
00104$:
;	assignBit
	setb	_is_alphabet_char_sloc0_1_0
00105$:
	mov	c,_is_alphabet_char_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
;	src/main.c:85: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initialize_buffers'
;------------------------------------------------------------
;sloc0                     Allocated with name '_initialize_buffers_sloc0_1_0'
;sloc1                     Allocated with name '_initialize_buffers_sloc1_1_0'
;sloc2                     Allocated with name '_initialize_buffers_sloc2_1_0'
;student_number            Allocated with name '_initialize_buffers_student_number_65536_78'
;max_user_input            Allocated with name '_initialize_buffers_max_user_input_65537_81'
;user_buffer_size          Allocated with name '_initialize_buffers_user_buffer_size_65537_81'
;i                         Allocated with name '_initialize_buffers_i_196609_83'
;total_heap_sz             Allocated with name '_initialize_buffers_total_heap_sz_65538_89'
;i                         Allocated with name '_initialize_buffers_i_131074_90'
;------------------------------------------------------------
;	src/main.c:87: void initialize_buffers()
;	-----------------------------------------
;	 function initialize_buffers
;	-----------------------------------------
_initialize_buffers:
;	src/main.c:90: while (true) 
00105$:
;	src/main.c:92: printf("\r\nPlease enter the last two digits of your ID:");
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
;	src/main.c:93: get_string();
	lcall	_get_string
;	src/main.c:94: student_number = atoi(get_input_buffer());
	lcall	_get_input_buffer
	lcall	_atoi
	mov	r6,dpl
;	src/main.c:95: if (!(student_number < 0 || student_number > MAX_STUDENT_NUMBER))
	mov	a,dph
	mov	r7,a
	jb	acc.7,00105$
	clr	c
	mov	a,#0x63
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00105$
;	src/main.c:101: size_t max_user_input = USER_BUFFER_MAX;
	mov	dptr,#_initialize_buffers_max_user_input_65537_81
	clr	a
	movx	@dptr,a
	mov	a,#0x04
	inc	dptr
	movx	@dptr,a
;	src/main.c:105: memset(buffers, 0, BUFFER_COUNT * sizeof(char *));
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x12
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffers
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_memset
	pop	ar6
	pop	ar7
;	src/main.c:107: while(true)
	mov	a,#0x02
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
00117$:
;	src/main.c:109: user_buffer_size = get_user_buffer_sz(max_user_input);
	mov	dptr,#_initialize_buffers_max_user_input_65537_81
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_get_user_buffer_sz
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:110: for(int i = 0; i < NUM_BUFFERS_TO_BE_ALLOCATED_TO_USER_SZ; i++)
	mov	r0,#0x00
	mov	r1,#0x00
00123$:
	clr	c
	mov	a,r0
	subb	a,#0x04
	mov	a,r1
	xrl	a,#0x80
	subb	a,#0x80
	jc	00181$
	ljmp	00111$
00181$:
;	src/main.c:113: buffers[i].buffer = malloc(user_buffer_size);
	push	ar4
	push	ar5
	mov	_initialize_buffers_sloc0_1_0,r0
	mov	a,r1
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,_initialize_buffers_sloc0_1_0
	swap	a
	rr	a
	xch	a,_initialize_buffers_sloc0_1_0
	xrl	a,_initialize_buffers_sloc0_1_0
	xch	a,_initialize_buffers_sloc0_1_0
	anl	a,#0xf8
	xch	a,_initialize_buffers_sloc0_1_0
	xrl	a,_initialize_buffers_sloc0_1_0
	mov	(_initialize_buffers_sloc0_1_0 + 1),a
	mov	a,_initialize_buffers_sloc0_1_0
	add	a,#_buffers
	mov	_initialize_buffers_sloc1_1_0,a
	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
	addc	a,#(_buffers >> 8)
	mov	(_initialize_buffers_sloc1_1_0 + 1),a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	dpl,_initialize_buffers_sloc1_1_0
	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:115: if(buffers[i].buffer == NULL)
	mov	a,r4
	orl	a,r5
	pop	ar5
	pop	ar4
	jnz	00109$
;	src/main.c:117: free_all_buffers();
	push	ar4
	push	ar5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free_all_buffers
;	src/main.c:118: printf(BUFFER_SZ_TOO_BIG);
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:119: max_user_input = user_buffer_size-1;
	mov	a,r2
	add	a,#0xff
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_initialize_buffers_max_user_input_65537_81
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:120: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
	pop	ar5
	pop	ar4
	ljmp	00117$
00109$:
;	src/main.c:122: buffers[i].size = (size_t) user_buffer_size;
	push	ar4
	push	ar5
	mov	a,_initialize_buffers_sloc0_1_0
	add	a,#_buffers
	mov	r4,a
	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
	addc	a,#(_buffers >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	src/main.c:123: buffers[i].alphabet_chars = 0; 
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:110: for(int i = 0; i < NUM_BUFFERS_TO_BE_ALLOCATED_TO_USER_SZ; i++)
	inc	r0
	cjne	r0,#0x00,00183$
	inc	r1
00183$:
	pop	ar5
	pop	ar4
	ljmp	00123$
00111$:
;	src/main.c:127: free(buffers[2].buffer);
	push	ar6
	push	ar7
	mov	dptr,#(_buffers + 0x0010)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	r7,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:128: buffers[2].buffer = NULL; //make sure we don't accidentally double free
	mov	dptr,#(_buffers + 0x0010)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:129: buffers[2].size = 0; 
	mov	dptr,#(_buffers + 0x0014)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:132: buffers[4].size = (size_t) 10 * (student_number + 2);
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#(_buffers + 0x0024)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:133: buffers[4].buffer = malloc(buffers[4].size);
	mov	dpl,r6
	mov	dph,r7
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dptr,#(_buffers + 0x0020)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:135: if (buffers[4].buffer == NULL)
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	jnz	00113$
;	src/main.c:137: free_all_buffers();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free_all_buffers
;	src/main.c:138: printf(BUFFER_SZ_TOO_BIG);
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:139: max_user_input = user_buffer_size-1;
	mov	a,r2
	add	a,#0xff
	mov	r0,a
	mov	a,r3
	addc	a,#0xff
	mov	r1,a
	mov	dptr,#_initialize_buffers_max_user_input_65537_81
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	src/main.c:140: continue;
	ljmp	00117$
00113$:
;	src/main.c:143: buffers[5].size = (size_t) 2 * user_buffer_size; 
	mov	a,r2
	add	a,r2
	mov	r0,a
	mov	a,r3
	rlc	a
	mov	r1,a
	mov	dptr,#(_buffers + 0x002c)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	src/main.c:144: buffers[5].buffer = malloc(buffers[5].size);
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_malloc
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#(_buffers + 0x0028)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	src/main.c:145: if (buffers[5].buffer == NULL)
	mov	a,r0
	orl	a,r1
	jnz	00118$
;	src/main.c:147: free_all_buffers();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free_all_buffers
;	src/main.c:148: printf(BUFFER_SZ_TOO_BIG);
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:149: max_user_input = user_buffer_size-1;
	mov	a,r2
	add	a,#0xff
	mov	r0,a
	mov	a,r3
	addc	a,#0xff
	mov	r1,a
	mov	dptr,#_initialize_buffers_max_user_input_65537_81
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	src/main.c:150: continue;
	ljmp	00117$
;	src/main.c:152: break;
00118$:
;	src/main.c:155: printf("\r\nstudent_number: %d", student_number);
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
;	src/main.c:156: printf("\r\nuser_buffer_size: %zu", user_buffer_size);
	push	ar2
	push	ar3
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/main.c:158: size_t total_heap_sz = 0;
	mov	dptr,#_initialize_buffers_total_heap_sz_65538_89
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:159: for(int i = 0; i < BUFFER_COUNT; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00126$:
	clr	c
	mov	a,r6
	subb	a,#0x06
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00186$
	ljmp	00121$
00186$:
;	src/main.c:161: if(buffers[i].buffer != NULL) {
	mov	ar4,r6
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	add	a,#_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	00187$
	ljmp	00127$
00187$:
;	src/main.c:162: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, buffers[i].buffer, buffers[i].buffer + buffers[i].size, buffers[i].size);
	mov	a,r4
	add	a,#_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	r5,a
	mov	a,#0x04
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	_initialize_buffers_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_initialize_buffers_sloc0_1_0 + 1),a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	_initialize_buffers_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_initialize_buffers_sloc1_1_0 + 1),a
	mov	a,_initialize_buffers_sloc0_1_0
	add	a,_initialize_buffers_sloc1_1_0
	mov	r4,a
	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
	addc	a,(_initialize_buffers_sloc1_1_0 + 1)
	mov	r5,a
	mov	_initialize_buffers_sloc2_1_0,r4
	mov	(_initialize_buffers_sloc2_1_0 + 1),r5
	mov	(_initialize_buffers_sloc2_1_0 + 2),#0x00
	mov	r0,_initialize_buffers_sloc1_1_0
	mov	r5,(_initialize_buffers_sloc1_1_0 + 1)
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	_initialize_buffers_sloc0_1_0
	push	(_initialize_buffers_sloc0_1_0 + 1)
	push	_initialize_buffers_sloc2_1_0
	push	(_initialize_buffers_sloc2_1_0 + 1)
	push	(_initialize_buffers_sloc2_1_0 + 2)
	push	ar0
	push	ar5
	push	ar4
	push	ar6
	push	ar7
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf3
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	src/main.c:163: total_heap_sz += buffers[i].size; 
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_initialize_buffers_total_heap_sz_65538_89
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_initialize_buffers_total_heap_sz_65538_89
	mov	a,r2
	add	a,r4
	movx	@dptr,a
	mov	a,r3
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00127$:
;	src/main.c:159: for(int i = 0; i < BUFFER_COUNT; i++)
	inc	r6
	cjne	r6,#0x00,00188$
	inc	r7
00188$:
	ljmp	00126$
00121$:
;	src/main.c:166: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
	mov	dptr,#_initialize_buffers_total_heap_sz_65538_89
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#(___sdcc_heap + 0x0400)
	push	acc
	mov	a,#((___sdcc_heap + 0x0400) >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#___sdcc_heap
	push	acc
	mov	a,#(___sdcc_heap >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	src/main.c:167: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'store_in_buffer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_store_in_buffer_sloc0_1_0'
;sloc1                     Allocated with name '_store_in_buffer_sloc1_1_0'
;c                         Allocated with name '_store_in_buffer_PARM_2'
;buffer                    Allocated with name '_store_in_buffer_buffer_65536_93'
;------------------------------------------------------------
;	src/main.c:169: void store_in_buffer(buffer_t *buffer, char c)
;	-----------------------------------------
;	 function store_in_buffer
;	-----------------------------------------
_store_in_buffer:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_store_in_buffer_buffer_65536_93
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:171: if (buffer->curr_available_char < buffer->size)
	mov	dptr,#_store_in_buffer_buffer_65536_93
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
	add	a,r5
	mov	_store_in_buffer_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_store_in_buffer_sloc1_1_0 + 1),a
	mov	(_store_in_buffer_sloc1_1_0 + 2),r7
	mov	dpl,_store_in_buffer_sloc1_1_0
	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	_store_in_buffer_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_store_in_buffer_sloc0_1_0 + 1),a
	mov	a,#0x04
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	clr	c
	mov	a,_store_in_buffer_sloc0_1_0
	subb	a,r0
	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
	subb	a,r1
	jc	00115$
	ret
00115$:
;	src/main.c:173: buffer->buffer[buffer->curr_available_char] = c;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_store_in_buffer_sloc0_1_0
	add	a,r3
	mov	r3,a
	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
	addc	a,r4
	mov	r4,a
	mov	dptr,#_store_in_buffer_PARM_2
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	src/main.c:174: buffer->curr_available_char++;
	mov	dpl,_store_in_buffer_sloc1_1_0
	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	r4
	cjne	r4,#0x00,00116$
	inc	r3
00116$:
	mov	dpl,_store_in_buffer_sloc1_1_0
	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	src/main.c:175: if (is_alphabet_char(c))
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	lcall	_is_alphabet_char
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00105$
;	src/main.c:177: buffer->alphabet_chars++;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00118$
	inc	r4
00118$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
;	src/main.c:180: }
	ljmp	__gptrput
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'command_header'
;------------------------------------------------------------
;command_string            Allocated with name '_command_header_command_string_65536_97'
;------------------------------------------------------------
;	src/main.c:182: void command_header(char *command_string)
;	-----------------------------------------
;	 function command_header
;	-----------------------------------------
_command_header:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_command_header_command_string_65536_97
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:184: printf("\r\n        %s", command_string);
	mov	dptr,#_command_header_command_string_65536_97
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/main.c:185: printf("\r\n------------------------------");   
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
;	src/main.c:186: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'heap_report'
;------------------------------------------------------------
;sloc0                     Allocated with name '_heap_report_sloc0_1_0'
;sloc1                     Allocated with name '_heap_report_sloc1_1_0'
;sloc2                     Allocated with name '_heap_report_sloc2_1_0'
;sloc3                     Allocated with name '_heap_report_sloc3_1_0'
;sloc4                     Allocated with name '_heap_report_sloc4_1_0'
;total_heap_sz             Allocated with name '_heap_report_total_heap_sz_65537_100'
;i                         Allocated with name '_heap_report_i_131073_101'
;------------------------------------------------------------
;	src/main.c:190: void heap_report()
;	-----------------------------------------
;	 function heap_report
;	-----------------------------------------
_heap_report:
;	src/main.c:192: command_header("HEAP REPORT");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_command_header
;	src/main.c:193: size_t total_heap_sz = 0;
	mov	dptr,#_heap_report_total_heap_sz_65537_100
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:194: for(int i = 0; i < BUFFER_COUNT; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	clr	c
	mov	a,r6
	subb	a,#0x06
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00122$
	ljmp	00103$
00122$:
;	src/main.c:196: if(buffers[i].buffer != NULL) {
	mov	ar4,r6
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	add	a,#_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	00123$
	ljmp	00106$
00123$:
;	src/main.c:203: buffers[i].size - buffers[i].curr_available_char);
	mov	a,r4
	add	a,#_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	r5,a
	mov	a,#0x04
	add	a,r4
	mov	_heap_report_sloc0_1_0,a
	clr	a
	addc	a,r5
	mov	(_heap_report_sloc0_1_0 + 1),a
	mov	dpl,_heap_report_sloc0_1_0
	mov	dph,(_heap_report_sloc0_1_0 + 1)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,#0x06
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r0
	clr	c
	subb	a,r2
	mov	_heap_report_sloc1_1_0,a
	mov	a,r1
	subb	a,r3
	mov	(_heap_report_sloc1_1_0 + 1),a
;	src/main.c:202: buffers[i].alphabet_chars,
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	_heap_report_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_heap_report_sloc2_1_0 + 1),a
;	src/main.c:200: buffers[i].buffer + buffers[i].size, 
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	_heap_report_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_heap_report_sloc3_1_0 + 1),a
	mov	a,r0
	add	a,_heap_report_sloc3_1_0
	mov	r2,a
	mov	a,r1
	addc	a,(_heap_report_sloc3_1_0 + 1)
	mov	r3,a
	mov	_heap_report_sloc4_1_0,r2
	mov	(_heap_report_sloc4_1_0 + 1),r3
	mov	(_heap_report_sloc4_1_0 + 2),#0x00
;	src/main.c:199: buffers[i].buffer, 
	mov	r4,_heap_report_sloc3_1_0
	mov	r5,(_heap_report_sloc3_1_0 + 1)
	mov	r3,#0x00
;	src/main.c:197: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
	push	ar7
	push	ar6
	push	_heap_report_sloc1_1_0
	push	(_heap_report_sloc1_1_0 + 1)
	push	_heap_report_sloc2_1_0
	push	(_heap_report_sloc2_1_0 + 1)
	push	ar0
	push	ar1
	push	_heap_report_sloc4_1_0
	push	(_heap_report_sloc4_1_0 + 1)
	push	(_heap_report_sloc4_1_0 + 2)
	push	ar4
	push	ar5
	push	ar3
	push	ar6
	push	ar7
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xef
	mov	sp,a
	pop	ar6
	pop	ar7
;	src/main.c:204: total_heap_sz += buffers[i].size; 
	mov	dpl,_heap_report_sloc0_1_0
	mov	dph,(_heap_report_sloc0_1_0 + 1)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_heap_report_total_heap_sz_65537_100
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_heap_report_total_heap_sz_65537_100
	mov	a,r4
	add	a,r2
	movx	@dptr,a
	mov	a,r5
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00106$:
;	src/main.c:194: for(int i = 0; i < BUFFER_COUNT; i++)
	inc	r6
	cjne	r6,#0x00,00124$
	inc	r7
00124$:
	ljmp	00105$
00103$:
;	src/main.c:207: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
	mov	dptr,#_heap_report_total_heap_sz_65537_100
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#(___sdcc_heap + 0x0400)
	push	acc
	mov	a,#((___sdcc_heap + 0x0400) >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#___sdcc_heap
	push	acc
	mov	a,#(___sdcc_heap >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	src/main.c:208: printf("\r\n");
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
;	src/main.c:209: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_user_buffer_sz'
;------------------------------------------------------------
;maximum_sz                Allocated with name '_get_user_buffer_sz_maximum_sz_65536_104'
;user_buffer_size          Allocated with name '_get_user_buffer_sz_user_buffer_size_65536_105'
;------------------------------------------------------------
;	src/main.c:213: size_t get_user_buffer_sz(size_t maximum_sz)
;	-----------------------------------------
;	 function get_user_buffer_sz
;	-----------------------------------------
_get_user_buffer_sz:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_104
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:216: do {
	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_104
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00103$:
;	src/main.c:217: printf("\r\nPlease enter a valid buffer size that is divisible by 32 [64,%zu]: ", maximum_sz);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/main.c:218: get_string();
	lcall	_get_string
;	src/main.c:219: user_buffer_size = (size_t) atoi(get_input_buffer()); //TODO: replace with own implementation of atoi that respects the size_t
	lcall	_get_input_buffer
	lcall	_atoi
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	src/main.c:220: } while ((user_buffer_size > maximum_sz)
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
;	src/main.c:221: || (user_buffer_size < USER_BUFFER_MIN)
	jc	00103$
	mov	a,r4
	subb	a,#0x40
	mov	a,r5
	subb	a,#0x00
	jc	00103$
;	src/main.c:222: || (MODULE_32(user_buffer_size) != 0));
	mov	a,r4
	anl	a,#0x1f
	jnz	00103$
;	src/main.c:223: return user_buffer_size;
	mov	dpl,r4
	mov	dph,r5
;	src/main.c:224: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'free_all_buffers'
;------------------------------------------------------------
;i                         Allocated with name '_free_all_buffers_i_131072_108'
;------------------------------------------------------------
;	src/main.c:227: void free_all_buffers()
;	-----------------------------------------
;	 function free_all_buffers
;	-----------------------------------------
_free_all_buffers:
;	src/main.c:229: for(int i = 0; i < BUFFER_COUNT; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	clr	c
	mov	a,r6
	subb	a,#0x06
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
;	src/main.c:231: if (buffers[i].buffer != NULL)
	mov	ar4,r6
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	add	a,#_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jz	00102$
;	src/main.c:233: free(buffers[i].buffer);
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar7
	push	ar6
	lcall	_free
	pop	ar6
	pop	ar7
00102$:
;	src/main.c:235: buffers[i].buffer = NULL;
	mov	ar4,r6
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	add	a,#_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:236: buffers[i].size = 0; 
	mov	a,r4
	add	a,#_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:229: for(int i = 0; i < BUFFER_COUNT; i++)
	inc	r6
	cjne	r6,#0x00,00124$
	inc	r7
00124$:
	ljmp	00105$
00107$:
;	src/main.c:238: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'qmark_command_handler'
;------------------------------------------------------------
;sloc0                     Allocated with name '_qmark_command_handler_sloc0_1_0'
;chars_received_since_last_qmark Allocated with name '_qmark_command_handler_chars_received_since_last_qmark_65537_112'
;curr_output_char          Allocated with name '_qmark_command_handler_curr_output_char_65538_113'
;i                         Allocated with name '_qmark_command_handler_i_131074_114'
;curr_buffer_char          Allocated with name '_qmark_command_handler_curr_buffer_char_196610_115'
;curr_char                 Allocated with name '_qmark_command_handler_curr_char_196610_115'
;------------------------------------------------------------
;	src/main.c:242: void qmark_command_handler()
;	-----------------------------------------
;	 function qmark_command_handler
;	-----------------------------------------
_qmark_command_handler:
;	src/main.c:244: heap_report();
	lcall	_heap_report
;	src/main.c:245: size_t chars_received_since_last_qmark = get_char_count();
	lcall	_get_char_count
	mov	r6,dpl
	mov	r7,dph
;	src/main.c:246: reset_char_count();
	push	ar7
	push	ar6
	lcall	_reset_char_count
	pop	ar6
	pop	ar7
;	src/main.c:247: printf("\r\n Received %zu chars since last invocation of ?", chars_received_since_last_qmark);
	push	ar6
	push	ar7
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/main.c:248: size_t curr_output_char = 0;
	mov	dptr,#_qmark_command_handler_curr_output_char_65538_113
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:250: for(int i = 0; i < 2; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00108$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00134$
	ljmp	00106$
00134$:
;	src/main.c:253: char curr_char = buffers[i].buffer[0];
	mov	ar4,r6
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	add	a,#_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dptr,#_qmark_command_handler_curr_char_196610_115
	movx	@dptr,a
;	src/main.c:254: while(curr_char != '\0')
	mov	dptr,#_qmark_command_handler_curr_output_char_65538_113
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r0,#0x00
	mov	r1,#0x00
00103$:
	mov	dptr,#_qmark_command_handler_curr_char_196610_115
	movx	a,@dptr
	jnz	00135$
	ljmp	00117$
00135$:
;	src/main.c:256: if (MODULE_32(curr_output_char) == 0)
	mov	a,r2
	anl	a,#0x1f
	jz	00137$
	sjmp	00102$
00137$:
;	src/main.c:258: printf("\r\n");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
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
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	src/main.c:260: printf("%c", curr_char);
	push	ar6
	push	ar7
	mov	dptr,#_qmark_command_handler_curr_char_196610_115
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar7
	push	ar6
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:261: curr_output_char++;
	inc	r2
	cjne	r2,#0x00,00138$
	inc	r3
00138$:
;	src/main.c:262: curr_buffer_char++;
	inc	r0
	cjne	r0,#0x00,00139$
	inc	r1
00139$:
;	src/main.c:263: curr_char = buffers[i].buffer[curr_buffer_char];
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r0
	add	a,r6
	mov	dpl,a
	mov	a,r1
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_qmark_command_handler_curr_char_196610_115
	movx	@dptr,a
	pop	ar7
	pop	ar6
	ljmp	00103$
00117$:
	mov	dptr,#_qmark_command_handler_curr_output_char_65538_113
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	src/main.c:266: memset(buffers[i].buffer, '\0', buffers[i].size);
	mov	ar4,r6
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	add	a,#_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	_qmark_command_handler_sloc0_1_0,r2
	mov	(_qmark_command_handler_sloc0_1_0 + 1),r3
	mov	(_qmark_command_handler_sloc0_1_0 + 2),#0x00
	mov	a,r4
	add	a,#_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,_qmark_command_handler_sloc0_1_0
	mov	dph,(_qmark_command_handler_sloc0_1_0 + 1)
	mov	b,(_qmark_command_handler_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_memset
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:267: buffers[i].alphabet_chars = 0;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:268: buffers[i].curr_available_char = 0;
	mov	a,#0x06
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:250: for(int i = 0; i < 2; i++)
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r7
00140$:
	ljmp	00108$
00106$:
;	src/main.c:271: printf("\r\n");
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
;	src/main.c:272: printf("\r\n");
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
;	src/main.c:273: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enter_command_handler'
;------------------------------------------------------------
;sloc0                     Allocated with name '_enter_command_handler_sloc0_1_0'
;sloc1                     Allocated with name '_enter_command_handler_sloc1_1_0'
;sloc2                     Allocated with name '_enter_command_handler_sloc2_1_0'
;sloc3                     Allocated with name '_enter_command_handler_sloc3_1_0'
;i                         Allocated with name '_enter_command_handler_i_131072_119'
;address                   Allocated with name '_enter_command_handler_address_262144_121'
;j                         Allocated with name '_enter_command_handler_j_393216_123'
;------------------------------------------------------------
;	src/main.c:275: void enter_command_handler()
;	-----------------------------------------
;	 function enter_command_handler
;	-----------------------------------------
_enter_command_handler:
;	src/main.c:277: command_header("Dump Buffer");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_command_header
;	src/main.c:278: for(int i = 0; i < 2; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00111$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00142$
	ret
00142$:
;	src/main.c:280: printf("\r\n Buffer %d ", i);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/main.c:281: printf("\r\n----------");
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
	pop	ar6
	pop	ar7
;	src/main.c:282: for(char *address = buffers[i].buffer; address < (buffers[i].buffer + buffers[i].size); address += 16)
	mov	ar4,r6
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	add	a,#_buffers
	mov	r2,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	_enter_command_handler_sloc0_1_0,r0
	mov	(_enter_command_handler_sloc0_1_0 + 1),r1
	mov	(_enter_command_handler_sloc0_1_0 + 2),#0x00
	mov	ar0,r6
	mov	ar1,r7
	mov	_enter_command_handler_sloc3_1_0,r2
	mov	(_enter_command_handler_sloc3_1_0 + 1),r3
	mov	a,r4
	add	a,#_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	r5,a
	mov	a,#0x04
	add	a,r4
	mov	_enter_command_handler_sloc1_1_0,a
	clr	a
	addc	a,r5
	mov	(_enter_command_handler_sloc1_1_0 + 1),a
00108$:
	push	ar0
	push	ar1
	mov	dpl,_enter_command_handler_sloc3_1_0
	mov	dph,(_enter_command_handler_sloc3_1_0 + 1)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,_enter_command_handler_sloc1_1_0
	mov	dph,(_enter_command_handler_sloc1_1_0 + 1)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r0
	mov	_enter_command_handler_sloc2_1_0,a
	mov	a,r5
	addc	a,r1
	mov	(_enter_command_handler_sloc2_1_0 + 1),a
	mov	r1,_enter_command_handler_sloc0_1_0
	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
	mov	r5,(_enter_command_handler_sloc0_1_0 + 2)
	mov	r0,_enter_command_handler_sloc2_1_0
	mov	r2,(_enter_command_handler_sloc2_1_0 + 1)
	mov	r3,#0x00
	push	ar0
	push	ar2
	push	ar3
	mov	dpl,r1
	mov	dph,r4
	mov	b,r5
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar0
	jc	00143$
	ljmp	00102$
00143$:
;	src/main.c:284: printf("\r\n%04X:", (unsigned int) address);
	mov	r3,_enter_command_handler_sloc0_1_0
	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
	push	ar1
	push	ar0
	push	ar3
	push	ar4
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
;	src/main.c:285: for(int j = 0; j < 16; j++)
	mov	r3,_enter_command_handler_sloc0_1_0
	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
	mov	r5,(_enter_command_handler_sloc0_1_0 + 2)
	clr	a
	mov	_enter_command_handler_sloc2_1_0,a
	mov	(_enter_command_handler_sloc2_1_0 + 1),a
00105$:
	clr	c
	mov	a,_enter_command_handler_sloc2_1_0
	subb	a,#0x10
	mov	a,(_enter_command_handler_sloc2_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00109$
;	src/main.c:287: printf(" %02hhX", (unsigned char) *(address+j));
	push	ar0
	push	ar1
	mov	a,_enter_command_handler_sloc2_1_0
	add	a,r3
	mov	r0,a
	mov	a,(_enter_command_handler_sloc2_1_0 + 1)
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	r2,#0x00
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	push	ar0
	push	ar0
	push	ar2
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
;	src/main.c:285: for(int j = 0; j < 16; j++)
	inc	_enter_command_handler_sloc2_1_0
	clr	a
	cjne	a,_enter_command_handler_sloc2_1_0,00145$
	inc	(_enter_command_handler_sloc2_1_0 + 1)
00145$:
	pop	ar1
	pop	ar0
	sjmp	00105$
00109$:
;	src/main.c:282: for(char *address = buffers[i].buffer; address < (buffers[i].buffer + buffers[i].size); address += 16)
	mov	a,#0x10
	add	a,_enter_command_handler_sloc0_1_0
	mov	_enter_command_handler_sloc0_1_0,a
	clr	a
	addc	a,(_enter_command_handler_sloc0_1_0 + 1)
	mov	(_enter_command_handler_sloc0_1_0 + 1),a
	ljmp	00108$
00102$:
;	src/main.c:290: printf("\r\n");
	push	ar1
	push	ar0
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
	pop	ar0
	pop	ar1
;	src/main.c:278: for(int i = 0; i < 2; i++)
	mov	a,#0x01
	add	a,r0
	mov	r6,a
	clr	a
	addc	a,r1
	mov	r7,a
;	src/main.c:292: }
	ljmp	00111$
;------------------------------------------------------------
;Allocation info for local variables in function 'percent_command_handler'
;------------------------------------------------------------
;sloc0                     Allocated with name '_percent_command_handler_sloc0_1_0'
;i                         Allocated with name '_percent_command_handler_i_131072_126'
;------------------------------------------------------------
;	src/main.c:294: void percent_command_handler()
;	-----------------------------------------
;	 function percent_command_handler
;	-----------------------------------------
_percent_command_handler:
;	src/main.c:296: command_header("Clear Buffers");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_command_header
;	src/main.c:297: for(int i = 0; i < BUFFER_COUNT; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x06
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00116$
	ret
00116$:
;	src/main.c:299: memset(buffers[i].buffer, 0x00, buffers[i].size);
	mov	ar4,r6
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	add	a,#_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	_percent_command_handler_sloc0_1_0,r2
	mov	(_percent_command_handler_sloc0_1_0 + 1),r3
	mov	(_percent_command_handler_sloc0_1_0 + 2),#0x00
	mov	a,r4
	add	a,#_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_buffers >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,_percent_command_handler_sloc0_1_0
	mov	dph,(_percent_command_handler_sloc0_1_0 + 1)
	mov	b,(_percent_command_handler_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_memset
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:300: buffers[i].curr_available_char = 0;
	mov	a,#0x06
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:301: buffers[i].alphabet_chars = 0; 
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:297: for(int i = 0; i < BUFFER_COUNT; i++)
	inc	r6
	cjne	r6,#0x00,00117$
	inc	r7
00117$:
;	src/main.c:303: }
	ljmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'dollar_sign_command_handler'
;------------------------------------------------------------
;	src/main.c:305: void dollar_sign_command_handler()
;	-----------------------------------------
;	 function dollar_sign_command_handler
;	-----------------------------------------
_dollar_sign_command_handler:
;	src/main.c:307: P1_0 = true;
;	assignBit
	setb	_P1_0
;	src/main.c:308: memcpy(buffers[3].buffer, buffers[0].buffer, buffers[0].size);
	mov	dptr,#(_buffers + 0x0018)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_buffers
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	mov	dptr,#(_buffers + 0x0004)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	___memcpy
;	src/main.c:309: buffers[3].alphabet_chars = buffers[0].alphabet_chars;
	mov	dptr,#(_buffers + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_buffers + 0x001a)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:310: buffers[3].curr_available_char = buffers[0].curr_available_char;
	mov	dptr,#(_buffers + 0x0006)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_buffers + 0x001e)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:311: P1_0 = false; 
;	assignBit
	clr	_P1_0
;	src/main.c:312: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hashtag_command_handler'
;------------------------------------------------------------
;i                         Allocated with name '_hashtag_command_handler_i_131072_130'
;------------------------------------------------------------
;	src/main.c:314: void hashtag_command_handler()
;	-----------------------------------------
;	 function hashtag_command_handler
;	-----------------------------------------
_hashtag_command_handler:
;	src/main.c:316: P1_0 = true;
;	assignBit
	setb	_P1_0
;	src/main.c:317: for(size_t i = 0; i < buffers[3].curr_available_char; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	mov	dptr,#(_buffers + 0x001e)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00101$
;	src/main.c:319: buffers[3].buffer[i] |= LOWER_CASE_MASK;
	mov	dptr,#(_buffers + 0x0018)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r3,a
	orl	ar3,#0x20
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
;	src/main.c:317: for(size_t i = 0; i < buffers[3].curr_available_char; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	src/main.c:321: P1_0 = false;
;	assignBit
	clr	_P1_0
;	src/main.c:322: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;received_char             Allocated with name '_main_received_char_196609_135'
;------------------------------------------------------------
;	src/main.c:325: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c:327: initialize_buffers();
	lcall	_initialize_buffers
00112$:
;	src/main.c:331: printf("\r\nEnter a char: ");
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
;	src/main.c:332: char received_char = get_next_input_char();
	lcall	_get_next_input_char
;	src/main.c:333: if (is_alphabet_char(received_char))
	mov  r7,dpl
	push	ar7
	lcall	_is_alphabet_char
	mov	a,dpl
	pop	ar7
	jz	00102$
;	src/main.c:335: store_in_buffer(&buffers[0], received_char);
	mov	dptr,#_store_in_buffer_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_buffers
	mov	b,#0x00
	push	ar7
	lcall	_store_in_buffer
	pop	ar7
	sjmp	00103$
00102$:
;	src/main.c:339: store_in_buffer(&buffers[1], received_char);
	mov	dptr,#_store_in_buffer_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#(_buffers + 0x0008)
	mov	b,#0x00
	push	ar7
	lcall	_store_in_buffer
	pop	ar7
00103$:
;	src/main.c:342: switch(received_char)
	cjne	r7,#0x23,00149$
	sjmp	00109$
00149$:
	cjne	r7,#0x24,00150$
	sjmp	00108$
00150$:
	cjne	r7,#0x25,00151$
	sjmp	00106$
00151$:
	cjne	r7,#0x3d,00152$
	sjmp	00105$
00152$:
	cjne	r7,#0x3f,00153$
	sjmp	00104$
00153$:
;	src/main.c:344: case '?':
	cjne	r7,#0x40,00112$
	sjmp	00107$
00104$:
;	src/main.c:345: qmark_command_handler();
	lcall	_qmark_command_handler
;	src/main.c:346: break;
;	src/main.c:347: case '=':
	sjmp	00112$
00105$:
;	src/main.c:348: enter_command_handler();
	lcall	_enter_command_handler
;	src/main.c:349: break;
;	src/main.c:350: case '%':
	sjmp	00112$
00106$:
;	src/main.c:351: percent_command_handler();
	lcall	_percent_command_handler
;	src/main.c:352: break;
	ljmp	00112$
;	src/main.c:353: case '@':
00107$:
;	src/main.c:354: free_all_buffers();
	lcall	_free_all_buffers
;	src/main.c:355: initialize_buffers();
	lcall	_initialize_buffers
;	src/main.c:356: break;
	ljmp	00112$
;	src/main.c:357: case '$':
00108$:
;	src/main.c:358: dollar_sign_command_handler();
	lcall	_dollar_sign_command_handler
;	src/main.c:359: break;
	ljmp	00112$
;	src/main.c:360: case '#':
00109$:
;	src/main.c:361: hashtag_command_handler();
	lcall	_hashtag_command_handler
;	src/main.c:363: }
;	src/main.c:365: }
	ljmp	00112$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.db 0x0a
	.ascii "Please enter the last two digits of your ID:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0d
	.db 0x0a
	.ascii "Buffer Size too big, please pick a smaller buffer size"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0d
	.db 0x0a
	.ascii "student_number: %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.ascii "user_buffer_size: %zu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0d
	.db 0x0a
	.ascii "buffer_%d starts @ %p, ends @%p, size %zu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0d
	.db 0x0a
	.ascii "Heap starts @ %p, ends @ %p, size: %zu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0d
	.db 0x0a
	.ascii "        %s"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0d
	.db 0x0a
	.ascii "------------------------------"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "HEAP REPORT"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0d
	.db 0x0a
	.ascii "buffer_%d starts @ %p, ends @%p, size %zu, contains %zu alph"
	.ascii "abet chars, has %zu chars remaining"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0d
	.db 0x0a
	.ascii "Please enter a valid buffer size that is divisible by 32 [64"
	.ascii ",%zu]: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0d
	.db 0x0a
	.ascii " Received %zu chars since last invocation of ?"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "%c"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Dump Buffer"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0d
	.db 0x0a
	.ascii " Buffer %d "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0d
	.db 0x0a
	.ascii "----------"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0d
	.db 0x0a
	.ascii "%04X:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii " %02hhX"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "Clear Buffers"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0d
	.db 0x0a
	.ascii "Enter a char: "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
