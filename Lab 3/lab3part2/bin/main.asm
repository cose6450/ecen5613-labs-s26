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
	.globl _ampersand_command_handler
	.globl _star_command_handler
	.globl _minus_command_handler
	.globl _plus_command_handler
	.globl _hashtag_command_handler
	.globl _dollar_sign_command_handler
	.globl _percent_command_handler
	.globl _enter_command_handler
	.globl _qmark_command_handler
	.globl _heap_report
	.globl _command_header
	.globl _store_in_buffer
	.globl _initialize_buffers
	.globl _is_number
	.globl _alloc_new_buffer
	.globl _is_alphabet_char
	.globl __sdcc_external_startup
	.globl _ll_get_elem
	.globl _ll_length
	.globl _free_all_elems_from_list
	.globl _remove_from_buffer_list
	.globl _append_to_buffer_list
	.globl ___memcpy
	.globl _strlen
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
	.globl _dynamic_buffers_list
	.globl _store_in_buffer_PARM_2
	.globl _static_buffers
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
	.ds 2
_initialize_buffers_sloc3_1_0:
	.ds 3
_initialize_buffers_sloc4_1_0:
	.ds 3
_initialize_buffers_sloc5_1_0:
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
_heap_report_sloc5_1_0:
	.ds 3
_qmark_command_handler_sloc0_1_0:
	.ds 2
_qmark_command_handler_sloc1_1_0:
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
_dollar_sign_command_handler_sloc0_1_0:
	.ds 2
_hashtag_command_handler_c_196609_174:
	.ds 1
_ampersand_command_handler_sloc0_1_0:
	.ds 3
_ampersand_command_handler_sloc1_1_0:
	.ds 2
_ampersand_command_handler_sloc2_1_0:
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
_is_number_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_static_buffers::
	.ds 22
_is_alphabet_char_c_65536_82:
	.ds 1
_initialize_default_elements_buffer_65536_84:
	.ds 3
_alloc_new_buffer_size_65536_86:
	.ds 2
_is_number_c_65536_90:
	.ds 1
_initialize_buffers_max_user_input_65538_98:
	.ds 2
_initialize_buffers_total_heap_sz_65539_114:
	.ds 2
_initialize_buffers_curr_65540_118:
	.ds 3
_store_in_buffer_PARM_2:
	.ds 1
_store_in_buffer_buffer_65536_121:
	.ds 3
_command_header_command_string_65536_126:
	.ds 3
_heap_report_total_heap_sz_65537_129:
	.ds 2
_heap_report_curr_65538_133:
	.ds 3
_get_user_buffer_sz_maximum_sz_65536_136:
	.ds 2
_qmark_command_handler_curr_output_char_65538_149:
	.ds 2
_qmark_command_handler_curr_char_196610_151:
	.ds 1
_percent_command_handler_curr_65537_165:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_dynamic_buffers_list::
	.ds 3
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
;	src/main.c:27: int _sdcc_external_startup()
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
;	src/main.c:30: return 0;
	mov	dptr,#0x0000
;	src/main.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_alphabet_char'
;------------------------------------------------------------
;c                         Allocated with name '_is_alphabet_char_c_65536_82'
;------------------------------------------------------------
;	src/main.c:65: bool is_alphabet_char(char c)
;	-----------------------------------------
;	 function is_alphabet_char
;	-----------------------------------------
_is_alphabet_char:
	mov	a,dpl
	mov	dptr,#_is_alphabet_char_c_65536_82
	movx	@dptr,a
;	src/main.c:67: return (c <= 'Z' && c >= 'A')
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
;	src/main.c:68: || (c <= 'z' && c >= 'a');
	mov	dptr,#_is_alphabet_char_c_65536_82
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
;	src/main.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initialize_default_elements'
;------------------------------------------------------------
;buffer                    Allocated with name '_initialize_default_elements_buffer_65536_84'
;------------------------------------------------------------
;	src/main.c:71: static void initialize_default_elements(buffer_t *buffer)
;	-----------------------------------------
;	 function initialize_default_elements
;	-----------------------------------------
_initialize_default_elements:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_initialize_default_elements_buffer_65536_84
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:73: buffer->alphabet_chars = 0;
	mov	dptr,#_initialize_default_elements_buffer_65536_84
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	src/main.c:74: buffer->curr_available_char = 0;
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	src/main.c:75: buffer->next = NULL;
	mov	a,#0x08
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	src/main.c:77: memset(buffer->buffer, 0x00, buffer->size);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
;	src/main.c:78: }
	ljmp	_memset
;------------------------------------------------------------
;Allocation info for local variables in function 'alloc_new_buffer'
;------------------------------------------------------------
;size                      Allocated with name '_alloc_new_buffer_size_65536_86'
;header                    Allocated with name '_alloc_new_buffer_header_65536_87'
;------------------------------------------------------------
;	src/main.c:83: buffer_t *alloc_new_buffer(size_t size)
;	-----------------------------------------
;	 function alloc_new_buffer
;	-----------------------------------------
_alloc_new_buffer:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_alloc_new_buffer_size_65536_86
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:85: buffer_t *header = malloc(sizeof(buffer_t));
	mov	dptr,#0x000b
	lcall	_malloc
	mov	r6,dpl
	mov	r5,dph
	mov	r7,#0x00
;	src/main.c:86: if (header == NULL)
	mov	a,r6
	orl	a,r5
;	src/main.c:88: return NULL;
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ret
00102$:
;	src/main.c:90: header->size = size;
	mov	a,#0x04
	add	a,r6
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_alloc_new_buffer_size_65536_86
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	src/main.c:91: header->buffer = malloc(size);
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	lcall	_malloc
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	src/main.c:92: if (header->buffer == NULL)
	mov	a,r3
	orl	a,r4
	jnz	00104$
;	src/main.c:94: free(header);
	mov	ar2,r6
	mov	ar3,r5
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_free
;	src/main.c:95: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
	ret
00104$:
;	src/main.c:97: initialize_default_elements(header);
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_initialize_default_elements
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:98: return header; 
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
;	src/main.c:99: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_number'
;------------------------------------------------------------
;c                         Allocated with name '_is_number_c_65536_90'
;------------------------------------------------------------
;	src/main.c:104: bool is_number(char c)
;	-----------------------------------------
;	 function is_number
;	-----------------------------------------
_is_number:
	mov	a,dpl
	mov	dptr,#_is_number_c_65536_90
	movx	@dptr,a
;	src/main.c:106: return c >= '0' && c <= '9';
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00110$
00110$:
	mov	_is_number_sloc0_1_0,c
	jc	00103$
	mov	a,r7
	add	a,#0xff - 0x39
	mov	_is_number_sloc0_1_0,c
	jnc	00104$
00103$:
;	assignBit
	clr	_is_number_sloc0_1_0
	sjmp	00105$
00104$:
;	assignBit
	setb	_is_number_sloc0_1_0
00105$:
	mov	c,_is_number_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
;	src/main.c:107: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initialize_buffers'
;------------------------------------------------------------
;sloc0                     Allocated with name '_initialize_buffers_sloc0_1_0'
;sloc1                     Allocated with name '_initialize_buffers_sloc1_1_0'
;sloc2                     Allocated with name '_initialize_buffers_sloc2_1_0'
;sloc3                     Allocated with name '_initialize_buffers_sloc3_1_0'
;sloc4                     Allocated with name '_initialize_buffers_sloc4_1_0'
;sloc5                     Allocated with name '_initialize_buffers_sloc5_1_0'
;student_number            Allocated with name '_initialize_buffers_student_number_65537_93'
;max_user_input            Allocated with name '_initialize_buffers_max_user_input_65538_98'
;user_buffer_size          Allocated with name '_initialize_buffers_user_buffer_size_65538_98'
;i                         Allocated with name '_initialize_buffers_i_196610_100'
;i                         Allocated with name '_initialize_buffers_i_196610_104'
;new_buffer                Allocated with name '_initialize_buffers_new_buffer_262146_105'
;buffer_4                  Allocated with name '_initialize_buffers_buffer_4_131075_108'
;buffer_5                  Allocated with name '_initialize_buffers_buffer_5_131076_111'
;total_heap_sz             Allocated with name '_initialize_buffers_total_heap_sz_65539_114'
;i                         Allocated with name '_initialize_buffers_i_65539_114'
;curr                      Allocated with name '_initialize_buffers_curr_65540_118'
;------------------------------------------------------------
;	src/main.c:112: void initialize_buffers()
;	-----------------------------------------
;	 function initialize_buffers
;	-----------------------------------------
_initialize_buffers:
;	src/main.c:114: dynamic_buffers_list.head = NULL;
	mov	dptr,#_dynamic_buffers_list
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:116: while (true) 
00110$:
;	src/main.c:118: printf("\r\nPlease enter the last two digits of your ID:");
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
;	src/main.c:119: get_string();
	lcall	_get_string
