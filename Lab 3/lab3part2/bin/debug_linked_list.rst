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
      0036D5                        131 _append_to_buffer_list:
                           000007   132 	ar7 = 0x07
                           000006   133 	ar6 = 0x06
                           000005   134 	ar5 = 0x05
                           000004   135 	ar4 = 0x04
                           000003   136 	ar3 = 0x03
                           000002   137 	ar2 = 0x02
                           000001   138 	ar1 = 0x01
                           000000   139 	ar0 = 0x00
      0036D5 AF F0            [24]  140 	mov	r7,b
      0036D7 AE 83            [24]  141 	mov	r6,dph
      0036D9 E5 82            [12]  142 	mov	a,dpl
      0036DB 90 20 44         [24]  143 	mov	dptr,#_append_to_buffer_list_list_65536_45
      0036DE F0               [24]  144 	movx	@dptr,a
      0036DF EE               [12]  145 	mov	a,r6
      0036E0 A3               [24]  146 	inc	dptr
      0036E1 F0               [24]  147 	movx	@dptr,a
      0036E2 EF               [12]  148 	mov	a,r7
      0036E3 A3               [24]  149 	inc	dptr
      0036E4 F0               [24]  150 	movx	@dptr,a
                                    151 ;	src/linked_list.c:7: if (list->head == NULL) 
      0036E5 90 20 44         [24]  152 	mov	dptr,#_append_to_buffer_list_list_65536_45
      0036E8 E0               [24]  153 	movx	a,@dptr
      0036E9 F5 1B            [12]  154 	mov	_append_to_buffer_list_sloc0_1_0,a
      0036EB A3               [24]  155 	inc	dptr
      0036EC E0               [24]  156 	movx	a,@dptr
      0036ED F5 1C            [12]  157 	mov	(_append_to_buffer_list_sloc0_1_0 + 1),a
      0036EF A3               [24]  158 	inc	dptr
      0036F0 E0               [24]  159 	movx	a,@dptr
      0036F1 F5 1D            [12]  160 	mov	(_append_to_buffer_list_sloc0_1_0 + 2),a
      0036F3 85 1B 82         [24]  161 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      0036F6 85 1C 83         [24]  162 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      0036F9 85 1D F0         [24]  163 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      0036FC 12 4A 1C         [24]  164 	lcall	__gptrget
      0036FF FA               [12]  165 	mov	r2,a
      003700 A3               [24]  166 	inc	dptr
      003701 12 4A 1C         [24]  167 	lcall	__gptrget
      003704 FB               [12]  168 	mov	r3,a
      003705 A3               [24]  169 	inc	dptr
      003706 12 4A 1C         [24]  170 	lcall	__gptrget
      003709 FC               [12]  171 	mov	r4,a
      00370A EA               [12]  172 	mov	a,r2
      00370B 4B               [12]  173 	orl	a,r3
      00370C 70 24            [24]  174 	jnz	00105$
                                    175 ;	src/linked_list.c:9: list->head = buffer; 
      00370E 90 20 41         [24]  176 	mov	dptr,#_append_to_buffer_list_PARM_2
      003711 E0               [24]  177 	movx	a,@dptr
      003712 F8               [12]  178 	mov	r0,a
      003713 A3               [24]  179 	inc	dptr
      003714 E0               [24]  180 	movx	a,@dptr
      003715 F9               [12]  181 	mov	r1,a
      003716 A3               [24]  182 	inc	dptr
      003717 E0               [24]  183 	movx	a,@dptr
      003718 FF               [12]  184 	mov	r7,a
      003719 85 1B 82         [24]  185 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      00371C 85 1C 83         [24]  186 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      00371F 85 1D F0         [24]  187 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      003722 E8               [12]  188 	mov	a,r0
      003723 12 3D C2         [24]  189 	lcall	__gptrput
      003726 A3               [24]  190 	inc	dptr
      003727 E9               [12]  191 	mov	a,r1
      003728 12 3D C2         [24]  192 	lcall	__gptrput
      00372B A3               [24]  193 	inc	dptr
      00372C EF               [12]  194 	mov	a,r7
      00372D 12 3D C2         [24]  195 	lcall	__gptrput
      003730 80 61            [24]  196 	sjmp	00106$
      003732                        197 00105$:
                                    198 ;	src/linked_list.c:13: buffer_t *tail = list->head;
      003732 90 20 47         [24]  199 	mov	dptr,#_append_to_buffer_list_tail_131072_48
      003735 EA               [12]  200 	mov	a,r2
      003736 F0               [24]  201 	movx	@dptr,a
      003737 EB               [12]  202 	mov	a,r3
      003738 A3               [24]  203 	inc	dptr
      003739 F0               [24]  204 	movx	@dptr,a
      00373A EC               [12]  205 	mov	a,r4
      00373B A3               [24]  206 	inc	dptr
      00373C F0               [24]  207 	movx	@dptr,a
                                    208 ;	src/linked_list.c:14: while(tail->next != NULL)
      00373D                        209 00101$:
      00373D 90 20 47         [24]  210 	mov	dptr,#_append_to_buffer_list_tail_131072_48
      003740 E0               [24]  211 	movx	a,@dptr
      003741 FD               [12]  212 	mov	r5,a
      003742 A3               [24]  213 	inc	dptr
      003743 E0               [24]  214 	movx	a,@dptr
      003744 FE               [12]  215 	mov	r6,a
      003745 A3               [24]  216 	inc	dptr
      003746 E0               [24]  217 	movx	a,@dptr
      003747 FF               [12]  218 	mov	r7,a
      003748 74 08            [12]  219 	mov	a,#0x08
      00374A 2D               [12]  220 	add	a,r5
      00374B FD               [12]  221 	mov	r5,a
      00374C E4               [12]  222 	clr	a
      00374D 3E               [12]  223 	addc	a,r6
      00374E FE               [12]  224 	mov	r6,a
      00374F 8D 82            [24]  225 	mov	dpl,r5
      003751 8E 83            [24]  226 	mov	dph,r6
      003753 8F F0            [24]  227 	mov	b,r7
      003755 12 4A 1C         [24]  228 	lcall	__gptrget
      003758 FA               [12]  229 	mov	r2,a
      003759 A3               [24]  230 	inc	dptr
      00375A 12 4A 1C         [24]  231 	lcall	__gptrget
      00375D FB               [12]  232 	mov	r3,a
      00375E A3               [24]  233 	inc	dptr
      00375F 12 4A 1C         [24]  234 	lcall	__gptrget
      003762 FC               [12]  235 	mov	r4,a
      003763 EA               [12]  236 	mov	a,r2
      003764 4B               [12]  237 	orl	a,r3
      003765 60 0D            [24]  238 	jz	00103$
                                    239 ;	src/linked_list.c:16: tail = tail->next;
      003767 90 20 47         [24]  240 	mov	dptr,#_append_to_buffer_list_tail_131072_48
      00376A EA               [12]  241 	mov	a,r2
      00376B F0               [24]  242 	movx	@dptr,a
      00376C EB               [12]  243 	mov	a,r3
      00376D A3               [24]  244 	inc	dptr
      00376E F0               [24]  245 	movx	@dptr,a
      00376F EC               [12]  246 	mov	a,r4
      003770 A3               [24]  247 	inc	dptr
      003771 F0               [24]  248 	movx	@dptr,a
      003772 80 C9            [24]  249 	sjmp	00101$
      003774                        250 00103$:
                                    251 ;	src/linked_list.c:18: tail->next = buffer;
      003774 90 20 41         [24]  252 	mov	dptr,#_append_to_buffer_list_PARM_2
      003777 E0               [24]  253 	movx	a,@dptr
      003778 FA               [12]  254 	mov	r2,a
      003779 A3               [24]  255 	inc	dptr
      00377A E0               [24]  256 	movx	a,@dptr
      00377B FB               [12]  257 	mov	r3,a
      00377C A3               [24]  258 	inc	dptr
      00377D E0               [24]  259 	movx	a,@dptr
      00377E FC               [12]  260 	mov	r4,a
      00377F 8D 82            [24]  261 	mov	dpl,r5
      003781 8E 83            [24]  262 	mov	dph,r6
      003783 8F F0            [24]  263 	mov	b,r7
      003785 EA               [12]  264 	mov	a,r2
      003786 12 3D C2         [24]  265 	lcall	__gptrput
      003789 A3               [24]  266 	inc	dptr
      00378A EB               [12]  267 	mov	a,r3
      00378B 12 3D C2         [24]  268 	lcall	__gptrput
      00378E A3               [24]  269 	inc	dptr
      00378F EC               [12]  270 	mov	a,r4
      003790 12 3D C2         [24]  271 	lcall	__gptrput
      003793                        272 00106$:
                                    273 ;	src/linked_list.c:20: buffer->next = NULL; 
      003793 90 20 41         [24]  274 	mov	dptr,#_append_to_buffer_list_PARM_2
      003796 E0               [24]  275 	movx	a,@dptr
      003797 FD               [12]  276 	mov	r5,a
      003798 A3               [24]  277 	inc	dptr
      003799 E0               [24]  278 	movx	a,@dptr
      00379A FE               [12]  279 	mov	r6,a
      00379B A3               [24]  280 	inc	dptr
      00379C E0               [24]  281 	movx	a,@dptr
      00379D FF               [12]  282 	mov	r7,a
      00379E 74 08            [12]  283 	mov	a,#0x08
      0037A0 2D               [12]  284 	add	a,r5
      0037A1 FD               [12]  285 	mov	r5,a
      0037A2 E4               [12]  286 	clr	a
      0037A3 3E               [12]  287 	addc	a,r6
      0037A4 FE               [12]  288 	mov	r6,a
      0037A5 8D 82            [24]  289 	mov	dpl,r5
      0037A7 8E 83            [24]  290 	mov	dph,r6
      0037A9 8F F0            [24]  291 	mov	b,r7
      0037AB E4               [12]  292 	clr	a
      0037AC 12 3D C2         [24]  293 	lcall	__gptrput
      0037AF A3               [24]  294 	inc	dptr
      0037B0 12 3D C2         [24]  295 	lcall	__gptrput
      0037B3 A3               [24]  296 	inc	dptr
      0037B4 12 3D C2         [24]  297 	lcall	__gptrput
                                    298 ;	src/linked_list.c:21: return true;
      0037B7 75 82 01         [24]  299 	mov	dpl,#0x01
                                    300 ;	src/linked_list.c:22: }
      0037BA 22               [24]  301 	ret
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
      0037BB                        315 _remove_from_buffer_list:
      0037BB AF F0            [24]  316 	mov	r7,b
      0037BD AE 83            [24]  317 	mov	r6,dph
      0037BF E5 82            [12]  318 	mov	a,dpl
      0037C1 90 20 4C         [24]  319 	mov	dptr,#_remove_from_buffer_list_list_65536_50
      0037C4 F0               [24]  320 	movx	@dptr,a
      0037C5 EE               [12]  321 	mov	a,r6
      0037C6 A3               [24]  322 	inc	dptr
      0037C7 F0               [24]  323 	movx	@dptr,a
      0037C8 EF               [12]  324 	mov	a,r7
      0037C9 A3               [24]  325 	inc	dptr
      0037CA F0               [24]  326 	movx	@dptr,a
                                    327 ;	src/linked_list.c:27: if (list == NULL) return false;
      0037CB 90 20 4C         [24]  328 	mov	dptr,#_remove_from_buffer_list_list_65536_50
      0037CE E0               [24]  329 	movx	a,@dptr
      0037CF F5 08            [12]  330 	mov	_remove_from_buffer_list_sloc0_1_0,a
      0037D1 A3               [24]  331 	inc	dptr
      0037D2 E0               [24]  332 	movx	a,@dptr
      0037D3 F5 09            [12]  333 	mov	(_remove_from_buffer_list_sloc0_1_0 + 1),a
      0037D5 A3               [24]  334 	inc	dptr
      0037D6 E0               [24]  335 	movx	a,@dptr
      0037D7 F5 0A            [12]  336 	mov	(_remove_from_buffer_list_sloc0_1_0 + 2),a
      0037D9 E5 08            [12]  337 	mov	a,_remove_from_buffer_list_sloc0_1_0
      0037DB 45 09            [12]  338 	orl	a,(_remove_from_buffer_list_sloc0_1_0 + 1)
      0037DD 70 03            [24]  339 	jnz	00102$
      0037DF F5 82            [12]  340 	mov	dpl,a
      0037E1 22               [24]  341 	ret
      0037E2                        342 00102$:
                                    343 ;	src/linked_list.c:28: if (list->head == NULL) return false;
      0037E2 85 08 82         [24]  344 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      0037E5 85 09 83         [24]  345 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      0037E8 85 0A F0         [24]  346 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      0037EB 12 4A 1C         [24]  347 	lcall	__gptrget
      0037EE FA               [12]  348 	mov	r2,a
      0037EF A3               [24]  349 	inc	dptr
      0037F0 12 4A 1C         [24]  350 	lcall	__gptrget
      0037F3 FB               [12]  351 	mov	r3,a
      0037F4 A3               [24]  352 	inc	dptr
      0037F5 12 4A 1C         [24]  353 	lcall	__gptrget
      0037F8 FC               [12]  354 	mov	r4,a
      0037F9 EA               [12]  355 	mov	a,r2
      0037FA 4B               [12]  356 	orl	a,r3
      0037FB 70 03            [24]  357 	jnz	00104$
      0037FD F5 82            [12]  358 	mov	dpl,a
      0037FF 22               [24]  359 	ret
      003800                        360 00104$:
                                    361 ;	src/linked_list.c:31: if (idx == 0)
      003800 90 20 4A         [24]  362 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003803 E0               [24]  363 	movx	a,@dptr
      003804 F8               [12]  364 	mov	r0,a
      003805 A3               [24]  365 	inc	dptr
      003806 E0               [24]  366 	movx	a,@dptr
      003807 F9               [12]  367 	mov	r1,a
      003808 90 20 4A         [24]  368 	mov	dptr,#_remove_from_buffer_list_PARM_2
      00380B E0               [24]  369 	movx	a,@dptr
      00380C F5 F0            [12]  370 	mov	b,a
      00380E A3               [24]  371 	inc	dptr
      00380F E0               [24]  372 	movx	a,@dptr
      003810 45 F0            [12]  373 	orl	a,b
      003812 70 42            [24]  374 	jnz	00112$
                                    375 ;	src/linked_list.c:34: to_free = list->head;
      003814 90 20 4F         [24]  376 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      003817 EA               [12]  377 	mov	a,r2
      003818 F0               [24]  378 	movx	@dptr,a
      003819 EB               [12]  379 	mov	a,r3
      00381A A3               [24]  380 	inc	dptr
      00381B F0               [24]  381 	movx	@dptr,a
      00381C EC               [12]  382 	mov	a,r4
      00381D A3               [24]  383 	inc	dptr
      00381E F0               [24]  384 	movx	@dptr,a
                                    385 ;	src/linked_list.c:35: list->head = list->head->next;  
      00381F 74 08            [12]  386 	mov	a,#0x08
      003821 2A               [12]  387 	add	a,r2
      003822 FD               [12]  388 	mov	r5,a
      003823 E4               [12]  389 	clr	a
      003824 3B               [12]  390 	addc	a,r3
      003825 FE               [12]  391 	mov	r6,a
      003826 8C 07            [24]  392 	mov	ar7,r4
      003828 8D 82            [24]  393 	mov	dpl,r5
      00382A 8E 83            [24]  394 	mov	dph,r6
      00382C 8F F0            [24]  395 	mov	b,r7
      00382E 12 4A 1C         [24]  396 	lcall	__gptrget
      003831 FD               [12]  397 	mov	r5,a
      003832 A3               [24]  398 	inc	dptr
      003833 12 4A 1C         [24]  399 	lcall	__gptrget
      003836 FE               [12]  400 	mov	r6,a
      003837 A3               [24]  401 	inc	dptr
      003838 12 4A 1C         [24]  402 	lcall	__gptrget
      00383B FF               [12]  403 	mov	r7,a
      00383C 85 08 82         [24]  404 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      00383F 85 09 83         [24]  405 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003842 85 0A F0         [24]  406 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      003845 ED               [12]  407 	mov	a,r5
      003846 12 3D C2         [24]  408 	lcall	__gptrput
      003849 A3               [24]  409 	inc	dptr
      00384A EE               [12]  410 	mov	a,r6
      00384B 12 3D C2         [24]  411 	lcall	__gptrput
      00384E A3               [24]  412 	inc	dptr
      00384F EF               [12]  413 	mov	a,r7
      003850 12 3D C2         [24]  414 	lcall	__gptrput
      003853 02 39 1E         [24]  415 	ljmp	00113$
      003856                        416 00112$:
                                    417 ;	src/linked_list.c:39: buffer_t *prev = list->head;
      003856 90 20 52         [24]  418 	mov	dptr,#_remove_from_buffer_list_prev_131073_54
      003859 EA               [12]  419 	mov	a,r2
      00385A F0               [24]  420 	movx	@dptr,a
      00385B EB               [12]  421 	mov	a,r3
      00385C A3               [24]  422 	inc	dptr
      00385D F0               [24]  423 	movx	@dptr,a
      00385E EC               [12]  424 	mov	a,r4
      00385F A3               [24]  425 	inc	dptr
      003860 F0               [24]  426 	movx	@dptr,a
                                    427 ;	src/linked_list.c:40: idx--;
      003861 18               [12]  428 	dec	r0
      003862 B8 FF 01         [24]  429 	cjne	r0,#0xff,00160$
      003865 19               [12]  430 	dec	r1
      003866                        431 00160$:
      003866 90 20 4A         [24]  432 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003869 E8               [12]  433 	mov	a,r0
      00386A F0               [24]  434 	movx	@dptr,a
      00386B E9               [12]  435 	mov	a,r1
      00386C A3               [24]  436 	inc	dptr
      00386D F0               [24]  437 	movx	@dptr,a
                                    438 ;	src/linked_list.c:41: while(idx > 0 && prev->next != NULL)
      00386E 90 20 4A         [24]  439 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003871 E0               [24]  440 	movx	a,@dptr
      003872 FE               [12]  441 	mov	r6,a
      003873 A3               [24]  442 	inc	dptr
      003874 E0               [24]  443 	movx	a,@dptr
      003875 FF               [12]  444 	mov	r7,a
      003876                        445 00106$:
      003876 EE               [12]  446 	mov	a,r6
      003877 4F               [12]  447 	orl	a,r7
      003878 60 3C            [24]  448 	jz	00108$
      00387A 90 20 52         [24]  449 	mov	dptr,#_remove_from_buffer_list_prev_131073_54
      00387D E0               [24]  450 	movx	a,@dptr
      00387E FB               [12]  451 	mov	r3,a
      00387F A3               [24]  452 	inc	dptr
      003880 E0               [24]  453 	movx	a,@dptr
      003881 FC               [12]  454 	mov	r4,a
      003882 A3               [24]  455 	inc	dptr
      003883 E0               [24]  456 	movx	a,@dptr
      003884 FD               [12]  457 	mov	r5,a
      003885 74 08            [12]  458 	mov	a,#0x08
      003887 2B               [12]  459 	add	a,r3
      003888 FB               [12]  460 	mov	r3,a
      003889 E4               [12]  461 	clr	a
      00388A 3C               [12]  462 	addc	a,r4
      00388B FC               [12]  463 	mov	r4,a
      00388C 8B 82            [24]  464 	mov	dpl,r3
      00388E 8C 83            [24]  465 	mov	dph,r4
      003890 8D F0            [24]  466 	mov	b,r5
      003892 12 4A 1C         [24]  467 	lcall	__gptrget
      003895 FB               [12]  468 	mov	r3,a
      003896 A3               [24]  469 	inc	dptr
      003897 12 4A 1C         [24]  470 	lcall	__gptrget
      00389A FC               [12]  471 	mov	r4,a
      00389B A3               [24]  472 	inc	dptr
      00389C 12 4A 1C         [24]  473 	lcall	__gptrget
      00389F FD               [12]  474 	mov	r5,a
      0038A0 EB               [12]  475 	mov	a,r3
      0038A1 4C               [12]  476 	orl	a,r4
      0038A2 60 12            [24]  477 	jz	00108$
                                    478 ;	src/linked_list.c:43: prev = prev->next;
      0038A4 90 20 52         [24]  479 	mov	dptr,#_remove_from_buffer_list_prev_131073_54
      0038A7 EB               [12]  480 	mov	a,r3
      0038A8 F0               [24]  481 	movx	@dptr,a
      0038A9 EC               [12]  482 	mov	a,r4
      0038AA A3               [24]  483 	inc	dptr
      0038AB F0               [24]  484 	movx	@dptr,a
      0038AC ED               [12]  485 	mov	a,r5
      0038AD A3               [24]  486 	inc	dptr
      0038AE F0               [24]  487 	movx	@dptr,a
                                    488 ;	src/linked_list.c:44: idx--;
      0038AF 1E               [12]  489 	dec	r6
      0038B0 BE FF 01         [24]  490 	cjne	r6,#0xff,00163$
      0038B3 1F               [12]  491 	dec	r7
      0038B4                        492 00163$:
      0038B4 80 C0            [24]  493 	sjmp	00106$
      0038B6                        494 00108$:
                                    495 ;	src/linked_list.c:47: if (idx != 0) return false;
      0038B6 EE               [12]  496 	mov	a,r6
      0038B7 4F               [12]  497 	orl	a,r7
      0038B8 60 04            [24]  498 	jz	00110$
      0038BA 75 82 00         [24]  499 	mov	dpl,#0x00
      0038BD 22               [24]  500 	ret
      0038BE                        501 00110$:
                                    502 ;	src/linked_list.c:48: to_free = prev->next;
      0038BE 90 20 52         [24]  503 	mov	dptr,#_remove_from_buffer_list_prev_131073_54
      0038C1 E0               [24]  504 	movx	a,@dptr
      0038C2 FD               [12]  505 	mov	r5,a
      0038C3 A3               [24]  506 	inc	dptr
      0038C4 E0               [24]  507 	movx	a,@dptr
      0038C5 FE               [12]  508 	mov	r6,a
      0038C6 A3               [24]  509 	inc	dptr
      0038C7 E0               [24]  510 	movx	a,@dptr
      0038C8 FF               [12]  511 	mov	r7,a
      0038C9 74 08            [12]  512 	mov	a,#0x08
      0038CB 2D               [12]  513 	add	a,r5
      0038CC FD               [12]  514 	mov	r5,a
      0038CD E4               [12]  515 	clr	a
      0038CE 3E               [12]  516 	addc	a,r6
      0038CF FE               [12]  517 	mov	r6,a
      0038D0 8D 82            [24]  518 	mov	dpl,r5
      0038D2 8E 83            [24]  519 	mov	dph,r6
      0038D4 8F F0            [24]  520 	mov	b,r7
      0038D6 12 4A 1C         [24]  521 	lcall	__gptrget
      0038D9 FA               [12]  522 	mov	r2,a
      0038DA A3               [24]  523 	inc	dptr
      0038DB 12 4A 1C         [24]  524 	lcall	__gptrget
      0038DE FB               [12]  525 	mov	r3,a
      0038DF A3               [24]  526 	inc	dptr
      0038E0 12 4A 1C         [24]  527 	lcall	__gptrget
      0038E3 FC               [12]  528 	mov	r4,a
      0038E4 90 20 4F         [24]  529 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      0038E7 EA               [12]  530 	mov	a,r2
      0038E8 F0               [24]  531 	movx	@dptr,a
      0038E9 EB               [12]  532 	mov	a,r3
      0038EA A3               [24]  533 	inc	dptr
      0038EB F0               [24]  534 	movx	@dptr,a
      0038EC EC               [12]  535 	mov	a,r4
      0038ED A3               [24]  536 	inc	dptr
      0038EE F0               [24]  537 	movx	@dptr,a
                                    538 ;	src/linked_list.c:49: prev->next = to_free->next;
      0038EF 74 08            [12]  539 	mov	a,#0x08
      0038F1 2A               [12]  540 	add	a,r2
      0038F2 FA               [12]  541 	mov	r2,a
      0038F3 E4               [12]  542 	clr	a
      0038F4 3B               [12]  543 	addc	a,r3
      0038F5 FB               [12]  544 	mov	r3,a
      0038F6 8A 82            [24]  545 	mov	dpl,r2
      0038F8 8B 83            [24]  546 	mov	dph,r3
      0038FA 8C F0            [24]  547 	mov	b,r4
      0038FC 12 4A 1C         [24]  548 	lcall	__gptrget
      0038FF FA               [12]  549 	mov	r2,a
      003900 A3               [24]  550 	inc	dptr
      003901 12 4A 1C         [24]  551 	lcall	__gptrget
      003904 FB               [12]  552 	mov	r3,a
      003905 A3               [24]  553 	inc	dptr
      003906 12 4A 1C         [24]  554 	lcall	__gptrget
      003909 FC               [12]  555 	mov	r4,a
      00390A 8D 82            [24]  556 	mov	dpl,r5
      00390C 8E 83            [24]  557 	mov	dph,r6
      00390E 8F F0            [24]  558 	mov	b,r7
      003910 EA               [12]  559 	mov	a,r2
      003911 12 3D C2         [24]  560 	lcall	__gptrput
      003914 A3               [24]  561 	inc	dptr
      003915 EB               [12]  562 	mov	a,r3
      003916 12 3D C2         [24]  563 	lcall	__gptrput
      003919 A3               [24]  564 	inc	dptr
      00391A EC               [12]  565 	mov	a,r4
      00391B 12 3D C2         [24]  566 	lcall	__gptrput
      00391E                        567 00113$:
                                    568 ;	src/linked_list.c:52: if (to_free == NULL) return false; 
      00391E 90 20 4F         [24]  569 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      003921 E0               [24]  570 	movx	a,@dptr
      003922 FE               [12]  571 	mov	r6,a
      003923 A3               [24]  572 	inc	dptr
      003924 E0               [24]  573 	movx	a,@dptr
      003925 FD               [12]  574 	mov	r5,a
      003926 A3               [24]  575 	inc	dptr
      003927 E0               [24]  576 	movx	a,@dptr
      003928 FF               [12]  577 	mov	r7,a
      003929 90 20 4F         [24]  578 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      00392C E0               [24]  579 	movx	a,@dptr
      00392D F5 F0            [12]  580 	mov	b,a
      00392F A3               [24]  581 	inc	dptr
      003930 E0               [24]  582 	movx	a,@dptr
      003931 45 F0            [12]  583 	orl	a,b
      003933 70 03            [24]  584 	jnz	00115$
      003935 F5 82            [12]  585 	mov	dpl,a
      003937 22               [24]  586 	ret
      003938                        587 00115$:
                                    588 ;	src/linked_list.c:53: if (to_free->buffer != NULL) 
      003938 8E 82            [24]  589 	mov	dpl,r6
      00393A 8D 83            [24]  590 	mov	dph,r5
      00393C 8F F0            [24]  591 	mov	b,r7
      00393E 12 4A 1C         [24]  592 	lcall	__gptrget
      003941 FE               [12]  593 	mov	r6,a
      003942 A3               [24]  594 	inc	dptr
      003943 12 4A 1C         [24]  595 	lcall	__gptrget
      003946 FF               [12]  596 	mov	r7,a
      003947 4E               [12]  597 	orl	a,r6
      003948 60 0B            [24]  598 	jz	00117$
                                    599 ;	src/linked_list.c:55: free(to_free->buffer);
      00394A 7D 00            [12]  600 	mov	r5,#0x00
      00394C 8E 82            [24]  601 	mov	dpl,r6
      00394E 8F 83            [24]  602 	mov	dph,r7
      003950 8D F0            [24]  603 	mov	b,r5
      003952 12 3A AB         [24]  604 	lcall	_free
      003955                        605 00117$:
                                    606 ;	src/linked_list.c:57: free(to_free);
      003955 90 20 4F         [24]  607 	mov	dptr,#_remove_from_buffer_list_to_free_65537_52
      003958 E0               [24]  608 	movx	a,@dptr
      003959 FD               [12]  609 	mov	r5,a
      00395A A3               [24]  610 	inc	dptr
      00395B E0               [24]  611 	movx	a,@dptr
      00395C FE               [12]  612 	mov	r6,a
      00395D A3               [24]  613 	inc	dptr
      00395E E0               [24]  614 	movx	a,@dptr
      00395F FF               [12]  615 	mov	r7,a
      003960 8D 82            [24]  616 	mov	dpl,r5
      003962 8E 83            [24]  617 	mov	dph,r6
      003964 8F F0            [24]  618 	mov	b,r7
      003966 12 3A AB         [24]  619 	lcall	_free
                                    620 ;	src/linked_list.c:58: return true; 
      003969 75 82 01         [24]  621 	mov	dpl,#0x01
                                    622 ;	src/linked_list.c:59: }
      00396C 22               [24]  623 	ret
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
      00396D                        635 _free_all_elems_from_list:
      00396D AF F0            [24]  636 	mov	r7,b
      00396F AE 83            [24]  637 	mov	r6,dph
      003971 E5 82            [12]  638 	mov	a,dpl
      003973 90 20 55         [24]  639 	mov	dptr,#_free_all_elems_from_list_list_65536_57
      003976 F0               [24]  640 	movx	@dptr,a
      003977 EE               [12]  641 	mov	a,r6
      003978 A3               [24]  642 	inc	dptr
      003979 F0               [24]  643 	movx	@dptr,a
      00397A EF               [12]  644 	mov	a,r7
      00397B A3               [24]  645 	inc	dptr
      00397C F0               [24]  646 	movx	@dptr,a
                                    647 ;	src/linked_list.c:63: buffer_t *buffer_to_free = list->head;
      00397D 90 20 55         [24]  648 	mov	dptr,#_free_all_elems_from_list_list_65536_57
      003980 E0               [24]  649 	movx	a,@dptr
      003981 FD               [12]  650 	mov	r5,a
      003982 A3               [24]  651 	inc	dptr
      003983 E0               [24]  652 	movx	a,@dptr
      003984 FE               [12]  653 	mov	r6,a
      003985 A3               [24]  654 	inc	dptr
      003986 E0               [24]  655 	movx	a,@dptr
      003987 FF               [12]  656 	mov	r7,a
      003988 8D 82            [24]  657 	mov	dpl,r5
      00398A 8E 83            [24]  658 	mov	dph,r6
      00398C 8F F0            [24]  659 	mov	b,r7
      00398E 12 4A 1C         [24]  660 	lcall	__gptrget
      003991 FA               [12]  661 	mov	r2,a
      003992 A3               [24]  662 	inc	dptr
      003993 12 4A 1C         [24]  663 	lcall	__gptrget
      003996 FB               [12]  664 	mov	r3,a
      003997 A3               [24]  665 	inc	dptr
      003998 12 4A 1C         [24]  666 	lcall	__gptrget
      00399B FC               [12]  667 	mov	r4,a
      00399C 90 20 58         [24]  668 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_58
      00399F EA               [12]  669 	mov	a,r2
      0039A0 F0               [24]  670 	movx	@dptr,a
      0039A1 EB               [12]  671 	mov	a,r3
      0039A2 A3               [24]  672 	inc	dptr
      0039A3 F0               [24]  673 	movx	@dptr,a
      0039A4 EC               [12]  674 	mov	a,r4
      0039A5 A3               [24]  675 	inc	dptr
      0039A6 F0               [24]  676 	movx	@dptr,a
                                    677 ;	src/linked_list.c:64: while(list->head != NULL)
      0039A7                        678 00103$:
      0039A7 90 20 55         [24]  679 	mov	dptr,#_free_all_elems_from_list_list_65536_57
      0039AA E0               [24]  680 	movx	a,@dptr
      0039AB FA               [12]  681 	mov	r2,a
      0039AC A3               [24]  682 	inc	dptr
      0039AD E0               [24]  683 	movx	a,@dptr
      0039AE FB               [12]  684 	mov	r3,a
      0039AF A3               [24]  685 	inc	dptr
      0039B0 E0               [24]  686 	movx	a,@dptr
      0039B1 FC               [12]  687 	mov	r4,a
      0039B2 8A 82            [24]  688 	mov	dpl,r2
      0039B4 8B 83            [24]  689 	mov	dph,r3
      0039B6 8C F0            [24]  690 	mov	b,r4
      0039B8 12 4A 1C         [24]  691 	lcall	__gptrget
      0039BB F5 0B            [12]  692 	mov	_free_all_elems_from_list_sloc0_1_0,a
      0039BD A3               [24]  693 	inc	dptr
      0039BE 12 4A 1C         [24]  694 	lcall	__gptrget
      0039C1 F5 0C            [12]  695 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      0039C3 A3               [24]  696 	inc	dptr
      0039C4 12 4A 1C         [24]  697 	lcall	__gptrget
      0039C7 F5 0D            [12]  698 	mov	(_free_all_elems_from_list_sloc0_1_0 + 2),a
      0039C9 E5 0B            [12]  699 	mov	a,_free_all_elems_from_list_sloc0_1_0
      0039CB 45 0C            [12]  700 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0039CD 70 01            [24]  701 	jnz	00120$
      0039CF 22               [24]  702 	ret
      0039D0                        703 00120$:
                                    704 ;	src/linked_list.c:66: list->head = list->head->next;
      0039D0 C0 05            [24]  705 	push	ar5
      0039D2 C0 06            [24]  706 	push	ar6
      0039D4 C0 07            [24]  707 	push	ar7
      0039D6 74 08            [12]  708 	mov	a,#0x08
      0039D8 25 0B            [12]  709 	add	a,_free_all_elems_from_list_sloc0_1_0
      0039DA F8               [12]  710 	mov	r0,a
      0039DB E4               [12]  711 	clr	a
      0039DC 35 0C            [12]  712 	addc	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      0039DE F9               [12]  713 	mov	r1,a
      0039DF AF 0D            [24]  714 	mov	r7,(_free_all_elems_from_list_sloc0_1_0 + 2)
      0039E1 88 82            [24]  715 	mov	dpl,r0
      0039E3 89 83            [24]  716 	mov	dph,r1
      0039E5 8F F0            [24]  717 	mov	b,r7
      0039E7 12 4A 1C         [24]  718 	lcall	__gptrget
      0039EA F8               [12]  719 	mov	r0,a
      0039EB A3               [24]  720 	inc	dptr
      0039EC 12 4A 1C         [24]  721 	lcall	__gptrget
      0039EF F9               [12]  722 	mov	r1,a
      0039F0 A3               [24]  723 	inc	dptr
      0039F1 12 4A 1C         [24]  724 	lcall	__gptrget
      0039F4 FF               [12]  725 	mov	r7,a
      0039F5 8A 82            [24]  726 	mov	dpl,r2
      0039F7 8B 83            [24]  727 	mov	dph,r3
      0039F9 8C F0            [24]  728 	mov	b,r4
      0039FB E8               [12]  729 	mov	a,r0
      0039FC 12 3D C2         [24]  730 	lcall	__gptrput
      0039FF A3               [24]  731 	inc	dptr
      003A00 E9               [12]  732 	mov	a,r1
      003A01 12 3D C2         [24]  733 	lcall	__gptrput
      003A04 A3               [24]  734 	inc	dptr
      003A05 EF               [12]  735 	mov	a,r7
      003A06 12 3D C2         [24]  736 	lcall	__gptrput
                                    737 ;	src/linked_list.c:67: if (buffer_to_free->buffer != NULL)
      003A09 90 20 58         [24]  738 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_58
      003A0C E0               [24]  739 	movx	a,@dptr
      003A0D FD               [12]  740 	mov	r5,a
      003A0E A3               [24]  741 	inc	dptr
      003A0F E0               [24]  742 	movx	a,@dptr
      003A10 FE               [12]  743 	mov	r6,a
      003A11 A3               [24]  744 	inc	dptr
      003A12 E0               [24]  745 	movx	a,@dptr
      003A13 FF               [12]  746 	mov	r7,a
      003A14 8D 82            [24]  747 	mov	dpl,r5
      003A16 8E 83            [24]  748 	mov	dph,r6
      003A18 8F F0            [24]  749 	mov	b,r7
      003A1A 12 4A 1C         [24]  750 	lcall	__gptrget
      003A1D F5 0B            [12]  751 	mov	_free_all_elems_from_list_sloc0_1_0,a
      003A1F A3               [24]  752 	inc	dptr
      003A20 12 4A 1C         [24]  753 	lcall	__gptrget
      003A23 F5 0C            [12]  754 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      003A25 D0 07            [24]  755 	pop	ar7
      003A27 D0 06            [24]  756 	pop	ar6
      003A29 D0 05            [24]  757 	pop	ar5
      003A2B E5 0B            [12]  758 	mov	a,_free_all_elems_from_list_sloc0_1_0
      003A2D 45 0C            [12]  759 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003A2F 60 1B            [24]  760 	jz	00102$
                                    761 ;	src/linked_list.c:69: free(buffer_to_free->buffer);
      003A31 AB 0B            [24]  762 	mov	r3,_free_all_elems_from_list_sloc0_1_0
      003A33 AC 0C            [24]  763 	mov	r4,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003A35 7A 00            [12]  764 	mov	r2,#0x00
      003A37 8B 82            [24]  765 	mov	dpl,r3
      003A39 8C 83            [24]  766 	mov	dph,r4
      003A3B 8A F0            [24]  767 	mov	b,r2
      003A3D C0 07            [24]  768 	push	ar7
      003A3F C0 06            [24]  769 	push	ar6
      003A41 C0 05            [24]  770 	push	ar5
      003A43 12 3A AB         [24]  771 	lcall	_free
      003A46 D0 05            [24]  772 	pop	ar5
      003A48 D0 06            [24]  773 	pop	ar6
      003A4A D0 07            [24]  774 	pop	ar7
      003A4C                        775 00102$:
                                    776 ;	src/linked_list.c:71: free(buffer_to_free);
      003A4C 90 20 58         [24]  777 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_58
      003A4F E0               [24]  778 	movx	a,@dptr
      003A50 FA               [12]  779 	mov	r2,a
      003A51 A3               [24]  780 	inc	dptr
      003A52 E0               [24]  781 	movx	a,@dptr
      003A53 FB               [12]  782 	mov	r3,a
      003A54 A3               [24]  783 	inc	dptr
      003A55 E0               [24]  784 	movx	a,@dptr
      003A56 FC               [12]  785 	mov	r4,a
      003A57 8A 82            [24]  786 	mov	dpl,r2
      003A59 8B 83            [24]  787 	mov	dph,r3
      003A5B 8C F0            [24]  788 	mov	b,r4
      003A5D C0 07            [24]  789 	push	ar7
      003A5F C0 06            [24]  790 	push	ar6
      003A61 C0 05            [24]  791 	push	ar5
      003A63 12 3A AB         [24]  792 	lcall	_free
      003A66 D0 05            [24]  793 	pop	ar5
      003A68 D0 06            [24]  794 	pop	ar6
      003A6A D0 07            [24]  795 	pop	ar7
                                    796 ;	src/linked_list.c:72: buffer_to_free = list->head;
      003A6C 8D 82            [24]  797 	mov	dpl,r5
      003A6E 8E 83            [24]  798 	mov	dph,r6
      003A70 8F F0            [24]  799 	mov	b,r7
      003A72 12 4A 1C         [24]  800 	lcall	__gptrget
      003A75 FA               [12]  801 	mov	r2,a
      003A76 A3               [24]  802 	inc	dptr
      003A77 12 4A 1C         [24]  803 	lcall	__gptrget
      003A7A FB               [12]  804 	mov	r3,a
      003A7B A3               [24]  805 	inc	dptr
      003A7C 12 4A 1C         [24]  806 	lcall	__gptrget
      003A7F FC               [12]  807 	mov	r4,a
      003A80 90 20 58         [24]  808 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_58
      003A83 EA               [12]  809 	mov	a,r2
      003A84 F0               [24]  810 	movx	@dptr,a
      003A85 EB               [12]  811 	mov	a,r3
      003A86 A3               [24]  812 	inc	dptr
      003A87 F0               [24]  813 	movx	@dptr,a
      003A88 EC               [12]  814 	mov	a,r4
      003A89 A3               [24]  815 	inc	dptr
      003A8A F0               [24]  816 	movx	@dptr,a
                                    817 ;	src/linked_list.c:74: }
      003A8B 02 39 A7         [24]  818 	ljmp	00103$
                                    819 	.area CSEG    (CODE)
                                    820 	.area CONST   (CODE)
                                    821 	.area XINIT   (CODE)
                                    822 	.area CABS    (ABS,CODE)
