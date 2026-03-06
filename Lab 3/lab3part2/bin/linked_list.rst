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
      002041                         67 _append_to_buffer_list_PARM_2:
      002041                         68 	.ds 3
      002044                         69 _append_to_buffer_list_list_65536_45:
      002044                         70 	.ds 3
      002047                         71 _append_to_buffer_list_tail_131072_48:
      002047                         72 	.ds 3
      00204A                         73 _remove_from_buffer_list_PARM_2:
      00204A                         74 	.ds 2
      00204C                         75 _remove_from_buffer_list_list_65536_50:
      00204C                         76 	.ds 3
      00204F                         77 _remove_from_buffer_list_to_free_65537_52:
      00204F                         78 	.ds 3
      002052                         79 _remove_from_buffer_list_prev_131073_54:
      002052                         80 	.ds 3
      002055                         81 _free_all_elems_from_list_list_65536_57:
      002055                         82 	.ds 3
      002058                         83 _free_all_elems_from_list_buffer_to_free_65536_58:
      002058                         84 	.ds 3
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
      003698                        131 _append_to_buffer_list:
                           000007   132 	ar7 = 0x07
                           000006   133 	ar6 = 0x06
                           000005   134 	ar5 = 0x05
                           000004   135 	ar4 = 0x04
                           000003   136 	ar3 = 0x03
                           000002   137 	ar2 = 0x02
                           000001   138 	ar1 = 0x01
                           000000   139 	ar0 = 0x00
      003698 AF F0            [24]  140 	mov	r7,b
      00369A AE 83            [24]  141 	mov	r6,dph
      00369C E5 82            [12]  142 	mov	a,dpl
      00369E 90 20 44         [24]  143 	mov	dptr,#_append_to_buffer_list_list_65536_45
      0036A1 F0               [24]  144 	movx	@dptr,a
      0036A2 EE               [12]  145 	mov	a,r6
      0036A3 A3               [24]  146 	inc	dptr
      0036A4 F0               [24]  147 	movx	@dptr,a
      0036A5 EF               [12]  148 	mov	a,r7
      0036A6 A3               [24]  149 	inc	dptr
      0036A7 F0               [24]  150 	movx	@dptr,a
                                    151 ;	src/linked_list.c:7: if (list->head == NULL) 
      0036A8 90 20 44         [24]  152 	mov	dptr,#_append_to_buffer_list_list_65536_45
      0036AB E0               [24]  153 	movx	a,@dptr
      0036AC F5 1B            [12]  154 	mov	_append_to_buffer_list_sloc0_1_0,a
      0036AE A3               [24]  155 	inc	dptr
      0036AF E0               [24]  156 	movx	a,@dptr
      0036B0 F5 1C            [12]  157 	mov	(_append_to_buffer_list_sloc0_1_0 + 1),a
      0036B2 A3               [24]  158 	inc	dptr
      0036B3 E0               [24]  159 	movx	a,@dptr
      0036B4 F5 1D            [12]  160 	mov	(_append_to_buffer_list_sloc0_1_0 + 2),a
      0036B6 85 1B 82         [24]  161 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      0036B9 85 1C 83         [24]  162 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      0036BC 85 1D F0         [24]  163 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      0036BF 12 49 DF         [24]  164 	lcall	__gptrget
      0036C2 FA               [12]  165 	mov	r2,a
      0036C3 A3               [24]  166 	inc	dptr
      0036C4 12 49 DF         [24]  167 	lcall	__gptrget
      0036C7 FB               [12]  168 	mov	r3,a
      0036C8 A3               [24]  169 	inc	dptr
      0036C9 12 49 DF         [24]  170 	lcall	__gptrget
      0036CC FC               [12]  171 	mov	r4,a
      0036CD EA               [12]  172 	mov	a,r2
      0036CE 4B               [12]  173 	orl	a,r3
      0036CF 70 24            [24]  174 	jnz	00105$
                                    175 ;	src/linked_list.c:9: list->head = buffer; 
      0036D1 90 20 41         [24]  176 	mov	dptr,#_append_to_buffer_list_PARM_2
      0036D4 E0               [24]  177 	movx	a,@dptr
      0036D5 F8               [12]  178 	mov	r0,a
      0036D6 A3               [24]  179 	inc	dptr
      0036D7 E0               [24]  180 	movx	a,@dptr
      0036D8 F9               [12]  181 	mov	r1,a
      0036D9 A3               [24]  182 	inc	dptr
      0036DA E0               [24]  183 	movx	a,@dptr
      0036DB FF               [12]  184 	mov	r7,a
      0036DC 85 1B 82         [24]  185 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      0036DF 85 1C 83         [24]  186 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      0036E2 85 1D F0         [24]  187 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      0036E5 E8               [12]  188 	mov	a,r0
      0036E6 12 3D 85         [24]  189 	lcall	__gptrput
      0036E9 A3               [24]  190 	inc	dptr
      0036EA E9               [12]  191 	mov	a,r1
      0036EB 12 3D 85         [24]  192 	lcall	__gptrput
      0036EE A3               [24]  193 	inc	dptr
      0036EF EF               [12]  194 	mov	a,r7
      0036F0 12 3D 85         [24]  195 	lcall	__gptrput
      0036F3 80 61            [24]  196 	sjmp	00106$
      0036F5                        197 00105$:
                                    198 ;	src/linked_list.c:13: buffer_t *tail = list->head;
      0036F5 90 20 47         [24]  199 	mov	dptr,#_append_to_buffer_list_tail_131072_48
      0036F8 EA               [12]  200 	mov	a,r2
      0036F9 F0               [24]  201 	movx	@dptr,a
      0036FA EB               [12]  202 	mov	a,r3
      0036FB A3               [24]  203 	inc	dptr
      0036FC F0               [24]  204 	movx	@dptr,a
      0036FD EC               [12]  205 	mov	a,r4
      0036FE A3               [24]  206 	inc	dptr
      0036FF F0               [24]  207 	movx	@dptr,a
                                    208 ;	src/linked_list.c:14: while(tail->next != NULL)
      003700                        209 00101$:
      003700 90 20 47         [24]  210 	mov	dptr,#_append_to_buffer_list_tail_131072_48
      003703 E0               [24]  211 	movx	a,@dptr
      003704 FD               [12]  212 	mov	r5,a
      003705 A3               [24]  213 	inc	dptr
      003706 E0               [24]  214 	movx	a,@dptr
      003707 FE               [12]  215 	mov	r6,a
      003708 A3               [24]  216 	inc	dptr
      003709 E0               [24]  217 	movx	a,@dptr
      00370A FF               [12]  218 	mov	r7,a
      00370B 74 08            [12]  219 	mov	a,#0x08
      00370D 2D               [12]  220 	add	a,r5
      00370E FD               [12]  221 	mov	r5,a
      00370F E4               [12]  222 	clr	a
      003710 3E               [12]  223 	addc	a,r6
      003711 FE               [12]  224 	mov	r6,a
      003712 8D 82            [24]  225 	mov	dpl,r5
      003714 8E 83            [24]  226 	mov	dph,r6
      003716 8F F0            [24]  227 	mov	b,r7
      003718 12 49 DF         [24]  228 	lcall	__gptrget
      00371B FA               [12]  229 	mov	r2,a
      00371C A3               [24]  230 	inc	dptr
      00371D 12 49 DF         [24]  231 	lcall	__gptrget
      003720 FB               [12]  232 	mov	r3,a
      003721 A3               [24]  233 	inc	dptr
      003722 12 49 DF         [24]  234 	lcall	__gptrget
      003725 FC               [12]  235 	mov	r4,a
      003726 EA               [12]  236 	mov	a,r2
      003727 4B               [12]  237 	orl	a,r3
      003728 60 0D            [24]  238 	jz	00103$
                                    239 ;	src/linked_list.c:16: tail = tail->next;
      00372A 90 20 47         [24]  240 	mov	dptr,#_append_to_buffer_list_tail_131072_48
      00372D EA               [12]  241 	mov	a,r2
      00372E F0               [24]  242 	movx	@dptr,a
      00372F EB               [12]  243 	mov	a,r3
      003730 A3               [24]  244 	inc	dptr
      003731 F0               [24]  245 	movx	@dptr,a
      003732 EC               [12]  246 	mov	a,r4
      003733 A3               [24]  247 	inc	dptr
      003734 F0               [24]  248 	movx	@dptr,a
      003735 80 C9            [24]  249 	sjmp	00101$
      003737                        250 00103$:
                                    251 ;	src/linked_list.c:18: tail->next = buffer;
      003737 90 20 41         [24]  252 	mov	dptr,#_append_to_buffer_list_PARM_2
      00373A E0               [24]  253 	movx	a,@dptr
      00373B FA               [12]  254 	mov	r2,a
      00373C A3               [24]  255 	inc	dptr
      00373D E0               [24]  256 	movx	a,@dptr
      00373E FB               [12]  257 	mov	r3,a
      00373F A3               [24]  258 	inc	dptr
      003740 E0               [24]  259 	movx	a,@dptr
      003741 FC               [12]  260 	mov	r4,a
      003742 8D 82            [24]  261 	mov	dpl,r5
      003744 8E 83            [24]  262 	mov	dph,r6
      003746 8F F0            [24]  263 	mov	b,r7
      003748 EA               [12]  264 	mov	a,r2
      003749 12 3D 85         [24]  265 	lcall	__gptrput
      00374C A3               [24]  266 	inc	dptr
      00374D EB               [12]  267 	mov	a,r3
      00374E 12 3D 85         [24]  268 	lcall	__gptrput
      003751 A3               [24]  269 	inc	dptr
      003752 EC               [12]  270 	mov	a,r4
      003753 12 3D 85         [24]  271 	lcall	__gptrput
      003756                        272 00106$:
                                    273 ;	src/linked_list.c:20: buffer->next = NULL; 
      003756 90 20 41         [24]  274 	mov	dptr,#_append_to_buffer_list_PARM_2
      003759 E0               [24]  275 	movx	a,@dptr
      00375A FD               [12]  276 	mov	r5,a
      00375B A3               [24]  277 	inc	dptr
      00375C E0               [24]  278 	movx	a,@dptr
      00375D FE               [12]  279 	mov	r6,a
      00375E A3               [24]  280 	inc	dptr
      00375F E0               [24]  281 	movx	a,@dptr
      003760 FF               [12]  282 	mov	r7,a
      003761 74 08            [12]  283 	mov	a,#0x08
      003763 2D               [12]  284 	add	a,r5
      003764 FD               [12]  285 	mov	r5,a
      003765 E4               [12]  286 	clr	a
      003766 3E               [12]  287 	addc	a,r6
      003767 FE               [12]  288 	mov	r6,a
      003768 8D 82            [24]  289 	mov	dpl,r5
      00376A 8E 83            [24]  290 	mov	dph,r6
      00376C 8F F0            [24]  291 	mov	b,r7
      00376E E4               [12]  292 	clr	a
      00376F 12 3D 85         [24]  293 	lcall	__gptrput
      003772 A3               [24]  294 	inc	dptr
      003773 12 3D 85         [24]  295 	lcall	__gptrput
      003776 A3               [24]  296 	inc	dptr
      003777 12 3D 85         [24]  297 	lcall	__gptrput
                                    298 ;	src/linked_list.c:21: return true;
      00377A 75 82 01         [24]  299 	mov	dpl,#0x01
                                    300 ;	src/linked_list.c:22: }
      00377D 22               [24]  301 	ret
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
      00377E                        315 _remove_from_buffer_list:
      00377E AF F0            [24]  316 	mov	r7,b
      003780 AE 83            [24]  317 	mov	r6,dph
      003782 E5 82            [12]  318 	mov	a,dpl
      003784 90 20 4C         [24]  319 	mov	dptr,#_remove_from_buffer_list_list_65536_50
      003787 F0               [24]  320 	movx	@dptr,a
      003788 EE               [12]  321 	mov	a,r6
      003789 A3               [24]  322 	inc	dptr
      00378A F0               [24]  323 	movx	@dptr,a
      00378B EF               [12]  324 	mov	a,r7
      00378C A3               [24]  325 	inc	dptr
      00378D F0               [24]  326 	movx	@dptr,a
                                    327 ;	src/linked_list.c:27: if (list == NULL) return false;
      00378E 90 20 4C         [24]  328 	mov	dptr,#_remove_from_buffer_list_list_65536_50
      003791 E0               [24]  329 	movx	a,@dptr
      003792 F5 08            [12]  330 	mov	_remove_from_buffer_list_sloc0_1_0,a
      003794 A3               [24]  331 	inc	dptr
      003795 E0               [24]  332 	movx	a,@dptr
      003796 F5 09            [12]  333 	mov	(_remove_from_buffer_list_sloc0_1_0 + 1),a
      003798 A3               [24]  334 	inc	dptr
      003799 E0               [24]  335 	movx	a,@dptr
      00379A F5 0A            [12]  336 	mov	(_remove_from_buffer_list_sloc0_1_0 + 2),a
      00379C E5 08            [12]  337 	mov	a,_remove_from_buffer_list_sloc0_1_0
      00379E 45 09            [12]  338 	orl	a,(_remove_from_buffer_list_sloc0_1_0 + 1)
      0037A0 70 03            [24]  339 	jnz	00102$
      0037A2 F5 82            [12]  340 	mov	dpl,a
      0037A4 22               [24]  341 	ret
      0037A5                        342 00102$:
                                    343 ;	src/linked_list.c:28: if (list->head == NULL) return false;
      0037A5 85 08 82         [24]  344 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      0037A8 85 09 83         [24]  345 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      0037AB 85 0A F0         [24]  346 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      0037AE 12 49 DF         [24]  347 	lcall	__gptrget
      0037B1 FA               [12]  348 	mov	r2,a
      0037B2 A3               [24]  349 	inc	dptr
      0037B3 12 49 DF         [24]  350 	lcall	__gptrget
      0037B6 FB               [12]  351 	mov	r3,a
      0037B7 A3               [24]  352 	inc	dptr
      0037B8 12 49 DF         [24]  353 	lcall	__gptrget
      0037BB FC               [12]  354 	mov	r4,a
      0037BC EA               [12]  355 	mov	a,r2
      0037BD 4B               [12]  356 	orl	a,r3
      0037BE 70 03            [24]  357 	jnz	00104$
      0037C0 F5 82            [12]  358 	mov	dpl,a
      0037C2 22               [24]  359 	ret
      0037C3                        360 00104$:
                                    361 ;	src/linked_list.c:31: if (idx == 0)
      0037C3 90 20 4A         [24]  362 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0037C6 E0               [24]  363 	movx	a,@dptr
      0037C7 F8               [12]  364 	mov	r0,a
      0037C8 A3               [24]  365 	inc	dptr
      0037C9 E0               [24]  366 	movx	a,@dptr
      0037CA F9               [12]  367 	mov	r1,a
      0037CB 90 20 4A         [24]  368 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0037CE E0               [24]  369 	movx	a,@dptr
      0037CF F5 F0            [12]  370 	mov	b,a
      0037D1 A3               [24]  371 	inc	dptr
      0037D2 E0               [24]  372 	movx	a,@dptr
      0037D3 45 F0            [12]  373 	orl	a,b
      0037D5 70 42            [24]  374 	jnz	00112$
                                    375 ;	src/linked_list.c:34: to_free = list->head;
      0037D7 90 20 4F         [24]  376 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      0037DA EA               [12]  377 	mov	a,r2
      0037DB F0               [24]  378 	movx	@dptr,a
      0037DC EB               [12]  379 	mov	a,r3
      0037DD A3               [24]  380 	inc	dptr
      0037DE F0               [24]  381 	movx	@dptr,a
      0037DF EC               [12]  382 	mov	a,r4
      0037E0 A3               [24]  383 	inc	dptr
      0037E1 F0               [24]  384 	movx	@dptr,a
                                    385 ;	src/linked_list.c:35: list->head = list->head->next;  
      0037E2 74 08            [12]  386 	mov	a,#0x08
      0037E4 2A               [12]  387 	add	a,r2
      0037E5 FD               [12]  388 	mov	r5,a
      0037E6 E4               [12]  389 	clr	a
      0037E7 3B               [12]  390 	addc	a,r3
      0037E8 FE               [12]  391 	mov	r6,a
      0037E9 8C 07            [24]  392 	mov	ar7,r4
      0037EB 8D 82            [24]  393 	mov	dpl,r5
      0037ED 8E 83            [24]  394 	mov	dph,r6
      0037EF 8F F0            [24]  395 	mov	b,r7
      0037F1 12 49 DF         [24]  396 	lcall	__gptrget
      0037F4 FD               [12]  397 	mov	r5,a
      0037F5 A3               [24]  398 	inc	dptr
      0037F6 12 49 DF         [24]  399 	lcall	__gptrget
      0037F9 FE               [12]  400 	mov	r6,a
      0037FA A3               [24]  401 	inc	dptr
      0037FB 12 49 DF         [24]  402 	lcall	__gptrget
      0037FE FF               [12]  403 	mov	r7,a
      0037FF 85 08 82         [24]  404 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      003802 85 09 83         [24]  405 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003805 85 0A F0         [24]  406 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      003808 ED               [12]  407 	mov	a,r5
      003809 12 3D 85         [24]  408 	lcall	__gptrput
      00380C A3               [24]  409 	inc	dptr
      00380D EE               [12]  410 	mov	a,r6
      00380E 12 3D 85         [24]  411 	lcall	__gptrput
      003811 A3               [24]  412 	inc	dptr
      003812 EF               [12]  413 	mov	a,r7
      003813 12 3D 85         [24]  414 	lcall	__gptrput
      003816 02 38 E1         [24]  415 	ljmp	00113$
      003819                        416 00112$:
                                    417 ;	src/linked_list.c:39: buffer_t *prev = list->head;
      003819 90 20 52         [24]  418 	mov	dptr,#_remove_from_buffer_list_prev_131073_54
      00381C EA               [12]  419 	mov	a,r2
      00381D F0               [24]  420 	movx	@dptr,a
      00381E EB               [12]  421 	mov	a,r3
      00381F A3               [24]  422 	inc	dptr
      003820 F0               [24]  423 	movx	@dptr,a
      003821 EC               [12]  424 	mov	a,r4
      003822 A3               [24]  425 	inc	dptr
      003823 F0               [24]  426 	movx	@dptr,a
                                    427 ;	src/linked_list.c:40: idx--;
      003824 18               [12]  428 	dec	r0
      003825 B8 FF 01         [24]  429 	cjne	r0,#0xff,00160$
      003828 19               [12]  430 	dec	r1
      003829                        431 00160$:
      003829 90 20 4A         [24]  432 	mov	dptr,#_remove_from_buffer_list_PARM_2
      00382C E8               [12]  433 	mov	a,r0
      00382D F0               [24]  434 	movx	@dptr,a
      00382E E9               [12]  435 	mov	a,r1
      00382F A3               [24]  436 	inc	dptr
      003830 F0               [24]  437 	movx	@dptr,a
                                    438 ;	src/linked_list.c:41: while(idx > 0 && prev->next != NULL)
      003831 90 20 4A         [24]  439 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003834 E0               [24]  440 	movx	a,@dptr
      003835 FE               [12]  441 	mov	r6,a
      003836 A3               [24]  442 	inc	dptr
      003837 E0               [24]  443 	movx	a,@dptr
      003838 FF               [12]  444 	mov	r7,a
      003839                        445 00106$:
      003839 EE               [12]  446 	mov	a,r6
      00383A 4F               [12]  447 	orl	a,r7
      00383B 60 3C            [24]  448 	jz	00108$
      00383D 90 20 52         [24]  449 	mov	dptr,#_remove_from_buffer_list_prev_131073_54
      003840 E0               [24]  450 	movx	a,@dptr
      003841 FB               [12]  451 	mov	r3,a
      003842 A3               [24]  452 	inc	dptr
      003843 E0               [24]  453 	movx	a,@dptr
      003844 FC               [12]  454 	mov	r4,a
      003845 A3               [24]  455 	inc	dptr
      003846 E0               [24]  456 	movx	a,@dptr
      003847 FD               [12]  457 	mov	r5,a
      003848 74 08            [12]  458 	mov	a,#0x08
      00384A 2B               [12]  459 	add	a,r3
      00384B FB               [12]  460 	mov	r3,a
      00384C E4               [12]  461 	clr	a
      00384D 3C               [12]  462 	addc	a,r4
      00384E FC               [12]  463 	mov	r4,a
      00384F 8B 82            [24]  464 	mov	dpl,r3
      003851 8C 83            [24]  465 	mov	dph,r4
      003853 8D F0            [24]  466 	mov	b,r5
      003855 12 49 DF         [24]  467 	lcall	__gptrget
      003858 FB               [12]  468 	mov	r3,a
      003859 A3               [24]  469 	inc	dptr
      00385A 12 49 DF         [24]  470 	lcall	__gptrget
      00385D FC               [12]  471 	mov	r4,a
      00385E A3               [24]  472 	inc	dptr
      00385F 12 49 DF         [24]  473 	lcall	__gptrget
      003862 FD               [12]  474 	mov	r5,a
      003863 EB               [12]  475 	mov	a,r3
      003864 4C               [12]  476 	orl	a,r4
      003865 60 12            [24]  477 	jz	00108$
                                    478 ;	src/linked_list.c:43: prev = prev->next;
      003867 90 20 52         [24]  479 	mov	dptr,#_remove_from_buffer_list_prev_131073_54
      00386A EB               [12]  480 	mov	a,r3
      00386B F0               [24]  481 	movx	@dptr,a
      00386C EC               [12]  482 	mov	a,r4
      00386D A3               [24]  483 	inc	dptr
      00386E F0               [24]  484 	movx	@dptr,a
      00386F ED               [12]  485 	mov	a,r5
      003870 A3               [24]  486 	inc	dptr
      003871 F0               [24]  487 	movx	@dptr,a
                                    488 ;	src/linked_list.c:44: idx--;
      003872 1E               [12]  489 	dec	r6
      003873 BE FF 01         [24]  490 	cjne	r6,#0xff,00163$
      003876 1F               [12]  491 	dec	r7
      003877                        492 00163$:
      003877 80 C0            [24]  493 	sjmp	00106$
      003879                        494 00108$:
                                    495 ;	src/linked_list.c:47: if (idx != 0) return false;
      003879 EE               [12]  496 	mov	a,r6
      00387A 4F               [12]  497 	orl	a,r7
      00387B 60 04            [24]  498 	jz	00110$
      00387D 75 82 00         [24]  499 	mov	dpl,#0x00
      003880 22               [24]  500 	ret
      003881                        501 00110$:
                                    502 ;	src/linked_list.c:48: to_free = prev->next;
      003881 90 20 52         [24]  503 	mov	dptr,#_remove_from_buffer_list_prev_131073_54
      003884 E0               [24]  504 	movx	a,@dptr
      003885 FD               [12]  505 	mov	r5,a
      003886 A3               [24]  506 	inc	dptr
      003887 E0               [24]  507 	movx	a,@dptr
      003888 FE               [12]  508 	mov	r6,a
      003889 A3               [24]  509 	inc	dptr
      00388A E0               [24]  510 	movx	a,@dptr
      00388B FF               [12]  511 	mov	r7,a
      00388C 74 08            [12]  512 	mov	a,#0x08
      00388E 2D               [12]  513 	add	a,r5
      00388F FD               [12]  514 	mov	r5,a
      003890 E4               [12]  515 	clr	a
      003891 3E               [12]  516 	addc	a,r6
      003892 FE               [12]  517 	mov	r6,a
      003893 8D 82            [24]  518 	mov	dpl,r5
      003895 8E 83            [24]  519 	mov	dph,r6
      003897 8F F0            [24]  520 	mov	b,r7
      003899 12 49 DF         [24]  521 	lcall	__gptrget
      00389C FA               [12]  522 	mov	r2,a
      00389D A3               [24]  523 	inc	dptr
      00389E 12 49 DF         [24]  524 	lcall	__gptrget
      0038A1 FB               [12]  525 	mov	r3,a
      0038A2 A3               [24]  526 	inc	dptr
      0038A3 12 49 DF         [24]  527 	lcall	__gptrget
      0038A6 FC               [12]  528 	mov	r4,a
      0038A7 90 20 4F         [24]  529 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      0038AA EA               [12]  530 	mov	a,r2
      0038AB F0               [24]  531 	movx	@dptr,a
      0038AC EB               [12]  532 	mov	a,r3
      0038AD A3               [24]  533 	inc	dptr
      0038AE F0               [24]  534 	movx	@dptr,a
      0038AF EC               [12]  535 	mov	a,r4
      0038B0 A3               [24]  536 	inc	dptr
      0038B1 F0               [24]  537 	movx	@dptr,a
                                    538 ;	src/linked_list.c:49: prev->next = to_free->next;
      0038B2 74 08            [12]  539 	mov	a,#0x08
      0038B4 2A               [12]  540 	add	a,r2
      0038B5 FA               [12]  541 	mov	r2,a
      0038B6 E4               [12]  542 	clr	a
      0038B7 3B               [12]  543 	addc	a,r3
      0038B8 FB               [12]  544 	mov	r3,a
      0038B9 8A 82            [24]  545 	mov	dpl,r2
      0038BB 8B 83            [24]  546 	mov	dph,r3
      0038BD 8C F0            [24]  547 	mov	b,r4
      0038BF 12 49 DF         [24]  548 	lcall	__gptrget
      0038C2 FA               [12]  549 	mov	r2,a
      0038C3 A3               [24]  550 	inc	dptr
      0038C4 12 49 DF         [24]  551 	lcall	__gptrget
      0038C7 FB               [12]  552 	mov	r3,a
      0038C8 A3               [24]  553 	inc	dptr
      0038C9 12 49 DF         [24]  554 	lcall	__gptrget
      0038CC FC               [12]  555 	mov	r4,a
      0038CD 8D 82            [24]  556 	mov	dpl,r5
      0038CF 8E 83            [24]  557 	mov	dph,r6
      0038D1 8F F0            [24]  558 	mov	b,r7
      0038D3 EA               [12]  559 	mov	a,r2
      0038D4 12 3D 85         [24]  560 	lcall	__gptrput
      0038D7 A3               [24]  561 	inc	dptr
      0038D8 EB               [12]  562 	mov	a,r3
      0038D9 12 3D 85         [24]  563 	lcall	__gptrput
      0038DC A3               [24]  564 	inc	dptr
      0038DD EC               [12]  565 	mov	a,r4
      0038DE 12 3D 85         [24]  566 	lcall	__gptrput
      0038E1                        567 00113$:
                                    568 ;	src/linked_list.c:52: if (to_free == NULL) return false; 
      0038E1 90 20 4F         [24]  569 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      0038E4 E0               [24]  570 	movx	a,@dptr
      0038E5 FE               [12]  571 	mov	r6,a
      0038E6 A3               [24]  572 	inc	dptr
      0038E7 E0               [24]  573 	movx	a,@dptr
      0038E8 FD               [12]  574 	mov	r5,a
      0038E9 A3               [24]  575 	inc	dptr
      0038EA E0               [24]  576 	movx	a,@dptr
      0038EB FF               [12]  577 	mov	r7,a
      0038EC 90 20 4F         [24]  578 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      0038EF E0               [24]  579 	movx	a,@dptr
      0038F0 F5 F0            [12]  580 	mov	b,a
      0038F2 A3               [24]  581 	inc	dptr
      0038F3 E0               [24]  582 	movx	a,@dptr
      0038F4 45 F0            [12]  583 	orl	a,b
      0038F6 70 03            [24]  584 	jnz	00115$
      0038F8 F5 82            [12]  585 	mov	dpl,a
      0038FA 22               [24]  586 	ret
      0038FB                        587 00115$:
                                    588 ;	src/linked_list.c:53: if (to_free->buffer != NULL) 
      0038FB 8E 82            [24]  589 	mov	dpl,r6
      0038FD 8D 83            [24]  590 	mov	dph,r5
      0038FF 8F F0            [24]  591 	mov	b,r7
      003901 12 49 DF         [24]  592 	lcall	__gptrget
      003904 FE               [12]  593 	mov	r6,a
      003905 A3               [24]  594 	inc	dptr
      003906 12 49 DF         [24]  595 	lcall	__gptrget
      003909 FF               [12]  596 	mov	r7,a
      00390A 4E               [12]  597 	orl	a,r6
      00390B 60 0B            [24]  598 	jz	00117$
                                    599 ;	src/linked_list.c:55: free(to_free->buffer);
      00390D 7D 00            [12]  600 	mov	r5,#0x00
      00390F 8E 82            [24]  601 	mov	dpl,r6
      003911 8F 83            [24]  602 	mov	dph,r7
      003913 8D F0            [24]  603 	mov	b,r5
      003915 12 3A 6E         [24]  604 	lcall	_free
      003918                        605 00117$:
                                    606 ;	src/linked_list.c:57: free(to_free);
      003918 90 20 4F         [24]  607 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      00391B E0               [24]  608 	movx	a,@dptr
      00391C FD               [12]  609 	mov	r5,a
      00391D A3               [24]  610 	inc	dptr
      00391E E0               [24]  611 	movx	a,@dptr
      00391F FE               [12]  612 	mov	r6,a
      003920 A3               [24]  613 	inc	dptr
      003921 E0               [24]  614 	movx	a,@dptr
      003922 FF               [12]  615 	mov	r7,a
      003923 8D 82            [24]  616 	mov	dpl,r5
      003925 8E 83            [24]  617 	mov	dph,r6
      003927 8F F0            [24]  618 	mov	b,r7
      003929 12 3A 6E         [24]  619 	lcall	_free
                                    620 ;	src/linked_list.c:58: return true; 
      00392C 75 82 01         [24]  621 	mov	dpl,#0x01
                                    622 ;	src/linked_list.c:59: }
      00392F 22               [24]  623 	ret
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
      003930                        635 _free_all_elems_from_list:
      003930 AF F0            [24]  636 	mov	r7,b
      003932 AE 83            [24]  637 	mov	r6,dph
      003934 E5 82            [12]  638 	mov	a,dpl
      003936 90 20 55         [24]  639 	mov	dptr,#_free_all_elems_from_list_list_65536_57
      003939 F0               [24]  640 	movx	@dptr,a
      00393A EE               [12]  641 	mov	a,r6
      00393B A3               [24]  642 	inc	dptr
      00393C F0               [24]  643 	movx	@dptr,a
      00393D EF               [12]  644 	mov	a,r7
      00393E A3               [24]  645 	inc	dptr
      00393F F0               [24]  646 	movx	@dptr,a
                                    647 ;	src/linked_list.c:63: buffer_t *buffer_to_free = list->head;
      003940 90 20 55         [24]  648 	mov	dptr,#_free_all_elems_from_list_list_65536_57
      003943 E0               [24]  649 	movx	a,@dptr
      003944 FD               [12]  650 	mov	r5,a
      003945 A3               [24]  651 	inc	dptr
      003946 E0               [24]  652 	movx	a,@dptr
      003947 FE               [12]  653 	mov	r6,a
      003948 A3               [24]  654 	inc	dptr
      003949 E0               [24]  655 	movx	a,@dptr
      00394A FF               [12]  656 	mov	r7,a
      00394B 8D 82            [24]  657 	mov	dpl,r5
      00394D 8E 83            [24]  658 	mov	dph,r6
      00394F 8F F0            [24]  659 	mov	b,r7
      003951 12 49 DF         [24]  660 	lcall	__gptrget
      003954 FA               [12]  661 	mov	r2,a
      003955 A3               [24]  662 	inc	dptr
      003956 12 49 DF         [24]  663 	lcall	__gptrget
      003959 FB               [12]  664 	mov	r3,a
      00395A A3               [24]  665 	inc	dptr
      00395B 12 49 DF         [24]  666 	lcall	__gptrget
      00395E FC               [12]  667 	mov	r4,a
      00395F 90 20 58         [24]  668 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_58
      003962 EA               [12]  669 	mov	a,r2
      003963 F0               [24]  670 	movx	@dptr,a
      003964 EB               [12]  671 	mov	a,r3
      003965 A3               [24]  672 	inc	dptr
      003966 F0               [24]  673 	movx	@dptr,a
      003967 EC               [12]  674 	mov	a,r4
      003968 A3               [24]  675 	inc	dptr
      003969 F0               [24]  676 	movx	@dptr,a
                                    677 ;	src/linked_list.c:64: while(list->head != NULL)
      00396A                        678 00103$:
      00396A 90 20 55         [24]  679 	mov	dptr,#_free_all_elems_from_list_list_65536_57
      00396D E0               [24]  680 	movx	a,@dptr
      00396E FA               [12]  681 	mov	r2,a
      00396F A3               [24]  682 	inc	dptr
      003970 E0               [24]  683 	movx	a,@dptr
      003971 FB               [12]  684 	mov	r3,a
      003972 A3               [24]  685 	inc	dptr
      003973 E0               [24]  686 	movx	a,@dptr
      003974 FC               [12]  687 	mov	r4,a
      003975 8A 82            [24]  688 	mov	dpl,r2
      003977 8B 83            [24]  689 	mov	dph,r3
      003979 8C F0            [24]  690 	mov	b,r4
      00397B 12 49 DF         [24]  691 	lcall	__gptrget
      00397E F5 0B            [12]  692 	mov	_free_all_elems_from_list_sloc0_1_0,a
      003980 A3               [24]  693 	inc	dptr
      003981 12 49 DF         [24]  694 	lcall	__gptrget
      003984 F5 0C            [12]  695 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      003986 A3               [24]  696 	inc	dptr
      003987 12 49 DF         [24]  697 	lcall	__gptrget
      00398A F5 0D            [12]  698 	mov	(_free_all_elems_from_list_sloc0_1_0 + 2),a
      00398C E5 0B            [12]  699 	mov	a,_free_all_elems_from_list_sloc0_1_0
      00398E 45 0C            [12]  700 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003990 70 01            [24]  701 	jnz	00120$
      003992 22               [24]  702 	ret
      003993                        703 00120$:
                                    704 ;	src/linked_list.c:66: list->head = list->head->next;
      003993 C0 05            [24]  705 	push	ar5
      003995 C0 06            [24]  706 	push	ar6
      003997 C0 07            [24]  707 	push	ar7
      003999 74 08            [12]  708 	mov	a,#0x08
      00399B 25 0B            [12]  709 	add	a,_free_all_elems_from_list_sloc0_1_0
      00399D F8               [12]  710 	mov	r0,a
      00399E E4               [12]  711 	clr	a
      00399F 35 0C            [12]  712 	addc	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0039A1 F9               [12]  713 	mov	r1,a
      0039A2 AF 0D            [24]  714 	mov	r7,(_free_all_elems_from_list_sloc0_1_0 + 2)
      0039A4 88 82            [24]  715 	mov	dpl,r0
      0039A6 89 83            [24]  716 	mov	dph,r1
      0039A8 8F F0            [24]  717 	mov	b,r7
      0039AA 12 49 DF         [24]  718 	lcall	__gptrget
      0039AD F8               [12]  719 	mov	r0,a
      0039AE A3               [24]  720 	inc	dptr
      0039AF 12 49 DF         [24]  721 	lcall	__gptrget
      0039B2 F9               [12]  722 	mov	r1,a
      0039B3 A3               [24]  723 	inc	dptr
      0039B4 12 49 DF         [24]  724 	lcall	__gptrget
      0039B7 FF               [12]  725 	mov	r7,a
      0039B8 8A 82            [24]  726 	mov	dpl,r2
      0039BA 8B 83            [24]  727 	mov	dph,r3
      0039BC 8C F0            [24]  728 	mov	b,r4
      0039BE E8               [12]  729 	mov	a,r0
      0039BF 12 3D 85         [24]  730 	lcall	__gptrput
      0039C2 A3               [24]  731 	inc	dptr
      0039C3 E9               [12]  732 	mov	a,r1
      0039C4 12 3D 85         [24]  733 	lcall	__gptrput
      0039C7 A3               [24]  734 	inc	dptr
      0039C8 EF               [12]  735 	mov	a,r7
      0039C9 12 3D 85         [24]  736 	lcall	__gptrput
                                    737 ;	src/linked_list.c:67: if (buffer_to_free->buffer != NULL)
      0039CC 90 20 58         [24]  738 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_58
      0039CF E0               [24]  739 	movx	a,@dptr
      0039D0 FD               [12]  740 	mov	r5,a
      0039D1 A3               [24]  741 	inc	dptr
      0039D2 E0               [24]  742 	movx	a,@dptr
      0039D3 FE               [12]  743 	mov	r6,a
      0039D4 A3               [24]  744 	inc	dptr
      0039D5 E0               [24]  745 	movx	a,@dptr
      0039D6 FF               [12]  746 	mov	r7,a
      0039D7 8D 82            [24]  747 	mov	dpl,r5
      0039D9 8E 83            [24]  748 	mov	dph,r6
      0039DB 8F F0            [24]  749 	mov	b,r7
      0039DD 12 49 DF         [24]  750 	lcall	__gptrget
      0039E0 F5 0B            [12]  751 	mov	_free_all_elems_from_list_sloc0_1_0,a
      0039E2 A3               [24]  752 	inc	dptr
      0039E3 12 49 DF         [24]  753 	lcall	__gptrget
      0039E6 F5 0C            [12]  754 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      0039E8 D0 07            [24]  755 	pop	ar7
      0039EA D0 06            [24]  756 	pop	ar6
      0039EC D0 05            [24]  757 	pop	ar5
      0039EE E5 0B            [12]  758 	mov	a,_free_all_elems_from_list_sloc0_1_0
      0039F0 45 0C            [12]  759 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0039F2 60 1B            [24]  760 	jz	00102$
                                    761 ;	src/linked_list.c:69: free(buffer_to_free->buffer);
      0039F4 AB 0B            [24]  762 	mov	r3,_free_all_elems_from_list_sloc0_1_0
      0039F6 AC 0C            [24]  763 	mov	r4,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0039F8 7A 00            [12]  764 	mov	r2,#0x00
      0039FA 8B 82            [24]  765 	mov	dpl,r3
      0039FC 8C 83            [24]  766 	mov	dph,r4
      0039FE 8A F0            [24]  767 	mov	b,r2
      003A00 C0 07            [24]  768 	push	ar7
      003A02 C0 06            [24]  769 	push	ar6
      003A04 C0 05            [24]  770 	push	ar5
      003A06 12 3A 6E         [24]  771 	lcall	_free
      003A09 D0 05            [24]  772 	pop	ar5
      003A0B D0 06            [24]  773 	pop	ar6
      003A0D D0 07            [24]  774 	pop	ar7
      003A0F                        775 00102$:
                                    776 ;	src/linked_list.c:71: free(buffer_to_free);
      003A0F 90 20 58         [24]  777 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_58
      003A12 E0               [24]  778 	movx	a,@dptr
      003A13 FA               [12]  779 	mov	r2,a
      003A14 A3               [24]  780 	inc	dptr
      003A15 E0               [24]  781 	movx	a,@dptr
      003A16 FB               [12]  782 	mov	r3,a
      003A17 A3               [24]  783 	inc	dptr
      003A18 E0               [24]  784 	movx	a,@dptr
      003A19 FC               [12]  785 	mov	r4,a
      003A1A 8A 82            [24]  786 	mov	dpl,r2
      003A1C 8B 83            [24]  787 	mov	dph,r3
      003A1E 8C F0            [24]  788 	mov	b,r4
      003A20 C0 07            [24]  789 	push	ar7
      003A22 C0 06            [24]  790 	push	ar6
      003A24 C0 05            [24]  791 	push	ar5
      003A26 12 3A 6E         [24]  792 	lcall	_free
      003A29 D0 05            [24]  793 	pop	ar5
      003A2B D0 06            [24]  794 	pop	ar6
      003A2D D0 07            [24]  795 	pop	ar7
                                    796 ;	src/linked_list.c:72: buffer_to_free = list->head;
      003A2F 8D 82            [24]  797 	mov	dpl,r5
      003A31 8E 83            [24]  798 	mov	dph,r6
      003A33 8F F0            [24]  799 	mov	b,r7
      003A35 12 49 DF         [24]  800 	lcall	__gptrget
      003A38 FA               [12]  801 	mov	r2,a
      003A39 A3               [24]  802 	inc	dptr
      003A3A 12 49 DF         [24]  803 	lcall	__gptrget
      003A3D FB               [12]  804 	mov	r3,a
      003A3E A3               [24]  805 	inc	dptr
      003A3F 12 49 DF         [24]  806 	lcall	__gptrget
      003A42 FC               [12]  807 	mov	r4,a
      003A43 90 20 58         [24]  808 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_58
      003A46 EA               [12]  809 	mov	a,r2
      003A47 F0               [24]  810 	movx	@dptr,a
      003A48 EB               [12]  811 	mov	a,r3
      003A49 A3               [24]  812 	inc	dptr
      003A4A F0               [24]  813 	movx	@dptr,a
      003A4B EC               [12]  814 	mov	a,r4
      003A4C A3               [24]  815 	inc	dptr
      003A4D F0               [24]  816 	movx	@dptr,a
                                    817 ;	src/linked_list.c:74: }
      003A4E 02 39 6A         [24]  818 	ljmp	00103$
                                    819 	.area CSEG    (CODE)
                                    820 	.area CONST   (CODE)
                                    821 	.area XINIT   (CODE)
                                    822 	.area CABS    (ABS,CODE)