;	src/main.c:120: if (strlen(get_input_buffer()) != TWO_DIGIT_LEN 
	lcall	_get_input_buffer
	lcall	_strlen
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x02,00101$
	cjne	r7,#0x00,00101$
;	src/main.c:121: || !is_number(*get_input_buffer())
	lcall	_get_input_buffer
	lcall	__gptrget
	mov	dpl,a
	lcall	_is_number
	mov	a,dpl
	jz	00101$
;	src/main.c:122: || !is_number(*(get_input_buffer()+1)))
	lcall	_get_input_buffer
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	inc	r5
	cjne	r5,#0x00,00229$
	inc	r6
00229$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	lcall	_is_number
	mov	a,dpl
	jnz	00102$
00101$:
;	src/main.c:124: printf("\r\n Did not enter valid two digit number, please try again");
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
;	src/main.c:125: continue;
	sjmp	00110$
00102$:
;	src/main.c:127: student_number = atoi(get_input_buffer());
	lcall	_get_input_buffer
	lcall	_atoi
	mov	_initialize_buffers_sloc2_1_0,dpl
;	src/main.c:128: if (!(student_number < 0 || student_number > MAX_STUDENT_NUMBER))
	mov	a,dph
	mov	(_initialize_buffers_sloc2_1_0 + 1),a
	jb	acc.7,00106$
	clr	c
	mov	a,#0x63
	subb	a,_initialize_buffers_sloc2_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_initialize_buffers_sloc2_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	src/main.c:130: break;
00106$:
;	src/main.c:134: printf("\r\nAtoi error: number invalid or out of range, please try again");
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
	ljmp	00110$
00111$:
;	src/main.c:138: size_t max_user_input = USER_BUFFER_MAX;
	mov	dptr,#_initialize_buffers_max_user_input_65538_98
	clr	a
	movx	@dptr,a
	mov	a,#0x04
	inc	dptr
	movx	@dptr,a
;	src/main.c:142: memset(static_buffers, 0, BUFFER_ALWAYS_HELD_COUNT * sizeof(buffer_t));
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x16
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_static_buffers
	mov	b,#0x00
	lcall	_memset
;	src/main.c:143: while(true)
	mov	dptr,#__mulint_PARM_2
	mov	a,#0x02
	add	a,_initialize_buffers_sloc2_1_0
	movx	@dptr,a
	clr	a
	addc	a,(_initialize_buffers_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
00128$:
;	src/main.c:145: user_buffer_size = get_user_buffer_sz(max_user_input);
	mov	dptr,#_initialize_buffers_max_user_input_65538_98
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	_get_user_buffer_sz
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
;	src/main.c:146: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
	mov	r0,#0x00
	mov	r1,#0x00
00139$:
	clr	c
	mov	a,r0
	subb	a,#0x02
	mov	a,r1
	xrl	a,#0x80
	subb	a,#0x80
	jc	00233$
	ljmp	00158$
00233$:
;	src/main.c:149: static_buffers[i].buffer = malloc(user_buffer_size);
	push	ar4
	push	ar5
	mov	dptr,#__mulint_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000b
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mulint
	mov	_initialize_buffers_sloc0_1_0,dpl
	mov	(_initialize_buffers_sloc0_1_0 + 1),dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,_initialize_buffers_sloc0_1_0
	add	a,#_static_buffers
	mov	_initialize_buffers_sloc1_1_0,a
	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
	addc	a,#(_static_buffers >> 8)
	mov	(_initialize_buffers_sloc1_1_0 + 1),a
	mov	dpl,r2
	mov	dph,r3
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
	mov	dpl,_initialize_buffers_sloc1_1_0
	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:150: if(static_buffers[i].buffer == NULL)
	mov	a,r4
	orl	a,r5
	pop	ar5
	pop	ar4
	jnz	00113$
;	src/main.c:152: free_all_buffers();
	push	ar4
	push	ar5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free_all_buffers
;	src/main.c:153: printf(BUFFER_SZ_TOO_BIG);
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	src/main.c:154: max_user_input = user_buffer_size-1;
	mov	a,r2
	add	a,#0xff
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_initialize_buffers_max_user_input_65538_98
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:155: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
	pop	ar5
	pop	ar4
	ljmp	00128$
00113$:
;	src/main.c:157: static_buffers[i].size = (size_t) user_buffer_size;
	push	ar4
	push	ar5
	mov	a,_initialize_buffers_sloc0_1_0
	add	a,#_static_buffers
	mov	r4,a
	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
	addc	a,#(_static_buffers >> 8)
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
;	src/main.c:158: initialize_default_elements(&static_buffers[i]);
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_initialize_default_elements
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	src/main.c:146: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
	inc	r0
	cjne	r0,#0x00,00235$
	inc	r1
00235$:
	pop	ar5
	pop	ar4
	ljmp	00139$
;	src/main.c:163: for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
00158$:
	mov	r6,#0x00
	mov	r7,#0x00
00142$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00236$
	ljmp	00119$
00236$:
;	src/main.c:165: buffer_t *new_buffer = alloc_new_buffer(user_buffer_size);
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_alloc_new_buffer
	mov	_initialize_buffers_sloc3_1_0,dpl
	mov	(_initialize_buffers_sloc3_1_0 + 1),dph
	mov	(_initialize_buffers_sloc3_1_0 + 2),b
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:166: if (new_buffer == NULL)
	mov	a,_initialize_buffers_sloc3_1_0
	orl	a,(_initialize_buffers_sloc3_1_0 + 1)
	jnz	00117$
;	src/main.c:168: free_all_buffers();
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free_all_buffers
;	src/main.c:169: printf(BUFFER_SZ_TOO_BIG);
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	src/main.c:170: max_user_input = user_buffer_size-1;
	mov	a,r2
	add	a,#0xff
	mov	r0,a
	mov	a,r3
	addc	a,#0xff
	mov	r1,a
	mov	dptr,#_initialize_buffers_max_user_input_65538_98
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	src/main.c:171: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
	ljmp	00128$
00117$:
;	src/main.c:175: append_to_buffer_list(&dynamic_buffers_list, new_buffer);
	mov	dptr,#_append_to_buffer_list_PARM_2
	mov	a,_initialize_buffers_sloc3_1_0
	movx	@dptr,a
	mov	a,(_initialize_buffers_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_initialize_buffers_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_dynamic_buffers_list
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_append_to_buffer_list
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:163: for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
	inc	r6
	cjne	r6,#0x00,00238$
	inc	r7
00238$:
	ljmp	00142$
00119$:
;	src/main.c:179: remove_from_buffer_list(&dynamic_buffers_list, 2); 
	mov	dptr,#_remove_from_buffer_list_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_dynamic_buffers_list
	mov	b,#0x00
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_remove_from_buffer_list
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	src/main.c:181: buffer_t *buffer_4 = alloc_new_buffer((size_t) (10 * (student_number + 2)));
	mov	ar6,r4
	mov	ar7,r5
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_alloc_new_buffer
	mov	r1,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	src/main.c:183: if (buffer_4 == NULL)
	mov	a,r1
	orl	a,r6
	jnz	00121$
;	src/main.c:185: free_all_buffers();
	push	ar4
	push	ar5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free_all_buffers
;	src/main.c:186: printf(BUFFER_SZ_TOO_BIG);
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	src/main.c:187: max_user_input = user_buffer_size-1;
	mov	a,r2
	add	a,#0xff
	mov	r0,a
	mov	a,r3
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_initialize_buffers_max_user_input_65538_98
	mov	a,r0
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:188: continue;
	pop	ar5
	pop	ar4
	ljmp	00128$
00121$:
;	src/main.c:192: append_to_buffer_list(&dynamic_buffers_list, buffer_4);
	mov	dptr,#_append_to_buffer_list_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_dynamic_buffers_list
	mov	b,#0x00
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_append_to_buffer_list
	pop	ar2
	pop	ar3
;	src/main.c:195: buffer_t *buffer_5 = alloc_new_buffer((size_t) 2 * user_buffer_size);
	mov	a,r2
	add	a,r2
	mov	r6,a
	mov	a,r3
	rlc	a
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar3
	push	ar2
	lcall	_alloc_new_buffer
	mov	r1,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	src/main.c:196: if (buffer_5 == NULL)
	mov	a,r1
	orl	a,r6
	jnz	00124$
;	src/main.c:198: free_all_buffers();
	push	ar4
	push	ar5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free_all_buffers
;	src/main.c:199: printf(BUFFER_SZ_TOO_BIG);
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	src/main.c:200: max_user_input = user_buffer_size-1;
	mov	a,r2
	add	a,#0xff
	mov	r0,a
	mov	a,r3
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_initialize_buffers_max_user_input_65538_98
	mov	a,r0
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:201: continue;
	pop	ar5
	pop	ar4
	ljmp	00128$
00124$:
;	src/main.c:205: append_to_buffer_list(&dynamic_buffers_list, buffer_5); 
	mov	dptr,#_append_to_buffer_list_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_dynamic_buffers_list
	mov	b,#0x00
	push	ar3
	push	ar2
	lcall	_append_to_buffer_list
;	src/main.c:211: printf("\r\nstudent_number: %d", student_number);
	push	_initialize_buffers_sloc2_1_0
	push	(_initialize_buffers_sloc2_1_0 + 1)
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
;	src/main.c:212: printf("\r\nuser_buffer_size: %zu", user_buffer_size);
	push	ar2
	push	ar3
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/main.c:214: size_t total_heap_sz = 0;
	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:216: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00144$:
;	src/main.c:218: if(static_buffers[i].buffer != NULL) {
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000b
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_static_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	00241$
	ljmp	00145$
00241$:
;	src/main.c:219: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, static_buffers[i].buffer, static_buffers[i].buffer + static_buffers[i].size, static_buffers[i].size);
	mov	a,r4
	add	a,#_static_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
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
	mov	_initialize_buffers_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_initialize_buffers_sloc2_1_0 + 1),a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	_initialize_buffers_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_initialize_buffers_sloc3_1_0 + 1),a
	mov	a,_initialize_buffers_sloc2_1_0
	add	a,_initialize_buffers_sloc3_1_0
	mov	r4,a
	mov	a,(_initialize_buffers_sloc2_1_0 + 1)
	addc	a,(_initialize_buffers_sloc3_1_0 + 1)
	mov	r5,a
	mov	_initialize_buffers_sloc4_1_0,r4
	mov	(_initialize_buffers_sloc4_1_0 + 1),r5
	mov	(_initialize_buffers_sloc4_1_0 + 2),#0x00
	mov	r0,_initialize_buffers_sloc3_1_0
	mov	r5,(_initialize_buffers_sloc3_1_0 + 1)
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	_initialize_buffers_sloc2_1_0
	push	(_initialize_buffers_sloc2_1_0 + 1)
	push	_initialize_buffers_sloc4_1_0
	push	(_initialize_buffers_sloc4_1_0 + 1)
	push	(_initialize_buffers_sloc4_1_0 + 2)
	push	ar0
	push	ar5
	push	ar4
	push	ar6
	push	ar7
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
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
;	src/main.c:220: total_heap_sz += static_buffers[i].size; 
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
	mov	a,r2
	add	a,r4
	movx	@dptr,a
	mov	a,r3
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00145$:
;	src/main.c:216: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
	inc	r6
	cjne	r6,#0x00,00242$
	inc	r7
