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
      002022                         70 _append_to_buffer_list_PARM_2:
      002022                         71 	.ds 3
      002025                         72 _append_to_buffer_list_list_65536_47:
      002025                         73 	.ds 3
      002028                         74 _append_to_buffer_list_tail_131072_50:
      002028                         75 	.ds 3
      00202B                         76 _remove_from_buffer_list_PARM_2:
      00202B                         77 	.ds 2
      00202D                         78 _remove_from_buffer_list_list_65536_52:
      00202D                         79 	.ds 3
      002030                         80 _remove_from_buffer_list_to_free_65537_54:
      002030                         81 	.ds 3
      002033                         82 _remove_from_buffer_list_prev_131073_56:
      002033                         83 	.ds 3
      002036                         84 _free_all_elems_from_list_list_65536_59:
      002036                         85 	.ds 3
      002039                         86 _free_all_elems_from_list_buffer_to_free_65536_60:
      002039                         87 	.ds 3
      00203C                         88 _ll_length_list_65536_63:
      00203C                         89 	.ds 3
      00203F                         90 _ll_length_size_65536_64:
      00203F                         91 	.ds 2
      002041                         92 _ll_length_curr_65536_64:
      002041                         93 	.ds 3
      002044                         94 _ll_get_elem_PARM_2:
      002044                         95 	.ds 2
      002046                         96 _ll_get_elem_list_65536_66:
      002046                         97 	.ds 3
      002049                         98 _ll_get_elem_curr_65536_67:
      002049                         99 	.ds 3
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
      00265B                        146 _append_to_buffer_list:
                           000007   147 	ar7 = 0x07
                           000006   148 	ar6 = 0x06
                           000005   149 	ar5 = 0x05
                           000004   150 	ar4 = 0x04
                           000003   151 	ar3 = 0x03
                           000002   152 	ar2 = 0x02
                           000001   153 	ar1 = 0x01
                           000000   154 	ar0 = 0x00
      00265B AF F0            [24]  155 	mov	r7,b
      00265D AE 83            [24]  156 	mov	r6,dph
      00265F E5 82            [12]  157 	mov	a,dpl
      002661 90 20 25         [24]  158 	mov	dptr,#_append_to_buffer_list_list_65536_47
      002664 F0               [24]  159 	movx	@dptr,a
      002665 EE               [12]  160 	mov	a,r6
      002666 A3               [24]  161 	inc	dptr
      002667 F0               [24]  162 	movx	@dptr,a
      002668 EF               [12]  163 	mov	a,r7
      002669 A3               [24]  164 	inc	dptr
      00266A F0               [24]  165 	movx	@dptr,a
                                    166 ;	src/linked_list.c:16: if (list->head == NULL) 
      00266B 90 20 25         [24]  167 	mov	dptr,#_append_to_buffer_list_list_65536_47
      00266E E0               [24]  168 	movx	a,@dptr
      00266F F5 1B            [12]  169 	mov	_append_to_buffer_list_sloc0_1_0,a
      002671 A3               [24]  170 	inc	dptr
      002672 E0               [24]  171 	movx	a,@dptr
      002673 F5 1C            [12]  172 	mov	(_append_to_buffer_list_sloc0_1_0 + 1),a
      002675 A3               [24]  173 	inc	dptr
      002676 E0               [24]  174 	movx	a,@dptr
      002677 F5 1D            [12]  175 	mov	(_append_to_buffer_list_sloc0_1_0 + 2),a
      002679 85 1B 82         [24]  176 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      00267C 85 1C 83         [24]  177 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      00267F 85 1D F0         [24]  178 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      002682 12 3C 35         [24]  179 	lcall	__gptrget
      002685 FA               [12]  180 	mov	r2,a
      002686 A3               [24]  181 	inc	dptr
      002687 12 3C 35         [24]  182 	lcall	__gptrget
      00268A FB               [12]  183 	mov	r3,a
      00268B A3               [24]  184 	inc	dptr
      00268C 12 3C 35         [24]  185 	lcall	__gptrget
      00268F FC               [12]  186 	mov	r4,a
      002690 EA               [12]  187 	mov	a,r2
      002691 4B               [12]  188 	orl	a,r3
      002692 70 24            [24]  189 	jnz	00105$
                                    190 ;	src/linked_list.c:18: list->head = buffer; 
      002694 90 20 22         [24]  191 	mov	dptr,#_append_to_buffer_list_PARM_2
      002697 E0               [24]  192 	movx	a,@dptr
      002698 F8               [12]  193 	mov	r0,a
      002699 A3               [24]  194 	inc	dptr
      00269A E0               [24]  195 	movx	a,@dptr
      00269B F9               [12]  196 	mov	r1,a
      00269C A3               [24]  197 	inc	dptr
      00269D E0               [24]  198 	movx	a,@dptr
      00269E FF               [12]  199 	mov	r7,a
      00269F 85 1B 82         [24]  200 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      0026A2 85 1C 83         [24]  201 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      0026A5 85 1D F0         [24]  202 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      0026A8 E8               [12]  203 	mov	a,r0
      0026A9 12 2F DB         [24]  204 	lcall	__gptrput
      0026AC A3               [24]  205 	inc	dptr
      0026AD E9               [12]  206 	mov	a,r1
      0026AE 12 2F DB         [24]  207 	lcall	__gptrput
      0026B1 A3               [24]  208 	inc	dptr
      0026B2 EF               [12]  209 	mov	a,r7
      0026B3 12 2F DB         [24]  210 	lcall	__gptrput
      0026B6 80 61            [24]  211 	sjmp	00106$
      0026B8                        212 00105$:
                                    213 ;	src/linked_list.c:22: buffer_t *tail = list->head;
      0026B8 90 20 28         [24]  214 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      0026BB EA               [12]  215 	mov	a,r2
      0026BC F0               [24]  216 	movx	@dptr,a
      0026BD EB               [12]  217 	mov	a,r3
      0026BE A3               [24]  218 	inc	dptr
      0026BF F0               [24]  219 	movx	@dptr,a
      0026C0 EC               [12]  220 	mov	a,r4
      0026C1 A3               [24]  221 	inc	dptr
      0026C2 F0               [24]  222 	movx	@dptr,a
                                    223 ;	src/linked_list.c:23: while(tail->next != NULL)
      0026C3                        224 00101$:
      0026C3 90 20 28         [24]  225 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      0026C6 E0               [24]  226 	movx	a,@dptr
      0026C7 FD               [12]  227 	mov	r5,a
      0026C8 A3               [24]  228 	inc	dptr
      0026C9 E0               [24]  229 	movx	a,@dptr
      0026CA FE               [12]  230 	mov	r6,a
      0026CB A3               [24]  231 	inc	dptr
      0026CC E0               [24]  232 	movx	a,@dptr
      0026CD FF               [12]  233 	mov	r7,a
      0026CE 74 08            [12]  234 	mov	a,#0x08
      0026D0 2D               [12]  235 	add	a,r5
      0026D1 FD               [12]  236 	mov	r5,a
      0026D2 E4               [12]  237 	clr	a
      0026D3 3E               [12]  238 	addc	a,r6
      0026D4 FE               [12]  239 	mov	r6,a
      0026D5 8D 82            [24]  240 	mov	dpl,r5
      0026D7 8E 83            [24]  241 	mov	dph,r6
      0026D9 8F F0            [24]  242 	mov	b,r7
      0026DB 12 3C 35         [24]  243 	lcall	__gptrget
      0026DE FA               [12]  244 	mov	r2,a
      0026DF A3               [24]  245 	inc	dptr
      0026E0 12 3C 35         [24]  246 	lcall	__gptrget
      0026E3 FB               [12]  247 	mov	r3,a
      0026E4 A3               [24]  248 	inc	dptr
      0026E5 12 3C 35         [24]  249 	lcall	__gptrget
      0026E8 FC               [12]  250 	mov	r4,a
      0026E9 EA               [12]  251 	mov	a,r2
      0026EA 4B               [12]  252 	orl	a,r3
      0026EB 60 0D            [24]  253 	jz	00103$
                                    254 ;	src/linked_list.c:25: tail = tail->next;
      0026ED 90 20 28         [24]  255 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      0026F0 EA               [12]  256 	mov	a,r2
      0026F1 F0               [24]  257 	movx	@dptr,a
      0026F2 EB               [12]  258 	mov	a,r3
      0026F3 A3               [24]  259 	inc	dptr
      0026F4 F0               [24]  260 	movx	@dptr,a
      0026F5 EC               [12]  261 	mov	a,r4
      0026F6 A3               [24]  262 	inc	dptr
      0026F7 F0               [24]  263 	movx	@dptr,a
      0026F8 80 C9            [24]  264 	sjmp	00101$
      0026FA                        265 00103$:
                                    266 ;	src/linked_list.c:27: tail->next = buffer;
      0026FA 90 20 22         [24]  267 	mov	dptr,#_append_to_buffer_list_PARM_2
      0026FD E0               [24]  268 	movx	a,@dptr
      0026FE FA               [12]  269 	mov	r2,a
      0026FF A3               [24]  270 	inc	dptr
      002700 E0               [24]  271 	movx	a,@dptr
      002701 FB               [12]  272 	mov	r3,a
      002702 A3               [24]  273 	inc	dptr
      002703 E0               [24]  274 	movx	a,@dptr
      002704 FC               [12]  275 	mov	r4,a
      002705 8D 82            [24]  276 	mov	dpl,r5
      002707 8E 83            [24]  277 	mov	dph,r6
      002709 8F F0            [24]  278 	mov	b,r7
      00270B EA               [12]  279 	mov	a,r2
      00270C 12 2F DB         [24]  280 	lcall	__gptrput
      00270F A3               [24]  281 	inc	dptr
      002710 EB               [12]  282 	mov	a,r3
      002711 12 2F DB         [24]  283 	lcall	__gptrput
      002714 A3               [24]  284 	inc	dptr
      002715 EC               [12]  285 	mov	a,r4
      002716 12 2F DB         [24]  286 	lcall	__gptrput
      002719                        287 00106$:
                                    288 ;	src/linked_list.c:29: buffer->next = NULL; 
      002719 90 20 22         [24]  289 	mov	dptr,#_append_to_buffer_list_PARM_2
      00271C E0               [24]  290 	movx	a,@dptr
      00271D FD               [12]  291 	mov	r5,a
      00271E A3               [24]  292 	inc	dptr
      00271F E0               [24]  293 	movx	a,@dptr
      002720 FE               [12]  294 	mov	r6,a
      002721 A3               [24]  295 	inc	dptr
      002722 E0               [24]  296 	movx	a,@dptr
      002723 FF               [12]  297 	mov	r7,a
      002724 74 08            [12]  298 	mov	a,#0x08
      002726 2D               [12]  299 	add	a,r5
      002727 FD               [12]  300 	mov	r5,a
      002728 E4               [12]  301 	clr	a
      002729 3E               [12]  302 	addc	a,r6
      00272A FE               [12]  303 	mov	r6,a
      00272B 8D 82            [24]  304 	mov	dpl,r5
      00272D 8E 83            [24]  305 	mov	dph,r6
      00272F 8F F0            [24]  306 	mov	b,r7
      002731 E4               [12]  307 	clr	a
      002732 12 2F DB         [24]  308 	lcall	__gptrput
      002735 A3               [24]  309 	inc	dptr
      002736 12 2F DB         [24]  310 	lcall	__gptrput
      002739 A3               [24]  311 	inc	dptr
      00273A 12 2F DB         [24]  312 	lcall	__gptrput
                                    313 ;	src/linked_list.c:30: return true;
      00273D 75 82 01         [24]  314 	mov	dpl,#0x01
                                    315 ;	src/linked_list.c:31: }
      002740 22               [24]  316 	ret
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
      002741                        330 _remove_from_buffer_list:
      002741 AF F0            [24]  331 	mov	r7,b
      002743 AE 83            [24]  332 	mov	r6,dph
      002745 E5 82            [12]  333 	mov	a,dpl
      002747 90 20 2D         [24]  334 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      00274A F0               [24]  335 	movx	@dptr,a
      00274B EE               [12]  336 	mov	a,r6
      00274C A3               [24]  337 	inc	dptr
      00274D F0               [24]  338 	movx	@dptr,a
      00274E EF               [12]  339 	mov	a,r7
      00274F A3               [24]  340 	inc	dptr
      002750 F0               [24]  341 	movx	@dptr,a
                                    342 ;	src/linked_list.c:36: if (list == NULL) return false;
      002751 90 20 2D         [24]  343 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      002754 E0               [24]  344 	movx	a,@dptr
      002755 F5 08            [12]  345 	mov	_remove_from_buffer_list_sloc0_1_0,a
      002757 A3               [24]  346 	inc	dptr
      002758 E0               [24]  347 	movx	a,@dptr
      002759 F5 09            [12]  348 	mov	(_remove_from_buffer_list_sloc0_1_0 + 1),a
      00275B A3               [24]  349 	inc	dptr
      00275C E0               [24]  350 	movx	a,@dptr
      00275D F5 0A            [12]  351 	mov	(_remove_from_buffer_list_sloc0_1_0 + 2),a
      00275F E5 08            [12]  352 	mov	a,_remove_from_buffer_list_sloc0_1_0
      002761 45 09            [12]  353 	orl	a,(_remove_from_buffer_list_sloc0_1_0 + 1)
      002763 70 03            [24]  354 	jnz	00102$
      002765 F5 82            [12]  355 	mov	dpl,a
      002767 22               [24]  356 	ret
      002768                        357 00102$:
                                    358 ;	src/linked_list.c:37: if (list->head == NULL) return false;
      002768 85 08 82         [24]  359 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      00276B 85 09 83         [24]  360 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      00276E 85 0A F0         [24]  361 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      002771 12 3C 35         [24]  362 	lcall	__gptrget
      002774 FA               [12]  363 	mov	r2,a
      002775 A3               [24]  364 	inc	dptr
      002776 12 3C 35         [24]  365 	lcall	__gptrget
      002779 FB               [12]  366 	mov	r3,a
      00277A A3               [24]  367 	inc	dptr
      00277B 12 3C 35         [24]  368 	lcall	__gptrget
      00277E FC               [12]  369 	mov	r4,a
      00277F EA               [12]  370 	mov	a,r2
      002780 4B               [12]  371 	orl	a,r3
      002781 70 03            [24]  372 	jnz	00104$
      002783 F5 82            [12]  373 	mov	dpl,a
      002785 22               [24]  374 	ret
      002786                        375 00104$:
                                    376 ;	src/linked_list.c:40: if (idx == 0)
      002786 90 20 2B         [24]  377 	mov	dptr,#_remove_from_buffer_list_PARM_2
      002789 E0               [24]  378 	movx	a,@dptr
      00278A F8               [12]  379 	mov	r0,a
      00278B A3               [24]  380 	inc	dptr
      00278C E0               [24]  381 	movx	a,@dptr
      00278D F9               [12]  382 	mov	r1,a
      00278E 90 20 2B         [24]  383 	mov	dptr,#_remove_from_buffer_list_PARM_2
      002791 E0               [24]  384 	movx	a,@dptr
      002792 F5 F0            [12]  385 	mov	b,a
      002794 A3               [24]  386 	inc	dptr
      002795 E0               [24]  387 	movx	a,@dptr
      002796 45 F0            [12]  388 	orl	a,b
      002798 70 42            [24]  389 	jnz	00112$
                                    390 ;	src/linked_list.c:43: to_free = list->head;
      00279A 90 20 30         [24]  391 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      00279D EA               [12]  392 	mov	a,r2
      00279E F0               [24]  393 	movx	@dptr,a
      00279F EB               [12]  394 	mov	a,r3
      0027A0 A3               [24]  395 	inc	dptr
      0027A1 F0               [24]  396 	movx	@dptr,a
      0027A2 EC               [12]  397 	mov	a,r4
      0027A3 A3               [24]  398 	inc	dptr
      0027A4 F0               [24]  399 	movx	@dptr,a
                                    400 ;	src/linked_list.c:44: list->head = list->head->next;  
      0027A5 74 08            [12]  401 	mov	a,#0x08
      0027A7 2A               [12]  402 	add	a,r2
      0027A8 FD               [12]  403 	mov	r5,a
      0027A9 E4               [12]  404 	clr	a
      0027AA 3B               [12]  405 	addc	a,r3
      0027AB FE               [12]  406 	mov	r6,a
      0027AC 8C 07            [24]  407 	mov	ar7,r4
      0027AE 8D 82            [24]  408 	mov	dpl,r5
      0027B0 8E 83            [24]  409 	mov	dph,r6
      0027B2 8F F0            [24]  410 	mov	b,r7
      0027B4 12 3C 35         [24]  411 	lcall	__gptrget
      0027B7 FD               [12]  412 	mov	r5,a
      0027B8 A3               [24]  413 	inc	dptr
      0027B9 12 3C 35         [24]  414 	lcall	__gptrget
      0027BC FE               [12]  415 	mov	r6,a
      0027BD A3               [24]  416 	inc	dptr
      0027BE 12 3C 35         [24]  417 	lcall	__gptrget
      0027C1 FF               [12]  418 	mov	r7,a
      0027C2 85 08 82         [24]  419 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      0027C5 85 09 83         [24]  420 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      0027C8 85 0A F0         [24]  421 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      0027CB ED               [12]  422 	mov	a,r5
      0027CC 12 2F DB         [24]  423 	lcall	__gptrput
      0027CF A3               [24]  424 	inc	dptr
      0027D0 EE               [12]  425 	mov	a,r6
      0027D1 12 2F DB         [24]  426 	lcall	__gptrput
      0027D4 A3               [24]  427 	inc	dptr
      0027D5 EF               [12]  428 	mov	a,r7
      0027D6 12 2F DB         [24]  429 	lcall	__gptrput
      0027D9 02 28 A4         [24]  430 	ljmp	00113$
      0027DC                        431 00112$:
                                    432 ;	src/linked_list.c:48: buffer_t *prev = list->head;
      0027DC 90 20 33         [24]  433 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      0027DF EA               [12]  434 	mov	a,r2
      0027E0 F0               [24]  435 	movx	@dptr,a
      0027E1 EB               [12]  436 	mov	a,r3
      0027E2 A3               [24]  437 	inc	dptr
      0027E3 F0               [24]  438 	movx	@dptr,a
      0027E4 EC               [12]  439 	mov	a,r4
      0027E5 A3               [24]  440 	inc	dptr
      0027E6 F0               [24]  441 	movx	@dptr,a
                                    442 ;	src/linked_list.c:49: idx--;
      0027E7 18               [12]  443 	dec	r0
      0027E8 B8 FF 01         [24]  444 	cjne	r0,#0xff,00160$
      0027EB 19               [12]  445 	dec	r1
      0027EC                        446 00160$:
      0027EC 90 20 2B         [24]  447 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0027EF E8               [12]  448 	mov	a,r0
      0027F0 F0               [24]  449 	movx	@dptr,a
      0027F1 E9               [12]  450 	mov	a,r1
      0027F2 A3               [24]  451 	inc	dptr
      0027F3 F0               [24]  452 	movx	@dptr,a
                                    453 ;	src/linked_list.c:50: while(idx > 0 && prev->next != NULL)
      0027F4 90 20 2B         [24]  454 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0027F7 E0               [24]  455 	movx	a,@dptr
      0027F8 FE               [12]  456 	mov	r6,a
      0027F9 A3               [24]  457 	inc	dptr
      0027FA E0               [24]  458 	movx	a,@dptr
      0027FB FF               [12]  459 	mov	r7,a
      0027FC                        460 00106$:
      0027FC EE               [12]  461 	mov	a,r6
      0027FD 4F               [12]  462 	orl	a,r7
      0027FE 60 3C            [24]  463 	jz	00108$
      002800 90 20 33         [24]  464 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      002803 E0               [24]  465 	movx	a,@dptr
      002804 FB               [12]  466 	mov	r3,a
      002805 A3               [24]  467 	inc	dptr
      002806 E0               [24]  468 	movx	a,@dptr
      002807 FC               [12]  469 	mov	r4,a
      002808 A3               [24]  470 	inc	dptr
      002809 E0               [24]  471 	movx	a,@dptr
      00280A FD               [12]  472 	mov	r5,a
      00280B 74 08            [12]  473 	mov	a,#0x08
      00280D 2B               [12]  474 	add	a,r3
      00280E FB               [12]  475 	mov	r3,a
      00280F E4               [12]  476 	clr	a
      002810 3C               [12]  477 	addc	a,r4
      002811 FC               [12]  478 	mov	r4,a
      002812 8B 82            [24]  479 	mov	dpl,r3
      002814 8C 83            [24]  480 	mov	dph,r4
      002816 8D F0            [24]  481 	mov	b,r5
      002818 12 3C 35         [24]  482 	lcall	__gptrget
      00281B FB               [12]  483 	mov	r3,a
      00281C A3               [24]  484 	inc	dptr
      00281D 12 3C 35         [24]  485 	lcall	__gptrget
      002820 FC               [12]  486 	mov	r4,a
      002821 A3               [24]  487 	inc	dptr
      002822 12 3C 35         [24]  488 	lcall	__gptrget
      002825 FD               [12]  489 	mov	r5,a
      002826 EB               [12]  490 	mov	a,r3
      002827 4C               [12]  491 	orl	a,r4
      002828 60 12            [24]  492 	jz	00108$
                                    493 ;	src/linked_list.c:52: prev = prev->next;
      00282A 90 20 33         [24]  494 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      00282D EB               [12]  495 	mov	a,r3
      00282E F0               [24]  496 	movx	@dptr,a
      00282F EC               [12]  497 	mov	a,r4
      002830 A3               [24]  498 	inc	dptr
      002831 F0               [24]  499 	movx	@dptr,a
      002832 ED               [12]  500 	mov	a,r5
      002833 A3               [24]  501 	inc	dptr
      002834 F0               [24]  502 	movx	@dptr,a
                                    503 ;	src/linked_list.c:53: idx--;
      002835 1E               [12]  504 	dec	r6
      002836 BE FF 01         [24]  505 	cjne	r6,#0xff,00163$
      002839 1F               [12]  506 	dec	r7
      00283A                        507 00163$:
      00283A 80 C0            [24]  508 	sjmp	00106$
      00283C                        509 00108$:
                                    510 ;	src/linked_list.c:56: if (idx != 0) return false;
      00283C EE               [12]  511 	mov	a,r6
      00283D 4F               [12]  512 	orl	a,r7
      00283E 60 04            [24]  513 	jz	00110$
      002840 75 82 00         [24]  514 	mov	dpl,#0x00
      002843 22               [24]  515 	ret
      002844                        516 00110$:
                                    517 ;	src/linked_list.c:57: to_free = prev->next;
      002844 90 20 33         [24]  518 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      002847 E0               [24]  519 	movx	a,@dptr
      002848 FD               [12]  520 	mov	r5,a
      002849 A3               [24]  521 	inc	dptr
      00284A E0               [24]  522 	movx	a,@dptr
      00284B FE               [12]  523 	mov	r6,a
      00284C A3               [24]  524 	inc	dptr
      00284D E0               [24]  525 	movx	a,@dptr
      00284E FF               [12]  526 	mov	r7,a
      00284F 74 08            [12]  527 	mov	a,#0x08
      002851 2D               [12]  528 	add	a,r5
      002852 FD               [12]  529 	mov	r5,a
      002853 E4               [12]  530 	clr	a
      002854 3E               [12]  531 	addc	a,r6
      002855 FE               [12]  532 	mov	r6,a
      002856 8D 82            [24]  533 	mov	dpl,r5
      002858 8E 83            [24]  534 	mov	dph,r6
      00285A 8F F0            [24]  535 	mov	b,r7
      00285C 12 3C 35         [24]  536 	lcall	__gptrget
      00285F FA               [12]  537 	mov	r2,a
      002860 A3               [24]  538 	inc	dptr
      002861 12 3C 35         [24]  539 	lcall	__gptrget
      002864 FB               [12]  540 	mov	r3,a
      002865 A3               [24]  541 	inc	dptr
      002866 12 3C 35         [24]  542 	lcall	__gptrget
      002869 FC               [12]  543 	mov	r4,a
      00286A 90 20 30         [24]  544 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      00286D EA               [12]  545 	mov	a,r2
      00286E F0               [24]  546 	movx	@dptr,a
      00286F EB               [12]  547 	mov	a,r3
      002870 A3               [24]  548 	inc	dptr
      002871 F0               [24]  549 	movx	@dptr,a
      002872 EC               [12]  550 	mov	a,r4
      002873 A3               [24]  551 	inc	dptr
      002874 F0               [24]  552 	movx	@dptr,a
                                    553 ;	src/linked_list.c:58: prev->next = to_free->next;
      002875 74 08            [12]  554 	mov	a,#0x08
      002877 2A               [12]  555 	add	a,r2
      002878 FA               [12]  556 	mov	r2,a
      002879 E4               [12]  557 	clr	a
      00287A 3B               [12]  558 	addc	a,r3
      00287B FB               [12]  559 	mov	r3,a
      00287C 8A 82            [24]  560 	mov	dpl,r2
      00287E 8B 83            [24]  561 	mov	dph,r3
      002880 8C F0            [24]  562 	mov	b,r4
      002882 12 3C 35         [24]  563 	lcall	__gptrget
      002885 FA               [12]  564 	mov	r2,a
      002886 A3               [24]  565 	inc	dptr
      002887 12 3C 35         [24]  566 	lcall	__gptrget
      00288A FB               [12]  567 	mov	r3,a
      00288B A3               [24]  568 	inc	dptr
      00288C 12 3C 35         [24]  569 	lcall	__gptrget
      00288F FC               [12]  570 	mov	r4,a
      002890 8D 82            [24]  571 	mov	dpl,r5
      002892 8E 83            [24]  572 	mov	dph,r6
      002894 8F F0            [24]  573 	mov	b,r7
      002896 EA               [12]  574 	mov	a,r2
      002897 12 2F DB         [24]  575 	lcall	__gptrput
      00289A A3               [24]  576 	inc	dptr
      00289B EB               [12]  577 	mov	a,r3
      00289C 12 2F DB         [24]  578 	lcall	__gptrput
      00289F A3               [24]  579 	inc	dptr
      0028A0 EC               [12]  580 	mov	a,r4
      0028A1 12 2F DB         [24]  581 	lcall	__gptrput
      0028A4                        582 00113$:
                                    583 ;	src/linked_list.c:61: if (to_free == NULL) return false; 
      0028A4 90 20 30         [24]  584 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      0028A7 E0               [24]  585 	movx	a,@dptr
      0028A8 FE               [12]  586 	mov	r6,a
      0028A9 A3               [24]  587 	inc	dptr
      0028AA E0               [24]  588 	movx	a,@dptr
      0028AB FD               [12]  589 	mov	r5,a
      0028AC A3               [24]  590 	inc	dptr
      0028AD E0               [24]  591 	movx	a,@dptr
      0028AE FF               [12]  592 	mov	r7,a
      0028AF 90 20 30         [24]  593 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      0028B2 E0               [24]  594 	movx	a,@dptr
      0028B3 F5 F0            [12]  595 	mov	b,a
      0028B5 A3               [24]  596 	inc	dptr
      0028B6 E0               [24]  597 	movx	a,@dptr
      0028B7 45 F0            [12]  598 	orl	a,b
      0028B9 70 03            [24]  599 	jnz	00115$
      0028BB F5 82            [12]  600 	mov	dpl,a
      0028BD 22               [24]  601 	ret
      0028BE                        602 00115$:
                                    603 ;	src/linked_list.c:62: if (to_free->buffer != NULL) 
      0028BE 8E 82            [24]  604 	mov	dpl,r6
      0028C0 8D 83            [24]  605 	mov	dph,r5
      0028C2 8F F0            [24]  606 	mov	b,r7
      0028C4 12 3C 35         [24]  607 	lcall	__gptrget
      0028C7 FE               [12]  608 	mov	r6,a
      0028C8 A3               [24]  609 	inc	dptr
      0028C9 12 3C 35         [24]  610 	lcall	__gptrget
      0028CC FF               [12]  611 	mov	r7,a
      0028CD 4E               [12]  612 	orl	a,r6
      0028CE 60 0B            [24]  613 	jz	00117$
                                    614 ;	src/linked_list.c:64: free(to_free->buffer);
      0028D0 7D 00            [12]  615 	mov	r5,#0x00
      0028D2 8E 82            [24]  616 	mov	dpl,r6
      0028D4 8F 83            [24]  617 	mov	dph,r7
      0028D6 8D F0            [24]  618 	mov	b,r5
      0028D8 12 2E 5C         [24]  619 	lcall	_free
      0028DB                        620 00117$:
                                    621 ;	src/linked_list.c:66: free(to_free);
      0028DB 90 20 30         [24]  622 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      0028DE E0               [24]  623 	movx	a,@dptr
      0028DF FD               [12]  624 	mov	r5,a
      0028E0 A3               [24]  625 	inc	dptr
      0028E1 E0               [24]  626 	movx	a,@dptr
      0028E2 FE               [12]  627 	mov	r6,a
      0028E3 A3               [24]  628 	inc	dptr
      0028E4 E0               [24]  629 	movx	a,@dptr
      0028E5 FF               [12]  630 	mov	r7,a
      0028E6 8D 82            [24]  631 	mov	dpl,r5
      0028E8 8E 83            [24]  632 	mov	dph,r6
      0028EA 8F F0            [24]  633 	mov	b,r7
      0028EC 12 2E 5C         [24]  634 	lcall	_free
                                    635 ;	src/linked_list.c:67: return true; 
      0028EF 75 82 01         [24]  636 	mov	dpl,#0x01
                                    637 ;	src/linked_list.c:68: }
      0028F2 22               [24]  638 	ret
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
      0028F3                        650 _free_all_elems_from_list:
      0028F3 AF F0            [24]  651 	mov	r7,b
      0028F5 AE 83            [24]  652 	mov	r6,dph
      0028F7 E5 82            [12]  653 	mov	a,dpl
      0028F9 90 20 36         [24]  654 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      0028FC F0               [24]  655 	movx	@dptr,a
      0028FD EE               [12]  656 	mov	a,r6
      0028FE A3               [24]  657 	inc	dptr
      0028FF F0               [24]  658 	movx	@dptr,a
      002900 EF               [12]  659 	mov	a,r7
      002901 A3               [24]  660 	inc	dptr
      002902 F0               [24]  661 	movx	@dptr,a
                                    662 ;	src/linked_list.c:72: buffer_t *buffer_to_free = list->head;
      002903 90 20 36         [24]  663 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      002906 E0               [24]  664 	movx	a,@dptr
      002907 FD               [12]  665 	mov	r5,a
      002908 A3               [24]  666 	inc	dptr
      002909 E0               [24]  667 	movx	a,@dptr
      00290A FE               [12]  668 	mov	r6,a
      00290B A3               [24]  669 	inc	dptr
      00290C E0               [24]  670 	movx	a,@dptr
      00290D FF               [12]  671 	mov	r7,a
      00290E 8D 82            [24]  672 	mov	dpl,r5
      002910 8E 83            [24]  673 	mov	dph,r6
      002912 8F F0            [24]  674 	mov	b,r7
      002914 12 3C 35         [24]  675 	lcall	__gptrget
      002917 FA               [12]  676 	mov	r2,a
      002918 A3               [24]  677 	inc	dptr
      002919 12 3C 35         [24]  678 	lcall	__gptrget
      00291C FB               [12]  679 	mov	r3,a
      00291D A3               [24]  680 	inc	dptr
      00291E 12 3C 35         [24]  681 	lcall	__gptrget
      002921 FC               [12]  682 	mov	r4,a
      002922 90 20 39         [24]  683 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      002925 EA               [12]  684 	mov	a,r2
      002926 F0               [24]  685 	movx	@dptr,a
      002927 EB               [12]  686 	mov	a,r3
      002928 A3               [24]  687 	inc	dptr
      002929 F0               [24]  688 	movx	@dptr,a
      00292A EC               [12]  689 	mov	a,r4
      00292B A3               [24]  690 	inc	dptr
      00292C F0               [24]  691 	movx	@dptr,a
                                    692 ;	src/linked_list.c:73: while(list->head != NULL)
      00292D                        693 00103$:
      00292D 90 20 36         [24]  694 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      002930 E0               [24]  695 	movx	a,@dptr
      002931 FA               [12]  696 	mov	r2,a
      002932 A3               [24]  697 	inc	dptr
      002933 E0               [24]  698 	movx	a,@dptr
      002934 FB               [12]  699 	mov	r3,a
      002935 A3               [24]  700 	inc	dptr
      002936 E0               [24]  701 	movx	a,@dptr
      002937 FC               [12]  702 	mov	r4,a
      002938 8A 82            [24]  703 	mov	dpl,r2
      00293A 8B 83            [24]  704 	mov	dph,r3
      00293C 8C F0            [24]  705 	mov	b,r4
      00293E 12 3C 35         [24]  706 	lcall	__gptrget
      002941 F5 0B            [12]  707 	mov	_free_all_elems_from_list_sloc0_1_0,a
      002943 A3               [24]  708 	inc	dptr
      002944 12 3C 35         [24]  709 	lcall	__gptrget
      002947 F5 0C            [12]  710 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      002949 A3               [24]  711 	inc	dptr
      00294A 12 3C 35         [24]  712 	lcall	__gptrget
      00294D F5 0D            [12]  713 	mov	(_free_all_elems_from_list_sloc0_1_0 + 2),a
      00294F E5 0B            [12]  714 	mov	a,_free_all_elems_from_list_sloc0_1_0
      002951 45 0C            [12]  715 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      002953 70 01            [24]  716 	jnz	00120$
      002955 22               [24]  717 	ret
      002956                        718 00120$:
                                    719 ;	src/linked_list.c:75: list->head = list->head->next;
      002956 C0 05            [24]  720 	push	ar5
      002958 C0 06            [24]  721 	push	ar6
      00295A C0 07            [24]  722 	push	ar7
      00295C 74 08            [12]  723 	mov	a,#0x08
      00295E 25 0B            [12]  724 	add	a,_free_all_elems_from_list_sloc0_1_0
      002960 F8               [12]  725 	mov	r0,a
      002961 E4               [12]  726 	clr	a
      002962 35 0C            [12]  727 	addc	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      002964 F9               [12]  728 	mov	r1,a
      002965 AF 0D            [24]  729 	mov	r7,(_free_all_elems_from_list_sloc0_1_0 + 2)
      002967 88 82            [24]  730 	mov	dpl,r0
      002969 89 83            [24]  731 	mov	dph,r1
      00296B 8F F0            [24]  732 	mov	b,r7
      00296D 12 3C 35         [24]  733 	lcall	__gptrget
      002970 F8               [12]  734 	mov	r0,a
      002971 A3               [24]  735 	inc	dptr
      002972 12 3C 35         [24]  736 	lcall	__gptrget
      002975 F9               [12]  737 	mov	r1,a
      002976 A3               [24]  738 	inc	dptr
      002977 12 3C 35         [24]  739 	lcall	__gptrget
      00297A FF               [12]  740 	mov	r7,a
      00297B 8A 82            [24]  741 	mov	dpl,r2
      00297D 8B 83            [24]  742 	mov	dph,r3
      00297F 8C F0            [24]  743 	mov	b,r4
      002981 E8               [12]  744 	mov	a,r0
      002982 12 2F DB         [24]  745 	lcall	__gptrput
      002985 A3               [24]  746 	inc	dptr
      002986 E9               [12]  747 	mov	a,r1
      002987 12 2F DB         [24]  748 	lcall	__gptrput
      00298A A3               [24]  749 	inc	dptr
      00298B EF               [12]  750 	mov	a,r7
      00298C 12 2F DB         [24]  751 	lcall	__gptrput
                                    752 ;	src/linked_list.c:76: if (buffer_to_free->buffer != NULL)
      00298F 90 20 39         [24]  753 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      002992 E0               [24]  754 	movx	a,@dptr
      002993 FD               [12]  755 	mov	r5,a
      002994 A3               [24]  756 	inc	dptr
      002995 E0               [24]  757 	movx	a,@dptr
      002996 FE               [12]  758 	mov	r6,a
      002997 A3               [24]  759 	inc	dptr
      002998 E0               [24]  760 	movx	a,@dptr
      002999 FF               [12]  761 	mov	r7,a
      00299A 8D 82            [24]  762 	mov	dpl,r5
      00299C 8E 83            [24]  763 	mov	dph,r6
      00299E 8F F0            [24]  764 	mov	b,r7
      0029A0 12 3C 35         [24]  765 	lcall	__gptrget
      0029A3 F5 0B            [12]  766 	mov	_free_all_elems_from_list_sloc0_1_0,a
      0029A5 A3               [24]  767 	inc	dptr
      0029A6 12 3C 35         [24]  768 	lcall	__gptrget
      0029A9 F5 0C            [12]  769 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      0029AB D0 07            [24]  770 	pop	ar7
      0029AD D0 06            [24]  771 	pop	ar6
      0029AF D0 05            [24]  772 	pop	ar5
      0029B1 E5 0B            [12]  773 	mov	a,_free_all_elems_from_list_sloc0_1_0
      0029B3 45 0C            [12]  774 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0029B5 60 1B            [24]  775 	jz	00102$
                                    776 ;	src/linked_list.c:78: free(buffer_to_free->buffer);
      0029B7 AB 0B            [24]  777 	mov	r3,_free_all_elems_from_list_sloc0_1_0
      0029B9 AC 0C            [24]  778 	mov	r4,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0029BB 7A 00            [12]  779 	mov	r2,#0x00
      0029BD 8B 82            [24]  780 	mov	dpl,r3
      0029BF 8C 83            [24]  781 	mov	dph,r4
      0029C1 8A F0            [24]  782 	mov	b,r2
      0029C3 C0 07            [24]  783 	push	ar7
      0029C5 C0 06            [24]  784 	push	ar6
      0029C7 C0 05            [24]  785 	push	ar5
      0029C9 12 2E 5C         [24]  786 	lcall	_free
      0029CC D0 05            [24]  787 	pop	ar5
      0029CE D0 06            [24]  788 	pop	ar6
      0029D0 D0 07            [24]  789 	pop	ar7
      0029D2                        790 00102$:
                                    791 ;	src/linked_list.c:80: free(buffer_to_free);
      0029D2 90 20 39         [24]  792 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      0029D5 E0               [24]  793 	movx	a,@dptr
      0029D6 FA               [12]  794 	mov	r2,a
      0029D7 A3               [24]  795 	inc	dptr
      0029D8 E0               [24]  796 	movx	a,@dptr
      0029D9 FB               [12]  797 	mov	r3,a
      0029DA A3               [24]  798 	inc	dptr
      0029DB E0               [24]  799 	movx	a,@dptr
      0029DC FC               [12]  800 	mov	r4,a
      0029DD 8A 82            [24]  801 	mov	dpl,r2
      0029DF 8B 83            [24]  802 	mov	dph,r3
      0029E1 8C F0            [24]  803 	mov	b,r4
      0029E3 C0 07            [24]  804 	push	ar7
      0029E5 C0 06            [24]  805 	push	ar6
      0029E7 C0 05            [24]  806 	push	ar5
      0029E9 12 2E 5C         [24]  807 	lcall	_free
      0029EC D0 05            [24]  808 	pop	ar5
      0029EE D0 06            [24]  809 	pop	ar6
      0029F0 D0 07            [24]  810 	pop	ar7
                                    811 ;	src/linked_list.c:81: buffer_to_free = list->head;
      0029F2 8D 82            [24]  812 	mov	dpl,r5
      0029F4 8E 83            [24]  813 	mov	dph,r6
      0029F6 8F F0            [24]  814 	mov	b,r7
      0029F8 12 3C 35         [24]  815 	lcall	__gptrget
      0029FB FA               [12]  816 	mov	r2,a
      0029FC A3               [24]  817 	inc	dptr
      0029FD 12 3C 35         [24]  818 	lcall	__gptrget
      002A00 FB               [12]  819 	mov	r3,a
      002A01 A3               [24]  820 	inc	dptr
      002A02 12 3C 35         [24]  821 	lcall	__gptrget
      002A05 FC               [12]  822 	mov	r4,a
      002A06 90 20 39         [24]  823 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      002A09 EA               [12]  824 	mov	a,r2
      002A0A F0               [24]  825 	movx	@dptr,a
      002A0B EB               [12]  826 	mov	a,r3
      002A0C A3               [24]  827 	inc	dptr
      002A0D F0               [24]  828 	movx	@dptr,a
      002A0E EC               [12]  829 	mov	a,r4
      002A0F A3               [24]  830 	inc	dptr
      002A10 F0               [24]  831 	movx	@dptr,a
                                    832 ;	src/linked_list.c:83: }
      002A11 02 29 2D         [24]  833 	ljmp	00103$
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
      002A14                        845 _ll_length:
      002A14 AF F0            [24]  846 	mov	r7,b
      002A16 AE 83            [24]  847 	mov	r6,dph
      002A18 E5 82            [12]  848 	mov	a,dpl
      002A1A 90 20 3C         [24]  849 	mov	dptr,#_ll_length_list_65536_63
      002A1D F0               [24]  850 	movx	@dptr,a
      002A1E EE               [12]  851 	mov	a,r6
      002A1F A3               [24]  852 	inc	dptr
      002A20 F0               [24]  853 	movx	@dptr,a
      002A21 EF               [12]  854 	mov	a,r7
      002A22 A3               [24]  855 	inc	dptr
      002A23 F0               [24]  856 	movx	@dptr,a
                                    857 ;	src/linked_list.c:88: buffer_t *curr = list->head;
      002A24 90 20 3C         [24]  858 	mov	dptr,#_ll_length_list_65536_63
      002A27 E0               [24]  859 	movx	a,@dptr
      002A28 FD               [12]  860 	mov	r5,a
      002A29 A3               [24]  861 	inc	dptr
      002A2A E0               [24]  862 	movx	a,@dptr
      002A2B FE               [12]  863 	mov	r6,a
      002A2C A3               [24]  864 	inc	dptr
      002A2D E0               [24]  865 	movx	a,@dptr
      002A2E FF               [12]  866 	mov	r7,a
      002A2F 8D 82            [24]  867 	mov	dpl,r5
      002A31 8E 83            [24]  868 	mov	dph,r6
      002A33 8F F0            [24]  869 	mov	b,r7
      002A35 12 3C 35         [24]  870 	lcall	__gptrget
      002A38 FD               [12]  871 	mov	r5,a
      002A39 A3               [24]  872 	inc	dptr
      002A3A 12 3C 35         [24]  873 	lcall	__gptrget
      002A3D FE               [12]  874 	mov	r6,a
      002A3E A3               [24]  875 	inc	dptr
      002A3F 12 3C 35         [24]  876 	lcall	__gptrget
      002A42 FF               [12]  877 	mov	r7,a
      002A43 90 20 41         [24]  878 	mov	dptr,#_ll_length_curr_65536_64
      002A46 ED               [12]  879 	mov	a,r5
      002A47 F0               [24]  880 	movx	@dptr,a
      002A48 EE               [12]  881 	mov	a,r6
      002A49 A3               [24]  882 	inc	dptr
      002A4A F0               [24]  883 	movx	@dptr,a
      002A4B EF               [12]  884 	mov	a,r7
      002A4C A3               [24]  885 	inc	dptr
      002A4D F0               [24]  886 	movx	@dptr,a
                                    887 ;	src/linked_list.c:89: while(curr != NULL)
      002A4E 90 20 3F         [24]  888 	mov	dptr,#_ll_length_size_65536_64
      002A51 E0               [24]  889 	movx	a,@dptr
      002A52 FE               [12]  890 	mov	r6,a
      002A53 A3               [24]  891 	inc	dptr
      002A54 E0               [24]  892 	movx	a,@dptr
      002A55 FF               [12]  893 	mov	r7,a
      002A56                        894 00101$:
      002A56 90 20 41         [24]  895 	mov	dptr,#_ll_length_curr_65536_64
      002A59 E0               [24]  896 	movx	a,@dptr
      002A5A FB               [12]  897 	mov	r3,a
      002A5B A3               [24]  898 	inc	dptr
      002A5C E0               [24]  899 	movx	a,@dptr
      002A5D FC               [12]  900 	mov	r4,a
      002A5E A3               [24]  901 	inc	dptr
      002A5F E0               [24]  902 	movx	a,@dptr
      002A60 FD               [12]  903 	mov	r5,a
      002A61 90 20 41         [24]  904 	mov	dptr,#_ll_length_curr_65536_64
      002A64 E0               [24]  905 	movx	a,@dptr
      002A65 F5 F0            [12]  906 	mov	b,a
      002A67 A3               [24]  907 	inc	dptr
      002A68 E0               [24]  908 	movx	a,@dptr
      002A69 45 F0            [12]  909 	orl	a,b
      002A6B 60 2D            [24]  910 	jz	00103$
                                    911 ;	src/linked_list.c:91: size++;
      002A6D 0E               [12]  912 	inc	r6
      002A6E BE 00 01         [24]  913 	cjne	r6,#0x00,00116$
      002A71 0F               [12]  914 	inc	r7
      002A72                        915 00116$:
                                    916 ;	src/linked_list.c:92: curr = curr->next;
      002A72 74 08            [12]  917 	mov	a,#0x08
      002A74 2B               [12]  918 	add	a,r3
      002A75 FB               [12]  919 	mov	r3,a
      002A76 E4               [12]  920 	clr	a
      002A77 3C               [12]  921 	addc	a,r4
      002A78 FC               [12]  922 	mov	r4,a
      002A79 8B 82            [24]  923 	mov	dpl,r3
      002A7B 8C 83            [24]  924 	mov	dph,r4
      002A7D 8D F0            [24]  925 	mov	b,r5
      002A7F 12 3C 35         [24]  926 	lcall	__gptrget
      002A82 FB               [12]  927 	mov	r3,a
      002A83 A3               [24]  928 	inc	dptr
      002A84 12 3C 35         [24]  929 	lcall	__gptrget
      002A87 FC               [12]  930 	mov	r4,a
      002A88 A3               [24]  931 	inc	dptr
      002A89 12 3C 35         [24]  932 	lcall	__gptrget
      002A8C FD               [12]  933 	mov	r5,a
      002A8D 90 20 41         [24]  934 	mov	dptr,#_ll_length_curr_65536_64
      002A90 EB               [12]  935 	mov	a,r3
      002A91 F0               [24]  936 	movx	@dptr,a
      002A92 EC               [12]  937 	mov	a,r4
      002A93 A3               [24]  938 	inc	dptr
      002A94 F0               [24]  939 	movx	@dptr,a
      002A95 ED               [12]  940 	mov	a,r5
      002A96 A3               [24]  941 	inc	dptr
      002A97 F0               [24]  942 	movx	@dptr,a
      002A98 80 BC            [24]  943 	sjmp	00101$
      002A9A                        944 00103$:
                                    945 ;	src/linked_list.c:94: return size; 
      002A9A 8E 82            [24]  946 	mov	dpl,r6
      002A9C 8F 83            [24]  947 	mov	dph,r7
                                    948 ;	src/linked_list.c:95: }
      002A9E 22               [24]  949 	ret
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
      002A9F                        961 _ll_get_elem:
      002A9F AF F0            [24]  962 	mov	r7,b
      002AA1 AE 83            [24]  963 	mov	r6,dph
      002AA3 E5 82            [12]  964 	mov	a,dpl
      002AA5 90 20 46         [24]  965 	mov	dptr,#_ll_get_elem_list_65536_66
      002AA8 F0               [24]  966 	movx	@dptr,a
      002AA9 EE               [12]  967 	mov	a,r6
      002AAA A3               [24]  968 	inc	dptr
      002AAB F0               [24]  969 	movx	@dptr,a
      002AAC EF               [12]  970 	mov	a,r7
      002AAD A3               [24]  971 	inc	dptr
      002AAE F0               [24]  972 	movx	@dptr,a
                                    973 ;	src/linked_list.c:99: buffer_t *curr = list->head;
      002AAF 90 20 46         [24]  974 	mov	dptr,#_ll_get_elem_list_65536_66
      002AB2 E0               [24]  975 	movx	a,@dptr
      002AB3 FD               [12]  976 	mov	r5,a
      002AB4 A3               [24]  977 	inc	dptr
      002AB5 E0               [24]  978 	movx	a,@dptr
      002AB6 FE               [12]  979 	mov	r6,a
      002AB7 A3               [24]  980 	inc	dptr
      002AB8 E0               [24]  981 	movx	a,@dptr
      002AB9 FF               [12]  982 	mov	r7,a
      002ABA 8D 82            [24]  983 	mov	dpl,r5
      002ABC 8E 83            [24]  984 	mov	dph,r6
      002ABE 8F F0            [24]  985 	mov	b,r7
      002AC0 12 3C 35         [24]  986 	lcall	__gptrget
      002AC3 FD               [12]  987 	mov	r5,a
      002AC4 A3               [24]  988 	inc	dptr
      002AC5 12 3C 35         [24]  989 	lcall	__gptrget
      002AC8 FE               [12]  990 	mov	r6,a
      002AC9 A3               [24]  991 	inc	dptr
      002ACA 12 3C 35         [24]  992 	lcall	__gptrget
      002ACD FF               [12]  993 	mov	r7,a
      002ACE 90 20 49         [24]  994 	mov	dptr,#_ll_get_elem_curr_65536_67
      002AD1 ED               [12]  995 	mov	a,r5
      002AD2 F0               [24]  996 	movx	@dptr,a
      002AD3 EE               [12]  997 	mov	a,r6
      002AD4 A3               [24]  998 	inc	dptr
      002AD5 F0               [24]  999 	movx	@dptr,a
      002AD6 EF               [12] 1000 	mov	a,r7
      002AD7 A3               [24] 1001 	inc	dptr
      002AD8 F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	src/linked_list.c:100: while(curr != NULL && elem_num > 0)
      002AD9 90 20 44         [24] 1004 	mov	dptr,#_ll_get_elem_PARM_2
      002ADC E0               [24] 1005 	movx	a,@dptr
      002ADD FE               [12] 1006 	mov	r6,a
      002ADE A3               [24] 1007 	inc	dptr
      002ADF E0               [24] 1008 	movx	a,@dptr
      002AE0 FF               [12] 1009 	mov	r7,a
      002AE1                       1010 00102$:
      002AE1 90 20 49         [24] 1011 	mov	dptr,#_ll_get_elem_curr_65536_67
      002AE4 E0               [24] 1012 	movx	a,@dptr
      002AE5 FB               [12] 1013 	mov	r3,a
      002AE6 A3               [24] 1014 	inc	dptr
      002AE7 E0               [24] 1015 	movx	a,@dptr
      002AE8 FC               [12] 1016 	mov	r4,a
      002AE9 A3               [24] 1017 	inc	dptr
      002AEA E0               [24] 1018 	movx	a,@dptr
      002AEB FD               [12] 1019 	mov	r5,a
      002AEC 90 20 49         [24] 1020 	mov	dptr,#_ll_get_elem_curr_65536_67
      002AEF E0               [24] 1021 	movx	a,@dptr
      002AF0 F5 F0            [12] 1022 	mov	b,a
      002AF2 A3               [24] 1023 	inc	dptr
      002AF3 E0               [24] 1024 	movx	a,@dptr
      002AF4 45 F0            [12] 1025 	orl	a,b
      002AF6 60 31            [24] 1026 	jz	00104$
      002AF8 EE               [12] 1027 	mov	a,r6
      002AF9 4F               [12] 1028 	orl	a,r7
      002AFA 60 2D            [24] 1029 	jz	00104$
                                   1030 ;	src/linked_list.c:102: curr = curr->next;
      002AFC 74 08            [12] 1031 	mov	a,#0x08
      002AFE 2B               [12] 1032 	add	a,r3
      002AFF FB               [12] 1033 	mov	r3,a
      002B00 E4               [12] 1034 	clr	a
      002B01 3C               [12] 1035 	addc	a,r4
      002B02 FC               [12] 1036 	mov	r4,a
      002B03 8B 82            [24] 1037 	mov	dpl,r3
      002B05 8C 83            [24] 1038 	mov	dph,r4
      002B07 8D F0            [24] 1039 	mov	b,r5
      002B09 12 3C 35         [24] 1040 	lcall	__gptrget
      002B0C FB               [12] 1041 	mov	r3,a
      002B0D A3               [24] 1042 	inc	dptr
      002B0E 12 3C 35         [24] 1043 	lcall	__gptrget
      002B11 FC               [12] 1044 	mov	r4,a
      002B12 A3               [24] 1045 	inc	dptr
      002B13 12 3C 35         [24] 1046 	lcall	__gptrget
      002B16 FD               [12] 1047 	mov	r5,a
      002B17 90 20 49         [24] 1048 	mov	dptr,#_ll_get_elem_curr_65536_67
      002B1A EB               [12] 1049 	mov	a,r3
      002B1B F0               [24] 1050 	movx	@dptr,a
      002B1C EC               [12] 1051 	mov	a,r4
      002B1D A3               [24] 1052 	inc	dptr
      002B1E F0               [24] 1053 	movx	@dptr,a
      002B1F ED               [12] 1054 	mov	a,r5
      002B20 A3               [24] 1055 	inc	dptr
      002B21 F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	src/linked_list.c:103: elem_num--;
      002B22 1E               [12] 1058 	dec	r6
      002B23 BE FF 01         [24] 1059 	cjne	r6,#0xff,00122$
      002B26 1F               [12] 1060 	dec	r7
      002B27                       1061 00122$:
      002B27 80 B8            [24] 1062 	sjmp	00102$
      002B29                       1063 00104$:
                                   1064 ;	src/linked_list.c:105: return curr;
      002B29 90 20 49         [24] 1065 	mov	dptr,#_ll_get_elem_curr_65536_67
      002B2C E0               [24] 1066 	movx	a,@dptr
      002B2D FD               [12] 1067 	mov	r5,a
      002B2E A3               [24] 1068 	inc	dptr
      002B2F E0               [24] 1069 	movx	a,@dptr
      002B30 FE               [12] 1070 	mov	r6,a
      002B31 A3               [24] 1071 	inc	dptr
      002B32 E0               [24] 1072 	movx	a,@dptr
      002B33 FF               [12] 1073 	mov	r7,a
      002B34 8D 82            [24] 1074 	mov	dpl,r5
      002B36 8E 83            [24] 1075 	mov	dph,r6
      002B38 8F F0            [24] 1076 	mov	b,r7
                                   1077 ;	src/linked_list.c:106: }
      002B3A 22               [24] 1078 	ret
                                   1079 	.area CSEG    (CODE)
                                   1080 	.area CONST   (CODE)
                                   1081 	.area XINIT   (CODE)
                                   1082 	.area CABS    (ABS,CODE)
