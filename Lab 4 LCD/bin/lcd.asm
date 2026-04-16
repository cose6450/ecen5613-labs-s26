;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lcdclear
	.globl _lcdputstr
	.globl _lcdputch
	.globl _lcdgotoxy
	.globl _lcdgotoaddr
	.globl _lcdinit
	.globl _lcdbusywait
	.globl _lcdgotoxy_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_delay_i_131072_2:
	.ds 2
_lcdinit_i_327680_9:
	.ds 2
_lcdinit_i_327680_14:
	.ds 2
_lcdinit_i_327680_19:
	.ds 2
_lcdgotoaddr_addr_65536_21:
	.ds 1
_lcdgotoxy_PARM_2:
	.ds 1
_lcdgotoxy_row_65536_23:
	.ds 1
_lcdputch_cc_65536_25:
	.ds 1
_lcdputstr_ss_65536_27:
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
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
;	src/lcd.c:26: void lcdbusywait()
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/lcd.c:28: while(0x80 == ((*(volatile unsigned char *) (LCD_ADDRESS_BASE | LCD_RW_FLAG)) & 0x80)); 
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
;	src/lcd.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdinit'
;------------------------------------------------------------
;i                         Allocated with name '_lcdinit_i_327680_9'
;i                         Allocated with name '_lcdinit_i_327680_14'
;i                         Allocated with name '_lcdinit_i_327680_19'
;------------------------------------------------------------
;	src/lcd.c:32: void lcdinit()
;	-----------------------------------------
;	 function lcdinit
;	-----------------------------------------
_lcdinit:
;	src/lcd.c:17: for(volatile int i = 0; i < 600; i++)
	mov	dptr,#_lcdinit_i_327680_9
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00108$:
	mov	dptr,#_lcdinit_i_327680_9
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
;	src/lcd.c:21: __endasm;  
	nop
;	src/lcd.c:17: for(volatile int i = 0; i < 600; i++)
	mov	dptr,#_lcdinit_i_327680_9
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lcdinit_i_327680_9
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:34: delay();
	sjmp	00108$
00102$:
;	src/lcd.c:35: INIT_CMD_ONE();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x30
	lcall	__gptrput
;	src/lcd.c:17: for(volatile int i = 0; i < 600; i++)
	mov	dptr,#_lcdinit_i_327680_14
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00111$:
	mov	dptr,#_lcdinit_i_327680_14
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
;	src/lcd.c:21: __endasm;  
	nop
;	src/lcd.c:17: for(volatile int i = 0; i < 600; i++)
	mov	dptr,#_lcdinit_i_327680_14
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lcdinit_i_327680_14
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:36: delay();
	sjmp	00111$
00104$:
;	src/lcd.c:37: INIT_CMD_ONE();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x30
	lcall	__gptrput
;	src/lcd.c:17: for(volatile int i = 0; i < 600; i++)
	mov	dptr,#_lcdinit_i_327680_19
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00114$:
	mov	dptr,#_lcdinit_i_327680_19
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
;	src/lcd.c:21: __endasm;  
	nop
;	src/lcd.c:17: for(volatile int i = 0; i < 600; i++)
	mov	dptr,#_lcdinit_i_327680_19
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lcdinit_i_327680_19
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:38: delay();
	sjmp	00114$
00106$:
;	src/lcd.c:39: INIT_CMD_ONE();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x30
	lcall	__gptrput
;	src/lcd.c:40: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:41: FUNCTION_SET_TWO_LINES_FONT_0();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x38
	lcall	__gptrput
;	src/lcd.c:42: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:43: DISPLAY_OFF();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x08
	lcall	__gptrput
;	src/lcd.c:44: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:45: DISPLAY_ON();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x0c
	lcall	__gptrput
;	src/lcd.c:46: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:47: ENTRY_MODE_SET_ID_1_S_0();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x06
	lcall	__gptrput
;	src/lcd.c:48: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:49: DISPLAY_CLEAR();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x01
	lcall	__gptrput
;	src/lcd.c:50: lcdbusywait();
;	src/lcd.c:51: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddr'
;------------------------------------------------------------
;addr                      Allocated with name '_lcdgotoaddr_addr_65536_21'
;------------------------------------------------------------
;	src/lcd.c:55: void lcdgotoaddr(unsigned char addr)
;	-----------------------------------------
;	 function lcdgotoaddr
;	-----------------------------------------
_lcdgotoaddr:
	mov	a,dpl
	mov	dptr,#_lcdgotoaddr_addr_65536_21
	movx	@dptr,a
;	src/lcd.c:57: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:58: GOTOADDR(addr);
	mov	dptr,#_lcdgotoaddr_addr_65536_21
	movx	a,@dptr
	orl	a,#0x80
	mov	r7,a
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,r7
	lcall	__gptrput
;	src/lcd.c:59: lcdbusywait();
;	src/lcd.c:60: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;column                    Allocated with name '_lcdgotoxy_PARM_2'
;row                       Allocated with name '_lcdgotoxy_row_65536_23'
;------------------------------------------------------------
;	src/lcd.c:62: void lcdgotoxy(unsigned char row, unsigned char column)
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
	mov	a,dpl
	mov	dptr,#_lcdgotoxy_row_65536_23
	movx	@dptr,a
;	src/lcd.c:64: lcdgotoaddr(row << 6 | column); 
	movx	a,@dptr
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r7,a
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	orl	ar7,a
	mov	dpl,r7
;	src/lcd.c:65: }
	ljmp	_lcdgotoaddr
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;cc                        Allocated with name '_lcdputch_cc_65536_25'
;------------------------------------------------------------
;	src/lcd.c:67: void lcdputch(char cc)
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
	mov	a,dpl
	mov	dptr,#_lcdputch_cc_65536_25
	movx	@dptr,a
;	src/lcd.c:69: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:70: WRITECHAR(cc);
	mov	dptr,#_lcdputch_cc_65536_25
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#0xf100
	mov	b,#0x00
	mov	a,r7
	lcall	__gptrput
;	src/lcd.c:71: lcdbusywait();
;	src/lcd.c:72: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;ss                        Allocated with name '_lcdputstr_ss_65536_27'
;------------------------------------------------------------
;	src/lcd.c:74: void lcdputstr
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_lcdputstr_ss_65536_27
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:77: while (*ss != '\0')
	mov	dptr,#_lcdputstr_ss_65536_27
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
;	src/lcd.c:79: lcdputch(*ss);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdputch
	pop	ar5
	pop	ar6
	pop	ar7
;	src/lcd.c:80: ss++;
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	mov	dptr,#_lcdputstr_ss_65536_27
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
	mov	dptr,#_lcdputstr_ss_65536_27
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdclear'
;------------------------------------------------------------
;	src/lcd.c:85: void lcdclear()
;	-----------------------------------------
;	 function lcdclear
;	-----------------------------------------
_lcdclear:
;	src/lcd.c:87: lcdbusywait();
	lcall	_lcdbusywait
;	src/lcd.c:88: DISPLAY_CLEAR();
	mov	dptr,#0xf000
	mov	b,#0x00
	mov	a,#0x01
	lcall	__gptrput
;	src/lcd.c:89: lcdbusywait();
;	src/lcd.c:90: }
	ljmp	_lcdbusywait
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