00242$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00243$
	ljmp	00144$
00243$:
;	src/main.c:224: buffer_t *curr = dynamic_buffers_list.head;
	mov	dptr,#_dynamic_buffers_list
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_initialize_buffers_curr_65540_118
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:226: while(curr != NULL) {
	mov	_initialize_buffers_sloc4_1_0,r6
	mov	(_initialize_buffers_sloc4_1_0 + 1),r7
00135$:
	mov	dptr,#_initialize_buffers_curr_65540_118
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	orl	a,r4
	jnz	00244$
	ljmp	00137$
00244$:
;	src/main.c:227: if(curr->buffer != NULL) {
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	orl	a,r1
	jnz	00245$
	ljmp	00134$
00245$:
;	src/main.c:228: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, curr->buffer, curr->buffer + curr->size, curr->size);
	mov	a,#0x04
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	_initialize_buffers_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_initialize_buffers_sloc3_1_0 + 1),a
	mov	a,_initialize_buffers_sloc3_1_0
	add	a,r1
	mov	r6,a
	mov	a,(_initialize_buffers_sloc3_1_0 + 1)
	addc	a,r2
	mov	r7,a
	mov	_initialize_buffers_sloc5_1_0,r6
	mov	(_initialize_buffers_sloc5_1_0 + 1),r7
	mov	(_initialize_buffers_sloc5_1_0 + 2),#0x00
	mov	r7,#0x00
	push	ar5
	push	ar4
	push	ar3
	push	_initialize_buffers_sloc3_1_0
	push	(_initialize_buffers_sloc3_1_0 + 1)
	push	_initialize_buffers_sloc5_1_0
	push	(_initialize_buffers_sloc5_1_0 + 1)
	push	(_initialize_buffers_sloc5_1_0 + 2)
	push	ar1
	push	ar2
	push	ar7
	push	_initialize_buffers_sloc4_1_0
	push	(_initialize_buffers_sloc4_1_0 + 1)
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf3
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
;	src/main.c:229: total_heap_sz += curr->size; 
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
	mov	a,r3
	add	a,r6
	movx	@dptr,a
	mov	a,r4
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00134$:
;	src/main.c:231: i++; 
	inc	_initialize_buffers_sloc4_1_0
	clr	a
	cjne	a,_initialize_buffers_sloc4_1_0,00246$
	inc	(_initialize_buffers_sloc4_1_0 + 1)
00246$:
;	src/main.c:232: curr = curr->next;
	mov	dptr,#_initialize_buffers_curr_65540_118
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_initialize_buffers_curr_65540_118
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00135$
00137$:
;	src/main.c:234: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#(___sdcc_heap + 0x2000)
	push	acc
	mov	a,#((___sdcc_heap + 0x2000) >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#___sdcc_heap
	push	acc
	mov	a,#(___sdcc_heap >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	src/main.c:235: reset_char_count();
;	src/main.c:236: }
	ljmp	_reset_char_count
;------------------------------------------------------------
;Allocation info for local variables in function 'store_in_buffer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_store_in_buffer_sloc0_1_0'
;sloc1                     Allocated with name '_store_in_buffer_sloc1_1_0'
;c                         Allocated with name '_store_in_buffer_PARM_2'
;buffer                    Allocated with name '_store_in_buffer_buffer_65536_121'
;------------------------------------------------------------
;	src/main.c:240: void store_in_buffer(buffer_t *buffer, char c)
;	-----------------------------------------
;	 function store_in_buffer
;	-----------------------------------------
_store_in_buffer:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_store_in_buffer_buffer_65536_121
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:242: if (buffer->curr_available_char < buffer->size)
	mov	dptr,#_store_in_buffer_buffer_65536_121
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
;	src/main.c:244: buffer->buffer[buffer->curr_available_char] = c;
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
;	src/main.c:245: buffer->curr_available_char++;
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
;	src/main.c:246: if (is_alphabet_char(c))
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
;	src/main.c:248: buffer->alphabet_chars++;
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
;	src/main.c:251: }
	ljmp	__gptrput
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_dashed_line'
;------------------------------------------------------------
;	src/main.c:253: static void print_dashed_line()
;	-----------------------------------------
;	 function print_dashed_line
;	-----------------------------------------
_print_dashed_line:
;	src/main.c:255: printf("\r\n------------------------------------------------");
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
;	src/main.c:256: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'command_header'
;------------------------------------------------------------
;command_string            Allocated with name '_command_header_command_string_65536_126'
;------------------------------------------------------------
;	src/main.c:260: void command_header(char *command_string)
;	-----------------------------------------
;	 function command_header
;	-----------------------------------------
_command_header:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_command_header_command_string_65536_126
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:262: print_dashed_line();
	lcall	_print_dashed_line
;	src/main.c:263: printf("\r\n%s", command_string);
	mov	dptr,#_command_header_command_string_65536_126
	movx	a,@dptr
	push	acc
	inc	dptr
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
	add	a,#0xfa
	mov	sp,a
;	src/main.c:264: print_dashed_line();
;	src/main.c:265: }
	ljmp	_print_dashed_line
