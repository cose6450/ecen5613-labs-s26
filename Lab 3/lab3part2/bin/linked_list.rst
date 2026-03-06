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
                                     12 	.globl _remove_from_buffer_list_PARM_2
                                     13 	.globl _append_to_buffer_list_PARM_2
                                     14 	.globl _append_to_buffer_list
                                     15 	.globl _remove_from_buffer_list
                                     16 	.globl _free_all_elems_from_list
                                     17 ;--------------------------------------------------------
                                     18 ; special function registers
                                     19 ;--------------------------------------------------------
                                     20 	.area RSEG    (ABS,DATA)
      000000                         21 	.org 0x0000
                                     22 ;--------------------------------------------------------
                                     23 ; special function bits
                                     24 ;--------------------------------------------------------
                                     25 	.area RSEG    (ABS,DATA)
      000000                         26 	.org 0x0000
                                     27 ;--------------------------------------------------------
                                     28 ; overlayable register banks
                                     29 ;--------------------------------------------------------
                                     30 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         31 	.ds 8
                                     32 ;--------------------------------------------------------
                                     33 ; internal ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DSEG    (DATA)
      000008                         36 _remove_from_buffer_list_sloc0_1_0:
      000008                         37 	.ds 3
      00000B                         38 _free_all_elems_from_list_sloc0_1_0:
      00000B                         39 	.ds 3
                                     40 ;--------------------------------------------------------
                                     41 ; overlayable items in internal ram
                                     42 ;--------------------------------------------------------
                                     43 	.area	OSEG    (OVR,DATA)
      00001B                         44 _append_to_buffer_list_sloc0_1_0:
      00001B                         45 	.ds 3
                                     46 ;--------------------------------------------------------
                                     47 ; indirectly addressable internal ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area ISEG    (DATA)
                                     50 ;--------------------------------------------------------
                                     51 ; absolute internal ram data
                                     52 ;--------------------------------------------------------
                                     53 	.area IABS    (ABS,DATA)
                                     54 	.area IABS    (ABS,DATA)
                                     55 ;--------------------------------------------------------
                                     56 ; bit data
                                     57 ;--------------------------------------------------------
                                     58 	.area BSEG    (BIT)
                                     59 ;--------------------------------------------------------
                                     60 ; paged external ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area PSEG    (PAG,XDATA)
                                     63 ;--------------------------------------------------------
                                     64 ; external ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area XSEG    (XDATA)
      00103E                         67 _append_to_buffer_list_PARM_2:
      00103E                         68 	.ds 3
      001041                         69 _append_to_buffer_list_list_65536_45:
      001041                         70 	.ds 3
      001044                         71 _append_to_buffer_list_tail_131072_48:
      001044                         72 	.ds 3
      001047                         73 _remove_from_buffer_list_PARM_2:
      001047                         74 	.ds 2
      001049                         75 _remove_from_buffer_list_list_65536_50:
      001049                         76 	.ds 3
      00104C                         77 _remove_from_buffer_list_to_free_65537_52:
      00104C                         78 	.ds 3
      00104F                         79 _remove_from_buffer_list_prev_131073_54:
      00104F                         80 	.ds 3
      001052                         81 _free_all_elems_from_list_list_65536_57:
      001052                         82 	.ds 3
      001055                         83 _free_all_elems_from_list_buffer_to_free_65536_58:
      001055                         84 	.ds 3
                                     85 ;--------------------------------------------------------
                                     86 ; absolute external ram data
                                     87 ;--------------------------------------------------------
                                     88 	.area XABS    (ABS,XDATA)
                                     89 ;--------------------------------------------------------
                                     90 ; external initialized ram data
                                     91 ;--------------------------------------------------------
                                     92 	.area XISEG   (XDATA)
                                     93 	.area HOME    (CODE)
                                     94 	.area GSINIT0 (CODE)
                                     95 	.area GSINIT1 (CODE)
                                     96 	.area GSINIT2 (CODE)
                                     97 	.area GSINIT3 (CODE)
                                     98 	.area GSINIT4 (CODE)
                                     99 	.area GSINIT5 (CODE)
                                    100 	.area GSINIT  (CODE)
                                    101 	.area GSFINAL (CODE)
                                    102 	.area CSEG    (CODE)
                                    103 ;--------------------------------------------------------
                                    104 ; global & static initialisations
                                    105 ;--------------------------------------------------------
                                    106 	.area HOME    (CODE)
                                    107 	.area GSINIT  (CODE)
                                    108 	.area GSFINAL (CODE)
                                    109 	.area GSINIT  (CODE)
                                    110 ;--------------------------------------------------------
                                    111 ; Home
                                    112 ;--------------------------------------------------------
                                    113 	.area HOME    (CODE)
                                    114 	.area HOME    (CODE)
                                    115 ;--------------------------------------------------------
                                    116 ; code
                                    117 ;--------------------------------------------------------
                                    118 	.area CSEG    (CODE)
                                    119 ;------------------------------------------------------------
                                    120 ;Allocation info for local variables in function 'append_to_buffer_list'
                                    121 ;------------------------------------------------------------
                                    122 ;buffer                    Allocated with name '_append_to_buffer_list_PARM_2'
                                    123 ;list                      Allocated with name '_append_to_buffer_list_list_65536_45'
                                    124 ;tail                      Allocated with name '_append_to_buffer_list_tail_131072_48'
                                    125 ;sloc0                     Allocated with name '_append_to_buffer_list_sloc0_1_0'
                                    126 ;------------------------------------------------------------
                                    127 ;	src/linked_list.c:5: bool append_to_buffer_list(buffer_list_t *list, buffer_t *buffer)
                                    128 ;	-----------------------------------------
                                    129 ;	 function append_to_buffer_list
                                    130 ;	-----------------------------------------
      00361E                        131 _append_to_buffer_list:
                           000007   132 	ar7 = 0x07
                           000006   133 	ar6 = 0x06
                           000005   134 	ar5 = 0x05
                           000004   135 	ar4 = 0x04
                           000003   136 	ar3 = 0x03
                           000002   137 	ar2 = 0x02
                           000001   138 	ar1 = 0x01
                           000000   139 	ar0 = 0x00
      00361E AF F0            [24]  140 	mov	r7,b
      003620 AE 83            [24]  141 	mov	r6,dph
      003622 E5 82            [12]  142 	mov	a,dpl
      003624 90 10 41         [24]  143 	mov	dptr,#_append_to_buffer_list_list_65536_45
      003627 F0               [24]  144 	movx	@dptr,a
      003628 EE               [12]  145 	mov	a,r6
      003629 A3               [24]  146 	inc	dptr
      00362A F0               [24]  147 	movx	@dptr,a
      00362B EF               [12]  148 	mov	a,r7
      00362C A3               [24]  149 	inc	dptr
      00362D F0               [24]  150 	movx	@dptr,a
                                    151 ;	src/linked_list.c:7: if (list->head == NULL) 
      00362E 90 10 41         [24]  152 	mov	dptr,#_append_to_buffer_list_list_65536_45
      003631 E0               [24]  153 	movx	a,@dptr
      003632 F5 1B            [12]  154 	mov	_append_to_buffer_list_sloc0_1_0,a
      003634 A3               [24]  155 	inc	dptr
      003635 E0               [24]  156 	movx	a,@dptr
      003636 F5 1C            [12]  157 	mov	(_append_to_buffer_list_sloc0_1_0 + 1),a
      003638 A3               [24]  158 	inc	dptr
      003639 E0               [24]  159 	movx	a,@dptr
      00363A F5 1D            [12]  160 	mov	(_append_to_buffer_list_sloc0_1_0 + 2),a
      00363C 85 1B 82         [24]  161 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      00363F 85 1C 83         [24]  162 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      003642 85 1D F0         [24]  163 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      003645 12 49 48         [24]  164 	lcall	__gptrget
      003648 FA               [12]  165 	mov	r2,a
      003649 A3               [24]  166 	inc	dptr
      00364A 12 49 48         [24]  167 	lcall	__gptrget
      00364D FB               [12]  168 	mov	r3,a
      00364E A3               [24]  169 	inc	dptr
      00364F 12 49 48         [24]  170 	lcall	__gptrget
      003652 FC               [12]  171 	mov	r4,a
      003653 EA               [12]  172 	mov	a,r2
      003654 4B               [12]  173 	orl	a,r3
      003655 70 24            [24]  174 	jnz	00105$
                                    175 ;	src/linked_list.c:9: list->head = buffer; 
      003657 90 10 3E         [24]  176 	mov	dptr,#_append_to_buffer_list_PARM_2
      00365A E0               [24]  177 	movx	a,@dptr
      00365B F8               [12]  178 	mov	r0,a
      00365C A3               [24]  179 	inc	dptr
      00365D E0               [24]  180 	movx	a,@dptr
      00365E F9               [12]  181 	mov	r1,a
      00365F A3               [24]  182 	inc	dptr
      003660 E0               [24]  183 	movx	a,@dptr
      003661 FF               [12]  184 	mov	r7,a
      003662 85 1B 82         [24]  185 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      003665 85 1C 83         [24]  186 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      003668 85 1D F0         [24]  187 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      00366B E8               [12]  188 	mov	a,r0
      00366C 12 3C EE         [24]  189 	lcall	__gptrput
      00366F A3               [24]  190 	inc	dptr
      003670 E9               [12]  191 	mov	a,r1
      003671 12 3C EE         [24]  192 	lcall	__gptrput
      003674 A3               [24]  193 	inc	dptr
      003675 EF               [12]  194 	mov	a,r7
      003676 12 3C EE         [24]  195 	lcall	__gptrput
      003679 80 61            [24]  196 	sjmp	00106$
      00367B                        197 00105$:
                                    198 ;	src/linked_list.c:13: buffer_t *tail = list->head;
      00367B 90 10 44         [24]  199 	mov	dptr,#_append_to_buffer_list_tail_131072_48
      00367E EA               [12]  200 	mov	a,r2
      00367F F0               [24]  201 	movx	@dptr,a
      003680 EB               [12]  202 	mov	a,r3
      003681 A3               [24]  203 	inc	dptr
      003682 F0               [24]  204 	movx	@dptr,a
      003683 EC               [12]  205 	mov	a,r4
      003684 A3               [24]  206 	inc	dptr
      003685 F0               [24]  207 	movx	@dptr,a
                                    208 ;	src/linked_list.c:14: while(tail->next != NULL)
      003686                        209 00101$:
      003686 90 10 44         [24]  210 	mov	dptr,#_append_to_buffer_list_tail_131072_48
      003689 E0               [24]  211 	movx	a,@dptr
      00368A FD               [12]  212 	mov	r5,a
      00368B A3               [24]  213 	inc	dptr
      00368C E0               [24]  214 	movx	a,@dptr
      00368D FE               [12]  215 	mov	r6,a
      00368E A3               [24]  216 	inc	dptr
      00368F E0               [24]  217 	movx	a,@dptr
      003690 FF               [12]  218 	mov	r7,a
      003691 74 08            [12]  219 	mov	a,#0x08
      003693 2D               [12]  220 	add	a,r5
      003694 FD               [12]  221 	mov	r5,a
      003695 E4               [12]  222 	clr	a
      003696 3E               [12]  223 	addc	a,r6
      003697 FE               [12]  224 	mov	r6,a
      003698 8D 82            [24]  225 	mov	dpl,r5
      00369A 8E 83            [24]  226 	mov	dph,r6
      00369C 8F F0            [24]  227 	mov	b,r7
      00369E 12 49 48         [24]  228 	lcall	__gptrget
      0036A1 FA               [12]  229 	mov	r2,a
      0036A2 A3               [24]  230 	inc	dptr
      0036A3 12 49 48         [24]  231 	lcall	__gptrget
      0036A6 FB               [12]  232 	mov	r3,a
      0036A7 A3               [24]  233 	inc	dptr
      0036A8 12 49 48         [24]  234 	lcall	__gptrget
      0036AB FC               [12]  235 	mov	r4,a
      0036AC EA               [12]  236 	mov	a,r2
      0036AD 4B               [12]  237 	orl	a,r3
      0036AE 60 0D            [24]  238 	jz	00103$
                                    239 ;	src/linked_list.c:16: tail = tail->next;
      0036B0 90 10 44         [24]  240 	mov	dptr,#_append_to_buffer_list_tail_131072_48
      0036B3 EA               [12]  241 	mov	a,r2
      0036B4 F0               [24]  242 	movx	@dptr,a
      0036B5 EB               [12]  243 	mov	a,r3
      0036B6 A3               [24]  244 	inc	dptr
      0036B7 F0               [24]  245 	movx	@dptr,a
      0036B8 EC               [12]  246 	mov	a,r4
      0036B9 A3               [24]  247 	inc	dptr
      0036BA F0               [24]  248 	movx	@dptr,a
      0036BB 80 C9            [24]  249 	sjmp	00101$
      0036BD                        250 00103$:
                                    251 ;	src/linked_list.c:18: tail->next = buffer;
      0036BD 90 10 3E         [24]  252 	mov	dptr,#_append_to_buffer_list_PARM_2
      0036C0 E0               [24]  253 	movx	a,@dptr
      0036C1 FA               [12]  254 	mov	r2,a
      0036C2 A3               [24]  255 	inc	dptr
      0036C3 E0               [24]  256 	movx	a,@dptr
      0036C4 FB               [12]  257 	mov	r3,a
      0036C5 A3               [24]  258 	inc	dptr
      0036C6 E0               [24]  259 	movx	a,@dptr
      0036C7 FC               [12]  260 	mov	r4,a
      0036C8 8D 82            [24]  261 	mov	dpl,r5
      0036CA 8E 83            [24]  262 	mov	dph,r6
      0036CC 8F F0            [24]  263 	mov	b,r7
      0036CE EA               [12]  264 	mov	a,r2
      0036CF 12 3C EE         [24]  265 	lcall	__gptrput
      0036D2 A3               [24]  266 	inc	dptr
      0036D3 EB               [12]  267 	mov	a,r3
      0036D4 12 3C EE         [24]  268 	lcall	__gptrput
      0036D7 A3               [24]  269 	inc	dptr
      0036D8 EC               [12]  270 	mov	a,r4
      0036D9 12 3C EE         [24]  271 	lcall	__gptrput
      0036DC                        272 00106$:
                                    273 ;	src/linked_list.c:20: buffer->next = NULL; 
      0036DC 90 10 3E         [24]  274 	mov	dptr,#_append_to_buffer_list_PARM_2
      0036DF E0               [24]  275 	movx	a,@dptr
      0036E0 FD               [12]  276 	mov	r5,a
      0036E1 A3               [24]  277 	inc	dptr
      0036E2 E0               [24]  278 	movx	a,@dptr
      0036E3 FE               [12]  279 	mov	r6,a
      0036E4 A3               [24]  280 	inc	dptr
      0036E5 E0               [24]  281 	movx	a,@dptr
      0036E6 FF               [12]  282 	mov	r7,a
      0036E7 74 08            [12]  283 	mov	a,#0x08
      0036E9 2D               [12]  284 	add	a,r5
      0036EA FD               [12]  285 	mov	r5,a
      0036EB E4               [12]  286 	clr	a
      0036EC 3E               [12]  287 	addc	a,r6
      0036ED FE               [12]  288 	mov	r6,a
      0036EE 8D 82            [24]  289 	mov	dpl,r5
      0036F0 8E 83            [24]  290 	mov	dph,r6
      0036F2 8F F0            [24]  291 	mov	b,r7
      0036F4 E4               [12]  292 	clr	a
      0036F5 12 3C EE         [24]  293 	lcall	__gptrput
      0036F8 A3               [24]  294 	inc	dptr
      0036F9 12 3C EE         [24]  295 	lcall	__gptrput
      0036FC A3               [24]  296 	inc	dptr
      0036FD 12 3C EE         [24]  297 	lcall	__gptrput
                                    298 ;	src/linked_list.c:21: return true;
      003700 75 82 01         [24]  299 	mov	dpl,#0x01
                                    300 ;	src/linked_list.c:22: }
      003703 22               [24]  301 	ret
                                    302 ;------------------------------------------------------------
                                    303 ;Allocation info for local variables in function 'remove_from_buffer_list'
                                    304 ;------------------------------------------------------------
                                    305 ;sloc0                     Allocated with name '_remove_from_buffer_list_sloc0_1_0'
                                    306 ;idx                       Allocated with name '_remove_from_buffer_list_PARM_2'
                                    307 ;list                      Allocated with name '_remove_from_buffer_list_list_65536_50'
                                    308 ;to_free                   Allocated with name '_remove_from_buffer_list_to_free_65537_52'
                                    309 ;prev                      Allocated with name '_remove_from_buffer_list_prev_131073_54'
                                    310 ;------------------------------------------------------------
                                    311 ;	src/linked_list.c:25: bool remove_from_buffer_list(buffer_list_t *list, size_t idx)
                                    312 ;	-----------------------------------------
                                    313 ;	 function remove_from_buffer_list
                                    314 ;	-----------------------------------------
      003704                        315 _remove_from_buffer_list:
      003704 AF F0            [24]  316 	mov	r7,b
      003706 AE 83            [24]  317 	mov	r6,dph
      003708 E5 82            [12]  318 	mov	a,dpl
      00370A 90 10 49         [24]  319 	mov	dptr,#_remove_from_buffer_list_list_65536_50
      00370D F0               [24]  320 	movx	@dptr,a
      00370E EE               [12]  321 	mov	a,r6
      00370F A3               [24]  322 	inc	dptr
      003710 F0               [24]  323 	movx	@dptr,a
      003711 EF               [12]  324 	mov	a,r7
      003712 A3               [24]  325 	inc	dptr
      003713 F0               [24]  326 	movx	@dptr,a
                                    327 ;	src/linked_list.c:27: if (list == NULL) return false;
      003714 90 10 49         [24]  328 	mov	dptr,#_remove_from_buffer_list_list_65536_50
      003717 E0               [24]  329 	movx	a,@dptr
      003718 F5 08            [12]  330 	mov	_remove_from_buffer_list_sloc0_1_0,a
      00371A A3               [24]  331 	inc	dptr
      00371B E0               [24]  332 	movx	a,@dptr
      00371C F5 09            [12]  333 	mov	(_remove_from_buffer_list_sloc0_1_0 + 1),a
      00371E A3               [24]  334 	inc	dptr
      00371F E0               [24]  335 	movx	a,@dptr
      003720 F5 0A            [12]  336 	mov	(_remove_from_buffer_list_sloc0_1_0 + 2),a
      003722 E5 08            [12]  337 	mov	a,_remove_from_buffer_list_sloc0_1_0
      003724 45 09            [12]  338 	orl	a,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003726 70 03            [24]  339 	jnz	00102$
      003728 F5 82            [12]  340 	mov	dpl,a
      00372A 22               [24]  341 	ret
      00372B                        342 00102$:
                                    343 ;	src/linked_list.c:28: if (list->head == NULL) return false;
      00372B 85 08 82         [24]  344 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      00372E 85 09 83         [24]  345 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003731 85 0A F0         [24]  346 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      003734 12 49 48         [24]  347 	lcall	__gptrget
      003737 FA               [12]  348 	mov	r2,a
      003738 A3               [24]  349 	inc	dptr
      003739 12 49 48         [24]  350 	lcall	__gptrget
      00373C FB               [12]  351 	mov	r3,a
      00373D A3               [24]  352 	inc	dptr
      00373E 12 49 48         [24]  353 	lcall	__gptrget
      003741 FC               [12]  354 	mov	r4,a
      003742 EA               [12]  355 	mov	a,r2
      003743 4B               [12]  356 	orl	a,r3
      003744 70 03            [24]  357 	jnz	00104$
      003746 F5 82            [12]  358 	mov	dpl,a
      003748 22               [24]  359 	ret
      003749                        360 00104$:
                                    361 ;	src/linked_list.c:31: if (idx == 0)
      003749 90 10 47         [24]  362 	mov	dptr,#_remove_from_buffer_list_PARM_2
      00374C E0               [24]  363 	movx	a,@dptr
      00374D F8               [12]  364 	mov	r0,a
      00374E A3               [24]  365 	inc	dptr
      00374F E0               [24]  366 	movx	a,@dptr
      003750 F9               [12]  367 	mov	r1,a
      003751 90 10 47         [24]  368 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003754 E0               [24]  369 	movx	a,@dptr
      003755 F5 F0            [12]  370 	mov	b,a
      003757 A3               [24]  371 	inc	dptr
      003758 E0               [24]  372 	movx	a,@dptr
      003759 45 F0            [12]  373 	orl	a,b
      00375B 70 42            [24]  374 	jnz	00112$
                                    375 ;	src/linked_list.c:34: to_free = list->head;
      00375D 90 10 4C         [24]  376 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      003760 EA               [12]  377 	mov	a,r2
      003761 F0               [24]  378 	movx	@dptr,a
      003762 EB               [12]  379 	mov	a,r3
      003763 A3               [24]  380 	inc	dptr
      003764 F0               [24]  381 	movx	@dptr,a
      003765 EC               [12]  382 	mov	a,r4
      003766 A3               [24]  383 	inc	dptr
      003767 F0               [24]  384 	movx	@dptr,a
                                    385 ;	src/linked_list.c:35: list->head = list->head->next;  
      003768 74 08            [12]  386 	mov	a,#0x08
      00376A 2A               [12]  387 	add	a,r2
      00376B FD               [12]  388 	mov	r5,a
      00376C E4               [12]  389 	clr	a
      00376D 3B               [12]  390 	addc	a,r3
      00376E FE               [12]  391 	mov	r6,a
      00376F 8C 07            [24]  392 	mov	ar7,r4
      003771 8D 82            [24]  393 	mov	dpl,r5
      003773 8E 83            [24]  394 	mov	dph,r6
      003775 8F F0            [24]  395 	mov	b,r7
      003777 12 49 48         [24]  396 	lcall	__gptrget
      00377A FD               [12]  397 	mov	r5,a
      00377B A3               [24]  398 	inc	dptr
      00377C 12 49 48         [24]  399 	lcall	__gptrget
      00377F FE               [12]  400 	mov	r6,a
      003780 A3               [24]  401 	inc	dptr
      003781 12 49 48         [24]  402 	lcall	__gptrget
      003784 FF               [12]  403 	mov	r7,a
      003785 85 08 82         [24]  404 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      003788 85 09 83         [24]  405 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      00378B 85 0A F0         [24]  406 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      00378E ED               [12]  407 	mov	a,r5
      00378F 12 3C EE         [24]  408 	lcall	__gptrput
      003792 A3               [24]  409 	inc	dptr
      003793 EE               [12]  410 	mov	a,r6
      003794 12 3C EE         [24]  411 	lcall	__gptrput
      003797 A3               [24]  412 	inc	dptr
      003798 EF               [12]  413 	mov	a,r7
      003799 12 3C EE         [24]  414 	lcall	__gptrput
      00379C 02 38 67         [24]  415 	ljmp	00113$
      00379F                        416 00112$:
                                    417 ;	src/linked_list.c:39: buffer_t *prev = list->head;
      00379F 90 10 4F         [24]  418 	mov	dptr,#_remove_from_buffer_list_prev_131073_54
      0037A2 EA               [12]  419 	mov	a,r2
      0037A3 F0               [24]  420 	movx	@dptr,a
      0037A4 EB               [12]  421 	mov	a,r3
      0037A5 A3               [24]  422 	inc	dptr
      0037A6 F0               [24]  423 	movx	@dptr,a
      0037A7 EC               [12]  424 	mov	a,r4
      0037A8 A3               [24]  425 	inc	dptr
      0037A9 F0               [24]  426 	movx	@dptr,a
                                    427 ;	src/linked_list.c:40: idx--;
      0037AA 18               [12]  428 	dec	r0
      0037AB B8 FF 01         [24]  429 	cjne	r0,#0xff,00160$
      0037AE 19               [12]  430 	dec	r1
      0037AF                        431 00160$:
      0037AF 90 10 47         [24]  432 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0037B2 E8               [12]  433 	mov	a,r0
      0037B3 F0               [24]  434 	movx	@dptr,a
      0037B4 E9               [12]  435 	mov	a,r1
      0037B5 A3               [24]  436 	inc	dptr
      0037B6 F0               [24]  437 	movx	@dptr,a
                                    438 ;	src/linked_list.c:41: while(idx > 0 && prev->next != NULL)
      0037B7 90 10 47         [24]  439 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0037BA E0               [24]  440 	movx	a,@dptr
      0037BB FE               [12]  441 	mov	r6,a
      0037BC A3               [24]  442 	inc	dptr
      0037BD E0               [24]  443 	movx	a,@dptr
      0037BE FF               [12]  444 	mov	r7,a
      0037BF                        445 00106$:
      0037BF EE               [12]  446 	mov	a,r6
      0037C0 4F               [12]  447 	orl	a,r7
      0037C1 60 3C            [24]  448 	jz	00108$
      0037C3 90 10 4F         [24]  449 	mov	dptr,#_remove_from_buffer_list_prev_131073_54
      0037C6 E0               [24]  450 	movx	a,@dptr
      0037C7 FB               [12]  451 	mov	r3,a
      0037C8 A3               [24]  452 	inc	dptr
      0037C9 E0               [24]  453 	movx	a,@dptr
      0037CA FC               [12]  454 	mov	r4,a
      0037CB A3               [24]  455 	inc	dptr
      0037CC E0               [24]  456 	movx	a,@dptr
      0037CD FD               [12]  457 	mov	r5,a
      0037CE 74 08            [12]  458 	mov	a,#0x08
      0037D0 2B               [12]  459 	add	a,r3
      0037D1 FB               [12]  460 	mov	r3,a
      0037D2 E4               [12]  461 	clr	a
      0037D3 3C               [12]  462 	addc	a,r4
      0037D4 FC               [12]  463 	mov	r4,a
      0037D5 8B 82            [24]  464 	mov	dpl,r3
      0037D7 8C 83            [24]  465 	mov	dph,r4
      0037D9 8D F0            [24]  466 	mov	b,r5
      0037DB 12 49 48         [24]  467 	lcall	__gptrget
      0037DE FB               [12]  468 	mov	r3,a
      0037DF A3               [24]  469 	inc	dptr
      0037E0 12 49 48         [24]  470 	lcall	__gptrget
      0037E3 FC               [12]  471 	mov	r4,a
      0037E4 A3               [24]  472 	inc	dptr
      0037E5 12 49 48         [24]  473 	lcall	__gptrget
      0037E8 FD               [12]  474 	mov	r5,a
      0037E9 EB               [12]  475 	mov	a,r3
      0037EA 4C               [12]  476 	orl	a,r4
      0037EB 60 12            [24]  477 	jz	00108$
                                    478 ;	src/linked_list.c:43: prev = prev->next;
      0037ED 90 10 4F         [24]  479 	mov	dptr,#_remove_from_buffer_list_prev_131073_54
      0037F0 EB               [12]  480 	mov	a,r3
      0037F1 F0               [24]  481 	movx	@dptr,a
      0037F2 EC               [12]  482 	mov	a,r4
      0037F3 A3               [24]  483 	inc	dptr
      0037F4 F0               [24]  484 	movx	@dptr,a
      0037F5 ED               [12]  485 	mov	a,r5
      0037F6 A3               [24]  486 	inc	dptr
      0037F7 F0               [24]  487 	movx	@dptr,a
                                    488 ;	src/linked_list.c:44: idx--;
      0037F8 1E               [12]  489 	dec	r6
      0037F9 BE FF 01         [24]  490 	cjne	r6,#0xff,00163$
      0037FC 1F               [12]  491 	dec	r7
      0037FD                        492 00163$:
      0037FD 80 C0            [24]  493 	sjmp	00106$
      0037FF                        494 00108$:
                                    495 ;	src/linked_list.c:47: if (idx != 0) return false;
      0037FF EE               [12]  496 	mov	a,r6
      003800 4F               [12]  497 	orl	a,r7
      003801 60 04            [24]  498 	jz	00110$
      003803 75 82 00         [24]  499 	mov	dpl,#0x00
      003806 22               [24]  500 	ret
      003807                        501 00110$:
                                    502 ;	src/linked_list.c:48: to_free = prev->next;
      003807 90 10 4F         [24]  503 	mov	dptr,#_remove_from_buffer_list_prev_131073_54
      00380A E0               [24]  504 	movx	a,@dptr
      00380B FD               [12]  505 	mov	r5,a
      00380C A3               [24]  506 	inc	dptr
      00380D E0               [24]  507 	movx	a,@dptr
      00380E FE               [12]  508 	mov	r6,a
      00380F A3               [24]  509 	inc	dptr
      003810 E0               [24]  510 	movx	a,@dptr
      003811 FF               [12]  511 	mov	r7,a
      003812 74 08            [12]  512 	mov	a,#0x08
      003814 2D               [12]  513 	add	a,r5
      003815 FD               [12]  514 	mov	r5,a
      003816 E4               [12]  515 	clr	a
      003817 3E               [12]  516 	addc	a,r6
      003818 FE               [12]  517 	mov	r6,a
      003819 8D 82            [24]  518 	mov	dpl,r5
      00381B 8E 83            [24]  519 	mov	dph,r6
      00381D 8F F0            [24]  520 	mov	b,r7
      00381F 12 49 48         [24]  521 	lcall	__gptrget
      003822 FA               [12]  522 	mov	r2,a
      003823 A3               [24]  523 	inc	dptr
      003824 12 49 48         [24]  524 	lcall	__gptrget
      003827 FB               [12]  525 	mov	r3,a
      003828 A3               [24]  526 	inc	dptr
      003829 12 49 48         [24]  527 	lcall	__gptrget
      00382C FC               [12]  528 	mov	r4,a
      00382D 90 10 4C         [24]  529 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      003830 EA               [12]  530 	mov	a,r2
      003831 F0               [24]  531 	movx	@dptr,a
      003832 EB               [12]  532 	mov	a,r3
      003833 A3               [24]  533 	inc	dptr
      003834 F0               [24]  534 	movx	@dptr,a
      003835 EC               [12]  535 	mov	a,r4
      003836 A3               [24]  536 	inc	dptr
      003837 F0               [24]  537 	movx	@dptr,a
                                    538 ;	src/linked_list.c:49: prev->next = to_free->next;
      003838 74 08            [12]  539 	mov	a,#0x08
      00383A 2A               [12]  540 	add	a,r2
      00383B FA               [12]  541 	mov	r2,a
      00383C E4               [12]  542 	clr	a
      00383D 3B               [12]  543 	addc	a,r3
      00383E FB               [12]  544 	mov	r3,a
      00383F 8A 82            [24]  545 	mov	dpl,r2
      003841 8B 83            [24]  546 	mov	dph,r3
      003843 8C F0            [24]  547 	mov	b,r4
      003845 12 49 48         [24]  548 	lcall	__gptrget
      003848 FA               [12]  549 	mov	r2,a
      003849 A3               [24]  550 	inc	dptr
      00384A 12 49 48         [24]  551 	lcall	__gptrget
      00384D FB               [12]  552 	mov	r3,a
      00384E A3               [24]  553 	inc	dptr
      00384F 12 49 48         [24]  554 	lcall	__gptrget
      003852 FC               [12]  555 	mov	r4,a
      003853 8D 82            [24]  556 	mov	dpl,r5
      003855 8E 83            [24]  557 	mov	dph,r6
      003857 8F F0            [24]  558 	mov	b,r7
      003859 EA               [12]  559 	mov	a,r2
      00385A 12 3C EE         [24]  560 	lcall	__gptrput
      00385D A3               [24]  561 	inc	dptr
      00385E EB               [12]  562 	mov	a,r3
      00385F 12 3C EE         [24]  563 	lcall	__gptrput
      003862 A3               [24]  564 	inc	dptr
      003863 EC               [12]  565 	mov	a,r4
      003864 12 3C EE         [24]  566 	lcall	__gptrput
      003867                        567 00113$:
                                    568 ;	src/linked_list.c:52: if (to_free == NULL) return false; 
      003867 90 10 4C         [24]  569 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      00386A E0               [24]  570 	movx	a,@dptr
      00386B FE               [12]  571 	mov	r6,a
      00386C A3               [24]  572 	inc	dptr
      00386D E0               [24]  573 	movx	a,@dptr
      00386E FD               [12]  574 	mov	r5,a
      00386F A3               [24]  575 	inc	dptr
      003870 E0               [24]  576 	movx	a,@dptr
      003871 FF               [12]  577 	mov	r7,a
      003872 90 10 4C         [24]  578 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      003875 E0               [24]  579 	movx	a,@dptr
      003876 F5 F0            [12]  580 	mov	b,a
      003878 A3               [24]  581 	inc	dptr
      003879 E0               [24]  582 	movx	a,@dptr
      00387A 45 F0            [12]  583 	orl	a,b
      00387C 70 03            [24]  584 	jnz	00115$
      00387E F5 82            [12]  585 	mov	dpl,a
      003880 22               [24]  586 	ret
      003881                        587 00115$:
                                    588 ;	src/linked_list.c:53: if (to_free->buffer != NULL) 
      003881 8E 82            [24]  589 	mov	dpl,r6
      003883 8D 83            [24]  590 	mov	dph,r5
      003885 8F F0            [24]  591 	mov	b,r7
      003887 12 49 48         [24]  592 	lcall	__gptrget
      00388A FE               [12]  593 	mov	r6,a
      00388B A3               [24]  594 	inc	dptr
      00388C 12 49 48         [24]  595 	lcall	__gptrget
      00388F FF               [12]  596 	mov	r7,a
      003890 4E               [12]  597 	orl	a,r6
      003891 60 0B            [24]  598 	jz	00117$
                                    599 ;	src/linked_list.c:55: free(to_free->buffer);
      003893 7D 00            [12]  600 	mov	r5,#0x00
      003895 8E 82            [24]  601 	mov	dpl,r6
      003897 8F 83            [24]  602 	mov	dph,r7
      003899 8D F0            [24]  603 	mov	b,r5
      00389B 12 39 D7         [24]  604 	lcall	_free
      00389E                        605 00117$:
                                    606 ;	src/linked_list.c:57: free(to_free);
      00389E 90 10 4C         [24]  607 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      0038A1 E0               [24]  608 	movx	a,@dptr
      0038A2 FD               [12]  609 	mov	r5,a
      0038A3 A3               [24]  610 	inc	dptr
      0038A4 E0               [24]  611 	movx	a,@dptr
      0038A5 FE               [12]  612 	mov	r6,a
      0038A6 A3               [24]  613 	inc	dptr
      0038A7 E0               [24]  614 	movx	a,@dptr
      0038A8 FF               [12]  615 	mov	r7,a
      0038A9 8D 82            [24]  616 	mov	dpl,r5
      0038AB 8E 83            [24]  617 	mov	dph,r6
      0038AD 8F F0            [24]  618 	mov	b,r7
      0038AF 12 39 D7         [24]  619 	lcall	_free
                                    620 ;	src/linked_list.c:58: return true; 
      0038B2 75 82 01         [24]  621 	mov	dpl,#0x01
                                    622 ;	src/linked_list.c:59: }
      0038B5 22               [24]  623 	ret
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'free_all_elems_from_list'
                                    626 ;------------------------------------------------------------
                                    627 ;sloc0                     Allocated with name '_free_all_elems_from_list_sloc0_1_0'
                                    628 ;list                      Allocated with name '_free_all_elems_from_list_list_65536_57'
                                    629 ;buffer_to_free            Allocated with name '_free_all_elems_from_list_buffer_to_free_65536_58'
                                    630 ;------------------------------------------------------------
                                    631 ;	src/linked_list.c:61: void free_all_elems_from_list(buffer_list_t *list)
                                    632 ;	-----------------------------------------
                                    633 ;	 function free_all_elems_from_list
                                    634 ;	-----------------------------------------
      0038B6                        635 _free_all_elems_from_list:
      0038B6 AF F0            [24]  636 	mov	r7,b
      0038B8 AE 83            [24]  637 	mov	r6,dph
      0038BA E5 82            [12]  638 	mov	a,dpl
      0038BC 90 10 52         [24]  639 	mov	dptr,#_free_all_elems_from_list_list_65536_57
      0038BF F0               [24]  640 	movx	@dptr,a
      0038C0 EE               [12]  641 	mov	a,r6
      0038C1 A3               [24]  642 	inc	dptr
      0038C2 F0               [24]  643 	movx	@dptr,a
      0038C3 EF               [12]  644 	mov	a,r7
      0038C4 A3               [24]  645 	inc	dptr
      0038C5 F0               [24]  646 	movx	@dptr,a
                                    647 ;	src/linked_list.c:63: buffer_t *buffer_to_free = list->head;
      0038C6 90 10 52         [24]  648 	mov	dptr,#_free_all_elems_from_list_list_65536_57
      0038C9 E0               [24]  649 	movx	a,@dptr
      0038CA FD               [12]  650 	mov	r5,a
      0038CB A3               [24]  651 	inc	dptr
      0038CC E0               [24]  652 	movx	a,@dptr
      0038CD FE               [12]  653 	mov	r6,a
      0038CE A3               [24]  654 	inc	dptr
      0038CF E0               [24]  655 	movx	a,@dptr
      0038D0 FF               [12]  656 	mov	r7,a
      0038D1 8D 82            [24]  657 	mov	dpl,r5
      0038D3 8E 83            [24]  658 	mov	dph,r6
      0038D5 8F F0            [24]  659 	mov	b,r7
      0038D7 12 49 48         [24]  660 	lcall	__gptrget
      0038DA FA               [12]  661 	mov	r2,a
      0038DB A3               [24]  662 	inc	dptr
      0038DC 12 49 48         [24]  663 	lcall	__gptrget
      0038DF FB               [12]  664 	mov	r3,a
      0038E0 A3               [24]  665 	inc	dptr
      0038E1 12 49 48         [24]  666 	lcall	__gptrget
      0038E4 FC               [12]  667 	mov	r4,a
      0038E5 90 10 55         [24]  668 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_58
      0038E8 EA               [12]  669 	mov	a,r2
      0038E9 F0               [24]  670 	movx	@dptr,a
      0038EA EB               [12]  671 	mov	a,r3
      0038EB A3               [24]  672 	inc	dptr
      0038EC F0               [24]  673 	movx	@dptr,a
      0038ED EC               [12]  674 	mov	a,r4
      0038EE A3               [24]  675 	inc	dptr
      0038EF F0               [24]  676 	movx	@dptr,a
                                    677 ;	src/linked_list.c:64: while(list->head != NULL)
      0038F0                        678 00103$:
      0038F0 90 10 52         [24]  679 	mov	dptr,#_free_all_elems_from_list_list_65536_57
      0038F3 E0               [24]  680 	movx	a,@dptr
      0038F4 FA               [12]  681 	mov	r2,a
      0038F5 A3               [24]  682 	inc	dptr
      0038F6 E0               [24]  683 	movx	a,@dptr
      0038F7 FB               [12]  684 	mov	r3,a
      0038F8 A3               [24]  685 	inc	dptr
      0038F9 E0               [24]  686 	movx	a,@dptr
      0038FA FC               [12]  687 	mov	r4,a
      0038FB 8A 82            [24]  688 	mov	dpl,r2
      0038FD 8B 83            [24]  689 	mov	dph,r3
      0038FF 8C F0            [24]  690 	mov	b,r4
      003901 12 49 48         [24]  691 	lcall	__gptrget
      003904 F5 0B            [12]  692 	mov	_free_all_elems_from_list_sloc0_1_0,a
      003906 A3               [24]  693 	inc	dptr
      003907 12 49 48         [24]  694 	lcall	__gptrget
      00390A F5 0C            [12]  695 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      00390C A3               [24]  696 	inc	dptr
      00390D 12 49 48         [24]  697 	lcall	__gptrget
      003910 F5 0D            [12]  698 	mov	(_free_all_elems_from_list_sloc0_1_0 + 2),a
      003912 E5 0B            [12]  699 	mov	a,_free_all_elems_from_list_sloc0_1_0
      003914 45 0C            [12]  700 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003916 70 01            [24]  701 	jnz	00120$
      003918 22               [24]  702 	ret
      003919                        703 00120$:
                                    704 ;	src/linked_list.c:66: list->head = list->head->next;
      003919 C0 05            [24]  705 	push	ar5
      00391B C0 06            [24]  706 	push	ar6
      00391D C0 07            [24]  707 	push	ar7
      00391F 74 08            [12]  708 	mov	a,#0x08
      003921 25 0B            [12]  709 	add	a,_free_all_elems_from_list_sloc0_1_0
      003923 F8               [12]  710 	mov	r0,a
      003924 E4               [12]  711 	clr	a
      003925 35 0C            [12]  712 	addc	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003927 F9               [12]  713 	mov	r1,a
      003928 AF 0D            [24]  714 	mov	r7,(_free_all_elems_from_list_sloc0_1_0 + 2)
      00392A 88 82            [24]  715 	mov	dpl,r0
      00392C 89 83            [24]  716 	mov	dph,r1
      00392E 8F F0            [24]  717 	mov	b,r7
      003930 12 49 48         [24]  718 	lcall	__gptrget
      003933 F8               [12]  719 	mov	r0,a
      003934 A3               [24]  720 	inc	dptr
      003935 12 49 48         [24]  721 	lcall	__gptrget
      003938 F9               [12]  722 	mov	r1,a
      003939 A3               [24]  723 	inc	dptr
      00393A 12 49 48         [24]  724 	lcall	__gptrget
      00393D FF               [12]  725 	mov	r7,a
      00393E 8A 82            [24]  726 	mov	dpl,r2
      003940 8B 83            [24]  727 	mov	dph,r3
      003942 8C F0            [24]  728 	mov	b,r4
      003944 E8               [12]  729 	mov	a,r0
      003945 12 3C EE         [24]  730 	lcall	__gptrput
      003948 A3               [24]  731 	inc	dptr
      003949 E9               [12]  732 	mov	a,r1
      00394A 12 3C EE         [24]  733 	lcall	__gptrput
      00394D A3               [24]  734 	inc	dptr
      00394E EF               [12]  735 	mov	a,r7
      00394F 12 3C EE         [24]  736 	lcall	__gptrput
                                    737 ;	src/linked_list.c:67: if (buffer_to_free->buffer != NULL)
      003952 90 10 55         [24]  738 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_58
      003955 E0               [24]  739 	movx	a,@dptr
      003956 FD               [12]  740 	mov	r5,a
      003957 A3               [24]  741 	inc	dptr
      003958 E0               [24]  742 	movx	a,@dptr
      003959 FE               [12]  743 	mov	r6,a
      00395A A3               [24]  744 	inc	dptr
      00395B E0               [24]  745 	movx	a,@dptr
      00395C FF               [12]  746 	mov	r7,a
      00395D 8D 82            [24]  747 	mov	dpl,r5
      00395F 8E 83            [24]  748 	mov	dph,r6
      003961 8F F0            [24]  749 	mov	b,r7
      003963 12 49 48         [24]  750 	lcall	__gptrget
      003966 F5 0B            [12]  751 	mov	_free_all_elems_from_list_sloc0_1_0,a
      003968 A3               [24]  752 	inc	dptr
      003969 12 49 48         [24]  753 	lcall	__gptrget
      00396C F5 0C            [12]  754 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      00396E D0 07            [24]  755 	pop	ar7
      003970 D0 06            [24]  756 	pop	ar6
      003972 D0 05            [24]  757 	pop	ar5
      003974 E5 0B            [12]  758 	mov	a,_free_all_elems_from_list_sloc0_1_0
      003976 45 0C            [12]  759 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003978 60 1B            [24]  760 	jz	00102$
                                    761 ;	src/linked_list.c:69: free(buffer_to_free->buffer);
      00397A AB 0B            [24]  762 	mov	r3,_free_all_elems_from_list_sloc0_1_0
      00397C AC 0C            [24]  763 	mov	r4,(_free_all_elems_from_list_sloc0_1_0 + 1)
      00397E 7A 00            [12]  764 	mov	r2,#0x00
      003980 8B 82            [24]  765 	mov	dpl,r3
      003982 8C 83            [24]  766 	mov	dph,r4
      003984 8A F0            [24]  767 	mov	b,r2
      003986 C0 07            [24]  768 	push	ar7
      003988 C0 06            [24]  769 	push	ar6
      00398A C0 05            [24]  770 	push	ar5
      00398C 12 39 D7         [24]  771 	lcall	_free
      00398F D0 05            [24]  772 	pop	ar5
      003991 D0 06            [24]  773 	pop	ar6
      003993 D0 07            [24]  774 	pop	ar7
      003995                        775 00102$:
                                    776 ;	src/linked_list.c:71: free(buffer_to_free);
      003995 90 10 55         [24]  777 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_58
      003998 E0               [24]  778 	movx	a,@dptr
      003999 FA               [12]  779 	mov	r2,a
      00399A A3               [24]  780 	inc	dptr
      00399B E0               [24]  781 	movx	a,@dptr
      00399C FB               [12]  782 	mov	r3,a
      00399D A3               [24]  783 	inc	dptr
      00399E E0               [24]  784 	movx	a,@dptr
      00399F FC               [12]  785 	mov	r4,a
      0039A0 8A 82            [24]  786 	mov	dpl,r2
      0039A2 8B 83            [24]  787 	mov	dph,r3
      0039A4 8C F0            [24]  788 	mov	b,r4
      0039A6 C0 07            [24]  789 	push	ar7
      0039A8 C0 06            [24]  790 	push	ar6
      0039AA C0 05            [24]  791 	push	ar5
      0039AC 12 39 D7         [24]  792 	lcall	_free
      0039AF D0 05            [24]  793 	pop	ar5
      0039B1 D0 06            [24]  794 	pop	ar6
      0039B3 D0 07            [24]  795 	pop	ar7
                                    796 ;	src/linked_list.c:72: buffer_to_free = list->head;
      0039B5 8D 82            [24]  797 	mov	dpl,r5
      0039B7 8E 83            [24]  798 	mov	dph,r6
      0039B9 8F F0            [24]  799 	mov	b,r7
      0039BB 12 49 48         [24]  800 	lcall	__gptrget
      0039BE FA               [12]  801 	mov	r2,a
      0039BF A3               [24]  802 	inc	dptr
      0039C0 12 49 48         [24]  803 	lcall	__gptrget
      0039C3 FB               [12]  804 	mov	r3,a
      0039C4 A3               [24]  805 	inc	dptr
      0039C5 12 49 48         [24]  806 	lcall	__gptrget
      0039C8 FC               [12]  807 	mov	r4,a
      0039C9 90 10 55         [24]  808 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_58
      0039CC EA               [12]  809 	mov	a,r2
      0039CD F0               [24]  810 	movx	@dptr,a
      0039CE EB               [12]  811 	mov	a,r3
      0039CF A3               [24]  812 	inc	dptr
      0039D0 F0               [24]  813 	movx	@dptr,a
      0039D1 EC               [12]  814 	mov	a,r4
      0039D2 A3               [24]  815 	inc	dptr
      0039D3 F0               [24]  816 	movx	@dptr,a
                                    817 ;	src/linked_list.c:74: }
      0039D4 02 38 F0         [24]  818 	ljmp	00103$
                                    819 	.area CSEG    (CODE)
                                    820 	.area CONST   (CODE)
                                    821 	.area XINIT   (CODE)
                                    822 	.area CABS    (ABS,CODE)
