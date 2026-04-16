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
      00201B                         70 _append_to_buffer_list_PARM_2:
      00201B                         71 	.ds 3
      00201E                         72 _append_to_buffer_list_list_65536_47:
      00201E                         73 	.ds 3
      002021                         74 _append_to_buffer_list_tail_131072_50:
      002021                         75 	.ds 3
      002024                         76 _remove_from_buffer_list_PARM_2:
      002024                         77 	.ds 2
      002026                         78 _remove_from_buffer_list_list_65536_52:
      002026                         79 	.ds 3
      002029                         80 _remove_from_buffer_list_to_free_65537_54:
      002029                         81 	.ds 3
      00202C                         82 _remove_from_buffer_list_prev_131073_56:
      00202C                         83 	.ds 3
      00202F                         84 _free_all_elems_from_list_list_65536_59:
      00202F                         85 	.ds 3
      002032                         86 _free_all_elems_from_list_buffer_to_free_65536_60:
      002032                         87 	.ds 3
      002035                         88 _ll_length_list_65536_63:
      002035                         89 	.ds 3
      002038                         90 _ll_length_size_65536_64:
      002038                         91 	.ds 2
      00203A                         92 _ll_length_curr_65536_64:
      00203A                         93 	.ds 3
      00203D                         94 _ll_get_elem_PARM_2:
      00203D                         95 	.ds 2
      00203F                         96 _ll_get_elem_list_65536_66:
      00203F                         97 	.ds 3
      002042                         98 _ll_get_elem_curr_65536_67:
      002042                         99 	.ds 3
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
      0023F6                        146 _append_to_buffer_list:
                           000007   147 	ar7 = 0x07
                           000006   148 	ar6 = 0x06
                           000005   149 	ar5 = 0x05
                           000004   150 	ar4 = 0x04
                           000003   151 	ar3 = 0x03
                           000002   152 	ar2 = 0x02
                           000001   153 	ar1 = 0x01
                           000000   154 	ar0 = 0x00
      0023F6 AF F0            [24]  155 	mov	r7,b
      0023F8 AE 83            [24]  156 	mov	r6,dph
      0023FA E5 82            [12]  157 	mov	a,dpl
      0023FC 90 20 1E         [24]  158 	mov	dptr,#_append_to_buffer_list_list_65536_47
      0023FF F0               [24]  159 	movx	@dptr,a
      002400 EE               [12]  160 	mov	a,r6
      002401 A3               [24]  161 	inc	dptr
      002402 F0               [24]  162 	movx	@dptr,a
      002403 EF               [12]  163 	mov	a,r7
      002404 A3               [24]  164 	inc	dptr
      002405 F0               [24]  165 	movx	@dptr,a
                                    166 ;	src/linked_list.c:16: if (list->head == NULL) 
      002406 90 20 1E         [24]  167 	mov	dptr,#_append_to_buffer_list_list_65536_47
      002409 E0               [24]  168 	movx	a,@dptr
      00240A F5 1B            [12]  169 	mov	_append_to_buffer_list_sloc0_1_0,a
      00240C A3               [24]  170 	inc	dptr
      00240D E0               [24]  171 	movx	a,@dptr
      00240E F5 1C            [12]  172 	mov	(_append_to_buffer_list_sloc0_1_0 + 1),a
      002410 A3               [24]  173 	inc	dptr
      002411 E0               [24]  174 	movx	a,@dptr
      002412 F5 1D            [12]  175 	mov	(_append_to_buffer_list_sloc0_1_0 + 2),a
      002414 85 1B 82         [24]  176 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      002417 85 1C 83         [24]  177 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      00241A 85 1D F0         [24]  178 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      00241D 12 38 94         [24]  179 	lcall	__gptrget
      002420 FA               [12]  180 	mov	r2,a
      002421 A3               [24]  181 	inc	dptr
      002422 12 38 94         [24]  182 	lcall	__gptrget
      002425 FB               [12]  183 	mov	r3,a
      002426 A3               [24]  184 	inc	dptr
      002427 12 38 94         [24]  185 	lcall	__gptrget
      00242A FC               [12]  186 	mov	r4,a
      00242B EA               [12]  187 	mov	a,r2
      00242C 4B               [12]  188 	orl	a,r3
      00242D 70 24            [24]  189 	jnz	00105$
                                    190 ;	src/linked_list.c:18: list->head = buffer; 
      00242F 90 20 1B         [24]  191 	mov	dptr,#_append_to_buffer_list_PARM_2
      002432 E0               [24]  192 	movx	a,@dptr
      002433 F8               [12]  193 	mov	r0,a
      002434 A3               [24]  194 	inc	dptr
      002435 E0               [24]  195 	movx	a,@dptr
      002436 F9               [12]  196 	mov	r1,a
      002437 A3               [24]  197 	inc	dptr
      002438 E0               [24]  198 	movx	a,@dptr
      002439 FF               [12]  199 	mov	r7,a
      00243A 85 1B 82         [24]  200 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      00243D 85 1C 83         [24]  201 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      002440 85 1D F0         [24]  202 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      002443 E8               [12]  203 	mov	a,r0
      002444 12 2C 3A         [24]  204 	lcall	__gptrput
      002447 A3               [24]  205 	inc	dptr
      002448 E9               [12]  206 	mov	a,r1
      002449 12 2C 3A         [24]  207 	lcall	__gptrput
      00244C A3               [24]  208 	inc	dptr
      00244D EF               [12]  209 	mov	a,r7
      00244E 12 2C 3A         [24]  210 	lcall	__gptrput
      002451 80 61            [24]  211 	sjmp	00106$
      002453                        212 00105$:
                                    213 ;	src/linked_list.c:22: buffer_t *tail = list->head;
      002453 90 20 21         [24]  214 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      002456 EA               [12]  215 	mov	a,r2
      002457 F0               [24]  216 	movx	@dptr,a
      002458 EB               [12]  217 	mov	a,r3
      002459 A3               [24]  218 	inc	dptr
      00245A F0               [24]  219 	movx	@dptr,a
      00245B EC               [12]  220 	mov	a,r4
      00245C A3               [24]  221 	inc	dptr
      00245D F0               [24]  222 	movx	@dptr,a
                                    223 ;	src/linked_list.c:23: while(tail->next != NULL)
      00245E                        224 00101$:
      00245E 90 20 21         [24]  225 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      002461 E0               [24]  226 	movx	a,@dptr
      002462 FD               [12]  227 	mov	r5,a
      002463 A3               [24]  228 	inc	dptr
      002464 E0               [24]  229 	movx	a,@dptr
      002465 FE               [12]  230 	mov	r6,a
      002466 A3               [24]  231 	inc	dptr
      002467 E0               [24]  232 	movx	a,@dptr
      002468 FF               [12]  233 	mov	r7,a
      002469 74 08            [12]  234 	mov	a,#0x08
      00246B 2D               [12]  235 	add	a,r5
      00246C FD               [12]  236 	mov	r5,a
      00246D E4               [12]  237 	clr	a
      00246E 3E               [12]  238 	addc	a,r6
      00246F FE               [12]  239 	mov	r6,a
      002470 8D 82            [24]  240 	mov	dpl,r5
      002472 8E 83            [24]  241 	mov	dph,r6
      002474 8F F0            [24]  242 	mov	b,r7
      002476 12 38 94         [24]  243 	lcall	__gptrget
      002479 FA               [12]  244 	mov	r2,a
      00247A A3               [24]  245 	inc	dptr
      00247B 12 38 94         [24]  246 	lcall	__gptrget
      00247E FB               [12]  247 	mov	r3,a
      00247F A3               [24]  248 	inc	dptr
      002480 12 38 94         [24]  249 	lcall	__gptrget
      002483 FC               [12]  250 	mov	r4,a
      002484 EA               [12]  251 	mov	a,r2
      002485 4B               [12]  252 	orl	a,r3
      002486 60 0D            [24]  253 	jz	00103$
                                    254 ;	src/linked_list.c:25: tail = tail->next;
      002488 90 20 21         [24]  255 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      00248B EA               [12]  256 	mov	a,r2
      00248C F0               [24]  257 	movx	@dptr,a
      00248D EB               [12]  258 	mov	a,r3
      00248E A3               [24]  259 	inc	dptr
      00248F F0               [24]  260 	movx	@dptr,a
      002490 EC               [12]  261 	mov	a,r4
      002491 A3               [24]  262 	inc	dptr
      002492 F0               [24]  263 	movx	@dptr,a
      002493 80 C9            [24]  264 	sjmp	00101$
      002495                        265 00103$:
                                    266 ;	src/linked_list.c:27: tail->next = buffer;
      002495 90 20 1B         [24]  267 	mov	dptr,#_append_to_buffer_list_PARM_2
      002498 E0               [24]  268 	movx	a,@dptr
      002499 FA               [12]  269 	mov	r2,a
      00249A A3               [24]  270 	inc	dptr
      00249B E0               [24]  271 	movx	a,@dptr
      00249C FB               [12]  272 	mov	r3,a
      00249D A3               [24]  273 	inc	dptr
      00249E E0               [24]  274 	movx	a,@dptr
      00249F FC               [12]  275 	mov	r4,a
      0024A0 8D 82            [24]  276 	mov	dpl,r5
      0024A2 8E 83            [24]  277 	mov	dph,r6
      0024A4 8F F0            [24]  278 	mov	b,r7
      0024A6 EA               [12]  279 	mov	a,r2
      0024A7 12 2C 3A         [24]  280 	lcall	__gptrput
      0024AA A3               [24]  281 	inc	dptr
      0024AB EB               [12]  282 	mov	a,r3
      0024AC 12 2C 3A         [24]  283 	lcall	__gptrput
      0024AF A3               [24]  284 	inc	dptr
      0024B0 EC               [12]  285 	mov	a,r4
      0024B1 12 2C 3A         [24]  286 	lcall	__gptrput
      0024B4                        287 00106$:
                                    288 ;	src/linked_list.c:29: buffer->next = NULL; 
      0024B4 90 20 1B         [24]  289 	mov	dptr,#_append_to_buffer_list_PARM_2
      0024B7 E0               [24]  290 	movx	a,@dptr
      0024B8 FD               [12]  291 	mov	r5,a
      0024B9 A3               [24]  292 	inc	dptr
      0024BA E0               [24]  293 	movx	a,@dptr
      0024BB FE               [12]  294 	mov	r6,a
      0024BC A3               [24]  295 	inc	dptr
      0024BD E0               [24]  296 	movx	a,@dptr
      0024BE FF               [12]  297 	mov	r7,a
      0024BF 74 08            [12]  298 	mov	a,#0x08
      0024C1 2D               [12]  299 	add	a,r5
      0024C2 FD               [12]  300 	mov	r5,a
      0024C3 E4               [12]  301 	clr	a
      0024C4 3E               [12]  302 	addc	a,r6
      0024C5 FE               [12]  303 	mov	r6,a
      0024C6 8D 82            [24]  304 	mov	dpl,r5
      0024C8 8E 83            [24]  305 	mov	dph,r6
      0024CA 8F F0            [24]  306 	mov	b,r7
      0024CC E4               [12]  307 	clr	a
      0024CD 12 2C 3A         [24]  308 	lcall	__gptrput
      0024D0 A3               [24]  309 	inc	dptr
      0024D1 12 2C 3A         [24]  310 	lcall	__gptrput
      0024D4 A3               [24]  311 	inc	dptr
      0024D5 12 2C 3A         [24]  312 	lcall	__gptrput
                                    313 ;	src/linked_list.c:30: return true;
      0024D8 75 82 01         [24]  314 	mov	dpl,#0x01
                                    315 ;	src/linked_list.c:31: }
      0024DB 22               [24]  316 	ret
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
      0024DC                        330 _remove_from_buffer_list:
      0024DC AF F0            [24]  331 	mov	r7,b
      0024DE AE 83            [24]  332 	mov	r6,dph
      0024E0 E5 82            [12]  333 	mov	a,dpl
      0024E2 90 20 26         [24]  334 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      0024E5 F0               [24]  335 	movx	@dptr,a
      0024E6 EE               [12]  336 	mov	a,r6
      0024E7 A3               [24]  337 	inc	dptr
      0024E8 F0               [24]  338 	movx	@dptr,a
      0024E9 EF               [12]  339 	mov	a,r7
      0024EA A3               [24]  340 	inc	dptr
      0024EB F0               [24]  341 	movx	@dptr,a
                                    342 ;	src/linked_list.c:36: if (list == NULL) return false;
      0024EC 90 20 26         [24]  343 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      0024EF E0               [24]  344 	movx	a,@dptr
      0024F0 F5 08            [12]  345 	mov	_remove_from_buffer_list_sloc0_1_0,a
      0024F2 A3               [24]  346 	inc	dptr
      0024F3 E0               [24]  347 	movx	a,@dptr
      0024F4 F5 09            [12]  348 	mov	(_remove_from_buffer_list_sloc0_1_0 + 1),a
      0024F6 A3               [24]  349 	inc	dptr
      0024F7 E0               [24]  350 	movx	a,@dptr
      0024F8 F5 0A            [12]  351 	mov	(_remove_from_buffer_list_sloc0_1_0 + 2),a
      0024FA E5 08            [12]  352 	mov	a,_remove_from_buffer_list_sloc0_1_0
      0024FC 45 09            [12]  353 	orl	a,(_remove_from_buffer_list_sloc0_1_0 + 1)
      0024FE 70 03            [24]  354 	jnz	00102$
      002500 F5 82            [12]  355 	mov	dpl,a
      002502 22               [24]  356 	ret
      002503                        357 00102$:
                                    358 ;	src/linked_list.c:37: if (list->head == NULL) return false;
      002503 85 08 82         [24]  359 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      002506 85 09 83         [24]  360 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      002509 85 0A F0         [24]  361 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      00250C 12 38 94         [24]  362 	lcall	__gptrget
      00250F FA               [12]  363 	mov	r2,a
      002510 A3               [24]  364 	inc	dptr
      002511 12 38 94         [24]  365 	lcall	__gptrget
      002514 FB               [12]  366 	mov	r3,a
      002515 A3               [24]  367 	inc	dptr
      002516 12 38 94         [24]  368 	lcall	__gptrget
      002519 FC               [12]  369 	mov	r4,a
      00251A EA               [12]  370 	mov	a,r2
      00251B 4B               [12]  371 	orl	a,r3
      00251C 70 03            [24]  372 	jnz	00104$
      00251E F5 82            [12]  373 	mov	dpl,a
      002520 22               [24]  374 	ret
      002521                        375 00104$:
                                    376 ;	src/linked_list.c:40: if (idx == 0)
      002521 90 20 24         [24]  377 	mov	dptr,#_remove_from_buffer_list_PARM_2
      002524 E0               [24]  378 	movx	a,@dptr
      002525 F8               [12]  379 	mov	r0,a
      002526 A3               [24]  380 	inc	dptr
      002527 E0               [24]  381 	movx	a,@dptr
      002528 F9               [12]  382 	mov	r1,a
      002529 90 20 24         [24]  383 	mov	dptr,#_remove_from_buffer_list_PARM_2
      00252C E0               [24]  384 	movx	a,@dptr
      00252D F5 F0            [12]  385 	mov	b,a
      00252F A3               [24]  386 	inc	dptr
      002530 E0               [24]  387 	movx	a,@dptr
      002531 45 F0            [12]  388 	orl	a,b
      002533 70 42            [24]  389 	jnz	00112$
                                    390 ;	src/linked_list.c:43: to_free = list->head;
      002535 90 20 29         [24]  391 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002538 EA               [12]  392 	mov	a,r2
      002539 F0               [24]  393 	movx	@dptr,a
      00253A EB               [12]  394 	mov	a,r3
      00253B A3               [24]  395 	inc	dptr
      00253C F0               [24]  396 	movx	@dptr,a
      00253D EC               [12]  397 	mov	a,r4
      00253E A3               [24]  398 	inc	dptr
      00253F F0               [24]  399 	movx	@dptr,a
                                    400 ;	src/linked_list.c:44: list->head = list->head->next;  
      002540 74 08            [12]  401 	mov	a,#0x08
      002542 2A               [12]  402 	add	a,r2
      002543 FD               [12]  403 	mov	r5,a
      002544 E4               [12]  404 	clr	a
      002545 3B               [12]  405 	addc	a,r3
      002546 FE               [12]  406 	mov	r6,a
      002547 8C 07            [24]  407 	mov	ar7,r4
      002549 8D 82            [24]  408 	mov	dpl,r5
      00254B 8E 83            [24]  409 	mov	dph,r6
      00254D 8F F0            [24]  410 	mov	b,r7
      00254F 12 38 94         [24]  411 	lcall	__gptrget
      002552 FD               [12]  412 	mov	r5,a
      002553 A3               [24]  413 	inc	dptr
      002554 12 38 94         [24]  414 	lcall	__gptrget
      002557 FE               [12]  415 	mov	r6,a
      002558 A3               [24]  416 	inc	dptr
      002559 12 38 94         [24]  417 	lcall	__gptrget
      00255C FF               [12]  418 	mov	r7,a
      00255D 85 08 82         [24]  419 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      002560 85 09 83         [24]  420 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      002563 85 0A F0         [24]  421 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      002566 ED               [12]  422 	mov	a,r5
      002567 12 2C 3A         [24]  423 	lcall	__gptrput
      00256A A3               [24]  424 	inc	dptr
      00256B EE               [12]  425 	mov	a,r6
      00256C 12 2C 3A         [24]  426 	lcall	__gptrput
      00256F A3               [24]  427 	inc	dptr
      002570 EF               [12]  428 	mov	a,r7
      002571 12 2C 3A         [24]  429 	lcall	__gptrput
      002574 02 26 3F         [24]  430 	ljmp	00113$
      002577                        431 00112$:
                                    432 ;	src/linked_list.c:48: buffer_t *prev = list->head;
      002577 90 20 2C         [24]  433 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      00257A EA               [12]  434 	mov	a,r2
      00257B F0               [24]  435 	movx	@dptr,a
      00257C EB               [12]  436 	mov	a,r3
      00257D A3               [24]  437 	inc	dptr
      00257E F0               [24]  438 	movx	@dptr,a
      00257F EC               [12]  439 	mov	a,r4
      002580 A3               [24]  440 	inc	dptr
      002581 F0               [24]  441 	movx	@dptr,a
                                    442 ;	src/linked_list.c:49: idx--;
      002582 18               [12]  443 	dec	r0
      002583 B8 FF 01         [24]  444 	cjne	r0,#0xff,00160$
      002586 19               [12]  445 	dec	r1
      002587                        446 00160$:
      002587 90 20 24         [24]  447 	mov	dptr,#_remove_from_buffer_list_PARM_2
      00258A E8               [12]  448 	mov	a,r0
      00258B F0               [24]  449 	movx	@dptr,a
      00258C E9               [12]  450 	mov	a,r1
      00258D A3               [24]  451 	inc	dptr
      00258E F0               [24]  452 	movx	@dptr,a
                                    453 ;	src/linked_list.c:50: while(idx > 0 && prev->next != NULL)
      00258F 90 20 24         [24]  454 	mov	dptr,#_remove_from_buffer_list_PARM_2
      002592 E0               [24]  455 	movx	a,@dptr
      002593 FE               [12]  456 	mov	r6,a
      002594 A3               [24]  457 	inc	dptr
      002595 E0               [24]  458 	movx	a,@dptr
      002596 FF               [12]  459 	mov	r7,a
      002597                        460 00106$:
      002597 EE               [12]  461 	mov	a,r6
      002598 4F               [12]  462 	orl	a,r7
      002599 60 3C            [24]  463 	jz	00108$
      00259B 90 20 2C         [24]  464 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      00259E E0               [24]  465 	movx	a,@dptr
      00259F FB               [12]  466 	mov	r3,a
      0025A0 A3               [24]  467 	inc	dptr
      0025A1 E0               [24]  468 	movx	a,@dptr
      0025A2 FC               [12]  469 	mov	r4,a
      0025A3 A3               [24]  470 	inc	dptr
      0025A4 E0               [24]  471 	movx	a,@dptr
      0025A5 FD               [12]  472 	mov	r5,a
      0025A6 74 08            [12]  473 	mov	a,#0x08
      0025A8 2B               [12]  474 	add	a,r3
      0025A9 FB               [12]  475 	mov	r3,a
      0025AA E4               [12]  476 	clr	a
      0025AB 3C               [12]  477 	addc	a,r4
      0025AC FC               [12]  478 	mov	r4,a
      0025AD 8B 82            [24]  479 	mov	dpl,r3
      0025AF 8C 83            [24]  480 	mov	dph,r4
      0025B1 8D F0            [24]  481 	mov	b,r5
      0025B3 12 38 94         [24]  482 	lcall	__gptrget
      0025B6 FB               [12]  483 	mov	r3,a
      0025B7 A3               [24]  484 	inc	dptr
      0025B8 12 38 94         [24]  485 	lcall	__gptrget
      0025BB FC               [12]  486 	mov	r4,a
      0025BC A3               [24]  487 	inc	dptr
      0025BD 12 38 94         [24]  488 	lcall	__gptrget
      0025C0 FD               [12]  489 	mov	r5,a
      0025C1 EB               [12]  490 	mov	a,r3
      0025C2 4C               [12]  491 	orl	a,r4
      0025C3 60 12            [24]  492 	jz	00108$
                                    493 ;	src/linked_list.c:52: prev = prev->next;
      0025C5 90 20 2C         [24]  494 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      0025C8 EB               [12]  495 	mov	a,r3
      0025C9 F0               [24]  496 	movx	@dptr,a
      0025CA EC               [12]  497 	mov	a,r4
      0025CB A3               [24]  498 	inc	dptr
      0025CC F0               [24]  499 	movx	@dptr,a
      0025CD ED               [12]  500 	mov	a,r5
      0025CE A3               [24]  501 	inc	dptr
      0025CF F0               [24]  502 	movx	@dptr,a
                                    503 ;	src/linked_list.c:53: idx--;
      0025D0 1E               [12]  504 	dec	r6
      0025D1 BE FF 01         [24]  505 	cjne	r6,#0xff,00163$
      0025D4 1F               [12]  506 	dec	r7
      0025D5                        507 00163$:
      0025D5 80 C0            [24]  508 	sjmp	00106$
      0025D7                        509 00108$:
                                    510 ;	src/linked_list.c:56: if (idx != 0) return false;
      0025D7 EE               [12]  511 	mov	a,r6
      0025D8 4F               [12]  512 	orl	a,r7
      0025D9 60 04            [24]  513 	jz	00110$
      0025DB 75 82 00         [24]  514 	mov	dpl,#0x00
      0025DE 22               [24]  515 	ret
      0025DF                        516 00110$:
                                    517 ;	src/linked_list.c:57: to_free = prev->next;
      0025DF 90 20 2C         [24]  518 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      0025E2 E0               [24]  519 	movx	a,@dptr
      0025E3 FD               [12]  520 	mov	r5,a
      0025E4 A3               [24]  521 	inc	dptr
      0025E5 E0               [24]  522 	movx	a,@dptr
      0025E6 FE               [12]  523 	mov	r6,a
      0025E7 A3               [24]  524 	inc	dptr
      0025E8 E0               [24]  525 	movx	a,@dptr
      0025E9 FF               [12]  526 	mov	r7,a
      0025EA 74 08            [12]  527 	mov	a,#0x08
      0025EC 2D               [12]  528 	add	a,r5
      0025ED FD               [12]  529 	mov	r5,a
      0025EE E4               [12]  530 	clr	a
      0025EF 3E               [12]  531 	addc	a,r6
      0025F0 FE               [12]  532 	mov	r6,a
      0025F1 8D 82            [24]  533 	mov	dpl,r5
      0025F3 8E 83            [24]  534 	mov	dph,r6
      0025F5 8F F0            [24]  535 	mov	b,r7
      0025F7 12 38 94         [24]  536 	lcall	__gptrget
      0025FA FA               [12]  537 	mov	r2,a
      0025FB A3               [24]  538 	inc	dptr
      0025FC 12 38 94         [24]  539 	lcall	__gptrget
      0025FF FB               [12]  540 	mov	r3,a
      002600 A3               [24]  541 	inc	dptr
      002601 12 38 94         [24]  542 	lcall	__gptrget
      002604 FC               [12]  543 	mov	r4,a
      002605 90 20 29         [24]  544 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002608 EA               [12]  545 	mov	a,r2
      002609 F0               [24]  546 	movx	@dptr,a
      00260A EB               [12]  547 	mov	a,r3
      00260B A3               [24]  548 	inc	dptr
      00260C F0               [24]  549 	movx	@dptr,a
      00260D EC               [12]  550 	mov	a,r4
      00260E A3               [24]  551 	inc	dptr
      00260F F0               [24]  552 	movx	@dptr,a
                                    553 ;	src/linked_list.c:58: prev->next = to_free->next;
      002610 74 08            [12]  554 	mov	a,#0x08
      002612 2A               [12]  555 	add	a,r2
      002613 FA               [12]  556 	mov	r2,a
      002614 E4               [12]  557 	clr	a
      002615 3B               [12]  558 	addc	a,r3
      002616 FB               [12]  559 	mov	r3,a
      002617 8A 82            [24]  560 	mov	dpl,r2
      002619 8B 83            [24]  561 	mov	dph,r3
      00261B 8C F0            [24]  562 	mov	b,r4
      00261D 12 38 94         [24]  563 	lcall	__gptrget
      002620 FA               [12]  564 	mov	r2,a
      002621 A3               [24]  565 	inc	dptr
      002622 12 38 94         [24]  566 	lcall	__gptrget
      002625 FB               [12]  567 	mov	r3,a
      002626 A3               [24]  568 	inc	dptr
      002627 12 38 94         [24]  569 	lcall	__gptrget
      00262A FC               [12]  570 	mov	r4,a
      00262B 8D 82            [24]  571 	mov	dpl,r5
      00262D 8E 83            [24]  572 	mov	dph,r6
      00262F 8F F0            [24]  573 	mov	b,r7
      002631 EA               [12]  574 	mov	a,r2
      002632 12 2C 3A         [24]  575 	lcall	__gptrput
      002635 A3               [24]  576 	inc	dptr
      002636 EB               [12]  577 	mov	a,r3
      002637 12 2C 3A         [24]  578 	lcall	__gptrput
      00263A A3               [24]  579 	inc	dptr
      00263B EC               [12]  580 	mov	a,r4
      00263C 12 2C 3A         [24]  581 	lcall	__gptrput
      00263F                        582 00113$:
                                    583 ;	src/linked_list.c:61: if (to_free == NULL) return false; 
      00263F 90 20 29         [24]  584 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002642 E0               [24]  585 	movx	a,@dptr
      002643 FE               [12]  586 	mov	r6,a
      002644 A3               [24]  587 	inc	dptr
      002645 E0               [24]  588 	movx	a,@dptr
      002646 FD               [12]  589 	mov	r5,a
      002647 A3               [24]  590 	inc	dptr
      002648 E0               [24]  591 	movx	a,@dptr
      002649 FF               [12]  592 	mov	r7,a
      00264A 90 20 29         [24]  593 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      00264D E0               [24]  594 	movx	a,@dptr
      00264E F5 F0            [12]  595 	mov	b,a
      002650 A3               [24]  596 	inc	dptr
      002651 E0               [24]  597 	movx	a,@dptr
      002652 45 F0            [12]  598 	orl	a,b
      002654 70 03            [24]  599 	jnz	00115$
      002656 F5 82            [12]  600 	mov	dpl,a
      002658 22               [24]  601 	ret
      002659                        602 00115$:
                                    603 ;	src/linked_list.c:62: if (to_free->buffer != NULL) 
      002659 8E 82            [24]  604 	mov	dpl,r6
      00265B 8D 83            [24]  605 	mov	dph,r5
      00265D 8F F0            [24]  606 	mov	b,r7
      00265F 12 38 94         [24]  607 	lcall	__gptrget
      002662 FE               [12]  608 	mov	r6,a
      002663 A3               [24]  609 	inc	dptr
      002664 12 38 94         [24]  610 	lcall	__gptrget
      002667 FF               [12]  611 	mov	r7,a
      002668 4E               [12]  612 	orl	a,r6
      002669 60 0B            [24]  613 	jz	00117$
                                    614 ;	src/linked_list.c:64: free(to_free->buffer);
      00266B 7D 00            [12]  615 	mov	r5,#0x00
      00266D 8E 82            [24]  616 	mov	dpl,r6
      00266F 8F 83            [24]  617 	mov	dph,r7
      002671 8D F0            [24]  618 	mov	b,r5
      002673 12 2A BB         [24]  619 	lcall	_free
      002676                        620 00117$:
                                    621 ;	src/linked_list.c:66: free(to_free);
      002676 90 20 29         [24]  622 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002679 E0               [24]  623 	movx	a,@dptr
      00267A FD               [12]  624 	mov	r5,a
      00267B A3               [24]  625 	inc	dptr
      00267C E0               [24]  626 	movx	a,@dptr
      00267D FE               [12]  627 	mov	r6,a
      00267E A3               [24]  628 	inc	dptr
      00267F E0               [24]  629 	movx	a,@dptr
      002680 FF               [12]  630 	mov	r7,a
      002681 8D 82            [24]  631 	mov	dpl,r5
      002683 8E 83            [24]  632 	mov	dph,r6
      002685 8F F0            [24]  633 	mov	b,r7
      002687 12 2A BB         [24]  634 	lcall	_free
                                    635 ;	src/linked_list.c:67: return true; 
      00268A 75 82 01         [24]  636 	mov	dpl,#0x01
                                    637 ;	src/linked_list.c:68: }
      00268D 22               [24]  638 	ret
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
      00268E                        650 _free_all_elems_from_list:
      00268E AF F0            [24]  651 	mov	r7,b
      002690 AE 83            [24]  652 	mov	r6,dph
      002692 E5 82            [12]  653 	mov	a,dpl
      002694 90 20 2F         [24]  654 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      002697 F0               [24]  655 	movx	@dptr,a
      002698 EE               [12]  656 	mov	a,r6
      002699 A3               [24]  657 	inc	dptr
      00269A F0               [24]  658 	movx	@dptr,a
      00269B EF               [12]  659 	mov	a,r7
      00269C A3               [24]  660 	inc	dptr
      00269D F0               [24]  661 	movx	@dptr,a
                                    662 ;	src/linked_list.c:72: buffer_t *buffer_to_free = list->head;
      00269E 90 20 2F         [24]  663 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      0026A1 E0               [24]  664 	movx	a,@dptr
      0026A2 FD               [12]  665 	mov	r5,a
      0026A3 A3               [24]  666 	inc	dptr
      0026A4 E0               [24]  667 	movx	a,@dptr
      0026A5 FE               [12]  668 	mov	r6,a
      0026A6 A3               [24]  669 	inc	dptr
      0026A7 E0               [24]  670 	movx	a,@dptr
      0026A8 FF               [12]  671 	mov	r7,a
      0026A9 8D 82            [24]  672 	mov	dpl,r5
      0026AB 8E 83            [24]  673 	mov	dph,r6
      0026AD 8F F0            [24]  674 	mov	b,r7
      0026AF 12 38 94         [24]  675 	lcall	__gptrget
      0026B2 FA               [12]  676 	mov	r2,a
      0026B3 A3               [24]  677 	inc	dptr
      0026B4 12 38 94         [24]  678 	lcall	__gptrget
      0026B7 FB               [12]  679 	mov	r3,a
      0026B8 A3               [24]  680 	inc	dptr
      0026B9 12 38 94         [24]  681 	lcall	__gptrget
      0026BC FC               [12]  682 	mov	r4,a
      0026BD 90 20 32         [24]  683 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      0026C0 EA               [12]  684 	mov	a,r2
      0026C1 F0               [24]  685 	movx	@dptr,a
      0026C2 EB               [12]  686 	mov	a,r3
      0026C3 A3               [24]  687 	inc	dptr
      0026C4 F0               [24]  688 	movx	@dptr,a
      0026C5 EC               [12]  689 	mov	a,r4
      0026C6 A3               [24]  690 	inc	dptr
      0026C7 F0               [24]  691 	movx	@dptr,a
                                    692 ;	src/linked_list.c:73: while(list->head != NULL)
      0026C8                        693 00103$:
      0026C8 90 20 2F         [24]  694 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      0026CB E0               [24]  695 	movx	a,@dptr
      0026CC FA               [12]  696 	mov	r2,a
      0026CD A3               [24]  697 	inc	dptr
      0026CE E0               [24]  698 	movx	a,@dptr
      0026CF FB               [12]  699 	mov	r3,a
      0026D0 A3               [24]  700 	inc	dptr
      0026D1 E0               [24]  701 	movx	a,@dptr
      0026D2 FC               [12]  702 	mov	r4,a
      0026D3 8A 82            [24]  703 	mov	dpl,r2
      0026D5 8B 83            [24]  704 	mov	dph,r3
      0026D7 8C F0            [24]  705 	mov	b,r4
      0026D9 12 38 94         [24]  706 	lcall	__gptrget
      0026DC F5 0B            [12]  707 	mov	_free_all_elems_from_list_sloc0_1_0,a
      0026DE A3               [24]  708 	inc	dptr
      0026DF 12 38 94         [24]  709 	lcall	__gptrget
      0026E2 F5 0C            [12]  710 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      0026E4 A3               [24]  711 	inc	dptr
      0026E5 12 38 94         [24]  712 	lcall	__gptrget
      0026E8 F5 0D            [12]  713 	mov	(_free_all_elems_from_list_sloc0_1_0 + 2),a
      0026EA E5 0B            [12]  714 	mov	a,_free_all_elems_from_list_sloc0_1_0
      0026EC 45 0C            [12]  715 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0026EE 70 01            [24]  716 	jnz	00120$
      0026F0 22               [24]  717 	ret
      0026F1                        718 00120$:
                                    719 ;	src/linked_list.c:75: list->head = list->head->next;
      0026F1 C0 05            [24]  720 	push	ar5
      0026F3 C0 06            [24]  721 	push	ar6
      0026F5 C0 07            [24]  722 	push	ar7
      0026F7 74 08            [12]  723 	mov	a,#0x08
      0026F9 25 0B            [12]  724 	add	a,_free_all_elems_from_list_sloc0_1_0
      0026FB F8               [12]  725 	mov	r0,a
      0026FC E4               [12]  726 	clr	a
      0026FD 35 0C            [12]  727 	addc	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0026FF F9               [12]  728 	mov	r1,a
      002700 AF 0D            [24]  729 	mov	r7,(_free_all_elems_from_list_sloc0_1_0 + 2)
      002702 88 82            [24]  730 	mov	dpl,r0
      002704 89 83            [24]  731 	mov	dph,r1
      002706 8F F0            [24]  732 	mov	b,r7
      002708 12 38 94         [24]  733 	lcall	__gptrget
      00270B F8               [12]  734 	mov	r0,a
      00270C A3               [24]  735 	inc	dptr
      00270D 12 38 94         [24]  736 	lcall	__gptrget
      002710 F9               [12]  737 	mov	r1,a
      002711 A3               [24]  738 	inc	dptr
      002712 12 38 94         [24]  739 	lcall	__gptrget
      002715 FF               [12]  740 	mov	r7,a
      002716 8A 82            [24]  741 	mov	dpl,r2
      002718 8B 83            [24]  742 	mov	dph,r3
      00271A 8C F0            [24]  743 	mov	b,r4
      00271C E8               [12]  744 	mov	a,r0
      00271D 12 2C 3A         [24]  745 	lcall	__gptrput
      002720 A3               [24]  746 	inc	dptr
      002721 E9               [12]  747 	mov	a,r1
      002722 12 2C 3A         [24]  748 	lcall	__gptrput
      002725 A3               [24]  749 	inc	dptr
      002726 EF               [12]  750 	mov	a,r7
      002727 12 2C 3A         [24]  751 	lcall	__gptrput
                                    752 ;	src/linked_list.c:76: if (buffer_to_free->buffer != NULL)
      00272A 90 20 32         [24]  753 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      00272D E0               [24]  754 	movx	a,@dptr
      00272E FD               [12]  755 	mov	r5,a
      00272F A3               [24]  756 	inc	dptr
      002730 E0               [24]  757 	movx	a,@dptr
      002731 FE               [12]  758 	mov	r6,a
      002732 A3               [24]  759 	inc	dptr
      002733 E0               [24]  760 	movx	a,@dptr
      002734 FF               [12]  761 	mov	r7,a
      002735 8D 82            [24]  762 	mov	dpl,r5
      002737 8E 83            [24]  763 	mov	dph,r6
      002739 8F F0            [24]  764 	mov	b,r7
      00273B 12 38 94         [24]  765 	lcall	__gptrget
      00273E F5 0B            [12]  766 	mov	_free_all_elems_from_list_sloc0_1_0,a
      002740 A3               [24]  767 	inc	dptr
      002741 12 38 94         [24]  768 	lcall	__gptrget
      002744 F5 0C            [12]  769 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      002746 D0 07            [24]  770 	pop	ar7
      002748 D0 06            [24]  771 	pop	ar6
      00274A D0 05            [24]  772 	pop	ar5
      00274C E5 0B            [12]  773 	mov	a,_free_all_elems_from_list_sloc0_1_0
      00274E 45 0C            [12]  774 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      002750 60 1B            [24]  775 	jz	00102$
                                    776 ;	src/linked_list.c:78: free(buffer_to_free->buffer);
      002752 AB 0B            [24]  777 	mov	r3,_free_all_elems_from_list_sloc0_1_0
      002754 AC 0C            [24]  778 	mov	r4,(_free_all_elems_from_list_sloc0_1_0 + 1)
      002756 7A 00            [12]  779 	mov	r2,#0x00
      002758 8B 82            [24]  780 	mov	dpl,r3
      00275A 8C 83            [24]  781 	mov	dph,r4
      00275C 8A F0            [24]  782 	mov	b,r2
      00275E C0 07            [24]  783 	push	ar7
      002760 C0 06            [24]  784 	push	ar6
      002762 C0 05            [24]  785 	push	ar5
      002764 12 2A BB         [24]  786 	lcall	_free
      002767 D0 05            [24]  787 	pop	ar5
      002769 D0 06            [24]  788 	pop	ar6
      00276B D0 07            [24]  789 	pop	ar7
      00276D                        790 00102$:
                                    791 ;	src/linked_list.c:80: free(buffer_to_free);
      00276D 90 20 32         [24]  792 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      002770 E0               [24]  793 	movx	a,@dptr
      002771 FA               [12]  794 	mov	r2,a
      002772 A3               [24]  795 	inc	dptr
      002773 E0               [24]  796 	movx	a,@dptr
      002774 FB               [12]  797 	mov	r3,a
      002775 A3               [24]  798 	inc	dptr
      002776 E0               [24]  799 	movx	a,@dptr
      002777 FC               [12]  800 	mov	r4,a
      002778 8A 82            [24]  801 	mov	dpl,r2
      00277A 8B 83            [24]  802 	mov	dph,r3
      00277C 8C F0            [24]  803 	mov	b,r4
      00277E C0 07            [24]  804 	push	ar7
      002780 C0 06            [24]  805 	push	ar6
      002782 C0 05            [24]  806 	push	ar5
      002784 12 2A BB         [24]  807 	lcall	_free
      002787 D0 05            [24]  808 	pop	ar5
      002789 D0 06            [24]  809 	pop	ar6
      00278B D0 07            [24]  810 	pop	ar7
                                    811 ;	src/linked_list.c:81: buffer_to_free = list->head;
      00278D 8D 82            [24]  812 	mov	dpl,r5
      00278F 8E 83            [24]  813 	mov	dph,r6
      002791 8F F0            [24]  814 	mov	b,r7
      002793 12 38 94         [24]  815 	lcall	__gptrget
      002796 FA               [12]  816 	mov	r2,a
      002797 A3               [24]  817 	inc	dptr
      002798 12 38 94         [24]  818 	lcall	__gptrget
      00279B FB               [12]  819 	mov	r3,a
      00279C A3               [24]  820 	inc	dptr
      00279D 12 38 94         [24]  821 	lcall	__gptrget
      0027A0 FC               [12]  822 	mov	r4,a
      0027A1 90 20 32         [24]  823 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      0027A4 EA               [12]  824 	mov	a,r2
      0027A5 F0               [24]  825 	movx	@dptr,a
      0027A6 EB               [12]  826 	mov	a,r3
      0027A7 A3               [24]  827 	inc	dptr
      0027A8 F0               [24]  828 	movx	@dptr,a
      0027A9 EC               [12]  829 	mov	a,r4
      0027AA A3               [24]  830 	inc	dptr
      0027AB F0               [24]  831 	movx	@dptr,a
                                    832 ;	src/linked_list.c:83: }
      0027AC 02 26 C8         [24]  833 	ljmp	00103$
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
      0027AF                        845 _ll_length:
      0027AF AF F0            [24]  846 	mov	r7,b
      0027B1 AE 83            [24]  847 	mov	r6,dph
      0027B3 E5 82            [12]  848 	mov	a,dpl
      0027B5 90 20 35         [24]  849 	mov	dptr,#_ll_length_list_65536_63
      0027B8 F0               [24]  850 	movx	@dptr,a
      0027B9 EE               [12]  851 	mov	a,r6
      0027BA A3               [24]  852 	inc	dptr
      0027BB F0               [24]  853 	movx	@dptr,a
      0027BC EF               [12]  854 	mov	a,r7
      0027BD A3               [24]  855 	inc	dptr
      0027BE F0               [24]  856 	movx	@dptr,a
                                    857 ;	src/linked_list.c:88: buffer_t *curr = list->head;
      0027BF 90 20 35         [24]  858 	mov	dptr,#_ll_length_list_65536_63
      0027C2 E0               [24]  859 	movx	a,@dptr
      0027C3 FD               [12]  860 	mov	r5,a
      0027C4 A3               [24]  861 	inc	dptr
      0027C5 E0               [24]  862 	movx	a,@dptr
      0027C6 FE               [12]  863 	mov	r6,a
      0027C7 A3               [24]  864 	inc	dptr
      0027C8 E0               [24]  865 	movx	a,@dptr
      0027C9 FF               [12]  866 	mov	r7,a
      0027CA 8D 82            [24]  867 	mov	dpl,r5
      0027CC 8E 83            [24]  868 	mov	dph,r6
      0027CE 8F F0            [24]  869 	mov	b,r7
      0027D0 12 38 94         [24]  870 	lcall	__gptrget
      0027D3 FD               [12]  871 	mov	r5,a
      0027D4 A3               [24]  872 	inc	dptr
      0027D5 12 38 94         [24]  873 	lcall	__gptrget
      0027D8 FE               [12]  874 	mov	r6,a
      0027D9 A3               [24]  875 	inc	dptr
      0027DA 12 38 94         [24]  876 	lcall	__gptrget
      0027DD FF               [12]  877 	mov	r7,a
      0027DE 90 20 3A         [24]  878 	mov	dptr,#_ll_length_curr_65536_64
      0027E1 ED               [12]  879 	mov	a,r5
      0027E2 F0               [24]  880 	movx	@dptr,a
      0027E3 EE               [12]  881 	mov	a,r6
      0027E4 A3               [24]  882 	inc	dptr
      0027E5 F0               [24]  883 	movx	@dptr,a
      0027E6 EF               [12]  884 	mov	a,r7
      0027E7 A3               [24]  885 	inc	dptr
      0027E8 F0               [24]  886 	movx	@dptr,a
                                    887 ;	src/linked_list.c:89: while(curr != NULL)
      0027E9 90 20 38         [24]  888 	mov	dptr,#_ll_length_size_65536_64
      0027EC E0               [24]  889 	movx	a,@dptr
      0027ED FE               [12]  890 	mov	r6,a
      0027EE A3               [24]  891 	inc	dptr
      0027EF E0               [24]  892 	movx	a,@dptr
      0027F0 FF               [12]  893 	mov	r7,a
      0027F1                        894 00101$:
      0027F1 90 20 3A         [24]  895 	mov	dptr,#_ll_length_curr_65536_64
      0027F4 E0               [24]  896 	movx	a,@dptr
      0027F5 FB               [12]  897 	mov	r3,a
      0027F6 A3               [24]  898 	inc	dptr
      0027F7 E0               [24]  899 	movx	a,@dptr
      0027F8 FC               [12]  900 	mov	r4,a
      0027F9 A3               [24]  901 	inc	dptr
      0027FA E0               [24]  902 	movx	a,@dptr
      0027FB FD               [12]  903 	mov	r5,a
      0027FC 90 20 3A         [24]  904 	mov	dptr,#_ll_length_curr_65536_64
      0027FF E0               [24]  905 	movx	a,@dptr
      002800 F5 F0            [12]  906 	mov	b,a
      002802 A3               [24]  907 	inc	dptr
      002803 E0               [24]  908 	movx	a,@dptr
      002804 45 F0            [12]  909 	orl	a,b
      002806 60 2D            [24]  910 	jz	00103$
                                    911 ;	src/linked_list.c:91: size++;
      002808 0E               [12]  912 	inc	r6
      002809 BE 00 01         [24]  913 	cjne	r6,#0x00,00116$
      00280C 0F               [12]  914 	inc	r7
      00280D                        915 00116$:
                                    916 ;	src/linked_list.c:92: curr = curr->next;
      00280D 74 08            [12]  917 	mov	a,#0x08
      00280F 2B               [12]  918 	add	a,r3
      002810 FB               [12]  919 	mov	r3,a
      002811 E4               [12]  920 	clr	a
      002812 3C               [12]  921 	addc	a,r4
      002813 FC               [12]  922 	mov	r4,a
      002814 8B 82            [24]  923 	mov	dpl,r3
      002816 8C 83            [24]  924 	mov	dph,r4
      002818 8D F0            [24]  925 	mov	b,r5
      00281A 12 38 94         [24]  926 	lcall	__gptrget
      00281D FB               [12]  927 	mov	r3,a
      00281E A3               [24]  928 	inc	dptr
      00281F 12 38 94         [24]  929 	lcall	__gptrget
      002822 FC               [12]  930 	mov	r4,a
      002823 A3               [24]  931 	inc	dptr
      002824 12 38 94         [24]  932 	lcall	__gptrget
      002827 FD               [12]  933 	mov	r5,a
      002828 90 20 3A         [24]  934 	mov	dptr,#_ll_length_curr_65536_64
      00282B EB               [12]  935 	mov	a,r3
      00282C F0               [24]  936 	movx	@dptr,a
      00282D EC               [12]  937 	mov	a,r4
      00282E A3               [24]  938 	inc	dptr
      00282F F0               [24]  939 	movx	@dptr,a
      002830 ED               [12]  940 	mov	a,r5
      002831 A3               [24]  941 	inc	dptr
      002832 F0               [24]  942 	movx	@dptr,a
      002833 80 BC            [24]  943 	sjmp	00101$
      002835                        944 00103$:
                                    945 ;	src/linked_list.c:94: return size; 
      002835 8E 82            [24]  946 	mov	dpl,r6
      002837 8F 83            [24]  947 	mov	dph,r7
                                    948 ;	src/linked_list.c:95: }
      002839 22               [24]  949 	ret
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
      00283A                        961 _ll_get_elem:
      00283A AF F0            [24]  962 	mov	r7,b
      00283C AE 83            [24]  963 	mov	r6,dph
      00283E E5 82            [12]  964 	mov	a,dpl
      002840 90 20 3F         [24]  965 	mov	dptr,#_ll_get_elem_list_65536_66
      002843 F0               [24]  966 	movx	@dptr,a
      002844 EE               [12]  967 	mov	a,r6
      002845 A3               [24]  968 	inc	dptr
      002846 F0               [24]  969 	movx	@dptr,a
      002847 EF               [12]  970 	mov	a,r7
      002848 A3               [24]  971 	inc	dptr
      002849 F0               [24]  972 	movx	@dptr,a
                                    973 ;	src/linked_list.c:99: buffer_t *curr = list->head;
      00284A 90 20 3F         [24]  974 	mov	dptr,#_ll_get_elem_list_65536_66
      00284D E0               [24]  975 	movx	a,@dptr
      00284E FD               [12]  976 	mov	r5,a
      00284F A3               [24]  977 	inc	dptr
      002850 E0               [24]  978 	movx	a,@dptr
      002851 FE               [12]  979 	mov	r6,a
      002852 A3               [24]  980 	inc	dptr
      002853 E0               [24]  981 	movx	a,@dptr
      002854 FF               [12]  982 	mov	r7,a
      002855 8D 82            [24]  983 	mov	dpl,r5
      002857 8E 83            [24]  984 	mov	dph,r6
      002859 8F F0            [24]  985 	mov	b,r7
      00285B 12 38 94         [24]  986 	lcall	__gptrget
      00285E FD               [12]  987 	mov	r5,a
      00285F A3               [24]  988 	inc	dptr
      002860 12 38 94         [24]  989 	lcall	__gptrget
      002863 FE               [12]  990 	mov	r6,a
      002864 A3               [24]  991 	inc	dptr
      002865 12 38 94         [24]  992 	lcall	__gptrget
      002868 FF               [12]  993 	mov	r7,a
      002869 90 20 42         [24]  994 	mov	dptr,#_ll_get_elem_curr_65536_67
      00286C ED               [12]  995 	mov	a,r5
      00286D F0               [24]  996 	movx	@dptr,a
      00286E EE               [12]  997 	mov	a,r6
      00286F A3               [24]  998 	inc	dptr
      002870 F0               [24]  999 	movx	@dptr,a
      002871 EF               [12] 1000 	mov	a,r7
      002872 A3               [24] 1001 	inc	dptr
      002873 F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	src/linked_list.c:100: while(curr != NULL && elem_num > 0)
      002874 90 20 3D         [24] 1004 	mov	dptr,#_ll_get_elem_PARM_2
      002877 E0               [24] 1005 	movx	a,@dptr
      002878 FE               [12] 1006 	mov	r6,a
      002879 A3               [24] 1007 	inc	dptr
      00287A E0               [24] 1008 	movx	a,@dptr
      00287B FF               [12] 1009 	mov	r7,a
      00287C                       1010 00102$:
      00287C 90 20 42         [24] 1011 	mov	dptr,#_ll_get_elem_curr_65536_67
      00287F E0               [24] 1012 	movx	a,@dptr
      002880 FB               [12] 1013 	mov	r3,a
      002881 A3               [24] 1014 	inc	dptr
      002882 E0               [24] 1015 	movx	a,@dptr
      002883 FC               [12] 1016 	mov	r4,a
      002884 A3               [24] 1017 	inc	dptr
      002885 E0               [24] 1018 	movx	a,@dptr
      002886 FD               [12] 1019 	mov	r5,a
      002887 90 20 42         [24] 1020 	mov	dptr,#_ll_get_elem_curr_65536_67
      00288A E0               [24] 1021 	movx	a,@dptr
      00288B F5 F0            [12] 1022 	mov	b,a
      00288D A3               [24] 1023 	inc	dptr
      00288E E0               [24] 1024 	movx	a,@dptr
      00288F 45 F0            [12] 1025 	orl	a,b
      002891 60 31            [24] 1026 	jz	00104$
      002893 EE               [12] 1027 	mov	a,r6
      002894 4F               [12] 1028 	orl	a,r7
      002895 60 2D            [24] 1029 	jz	00104$
                                   1030 ;	src/linked_list.c:102: curr = curr->next;
      002897 74 08            [12] 1031 	mov	a,#0x08
      002899 2B               [12] 1032 	add	a,r3
      00289A FB               [12] 1033 	mov	r3,a
      00289B E4               [12] 1034 	clr	a
      00289C 3C               [12] 1035 	addc	a,r4
      00289D FC               [12] 1036 	mov	r4,a
      00289E 8B 82            [24] 1037 	mov	dpl,r3
      0028A0 8C 83            [24] 1038 	mov	dph,r4
      0028A2 8D F0            [24] 1039 	mov	b,r5
      0028A4 12 38 94         [24] 1040 	lcall	__gptrget
      0028A7 FB               [12] 1041 	mov	r3,a
      0028A8 A3               [24] 1042 	inc	dptr
      0028A9 12 38 94         [24] 1043 	lcall	__gptrget
      0028AC FC               [12] 1044 	mov	r4,a
      0028AD A3               [24] 1045 	inc	dptr
      0028AE 12 38 94         [24] 1046 	lcall	__gptrget
      0028B1 FD               [12] 1047 	mov	r5,a
      0028B2 90 20 42         [24] 1048 	mov	dptr,#_ll_get_elem_curr_65536_67
      0028B5 EB               [12] 1049 	mov	a,r3
      0028B6 F0               [24] 1050 	movx	@dptr,a
      0028B7 EC               [12] 1051 	mov	a,r4
      0028B8 A3               [24] 1052 	inc	dptr
      0028B9 F0               [24] 1053 	movx	@dptr,a
      0028BA ED               [12] 1054 	mov	a,r5
      0028BB A3               [24] 1055 	inc	dptr
      0028BC F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	src/linked_list.c:103: elem_num--;
      0028BD 1E               [12] 1058 	dec	r6
      0028BE BE FF 01         [24] 1059 	cjne	r6,#0xff,00122$
      0028C1 1F               [12] 1060 	dec	r7
      0028C2                       1061 00122$:
      0028C2 80 B8            [24] 1062 	sjmp	00102$
      0028C4                       1063 00104$:
                                   1064 ;	src/linked_list.c:105: return curr;
      0028C4 90 20 42         [24] 1065 	mov	dptr,#_ll_get_elem_curr_65536_67
      0028C7 E0               [24] 1066 	movx	a,@dptr
      0028C8 FD               [12] 1067 	mov	r5,a
      0028C9 A3               [24] 1068 	inc	dptr
      0028CA E0               [24] 1069 	movx	a,@dptr
      0028CB FE               [12] 1070 	mov	r6,a
      0028CC A3               [24] 1071 	inc	dptr
      0028CD E0               [24] 1072 	movx	a,@dptr
      0028CE FF               [12] 1073 	mov	r7,a
      0028CF 8D 82            [24] 1074 	mov	dpl,r5
      0028D1 8E 83            [24] 1075 	mov	dph,r6
      0028D3 8F F0            [24] 1076 	mov	b,r7
                                   1077 ;	src/linked_list.c:106: }
      0028D5 22               [24] 1078 	ret
                                   1079 	.area CSEG    (CODE)
                                   1080 	.area CONST   (CODE)
                                   1081 	.area XINIT   (CODE)
                                   1082 	.area CABS    (ABS,CODE)