;------------------------------------------------------------
;Allocation info for local variables in function 'heap_report'
;------------------------------------------------------------
;sloc0                     Allocated with name '_heap_report_sloc0_1_0'
;sloc1                     Allocated with name '_heap_report_sloc1_1_0'
;sloc2                     Allocated with name '_heap_report_sloc2_1_0'
;sloc3                     Allocated with name '_heap_report_sloc3_1_0'
;sloc4                     Allocated with name '_heap_report_sloc4_1_0'
;sloc5                     Allocated with name '_heap_report_sloc5_1_0'
;total_heap_sz             Allocated with name '_heap_report_total_heap_sz_65537_129'
;i                         Allocated with name '_heap_report_i_65537_129'
;curr                      Allocated with name '_heap_report_curr_65538_133'
;------------------------------------------------------------
;	src/main.c:271: void heap_report()
;	-----------------------------------------
;	 function heap_report
;	-----------------------------------------
_heap_report:
;	src/main.c:273: command_header("Heap Report");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_command_header
;	src/main.c:274: size_t total_heap_sz = 0;
	mov	dptr,#_heap_report_total_heap_sz_65537_129
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:276: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00109$:
;	src/main.c:278: if(static_buffers[i].buffer != NULL) {
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000b
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_static_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	00139$
	ljmp	00110$
00139$:
;	src/main.c:285: static_buffers[i].size - static_buffers[i].curr_available_char);
	mov	a,r4
	add	a,#_static_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
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
;	src/main.c:284: static_buffers[i].alphabet_chars,
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	_heap_report_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_heap_report_sloc2_1_0 + 1),a
;	src/main.c:282: static_buffers[i].buffer + static_buffers[i].size, 
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
;	src/main.c:281: static_buffers[i].buffer, 
	mov	r4,_heap_report_sloc3_1_0
	mov	r5,(_heap_report_sloc3_1_0 + 1)
	mov	r3,#0x00
;	src/main.c:279: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
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
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xef
	mov	sp,a
	pop	ar6
	pop	ar7
;	src/main.c:286: total_heap_sz += static_buffers[i].size; 
	mov	dpl,_heap_report_sloc0_1_0
	mov	dph,(_heap_report_sloc0_1_0 + 1)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_heap_report_total_heap_sz_65537_129
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_heap_report_total_heap_sz_65537_129
	mov	a,r4
	add	a,r2
	movx	@dptr,a
	mov	a,r5
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00110$:
;	src/main.c:276: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r7
00140$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00141$
	ljmp	00109$
