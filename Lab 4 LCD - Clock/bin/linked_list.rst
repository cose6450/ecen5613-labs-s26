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
      0024F3                        146 _append_to_buffer_list:
                           000007   147 	ar7 = 0x07
                           000006   148 	ar6 = 0x06
                           000005   149 	ar5 = 0x05
                           000004   150 	ar4 = 0x04
                           000003   151 	ar3 = 0x03
                           000002   152 	ar2 = 0x02
                           000001   153 	ar1 = 0x01
                           000000   154 	ar0 = 0x00
      0024F3 AF F0            [24]  155 	mov	r7,b
      0024F5 AE 83            [24]  156 	mov	r6,dph
      0024F7 E5 82            [12]  157 	mov	a,dpl
      0024F9 90 20 1E         [24]  158 	mov	dptr,#_append_to_buffer_list_list_65536_47
      0024FC F0               [24]  159 	movx	@dptr,a
      0024FD EE               [12]  160 	mov	a,r6
      0024FE A3               [24]  161 	inc	dptr
      0024FF F0               [24]  162 	movx	@dptr,a
      002500 EF               [12]  163 	mov	a,r7
      002501 A3               [24]  164 	inc	dptr
      002502 F0               [24]  165 	movx	@dptr,a
                                    166 ;	src/linked_list.c:16: if (list->head == NULL) 
      002503 90 20 1E         [24]  167 	mov	dptr,#_append_to_buffer_list_list_65536_47
      002506 E0               [24]  168 	movx	a,@dptr
      002507 F5 1B            [12]  169 	mov	_append_to_buffer_list_sloc0_1_0,a
      002509 A3               [24]  170 	inc	dptr
      00250A E0               [24]  171 	movx	a,@dptr
      00250B F5 1C            [12]  172 	mov	(_append_to_buffer_list_sloc0_1_0 + 1),a
      00250D A3               [24]  173 	inc	dptr
      00250E E0               [24]  174 	movx	a,@dptr
      00250F F5 1D            [12]  175 	mov	(_append_to_buffer_list_sloc0_1_0 + 2),a
      002511 85 1B 82         [24]  176 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      002514 85 1C 83         [24]  177 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      002517 85 1D F0         [24]  178 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      00251A 12 3A DA         [24]  179 	lcall	__gptrget
      00251D FA               [12]  180 	mov	r2,a
      00251E A3               [24]  181 	inc	dptr
      00251F 12 3A DA         [24]  182 	lcall	__gptrget
      002522 FB               [12]  183 	mov	r3,a
      002523 A3               [24]  184 	inc	dptr
      002524 12 3A DA         [24]  185 	lcall	__gptrget
      002527 FC               [12]  186 	mov	r4,a
      002528 EA               [12]  187 	mov	a,r2
      002529 4B               [12]  188 	orl	a,r3
      00252A 70 24            [24]  189 	jnz	00105$
                                    190 ;	src/linked_list.c:18: list->head = buffer; 
      00252C 90 20 1B         [24]  191 	mov	dptr,#_append_to_buffer_list_PARM_2
      00252F E0               [24]  192 	movx	a,@dptr
      002530 F8               [12]  193 	mov	r0,a
      002531 A3               [24]  194 	inc	dptr
      002532 E0               [24]  195 	movx	a,@dptr
      002533 F9               [12]  196 	mov	r1,a
      002534 A3               [24]  197 	inc	dptr
      002535 E0               [24]  198 	movx	a,@dptr
      002536 FF               [12]  199 	mov	r7,a
      002537 85 1B 82         [24]  200 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      00253A 85 1C 83         [24]  201 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      00253D 85 1D F0         [24]  202 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      002540 E8               [12]  203 	mov	a,r0
      002541 12 2E 80         [24]  204 	lcall	__gptrput
      002544 A3               [24]  205 	inc	dptr
      002545 E9               [12]  206 	mov	a,r1
      002546 12 2E 80         [24]  207 	lcall	__gptrput
      002549 A3               [24]  208 	inc	dptr
      00254A EF               [12]  209 	mov	a,r7
      00254B 12 2E 80         [24]  210 	lcall	__gptrput
      00254E 80 61            [24]  211 	sjmp	00106$
      002550                        212 00105$:
                                    213 ;	src/linked_list.c:22: buffer_t *tail = list->head;
      002550 90 20 21         [24]  214 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      002553 EA               [12]  215 	mov	a,r2
      002554 F0               [24]  216 	movx	@dptr,a
      002555 EB               [12]  217 	mov	a,r3
      002556 A3               [24]  218 	inc	dptr
      002557 F0               [24]  219 	movx	@dptr,a
      002558 EC               [12]  220 	mov	a,r4
      002559 A3               [24]  221 	inc	dptr
      00255A F0               [24]  222 	movx	@dptr,a
                                    223 ;	src/linked_list.c:23: while(tail->next != NULL)
      00255B                        224 00101$:
      00255B 90 20 21         [24]  225 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      00255E E0               [24]  226 	movx	a,@dptr
      00255F FD               [12]  227 	mov	r5,a
      002560 A3               [24]  228 	inc	dptr
      002561 E0               [24]  229 	movx	a,@dptr
      002562 FE               [12]  230 	mov	r6,a
      002563 A3               [24]  231 	inc	dptr
      002564 E0               [24]  232 	movx	a,@dptr
      002565 FF               [12]  233 	mov	r7,a
      002566 74 08            [12]  234 	mov	a,#0x08
      002568 2D               [12]  235 	add	a,r5
      002569 FD               [12]  236 	mov	r5,a
      00256A E4               [12]  237 	clr	a
      00256B 3E               [12]  238 	addc	a,r6
      00256C FE               [12]  239 	mov	r6,a
      00256D 8D 82            [24]  240 	mov	dpl,r5
      00256F 8E 83            [24]  241 	mov	dph,r6
      002571 8F F0            [24]  242 	mov	b,r7
      002573 12 3A DA         [24]  243 	lcall	__gptrget
      002576 FA               [12]  244 	mov	r2,a
      002577 A3               [24]  245 	inc	dptr
      002578 12 3A DA         [24]  246 	lcall	__gptrget
      00257B FB               [12]  247 	mov	r3,a
      00257C A3               [24]  248 	inc	dptr
      00257D 12 3A DA         [24]  249 	lcall	__gptrget
      002580 FC               [12]  250 	mov	r4,a
      002581 EA               [12]  251 	mov	a,r2
      002582 4B               [12]  252 	orl	a,r3
      002583 60 0D            [24]  253 	jz	00103$
                                    254 ;	src/linked_list.c:25: tail = tail->next;
      002585 90 20 21         [24]  255 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      002588 EA               [12]  256 	mov	a,r2
      002589 F0               [24]  257 	movx	@dptr,a
      00258A EB               [12]  258 	mov	a,r3
      00258B A3               [24]  259 	inc	dptr
      00258C F0               [24]  260 	movx	@dptr,a
      00258D EC               [12]  261 	mov	a,r4
      00258E A3               [24]  262 	inc	dptr
      00258F F0               [24]  263 	movx	@dptr,a
      002590 80 C9            [24]  264 	sjmp	00101$
      002592                        265 00103$:
                                    266 ;	src/linked_list.c:27: tail->next = buffer;
      002592 90 20 1B         [24]  267 	mov	dptr,#_append_to_buffer_list_PARM_2
      002595 E0               [24]  268 	movx	a,@dptr
      002596 FA               [12]  269 	mov	r2,a
      002597 A3               [24]  270 	inc	dptr
      002598 E0               [24]  271 	movx	a,@dptr
      002599 FB               [12]  272 	mov	r3,a
      00259A A3               [24]  273 	inc	dptr
      00259B E0               [24]  274 	movx	a,@dptr
      00259C FC               [12]  275 	mov	r4,a
      00259D 8D 82            [24]  276 	mov	dpl,r5
      00259F 8E 83            [24]  277 	mov	dph,r6
      0025A1 8F F0            [24]  278 	mov	b,r7
      0025A3 EA               [12]  279 	mov	a,r2
      0025A4 12 2E 80         [24]  280 	lcall	__gptrput
      0025A7 A3               [24]  281 	inc	dptr
      0025A8 EB               [12]  282 	mov	a,r3
      0025A9 12 2E 80         [24]  283 	lcall	__gptrput
      0025AC A3               [24]  284 	inc	dptr
      0025AD EC               [12]  285 	mov	a,r4
      0025AE 12 2E 80         [24]  286 	lcall	__gptrput
      0025B1                        287 00106$:
                                    288 ;	src/linked_list.c:29: buffer->next = NULL; 
      0025B1 90 20 1B         [24]  289 	mov	dptr,#_append_to_buffer_list_PARM_2
      0025B4 E0               [24]  290 	movx	a,@dptr
      0025B5 FD               [12]  291 	mov	r5,a
      0025B6 A3               [24]  292 	inc	dptr
      0025B7 E0               [24]  293 	movx	a,@dptr
      0025B8 FE               [12]  294 	mov	r6,a
      0025B9 A3               [24]  295 	inc	dptr
      0025BA E0               [24]  296 	movx	a,@dptr
      0025BB FF               [12]  297 	mov	r7,a
      0025BC 74 08            [12]  298 	mov	a,#0x08
      0025BE 2D               [12]  299 	add	a,r5
      0025BF FD               [12]  300 	mov	r5,a
      0025C0 E4               [12]  301 	clr	a
      0025C1 3E               [12]  302 	addc	a,r6
      0025C2 FE               [12]  303 	mov	r6,a
      0025C3 8D 82            [24]  304 	mov	dpl,r5
      0025C5 8E 83            [24]  305 	mov	dph,r6
      0025C7 8F F0            [24]  306 	mov	b,r7
      0025C9 E4               [12]  307 	clr	a
      0025CA 12 2E 80         [24]  308 	lcall	__gptrput
      0025CD A3               [24]  309 	inc	dptr
      0025CE 12 2E 80         [24]  310 	lcall	__gptrput
      0025D1 A3               [24]  311 	inc	dptr
      0025D2 12 2E 80         [24]  312 	lcall	__gptrput
                                    313 ;	src/linked_list.c:30: return true;
      0025D5 75 82 01         [24]  314 	mov	dpl,#0x01
                                    315 ;	src/linked_list.c:31: }
      0025D8 22               [24]  316 	ret
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
      0025D9                        330 _remove_from_buffer_list:
      0025D9 AF F0            [24]  331 	mov	r7,b
      0025DB AE 83            [24]  332 	mov	r6,dph
      0025DD E5 82            [12]  333 	mov	a,dpl
      0025DF 90 20 26         [24]  334 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      0025E2 F0               [24]  335 	movx	@dptr,a
      0025E3 EE               [12]  336 	mov	a,r6
      0025E4 A3               [24]  337 	inc	dptr
      0025E5 F0               [24]  338 	movx	@dptr,a
      0025E6 EF               [12]  339 	mov	a,r7
      0025E7 A3               [24]  340 	inc	dptr
      0025E8 F0               [24]  341 	movx	@dptr,a
                                    342 ;	src/linked_list.c:36: if (list == NULL) return false;
      0025E9 90 20 26         [24]  343 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      0025EC E0               [24]  344 	movx	a,@dptr
      0025ED F5 08            [12]  345 	mov	_remove_from_buffer_list_sloc0_1_0,a
      0025EF A3               [24]  346 	inc	dptr
      0025F0 E0               [24]  347 	movx	a,@dptr
      0025F1 F5 09            [12]  348 	mov	(_remove_from_buffer_list_sloc0_1_0 + 1),a
      0025F3 A3               [24]  349 	inc	dptr
      0025F4 E0               [24]  350 	movx	a,@dptr
      0025F5 F5 0A            [12]  351 	mov	(_remove_from_buffer_list_sloc0_1_0 + 2),a
      0025F7 E5 08            [12]  352 	mov	a,_remove_from_buffer_list_sloc0_1_0
      0025F9 45 09            [12]  353 	orl	a,(_remove_from_buffer_list_sloc0_1_0 + 1)
      0025FB 70 03            [24]  354 	jnz	00102$
      0025FD F5 82            [12]  355 	mov	dpl,a
      0025FF 22               [24]  356 	ret
      002600                        357 00102$:
                                    358 ;	src/linked_list.c:37: if (list->head == NULL) return false;
      002600 85 08 82         [24]  359 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      002603 85 09 83         [24]  360 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      002606 85 0A F0         [24]  361 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      002609 12 3A DA         [24]  362 	lcall	__gptrget
      00260C FA               [12]  363 	mov	r2,a
      00260D A3               [24]  364 	inc	dptr
      00260E 12 3A DA         [24]  365 	lcall	__gptrget
      002611 FB               [12]  366 	mov	r3,a
      002612 A3               [24]  367 	inc	dptr
      002613 12 3A DA         [24]  368 	lcall	__gptrget
      002616 FC               [12]  369 	mov	r4,a
      002617 EA               [12]  370 	mov	a,r2
      002618 4B               [12]  371 	orl	a,r3
      002619 70 03            [24]  372 	jnz	00104$
      00261B F5 82            [12]  373 	mov	dpl,a
      00261D 22               [24]  374 	ret
      00261E                        375 00104$:
                                    376 ;	src/linked_list.c:40: if (idx == 0)
      00261E 90 20 24         [24]  377 	mov	dptr,#_remove_from_buffer_list_PARM_2
      002621 E0               [24]  378 	movx	a,@dptr
      002622 F8               [12]  379 	mov	r0,a
      002623 A3               [24]  380 	inc	dptr
      002624 E0               [24]  381 	movx	a,@dptr
      002625 F9               [12]  382 	mov	r1,a
      002626 90 20 24         [24]  383 	mov	dptr,#_remove_from_buffer_list_PARM_2
      002629 E0               [24]  384 	movx	a,@dptr
      00262A F5 F0            [12]  385 	mov	b,a
      00262C A3               [24]  386 	inc	dptr
      00262D E0               [24]  387 	movx	a,@dptr
      00262E 45 F0            [12]  388 	orl	a,b
      002630 70 42            [24]  389 	jnz	00112$
                                    390 ;	src/linked_list.c:43: to_free = list->head;
      002632 90 20 29         [24]  391 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002635 EA               [12]  392 	mov	a,r2
      002636 F0               [24]  393 	movx	@dptr,a
      002637 EB               [12]  394 	mov	a,r3
      002638 A3               [24]  395 	inc	dptr
      002639 F0               [24]  396 	movx	@dptr,a
      00263A EC               [12]  397 	mov	a,r4
      00263B A3               [24]  398 	inc	dptr
      00263C F0               [24]  399 	movx	@dptr,a
                                    400 ;	src/linked_list.c:44: list->head = list->head->next;  
      00263D 74 08            [12]  401 	mov	a,#0x08
      00263F 2A               [12]  402 	add	a,r2
      002640 FD               [12]  403 	mov	r5,a
      002641 E4               [12]  404 	clr	a
      002642 3B               [12]  405 	addc	a,r3
      002643 FE               [12]  406 	mov	r6,a
      002644 8C 07            [24]  407 	mov	ar7,r4
      002646 8D 82            [24]  408 	mov	dpl,r5
      002648 8E 83            [24]  409 	mov	dph,r6
      00264A 8F F0            [24]  410 	mov	b,r7
      00264C 12 3A DA         [24]  411 	lcall	__gptrget
      00264F FD               [12]  412 	mov	r5,a
      002650 A3               [24]  413 	inc	dptr
      002651 12 3A DA         [24]  414 	lcall	__gptrget
      002654 FE               [12]  415 	mov	r6,a
      002655 A3               [24]  416 	inc	dptr
      002656 12 3A DA         [24]  417 	lcall	__gptrget
      002659 FF               [12]  418 	mov	r7,a
      00265A 85 08 82         [24]  419 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      00265D 85 09 83         [24]  420 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      002660 85 0A F0         [24]  421 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      002663 ED               [12]  422 	mov	a,r5
      002664 12 2E 80         [24]  423 	lcall	__gptrput
      002667 A3               [24]  424 	inc	dptr
      002668 EE               [12]  425 	mov	a,r6
      002669 12 2E 80         [24]  426 	lcall	__gptrput
      00266C A3               [24]  427 	inc	dptr
      00266D EF               [12]  428 	mov	a,r7
      00266E 12 2E 80         [24]  429 	lcall	__gptrput
      002671 02 27 3C         [24]  430 	ljmp	00113$
      002674                        431 00112$:
                                    432 ;	src/linked_list.c:48: buffer_t *prev = list->head;
      002674 90 20 2C         [24]  433 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      002677 EA               [12]  434 	mov	a,r2
      002678 F0               [24]  435 	movx	@dptr,a
      002679 EB               [12]  436 	mov	a,r3
      00267A A3               [24]  437 	inc	dptr
      00267B F0               [24]  438 	movx	@dptr,a
      00267C EC               [12]  439 	mov	a,r4
      00267D A3               [24]  440 	inc	dptr
      00267E F0               [24]  441 	movx	@dptr,a
                                    442 ;	src/linked_list.c:49: idx--;
      00267F 18               [12]  443 	dec	r0
      002680 B8 FF 01         [24]  444 	cjne	r0,#0xff,00160$
      002683 19               [12]  445 	dec	r1
      002684                        446 00160$:
      002684 90 20 24         [24]  447 	mov	dptr,#_remove_from_buffer_list_PARM_2
      002687 E8               [12]  448 	mov	a,r0
      002688 F0               [24]  449 	movx	@dptr,a
      002689 E9               [12]  450 	mov	a,r1
      00268A A3               [24]  451 	inc	dptr
      00268B F0               [24]  452 	movx	@dptr,a
                                    453 ;	src/linked_list.c:50: while(idx > 0 && prev->next != NULL)
      00268C 90 20 24         [24]  454 	mov	dptr,#_remove_from_buffer_list_PARM_2
      00268F E0               [24]  455 	movx	a,@dptr
      002690 FE               [12]  456 	mov	r6,a
      002691 A3               [24]  457 	inc	dptr
      002692 E0               [24]  458 	movx	a,@dptr
      002693 FF               [12]  459 	mov	r7,a
      002694                        460 00106$:
      002694 EE               [12]  461 	mov	a,r6
      002695 4F               [12]  462 	orl	a,r7
      002696 60 3C            [24]  463 	jz	00108$
      002698 90 20 2C         [24]  464 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      00269B E0               [24]  465 	movx	a,@dptr
      00269C FB               [12]  466 	mov	r3,a
      00269D A3               [24]  467 	inc	dptr
      00269E E0               [24]  468 	movx	a,@dptr
      00269F FC               [12]  469 	mov	r4,a
      0026A0 A3               [24]  470 	inc	dptr
      0026A1 E0               [24]  471 	movx	a,@dptr
      0026A2 FD               [12]  472 	mov	r5,a
      0026A3 74 08            [12]  473 	mov	a,#0x08
      0026A5 2B               [12]  474 	add	a,r3
      0026A6 FB               [12]  475 	mov	r3,a
      0026A7 E4               [12]  476 	clr	a
      0026A8 3C               [12]  477 	addc	a,r4
      0026A9 FC               [12]  478 	mov	r4,a
      0026AA 8B 82            [24]  479 	mov	dpl,r3
      0026AC 8C 83            [24]  480 	mov	dph,r4
      0026AE 8D F0            [24]  481 	mov	b,r5
      0026B0 12 3A DA         [24]  482 	lcall	__gptrget
      0026B3 FB               [12]  483 	mov	r3,a
      0026B4 A3               [24]  484 	inc	dptr
      0026B5 12 3A DA         [24]  485 	lcall	__gptrget
      0026B8 FC               [12]  486 	mov	r4,a
      0026B9 A3               [24]  487 	inc	dptr
      0026BA 12 3A DA         [24]  488 	lcall	__gptrget
      0026BD FD               [12]  489 	mov	r5,a
      0026BE EB               [12]  490 	mov	a,r3
      0026BF 4C               [12]  491 	orl	a,r4
      0026C0 60 12            [24]  492 	jz	00108$
                                    493 ;	src/linked_list.c:52: prev = prev->next;
      0026C2 90 20 2C         [24]  494 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      0026C5 EB               [12]  495 	mov	a,r3
      0026C6 F0               [24]  496 	movx	@dptr,a
      0026C7 EC               [12]  497 	mov	a,r4
      0026C8 A3               [24]  498 	inc	dptr
      0026C9 F0               [24]  499 	movx	@dptr,a
      0026CA ED               [12]  500 	mov	a,r5
      0026CB A3               [24]  501 	inc	dptr
      0026CC F0               [24]  502 	movx	@dptr,a
                                    503 ;	src/linked_list.c:53: idx--;
      0026CD 1E               [12]  504 	dec	r6
      0026CE BE FF 01         [24]  505 	cjne	r6,#0xff,00163$
      0026D1 1F               [12]  506 	dec	r7
      0026D2                        507 00163$:
      0026D2 80 C0            [24]  508 	sjmp	00106$
      0026D4                        509 00108$:
                                    510 ;	src/linked_list.c:56: if (idx != 0) return false;
      0026D4 EE               [12]  511 	mov	a,r6
      0026D5 4F               [12]  512 	orl	a,r7
      0026D6 60 04            [24]  513 	jz	00110$
      0026D8 75 82 00         [24]  514 	mov	dpl,#0x00
      0026DB 22               [24]  515 	ret
      0026DC                        516 00110$:
                                    517 ;	src/linked_list.c:57: to_free = prev->next;
      0026DC 90 20 2C         [24]  518 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      0026DF E0               [24]  519 	movx	a,@dptr
      0026E0 FD               [12]  520 	mov	r5,a
      0026E1 A3               [24]  521 	inc	dptr
      0026E2 E0               [24]  522 	movx	a,@dptr
      0026E3 FE               [12]  523 	mov	r6,a
      0026E4 A3               [24]  524 	inc	dptr
      0026E5 E0               [24]  525 	movx	a,@dptr
      0026E6 FF               [12]  526 	mov	r7,a
      0026E7 74 08            [12]  527 	mov	a,#0x08
      0026E9 2D               [12]  528 	add	a,r5
      0026EA FD               [12]  529 	mov	r5,a
      0026EB E4               [12]  530 	clr	a
      0026EC 3E               [12]  531 	addc	a,r6
      0026ED FE               [12]  532 	mov	r6,a
      0026EE 8D 82            [24]  533 	mov	dpl,r5
      0026F0 8E 83            [24]  534 	mov	dph,r6
      0026F2 8F F0            [24]  535 	mov	b,r7
      0026F4 12 3A DA         [24]  536 	lcall	__gptrget
      0026F7 FA               [12]  537 	mov	r2,a
      0026F8 A3               [24]  538 	inc	dptr
      0026F9 12 3A DA         [24]  539 	lcall	__gptrget
      0026FC FB               [12]  540 	mov	r3,a
      0026FD A3               [24]  541 	inc	dptr
      0026FE 12 3A DA         [24]  542 	lcall	__gptrget
      002701 FC               [12]  543 	mov	r4,a
      002702 90 20 29         [24]  544 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002705 EA               [12]  545 	mov	a,r2
      002706 F0               [24]  546 	movx	@dptr,a
      002707 EB               [12]  547 	mov	a,r3
      002708 A3               [24]  548 	inc	dptr
      002709 F0               [24]  549 	movx	@dptr,a
      00270A EC               [12]  550 	mov	a,r4
      00270B A3               [24]  551 	inc	dptr
      00270C F0               [24]  552 	movx	@dptr,a
                                    553 ;	src/linked_list.c:58: prev->next = to_free->next;
      00270D 74 08            [12]  554 	mov	a,#0x08
      00270F 2A               [12]  555 	add	a,r2
      002710 FA               [12]  556 	mov	r2,a
      002711 E4               [12]  557 	clr	a
      002712 3B               [12]  558 	addc	a,r3
      002713 FB               [12]  559 	mov	r3,a
      002714 8A 82            [24]  560 	mov	dpl,r2
      002716 8B 83            [24]  561 	mov	dph,r3
      002718 8C F0            [24]  562 	mov	b,r4
      00271A 12 3A DA         [24]  563 	lcall	__gptrget
      00271D FA               [12]  564 	mov	r2,a
      00271E A3               [24]  565 	inc	dptr
      00271F 12 3A DA         [24]  566 	lcall	__gptrget
      002722 FB               [12]  567 	mov	r3,a
      002723 A3               [24]  568 	inc	dptr
      002724 12 3A DA         [24]  569 	lcall	__gptrget
      002727 FC               [12]  570 	mov	r4,a
      002728 8D 82            [24]  571 	mov	dpl,r5
      00272A 8E 83            [24]  572 	mov	dph,r6
      00272C 8F F0            [24]  573 	mov	b,r7
      00272E EA               [12]  574 	mov	a,r2
      00272F 12 2E 80         [24]  575 	lcall	__gptrput
      002732 A3               [24]  576 	inc	dptr
      002733 EB               [12]  577 	mov	a,r3
      002734 12 2E 80         [24]  578 	lcall	__gptrput
      002737 A3               [24]  579 	inc	dptr
      002738 EC               [12]  580 	mov	a,r4
      002739 12 2E 80         [24]  581 	lcall	__gptrput
      00273C                        582 00113$:
                                    583 ;	src/linked_list.c:61: if (to_free == NULL) return false; 
      00273C 90 20 29         [24]  584 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      00273F E0               [24]  585 	movx	a,@dptr
      002740 FE               [12]  586 	mov	r6,a
      002741 A3               [24]  587 	inc	dptr
      002742 E0               [24]  588 	movx	a,@dptr
      002743 FD               [12]  589 	mov	r5,a
      002744 A3               [24]  590 	inc	dptr
      002745 E0               [24]  591 	movx	a,@dptr
      002746 FF               [12]  592 	mov	r7,a
      002747 90 20 29         [24]  593 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      00274A E0               [24]  594 	movx	a,@dptr
      00274B F5 F0            [12]  595 	mov	b,a
      00274D A3               [24]  596 	inc	dptr
      00274E E0               [24]  597 	movx	a,@dptr
      00274F 45 F0            [12]  598 	orl	a,b
      002751 70 03            [24]  599 	jnz	00115$
      002753 F5 82            [12]  600 	mov	dpl,a
      002755 22               [24]  601 	ret
      002756                        602 00115$:
                                    603 ;	src/linked_list.c:62: if (to_free->buffer != NULL) 
      002756 8E 82            [24]  604 	mov	dpl,r6
      002758 8D 83            [24]  605 	mov	dph,r5
      00275A 8F F0            [24]  606 	mov	b,r7
      00275C 12 3A DA         [24]  607 	lcall	__gptrget
      00275F FE               [12]  608 	mov	r6,a
      002760 A3               [24]  609 	inc	dptr
      002761 12 3A DA         [24]  610 	lcall	__gptrget
      002764 FF               [12]  611 	mov	r7,a
      002765 4E               [12]  612 	orl	a,r6
      002766 60 0B            [24]  613 	jz	00117$
                                    614 ;	src/linked_list.c:64: free(to_free->buffer);
      002768 7D 00            [12]  615 	mov	r5,#0x00
      00276A 8E 82            [24]  616 	mov	dpl,r6
      00276C 8F 83            [24]  617 	mov	dph,r7
      00276E 8D F0            [24]  618 	mov	b,r5
      002770 12 2D 01         [24]  619 	lcall	_free
      002773                        620 00117$:
                                    621 ;	src/linked_list.c:66: free(to_free);
      002773 90 20 29         [24]  622 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002776 E0               [24]  623 	movx	a,@dptr
      002777 FD               [12]  624 	mov	r5,a
      002778 A3               [24]  625 	inc	dptr
      002779 E0               [24]  626 	movx	a,@dptr
      00277A FE               [12]  627 	mov	r6,a
      00277B A3               [24]  628 	inc	dptr
      00277C E0               [24]  629 	movx	a,@dptr
      00277D FF               [12]  630 	mov	r7,a
      00277E 8D 82            [24]  631 	mov	dpl,r5
      002780 8E 83            [24]  632 	mov	dph,r6
      002782 8F F0            [24]  633 	mov	b,r7
      002784 12 2D 01         [24]  634 	lcall	_free
                                    635 ;	src/linked_list.c:67: return true; 
      002787 75 82 01         [24]  636 	mov	dpl,#0x01
                                    637 ;	src/linked_list.c:68: }
      00278A 22               [24]  638 	ret
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
      00278B                        650 _free_all_elems_from_list:
      00278B AF F0            [24]  651 	mov	r7,b
      00278D AE 83            [24]  652 	mov	r6,dph
      00278F E5 82            [12]  653 	mov	a,dpl
      002791 90 20 2F         [24]  654 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      002794 F0               [24]  655 	movx	@dptr,a
      002795 EE               [12]  656 	mov	a,r6
      002796 A3               [24]  657 	inc	dptr
      002797 F0               [24]  658 	movx	@dptr,a
      002798 EF               [12]  659 	mov	a,r7
      002799 A3               [24]  660 	inc	dptr
      00279A F0               [24]  661 	movx	@dptr,a
                                    662 ;	src/linked_list.c:72: buffer_t *buffer_to_free = list->head;
      00279B 90 20 2F         [24]  663 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      00279E E0               [24]  664 	movx	a,@dptr
      00279F FD               [12]  665 	mov	r5,a
      0027A0 A3               [24]  666 	inc	dptr
      0027A1 E0               [24]  667 	movx	a,@dptr
      0027A2 FE               [12]  668 	mov	r6,a
      0027A3 A3               [24]  669 	inc	dptr
      0027A4 E0               [24]  670 	movx	a,@dptr
      0027A5 FF               [12]  671 	mov	r7,a
      0027A6 8D 82            [24]  672 	mov	dpl,r5
      0027A8 8E 83            [24]  673 	mov	dph,r6
      0027AA 8F F0            [24]  674 	mov	b,r7
      0027AC 12 3A DA         [24]  675 	lcall	__gptrget
      0027AF FA               [12]  676 	mov	r2,a
      0027B0 A3               [24]  677 	inc	dptr
      0027B1 12 3A DA         [24]  678 	lcall	__gptrget
      0027B4 FB               [12]  679 	mov	r3,a
      0027B5 A3               [24]  680 	inc	dptr
      0027B6 12 3A DA         [24]  681 	lcall	__gptrget
      0027B9 FC               [12]  682 	mov	r4,a
      0027BA 90 20 32         [24]  683 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      0027BD EA               [12]  684 	mov	a,r2
      0027BE F0               [24]  685 	movx	@dptr,a
      0027BF EB               [12]  686 	mov	a,r3
      0027C0 A3               [24]  687 	inc	dptr
      0027C1 F0               [24]  688 	movx	@dptr,a
      0027C2 EC               [12]  689 	mov	a,r4
      0027C3 A3               [24]  690 	inc	dptr
      0027C4 F0               [24]  691 	movx	@dptr,a
                                    692 ;	src/linked_list.c:73: while(list->head != NULL)
      0027C5                        693 00103$:
      0027C5 90 20 2F         [24]  694 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      0027C8 E0               [24]  695 	movx	a,@dptr
      0027C9 FA               [12]  696 	mov	r2,a
      0027CA A3               [24]  697 	inc	dptr
      0027CB E0               [24]  698 	movx	a,@dptr
      0027CC FB               [12]  699 	mov	r3,a
      0027CD A3               [24]  700 	inc	dptr
      0027CE E0               [24]  701 	movx	a,@dptr
      0027CF FC               [12]  702 	mov	r4,a
      0027D0 8A 82            [24]  703 	mov	dpl,r2
      0027D2 8B 83            [24]  704 	mov	dph,r3
      0027D4 8C F0            [24]  705 	mov	b,r4
      0027D6 12 3A DA         [24]  706 	lcall	__gptrget
      0027D9 F5 0B            [12]  707 	mov	_free_all_elems_from_list_sloc0_1_0,a
      0027DB A3               [24]  708 	inc	dptr
      0027DC 12 3A DA         [24]  709 	lcall	__gptrget
      0027DF F5 0C            [12]  710 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      0027E1 A3               [24]  711 	inc	dptr
      0027E2 12 3A DA         [24]  712 	lcall	__gptrget
      0027E5 F5 0D            [12]  713 	mov	(_free_all_elems_from_list_sloc0_1_0 + 2),a
      0027E7 E5 0B            [12]  714 	mov	a,_free_all_elems_from_list_sloc0_1_0
      0027E9 45 0C            [12]  715 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0027EB 70 01            [24]  716 	jnz	00120$
      0027ED 22               [24]  717 	ret
      0027EE                        718 00120$:
                                    719 ;	src/linked_list.c:75: list->head = list->head->next;
      0027EE C0 05            [24]  720 	push	ar5
      0027F0 C0 06            [24]  721 	push	ar6
      0027F2 C0 07            [24]  722 	push	ar7
      0027F4 74 08            [12]  723 	mov	a,#0x08
      0027F6 25 0B            [12]  724 	add	a,_free_all_elems_from_list_sloc0_1_0
      0027F8 F8               [12]  725 	mov	r0,a
      0027F9 E4               [12]  726 	clr	a
      0027FA 35 0C            [12]  727 	addc	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0027FC F9               [12]  728 	mov	r1,a
      0027FD AF 0D            [24]  729 	mov	r7,(_free_all_elems_from_list_sloc0_1_0 + 2)
      0027FF 88 82            [24]  730 	mov	dpl,r0
      002801 89 83            [24]  731 	mov	dph,r1
      002803 8F F0            [24]  732 	mov	b,r7
      002805 12 3A DA         [24]  733 	lcall	__gptrget
      002808 F8               [12]  734 	mov	r0,a
      002809 A3               [24]  735 	inc	dptr
      00280A 12 3A DA         [24]  736 	lcall	__gptrget
      00280D F9               [12]  737 	mov	r1,a
      00280E A3               [24]  738 	inc	dptr
      00280F 12 3A DA         [24]  739 	lcall	__gptrget
      002812 FF               [12]  740 	mov	r7,a
      002813 8A 82            [24]  741 	mov	dpl,r2
      002815 8B 83            [24]  742 	mov	dph,r3
      002817 8C F0            [24]  743 	mov	b,r4
      002819 E8               [12]  744 	mov	a,r0
      00281A 12 2E 80         [24]  745 	lcall	__gptrput
      00281D A3               [24]  746 	inc	dptr
      00281E E9               [12]  747 	mov	a,r1
      00281F 12 2E 80         [24]  748 	lcall	__gptrput
      002822 A3               [24]  749 	inc	dptr
      002823 EF               [12]  750 	mov	a,r7
      002824 12 2E 80         [24]  751 	lcall	__gptrput
                                    752 ;	src/linked_list.c:76: if (buffer_to_free->buffer != NULL)
      002827 90 20 32         [24]  753 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      00282A E0               [24]  754 	movx	a,@dptr
      00282B FD               [12]  755 	mov	r5,a
      00282C A3               [24]  756 	inc	dptr
      00282D E0               [24]  757 	movx	a,@dptr
      00282E FE               [12]  758 	mov	r6,a
      00282F A3               [24]  759 	inc	dptr
      002830 E0               [24]  760 	movx	a,@dptr
      002831 FF               [12]  761 	mov	r7,a
      002832 8D 82            [24]  762 	mov	dpl,r5
      002834 8E 83            [24]  763 	mov	dph,r6
      002836 8F F0            [24]  764 	mov	b,r7
      002838 12 3A DA         [24]  765 	lcall	__gptrget
      00283B F5 0B            [12]  766 	mov	_free_all_elems_from_list_sloc0_1_0,a
      00283D A3               [24]  767 	inc	dptr
      00283E 12 3A DA         [24]  768 	lcall	__gptrget
      002841 F5 0C            [12]  769 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      002843 D0 07            [24]  770 	pop	ar7
      002845 D0 06            [24]  771 	pop	ar6
      002847 D0 05            [24]  772 	pop	ar5
      002849 E5 0B            [12]  773 	mov	a,_free_all_elems_from_list_sloc0_1_0
      00284B 45 0C            [12]  774 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      00284D 60 1B            [24]  775 	jz	00102$
                                    776 ;	src/linked_list.c:78: free(buffer_to_free->buffer);
      00284F AB 0B            [24]  777 	mov	r3,_free_all_elems_from_list_sloc0_1_0
      002851 AC 0C            [24]  778 	mov	r4,(_free_all_elems_from_list_sloc0_1_0 + 1)
      002853 7A 00            [12]  779 	mov	r2,#0x00
      002855 8B 82            [24]  780 	mov	dpl,r3
      002857 8C 83            [24]  781 	mov	dph,r4
      002859 8A F0            [24]  782 	mov	b,r2
      00285B C0 07            [24]  783 	push	ar7
      00285D C0 06            [24]  784 	push	ar6
      00285F C0 05            [24]  785 	push	ar5
      002861 12 2D 01         [24]  786 	lcall	_free
      002864 D0 05            [24]  787 	pop	ar5
      002866 D0 06            [24]  788 	pop	ar6
      002868 D0 07            [24]  789 	pop	ar7
      00286A                        790 00102$:
                                    791 ;	src/linked_list.c:80: free(buffer_to_free);
      00286A 90 20 32         [24]  792 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      00286D E0               [24]  793 	movx	a,@dptr
      00286E FA               [12]  794 	mov	r2,a
      00286F A3               [24]  795 	inc	dptr
      002870 E0               [24]  796 	movx	a,@dptr
      002871 FB               [12]  797 	mov	r3,a
      002872 A3               [24]  798 	inc	dptr
      002873 E0               [24]  799 	movx	a,@dptr
      002874 FC               [12]  800 	mov	r4,a
      002875 8A 82            [24]  801 	mov	dpl,r2
      002877 8B 83            [24]  802 	mov	dph,r3
      002879 8C F0            [24]  803 	mov	b,r4
      00287B C0 07            [24]  804 	push	ar7
      00287D C0 06            [24]  805 	push	ar6
      00287F C0 05            [24]  806 	push	ar5
      002881 12 2D 01         [24]  807 	lcall	_free
      002884 D0 05            [24]  808 	pop	ar5
      002886 D0 06            [24]  809 	pop	ar6
      002888 D0 07            [24]  810 	pop	ar7
                                    811 ;	src/linked_list.c:81: buffer_to_free = list->head;
      00288A 8D 82            [24]  812 	mov	dpl,r5
      00288C 8E 83            [24]  813 	mov	dph,r6
      00288E 8F F0            [24]  814 	mov	b,r7
      002890 12 3A DA         [24]  815 	lcall	__gptrget
      002893 FA               [12]  816 	mov	r2,a
      002894 A3               [24]  817 	inc	dptr
      002895 12 3A DA         [24]  818 	lcall	__gptrget
      002898 FB               [12]  819 	mov	r3,a
      002899 A3               [24]  820 	inc	dptr
      00289A 12 3A DA         [24]  821 	lcall	__gptrget
      00289D FC               [12]  822 	mov	r4,a
      00289E 90 20 32         [24]  823 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      0028A1 EA               [12]  824 	mov	a,r2
      0028A2 F0               [24]  825 	movx	@dptr,a
      0028A3 EB               [12]  826 	mov	a,r3
      0028A4 A3               [24]  827 	inc	dptr
      0028A5 F0               [24]  828 	movx	@dptr,a
      0028A6 EC               [12]  829 	mov	a,r4
      0028A7 A3               [24]  830 	inc	dptr
      0028A8 F0               [24]  831 	movx	@dptr,a
                                    832 ;	src/linked_list.c:83: }
      0028A9 02 27 C5         [24]  833 	ljmp	00103$
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
      0028AC                        845 _ll_length:
      0028AC AF F0            [24]  846 	mov	r7,b
      0028AE AE 83            [24]  847 	mov	r6,dph
      0028B0 E5 82            [12]  848 	mov	a,dpl
      0028B2 90 20 35         [24]  849 	mov	dptr,#_ll_length_list_65536_63
      0028B5 F0               [24]  850 	movx	@dptr,a
      0028B6 EE               [12]  851 	mov	a,r6
      0028B7 A3               [24]  852 	inc	dptr
      0028B8 F0               [24]  853 	movx	@dptr,a
      0028B9 EF               [12]  854 	mov	a,r7
      0028BA A3               [24]  855 	inc	dptr
      0028BB F0               [24]  856 	movx	@dptr,a
                                    857 ;	src/linked_list.c:88: buffer_t *curr = list->head;
      0028BC 90 20 35         [24]  858 	mov	dptr,#_ll_length_list_65536_63
      0028BF E0               [24]  859 	movx	a,@dptr
      0028C0 FD               [12]  860 	mov	r5,a
      0028C1 A3               [24]  861 	inc	dptr
      0028C2 E0               [24]  862 	movx	a,@dptr
      0028C3 FE               [12]  863 	mov	r6,a
      0028C4 A3               [24]  864 	inc	dptr
      0028C5 E0               [24]  865 	movx	a,@dptr
      0028C6 FF               [12]  866 	mov	r7,a
      0028C7 8D 82            [24]  867 	mov	dpl,r5
      0028C9 8E 83            [24]  868 	mov	dph,r6
      0028CB 8F F0            [24]  869 	mov	b,r7
      0028CD 12 3A DA         [24]  870 	lcall	__gptrget
      0028D0 FD               [12]  871 	mov	r5,a
      0028D1 A3               [24]  872 	inc	dptr
      0028D2 12 3A DA         [24]  873 	lcall	__gptrget
      0028D5 FE               [12]  874 	mov	r6,a
      0028D6 A3               [24]  875 	inc	dptr
      0028D7 12 3A DA         [24]  876 	lcall	__gptrget
      0028DA FF               [12]  877 	mov	r7,a
      0028DB 90 20 3A         [24]  878 	mov	dptr,#_ll_length_curr_65536_64
      0028DE ED               [12]  879 	mov	a,r5
      0028DF F0               [24]  880 	movx	@dptr,a
      0028E0 EE               [12]  881 	mov	a,r6
      0028E1 A3               [24]  882 	inc	dptr
      0028E2 F0               [24]  883 	movx	@dptr,a
      0028E3 EF               [12]  884 	mov	a,r7
      0028E4 A3               [24]  885 	inc	dptr
      0028E5 F0               [24]  886 	movx	@dptr,a
                                    887 ;	src/linked_list.c:89: while(curr != NULL)
      0028E6 90 20 38         [24]  888 	mov	dptr,#_ll_length_size_65536_64
      0028E9 E0               [24]  889 	movx	a,@dptr
      0028EA FE               [12]  890 	mov	r6,a
      0028EB A3               [24]  891 	inc	dptr
      0028EC E0               [24]  892 	movx	a,@dptr
      0028ED FF               [12]  893 	mov	r7,a
      0028EE                        894 00101$:
      0028EE 90 20 3A         [24]  895 	mov	dptr,#_ll_length_curr_65536_64
      0028F1 E0               [24]  896 	movx	a,@dptr
      0028F2 FB               [12]  897 	mov	r3,a
      0028F3 A3               [24]  898 	inc	dptr
      0028F4 E0               [24]  899 	movx	a,@dptr
      0028F5 FC               [12]  900 	mov	r4,a
      0028F6 A3               [24]  901 	inc	dptr
      0028F7 E0               [24]  902 	movx	a,@dptr
      0028F8 FD               [12]  903 	mov	r5,a
      0028F9 90 20 3A         [24]  904 	mov	dptr,#_ll_length_curr_65536_64
      0028FC E0               [24]  905 	movx	a,@dptr
      0028FD F5 F0            [12]  906 	mov	b,a
      0028FF A3               [24]  907 	inc	dptr
      002900 E0               [24]  908 	movx	a,@dptr
      002901 45 F0            [12]  909 	orl	a,b
      002903 60 2D            [24]  910 	jz	00103$
                                    911 ;	src/linked_list.c:91: size++;
      002905 0E               [12]  912 	inc	r6
      002906 BE 00 01         [24]  913 	cjne	r6,#0x00,00116$
      002909 0F               [12]  914 	inc	r7
      00290A                        915 00116$:
                                    916 ;	src/linked_list.c:92: curr = curr->next;
      00290A 74 08            [12]  917 	mov	a,#0x08
      00290C 2B               [12]  918 	add	a,r3
      00290D FB               [12]  919 	mov	r3,a
      00290E E4               [12]  920 	clr	a
      00290F 3C               [12]  921 	addc	a,r4
      002910 FC               [12]  922 	mov	r4,a
      002911 8B 82            [24]  923 	mov	dpl,r3
      002913 8C 83            [24]  924 	mov	dph,r4
      002915 8D F0            [24]  925 	mov	b,r5
      002917 12 3A DA         [24]  926 	lcall	__gptrget
      00291A FB               [12]  927 	mov	r3,a
      00291B A3               [24]  928 	inc	dptr
      00291C 12 3A DA         [24]  929 	lcall	__gptrget
      00291F FC               [12]  930 	mov	r4,a
      002920 A3               [24]  931 	inc	dptr
      002921 12 3A DA         [24]  932 	lcall	__gptrget
      002924 FD               [12]  933 	mov	r5,a
      002925 90 20 3A         [24]  934 	mov	dptr,#_ll_length_curr_65536_64
      002928 EB               [12]  935 	mov	a,r3
      002929 F0               [24]  936 	movx	@dptr,a
      00292A EC               [12]  937 	mov	a,r4
      00292B A3               [24]  938 	inc	dptr
      00292C F0               [24]  939 	movx	@dptr,a
      00292D ED               [12]  940 	mov	a,r5
      00292E A3               [24]  941 	inc	dptr
      00292F F0               [24]  942 	movx	@dptr,a
      002930 80 BC            [24]  943 	sjmp	00101$
      002932                        944 00103$:
                                    945 ;	src/linked_list.c:94: return size; 
      002932 8E 82            [24]  946 	mov	dpl,r6
      002934 8F 83            [24]  947 	mov	dph,r7
                                    948 ;	src/linked_list.c:95: }
      002936 22               [24]  949 	ret
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
      002937                        961 _ll_get_elem:
      002937 AF F0            [24]  962 	mov	r7,b
      002939 AE 83            [24]  963 	mov	r6,dph
      00293B E5 82            [12]  964 	mov	a,dpl
      00293D 90 20 3F         [24]  965 	mov	dptr,#_ll_get_elem_list_65536_66
      002940 F0               [24]  966 	movx	@dptr,a
      002941 EE               [12]  967 	mov	a,r6
      002942 A3               [24]  968 	inc	dptr
      002943 F0               [24]  969 	movx	@dptr,a
      002944 EF               [12]  970 	mov	a,r7
      002945 A3               [24]  971 	inc	dptr
      002946 F0               [24]  972 	movx	@dptr,a
                                    973 ;	src/linked_list.c:99: buffer_t *curr = list->head;
      002947 90 20 3F         [24]  974 	mov	dptr,#_ll_get_elem_list_65536_66
      00294A E0               [24]  975 	movx	a,@dptr
      00294B FD               [12]  976 	mov	r5,a
      00294C A3               [24]  977 	inc	dptr
      00294D E0               [24]  978 	movx	a,@dptr
      00294E FE               [12]  979 	mov	r6,a
      00294F A3               [24]  980 	inc	dptr
      002950 E0               [24]  981 	movx	a,@dptr
      002951 FF               [12]  982 	mov	r7,a
      002952 8D 82            [24]  983 	mov	dpl,r5
      002954 8E 83            [24]  984 	mov	dph,r6
      002956 8F F0            [24]  985 	mov	b,r7
      002958 12 3A DA         [24]  986 	lcall	__gptrget
      00295B FD               [12]  987 	mov	r5,a
      00295C A3               [24]  988 	inc	dptr
      00295D 12 3A DA         [24]  989 	lcall	__gptrget
      002960 FE               [12]  990 	mov	r6,a
      002961 A3               [24]  991 	inc	dptr
      002962 12 3A DA         [24]  992 	lcall	__gptrget
      002965 FF               [12]  993 	mov	r7,a
      002966 90 20 42         [24]  994 	mov	dptr,#_ll_get_elem_curr_65536_67
      002969 ED               [12]  995 	mov	a,r5
      00296A F0               [24]  996 	movx	@dptr,a
      00296B EE               [12]  997 	mov	a,r6
      00296C A3               [24]  998 	inc	dptr
      00296D F0               [24]  999 	movx	@dptr,a
      00296E EF               [12] 1000 	mov	a,r7
      00296F A3               [24] 1001 	inc	dptr
      002970 F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	src/linked_list.c:100: while(curr != NULL && elem_num > 0)
      002971 90 20 3D         [24] 1004 	mov	dptr,#_ll_get_elem_PARM_2
      002974 E0               [24] 1005 	movx	a,@dptr
      002975 FE               [12] 1006 	mov	r6,a
      002976 A3               [24] 1007 	inc	dptr
      002977 E0               [24] 1008 	movx	a,@dptr
      002978 FF               [12] 1009 	mov	r7,a
      002979                       1010 00102$:
      002979 90 20 42         [24] 1011 	mov	dptr,#_ll_get_elem_curr_65536_67
      00297C E0               [24] 1012 	movx	a,@dptr
      00297D FB               [12] 1013 	mov	r3,a
      00297E A3               [24] 1014 	inc	dptr
      00297F E0               [24] 1015 	movx	a,@dptr
      002980 FC               [12] 1016 	mov	r4,a
      002981 A3               [24] 1017 	inc	dptr
      002982 E0               [24] 1018 	movx	a,@dptr
      002983 FD               [12] 1019 	mov	r5,a
      002984 90 20 42         [24] 1020 	mov	dptr,#_ll_get_elem_curr_65536_67
      002987 E0               [24] 1021 	movx	a,@dptr
      002988 F5 F0            [12] 1022 	mov	b,a
      00298A A3               [24] 1023 	inc	dptr
      00298B E0               [24] 1024 	movx	a,@dptr
      00298C 45 F0            [12] 1025 	orl	a,b
      00298E 60 31            [24] 1026 	jz	00104$
      002990 EE               [12] 1027 	mov	a,r6
      002991 4F               [12] 1028 	orl	a,r7
      002992 60 2D            [24] 1029 	jz	00104$
                                   1030 ;	src/linked_list.c:102: curr = curr->next;
      002994 74 08            [12] 1031 	mov	a,#0x08
      002996 2B               [12] 1032 	add	a,r3
      002997 FB               [12] 1033 	mov	r3,a
      002998 E4               [12] 1034 	clr	a
      002999 3C               [12] 1035 	addc	a,r4
      00299A FC               [12] 1036 	mov	r4,a
      00299B 8B 82            [24] 1037 	mov	dpl,r3
      00299D 8C 83            [24] 1038 	mov	dph,r4
      00299F 8D F0            [24] 1039 	mov	b,r5
      0029A1 12 3A DA         [24] 1040 	lcall	__gptrget
      0029A4 FB               [12] 1041 	mov	r3,a
      0029A5 A3               [24] 1042 	inc	dptr
      0029A6 12 3A DA         [24] 1043 	lcall	__gptrget
      0029A9 FC               [12] 1044 	mov	r4,a
      0029AA A3               [24] 1045 	inc	dptr
      0029AB 12 3A DA         [24] 1046 	lcall	__gptrget
      0029AE FD               [12] 1047 	mov	r5,a
      0029AF 90 20 42         [24] 1048 	mov	dptr,#_ll_get_elem_curr_65536_67
      0029B2 EB               [12] 1049 	mov	a,r3
      0029B3 F0               [24] 1050 	movx	@dptr,a
      0029B4 EC               [12] 1051 	mov	a,r4
      0029B5 A3               [24] 1052 	inc	dptr
      0029B6 F0               [24] 1053 	movx	@dptr,a
      0029B7 ED               [12] 1054 	mov	a,r5
      0029B8 A3               [24] 1055 	inc	dptr
      0029B9 F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	src/linked_list.c:103: elem_num--;
      0029BA 1E               [12] 1058 	dec	r6
      0029BB BE FF 01         [24] 1059 	cjne	r6,#0xff,00122$
      0029BE 1F               [12] 1060 	dec	r7
      0029BF                       1061 00122$:
      0029BF 80 B8            [24] 1062 	sjmp	00102$
      0029C1                       1063 00104$:
                                   1064 ;	src/linked_list.c:105: return curr;
      0029C1 90 20 42         [24] 1065 	mov	dptr,#_ll_get_elem_curr_65536_67
      0029C4 E0               [24] 1066 	movx	a,@dptr
      0029C5 FD               [12] 1067 	mov	r5,a
      0029C6 A3               [24] 1068 	inc	dptr
      0029C7 E0               [24] 1069 	movx	a,@dptr
      0029C8 FE               [12] 1070 	mov	r6,a
      0029C9 A3               [24] 1071 	inc	dptr
      0029CA E0               [24] 1072 	movx	a,@dptr
      0029CB FF               [12] 1073 	mov	r7,a
      0029CC 8D 82            [24] 1074 	mov	dpl,r5
      0029CE 8E 83            [24] 1075 	mov	dph,r6
      0029D0 8F F0            [24] 1076 	mov	b,r7
                                   1077 ;	src/linked_list.c:106: }
      0029D2 22               [24] 1078 	ret
                                   1079 	.area CSEG    (CODE)
                                   1080 	.area CONST   (CODE)
                                   1081 	.area XINIT   (CODE)
                                   1082 	.area CABS    (ABS,CODE)
