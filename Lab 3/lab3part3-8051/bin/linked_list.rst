                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module linked_list
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _free
                                     12 	.globl _ll_get_elem_PARM_2
                                     13 	.globl _remove_from_buffer_list_PARM_2
                                     14 	.globl _append_to_buffer_list_PARM_2
                                     15 	.globl _append_to_buffer_list
                                     16 	.globl _remove_from_buffer_list
                                     17 	.globl _free_all_elems_from_list
                                     18 	.globl _ll_length
                                     19 	.globl _ll_get_elem
                                     20 ;--------------------------------------------------------
                                     21 ; special function registers
                                     22 ;--------------------------------------------------------
                                     23 	.area RSEG    (ABS,DATA)
      000000                         24 	.org 0x0000
                                     25 ;--------------------------------------------------------
                                     26 ; special function bits
                                     27 ;--------------------------------------------------------
                                     28 	.area RSEG    (ABS,DATA)
      000000                         29 	.org 0x0000
                                     30 ;--------------------------------------------------------
                                     31 ; overlayable register banks
                                     32 ;--------------------------------------------------------
                                     33 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         34 	.ds 8
                                     35 ;--------------------------------------------------------
                                     36 ; internal ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area DSEG    (DATA)
      000008                         39 _remove_from_buffer_list_sloc0_1_0:
      000008                         40 	.ds 3
      00000B                         41 _free_all_elems_from_list_sloc0_1_0:
      00000B                         42 	.ds 3
                                     43 ;--------------------------------------------------------
                                     44 ; overlayable items in internal ram
                                     45 ;--------------------------------------------------------
                                     46 	.area	OSEG    (OVR,DATA)
      00001B                         47 _append_to_buffer_list_sloc0_1_0:
      00001B                         48 	.ds 3
                                     49 ;--------------------------------------------------------
                                     50 ; indirectly addressable internal ram data
                                     51 ;--------------------------------------------------------
                                     52 	.area ISEG    (DATA)
                                     53 ;--------------------------------------------------------
                                     54 ; absolute internal ram data
                                     55 ;--------------------------------------------------------
                                     56 	.area IABS    (ABS,DATA)
                                     57 	.area IABS    (ABS,DATA)
                                     58 ;--------------------------------------------------------
                                     59 ; bit data
                                     60 ;--------------------------------------------------------
                                     61 	.area BSEG    (BIT)
                                     62 ;--------------------------------------------------------
                                     63 ; paged external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area PSEG    (PAG,XDATA)
                                     66 ;--------------------------------------------------------
                                     67 ; external ram data
                                     68 ;--------------------------------------------------------
                                     69 	.area XSEG    (XDATA)
      002012                         70 _append_to_buffer_list_PARM_2:
      002012                         71 	.ds 3
      002015                         72 _append_to_buffer_list_list_65536_47:
      002015                         73 	.ds 3
      002018                         74 _append_to_buffer_list_tail_131072_50:
      002018                         75 	.ds 3
      00201B                         76 _remove_from_buffer_list_PARM_2:
      00201B                         77 	.ds 2
      00201D                         78 _remove_from_buffer_list_list_65536_52:
      00201D                         79 	.ds 3
      002020                         80 _remove_from_buffer_list_to_free_65537_54:
      002020                         81 	.ds 3
      002023                         82 _remove_from_buffer_list_prev_131073_56:
      002023                         83 	.ds 3
      002026                         84 _free_all_elems_from_list_list_65536_59:
      002026                         85 	.ds 3
      002029                         86 _free_all_elems_from_list_buffer_to_free_65536_60:
      002029                         87 	.ds 3
      00202C                         88 _ll_length_list_65536_63:
      00202C                         89 	.ds 3
      00202F                         90 _ll_length_size_65536_64:
      00202F                         91 	.ds 2
      002031                         92 _ll_length_curr_65536_64:
      002031                         93 	.ds 3
      002034                         94 _ll_get_elem_PARM_2:
      002034                         95 	.ds 2
      002036                         96 _ll_get_elem_list_65536_66:
      002036                         97 	.ds 3
      002039                         98 _ll_get_elem_curr_65536_67:
      002039                         99 	.ds 3
                                    100 ;--------------------------------------------------------
                                    101 ; absolute external ram data
                                    102 ;--------------------------------------------------------
                                    103 	.area XABS    (ABS,XDATA)
                                    104 ;--------------------------------------------------------
                                    105 ; external initialized ram data
                                    106 ;--------------------------------------------------------
                                    107 	.area XISEG   (XDATA)
                                    108 	.area HOME    (CODE)
                                    109 	.area GSINIT0 (CODE)
                                    110 	.area GSINIT1 (CODE)
                                    111 	.area GSINIT2 (CODE)
                                    112 	.area GSINIT3 (CODE)
                                    113 	.area GSINIT4 (CODE)
                                    114 	.area GSINIT5 (CODE)
                                    115 	.area GSINIT  (CODE)
                                    116 	.area GSFINAL (CODE)
                                    117 	.area CSEG    (CODE)
                                    118 ;--------------------------------------------------------
                                    119 ; global & static initialisations
                                    120 ;--------------------------------------------------------
                                    121 	.area HOME    (CODE)
                                    122 	.area GSINIT  (CODE)
                                    123 	.area GSFINAL (CODE)
                                    124 	.area GSINIT  (CODE)
                                    125 ;--------------------------------------------------------
                                    126 ; Home
                                    127 ;--------------------------------------------------------
                                    128 	.area HOME    (CODE)
                                    129 	.area HOME    (CODE)
                                    130 ;--------------------------------------------------------
                                    131 ; code
                                    132 ;--------------------------------------------------------
                                    133 	.area CSEG    (CODE)
                                    134 ;------------------------------------------------------------
                                    135 ;Allocation info for local variables in function 'append_to_buffer_list'
                                    136 ;------------------------------------------------------------
                                    137 ;buffer                    Allocated with name '_append_to_buffer_list_PARM_2'
                                    138 ;list                      Allocated with name '_append_to_buffer_list_list_65536_47'
                                    139 ;tail                      Allocated with name '_append_to_buffer_list_tail_131072_50'
                                    140 ;sloc0                     Allocated with name '_append_to_buffer_list_sloc0_1_0'
                                    141 ;------------------------------------------------------------
                                    142 ;	src/linked_list.c:14: bool append_to_buffer_list(buffer_list_t *list, buffer_t *buffer)
                                    143 ;	-----------------------------------------
                                    144 ;	 function append_to_buffer_list
                                    145 ;	-----------------------------------------
      0023AD                        146 _append_to_buffer_list:
                           000007   147 	ar7 = 0x07
                           000006   148 	ar6 = 0x06
                           000005   149 	ar5 = 0x05
                           000004   150 	ar4 = 0x04
                           000003   151 	ar3 = 0x03
                           000002   152 	ar2 = 0x02
                           000001   153 	ar1 = 0x01
                           000000   154 	ar0 = 0x00
      0023AD AF F0            [24]  155 	mov	r7,b
      0023AF AE 83            [24]  156 	mov	r6,dph
      0023B1 E5 82            [12]  157 	mov	a,dpl
      0023B3 90 20 15         [24]  158 	mov	dptr,#_append_to_buffer_list_list_65536_47
      0023B6 F0               [24]  159 	movx	@dptr,a
      0023B7 EE               [12]  160 	mov	a,r6
      0023B8 A3               [24]  161 	inc	dptr
      0023B9 F0               [24]  162 	movx	@dptr,a
      0023BA EF               [12]  163 	mov	a,r7
      0023BB A3               [24]  164 	inc	dptr
      0023BC F0               [24]  165 	movx	@dptr,a
                                    166 ;	src/linked_list.c:16: if (list->head == NULL) 
      0023BD 90 20 15         [24]  167 	mov	dptr,#_append_to_buffer_list_list_65536_47
      0023C0 E0               [24]  168 	movx	a,@dptr
      0023C1 F5 1B            [12]  169 	mov	_append_to_buffer_list_sloc0_1_0,a
      0023C3 A3               [24]  170 	inc	dptr
      0023C4 E0               [24]  171 	movx	a,@dptr
      0023C5 F5 1C            [12]  172 	mov	(_append_to_buffer_list_sloc0_1_0 + 1),a
      0023C7 A3               [24]  173 	inc	dptr
      0023C8 E0               [24]  174 	movx	a,@dptr
      0023C9 F5 1D            [12]  175 	mov	(_append_to_buffer_list_sloc0_1_0 + 2),a
      0023CB 85 1B 82         [24]  176 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      0023CE 85 1C 83         [24]  177 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      0023D1 85 1D F0         [24]  178 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      0023D4 12 36 83         [24]  179 	lcall	__gptrget
      0023D7 FA               [12]  180 	mov	r2,a
      0023D8 A3               [24]  181 	inc	dptr
      0023D9 12 36 83         [24]  182 	lcall	__gptrget
      0023DC FB               [12]  183 	mov	r3,a
      0023DD A3               [24]  184 	inc	dptr
      0023DE 12 36 83         [24]  185 	lcall	__gptrget
      0023E1 FC               [12]  186 	mov	r4,a
      0023E2 EA               [12]  187 	mov	a,r2
      0023E3 4B               [12]  188 	orl	a,r3
      0023E4 70 24            [24]  189 	jnz	00105$
                                    190 ;	src/linked_list.c:18: list->head = buffer; 
      0023E6 90 20 12         [24]  191 	mov	dptr,#_append_to_buffer_list_PARM_2
      0023E9 E0               [24]  192 	movx	a,@dptr
      0023EA F8               [12]  193 	mov	r0,a
      0023EB A3               [24]  194 	inc	dptr
      0023EC E0               [24]  195 	movx	a,@dptr
      0023ED F9               [12]  196 	mov	r1,a
      0023EE A3               [24]  197 	inc	dptr
      0023EF E0               [24]  198 	movx	a,@dptr
      0023F0 FF               [12]  199 	mov	r7,a
      0023F1 85 1B 82         [24]  200 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      0023F4 85 1C 83         [24]  201 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      0023F7 85 1D F0         [24]  202 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      0023FA E8               [12]  203 	mov	a,r0
      0023FB 12 2A 29         [24]  204 	lcall	__gptrput
      0023FE A3               [24]  205 	inc	dptr
      0023FF E9               [12]  206 	mov	a,r1
      002400 12 2A 29         [24]  207 	lcall	__gptrput
      002403 A3               [24]  208 	inc	dptr
      002404 EF               [12]  209 	mov	a,r7
      002405 12 2A 29         [24]  210 	lcall	__gptrput
      002408 80 61            [24]  211 	sjmp	00106$
      00240A                        212 00105$:
                                    213 ;	src/linked_list.c:22: buffer_t *tail = list->head;
      00240A 90 20 18         [24]  214 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      00240D EA               [12]  215 	mov	a,r2
      00240E F0               [24]  216 	movx	@dptr,a
      00240F EB               [12]  217 	mov	a,r3
      002410 A3               [24]  218 	inc	dptr
      002411 F0               [24]  219 	movx	@dptr,a
      002412 EC               [12]  220 	mov	a,r4
      002413 A3               [24]  221 	inc	dptr
      002414 F0               [24]  222 	movx	@dptr,a
                                    223 ;	src/linked_list.c:23: while(tail->next != NULL)
      002415                        224 00101$:
      002415 90 20 18         [24]  225 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      002418 E0               [24]  226 	movx	a,@dptr
      002419 FD               [12]  227 	mov	r5,a
      00241A A3               [24]  228 	inc	dptr
      00241B E0               [24]  229 	movx	a,@dptr
      00241C FE               [12]  230 	mov	r6,a
      00241D A3               [24]  231 	inc	dptr
      00241E E0               [24]  232 	movx	a,@dptr
      00241F FF               [12]  233 	mov	r7,a
      002420 74 08            [12]  234 	mov	a,#0x08
      002422 2D               [12]  235 	add	a,r5
      002423 FD               [12]  236 	mov	r5,a
      002424 E4               [12]  237 	clr	a
      002425 3E               [12]  238 	addc	a,r6
      002426 FE               [12]  239 	mov	r6,a
      002427 8D 82            [24]  240 	mov	dpl,r5
      002429 8E 83            [24]  241 	mov	dph,r6
      00242B 8F F0            [24]  242 	mov	b,r7
      00242D 12 36 83         [24]  243 	lcall	__gptrget
      002430 FA               [12]  244 	mov	r2,a
      002431 A3               [24]  245 	inc	dptr
      002432 12 36 83         [24]  246 	lcall	__gptrget
      002435 FB               [12]  247 	mov	r3,a
      002436 A3               [24]  248 	inc	dptr
      002437 12 36 83         [24]  249 	lcall	__gptrget
      00243A FC               [12]  250 	mov	r4,a
      00243B EA               [12]  251 	mov	a,r2
      00243C 4B               [12]  252 	orl	a,r3
      00243D 60 0D            [24]  253 	jz	00103$
                                    254 ;	src/linked_list.c:25: tail = tail->next;
      00243F 90 20 18         [24]  255 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      002442 EA               [12]  256 	mov	a,r2
      002443 F0               [24]  257 	movx	@dptr,a
      002444 EB               [12]  258 	mov	a,r3
      002445 A3               [24]  259 	inc	dptr
      002446 F0               [24]  260 	movx	@dptr,a
      002447 EC               [12]  261 	mov	a,r4
      002448 A3               [24]  262 	inc	dptr
      002449 F0               [24]  263 	movx	@dptr,a
      00244A 80 C9            [24]  264 	sjmp	00101$
      00244C                        265 00103$:
                                    266 ;	src/linked_list.c:27: tail->next = buffer;
      00244C 90 20 12         [24]  267 	mov	dptr,#_append_to_buffer_list_PARM_2
      00244F E0               [24]  268 	movx	a,@dptr
      002450 FA               [12]  269 	mov	r2,a
      002451 A3               [24]  270 	inc	dptr
      002452 E0               [24]  271 	movx	a,@dptr
      002453 FB               [12]  272 	mov	r3,a
      002454 A3               [24]  273 	inc	dptr
      002455 E0               [24]  274 	movx	a,@dptr
      002456 FC               [12]  275 	mov	r4,a
      002457 8D 82            [24]  276 	mov	dpl,r5
      002459 8E 83            [24]  277 	mov	dph,r6
      00245B 8F F0            [24]  278 	mov	b,r7
      00245D EA               [12]  279 	mov	a,r2
      00245E 12 2A 29         [24]  280 	lcall	__gptrput
      002461 A3               [24]  281 	inc	dptr
      002462 EB               [12]  282 	mov	a,r3
      002463 12 2A 29         [24]  283 	lcall	__gptrput
      002466 A3               [24]  284 	inc	dptr
      002467 EC               [12]  285 	mov	a,r4
      002468 12 2A 29         [24]  286 	lcall	__gptrput
      00246B                        287 00106$:
                                    288 ;	src/linked_list.c:29: buffer->next = NULL; 
      00246B 90 20 12         [24]  289 	mov	dptr,#_append_to_buffer_list_PARM_2
      00246E E0               [24]  290 	movx	a,@dptr
      00246F FD               [12]  291 	mov	r5,a
      002470 A3               [24]  292 	inc	dptr
      002471 E0               [24]  293 	movx	a,@dptr
      002472 FE               [12]  294 	mov	r6,a
      002473 A3               [24]  295 	inc	dptr
      002474 E0               [24]  296 	movx	a,@dptr
      002475 FF               [12]  297 	mov	r7,a
      002476 74 08            [12]  298 	mov	a,#0x08
      002478 2D               [12]  299 	add	a,r5
      002479 FD               [12]  300 	mov	r5,a
      00247A E4               [12]  301 	clr	a
      00247B 3E               [12]  302 	addc	a,r6
      00247C FE               [12]  303 	mov	r6,a
      00247D 8D 82            [24]  304 	mov	dpl,r5
      00247F 8E 83            [24]  305 	mov	dph,r6
      002481 8F F0            [24]  306 	mov	b,r7
      002483 E4               [12]  307 	clr	a
      002484 12 2A 29         [24]  308 	lcall	__gptrput
      002487 A3               [24]  309 	inc	dptr
      002488 12 2A 29         [24]  310 	lcall	__gptrput
      00248B A3               [24]  311 	inc	dptr
      00248C 12 2A 29         [24]  312 	lcall	__gptrput
                                    313 ;	src/linked_list.c:30: return true;
      00248F 75 82 01         [24]  314 	mov	dpl,#0x01
                                    315 ;	src/linked_list.c:31: }
      002492 22               [24]  316 	ret
                                    317 ;------------------------------------------------------------
                                    318 ;Allocation info for local variables in function 'remove_from_buffer_list'
                                    319 ;------------------------------------------------------------
                                    320 ;sloc0                     Allocated with name '_remove_from_buffer_list_sloc0_1_0'
                                    321 ;idx                       Allocated with name '_remove_from_buffer_list_PARM_2'
                                    322 ;list                      Allocated with name '_remove_from_buffer_list_list_65536_52'
                                    323 ;to_free                   Allocated with name '_remove_from_buffer_list_to_free_65537_54'
                                    324 ;prev                      Allocated with name '_remove_from_buffer_list_prev_131073_56'
                                    325 ;------------------------------------------------------------
                                    326 ;	src/linked_list.c:34: bool remove_from_buffer_list(buffer_list_t *list, size_t idx)
                                    327 ;	-----------------------------------------
                                    328 ;	 function remove_from_buffer_list
                                    329 ;	-----------------------------------------
      002493                        330 _remove_from_buffer_list:
      002493 AF F0            [24]  331 	mov	r7,b
      002495 AE 83            [24]  332 	mov	r6,dph
      002497 E5 82            [12]  333 	mov	a,dpl
      002499 90 20 1D         [24]  334 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      00249C F0               [24]  335 	movx	@dptr,a
      00249D EE               [12]  336 	mov	a,r6
      00249E A3               [24]  337 	inc	dptr
      00249F F0               [24]  338 	movx	@dptr,a
      0024A0 EF               [12]  339 	mov	a,r7
      0024A1 A3               [24]  340 	inc	dptr
      0024A2 F0               [24]  341 	movx	@dptr,a
                                    342 ;	src/linked_list.c:36: if (list == NULL) return false;
      0024A3 90 20 1D         [24]  343 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      0024A6 E0               [24]  344 	movx	a,@dptr
      0024A7 F5 08            [12]  345 	mov	_remove_from_buffer_list_sloc0_1_0,a
      0024A9 A3               [24]  346 	inc	dptr
      0024AA E0               [24]  347 	movx	a,@dptr
      0024AB F5 09            [12]  348 	mov	(_remove_from_buffer_list_sloc0_1_0 + 1),a
      0024AD A3               [24]  349 	inc	dptr
      0024AE E0               [24]  350 	movx	a,@dptr
      0024AF F5 0A            [12]  351 	mov	(_remove_from_buffer_list_sloc0_1_0 + 2),a
      0024B1 E5 08            [12]  352 	mov	a,_remove_from_buffer_list_sloc0_1_0
      0024B3 45 09            [12]  353 	orl	a,(_remove_from_buffer_list_sloc0_1_0 + 1)
      0024B5 70 03            [24]  354 	jnz	00102$
      0024B7 F5 82            [12]  355 	mov	dpl,a
      0024B9 22               [24]  356 	ret
      0024BA                        357 00102$:
                                    358 ;	src/linked_list.c:37: if (list->head == NULL) return false;
      0024BA 85 08 82         [24]  359 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      0024BD 85 09 83         [24]  360 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      0024C0 85 0A F0         [24]  361 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      0024C3 12 36 83         [24]  362 	lcall	__gptrget
      0024C6 FA               [12]  363 	mov	r2,a
      0024C7 A3               [24]  364 	inc	dptr
      0024C8 12 36 83         [24]  365 	lcall	__gptrget
      0024CB FB               [12]  366 	mov	r3,a
      0024CC A3               [24]  367 	inc	dptr
      0024CD 12 36 83         [24]  368 	lcall	__gptrget
      0024D0 FC               [12]  369 	mov	r4,a
      0024D1 EA               [12]  370 	mov	a,r2
      0024D2 4B               [12]  371 	orl	a,r3
      0024D3 70 03            [24]  372 	jnz	00104$
      0024D5 F5 82            [12]  373 	mov	dpl,a
      0024D7 22               [24]  374 	ret
      0024D8                        375 00104$:
                                    376 ;	src/linked_list.c:40: if (idx == 0)
      0024D8 90 20 1B         [24]  377 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0024DB E0               [24]  378 	movx	a,@dptr
      0024DC F8               [12]  379 	mov	r0,a
      0024DD A3               [24]  380 	inc	dptr
      0024DE E0               [24]  381 	movx	a,@dptr
      0024DF F9               [12]  382 	mov	r1,a
      0024E0 90 20 1B         [24]  383 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0024E3 E0               [24]  384 	movx	a,@dptr
      0024E4 F5 F0            [12]  385 	mov	b,a
      0024E6 A3               [24]  386 	inc	dptr
      0024E7 E0               [24]  387 	movx	a,@dptr
      0024E8 45 F0            [12]  388 	orl	a,b
      0024EA 70 42            [24]  389 	jnz	00112$
                                    390 ;	src/linked_list.c:43: to_free = list->head;
      0024EC 90 20 20         [24]  391 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      0024EF EA               [12]  392 	mov	a,r2
      0024F0 F0               [24]  393 	movx	@dptr,a
      0024F1 EB               [12]  394 	mov	a,r3
      0024F2 A3               [24]  395 	inc	dptr
      0024F3 F0               [24]  396 	movx	@dptr,a
      0024F4 EC               [12]  397 	mov	a,r4
      0024F5 A3               [24]  398 	inc	dptr
      0024F6 F0               [24]  399 	movx	@dptr,a
                                    400 ;	src/linked_list.c:44: list->head = list->head->next;  
      0024F7 74 08            [12]  401 	mov	a,#0x08
      0024F9 2A               [12]  402 	add	a,r2
      0024FA FD               [12]  403 	mov	r5,a
      0024FB E4               [12]  404 	clr	a
      0024FC 3B               [12]  405 	addc	a,r3
      0024FD FE               [12]  406 	mov	r6,a
      0024FE 8C 07            [24]  407 	mov	ar7,r4
      002500 8D 82            [24]  408 	mov	dpl,r5
      002502 8E 83            [24]  409 	mov	dph,r6
      002504 8F F0            [24]  410 	mov	b,r7
      002506 12 36 83         [24]  411 	lcall	__gptrget
      002509 FD               [12]  412 	mov	r5,a
      00250A A3               [24]  413 	inc	dptr
      00250B 12 36 83         [24]  414 	lcall	__gptrget
      00250E FE               [12]  415 	mov	r6,a
      00250F A3               [24]  416 	inc	dptr
      002510 12 36 83         [24]  417 	lcall	__gptrget
      002513 FF               [12]  418 	mov	r7,a
      002514 85 08 82         [24]  419 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      002517 85 09 83         [24]  420 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      00251A 85 0A F0         [24]  421 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      00251D ED               [12]  422 	mov	a,r5
      00251E 12 2A 29         [24]  423 	lcall	__gptrput
      002521 A3               [24]  424 	inc	dptr
      002522 EE               [12]  425 	mov	a,r6
      002523 12 2A 29         [24]  426 	lcall	__gptrput
      002526 A3               [24]  427 	inc	dptr
      002527 EF               [12]  428 	mov	a,r7
      002528 12 2A 29         [24]  429 	lcall	__gptrput
      00252B 02 25 F6         [24]  430 	ljmp	00113$
      00252E                        431 00112$:
                                    432 ;	src/linked_list.c:48: buffer_t *prev = list->head;
      00252E 90 20 23         [24]  433 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      002531 EA               [12]  434 	mov	a,r2
      002532 F0               [24]  435 	movx	@dptr,a
      002533 EB               [12]  436 	mov	a,r3
      002534 A3               [24]  437 	inc	dptr
      002535 F0               [24]  438 	movx	@dptr,a
      002536 EC               [12]  439 	mov	a,r4
      002537 A3               [24]  440 	inc	dptr
      002538 F0               [24]  441 	movx	@dptr,a
                                    442 ;	src/linked_list.c:49: idx--;
      002539 18               [12]  443 	dec	r0
      00253A B8 FF 01         [24]  444 	cjne	r0,#0xff,00160$
      00253D 19               [12]  445 	dec	r1
      00253E                        446 00160$:
      00253E 90 20 1B         [24]  447 	mov	dptr,#_remove_from_buffer_list_PARM_2
      002541 E8               [12]  448 	mov	a,r0
      002542 F0               [24]  449 	movx	@dptr,a
      002543 E9               [12]  450 	mov	a,r1
      002544 A3               [24]  451 	inc	dptr
      002545 F0               [24]  452 	movx	@dptr,a
                                    453 ;	src/linked_list.c:50: while(idx > 0 && prev->next != NULL)
      002546 90 20 1B         [24]  454 	mov	dptr,#_remove_from_buffer_list_PARM_2
      002549 E0               [24]  455 	movx	a,@dptr
      00254A FE               [12]  456 	mov	r6,a
      00254B A3               [24]  457 	inc	dptr
      00254C E0               [24]  458 	movx	a,@dptr
      00254D FF               [12]  459 	mov	r7,a
      00254E                        460 00106$:
      00254E EE               [12]  461 	mov	a,r6
      00254F 4F               [12]  462 	orl	a,r7
      002550 60 3C            [24]  463 	jz	00108$
      002552 90 20 23         [24]  464 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      002555 E0               [24]  465 	movx	a,@dptr
      002556 FB               [12]  466 	mov	r3,a
      002557 A3               [24]  467 	inc	dptr
      002558 E0               [24]  468 	movx	a,@dptr
      002559 FC               [12]  469 	mov	r4,a
      00255A A3               [24]  470 	inc	dptr
      00255B E0               [24]  471 	movx	a,@dptr
      00255C FD               [12]  472 	mov	r5,a
      00255D 74 08            [12]  473 	mov	a,#0x08
      00255F 2B               [12]  474 	add	a,r3
      002560 FB               [12]  475 	mov	r3,a
      002561 E4               [12]  476 	clr	a
      002562 3C               [12]  477 	addc	a,r4
      002563 FC               [12]  478 	mov	r4,a
      002564 8B 82            [24]  479 	mov	dpl,r3
      002566 8C 83            [24]  480 	mov	dph,r4
      002568 8D F0            [24]  481 	mov	b,r5
      00256A 12 36 83         [24]  482 	lcall	__gptrget
      00256D FB               [12]  483 	mov	r3,a
      00256E A3               [24]  484 	inc	dptr
      00256F 12 36 83         [24]  485 	lcall	__gptrget
      002572 FC               [12]  486 	mov	r4,a
      002573 A3               [24]  487 	inc	dptr
      002574 12 36 83         [24]  488 	lcall	__gptrget
      002577 FD               [12]  489 	mov	r5,a
      002578 EB               [12]  490 	mov	a,r3
      002579 4C               [12]  491 	orl	a,r4
      00257A 60 12            [24]  492 	jz	00108$
                                    493 ;	src/linked_list.c:52: prev = prev->next;
      00257C 90 20 23         [24]  494 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      00257F EB               [12]  495 	mov	a,r3
      002580 F0               [24]  496 	movx	@dptr,a
      002581 EC               [12]  497 	mov	a,r4
      002582 A3               [24]  498 	inc	dptr
      002583 F0               [24]  499 	movx	@dptr,a
      002584 ED               [12]  500 	mov	a,r5
      002585 A3               [24]  501 	inc	dptr
      002586 F0               [24]  502 	movx	@dptr,a
                                    503 ;	src/linked_list.c:53: idx--;
      002587 1E               [12]  504 	dec	r6
      002588 BE FF 01         [24]  505 	cjne	r6,#0xff,00163$
      00258B 1F               [12]  506 	dec	r7
      00258C                        507 00163$:
      00258C 80 C0            [24]  508 	sjmp	00106$
      00258E                        509 00108$:
                                    510 ;	src/linked_list.c:56: if (idx != 0) return false;
      00258E EE               [12]  511 	mov	a,r6
      00258F 4F               [12]  512 	orl	a,r7
      002590 60 04            [24]  513 	jz	00110$
      002592 75 82 00         [24]  514 	mov	dpl,#0x00
      002595 22               [24]  515 	ret
      002596                        516 00110$:
                                    517 ;	src/linked_list.c:57: to_free = prev->next;
      002596 90 20 23         [24]  518 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      002599 E0               [24]  519 	movx	a,@dptr
      00259A FD               [12]  520 	mov	r5,a
      00259B A3               [24]  521 	inc	dptr
      00259C E0               [24]  522 	movx	a,@dptr
      00259D FE               [12]  523 	mov	r6,a
      00259E A3               [24]  524 	inc	dptr
      00259F E0               [24]  525 	movx	a,@dptr
      0025A0 FF               [12]  526 	mov	r7,a
      0025A1 74 08            [12]  527 	mov	a,#0x08
      0025A3 2D               [12]  528 	add	a,r5
      0025A4 FD               [12]  529 	mov	r5,a
      0025A5 E4               [12]  530 	clr	a
      0025A6 3E               [12]  531 	addc	a,r6
      0025A7 FE               [12]  532 	mov	r6,a
      0025A8 8D 82            [24]  533 	mov	dpl,r5
      0025AA 8E 83            [24]  534 	mov	dph,r6
      0025AC 8F F0            [24]  535 	mov	b,r7
      0025AE 12 36 83         [24]  536 	lcall	__gptrget
      0025B1 FA               [12]  537 	mov	r2,a
      0025B2 A3               [24]  538 	inc	dptr
      0025B3 12 36 83         [24]  539 	lcall	__gptrget
      0025B6 FB               [12]  540 	mov	r3,a
      0025B7 A3               [24]  541 	inc	dptr
      0025B8 12 36 83         [24]  542 	lcall	__gptrget
      0025BB FC               [12]  543 	mov	r4,a
      0025BC 90 20 20         [24]  544 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      0025BF EA               [12]  545 	mov	a,r2
      0025C0 F0               [24]  546 	movx	@dptr,a
      0025C1 EB               [12]  547 	mov	a,r3
      0025C2 A3               [24]  548 	inc	dptr
      0025C3 F0               [24]  549 	movx	@dptr,a
      0025C4 EC               [12]  550 	mov	a,r4
      0025C5 A3               [24]  551 	inc	dptr
      0025C6 F0               [24]  552 	movx	@dptr,a
                                    553 ;	src/linked_list.c:58: prev->next = to_free->next;
      0025C7 74 08            [12]  554 	mov	a,#0x08
      0025C9 2A               [12]  555 	add	a,r2
      0025CA FA               [12]  556 	mov	r2,a
      0025CB E4               [12]  557 	clr	a
      0025CC 3B               [12]  558 	addc	a,r3
      0025CD FB               [12]  559 	mov	r3,a
      0025CE 8A 82            [24]  560 	mov	dpl,r2
      0025D0 8B 83            [24]  561 	mov	dph,r3
      0025D2 8C F0            [24]  562 	mov	b,r4
      0025D4 12 36 83         [24]  563 	lcall	__gptrget
      0025D7 FA               [12]  564 	mov	r2,a
      0025D8 A3               [24]  565 	inc	dptr
      0025D9 12 36 83         [24]  566 	lcall	__gptrget
      0025DC FB               [12]  567 	mov	r3,a
      0025DD A3               [24]  568 	inc	dptr
      0025DE 12 36 83         [24]  569 	lcall	__gptrget
      0025E1 FC               [12]  570 	mov	r4,a
      0025E2 8D 82            [24]  571 	mov	dpl,r5
      0025E4 8E 83            [24]  572 	mov	dph,r6
      0025E6 8F F0            [24]  573 	mov	b,r7
      0025E8 EA               [12]  574 	mov	a,r2
      0025E9 12 2A 29         [24]  575 	lcall	__gptrput
      0025EC A3               [24]  576 	inc	dptr
      0025ED EB               [12]  577 	mov	a,r3
      0025EE 12 2A 29         [24]  578 	lcall	__gptrput
      0025F1 A3               [24]  579 	inc	dptr
      0025F2 EC               [12]  580 	mov	a,r4
      0025F3 12 2A 29         [24]  581 	lcall	__gptrput
      0025F6                        582 00113$:
                                    583 ;	src/linked_list.c:61: if (to_free == NULL) return false; 
      0025F6 90 20 20         [24]  584 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      0025F9 E0               [24]  585 	movx	a,@dptr
      0025FA FE               [12]  586 	mov	r6,a
      0025FB A3               [24]  587 	inc	dptr
      0025FC E0               [24]  588 	movx	a,@dptr
      0025FD FD               [12]  589 	mov	r5,a
      0025FE A3               [24]  590 	inc	dptr
      0025FF E0               [24]  591 	movx	a,@dptr
      002600 FF               [12]  592 	mov	r7,a
      002601 90 20 20         [24]  593 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002604 E0               [24]  594 	movx	a,@dptr
      002605 F5 F0            [12]  595 	mov	b,a
      002607 A3               [24]  596 	inc	dptr
      002608 E0               [24]  597 	movx	a,@dptr
      002609 45 F0            [12]  598 	orl	a,b
      00260B 70 03            [24]  599 	jnz	00115$
      00260D F5 82            [12]  600 	mov	dpl,a
      00260F 22               [24]  601 	ret
      002610                        602 00115$:
                                    603 ;	src/linked_list.c:62: if (to_free->buffer != NULL) 
      002610 8E 82            [24]  604 	mov	dpl,r6
      002612 8D 83            [24]  605 	mov	dph,r5
      002614 8F F0            [24]  606 	mov	b,r7
      002616 12 36 83         [24]  607 	lcall	__gptrget
      002619 FE               [12]  608 	mov	r6,a
      00261A A3               [24]  609 	inc	dptr
      00261B 12 36 83         [24]  610 	lcall	__gptrget
      00261E FF               [12]  611 	mov	r7,a
      00261F 4E               [12]  612 	orl	a,r6
      002620 60 0B            [24]  613 	jz	00117$
                                    614 ;	src/linked_list.c:64: free(to_free->buffer);
      002622 7D 00            [12]  615 	mov	r5,#0x00
      002624 8E 82            [24]  616 	mov	dpl,r6
      002626 8F 83            [24]  617 	mov	dph,r7
      002628 8D F0            [24]  618 	mov	b,r5
      00262A 12 28 AA         [24]  619 	lcall	_free
      00262D                        620 00117$:
                                    621 ;	src/linked_list.c:66: free(to_free);
      00262D 90 20 20         [24]  622 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002630 E0               [24]  623 	movx	a,@dptr
      002631 FD               [12]  624 	mov	r5,a
      002632 A3               [24]  625 	inc	dptr
      002633 E0               [24]  626 	movx	a,@dptr
      002634 FE               [12]  627 	mov	r6,a
      002635 A3               [24]  628 	inc	dptr
      002636 E0               [24]  629 	movx	a,@dptr
      002637 FF               [12]  630 	mov	r7,a
      002638 8D 82            [24]  631 	mov	dpl,r5
      00263A 8E 83            [24]  632 	mov	dph,r6
      00263C 8F F0            [24]  633 	mov	b,r7
      00263E 12 28 AA         [24]  634 	lcall	_free
                                    635 ;	src/linked_list.c:67: return true; 
      002641 75 82 01         [24]  636 	mov	dpl,#0x01
                                    637 ;	src/linked_list.c:68: }
      002644 22               [24]  638 	ret
                                    639 ;------------------------------------------------------------
                                    640 ;Allocation info for local variables in function 'free_all_elems_from_list'
                                    641 ;------------------------------------------------------------
                                    642 ;sloc0                     Allocated with name '_free_all_elems_from_list_sloc0_1_0'
                                    643 ;list                      Allocated with name '_free_all_elems_from_list_list_65536_59'
                                    644 ;buffer_to_free            Allocated with name '_free_all_elems_from_list_buffer_to_free_65536_60'
                                    645 ;------------------------------------------------------------
                                    646 ;	src/linked_list.c:70: void free_all_elems_from_list(buffer_list_t *list)
                                    647 ;	-----------------------------------------
                                    648 ;	 function free_all_elems_from_list
                                    649 ;	-----------------------------------------
      002645                        650 _free_all_elems_from_list:
      002645 AF F0            [24]  651 	mov	r7,b
      002647 AE 83            [24]  652 	mov	r6,dph
      002649 E5 82            [12]  653 	mov	a,dpl
      00264B 90 20 26         [24]  654 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      00264E F0               [24]  655 	movx	@dptr,a
      00264F EE               [12]  656 	mov	a,r6
      002650 A3               [24]  657 	inc	dptr
      002651 F0               [24]  658 	movx	@dptr,a
      002652 EF               [12]  659 	mov	a,r7
      002653 A3               [24]  660 	inc	dptr
      002654 F0               [24]  661 	movx	@dptr,a
                                    662 ;	src/linked_list.c:72: buffer_t *buffer_to_free = list->head;
      002655 90 20 26         [24]  663 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      002658 E0               [24]  664 	movx	a,@dptr
      002659 FD               [12]  665 	mov	r5,a
      00265A A3               [24]  666 	inc	dptr
      00265B E0               [24]  667 	movx	a,@dptr
      00265C FE               [12]  668 	mov	r6,a
      00265D A3               [24]  669 	inc	dptr
      00265E E0               [24]  670 	movx	a,@dptr
      00265F FF               [12]  671 	mov	r7,a
      002660 8D 82            [24]  672 	mov	dpl,r5
      002662 8E 83            [24]  673 	mov	dph,r6
      002664 8F F0            [24]  674 	mov	b,r7
      002666 12 36 83         [24]  675 	lcall	__gptrget
      002669 FA               [12]  676 	mov	r2,a
      00266A A3               [24]  677 	inc	dptr
      00266B 12 36 83         [24]  678 	lcall	__gptrget
      00266E FB               [12]  679 	mov	r3,a
      00266F A3               [24]  680 	inc	dptr
      002670 12 36 83         [24]  681 	lcall	__gptrget
      002673 FC               [12]  682 	mov	r4,a
      002674 90 20 29         [24]  683 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      002677 EA               [12]  684 	mov	a,r2
      002678 F0               [24]  685 	movx	@dptr,a
      002679 EB               [12]  686 	mov	a,r3
      00267A A3               [24]  687 	inc	dptr
      00267B F0               [24]  688 	movx	@dptr,a
      00267C EC               [12]  689 	mov	a,r4
      00267D A3               [24]  690 	inc	dptr
      00267E F0               [24]  691 	movx	@dptr,a
                                    692 ;	src/linked_list.c:73: while(list->head != NULL)
      00267F                        693 00103$:
      00267F 90 20 26         [24]  694 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      002682 E0               [24]  695 	movx	a,@dptr
      002683 FA               [12]  696 	mov	r2,a
      002684 A3               [24]  697 	inc	dptr
      002685 E0               [24]  698 	movx	a,@dptr
      002686 FB               [12]  699 	mov	r3,a
      002687 A3               [24]  700 	inc	dptr
      002688 E0               [24]  701 	movx	a,@dptr
      002689 FC               [12]  702 	mov	r4,a
      00268A 8A 82            [24]  703 	mov	dpl,r2
      00268C 8B 83            [24]  704 	mov	dph,r3
      00268E 8C F0            [24]  705 	mov	b,r4
      002690 12 36 83         [24]  706 	lcall	__gptrget
      002693 F5 0B            [12]  707 	mov	_free_all_elems_from_list_sloc0_1_0,a
      002695 A3               [24]  708 	inc	dptr
      002696 12 36 83         [24]  709 	lcall	__gptrget
      002699 F5 0C            [12]  710 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      00269B A3               [24]  711 	inc	dptr
      00269C 12 36 83         [24]  712 	lcall	__gptrget
      00269F F5 0D            [12]  713 	mov	(_free_all_elems_from_list_sloc0_1_0 + 2),a
      0026A1 E5 0B            [12]  714 	mov	a,_free_all_elems_from_list_sloc0_1_0
      0026A3 45 0C            [12]  715 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0026A5 70 01            [24]  716 	jnz	00120$
      0026A7 22               [24]  717 	ret
      0026A8                        718 00120$:
                                    719 ;	src/linked_list.c:75: list->head = list->head->next;
      0026A8 C0 05            [24]  720 	push	ar5
      0026AA C0 06            [24]  721 	push	ar6
      0026AC C0 07            [24]  722 	push	ar7
      0026AE 74 08            [12]  723 	mov	a,#0x08
      0026B0 25 0B            [12]  724 	add	a,_free_all_elems_from_list_sloc0_1_0
      0026B2 F8               [12]  725 	mov	r0,a
      0026B3 E4               [12]  726 	clr	a
      0026B4 35 0C            [12]  727 	addc	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0026B6 F9               [12]  728 	mov	r1,a
      0026B7 AF 0D            [24]  729 	mov	r7,(_free_all_elems_from_list_sloc0_1_0 + 2)
      0026B9 88 82            [24]  730 	mov	dpl,r0
      0026BB 89 83            [24]  731 	mov	dph,r1
      0026BD 8F F0            [24]  732 	mov	b,r7
      0026BF 12 36 83         [24]  733 	lcall	__gptrget
      0026C2 F8               [12]  734 	mov	r0,a
      0026C3 A3               [24]  735 	inc	dptr
      0026C4 12 36 83         [24]  736 	lcall	__gptrget
      0026C7 F9               [12]  737 	mov	r1,a
      0026C8 A3               [24]  738 	inc	dptr
      0026C9 12 36 83         [24]  739 	lcall	__gptrget
      0026CC FF               [12]  740 	mov	r7,a
      0026CD 8A 82            [24]  741 	mov	dpl,r2
      0026CF 8B 83            [24]  742 	mov	dph,r3
      0026D1 8C F0            [24]  743 	mov	b,r4
      0026D3 E8               [12]  744 	mov	a,r0
      0026D4 12 2A 29         [24]  745 	lcall	__gptrput
      0026D7 A3               [24]  746 	inc	dptr
      0026D8 E9               [12]  747 	mov	a,r1
      0026D9 12 2A 29         [24]  748 	lcall	__gptrput
      0026DC A3               [24]  749 	inc	dptr
      0026DD EF               [12]  750 	mov	a,r7
      0026DE 12 2A 29         [24]  751 	lcall	__gptrput
                                    752 ;	src/linked_list.c:76: if (buffer_to_free->buffer != NULL)
      0026E1 90 20 29         [24]  753 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      0026E4 E0               [24]  754 	movx	a,@dptr
      0026E5 FD               [12]  755 	mov	r5,a
      0026E6 A3               [24]  756 	inc	dptr
      0026E7 E0               [24]  757 	movx	a,@dptr
      0026E8 FE               [12]  758 	mov	r6,a
      0026E9 A3               [24]  759 	inc	dptr
      0026EA E0               [24]  760 	movx	a,@dptr
      0026EB FF               [12]  761 	mov	r7,a
      0026EC 8D 82            [24]  762 	mov	dpl,r5
      0026EE 8E 83            [24]  763 	mov	dph,r6
      0026F0 8F F0            [24]  764 	mov	b,r7
      0026F2 12 36 83         [24]  765 	lcall	__gptrget
      0026F5 F5 0B            [12]  766 	mov	_free_all_elems_from_list_sloc0_1_0,a
      0026F7 A3               [24]  767 	inc	dptr
      0026F8 12 36 83         [24]  768 	lcall	__gptrget
      0026FB F5 0C            [12]  769 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      0026FD D0 07            [24]  770 	pop	ar7
      0026FF D0 06            [24]  771 	pop	ar6
      002701 D0 05            [24]  772 	pop	ar5
      002703 E5 0B            [12]  773 	mov	a,_free_all_elems_from_list_sloc0_1_0
      002705 45 0C            [12]  774 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      002707 60 1B            [24]  775 	jz	00102$
                                    776 ;	src/linked_list.c:78: free(buffer_to_free->buffer);
      002709 AB 0B            [24]  777 	mov	r3,_free_all_elems_from_list_sloc0_1_0
      00270B AC 0C            [24]  778 	mov	r4,(_free_all_elems_from_list_sloc0_1_0 + 1)
      00270D 7A 00            [12]  779 	mov	r2,#0x00
      00270F 8B 82            [24]  780 	mov	dpl,r3
      002711 8C 83            [24]  781 	mov	dph,r4
      002713 8A F0            [24]  782 	mov	b,r2
      002715 C0 07            [24]  783 	push	ar7
      002717 C0 06            [24]  784 	push	ar6
      002719 C0 05            [24]  785 	push	ar5
      00271B 12 28 AA         [24]  786 	lcall	_free
      00271E D0 05            [24]  787 	pop	ar5
      002720 D0 06            [24]  788 	pop	ar6
      002722 D0 07            [24]  789 	pop	ar7
      002724                        790 00102$:
                                    791 ;	src/linked_list.c:80: free(buffer_to_free);
      002724 90 20 29         [24]  792 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      002727 E0               [24]  793 	movx	a,@dptr
      002728 FA               [12]  794 	mov	r2,a
      002729 A3               [24]  795 	inc	dptr
      00272A E0               [24]  796 	movx	a,@dptr
      00272B FB               [12]  797 	mov	r3,a
      00272C A3               [24]  798 	inc	dptr
      00272D E0               [24]  799 	movx	a,@dptr
      00272E FC               [12]  800 	mov	r4,a
      00272F 8A 82            [24]  801 	mov	dpl,r2
      002731 8B 83            [24]  802 	mov	dph,r3
      002733 8C F0            [24]  803 	mov	b,r4
      002735 C0 07            [24]  804 	push	ar7
      002737 C0 06            [24]  805 	push	ar6
      002739 C0 05            [24]  806 	push	ar5
      00273B 12 28 AA         [24]  807 	lcall	_free
      00273E D0 05            [24]  808 	pop	ar5
      002740 D0 06            [24]  809 	pop	ar6
      002742 D0 07            [24]  810 	pop	ar7
                                    811 ;	src/linked_list.c:81: buffer_to_free = list->head;
      002744 8D 82            [24]  812 	mov	dpl,r5
      002746 8E 83            [24]  813 	mov	dph,r6
      002748 8F F0            [24]  814 	mov	b,r7
      00274A 12 36 83         [24]  815 	lcall	__gptrget
      00274D FA               [12]  816 	mov	r2,a
      00274E A3               [24]  817 	inc	dptr
      00274F 12 36 83         [24]  818 	lcall	__gptrget
      002752 FB               [12]  819 	mov	r3,a
      002753 A3               [24]  820 	inc	dptr
      002754 12 36 83         [24]  821 	lcall	__gptrget
      002757 FC               [12]  822 	mov	r4,a
      002758 90 20 29         [24]  823 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      00275B EA               [12]  824 	mov	a,r2
      00275C F0               [24]  825 	movx	@dptr,a
      00275D EB               [12]  826 	mov	a,r3
      00275E A3               [24]  827 	inc	dptr
      00275F F0               [24]  828 	movx	@dptr,a
      002760 EC               [12]  829 	mov	a,r4
      002761 A3               [24]  830 	inc	dptr
      002762 F0               [24]  831 	movx	@dptr,a
                                    832 ;	src/linked_list.c:83: }
      002763 02 26 7F         [24]  833 	ljmp	00103$
                                    834 ;------------------------------------------------------------
                                    835 ;Allocation info for local variables in function 'll_length'
                                    836 ;------------------------------------------------------------
                                    837 ;list                      Allocated with name '_ll_length_list_65536_63'
                                    838 ;size                      Allocated with name '_ll_length_size_65536_64'
                                    839 ;curr                      Allocated with name '_ll_length_curr_65536_64'
                                    840 ;------------------------------------------------------------
                                    841 ;	src/linked_list.c:85: size_t ll_length(buffer_list_t *list)
                                    842 ;	-----------------------------------------
                                    843 ;	 function ll_length
                                    844 ;	-----------------------------------------
      002766                        845 _ll_length:
      002766 AF F0            [24]  846 	mov	r7,b
      002768 AE 83            [24]  847 	mov	r6,dph
      00276A E5 82            [12]  848 	mov	a,dpl
      00276C 90 20 2C         [24]  849 	mov	dptr,#_ll_length_list_65536_63
      00276F F0               [24]  850 	movx	@dptr,a
      002770 EE               [12]  851 	mov	a,r6
      002771 A3               [24]  852 	inc	dptr
      002772 F0               [24]  853 	movx	@dptr,a
      002773 EF               [12]  854 	mov	a,r7
      002774 A3               [24]  855 	inc	dptr
      002775 F0               [24]  856 	movx	@dptr,a
                                    857 ;	src/linked_list.c:88: buffer_t *curr = list->head;
      002776 90 20 2C         [24]  858 	mov	dptr,#_ll_length_list_65536_63
      002779 E0               [24]  859 	movx	a,@dptr
      00277A FD               [12]  860 	mov	r5,a
      00277B A3               [24]  861 	inc	dptr
      00277C E0               [24]  862 	movx	a,@dptr
      00277D FE               [12]  863 	mov	r6,a
      00277E A3               [24]  864 	inc	dptr
      00277F E0               [24]  865 	movx	a,@dptr
      002780 FF               [12]  866 	mov	r7,a
      002781 8D 82            [24]  867 	mov	dpl,r5
      002783 8E 83            [24]  868 	mov	dph,r6
      002785 8F F0            [24]  869 	mov	b,r7
      002787 12 36 83         [24]  870 	lcall	__gptrget
      00278A FD               [12]  871 	mov	r5,a
      00278B A3               [24]  872 	inc	dptr
      00278C 12 36 83         [24]  873 	lcall	__gptrget
      00278F FE               [12]  874 	mov	r6,a
      002790 A3               [24]  875 	inc	dptr
      002791 12 36 83         [24]  876 	lcall	__gptrget
      002794 FF               [12]  877 	mov	r7,a
      002795 90 20 31         [24]  878 	mov	dptr,#_ll_length_curr_65536_64
      002798 ED               [12]  879 	mov	a,r5
      002799 F0               [24]  880 	movx	@dptr,a
      00279A EE               [12]  881 	mov	a,r6
      00279B A3               [24]  882 	inc	dptr
      00279C F0               [24]  883 	movx	@dptr,a
      00279D EF               [12]  884 	mov	a,r7
      00279E A3               [24]  885 	inc	dptr
      00279F F0               [24]  886 	movx	@dptr,a
                                    887 ;	src/linked_list.c:89: while(curr != NULL)
      0027A0 90 20 2F         [24]  888 	mov	dptr,#_ll_length_size_65536_64
      0027A3 E0               [24]  889 	movx	a,@dptr
      0027A4 FE               [12]  890 	mov	r6,a
      0027A5 A3               [24]  891 	inc	dptr
      0027A6 E0               [24]  892 	movx	a,@dptr
      0027A7 FF               [12]  893 	mov	r7,a
      0027A8                        894 00101$:
      0027A8 90 20 31         [24]  895 	mov	dptr,#_ll_length_curr_65536_64
      0027AB E0               [24]  896 	movx	a,@dptr
      0027AC FB               [12]  897 	mov	r3,a
      0027AD A3               [24]  898 	inc	dptr
      0027AE E0               [24]  899 	movx	a,@dptr
      0027AF FC               [12]  900 	mov	r4,a
      0027B0 A3               [24]  901 	inc	dptr
      0027B1 E0               [24]  902 	movx	a,@dptr
      0027B2 FD               [12]  903 	mov	r5,a
      0027B3 90 20 31         [24]  904 	mov	dptr,#_ll_length_curr_65536_64
      0027B6 E0               [24]  905 	movx	a,@dptr
      0027B7 F5 F0            [12]  906 	mov	b,a
      0027B9 A3               [24]  907 	inc	dptr
      0027BA E0               [24]  908 	movx	a,@dptr
      0027BB 45 F0            [12]  909 	orl	a,b
      0027BD 60 2D            [24]  910 	jz	00103$
                                    911 ;	src/linked_list.c:91: size++;
      0027BF 0E               [12]  912 	inc	r6
      0027C0 BE 00 01         [24]  913 	cjne	r6,#0x00,00116$
      0027C3 0F               [12]  914 	inc	r7
      0027C4                        915 00116$:
                                    916 ;	src/linked_list.c:92: curr = curr->next;
      0027C4 74 08            [12]  917 	mov	a,#0x08
      0027C6 2B               [12]  918 	add	a,r3
      0027C7 FB               [12]  919 	mov	r3,a
      0027C8 E4               [12]  920 	clr	a
      0027C9 3C               [12]  921 	addc	a,r4
      0027CA FC               [12]  922 	mov	r4,a
      0027CB 8B 82            [24]  923 	mov	dpl,r3
      0027CD 8C 83            [24]  924 	mov	dph,r4
      0027CF 8D F0            [24]  925 	mov	b,r5
      0027D1 12 36 83         [24]  926 	lcall	__gptrget
      0027D4 FB               [12]  927 	mov	r3,a
      0027D5 A3               [24]  928 	inc	dptr
      0027D6 12 36 83         [24]  929 	lcall	__gptrget
      0027D9 FC               [12]  930 	mov	r4,a
      0027DA A3               [24]  931 	inc	dptr
      0027DB 12 36 83         [24]  932 	lcall	__gptrget
      0027DE FD               [12]  933 	mov	r5,a
      0027DF 90 20 31         [24]  934 	mov	dptr,#_ll_length_curr_65536_64
      0027E2 EB               [12]  935 	mov	a,r3
      0027E3 F0               [24]  936 	movx	@dptr,a
      0027E4 EC               [12]  937 	mov	a,r4
      0027E5 A3               [24]  938 	inc	dptr
      0027E6 F0               [24]  939 	movx	@dptr,a
      0027E7 ED               [12]  940 	mov	a,r5
      0027E8 A3               [24]  941 	inc	dptr
      0027E9 F0               [24]  942 	movx	@dptr,a
      0027EA 80 BC            [24]  943 	sjmp	00101$
      0027EC                        944 00103$:
                                    945 ;	src/linked_list.c:94: return size; 
      0027EC 8E 82            [24]  946 	mov	dpl,r6
      0027EE 8F 83            [24]  947 	mov	dph,r7
                                    948 ;	src/linked_list.c:95: }
      0027F0 22               [24]  949 	ret
                                    950 ;------------------------------------------------------------
                                    951 ;Allocation info for local variables in function 'll_get_elem'
                                    952 ;------------------------------------------------------------
                                    953 ;elem_num                  Allocated with name '_ll_get_elem_PARM_2'
                                    954 ;list                      Allocated with name '_ll_get_elem_list_65536_66'
                                    955 ;curr                      Allocated with name '_ll_get_elem_curr_65536_67'
                                    956 ;------------------------------------------------------------
                                    957 ;	src/linked_list.c:97: buffer_t* ll_get_elem(buffer_list_t *list, size_t elem_num)
                                    958 ;	-----------------------------------------
                                    959 ;	 function ll_get_elem
                                    960 ;	-----------------------------------------
      0027F1                        961 _ll_get_elem:
      0027F1 AF F0            [24]  962 	mov	r7,b
      0027F3 AE 83            [24]  963 	mov	r6,dph
      0027F5 E5 82            [12]  964 	mov	a,dpl
      0027F7 90 20 36         [24]  965 	mov	dptr,#_ll_get_elem_list_65536_66
      0027FA F0               [24]  966 	movx	@dptr,a
      0027FB EE               [12]  967 	mov	a,r6
      0027FC A3               [24]  968 	inc	dptr
      0027FD F0               [24]  969 	movx	@dptr,a
      0027FE EF               [12]  970 	mov	a,r7
      0027FF A3               [24]  971 	inc	dptr
      002800 F0               [24]  972 	movx	@dptr,a
                                    973 ;	src/linked_list.c:99: buffer_t *curr = list->head;
      002801 90 20 36         [24]  974 	mov	dptr,#_ll_get_elem_list_65536_66
      002804 E0               [24]  975 	movx	a,@dptr
      002805 FD               [12]  976 	mov	r5,a
      002806 A3               [24]  977 	inc	dptr
      002807 E0               [24]  978 	movx	a,@dptr
      002808 FE               [12]  979 	mov	r6,a
      002809 A3               [24]  980 	inc	dptr
      00280A E0               [24]  981 	movx	a,@dptr
      00280B FF               [12]  982 	mov	r7,a
      00280C 8D 82            [24]  983 	mov	dpl,r5
      00280E 8E 83            [24]  984 	mov	dph,r6
      002810 8F F0            [24]  985 	mov	b,r7
      002812 12 36 83         [24]  986 	lcall	__gptrget
      002815 FD               [12]  987 	mov	r5,a
      002816 A3               [24]  988 	inc	dptr
      002817 12 36 83         [24]  989 	lcall	__gptrget
      00281A FE               [12]  990 	mov	r6,a
      00281B A3               [24]  991 	inc	dptr
      00281C 12 36 83         [24]  992 	lcall	__gptrget
      00281F FF               [12]  993 	mov	r7,a
      002820 90 20 39         [24]  994 	mov	dptr,#_ll_get_elem_curr_65536_67
      002823 ED               [12]  995 	mov	a,r5
      002824 F0               [24]  996 	movx	@dptr,a
      002825 EE               [12]  997 	mov	a,r6
      002826 A3               [24]  998 	inc	dptr
      002827 F0               [24]  999 	movx	@dptr,a
      002828 EF               [12] 1000 	mov	a,r7
      002829 A3               [24] 1001 	inc	dptr
      00282A F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	src/linked_list.c:100: while(curr != NULL && elem_num > 0)
      00282B 90 20 34         [24] 1004 	mov	dptr,#_ll_get_elem_PARM_2
      00282E E0               [24] 1005 	movx	a,@dptr
      00282F FE               [12] 1006 	mov	r6,a
      002830 A3               [24] 1007 	inc	dptr
      002831 E0               [24] 1008 	movx	a,@dptr
      002832 FF               [12] 1009 	mov	r7,a
      002833                       1010 00102$:
      002833 90 20 39         [24] 1011 	mov	dptr,#_ll_get_elem_curr_65536_67
      002836 E0               [24] 1012 	movx	a,@dptr
      002837 FB               [12] 1013 	mov	r3,a
      002838 A3               [24] 1014 	inc	dptr
      002839 E0               [24] 1015 	movx	a,@dptr
      00283A FC               [12] 1016 	mov	r4,a
      00283B A3               [24] 1017 	inc	dptr
      00283C E0               [24] 1018 	movx	a,@dptr
      00283D FD               [12] 1019 	mov	r5,a
      00283E 90 20 39         [24] 1020 	mov	dptr,#_ll_get_elem_curr_65536_67
      002841 E0               [24] 1021 	movx	a,@dptr
      002842 F5 F0            [12] 1022 	mov	b,a
      002844 A3               [24] 1023 	inc	dptr
      002845 E0               [24] 1024 	movx	a,@dptr
      002846 45 F0            [12] 1025 	orl	a,b
      002848 60 31            [24] 1026 	jz	00104$
      00284A EE               [12] 1027 	mov	a,r6
      00284B 4F               [12] 1028 	orl	a,r7
      00284C 60 2D            [24] 1029 	jz	00104$
                                   1030 ;	src/linked_list.c:102: curr = curr->next;
      00284E 74 08            [12] 1031 	mov	a,#0x08
      002850 2B               [12] 1032 	add	a,r3
      002851 FB               [12] 1033 	mov	r3,a
      002852 E4               [12] 1034 	clr	a
      002853 3C               [12] 1035 	addc	a,r4
      002854 FC               [12] 1036 	mov	r4,a
      002855 8B 82            [24] 1037 	mov	dpl,r3
      002857 8C 83            [24] 1038 	mov	dph,r4
      002859 8D F0            [24] 1039 	mov	b,r5
      00285B 12 36 83         [24] 1040 	lcall	__gptrget
      00285E FB               [12] 1041 	mov	r3,a
      00285F A3               [24] 1042 	inc	dptr
      002860 12 36 83         [24] 1043 	lcall	__gptrget
      002863 FC               [12] 1044 	mov	r4,a
      002864 A3               [24] 1045 	inc	dptr
      002865 12 36 83         [24] 1046 	lcall	__gptrget
      002868 FD               [12] 1047 	mov	r5,a
      002869 90 20 39         [24] 1048 	mov	dptr,#_ll_get_elem_curr_65536_67
      00286C EB               [12] 1049 	mov	a,r3
      00286D F0               [24] 1050 	movx	@dptr,a
      00286E EC               [12] 1051 	mov	a,r4
      00286F A3               [24] 1052 	inc	dptr
      002870 F0               [24] 1053 	movx	@dptr,a
      002871 ED               [12] 1054 	mov	a,r5
      002872 A3               [24] 1055 	inc	dptr
      002873 F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	src/linked_list.c:103: elem_num--;
      002874 1E               [12] 1058 	dec	r6
      002875 BE FF 01         [24] 1059 	cjne	r6,#0xff,00122$
      002878 1F               [12] 1060 	dec	r7
      002879                       1061 00122$:
      002879 80 B8            [24] 1062 	sjmp	00102$
      00287B                       1063 00104$:
                                   1064 ;	src/linked_list.c:105: return curr;
      00287B 90 20 39         [24] 1065 	mov	dptr,#_ll_get_elem_curr_65536_67
      00287E E0               [24] 1066 	movx	a,@dptr
      00287F FD               [12] 1067 	mov	r5,a
      002880 A3               [24] 1068 	inc	dptr
      002881 E0               [24] 1069 	movx	a,@dptr
      002882 FE               [12] 1070 	mov	r6,a
      002883 A3               [24] 1071 	inc	dptr
      002884 E0               [24] 1072 	movx	a,@dptr
      002885 FF               [12] 1073 	mov	r7,a
      002886 8D 82            [24] 1074 	mov	dpl,r5
      002888 8E 83            [24] 1075 	mov	dph,r6
      00288A 8F F0            [24] 1076 	mov	b,r7
                                   1077 ;	src/linked_list.c:106: }
      00288C 22               [24] 1078 	ret
                                   1079 	.area CSEG    (CODE)
                                   1080 	.area CONST   (CODE)
                                   1081 	.area XINIT   (CODE)
                                   1082 	.area CABS    (ABS,CODE)