00141$:
;	src/main.c:290: buffer_t *curr = dynamic_buffers_list.head;
	mov	dptr,#_dynamic_buffers_list
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_heap_report_curr_65538_133
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:291: while(curr != NULL) {
	mov	_heap_report_sloc4_1_0,r6
	mov	(_heap_report_sloc4_1_0 + 1),r7
00106$:
	mov	dptr,#_heap_report_curr_65538_133
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	orl	a,r4
	jnz	00142$
	ljmp	00108$
00142$:
;	src/main.c:292: if(curr->buffer != NULL) {
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	orl	a,r1
	jnz	00143$
	ljmp	00105$
00143$:
;	src/main.c:299: curr->size - curr->alphabet_chars);
	mov	a,#0x04
	add	a,r3
	mov	_heap_report_sloc5_1_0,a
	clr	a
	addc	a,r4
	mov	(_heap_report_sloc5_1_0 + 1),a
	mov	(_heap_report_sloc5_1_0 + 2),r5
	mov	dpl,_heap_report_sloc5_1_0
	mov	dph,(_heap_report_sloc5_1_0 + 1)
	mov	b,(_heap_report_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	_heap_report_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_heap_report_sloc2_1_0 + 1),a
	mov	a,r6
	clr	c
	subb	a,_heap_report_sloc2_1_0
	mov	_heap_report_sloc3_1_0,a
	mov	a,r7
	subb	a,(_heap_report_sloc2_1_0 + 1)
	mov	(_heap_report_sloc3_1_0 + 1),a
;	src/main.c:296: curr->buffer + curr->size, 
	mov	a,r6
	add	a,r1
	mov	r0,a
	mov	a,r7
	addc	a,r2
	mov	r4,a
	mov	r5,#0x00
;	src/main.c:295: curr->buffer, 
	mov	r3,#0x00
;	src/main.c:293: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
	push	_heap_report_sloc3_1_0
	push	(_heap_report_sloc3_1_0 + 1)
	push	_heap_report_sloc2_1_0
	push	(_heap_report_sloc2_1_0 + 1)
	push	ar6
	push	ar7
	push	ar0
	push	ar4
	push	ar5
	push	ar1
	push	ar2
	push	ar3
	push	_heap_report_sloc4_1_0
	push	(_heap_report_sloc4_1_0 + 1)
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xef
	mov	sp,a
;	src/main.c:300: total_heap_sz += curr->size; 
	mov	dpl,_heap_report_sloc5_1_0
	mov	dph,(_heap_report_sloc5_1_0 + 1)
	mov	b,(_heap_report_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_heap_report_total_heap_sz_65537_129
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_heap_report_total_heap_sz_65537_129
	mov	a,r6
	add	a,r4
	movx	@dptr,a
	mov	a,r7
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00105$:
;	src/main.c:302: i++;
	inc	_heap_report_sloc4_1_0
	clr	a
	cjne	a,_heap_report_sloc4_1_0,00144$
	inc	(_heap_report_sloc4_1_0 + 1)
00144$:
;	src/main.c:303: curr = curr->next;
	mov	dptr,#_heap_report_curr_65538_133
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_heap_report_curr_65538_133
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00106$
00108$:
;	src/main.c:305: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
	mov	dptr,#_heap_report_total_heap_sz_65537_129
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#(___sdcc_heap + 0x2000)
	push	acc
	mov	a,#((___sdcc_heap + 0x2000) >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#___sdcc_heap
	push	acc
	mov	a,#(___sdcc_heap >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	src/main.c:306: printf("\r\n");
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
;	src/main.c:307: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_user_buffer_sz'
;------------------------------------------------------------
;maximum_sz                Allocated with name '_get_user_buffer_sz_maximum_sz_65536_136'
;user_buffer_size          Allocated with name '_get_user_buffer_sz_user_buffer_size_65536_137'
;------------------------------------------------------------
;	src/main.c:313: size_t get_user_buffer_sz(size_t maximum_sz)
;	-----------------------------------------
;	 function get_user_buffer_sz
;	-----------------------------------------
_get_user_buffer_sz:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_136
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:316: while(true) {
	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_136
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00111$:
;	src/main.c:317: printf("\r\nPlease enter a valid buffer size that is divisible by 32 [64,%zu]: ", maximum_sz);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
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
;	src/main.c:318: get_string();
	lcall	_get_string
;	src/main.c:319: user_buffer_size = (size_t) atoi(get_input_buffer()); //TODO: replace with own implementation of atoi that respects the size_t
	lcall	_get_input_buffer
	lcall	_atoi
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	src/main.c:320: if (user_buffer_size > maximum_sz)
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00108$
;	src/main.c:322: printf("\r\n User buffer size larger than maximum");
	push	ar7
	push	ar6
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
	pop	ar6
	pop	ar7
	sjmp	00111$
00108$:
;	src/main.c:324: else if (user_buffer_size < USER_BUFFER_MIN)
	clr	c
	mov	a,r4
	subb	a,#0x40
	mov	a,r5
	subb	a,#0x00
	jnc	00105$
;	src/main.c:326: printf("\r\n User buffer size too small or error in conversion");
	push	ar7
	push	ar6
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
	pop	ar6
	pop	ar7
	ljmp	00111$
00105$:
;	src/main.c:328: else if (MODULE_32(user_buffer_size) != 0)
	mov	a,r4
	anl	a,#0x1f
	jz	00102$
;	src/main.c:330: printf("\r\n User buffer size is not divisible by 32");
	push	ar7
	push	ar6
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
	ljmp	00111$
00102$:
;	src/main.c:334: return user_buffer_size;
	mov	dpl,r4
	mov	dph,r5
;	src/main.c:337: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'free_all_buffers'
;------------------------------------------------------------
;i                         Allocated with name '_free_all_buffers_i_131072_144'
;------------------------------------------------------------
;	src/main.c:342: void free_all_buffers()
;	-----------------------------------------
;	 function free_all_buffers
;	-----------------------------------------
_free_all_buffers:
;	src/main.c:344: printf("\r\n Freeing ALL BUFFERS");
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
;	src/main.c:345: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00122$
	ljmp	00103$
00122$:
;	src/main.c:347: if(static_buffers[i].buffer != NULL)
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000b
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_static_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jz	00102$
;	src/main.c:349: free(static_buffers[i].buffer);
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
;	src/main.c:351: static_buffers[i].buffer = NULL;
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000b
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_static_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:352: static_buffers[i].size = 0; 
	mov	a,r4
	add	a,#_static_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
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
;	src/main.c:345: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
	inc	r6
	cjne	r6,#0x00,00124$
	inc	r7
00124$:
	ljmp	00105$
00103$:
;	src/main.c:354: free_all_elems_from_list(&dynamic_buffers_list); 
	mov	dptr,#_dynamic_buffers_list
	mov	b,#0x00
;	src/main.c:355: }
	ljmp	_free_all_elems_from_list
;------------------------------------------------------------
;Allocation info for local variables in function 'qmark_command_handler'
;------------------------------------------------------------
;sloc0                     Allocated with name '_qmark_command_handler_sloc0_1_0'
;sloc1                     Allocated with name '_qmark_command_handler_sloc1_1_0'
;chars_received_since_last_qmark Allocated with name '_qmark_command_handler_chars_received_since_last_qmark_65537_148'
;curr_output_char          Allocated with name '_qmark_command_handler_curr_output_char_65538_149'
;i                         Allocated with name '_qmark_command_handler_i_131074_150'
;curr_buffer_char          Allocated with name '_qmark_command_handler_curr_buffer_char_196610_151'
;curr_char                 Allocated with name '_qmark_command_handler_curr_char_196610_151'
;------------------------------------------------------------
;	src/main.c:362: void qmark_command_handler()
;	-----------------------------------------
;	 function qmark_command_handler
;	-----------------------------------------
_qmark_command_handler:
;	src/main.c:364: heap_report();
	lcall	_heap_report
;	src/main.c:365: size_t chars_received_since_last_qmark = get_char_count();
	lcall	_get_char_count
	mov	r6,dpl
	mov	r7,dph
;	src/main.c:366: reset_char_count();
	push	ar7
	push	ar6
	lcall	_reset_char_count
	pop	ar6
	pop	ar7
;	src/main.c:367: printf("\r\n Received %zu chars since last invocation of ?", chars_received_since_last_qmark);
	push	ar6
	push	ar7
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
;	src/main.c:368: size_t curr_output_char = 0;
	mov	dptr,#_qmark_command_handler_curr_output_char_65538_149
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:370: for(int i = 0; i < 2; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00109$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00139$
	ljmp	00107$
00139$:
;	src/main.c:373: char curr_char = static_buffers[i].buffer[0];
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000b
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_static_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dptr,#_qmark_command_handler_curr_char_196610_151
	movx	@dptr,a
;	src/main.c:374: while(curr_char != '\0' && curr_buffer_char < static_buffers[i].size)
	mov	a,r4
	add	a,#_static_buffers
	mov	r2,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
	mov	r3,a
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r4
	add	a,#_static_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
	mov	r5,a
	mov	dptr,#_qmark_command_handler_curr_output_char_65538_149
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	a
	mov	_qmark_command_handler_sloc0_1_0,a
	mov	(_qmark_command_handler_sloc0_1_0 + 1),a
00104$:
	mov	dptr,#_qmark_command_handler_curr_char_196610_151
	movx	a,@dptr
	jnz	00140$
	ljmp	00119$
00140$:
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,_qmark_command_handler_sloc0_1_0
	subb	a,r4
	mov	a,(_qmark_command_handler_sloc0_1_0 + 1)
	subb	a,r5
	pop	ar5
	pop	ar4
	jc	00141$
	ljmp	00119$
00141$:
;	src/main.c:376: if (MODULE_32(curr_output_char) == 0)
	mov	a,r0
	anl	a,#0x1f
	jnz	00102$
;	src/main.c:378: printf("\r\n");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
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
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	src/main.c:380: printf("%c", curr_char);
	push	ar2
	push	ar3
	mov	dptr,#_qmark_command_handler_curr_char_196610_151
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar3
	push	ar2
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
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
;	src/main.c:381: curr_output_char++;
	inc	r0
	cjne	r0,#0x00,00144$
	inc	r1
00144$:
;	src/main.c:382: curr_buffer_char++;
	inc	_qmark_command_handler_sloc0_1_0
	clr	a
	cjne	a,_qmark_command_handler_sloc0_1_0,00145$
	inc	(_qmark_command_handler_sloc0_1_0 + 1)
00145$:
;	src/main.c:383: curr_char = static_buffers[i].buffer[curr_buffer_char];
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,_qmark_command_handler_sloc0_1_0
	add	a,r2
	mov	dpl,a
	mov	a,(_qmark_command_handler_sloc0_1_0 + 1)
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_qmark_command_handler_curr_char_196610_151
	movx	@dptr,a
	pop	ar3
	pop	ar2
	ljmp	00104$
00119$:
	mov	dptr,#_qmark_command_handler_curr_output_char_65538_149
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	src/main.c:386: memset(static_buffers[i].buffer, '\0', static_buffers[i].size);
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000b
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,#_static_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	_qmark_command_handler_sloc1_1_0,r2
	mov	(_qmark_command_handler_sloc1_1_0 + 1),r3
	mov	(_qmark_command_handler_sloc1_1_0 + 2),#0x00
	mov	a,r4
	add	a,#_static_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
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
	mov	dpl,_qmark_command_handler_sloc1_1_0
	mov	dph,(_qmark_command_handler_sloc1_1_0 + 1)
	mov	b,(_qmark_command_handler_sloc1_1_0 + 2)
	push	ar5
	push	ar4
	lcall	_memset
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:387: static_buffers[i].alphabet_chars = 0;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:388: static_buffers[i].curr_available_char = 0;
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
;	src/main.c:370: for(int i = 0; i < 2; i++)
	inc	r6
	cjne	r6,#0x00,00146$
	inc	r7
00146$:
	ljmp	00109$
00107$:
;	src/main.c:391: printf("\r\n");
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
;	src/main.c:392: printf("\r\n");
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
;	src/main.c:393: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enter_command_handler'
;------------------------------------------------------------
;sloc0                     Allocated with name '_enter_command_handler_sloc0_1_0'
;sloc1                     Allocated with name '_enter_command_handler_sloc1_1_0'
;sloc2                     Allocated with name '_enter_command_handler_sloc2_1_0'
;sloc3                     Allocated with name '_enter_command_handler_sloc3_1_0'
;i                         Allocated with name '_enter_command_handler_i_131072_155'
;address                   Allocated with name '_enter_command_handler_address_262144_157'
;j                         Allocated with name '_enter_command_handler_j_393216_159'
;------------------------------------------------------------
;	src/main.c:398: void enter_command_handler()
;	-----------------------------------------
;	 function enter_command_handler
;	-----------------------------------------
_enter_command_handler:
;	src/main.c:400: command_header("Dump Admin Buffers");
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_command_header
;	src/main.c:401: for(int i = 0; i < 2; i++)
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
;	src/main.c:403: printf("\r\n Buffer %d ", i);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/main.c:404: printf("\r\n----------");
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
	pop	ar6
	pop	ar7
;	src/main.c:405: for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000b
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_static_buffers
	mov	r2,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
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
	add	a,#_static_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
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
;	src/main.c:407: printf("\r\n%04X:", (unsigned int) address);
	mov	r3,_enter_command_handler_sloc0_1_0
	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
	push	ar1
	push	ar0
	push	ar3
	push	ar4
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
;	src/main.c:408: for(int j = 0; j < 16; j++)
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
;	src/main.c:410: printf(" %02hhX", (unsigned char) *(address+j));
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
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
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
;	src/main.c:408: for(int j = 0; j < 16; j++)
	inc	_enter_command_handler_sloc2_1_0
	clr	a
	cjne	a,_enter_command_handler_sloc2_1_0,00145$
	inc	(_enter_command_handler_sloc2_1_0 + 1)
00145$:
	pop	ar1
	pop	ar0
	sjmp	00105$
00109$:
;	src/main.c:405: for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
	mov	a,#0x10
	add	a,_enter_command_handler_sloc0_1_0
	mov	_enter_command_handler_sloc0_1_0,a
	clr	a
	addc	a,(_enter_command_handler_sloc0_1_0 + 1)
	mov	(_enter_command_handler_sloc0_1_0 + 1),a
	ljmp	00108$
00102$:
;	src/main.c:413: printf("\r\n");
	push	ar1
	push	ar0
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
	pop	ar0
	pop	ar1
;	src/main.c:401: for(int i = 0; i < 2; i++)
	mov	a,#0x01
	add	a,r0
	mov	r6,a
	clr	a
	addc	a,r1
	mov	r7,a
;	src/main.c:415: }
	ljmp	00111$
;------------------------------------------------------------
;Allocation info for local variables in function 'percent_command_handler'
;------------------------------------------------------------
;sloc0                     Allocated with name '_percent_command_handler_sloc0_1_0'
;i                         Allocated with name '_percent_command_handler_i_131072_162'
;curr                      Allocated with name '_percent_command_handler_curr_65537_165'
;------------------------------------------------------------
;	src/main.c:420: void percent_command_handler()
;	-----------------------------------------
;	 function percent_command_handler
;	-----------------------------------------
_percent_command_handler:
;	src/main.c:422: command_header("Clear Buffers");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_command_header
;	src/main.c:423: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00108$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00133$
	ljmp	00103$
00133$:
;	src/main.c:425: if (static_buffers[i].buffer != NULL) 
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000b
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_static_buffers
	mov	dpl,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jz	00109$
;	src/main.c:427: memset(static_buffers[i].buffer, 0x00, static_buffers[i].size);
	push	ar6
	push	ar7
	mov	ar1,r3
	mov	r3,#0x00
	mov	a,r4
	add	a,#_static_buffers
	mov	r4,a
	mov	a,r5
	addc	a,#(_static_buffers >> 8)
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
	mov	r7,a
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r1
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_memset
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:428: static_buffers[i].curr_available_char = 0;
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
;	src/main.c:429: static_buffers[i].alphabet_chars = 0; 
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:439: curr = curr->next;
	pop	ar7
	pop	ar6
;	src/main.c:429: static_buffers[i].alphabet_chars = 0; 
00109$:
;	src/main.c:423: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
	inc	r6
	cjne	r6,#0x00,00135$
	inc	r7
00135$:
	ljmp	00108$
00103$:
;	src/main.c:433: buffer_t *curr = dynamic_buffers_list.head;
	mov	dptr,#_dynamic_buffers_list
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_percent_command_handler_curr_65537_165
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:434: while (curr != NULL)
00104$:
	mov	dptr,#_percent_command_handler_curr_65537_165
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00136$
	ret
00136$:
;	src/main.c:436: memset(curr->buffer, 0x00, curr->size);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	_percent_command_handler_sloc0_1_0,r3
	mov	(_percent_command_handler_sloc0_1_0 + 1),r4
	mov	(_percent_command_handler_sloc0_1_0 + 2),#0x00
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
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl,_percent_command_handler_sloc0_1_0
	mov	dph,(_percent_command_handler_sloc0_1_0 + 1)
	mov	b,(_percent_command_handler_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_memset
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:437: curr->curr_available_char = 0;
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	src/main.c:438: curr->alphabet_chars = 0; 
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	src/main.c:439: curr = curr->next;
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_percent_command_handler_curr_65537_165
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:441: }
	ljmp	00104$
;------------------------------------------------------------
;Allocation info for local variables in function 'dollar_sign_command_handler'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dollar_sign_command_handler_sloc0_1_0'
;buffer_3                  Allocated with name '_dollar_sign_command_handler_buffer_3_65537_169'
;size                      Allocated with name '_dollar_sign_command_handler_size_65537_169'
;------------------------------------------------------------
;	src/main.c:446: void dollar_sign_command_handler()
;	-----------------------------------------
;	 function dollar_sign_command_handler
;	-----------------------------------------
_dollar_sign_command_handler:
;	src/main.c:448: command_header("Copy buffer_0 into buffer_3");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_command_header
;	src/main.c:449: P1_0 = ON;
;	assignBit
	setb	_P1_0
;	src/main.c:450: if (dynamic_buffers_list.head == NULL
	mov	dptr,#_dynamic_buffers_list
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r5
	jz	00101$
;	src/main.c:451: || dynamic_buffers_list.head->next == NULL) 
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r6
	orl	a,r5
	jnz	00102$
00101$:
;	src/main.c:453: P1_0 = OFF;
;	assignBit
	clr	_P1_0
;	src/main.c:454: printf("\r\n buffer_3 not allocated; exiting");
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:455: return; 
	ret
00102$:
;	src/main.c:457: buffer_t* buffer_3 = dynamic_buffers_list.head->next;
	mov	ar2,r6
	mov	ar3,r5
	mov	ar4,r7
;	src/main.c:458: size_t size = (buffer_3->size > static_buffers[0].size) ? static_buffers[0].size : buffer_3->size; 
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#(_static_buffers + 0x0004)
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00106$
	mov	_dollar_sign_command_handler_sloc0_1_0,r1
	mov	(_dollar_sign_command_handler_sloc0_1_0 + 1),r5
	sjmp	00107$
00106$:
	mov	_dollar_sign_command_handler_sloc0_1_0,r6
	mov	(_dollar_sign_command_handler_sloc0_1_0 + 1),r7
00107$:
;	src/main.c:459: memcpy(buffer_3->buffer, static_buffers[0].buffer, size);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	mov	r7,#0x00
	mov	dptr,#_static_buffers
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,_dollar_sign_command_handler_sloc0_1_0
	movx	@dptr,a
	mov	a,(_dollar_sign_command_handler_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r0
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	___memcpy
	pop	ar2
	pop	ar3
	pop	ar4
;	src/main.c:460: buffer_3->alphabet_chars = static_buffers[0].alphabet_chars;
	mov	a,#0x02
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dptr,#(_static_buffers + 0x0002)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	src/main.c:461: buffer_3->curr_available_char = static_buffers[0].curr_available_char;
	mov	a,#0x06
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#(_static_buffers + 0x0006)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	src/main.c:462: P1_0 = OFF; 
;	assignBit
	clr	_P1_0
;	src/main.c:463: printf("\r\n Done");
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:464: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hashtag_command_handler'
;------------------------------------------------------------
;c                         Allocated with name '_hashtag_command_handler_c_196609_174'
;buffer_3                  Allocated with name '_hashtag_command_handler_buffer_3_65537_172'
;i                         Allocated with name '_hashtag_command_handler_i_131073_173'
;------------------------------------------------------------
;	src/main.c:469: void hashtag_command_handler()
;	-----------------------------------------
;	 function hashtag_command_handler
;	-----------------------------------------
_hashtag_command_handler:
;	src/main.c:471: command_header("Convert buffer_3 chars to lowercase");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_command_header
;	src/main.c:472: P1_0 = ON;
;	assignBit
	setb	_P1_0
;	src/main.c:473: if (dynamic_buffers_list.head == NULL
	mov	dptr,#_dynamic_buffers_list
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00101$
;	src/main.c:474: || dynamic_buffers_list.head->next == NULL) 
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00102$
00101$:
;	src/main.c:476: P1_0 = OFF;
;	assignBit
	clr	_P1_0
;	src/main.c:477: return; 
	ret
00102$:
;	src/main.c:480: buffer_t *buffer_3 = dynamic_buffers_list.head->next;
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	src/main.c:481: for(size_t i = 0; i < buffer_3->curr_available_char; i++)
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r0,#0x00
	mov	r1,#0x00
00109$:
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r0
	subb	a,r3
	mov	a,r1
	subb	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00107$
;	src/main.c:483: register char c = buffer_3->buffer[i];
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r0
	add	a,r6
	mov	dpl,a
	mov	a,r1
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	_hashtag_command_handler_c_196609_174,a
;	src/main.c:484: if (c <= 'Z' || c >= 'A')
	clr	c
	mov	a,#0x5a
	subb	a,_hashtag_command_handler_c_196609_174
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00104$
	mov	a,#0x100 - 0x41
	add	a,_hashtag_command_handler_c_196609_174
	jnc	00110$
00104$:
;	src/main.c:486: buffer_3->buffer[i] |= LOWER_CASE_MASK;
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r0
	add	a,r6
	mov	r6,a
	mov	a,r1
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	orl	ar5,#0x20
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
;	src/main.c:490: printf("\r\n Done");
	pop	ar7
	pop	ar6
	pop	ar5
;	src/main.c:486: buffer_3->buffer[i] |= LOWER_CASE_MASK;
00110$:
;	src/main.c:481: for(size_t i = 0; i < buffer_3->curr_available_char; i++)
	inc	r0
	cjne	r0,#0x00,00135$
	inc	r1
00135$:
	ljmp	00109$
00107$:
;	src/main.c:489: P1_0 = OFF;
;	assignBit
	clr	_P1_0
;	src/main.c:490: printf("\r\n Done");
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:491: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'plus_command_handler'
;------------------------------------------------------------
;size                      Allocated with name '_plus_command_handler_size_65537_177'
;new_buffer                Allocated with name '_plus_command_handler_new_buffer_65538_179'
;------------------------------------------------------------
;	src/main.c:496: void plus_command_handler() 
;	-----------------------------------------
;	 function plus_command_handler
;	-----------------------------------------
_plus_command_handler:
;	src/main.c:498: command_header("\r\n Alloc Buffer");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_command_header
;	src/main.c:500: while (true) {
00105$:
;	src/main.c:501: printf("\r\nPlease enter a size for the new buffer, [200,600]: ");
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:502: get_string();
	lcall	_get_string
;	src/main.c:503: size = atoi(get_input_buffer());
	lcall	_get_input_buffer
	lcall	_atoi
	mov	r6,dpl
	mov	r7,dph
;	src/main.c:504: if (size <= MAX_USER_DETERMINED_BUFFER_SZ && size >= MIN_USER_DETERMINED_BUFFER_SZ) break;
	clr	c
	mov	a,#0x58
	subb	a,r6
	mov	a,#(0x02 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	mov	a,r6
	subb	a,#0xc8
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00106$
00102$:
;	src/main.c:505: printf("\r\nBuffer size invalid!! Please try again");
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	00105$
00106$:
;	src/main.c:508: buffer_t *new_buffer = alloc_new_buffer((size_t) size);
	mov	dpl,r6
	mov	dph,r7
	lcall	_alloc_new_buffer
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/main.c:510: if (new_buffer == NULL)
	mov	a,r5
	orl	a,r6
	jnz	00108$
;	src/main.c:512: printf("\r\n Allocation failed; unable to allocate buffer");
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:513: return;
	ret
00108$:
;	src/main.c:516: append_to_buffer_list(&dynamic_buffers_list, new_buffer);
	mov	dptr,#_append_to_buffer_list_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_dynamic_buffers_list
	mov	b,#0x00
	lcall	_append_to_buffer_list
;	src/main.c:518: printf("\r\n Allocation successful!! New buffer added");
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:520: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'minus_command_handler'
;------------------------------------------------------------
;length                    Allocated with name '_minus_command_handler_length_65537_182'
;buffer_num                Allocated with name '_minus_command_handler_buffer_num_65538_184'
;freed                     Allocated with name '_minus_command_handler_freed_131074_188'
;------------------------------------------------------------
;	src/main.c:525: void minus_command_handler() 
;	-----------------------------------------
;	 function minus_command_handler
;	-----------------------------------------
_minus_command_handler:
;	src/main.c:527: command_header("Free Buffer");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_command_header
;	src/main.c:528: size_t length = ll_length(&dynamic_buffers_list);
	mov	dptr,#_dynamic_buffers_list
	mov	b,#0x00
	lcall	_ll_length
	mov	r6,dpl
	mov	r7,dph
;	src/main.c:529: if (length == 0)
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	src/main.c:531: printf("\r\n No buffers to free");
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:532: return; 
	ret
00102$:
;	src/main.c:534: printf("\r\nPlease enter the number of the buffer you would like to free[2-%zu]: ", length + MIN_DYNAMIC_BUFFER_NUM - 1);
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/main.c:535: get_string(); 
	lcall	_get_string
;	src/main.c:536: int buffer_num = atoi(get_input_buffer()); 
	lcall	_get_input_buffer
	lcall	_atoi
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	src/main.c:537: if (buffer_num < 0)
	mov	a,r5
	jnb	acc.7,00113$
;	src/main.c:539: printf("\r\n Invalid buffer number, negatives not valid");
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:540: return;
	ret
00113$:
;	src/main.c:542: else if (buffer_num <= 1) 
	clr	c
	mov	a,#0x01
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00110$
;	src/main.c:544: printf("\r\n Invalid buffer number, buffers 0 & 1 are protected");
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:545: return; 
	ret
00110$:
;	src/main.c:547: else if (buffer_num >= length)
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jc	00107$
;	src/main.c:549: printf("\r\n Invalid Buffer number; out of range");
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:550: return;
	ret
00107$:
;	src/main.c:554: bool freed = remove_from_buffer_list(&dynamic_buffers_list, (size_t)(buffer_num-2));
	mov	a,r4
	add	a,#0xfe
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_remove_from_buffer_list_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_dynamic_buffers_list
	mov	b,#0x00
	lcall	_remove_from_buffer_list
	mov	a,dpl
;	src/main.c:555: if (freed)
	jz	00104$
;	src/main.c:557: printf("\r\n Successfully removed buffer");
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ret
00104$:
;	src/main.c:561: printf("\r\n Failed to remove buffer, ll error");
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:565: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'star_command_handler'
;------------------------------------------------------------
;	src/main.c:570: void star_command_handler()
;	-----------------------------------------
;	 function star_command_handler
;	-----------------------------------------
_star_command_handler:
;	src/main.c:572: printf("\r\nResetting device");
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:573: WDTRST = WATCH_DOG_FIRST_VALUE;
	mov	_WDTRST,#0x1e
;	src/main.c:574: WDTRST = WATCH_DOG_SECOND_VALUE; //start watchdog timer
	mov	_WDTRST,#0xe1
00103$:
;	src/main.c:576: }
	sjmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'ampersand_command_handler'
;------------------------------------------------------------
;sloc0                     Allocated with name '_ampersand_command_handler_sloc0_1_0'
;sloc1                     Allocated with name '_ampersand_command_handler_sloc1_1_0'
;sloc2                     Allocated with name '_ampersand_command_handler_sloc2_1_0'
;length                    Allocated with name '_ampersand_command_handler_length_65537_194'
;selected_buffer           Allocated with name '_ampersand_command_handler_selected_buffer_65538_195'
;buffer                    Allocated with name '_ampersand_command_handler_buffer_65539_197'
;address                   Allocated with name '_ampersand_command_handler_address_131075_199'
;------------------------------------------------------------
;	src/main.c:581: void ampersand_command_handler()
;	-----------------------------------------
;	 function ampersand_command_handler
;	-----------------------------------------
_ampersand_command_handler:
;	src/main.c:583: command_header("\r\n Dump Buffer");
	mov	dptr,#___str_44
	mov	b,#0x80
	lcall	_command_header
;	src/main.c:584: size_t length = ll_length(&dynamic_buffers_list);
	mov	dptr,#_dynamic_buffers_list
	mov	b,#0x00
	lcall	_ll_length
	mov	r6,dpl
	mov	r7,dph
;	src/main.c:585: printf("\r\nEnter a valid buffer # [2-%zu]: ", length + MIN_DYNAMIC_BUFFER_NUM - 1);
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/main.c:586: get_string();
	lcall	_get_string
;	src/main.c:587: int selected_buffer = atoi(get_input_buffer());
	lcall	_get_input_buffer
	lcall	_atoi
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	src/main.c:588: if (selected_buffer < MIN_DYNAMIC_BUFFER_NUM || selected_buffer >= (MIN_DYNAMIC_BUFFER_NUM + length))
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00101$
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jc	00102$
00101$:
;	src/main.c:590: printf("\r\nInvalid buffer number; returning to prompt");
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:591: return;
	ret
00102$:
;	src/main.c:594: buffer_t *buffer = ll_get_elem(&dynamic_buffers_list, (size_t) (selected_buffer - 2));
	mov	a,r4
	add	a,#0xfe
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_ll_get_elem_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_dynamic_buffers_list
	mov	b,#0x00
	push	ar5
	push	ar4
	lcall	_ll_get_elem
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar4
	pop	ar5
;	src/main.c:596: if (buffer == NULL)
	mov	a,r3
	orl	a,r6
	jnz	00105$
;	src/main.c:598: printf("\r\nLL error; returning to prompt");
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:599: return;
	ret
00105$:
;	src/main.c:602: printf("\r\n Buffer %d", selected_buffer);
	push	ar7
	push	ar6
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/main.c:603: printf("\r\n----------");
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
	pop	ar3
	pop	ar6
	pop	ar7
;	src/main.c:604: for(char *address = buffer->buffer; address < (buffer->buffer + buffer->size); address++)
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	r5,#0x00
	mov	a,#0x04
	add	a,r3
	mov	_ampersand_command_handler_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_ampersand_command_handler_sloc0_1_0 + 1),a
	mov	(_ampersand_command_handler_sloc0_1_0 + 2),r7
00110$:
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	push	ar3
	push	ar6
	push	ar7
	mov	dpl,_ampersand_command_handler_sloc0_1_0
	mov	dph,(_ampersand_command_handler_sloc0_1_0 + 1)
	mov	b,(_ampersand_command_handler_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r6
	add	a,r0
	mov	_ampersand_command_handler_sloc1_1_0,a
	mov	a,r7
	addc	a,r1
	mov	(_ampersand_command_handler_sloc1_1_0 + 1),a
	mov	_ampersand_command_handler_sloc2_1_0,r4
	mov	(_ampersand_command_handler_sloc2_1_0 + 1),r2
	mov	(_ampersand_command_handler_sloc2_1_0 + 2),r5
	mov	r3,_ampersand_command_handler_sloc1_1_0
	mov	r6,(_ampersand_command_handler_sloc1_1_0 + 1)
	mov	r7,#0x00
	push	ar3
	push	ar6
	push	ar7
	mov	dpl,_ampersand_command_handler_sloc2_1_0
	mov	dph,(_ampersand_command_handler_sloc2_1_0 + 1)
	mov	b,(_ampersand_command_handler_sloc2_1_0 + 2)
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar3
	jc	00138$
	ljmp	00108$
00138$:
;	src/main.c:606: if (MODULE_32(address-buffer->buffer) == 0)
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,r2
	subb	a,r1
	mov	a,r0
	anl	a,#0x1f
	jnz	00107$
;	src/main.c:608: printf("\r\n%04X:", (unsigned int) address);
	push	ar3
	push	ar6
	push	ar7
	mov	ar0,r4
	mov	ar1,r2
	mov	ar7,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
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
;	src/main.c:613: printf("\r\n");
	pop	ar7
	pop	ar6
	pop	ar3
;	src/main.c:608: printf("\r\n%04X:", (unsigned int) address);
00107$:
;	src/main.c:610: printf(" %02hhX", (unsigned char) *address);
	mov	dpl,r4
	mov	dph,r2
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r4,dpl
	mov	r2,dph
	mov	ar0,r1
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
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
;	src/main.c:604: for(char *address = buffer->buffer; address < (buffer->buffer + buffer->size); address++)
	ljmp	00110$
00108$:
;	src/main.c:613: printf("\r\n");
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
;	src/main.c:616: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;c                         Allocated with name '_main_c_65537_203'
;received_char             Allocated with name '_main_received_char_196610_206'
;------------------------------------------------------------
;	src/main.c:620: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c:622: initialize_buffers();
	lcall	_initialize_buffers
;	src/main.c:623: unsigned char c = 0;
00118$:
;	src/main.c:627: printf("\r\nEnter a char: ");
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:629: char received_char = get_next_input_char();
	lcall	_get_next_input_char
;	src/main.c:630: if (is_alphabet_char(received_char))
	mov  r7,dpl
	push	ar7
	lcall	_is_alphabet_char
	mov	a,dpl
	pop	ar7
	jz	00102$
;	src/main.c:632: store_in_buffer(&static_buffers[0], received_char);
	mov	dptr,#_store_in_buffer_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_static_buffers
	mov	b,#0x00
	push	ar7
	lcall	_store_in_buffer
	pop	ar7
	sjmp	00103$
00102$:
;	src/main.c:636: store_in_buffer(&static_buffers[1], received_char);
	mov	dptr,#_store_in_buffer_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#(_static_buffers + 0x000b)
	mov	b,#0x00
	push	ar7
	lcall	_store_in_buffer
	pop	ar7
00103$:
;	src/main.c:639: switch(received_char)
	cjne	r7,#0x23,00170$
	sjmp	00109$
00170$:
	cjne	r7,#0x24,00171$
	sjmp	00108$
00171$:
	cjne	r7,#0x25,00172$
	sjmp	00106$
00172$:
	cjne	r7,#0x26,00173$
	sjmp	00113$
00173$:
	cjne	r7,#0x2a,00174$
	sjmp	00112$
00174$:
	cjne	r7,#0x2b,00175$
	sjmp	00110$
00175$:
	cjne	r7,#0x2d,00176$
	sjmp	00111$
00176$:
	cjne	r7,#0x3d,00177$
	sjmp	00105$
00177$:
	cjne	r7,#0x3f,00178$
	sjmp	00104$
00178$:
	cjne	r7,#0x40,00179$
	sjmp	00107$
00179$:
	ljmp	00118$
;	src/main.c:641: case '?':
00104$:
;	src/main.c:642: qmark_command_handler();
	lcall	_qmark_command_handler
;	src/main.c:643: break;
;	src/main.c:644: case '=':
	sjmp	00115$
00105$:
;	src/main.c:645: enter_command_handler();
	lcall	_enter_command_handler
;	src/main.c:646: break;
;	src/main.c:647: case '%':
	sjmp	00115$
00106$:
;	src/main.c:648: percent_command_handler();
	lcall	_percent_command_handler
;	src/main.c:649: break;
;	src/main.c:650: case '@':
	sjmp	00115$
00107$:
;	src/main.c:651: free_all_buffers();
	lcall	_free_all_buffers
;	src/main.c:652: initialize_buffers();
	lcall	_initialize_buffers
;	src/main.c:653: break;
;	src/main.c:654: case '$':
	sjmp	00115$
00108$:
;	src/main.c:655: dollar_sign_command_handler();
	lcall	_dollar_sign_command_handler
;	src/main.c:656: break;
;	src/main.c:657: case '#':
	sjmp	00115$
00109$:
;	src/main.c:658: hashtag_command_handler();
	lcall	_hashtag_command_handler
;	src/main.c:659: break;
;	src/main.c:660: case '+':
	sjmp	00115$
00110$:
;	src/main.c:661: plus_command_handler();
	lcall	_plus_command_handler
;	src/main.c:662: break;
;	src/main.c:663: case '-':
	sjmp	00115$
00111$:
;	src/main.c:664: minus_command_handler();
	lcall	_minus_command_handler
;	src/main.c:665: break;
;	src/main.c:666: case '*':
	sjmp	00115$
00112$:
;	src/main.c:667: star_command_handler();
	lcall	_star_command_handler
;	src/main.c:668: break;
;	src/main.c:669: case '&':
	sjmp	00115$
00113$:
;	src/main.c:670: ampersand_command_handler();
	lcall	_ampersand_command_handler
;	src/main.c:674: }
00115$:
;	src/main.c:675: printf("\r\nEND COMMAND");
	mov	a,#___str_50
	push	acc
	mov	a,#(___str_50 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:676: print_dashed_line();
	lcall	_print_dashed_line
;	src/main.c:678: }
	ljmp	00118$
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
	.ascii " Did not enter valid two digit number, please try again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0d
	.db 0x0a
	.ascii "Atoi error: number invalid or out of range, please try again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.ascii "Buffer Size too big, please pick a smaller buffer size"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0d
	.db 0x0a
	.ascii "student_number: %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0d
	.db 0x0a
	.ascii "user_buffer_size: %zu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0d
	.db 0x0a
	.ascii "buffer_%d starts @ %p, ends @%p, size %zu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0d
	.db 0x0a
	.ascii "Heap starts @ %p, ends @ %p, size: %zu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0d
	.db 0x0a
	.ascii "------------------------------------------------"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0d
	.db 0x0a
	.ascii "%s"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "Heap Report"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0d
	.db 0x0a
	.ascii "buffer_%d starts @ %p, ends @%p, size %zu, contains %zu alph"
	.ascii "abet chars, has %zu chars remaining"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0d
	.db 0x0a
	.ascii "Please enter a valid buffer size that is divisible by 32 [64"
	.ascii ",%zu]: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0d
	.db 0x0a
	.ascii " User buffer size larger than maximum"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0d
	.db 0x0a
	.ascii " User buffer size too small or error in conversion"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0d
	.db 0x0a
	.ascii " User buffer size is not divisible by 32"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0d
	.db 0x0a
	.ascii " Freeing ALL BUFFERS"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0d
	.db 0x0a
	.ascii " Received %zu chars since last invocation of ?"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "%c"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "Dump Admin Buffers"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0x0d
	.db 0x0a
	.ascii " Buffer %d "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.db 0x0d
	.db 0x0a
	.ascii "----------"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0d
	.db 0x0a
	.ascii "%04X:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii " %02hhX"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "Clear Buffers"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "Copy buffer_0 into buffer_3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x0d
	.db 0x0a
	.ascii " buffer_3 not allocated; exiting"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x0d
	.db 0x0a
	.ascii " Done"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "Convert buffer_3 chars to lowercase"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.db 0x0d
	.db 0x0a
	.ascii " Alloc Buffer"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.db 0x0d
	.db 0x0a
	.ascii "Please enter a size for the new buffer, [200,600]: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.db 0x0d
	.db 0x0a
	.ascii "Buffer size invalid!! Please try again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.db 0x0d
	.db 0x0a
	.ascii " Allocation failed; unable to allocate buffer"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.db 0x0d
	.db 0x0a
	.ascii " Allocation successful!! New buffer added"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "Free Buffer"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.db 0x0d
	.db 0x0a
	.ascii " No buffers to free"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0x0d
	.db 0x0a
	.ascii "Please enter the number of the buffer you would like to free"
	.ascii "[2-%zu]: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x0d
	.db 0x0a
	.ascii " Invalid buffer number, negatives not valid"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.db 0x0d
	.db 0x0a
	.ascii " Invalid buffer number, buffers 0 & 1 are protected"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.db 0x0d
	.db 0x0a
	.ascii " Invalid Buffer number; out of range"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.db 0x0d
	.db 0x0a
	.ascii " Successfully removed buffer"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.db 0x0d
	.db 0x0a
	.ascii " Failed to remove buffer, ll error"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.db 0x0d
	.db 0x0a
	.ascii "Resetting device"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.db 0x0d
	.db 0x0a
	.ascii " Dump Buffer"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.db 0x0d
	.db 0x0a
	.ascii "Enter a valid buffer # [2-%zu]: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.db 0x0d
	.db 0x0a
	.ascii "Invalid buffer number; returning to prompt"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.db 0x0d
	.db 0x0a
	.ascii "LL error; returning to prompt"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.db 0x0d
	.db 0x0a
	.ascii " Buffer %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.db 0x0d
	.db 0x0a
	.ascii "Enter a char: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.db 0x0d
	.db 0x0a
	.ascii "END COMMAND"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__dynamic_buffers_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.area CABS    (ABS,CODE)
