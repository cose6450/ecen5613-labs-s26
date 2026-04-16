                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _lcdclear
                                     12 	.globl _lcdputstr
                                     13 	.globl _lcdputch
                                     14 	.globl _lcdgotoxy
                                     15 	.globl _lcdgotoaddr
                                     16 	.globl _lcdinit
                                     17 	.globl _lcdbusywait
                                     18 	.globl _lcdgotoxy_PARM_2
                                     19 ;--------------------------------------------------------
                                     20 ; special function registers
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; special function bits
                                     26 ;--------------------------------------------------------
                                     27 	.area RSEG    (ABS,DATA)
      000000                         28 	.org 0x0000
                                     29 ;--------------------------------------------------------
                                     30 ; overlayable register banks
                                     31 ;--------------------------------------------------------
                                     32 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         33 	.ds 8
                                     34 ;--------------------------------------------------------
                                     35 ; internal ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area DSEG    (DATA)
                                     38 ;--------------------------------------------------------
                                     39 ; overlayable items in internal ram
                                     40 ;--------------------------------------------------------
                                     41 ;--------------------------------------------------------
                                     42 ; indirectly addressable internal ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area ISEG    (DATA)
                                     45 ;--------------------------------------------------------
                                     46 ; absolute internal ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area IABS    (ABS,DATA)
                                     49 	.area IABS    (ABS,DATA)
                                     50 ;--------------------------------------------------------
                                     51 ; bit data
                                     52 ;--------------------------------------------------------
                                     53 	.area BSEG    (BIT)
                                     54 ;--------------------------------------------------------
                                     55 ; paged external ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area PSEG    (PAG,XDATA)
                                     58 ;--------------------------------------------------------
                                     59 ; external ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area XSEG    (XDATA)
      002048                         62 _delay_i_131072_2:
      002048                         63 	.ds 2
      00204A                         64 _lcdinit_i_327680_9:
      00204A                         65 	.ds 2
      00204C                         66 _lcdinit_i_327680_14:
      00204C                         67 	.ds 2
      00204E                         68 _lcdinit_i_327680_19:
      00204E                         69 	.ds 2
      002050                         70 _lcdgotoaddr_addr_65536_21:
      002050                         71 	.ds 1
      002051                         72 _lcdgotoxy_PARM_2:
      002051                         73 	.ds 1
      002052                         74 _lcdgotoxy_row_65536_23:
      002052                         75 	.ds 1
      002053                         76 _lcdputch_cc_65536_25:
      002053                         77 	.ds 1
      002054                         78 _lcdputstr_ss_65536_27:
      002054                         79 	.ds 3
                                     80 ;--------------------------------------------------------
                                     81 ; absolute external ram data
                                     82 ;--------------------------------------------------------
                                     83 	.area XABS    (ABS,XDATA)
                                     84 ;--------------------------------------------------------
                                     85 ; external initialized ram data
                                     86 ;--------------------------------------------------------
                                     87 	.area XISEG   (XDATA)
                                     88 	.area HOME    (CODE)
                                     89 	.area GSINIT0 (CODE)
                                     90 	.area GSINIT1 (CODE)
                                     91 	.area GSINIT2 (CODE)
                                     92 	.area GSINIT3 (CODE)
                                     93 	.area GSINIT4 (CODE)
                                     94 	.area GSINIT5 (CODE)
                                     95 	.area GSINIT  (CODE)
                                     96 	.area GSFINAL (CODE)
                                     97 	.area CSEG    (CODE)
                                     98 ;--------------------------------------------------------
                                     99 ; global & static initialisations
                                    100 ;--------------------------------------------------------
                                    101 	.area HOME    (CODE)
                                    102 	.area GSINIT  (CODE)
                                    103 	.area GSFINAL (CODE)
                                    104 	.area GSINIT  (CODE)
                                    105 ;--------------------------------------------------------
                                    106 ; Home
                                    107 ;--------------------------------------------------------
                                    108 	.area HOME    (CODE)
                                    109 	.area HOME    (CODE)
                                    110 ;--------------------------------------------------------
                                    111 ; code
                                    112 ;--------------------------------------------------------
                                    113 	.area CSEG    (CODE)
                                    114 ;------------------------------------------------------------
                                    115 ;Allocation info for local variables in function 'lcdbusywait'
                                    116 ;------------------------------------------------------------
                                    117 ;	src/lcd.c:26: void lcdbusywait()
                                    118 ;	-----------------------------------------
                                    119 ;	 function lcdbusywait
                                    120 ;	-----------------------------------------
      0028F3                        121 _lcdbusywait:
                           000007   122 	ar7 = 0x07
                           000006   123 	ar6 = 0x06
                           000005   124 	ar5 = 0x05
                           000004   125 	ar4 = 0x04
                           000003   126 	ar3 = 0x03
                           000002   127 	ar2 = 0x02
                           000001   128 	ar1 = 0x01
                           000000   129 	ar0 = 0x00
                                    130 ;	src/lcd.c:28: while(0x80 == ((*(volatile unsigned char *) (LCD_ADDRESS_BASE | LCD_RW_FLAG)) & 0x80)); 
      0028F3                        131 00101$:
      0028F3 90 F2 00         [24]  132 	mov	dptr,#0xf200
      0028F6 75 F0 00         [24]  133 	mov	b,#0x00
      0028F9 12 38 94         [24]  134 	lcall	__gptrget
      0028FC FF               [12]  135 	mov	r7,a
      0028FD 53 07 80         [24]  136 	anl	ar7,#0x80
      002900 7E 00            [12]  137 	mov	r6,#0x00
      002902 BF 80 05         [24]  138 	cjne	r7,#0x80,00110$
      002905 BE 00 02         [24]  139 	cjne	r6,#0x00,00110$
      002908 80 E9            [24]  140 	sjmp	00101$
      00290A                        141 00110$:
                                    142 ;	src/lcd.c:29: }
      00290A 22               [24]  143 	ret
                                    144 ;------------------------------------------------------------
                                    145 ;Allocation info for local variables in function 'lcdinit'
                                    146 ;------------------------------------------------------------
                                    147 ;i                         Allocated with name '_lcdinit_i_327680_9'
                                    148 ;i                         Allocated with name '_lcdinit_i_327680_14'
                                    149 ;i                         Allocated with name '_lcdinit_i_327680_19'
                                    150 ;------------------------------------------------------------
                                    151 ;	src/lcd.c:32: void lcdinit()
                                    152 ;	-----------------------------------------
                                    153 ;	 function lcdinit
                                    154 ;	-----------------------------------------
      00290B                        155 _lcdinit:
                                    156 ;	src/lcd.c:17: for(volatile int i = 0; i < 600; i++)
      00290B 90 20 4A         [24]  157 	mov	dptr,#_lcdinit_i_327680_9
      00290E E4               [12]  158 	clr	a
      00290F F0               [24]  159 	movx	@dptr,a
      002910 A3               [24]  160 	inc	dptr
      002911 F0               [24]  161 	movx	@dptr,a
      002912                        162 00108$:
      002912 90 20 4A         [24]  163 	mov	dptr,#_lcdinit_i_327680_9
      002915 E0               [24]  164 	movx	a,@dptr
      002916 FE               [12]  165 	mov	r6,a
      002917 A3               [24]  166 	inc	dptr
      002918 E0               [24]  167 	movx	a,@dptr
      002919 FF               [12]  168 	mov	r7,a
      00291A C3               [12]  169 	clr	c
      00291B EE               [12]  170 	mov	a,r6
      00291C 94 58            [12]  171 	subb	a,#0x58
      00291E EF               [12]  172 	mov	a,r7
      00291F 64 80            [12]  173 	xrl	a,#0x80
      002921 94 82            [12]  174 	subb	a,#0x82
      002923 50 16            [24]  175 	jnc	00102$
                                    176 ;	src/lcd.c:21: __endasm;  
      002925 00               [12]  177 	nop
                                    178 ;	src/lcd.c:17: for(volatile int i = 0; i < 600; i++)
      002926 90 20 4A         [24]  179 	mov	dptr,#_lcdinit_i_327680_9
      002929 E0               [24]  180 	movx	a,@dptr
      00292A FE               [12]  181 	mov	r6,a
      00292B A3               [24]  182 	inc	dptr
      00292C E0               [24]  183 	movx	a,@dptr
      00292D FF               [12]  184 	mov	r7,a
      00292E 90 20 4A         [24]  185 	mov	dptr,#_lcdinit_i_327680_9
      002931 74 01            [12]  186 	mov	a,#0x01
      002933 2E               [12]  187 	add	a,r6
      002934 F0               [24]  188 	movx	@dptr,a
      002935 E4               [12]  189 	clr	a
      002936 3F               [12]  190 	addc	a,r7
      002937 A3               [24]  191 	inc	dptr
      002938 F0               [24]  192 	movx	@dptr,a
                                    193 ;	src/lcd.c:34: delay();
      002939 80 D7            [24]  194 	sjmp	00108$
      00293B                        195 00102$:
                                    196 ;	src/lcd.c:35: INIT_CMD_ONE();
      00293B 90 F0 00         [24]  197 	mov	dptr,#0xf000
      00293E 75 F0 00         [24]  198 	mov	b,#0x00
      002941 74 30            [12]  199 	mov	a,#0x30
      002943 12 2C 3A         [24]  200 	lcall	__gptrput
                                    201 ;	src/lcd.c:17: for(volatile int i = 0; i < 600; i++)
      002946 90 20 4C         [24]  202 	mov	dptr,#_lcdinit_i_327680_14
      002949 E4               [12]  203 	clr	a
      00294A F0               [24]  204 	movx	@dptr,a
      00294B A3               [24]  205 	inc	dptr
      00294C F0               [24]  206 	movx	@dptr,a
      00294D                        207 00111$:
      00294D 90 20 4C         [24]  208 	mov	dptr,#_lcdinit_i_327680_14
      002950 E0               [24]  209 	movx	a,@dptr
      002951 FE               [12]  210 	mov	r6,a
      002952 A3               [24]  211 	inc	dptr
      002953 E0               [24]  212 	movx	a,@dptr
      002954 FF               [12]  213 	mov	r7,a
      002955 C3               [12]  214 	clr	c
      002956 EE               [12]  215 	mov	a,r6
      002957 94 58            [12]  216 	subb	a,#0x58
      002959 EF               [12]  217 	mov	a,r7
      00295A 64 80            [12]  218 	xrl	a,#0x80
      00295C 94 82            [12]  219 	subb	a,#0x82
      00295E 50 16            [24]  220 	jnc	00104$
                                    221 ;	src/lcd.c:21: __endasm;  
      002960 00               [12]  222 	nop
                                    223 ;	src/lcd.c:17: for(volatile int i = 0; i < 600; i++)
      002961 90 20 4C         [24]  224 	mov	dptr,#_lcdinit_i_327680_14
      002964 E0               [24]  225 	movx	a,@dptr
      002965 FE               [12]  226 	mov	r6,a
      002966 A3               [24]  227 	inc	dptr
      002967 E0               [24]  228 	movx	a,@dptr
      002968 FF               [12]  229 	mov	r7,a
      002969 90 20 4C         [24]  230 	mov	dptr,#_lcdinit_i_327680_14
      00296C 74 01            [12]  231 	mov	a,#0x01
      00296E 2E               [12]  232 	add	a,r6
      00296F F0               [24]  233 	movx	@dptr,a
      002970 E4               [12]  234 	clr	a
      002971 3F               [12]  235 	addc	a,r7
      002972 A3               [24]  236 	inc	dptr
      002973 F0               [24]  237 	movx	@dptr,a
                                    238 ;	src/lcd.c:36: delay();
      002974 80 D7            [24]  239 	sjmp	00111$
      002976                        240 00104$:
                                    241 ;	src/lcd.c:37: INIT_CMD_ONE();
      002976 90 F0 00         [24]  242 	mov	dptr,#0xf000
      002979 75 F0 00         [24]  243 	mov	b,#0x00
      00297C 74 30            [12]  244 	mov	a,#0x30
      00297E 12 2C 3A         [24]  245 	lcall	__gptrput
                                    246 ;	src/lcd.c:17: for(volatile int i = 0; i < 600; i++)
      002981 90 20 4E         [24]  247 	mov	dptr,#_lcdinit_i_327680_19
      002984 E4               [12]  248 	clr	a
      002985 F0               [24]  249 	movx	@dptr,a
      002986 A3               [24]  250 	inc	dptr
      002987 F0               [24]  251 	movx	@dptr,a
      002988                        252 00114$:
      002988 90 20 4E         [24]  253 	mov	dptr,#_lcdinit_i_327680_19
      00298B E0               [24]  254 	movx	a,@dptr
      00298C FE               [12]  255 	mov	r6,a
      00298D A3               [24]  256 	inc	dptr
      00298E E0               [24]  257 	movx	a,@dptr
      00298F FF               [12]  258 	mov	r7,a
      002990 C3               [12]  259 	clr	c
      002991 EE               [12]  260 	mov	a,r6
      002992 94 58            [12]  261 	subb	a,#0x58
      002994 EF               [12]  262 	mov	a,r7
      002995 64 80            [12]  263 	xrl	a,#0x80
      002997 94 82            [12]  264 	subb	a,#0x82
      002999 50 16            [24]  265 	jnc	00106$
                                    266 ;	src/lcd.c:21: __endasm;  
      00299B 00               [12]  267 	nop
                                    268 ;	src/lcd.c:17: for(volatile int i = 0; i < 600; i++)
      00299C 90 20 4E         [24]  269 	mov	dptr,#_lcdinit_i_327680_19
      00299F E0               [24]  270 	movx	a,@dptr
      0029A0 FE               [12]  271 	mov	r6,a
      0029A1 A3               [24]  272 	inc	dptr
      0029A2 E0               [24]  273 	movx	a,@dptr
      0029A3 FF               [12]  274 	mov	r7,a
      0029A4 90 20 4E         [24]  275 	mov	dptr,#_lcdinit_i_327680_19
      0029A7 74 01            [12]  276 	mov	a,#0x01
      0029A9 2E               [12]  277 	add	a,r6
      0029AA F0               [24]  278 	movx	@dptr,a
      0029AB E4               [12]  279 	clr	a
      0029AC 3F               [12]  280 	addc	a,r7
      0029AD A3               [24]  281 	inc	dptr
      0029AE F0               [24]  282 	movx	@dptr,a
                                    283 ;	src/lcd.c:38: delay();
      0029AF 80 D7            [24]  284 	sjmp	00114$
      0029B1                        285 00106$:
                                    286 ;	src/lcd.c:39: INIT_CMD_ONE();
      0029B1 90 F0 00         [24]  287 	mov	dptr,#0xf000
      0029B4 75 F0 00         [24]  288 	mov	b,#0x00
      0029B7 74 30            [12]  289 	mov	a,#0x30
      0029B9 12 2C 3A         [24]  290 	lcall	__gptrput
                                    291 ;	src/lcd.c:40: lcdbusywait();
      0029BC 12 28 F3         [24]  292 	lcall	_lcdbusywait
                                    293 ;	src/lcd.c:41: FUNCTION_SET_TWO_LINES_FONT_0();
      0029BF 90 F0 00         [24]  294 	mov	dptr,#0xf000
      0029C2 75 F0 00         [24]  295 	mov	b,#0x00
      0029C5 74 38            [12]  296 	mov	a,#0x38
      0029C7 12 2C 3A         [24]  297 	lcall	__gptrput
                                    298 ;	src/lcd.c:42: lcdbusywait();
      0029CA 12 28 F3         [24]  299 	lcall	_lcdbusywait
                                    300 ;	src/lcd.c:43: DISPLAY_OFF();
      0029CD 90 F0 00         [24]  301 	mov	dptr,#0xf000
      0029D0 75 F0 00         [24]  302 	mov	b,#0x00
      0029D3 74 08            [12]  303 	mov	a,#0x08
      0029D5 12 2C 3A         [24]  304 	lcall	__gptrput
                                    305 ;	src/lcd.c:44: lcdbusywait();
      0029D8 12 28 F3         [24]  306 	lcall	_lcdbusywait
                                    307 ;	src/lcd.c:45: DISPLAY_ON();
      0029DB 90 F0 00         [24]  308 	mov	dptr,#0xf000
      0029DE 75 F0 00         [24]  309 	mov	b,#0x00
      0029E1 74 0C            [12]  310 	mov	a,#0x0c
      0029E3 12 2C 3A         [24]  311 	lcall	__gptrput
                                    312 ;	src/lcd.c:46: lcdbusywait();
      0029E6 12 28 F3         [24]  313 	lcall	_lcdbusywait
                                    314 ;	src/lcd.c:47: ENTRY_MODE_SET_ID_1_S_0();
      0029E9 90 F0 00         [24]  315 	mov	dptr,#0xf000
      0029EC 75 F0 00         [24]  316 	mov	b,#0x00
      0029EF 74 06            [12]  317 	mov	a,#0x06
      0029F1 12 2C 3A         [24]  318 	lcall	__gptrput
                                    319 ;	src/lcd.c:48: lcdbusywait();
      0029F4 12 28 F3         [24]  320 	lcall	_lcdbusywait
                                    321 ;	src/lcd.c:49: DISPLAY_CLEAR();
      0029F7 90 F0 00         [24]  322 	mov	dptr,#0xf000
      0029FA 75 F0 00         [24]  323 	mov	b,#0x00
      0029FD 74 01            [12]  324 	mov	a,#0x01
      0029FF 12 2C 3A         [24]  325 	lcall	__gptrput
                                    326 ;	src/lcd.c:50: lcdbusywait();
                                    327 ;	src/lcd.c:51: }
      002A02 02 28 F3         [24]  328 	ljmp	_lcdbusywait
                                    329 ;------------------------------------------------------------
                                    330 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    331 ;------------------------------------------------------------
                                    332 ;addr                      Allocated with name '_lcdgotoaddr_addr_65536_21'
                                    333 ;------------------------------------------------------------
                                    334 ;	src/lcd.c:55: void lcdgotoaddr(unsigned char addr)
                                    335 ;	-----------------------------------------
                                    336 ;	 function lcdgotoaddr
                                    337 ;	-----------------------------------------
      002A05                        338 _lcdgotoaddr:
      002A05 E5 82            [12]  339 	mov	a,dpl
      002A07 90 20 50         [24]  340 	mov	dptr,#_lcdgotoaddr_addr_65536_21
      002A0A F0               [24]  341 	movx	@dptr,a
                                    342 ;	src/lcd.c:57: lcdbusywait();
      002A0B 12 28 F3         [24]  343 	lcall	_lcdbusywait
                                    344 ;	src/lcd.c:58: GOTOADDR(addr);
      002A0E 90 20 50         [24]  345 	mov	dptr,#_lcdgotoaddr_addr_65536_21
      002A11 E0               [24]  346 	movx	a,@dptr
      002A12 44 80            [12]  347 	orl	a,#0x80
      002A14 FF               [12]  348 	mov	r7,a
      002A15 90 F0 00         [24]  349 	mov	dptr,#0xf000
      002A18 75 F0 00         [24]  350 	mov	b,#0x00
      002A1B EF               [12]  351 	mov	a,r7
      002A1C 12 2C 3A         [24]  352 	lcall	__gptrput
                                    353 ;	src/lcd.c:59: lcdbusywait();
                                    354 ;	src/lcd.c:60: }
      002A1F 02 28 F3         [24]  355 	ljmp	_lcdbusywait
                                    356 ;------------------------------------------------------------
                                    357 ;Allocation info for local variables in function 'lcdgotoxy'
                                    358 ;------------------------------------------------------------
                                    359 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                    360 ;row                       Allocated with name '_lcdgotoxy_row_65536_23'
                                    361 ;------------------------------------------------------------
                                    362 ;	src/lcd.c:62: void lcdgotoxy(unsigned char row, unsigned char column)
                                    363 ;	-----------------------------------------
                                    364 ;	 function lcdgotoxy
                                    365 ;	-----------------------------------------
      002A22                        366 _lcdgotoxy:
      002A22 E5 82            [12]  367 	mov	a,dpl
      002A24 90 20 52         [24]  368 	mov	dptr,#_lcdgotoxy_row_65536_23
      002A27 F0               [24]  369 	movx	@dptr,a
                                    370 ;	src/lcd.c:64: lcdgotoaddr(row << 6 | column); 
      002A28 E0               [24]  371 	movx	a,@dptr
      002A29 03               [12]  372 	rr	a
      002A2A 03               [12]  373 	rr	a
      002A2B 54 C0            [12]  374 	anl	a,#0xc0
      002A2D FF               [12]  375 	mov	r7,a
      002A2E 90 20 51         [24]  376 	mov	dptr,#_lcdgotoxy_PARM_2
      002A31 E0               [24]  377 	movx	a,@dptr
      002A32 42 07            [12]  378 	orl	ar7,a
      002A34 8F 82            [24]  379 	mov	dpl,r7
                                    380 ;	src/lcd.c:65: }
      002A36 02 2A 05         [24]  381 	ljmp	_lcdgotoaddr
                                    382 ;------------------------------------------------------------
                                    383 ;Allocation info for local variables in function 'lcdputch'
                                    384 ;------------------------------------------------------------
                                    385 ;cc                        Allocated with name '_lcdputch_cc_65536_25'
                                    386 ;------------------------------------------------------------
                                    387 ;	src/lcd.c:67: void lcdputch(char cc)
                                    388 ;	-----------------------------------------
                                    389 ;	 function lcdputch
                                    390 ;	-----------------------------------------
      002A39                        391 _lcdputch:
      002A39 E5 82            [12]  392 	mov	a,dpl
      002A3B 90 20 53         [24]  393 	mov	dptr,#_lcdputch_cc_65536_25
      002A3E F0               [24]  394 	movx	@dptr,a
                                    395 ;	src/lcd.c:69: lcdbusywait();
      002A3F 12 28 F3         [24]  396 	lcall	_lcdbusywait
                                    397 ;	src/lcd.c:70: WRITECHAR(cc);
      002A42 90 20 53         [24]  398 	mov	dptr,#_lcdputch_cc_65536_25
      002A45 E0               [24]  399 	movx	a,@dptr
      002A46 FF               [12]  400 	mov	r7,a
      002A47 90 F1 00         [24]  401 	mov	dptr,#0xf100
      002A4A 75 F0 00         [24]  402 	mov	b,#0x00
      002A4D EF               [12]  403 	mov	a,r7
      002A4E 12 2C 3A         [24]  404 	lcall	__gptrput
                                    405 ;	src/lcd.c:71: lcdbusywait();
                                    406 ;	src/lcd.c:72: }
      002A51 02 28 F3         [24]  407 	ljmp	_lcdbusywait
                                    408 ;------------------------------------------------------------
                                    409 ;Allocation info for local variables in function 'lcdputstr'
                                    410 ;------------------------------------------------------------
                                    411 ;ss                        Allocated with name '_lcdputstr_ss_65536_27'
                                    412 ;------------------------------------------------------------
                                    413 ;	src/lcd.c:74: void lcdputstr
                                    414 ;	-----------------------------------------
                                    415 ;	 function lcdputstr
                                    416 ;	-----------------------------------------
      002A54                        417 _lcdputstr:
      002A54 AF F0            [24]  418 	mov	r7,b
      002A56 AE 83            [24]  419 	mov	r6,dph
      002A58 E5 82            [12]  420 	mov	a,dpl
      002A5A 90 20 54         [24]  421 	mov	dptr,#_lcdputstr_ss_65536_27
      002A5D F0               [24]  422 	movx	@dptr,a
      002A5E EE               [12]  423 	mov	a,r6
      002A5F A3               [24]  424 	inc	dptr
      002A60 F0               [24]  425 	movx	@dptr,a
      002A61 EF               [12]  426 	mov	a,r7
      002A62 A3               [24]  427 	inc	dptr
      002A63 F0               [24]  428 	movx	@dptr,a
                                    429 ;	src/lcd.c:77: while (*ss != '\0')
      002A64 90 20 54         [24]  430 	mov	dptr,#_lcdputstr_ss_65536_27
      002A67 E0               [24]  431 	movx	a,@dptr
      002A68 FD               [12]  432 	mov	r5,a
      002A69 A3               [24]  433 	inc	dptr
      002A6A E0               [24]  434 	movx	a,@dptr
      002A6B FE               [12]  435 	mov	r6,a
      002A6C A3               [24]  436 	inc	dptr
      002A6D E0               [24]  437 	movx	a,@dptr
      002A6E FF               [12]  438 	mov	r7,a
      002A6F                        439 00101$:
      002A6F 8D 82            [24]  440 	mov	dpl,r5
      002A71 8E 83            [24]  441 	mov	dph,r6
      002A73 8F F0            [24]  442 	mov	b,r7
      002A75 12 38 94         [24]  443 	lcall	__gptrget
      002A78 FC               [12]  444 	mov	r4,a
      002A79 60 23            [24]  445 	jz	00108$
                                    446 ;	src/lcd.c:79: lcdputch(*ss);
      002A7B 8C 82            [24]  447 	mov	dpl,r4
      002A7D C0 07            [24]  448 	push	ar7
      002A7F C0 06            [24]  449 	push	ar6
      002A81 C0 05            [24]  450 	push	ar5
      002A83 12 2A 39         [24]  451 	lcall	_lcdputch
      002A86 D0 05            [24]  452 	pop	ar5
      002A88 D0 06            [24]  453 	pop	ar6
      002A8A D0 07            [24]  454 	pop	ar7
                                    455 ;	src/lcd.c:80: ss++;
      002A8C 0D               [12]  456 	inc	r5
      002A8D BD 00 01         [24]  457 	cjne	r5,#0x00,00116$
      002A90 0E               [12]  458 	inc	r6
      002A91                        459 00116$:
      002A91 90 20 54         [24]  460 	mov	dptr,#_lcdputstr_ss_65536_27
      002A94 ED               [12]  461 	mov	a,r5
      002A95 F0               [24]  462 	movx	@dptr,a
      002A96 EE               [12]  463 	mov	a,r6
      002A97 A3               [24]  464 	inc	dptr
      002A98 F0               [24]  465 	movx	@dptr,a
      002A99 EF               [12]  466 	mov	a,r7
      002A9A A3               [24]  467 	inc	dptr
      002A9B F0               [24]  468 	movx	@dptr,a
      002A9C 80 D1            [24]  469 	sjmp	00101$
      002A9E                        470 00108$:
      002A9E 90 20 54         [24]  471 	mov	dptr,#_lcdputstr_ss_65536_27
      002AA1 ED               [12]  472 	mov	a,r5
      002AA2 F0               [24]  473 	movx	@dptr,a
      002AA3 EE               [12]  474 	mov	a,r6
      002AA4 A3               [24]  475 	inc	dptr
      002AA5 F0               [24]  476 	movx	@dptr,a
      002AA6 EF               [12]  477 	mov	a,r7
      002AA7 A3               [24]  478 	inc	dptr
      002AA8 F0               [24]  479 	movx	@dptr,a
                                    480 ;	src/lcd.c:82: }
      002AA9 22               [24]  481 	ret
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'lcdclear'
                                    484 ;------------------------------------------------------------
                                    485 ;	src/lcd.c:85: void lcdclear()
                                    486 ;	-----------------------------------------
                                    487 ;	 function lcdclear
                                    488 ;	-----------------------------------------
      002AAA                        489 _lcdclear:
                                    490 ;	src/lcd.c:87: lcdbusywait();
      002AAA 12 28 F3         [24]  491 	lcall	_lcdbusywait
                                    492 ;	src/lcd.c:88: DISPLAY_CLEAR();
      002AAD 90 F0 00         [24]  493 	mov	dptr,#0xf000
      002AB0 75 F0 00         [24]  494 	mov	b,#0x00
      002AB3 74 01            [12]  495 	mov	a,#0x01
      002AB5 12 2C 3A         [24]  496 	lcall	__gptrput
                                    497 ;	src/lcd.c:89: lcdbusywait();
                                    498 ;	src/lcd.c:90: }
      002AB8 02 28 F3         [24]  499 	ljmp	_lcdbusywait
                                    500 	.area CSEG    (CODE)
                                    501 	.area CONST   (CODE)
                                    502 	.area XINIT   (CODE)
                                    503 	.area CABS    (ABS,CODE)
