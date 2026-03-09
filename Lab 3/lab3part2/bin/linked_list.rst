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
      00204A                         70 _append_to_buffer_list_PARM_2:
      00204A                         71 	.ds 3
      00204D                         72 _append_to_buffer_list_list_65536_47:
      00204D                         73 	.ds 3
      002050                         74 _append_to_buffer_list_tail_131072_50:
      002050                         75 	.ds 3
      002053                         76 _remove_from_buffer_list_PARM_2:
      002053                         77 	.ds 2
      002055                         78 _remove_from_buffer_list_list_65536_52:
      002055                         79 	.ds 3
      002058                         80 _remove_from_buffer_list_to_free_65537_54:
      002058                         81 	.ds 3
      00205B                         82 _remove_from_buffer_list_prev_131073_56:
      00205B                         83 	.ds 3
      00205E                         84 _free_all_elems_from_list_list_65536_59:
      00205E                         85 	.ds 3
      002061                         86 _free_all_elems_from_list_buffer_to_free_65536_60:
      002061                         87 	.ds 3
      002064                         88 _ll_length_list_65536_63:
      002064                         89 	.ds 3
      002067                         90 _ll_length_size_65536_64:
      002067                         91 	.ds 2
      002069                         92 _ll_length_curr_65536_64:
      002069                         93 	.ds 3
      00206C                         94 _ll_get_elem_PARM_2:
      00206C                         95 	.ds 2
      00206E                         96 _ll_get_elem_list_65536_66:
      00206E                         97 	.ds 3
      002071                         98 _ll_get_elem_curr_65536_67:
      002071                         99 	.ds 3
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
                                    142 ;	src/linked_list.c:5: bool append_to_buffer_list(buffer_list_t *list, buffer_t *buffer)
                                    143 ;	-----------------------------------------
                                    144 ;	 function append_to_buffer_list
                                    145 ;	-----------------------------------------
      003B14                        146 _append_to_buffer_list:
                           000007   147 	ar7 = 0x07
                           000006   148 	ar6 = 0x06
                           000005   149 	ar5 = 0x05
                           000004   150 	ar4 = 0x04
                           000003   151 	ar3 = 0x03
                           000002   152 	ar2 = 0x02
                           000001   153 	ar1 = 0x01
                           000000   154 	ar0 = 0x00
      003B14 AF F0            [24]  155 	mov	r7,b
      003B16 AE 83            [24]  156 	mov	r6,dph
      003B18 E5 82            [12]  157 	mov	a,dpl
      003B1A 90 20 4D         [24]  158 	mov	dptr,#_append_to_buffer_list_list_65536_47
      003B1D F0               [24]  159 	movx	@dptr,a
      003B1E EE               [12]  160 	mov	a,r6
      003B1F A3               [24]  161 	inc	dptr
      003B20 F0               [24]  162 	movx	@dptr,a
      003B21 EF               [12]  163 	mov	a,r7
      003B22 A3               [24]  164 	inc	dptr
      003B23 F0               [24]  165 	movx	@dptr,a
                                    166 ;	src/linked_list.c:7: if (list->head == NULL) 
      003B24 90 20 4D         [24]  167 	mov	dptr,#_append_to_buffer_list_list_65536_47
      003B27 E0               [24]  168 	movx	a,@dptr
      003B28 F5 1B            [12]  169 	mov	_append_to_buffer_list_sloc0_1_0,a
      003B2A A3               [24]  170 	inc	dptr
      003B2B E0               [24]  171 	movx	a,@dptr
      003B2C F5 1C            [12]  172 	mov	(_append_to_buffer_list_sloc0_1_0 + 1),a
      003B2E A3               [24]  173 	inc	dptr
      003B2F E0               [24]  174 	movx	a,@dptr
      003B30 F5 1D            [12]  175 	mov	(_append_to_buffer_list_sloc0_1_0 + 2),a
      003B32 85 1B 82         [24]  176 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      003B35 85 1C 83         [24]  177 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      003B38 85 1D F0         [24]  178 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      003B3B 12 4F 82         [24]  179 	lcall	__gptrget
      003B3E FA               [12]  180 	mov	r2,a
      003B3F A3               [24]  181 	inc	dptr
      003B40 12 4F 82         [24]  182 	lcall	__gptrget
      003B43 FB               [12]  183 	mov	r3,a
      003B44 A3               [24]  184 	inc	dptr
      003B45 12 4F 82         [24]  185 	lcall	__gptrget
      003B48 FC               [12]  186 	mov	r4,a
      003B49 EA               [12]  187 	mov	a,r2
      003B4A 4B               [12]  188 	orl	a,r3
      003B4B 70 24            [24]  189 	jnz	00105$
                                    190 ;	src/linked_list.c:9: list->head = buffer; 
      003B4D 90 20 4A         [24]  191 	mov	dptr,#_append_to_buffer_list_PARM_2
      003B50 E0               [24]  192 	movx	a,@dptr
      003B51 F8               [12]  193 	mov	r0,a
      003B52 A3               [24]  194 	inc	dptr
      003B53 E0               [24]  195 	movx	a,@dptr
      003B54 F9               [12]  196 	mov	r1,a
      003B55 A3               [24]  197 	inc	dptr
      003B56 E0               [24]  198 	movx	a,@dptr
      003B57 FF               [12]  199 	mov	r7,a
      003B58 85 1B 82         [24]  200 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      003B5B 85 1C 83         [24]  201 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      003B5E 85 1D F0         [24]  202 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      003B61 E8               [12]  203 	mov	a,r0
      003B62 12 43 28         [24]  204 	lcall	__gptrput
      003B65 A3               [24]  205 	inc	dptr
      003B66 E9               [12]  206 	mov	a,r1
      003B67 12 43 28         [24]  207 	lcall	__gptrput
      003B6A A3               [24]  208 	inc	dptr
      003B6B EF               [12]  209 	mov	a,r7
      003B6C 12 43 28         [24]  210 	lcall	__gptrput
      003B6F 80 61            [24]  211 	sjmp	00106$
      003B71                        212 00105$:
                                    213 ;	src/linked_list.c:13: buffer_t *tail = list->head;
      003B71 90 20 50         [24]  214 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      003B74 EA               [12]  215 	mov	a,r2
      003B75 F0               [24]  216 	movx	@dptr,a
      003B76 EB               [12]  217 	mov	a,r3
      003B77 A3               [24]  218 	inc	dptr
      003B78 F0               [24]  219 	movx	@dptr,a
      003B79 EC               [12]  220 	mov	a,r4
      003B7A A3               [24]  221 	inc	dptr
      003B7B F0               [24]  222 	movx	@dptr,a
                                    223 ;	src/linked_list.c:14: while(tail->next != NULL)
      003B7C                        224 00101$:
      003B7C 90 20 50         [24]  225 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      003B7F E0               [24]  226 	movx	a,@dptr
      003B80 FD               [12]  227 	mov	r5,a
      003B81 A3               [24]  228 	inc	dptr
      003B82 E0               [24]  229 	movx	a,@dptr
      003B83 FE               [12]  230 	mov	r6,a
      003B84 A3               [24]  231 	inc	dptr
      003B85 E0               [24]  232 	movx	a,@dptr
      003B86 FF               [12]  233 	mov	r7,a
      003B87 74 08            [12]  234 	mov	a,#0x08
      003B89 2D               [12]  235 	add	a,r5
      003B8A FD               [12]  236 	mov	r5,a
      003B8B E4               [12]  237 	clr	a
      003B8C 3E               [12]  238 	addc	a,r6
      003B8D FE               [12]  239 	mov	r6,a
      003B8E 8D 82            [24]  240 	mov	dpl,r5
      003B90 8E 83            [24]  241 	mov	dph,r6
      003B92 8F F0            [24]  242 	mov	b,r7
      003B94 12 4F 82         [24]  243 	lcall	__gptrget
      003B97 FA               [12]  244 	mov	r2,a
      003B98 A3               [24]  245 	inc	dptr
      003B99 12 4F 82         [24]  246 	lcall	__gptrget
      003B9C FB               [12]  247 	mov	r3,a
      003B9D A3               [24]  248 	inc	dptr
      003B9E 12 4F 82         [24]  249 	lcall	__gptrget
      003BA1 FC               [12]  250 	mov	r4,a
      003BA2 EA               [12]  251 	mov	a,r2
      003BA3 4B               [12]  252 	orl	a,r3
      003BA4 60 0D            [24]  253 	jz	00103$
                                    254 ;	src/linked_list.c:16: tail = tail->next;
      003BA6 90 20 50         [24]  255 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      003BA9 EA               [12]  256 	mov	a,r2
      003BAA F0               [24]  257 	movx	@dptr,a
      003BAB EB               [12]  258 	mov	a,r3
      003BAC A3               [24]  259 	inc	dptr
      003BAD F0               [24]  260 	movx	@dptr,a
      003BAE EC               [12]  261 	mov	a,r4
      003BAF A3               [24]  262 	inc	dptr
      003BB0 F0               [24]  263 	movx	@dptr,a
      003BB1 80 C9            [24]  264 	sjmp	00101$
      003BB3                        265 00103$:
                                    266 ;	src/linked_list.c:18: tail->next = buffer;
      003BB3 90 20 4A         [24]  267 	mov	dptr,#_append_to_buffer_list_PARM_2
      003BB6 E0               [24]  268 	movx	a,@dptr
      003BB7 FA               [12]  269 	mov	r2,a
      003BB8 A3               [24]  270 	inc	dptr
      003BB9 E0               [24]  271 	movx	a,@dptr
      003BBA FB               [12]  272 	mov	r3,a
      003BBB A3               [24]  273 	inc	dptr
      003BBC E0               [24]  274 	movx	a,@dptr
      003BBD FC               [12]  275 	mov	r4,a
      003BBE 8D 82            [24]  276 	mov	dpl,r5
      003BC0 8E 83            [24]  277 	mov	dph,r6
      003BC2 8F F0            [24]  278 	mov	b,r7
      003BC4 EA               [12]  279 	mov	a,r2
      003BC5 12 43 28         [24]  280 	lcall	__gptrput
      003BC8 A3               [24]  281 	inc	dptr
      003BC9 EB               [12]  282 	mov	a,r3
      003BCA 12 43 28         [24]  283 	lcall	__gptrput
      003BCD A3               [24]  284 	inc	dptr
      003BCE EC               [12]  285 	mov	a,r4
      003BCF 12 43 28         [24]  286 	lcall	__gptrput
      003BD2                        287 00106$:
                                    288 ;	src/linked_list.c:20: buffer->next = NULL; 
      003BD2 90 20 4A         [24]  289 	mov	dptr,#_append_to_buffer_list_PARM_2
      003BD5 E0               [24]  290 	movx	a,@dptr
      003BD6 FD               [12]  291 	mov	r5,a
      003BD7 A3               [24]  292 	inc	dptr
      003BD8 E0               [24]  293 	movx	a,@dptr
      003BD9 FE               [12]  294 	mov	r6,a
      003BDA A3               [24]  295 	inc	dptr
      003BDB E0               [24]  296 	movx	a,@dptr
      003BDC FF               [12]  297 	mov	r7,a
      003BDD 74 08            [12]  298 	mov	a,#0x08
      003BDF 2D               [12]  299 	add	a,r5
      003BE0 FD               [12]  300 	mov	r5,a
      003BE1 E4               [12]  301 	clr	a
      003BE2 3E               [12]  302 	addc	a,r6
      003BE3 FE               [12]  303 	mov	r6,a
      003BE4 8D 82            [24]  304 	mov	dpl,r5
      003BE6 8E 83            [24]  305 	mov	dph,r6
      003BE8 8F F0            [24]  306 	mov	b,r7
      003BEA E4               [12]  307 	clr	a
      003BEB 12 43 28         [24]  308 	lcall	__gptrput
      003BEE A3               [24]  309 	inc	dptr
      003BEF 12 43 28         [24]  310 	lcall	__gptrput
      003BF2 A3               [24]  311 	inc	dptr
      003BF3 12 43 28         [24]  312 	lcall	__gptrput
                                    313 ;	src/linked_list.c:21: return true;
      003BF6 75 82 01         [24]  314 	mov	dpl,#0x01
                                    315 ;	src/linked_list.c:22: }
      003BF9 22               [24]  316 	ret
                                    317 ;------------------------------------------------------------
                                    318 ;Allocation info for local variables in function 'remove_from_buffer_list'
                                    319 ;------------------------------------------------------------
                                    320 ;sloc0                     Allocated with name '_remove_from_buffer_list_sloc0_1_0'
                                    321 ;idx                       Allocated with name '_remove_from_buffer_list_PARM_2'
                                    322 ;list                      Allocated with name '_remove_from_buffer_list_list_65536_52'
                                    323 ;to_free                   Allocated with name '_remove_from_buffer_list_to_free_65537_54'
                                    324 ;prev                      Allocated with name '_remove_from_buffer_list_prev_131073_56'
                                    325 ;------------------------------------------------------------
                                    326 ;	src/linked_list.c:25: bool remove_from_buffer_list(buffer_list_t *list, size_t idx)
                                    327 ;	-----------------------------------------
                                    328 ;	 function remove_from_buffer_list
                                    329 ;	-----------------------------------------
      003BFA                        330 _remove_from_buffer_list:
      003BFA AF F0            [24]  331 	mov	r7,b
      003BFC AE 83            [24]  332 	mov	r6,dph
      003BFE E5 82            [12]  333 	mov	a,dpl
      003C00 90 20 55         [24]  334 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      003C03 F0               [24]  335 	movx	@dptr,a
      003C04 EE               [12]  336 	mov	a,r6
      003C05 A3               [24]  337 	inc	dptr
      003C06 F0               [24]  338 	movx	@dptr,a
      003C07 EF               [12]  339 	mov	a,r7
      003C08 A3               [24]  340 	inc	dptr
      003C09 F0               [24]  341 	movx	@dptr,a
                                    342 ;	src/linked_list.c:27: if (list == NULL) return false;
      003C0A 90 20 55         [24]  343 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      003C0D E0               [24]  344 	movx	a,@dptr
      003C0E F5 08            [12]  345 	mov	_remove_from_buffer_list_sloc0_1_0,a
      003C10 A3               [24]  346 	inc	dptr
      003C11 E0               [24]  347 	movx	a,@dptr
      003C12 F5 09            [12]  348 	mov	(_remove_from_buffer_list_sloc0_1_0 + 1),a
      003C14 A3               [24]  349 	inc	dptr
      003C15 E0               [24]  350 	movx	a,@dptr
      003C16 F5 0A            [12]  351 	mov	(_remove_from_buffer_list_sloc0_1_0 + 2),a
      003C18 E5 08            [12]  352 	mov	a,_remove_from_buffer_list_sloc0_1_0
      003C1A 45 09            [12]  353 	orl	a,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003C1C 70 03            [24]  354 	jnz	00102$
      003C1E F5 82            [12]  355 	mov	dpl,a
      003C20 22               [24]  356 	ret
      003C21                        357 00102$:
                                    358 ;	src/linked_list.c:28: if (list->head == NULL) return false;
      003C21 85 08 82         [24]  359 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      003C24 85 09 83         [24]  360 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003C27 85 0A F0         [24]  361 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      003C2A 12 4F 82         [24]  362 	lcall	__gptrget
      003C2D FA               [12]  363 	mov	r2,a
      003C2E A3               [24]  364 	inc	dptr
      003C2F 12 4F 82         [24]  365 	lcall	__gptrget
      003C32 FB               [12]  366 	mov	r3,a
      003C33 A3               [24]  367 	inc	dptr
      003C34 12 4F 82         [24]  368 	lcall	__gptrget
      003C37 FC               [12]  369 	mov	r4,a
      003C38 EA               [12]  370 	mov	a,r2
      003C39 4B               [12]  371 	orl	a,r3
      003C3A 70 03            [24]  372 	jnz	00104$
      003C3C F5 82            [12]  373 	mov	dpl,a
      003C3E 22               [24]  374 	ret
      003C3F                        375 00104$:
                                    376 ;	src/linked_list.c:31: if (idx == 0)
      003C3F 90 20 53         [24]  377 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003C42 E0               [24]  378 	movx	a,@dptr
      003C43 F8               [12]  379 	mov	r0,a
      003C44 A3               [24]  380 	inc	dptr
      003C45 E0               [24]  381 	movx	a,@dptr
      003C46 F9               [12]  382 	mov	r1,a
      003C47 90 20 53         [24]  383 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003C4A E0               [24]  384 	movx	a,@dptr
      003C4B F5 F0            [12]  385 	mov	b,a
      003C4D A3               [24]  386 	inc	dptr
      003C4E E0               [24]  387 	movx	a,@dptr
      003C4F 45 F0            [12]  388 	orl	a,b
      003C51 70 42            [24]  389 	jnz	00112$
                                    390 ;	src/linked_list.c:34: to_free = list->head;
      003C53 90 20 58         [24]  391 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003C56 EA               [12]  392 	mov	a,r2
      003C57 F0               [24]  393 	movx	@dptr,a
      003C58 EB               [12]  394 	mov	a,r3
      003C59 A3               [24]  395 	inc	dptr
      003C5A F0               [24]  396 	movx	@dptr,a
      003C5B EC               [12]  397 	mov	a,r4
      003C5C A3               [24]  398 	inc	dptr
      003C5D F0               [24]  399 	movx	@dptr,a
                                    400 ;	src/linked_list.c:35: list->head = list->head->next;  
      003C5E 74 08            [12]  401 	mov	a,#0x08
      003C60 2A               [12]  402 	add	a,r2
      003C61 FD               [12]  403 	mov	r5,a
      003C62 E4               [12]  404 	clr	a
      003C63 3B               [12]  405 	addc	a,r3
      003C64 FE               [12]  406 	mov	r6,a
      003C65 8C 07            [24]  407 	mov	ar7,r4
      003C67 8D 82            [24]  408 	mov	dpl,r5
      003C69 8E 83            [24]  409 	mov	dph,r6
      003C6B 8F F0            [24]  410 	mov	b,r7
      003C6D 12 4F 82         [24]  411 	lcall	__gptrget
      003C70 FD               [12]  412 	mov	r5,a
      003C71 A3               [24]  413 	inc	dptr
      003C72 12 4F 82         [24]  414 	lcall	__gptrget
      003C75 FE               [12]  415 	mov	r6,a
      003C76 A3               [24]  416 	inc	dptr
      003C77 12 4F 82         [24]  417 	lcall	__gptrget
      003C7A FF               [12]  418 	mov	r7,a
      003C7B 85 08 82         [24]  419 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      003C7E 85 09 83         [24]  420 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003C81 85 0A F0         [24]  421 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      003C84 ED               [12]  422 	mov	a,r5
      003C85 12 43 28         [24]  423 	lcall	__gptrput
      003C88 A3               [24]  424 	inc	dptr
      003C89 EE               [12]  425 	mov	a,r6
      003C8A 12 43 28         [24]  426 	lcall	__gptrput
      003C8D A3               [24]  427 	inc	dptr
      003C8E EF               [12]  428 	mov	a,r7
      003C8F 12 43 28         [24]  429 	lcall	__gptrput
      003C92 02 3D 5D         [24]  430 	ljmp	00113$
      003C95                        431 00112$:
                                    432 ;	src/linked_list.c:39: buffer_t *prev = list->head;
      003C95 90 20 5B         [24]  433 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      003C98 EA               [12]  434 	mov	a,r2
      003C99 F0               [24]  435 	movx	@dptr,a
      003C9A EB               [12]  436 	mov	a,r3
      003C9B A3               [24]  437 	inc	dptr
      003C9C F0               [24]  438 	movx	@dptr,a
      003C9D EC               [12]  439 	mov	a,r4
      003C9E A3               [24]  440 	inc	dptr
      003C9F F0               [24]  441 	movx	@dptr,a
                                    442 ;	src/linked_list.c:40: idx--;
      003CA0 18               [12]  443 	dec	r0
      003CA1 B8 FF 01         [24]  444 	cjne	r0,#0xff,00160$
      003CA4 19               [12]  445 	dec	r1
      003CA5                        446 00160$:
      003CA5 90 20 53         [24]  447 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003CA8 E8               [12]  448 	mov	a,r0
      003CA9 F0               [24]  449 	movx	@dptr,a
      003CAA E9               [12]  450 	mov	a,r1
      003CAB A3               [24]  451 	inc	dptr
      003CAC F0               [24]  452 	movx	@dptr,a
                                    453 ;	src/linked_list.c:41: while(idx > 0 && prev->next != NULL)
      003CAD 90 20 53         [24]  454 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003CB0 E0               [24]  455 	movx	a,@dptr
      003CB1 FE               [12]  456 	mov	r6,a
      003CB2 A3               [24]  457 	inc	dptr
      003CB3 E0               [24]  458 	movx	a,@dptr
      003CB4 FF               [12]  459 	mov	r7,a
      003CB5                        460 00106$:
      003CB5 EE               [12]  461 	mov	a,r6
      003CB6 4F               [12]  462 	orl	a,r7
      003CB7 60 3C            [24]  463 	jz	00108$
      003CB9 90 20 5B         [24]  464 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      003CBC E0               [24]  465 	movx	a,@dptr
      003CBD FB               [12]  466 	mov	r3,a
      003CBE A3               [24]  467 	inc	dptr
      003CBF E0               [24]  468 	movx	a,@dptr
      003CC0 FC               [12]  469 	mov	r4,a
      003CC1 A3               [24]  470 	inc	dptr
      003CC2 E0               [24]  471 	movx	a,@dptr
      003CC3 FD               [12]  472 	mov	r5,a
      003CC4 74 08            [12]  473 	mov	a,#0x08
      003CC6 2B               [12]  474 	add	a,r3
      003CC7 FB               [12]  475 	mov	r3,a
      003CC8 E4               [12]  476 	clr	a
      003CC9 3C               [12]  477 	addc	a,r4
      003CCA FC               [12]  478 	mov	r4,a
      003CCB 8B 82            [24]  479 	mov	dpl,r3
      003CCD 8C 83            [24]  480 	mov	dph,r4
      003CCF 8D F0            [24]  481 	mov	b,r5
      003CD1 12 4F 82         [24]  482 	lcall	__gptrget
      003CD4 FB               [12]  483 	mov	r3,a
      003CD5 A3               [24]  484 	inc	dptr
      003CD6 12 4F 82         [24]  485 	lcall	__gptrget
      003CD9 FC               [12]  486 	mov	r4,a
      003CDA A3               [24]  487 	inc	dptr
      003CDB 12 4F 82         [24]  488 	lcall	__gptrget
      003CDE FD               [12]  489 	mov	r5,a
      003CDF EB               [12]  490 	mov	a,r3
      003CE0 4C               [12]  491 	orl	a,r4
      003CE1 60 12            [24]  492 	jz	00108$
                                    493 ;	src/linked_list.c:43: prev = prev->next;
      003CE3 90 20 5B         [24]  494 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      003CE6 EB               [12]  495 	mov	a,r3
      003CE7 F0               [24]  496 	movx	@dptr,a
      003CE8 EC               [12]  497 	mov	a,r4
      003CE9 A3               [24]  498 	inc	dptr
      003CEA F0               [24]  499 	movx	@dptr,a
      003CEB ED               [12]  500 	mov	a,r5
      003CEC A3               [24]  501 	inc	dptr
      003CED F0               [24]  502 	movx	@dptr,a
                                    503 ;	src/linked_list.c:44: idx--;
      003CEE 1E               [12]  504 	dec	r6
      003CEF BE FF 01         [24]  505 	cjne	r6,#0xff,00163$
      003CF2 1F               [12]  506 	dec	r7
      003CF3                        507 00163$:
      003CF3 80 C0            [24]  508 	sjmp	00106$
      003CF5                        509 00108$:
                                    510 ;	src/linked_list.c:47: if (idx != 0) return false;
      003CF5 EE               [12]  511 	mov	a,r6
      003CF6 4F               [12]  512 	orl	a,r7
      003CF7 60 04            [24]  513 	jz	00110$
      003CF9 75 82 00         [24]  514 	mov	dpl,#0x00
      003CFC 22               [24]  515 	ret
      003CFD                        516 00110$:
                                    517 ;	src/linked_list.c:48: to_free = prev->next;
      003CFD 90 20 5B         [24]  518 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      003D00 E0               [24]  519 	movx	a,@dptr
      003D01 FD               [12]  520 	mov	r5,a
      003D02 A3               [24]  521 	inc	dptr
      003D03 E0               [24]  522 	movx	a,@dptr
      003D04 FE               [12]  523 	mov	r6,a
      003D05 A3               [24]  524 	inc	dptr
      003D06 E0               [24]  525 	movx	a,@dptr
      003D07 FF               [12]  526 	mov	r7,a
      003D08 74 08            [12]  527 	mov	a,#0x08
      003D0A 2D               [12]  528 	add	a,r5
      003D0B FD               [12]  529 	mov	r5,a
      003D0C E4               [12]  530 	clr	a
      003D0D 3E               [12]  531 	addc	a,r6
      003D0E FE               [12]  532 	mov	r6,a
      003D0F 8D 82            [24]  533 	mov	dpl,r5
      003D11 8E 83            [24]  534 	mov	dph,r6
      003D13 8F F0            [24]  535 	mov	b,r7
      003D15 12 4F 82         [24]  536 	lcall	__gptrget
      003D18 FA               [12]  537 	mov	r2,a
      003D19 A3               [24]  538 	inc	dptr
      003D1A 12 4F 82         [24]  539 	lcall	__gptrget
      003D1D FB               [12]  540 	mov	r3,a
      003D1E A3               [24]  541 	inc	dptr
      003D1F 12 4F 82         [24]  542 	lcall	__gptrget
      003D22 FC               [12]  543 	mov	r4,a
      003D23 90 20 58         [24]  544 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003D26 EA               [12]  545 	mov	a,r2
      003D27 F0               [24]  546 	movx	@dptr,a
      003D28 EB               [12]  547 	mov	a,r3
      003D29 A3               [24]  548 	inc	dptr
      003D2A F0               [24]  549 	movx	@dptr,a
      003D2B EC               [12]  550 	mov	a,r4
      003D2C A3               [24]  551 	inc	dptr
      003D2D F0               [24]  552 	movx	@dptr,a
                                    553 ;	src/linked_list.c:49: prev->next = to_free->next;
      003D2E 74 08            [12]  554 	mov	a,#0x08
      003D30 2A               [12]  555 	add	a,r2
      003D31 FA               [12]  556 	mov	r2,a
      003D32 E4               [12]  557 	clr	a
      003D33 3B               [12]  558 	addc	a,r3
      003D34 FB               [12]  559 	mov	r3,a
      003D35 8A 82            [24]  560 	mov	dpl,r2
      003D37 8B 83            [24]  561 	mov	dph,r3
      003D39 8C F0            [24]  562 	mov	b,r4
      003D3B 12 4F 82         [24]  563 	lcall	__gptrget
      003D3E FA               [12]  564 	mov	r2,a
      003D3F A3               [24]  565 	inc	dptr
      003D40 12 4F 82         [24]  566 	lcall	__gptrget
      003D43 FB               [12]  567 	mov	r3,a
      003D44 A3               [24]  568 	inc	dptr
      003D45 12 4F 82         [24]  569 	lcall	__gptrget
      003D48 FC               [12]  570 	mov	r4,a
      003D49 8D 82            [24]  571 	mov	dpl,r5
      003D4B 8E 83            [24]  572 	mov	dph,r6
      003D4D 8F F0            [24]  573 	mov	b,r7
      003D4F EA               [12]  574 	mov	a,r2
      003D50 12 43 28         [24]  575 	lcall	__gptrput
      003D53 A3               [24]  576 	inc	dptr
      003D54 EB               [12]  577 	mov	a,r3
      003D55 12 43 28         [24]  578 	lcall	__gptrput
      003D58 A3               [24]  579 	inc	dptr
      003D59 EC               [12]  580 	mov	a,r4
      003D5A 12 43 28         [24]  581 	lcall	__gptrput
      003D5D                        582 00113$:
                                    583 ;	src/linked_list.c:52: if (to_free == NULL) return false; 
      003D5D 90 20 58         [24]  584 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003D60 E0               [24]  585 	movx	a,@dptr
      003D61 FE               [12]  586 	mov	r6,a
      003D62 A3               [24]  587 	inc	dptr
      003D63 E0               [24]  588 	movx	a,@dptr
      003D64 FD               [12]  589 	mov	r5,a
      003D65 A3               [24]  590 	inc	dptr
      003D66 E0               [24]  591 	movx	a,@dptr
      003D67 FF               [12]  592 	mov	r7,a
      003D68 90 20 58         [24]  593 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003D6B E0               [24]  594 	movx	a,@dptr
      003D6C F5 F0            [12]  595 	mov	b,a
      003D6E A3               [24]  596 	inc	dptr
      003D6F E0               [24]  597 	movx	a,@dptr
      003D70 45 F0            [12]  598 	orl	a,b
      003D72 70 03            [24]  599 	jnz	00115$
      003D74 F5 82            [12]  600 	mov	dpl,a
      003D76 22               [24]  601 	ret
      003D77                        602 00115$:
                                    603 ;	src/linked_list.c:53: if (to_free->buffer != NULL) 
      003D77 8E 82            [24]  604 	mov	dpl,r6
      003D79 8D 83            [24]  605 	mov	dph,r5
      003D7B 8F F0            [24]  606 	mov	b,r7
      003D7D 12 4F 82         [24]  607 	lcall	__gptrget
      003D80 FE               [12]  608 	mov	r6,a
      003D81 A3               [24]  609 	inc	dptr
      003D82 12 4F 82         [24]  610 	lcall	__gptrget
      003D85 FF               [12]  611 	mov	r7,a
      003D86 4E               [12]  612 	orl	a,r6
      003D87 60 0B            [24]  613 	jz	00117$
                                    614 ;	src/linked_list.c:55: free(to_free->buffer);
      003D89 7D 00            [12]  615 	mov	r5,#0x00
      003D8B 8E 82            [24]  616 	mov	dpl,r6
      003D8D 8F 83            [24]  617 	mov	dph,r7
      003D8F 8D F0            [24]  618 	mov	b,r5
      003D91 12 40 11         [24]  619 	lcall	_free
      003D94                        620 00117$:
                                    621 ;	src/linked_list.c:57: free(to_free);
      003D94 90 20 58         [24]  622 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003D97 E0               [24]  623 	movx	a,@dptr
      003D98 FD               [12]  624 	mov	r5,a
      003D99 A3               [24]  625 	inc	dptr
      003D9A E0               [24]  626 	movx	a,@dptr
      003D9B FE               [12]  627 	mov	r6,a
      003D9C A3               [24]  628 	inc	dptr
      003D9D E0               [24]  629 	movx	a,@dptr
      003D9E FF               [12]  630 	mov	r7,a
      003D9F 8D 82            [24]  631 	mov	dpl,r5
      003DA1 8E 83            [24]  632 	mov	dph,r6
      003DA3 8F F0            [24]  633 	mov	b,r7
      003DA5 12 40 11         [24]  634 	lcall	_free
                                    635 ;	src/linked_list.c:58: return true; 
      003DA8 75 82 01         [24]  636 	mov	dpl,#0x01
                                    637 ;	src/linked_list.c:59: }
      003DAB 22               [24]  638 	ret
                                    639 ;------------------------------------------------------------
                                    640 ;Allocation info for local variables in function 'free_all_elems_from_list'
                                    641 ;------------------------------------------------------------
                                    642 ;sloc0                     Allocated with name '_free_all_elems_from_list_sloc0_1_0'
                                    643 ;list                      Allocated with name '_free_all_elems_from_list_list_65536_59'
                                    644 ;buffer_to_free            Allocated with name '_free_all_elems_from_list_buffer_to_free_65536_60'
                                    645 ;------------------------------------------------------------
                                    646 ;	src/linked_list.c:61: void free_all_elems_from_list(buffer_list_t *list)
                                    647 ;	-----------------------------------------
                                    648 ;	 function free_all_elems_from_list
                                    649 ;	-----------------------------------------
      003DAC                        650 _free_all_elems_from_list:
      003DAC AF F0            [24]  651 	mov	r7,b
      003DAE AE 83            [24]  652 	mov	r6,dph
      003DB0 E5 82            [12]  653 	mov	a,dpl
      003DB2 90 20 5E         [24]  654 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      003DB5 F0               [24]  655 	movx	@dptr,a
      003DB6 EE               [12]  656 	mov	a,r6
      003DB7 A3               [24]  657 	inc	dptr
      003DB8 F0               [24]  658 	movx	@dptr,a
      003DB9 EF               [12]  659 	mov	a,r7
      003DBA A3               [24]  660 	inc	dptr
      003DBB F0               [24]  661 	movx	@dptr,a
                                    662 ;	src/linked_list.c:63: buffer_t *buffer_to_free = list->head;
      003DBC 90 20 5E         [24]  663 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      003DBF E0               [24]  664 	movx	a,@dptr
      003DC0 FD               [12]  665 	mov	r5,a
      003DC1 A3               [24]  666 	inc	dptr
      003DC2 E0               [24]  667 	movx	a,@dptr
      003DC3 FE               [12]  668 	mov	r6,a
      003DC4 A3               [24]  669 	inc	dptr
      003DC5 E0               [24]  670 	movx	a,@dptr
      003DC6 FF               [12]  671 	mov	r7,a
      003DC7 8D 82            [24]  672 	mov	dpl,r5
      003DC9 8E 83            [24]  673 	mov	dph,r6
      003DCB 8F F0            [24]  674 	mov	b,r7
      003DCD 12 4F 82         [24]  675 	lcall	__gptrget
      003DD0 FA               [12]  676 	mov	r2,a
      003DD1 A3               [24]  677 	inc	dptr
      003DD2 12 4F 82         [24]  678 	lcall	__gptrget
      003DD5 FB               [12]  679 	mov	r3,a
      003DD6 A3               [24]  680 	inc	dptr
      003DD7 12 4F 82         [24]  681 	lcall	__gptrget
      003DDA FC               [12]  682 	mov	r4,a
      003DDB 90 20 61         [24]  683 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      003DDE EA               [12]  684 	mov	a,r2
      003DDF F0               [24]  685 	movx	@dptr,a
      003DE0 EB               [12]  686 	mov	a,r3
      003DE1 A3               [24]  687 	inc	dptr
      003DE2 F0               [24]  688 	movx	@dptr,a
      003DE3 EC               [12]  689 	mov	a,r4
      003DE4 A3               [24]  690 	inc	dptr
      003DE5 F0               [24]  691 	movx	@dptr,a
                                    692 ;	src/linked_list.c:64: while(list->head != NULL)
      003DE6                        693 00103$:
      003DE6 90 20 5E         [24]  694 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      003DE9 E0               [24]  695 	movx	a,@dptr
      003DEA FA               [12]  696 	mov	r2,a
      003DEB A3               [24]  697 	inc	dptr
      003DEC E0               [24]  698 	movx	a,@dptr
      003DED FB               [12]  699 	mov	r3,a
      003DEE A3               [24]  700 	inc	dptr
      003DEF E0               [24]  701 	movx	a,@dptr
      003DF0 FC               [12]  702 	mov	r4,a
      003DF1 8A 82            [24]  703 	mov	dpl,r2
      003DF3 8B 83            [24]  704 	mov	dph,r3
      003DF5 8C F0            [24]  705 	mov	b,r4
      003DF7 12 4F 82         [24]  706 	lcall	__gptrget
      003DFA F5 0B            [12]  707 	mov	_free_all_elems_from_list_sloc0_1_0,a
      003DFC A3               [24]  708 	inc	dptr
      003DFD 12 4F 82         [24]  709 	lcall	__gptrget
      003E00 F5 0C            [12]  710 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      003E02 A3               [24]  711 	inc	dptr
      003E03 12 4F 82         [24]  712 	lcall	__gptrget
      003E06 F5 0D            [12]  713 	mov	(_free_all_elems_from_list_sloc0_1_0 + 2),a
      003E08 E5 0B            [12]  714 	mov	a,_free_all_elems_from_list_sloc0_1_0
      003E0A 45 0C            [12]  715 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003E0C 70 01            [24]  716 	jnz	00120$
      003E0E 22               [24]  717 	ret
      003E0F                        718 00120$:
                                    719 ;	src/linked_list.c:66: list->head = list->head->next;
      003E0F C0 05            [24]  720 	push	ar5
      003E11 C0 06            [24]  721 	push	ar6
      003E13 C0 07            [24]  722 	push	ar7
      003E15 74 08            [12]  723 	mov	a,#0x08
      003E17 25 0B            [12]  724 	add	a,_free_all_elems_from_list_sloc0_1_0
      003E19 F8               [12]  725 	mov	r0,a
      003E1A E4               [12]  726 	clr	a
      003E1B 35 0C            [12]  727 	addc	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003E1D F9               [12]  728 	mov	r1,a
      003E1E AF 0D            [24]  729 	mov	r7,(_free_all_elems_from_list_sloc0_1_0 + 2)
      003E20 88 82            [24]  730 	mov	dpl,r0
      003E22 89 83            [24]  731 	mov	dph,r1
      003E24 8F F0            [24]  732 	mov	b,r7
      003E26 12 4F 82         [24]  733 	lcall	__gptrget
      003E29 F8               [12]  734 	mov	r0,a
      003E2A A3               [24]  735 	inc	dptr
      003E2B 12 4F 82         [24]  736 	lcall	__gptrget
      003E2E F9               [12]  737 	mov	r1,a
      003E2F A3               [24]  738 	inc	dptr
      003E30 12 4F 82         [24]  739 	lcall	__gptrget
      003E33 FF               [12]  740 	mov	r7,a
      003E34 8A 82            [24]  741 	mov	dpl,r2
      003E36 8B 83            [24]  742 	mov	dph,r3
      003E38 8C F0            [24]  743 	mov	b,r4
      003E3A E8               [12]  744 	mov	a,r0
      003E3B 12 43 28         [24]  745 	lcall	__gptrput
      003E3E A3               [24]  746 	inc	dptr
      003E3F E9               [12]  747 	mov	a,r1
      003E40 12 43 28         [24]  748 	lcall	__gptrput
      003E43 A3               [24]  749 	inc	dptr
      003E44 EF               [12]  750 	mov	a,r7
      003E45 12 43 28         [24]  751 	lcall	__gptrput
                                    752 ;	src/linked_list.c:67: if (buffer_to_free->buffer != NULL)
      003E48 90 20 61         [24]  753 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      003E4B E0               [24]  754 	movx	a,@dptr
      003E4C FD               [12]  755 	mov	r5,a
      003E4D A3               [24]  756 	inc	dptr
      003E4E E0               [24]  757 	movx	a,@dptr
      003E4F FE               [12]  758 	mov	r6,a
      003E50 A3               [24]  759 	inc	dptr
      003E51 E0               [24]  760 	movx	a,@dptr
      003E52 FF               [12]  761 	mov	r7,a
      003E53 8D 82            [24]  762 	mov	dpl,r5
      003E55 8E 83            [24]  763 	mov	dph,r6
      003E57 8F F0            [24]  764 	mov	b,r7
      003E59 12 4F 82         [24]  765 	lcall	__gptrget
      003E5C F5 0B            [12]  766 	mov	_free_all_elems_from_list_sloc0_1_0,a
      003E5E A3               [24]  767 	inc	dptr
      003E5F 12 4F 82         [24]  768 	lcall	__gptrget
      003E62 F5 0C            [12]  769 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      003E64 D0 07            [24]  770 	pop	ar7
      003E66 D0 06            [24]  771 	pop	ar6
      003E68 D0 05            [24]  772 	pop	ar5
      003E6A E5 0B            [12]  773 	mov	a,_free_all_elems_from_list_sloc0_1_0
      003E6C 45 0C            [12]  774 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003E6E 60 1B            [24]  775 	jz	00102$
                                    776 ;	src/linked_list.c:69: free(buffer_to_free->buffer);
      003E70 AB 0B            [24]  777 	mov	r3,_free_all_elems_from_list_sloc0_1_0
      003E72 AC 0C            [24]  778 	mov	r4,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003E74 7A 00            [12]  779 	mov	r2,#0x00
      003E76 8B 82            [24]  780 	mov	dpl,r3
      003E78 8C 83            [24]  781 	mov	dph,r4
      003E7A 8A F0            [24]  782 	mov	b,r2
      003E7C C0 07            [24]  783 	push	ar7
      003E7E C0 06            [24]  784 	push	ar6
      003E80 C0 05            [24]  785 	push	ar5
      003E82 12 40 11         [24]  786 	lcall	_free
      003E85 D0 05            [24]  787 	pop	ar5
      003E87 D0 06            [24]  788 	pop	ar6
      003E89 D0 07            [24]  789 	pop	ar7
      003E8B                        790 00102$:
                                    791 ;	src/linked_list.c:71: free(buffer_to_free);
      003E8B 90 20 61         [24]  792 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      003E8E E0               [24]  793 	movx	a,@dptr
      003E8F FA               [12]  794 	mov	r2,a
      003E90 A3               [24]  795 	inc	dptr
      003E91 E0               [24]  796 	movx	a,@dptr
      003E92 FB               [12]  797 	mov	r3,a
      003E93 A3               [24]  798 	inc	dptr
      003E94 E0               [24]  799 	movx	a,@dptr
      003E95 FC               [12]  800 	mov	r4,a
      003E96 8A 82            [24]  801 	mov	dpl,r2
      003E98 8B 83            [24]  802 	mov	dph,r3
      003E9A 8C F0            [24]  803 	mov	b,r4
      003E9C C0 07            [24]  804 	push	ar7
      003E9E C0 06            [24]  805 	push	ar6
      003EA0 C0 05            [24]  806 	push	ar5
      003EA2 12 40 11         [24]  807 	lcall	_free
      003EA5 D0 05            [24]  808 	pop	ar5
      003EA7 D0 06            [24]  809 	pop	ar6
      003EA9 D0 07            [24]  810 	pop	ar7
                                    811 ;	src/linked_list.c:72: buffer_to_free = list->head;
      003EAB 8D 82            [24]  812 	mov	dpl,r5
      003EAD 8E 83            [24]  813 	mov	dph,r6
      003EAF 8F F0            [24]  814 	mov	b,r7
      003EB1 12 4F 82         [24]  815 	lcall	__gptrget
      003EB4 FA               [12]  816 	mov	r2,a
      003EB5 A3               [24]  817 	inc	dptr
      003EB6 12 4F 82         [24]  818 	lcall	__gptrget
      003EB9 FB               [12]  819 	mov	r3,a
      003EBA A3               [24]  820 	inc	dptr
      003EBB 12 4F 82         [24]  821 	lcall	__gptrget
      003EBE FC               [12]  822 	mov	r4,a
      003EBF 90 20 61         [24]  823 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      003EC2 EA               [12]  824 	mov	a,r2
      003EC3 F0               [24]  825 	movx	@dptr,a
      003EC4 EB               [12]  826 	mov	a,r3
      003EC5 A3               [24]  827 	inc	dptr
      003EC6 F0               [24]  828 	movx	@dptr,a
      003EC7 EC               [12]  829 	mov	a,r4
      003EC8 A3               [24]  830 	inc	dptr
      003EC9 F0               [24]  831 	movx	@dptr,a
                                    832 ;	src/linked_list.c:74: }
      003ECA 02 3D E6         [24]  833 	ljmp	00103$
                                    834 ;------------------------------------------------------------
                                    835 ;Allocation info for local variables in function 'll_length'
                                    836 ;------------------------------------------------------------
                                    837 ;list                      Allocated with name '_ll_length_list_65536_63'
                                    838 ;size                      Allocated with name '_ll_length_size_65536_64'
                                    839 ;curr                      Allocated with name '_ll_length_curr_65536_64'
                                    840 ;------------------------------------------------------------
                                    841 ;	src/linked_list.c:76: size_t ll_length(buffer_list_t *list)
                                    842 ;	-----------------------------------------
                                    843 ;	 function ll_length
                                    844 ;	-----------------------------------------
      003ECD                        845 _ll_length:
      003ECD AF F0            [24]  846 	mov	r7,b
      003ECF AE 83            [24]  847 	mov	r6,dph
      003ED1 E5 82            [12]  848 	mov	a,dpl
      003ED3 90 20 64         [24]  849 	mov	dptr,#_ll_length_list_65536_63
      003ED6 F0               [24]  850 	movx	@dptr,a
      003ED7 EE               [12]  851 	mov	a,r6
      003ED8 A3               [24]  852 	inc	dptr
      003ED9 F0               [24]  853 	movx	@dptr,a
      003EDA EF               [12]  854 	mov	a,r7
      003EDB A3               [24]  855 	inc	dptr
      003EDC F0               [24]  856 	movx	@dptr,a
                                    857 ;	src/linked_list.c:79: buffer_t *curr = list->head;
      003EDD 90 20 64         [24]  858 	mov	dptr,#_ll_length_list_65536_63
      003EE0 E0               [24]  859 	movx	a,@dptr
      003EE1 FD               [12]  860 	mov	r5,a
      003EE2 A3               [24]  861 	inc	dptr
      003EE3 E0               [24]  862 	movx	a,@dptr
      003EE4 FE               [12]  863 	mov	r6,a
      003EE5 A3               [24]  864 	inc	dptr
      003EE6 E0               [24]  865 	movx	a,@dptr
      003EE7 FF               [12]  866 	mov	r7,a
      003EE8 8D 82            [24]  867 	mov	dpl,r5
      003EEA 8E 83            [24]  868 	mov	dph,r6
      003EEC 8F F0            [24]  869 	mov	b,r7
      003EEE 12 4F 82         [24]  870 	lcall	__gptrget
      003EF1 FD               [12]  871 	mov	r5,a
      003EF2 A3               [24]  872 	inc	dptr
      003EF3 12 4F 82         [24]  873 	lcall	__gptrget
      003EF6 FE               [12]  874 	mov	r6,a
      003EF7 A3               [24]  875 	inc	dptr
      003EF8 12 4F 82         [24]  876 	lcall	__gptrget
      003EFB FF               [12]  877 	mov	r7,a
      003EFC 90 20 69         [24]  878 	mov	dptr,#_ll_length_curr_65536_64
      003EFF ED               [12]  879 	mov	a,r5
      003F00 F0               [24]  880 	movx	@dptr,a
      003F01 EE               [12]  881 	mov	a,r6
      003F02 A3               [24]  882 	inc	dptr
      003F03 F0               [24]  883 	movx	@dptr,a
      003F04 EF               [12]  884 	mov	a,r7
      003F05 A3               [24]  885 	inc	dptr
      003F06 F0               [24]  886 	movx	@dptr,a
                                    887 ;	src/linked_list.c:80: while(curr != NULL)
      003F07 90 20 67         [24]  888 	mov	dptr,#_ll_length_size_65536_64
      003F0A E0               [24]  889 	movx	a,@dptr
      003F0B FE               [12]  890 	mov	r6,a
      003F0C A3               [24]  891 	inc	dptr
      003F0D E0               [24]  892 	movx	a,@dptr
      003F0E FF               [12]  893 	mov	r7,a
      003F0F                        894 00101$:
      003F0F 90 20 69         [24]  895 	mov	dptr,#_ll_length_curr_65536_64
      003F12 E0               [24]  896 	movx	a,@dptr
      003F13 FB               [12]  897 	mov	r3,a
      003F14 A3               [24]  898 	inc	dptr
      003F15 E0               [24]  899 	movx	a,@dptr
      003F16 FC               [12]  900 	mov	r4,a
      003F17 A3               [24]  901 	inc	dptr
      003F18 E0               [24]  902 	movx	a,@dptr
      003F19 FD               [12]  903 	mov	r5,a
      003F1A 90 20 69         [24]  904 	mov	dptr,#_ll_length_curr_65536_64
      003F1D E0               [24]  905 	movx	a,@dptr
      003F1E F5 F0            [12]  906 	mov	b,a
      003F20 A3               [24]  907 	inc	dptr
      003F21 E0               [24]  908 	movx	a,@dptr
      003F22 45 F0            [12]  909 	orl	a,b
      003F24 60 2D            [24]  910 	jz	00103$
                                    911 ;	src/linked_list.c:82: size++;
      003F26 0E               [12]  912 	inc	r6
      003F27 BE 00 01         [24]  913 	cjne	r6,#0x00,00116$
      003F2A 0F               [12]  914 	inc	r7
      003F2B                        915 00116$:
                                    916 ;	src/linked_list.c:83: curr = curr->next;
      003F2B 74 08            [12]  917 	mov	a,#0x08
      003F2D 2B               [12]  918 	add	a,r3
      003F2E FB               [12]  919 	mov	r3,a
      003F2F E4               [12]  920 	clr	a
      003F30 3C               [12]  921 	addc	a,r4
      003F31 FC               [12]  922 	mov	r4,a
      003F32 8B 82            [24]  923 	mov	dpl,r3
      003F34 8C 83            [24]  924 	mov	dph,r4
      003F36 8D F0            [24]  925 	mov	b,r5
      003F38 12 4F 82         [24]  926 	lcall	__gptrget
      003F3B FB               [12]  927 	mov	r3,a
      003F3C A3               [24]  928 	inc	dptr
      003F3D 12 4F 82         [24]  929 	lcall	__gptrget
      003F40 FC               [12]  930 	mov	r4,a
      003F41 A3               [24]  931 	inc	dptr
      003F42 12 4F 82         [24]  932 	lcall	__gptrget
      003F45 FD               [12]  933 	mov	r5,a
      003F46 90 20 69         [24]  934 	mov	dptr,#_ll_length_curr_65536_64
      003F49 EB               [12]  935 	mov	a,r3
      003F4A F0               [24]  936 	movx	@dptr,a
      003F4B EC               [12]  937 	mov	a,r4
      003F4C A3               [24]  938 	inc	dptr
      003F4D F0               [24]  939 	movx	@dptr,a
      003F4E ED               [12]  940 	mov	a,r5
      003F4F A3               [24]  941 	inc	dptr
      003F50 F0               [24]  942 	movx	@dptr,a
      003F51 80 BC            [24]  943 	sjmp	00101$
      003F53                        944 00103$:
                                    945 ;	src/linked_list.c:85: return size; 
      003F53 8E 82            [24]  946 	mov	dpl,r6
      003F55 8F 83            [24]  947 	mov	dph,r7
                                    948 ;	src/linked_list.c:86: }
      003F57 22               [24]  949 	ret
                                    950 ;------------------------------------------------------------
                                    951 ;Allocation info for local variables in function 'll_get_elem'
                                    952 ;------------------------------------------------------------
                                    953 ;elem_num                  Allocated with name '_ll_get_elem_PARM_2'
                                    954 ;list                      Allocated with name '_ll_get_elem_list_65536_66'
                                    955 ;curr                      Allocated with name '_ll_get_elem_curr_65536_67'
                                    956 ;------------------------------------------------------------
                                    957 ;	src/linked_list.c:88: buffer_t* ll_get_elem(buffer_list_t *list, size_t elem_num)
                                    958 ;	-----------------------------------------
                                    959 ;	 function ll_get_elem
                                    960 ;	-----------------------------------------
      003F58                        961 _ll_get_elem:
      003F58 AF F0            [24]  962 	mov	r7,b
      003F5A AE 83            [24]  963 	mov	r6,dph
      003F5C E5 82            [12]  964 	mov	a,dpl
      003F5E 90 20 6E         [24]  965 	mov	dptr,#_ll_get_elem_list_65536_66
      003F61 F0               [24]  966 	movx	@dptr,a
      003F62 EE               [12]  967 	mov	a,r6
      003F63 A3               [24]  968 	inc	dptr
      003F64 F0               [24]  969 	movx	@dptr,a
      003F65 EF               [12]  970 	mov	a,r7
      003F66 A3               [24]  971 	inc	dptr
      003F67 F0               [24]  972 	movx	@dptr,a
                                    973 ;	src/linked_list.c:90: buffer_t *curr = list->head;
      003F68 90 20 6E         [24]  974 	mov	dptr,#_ll_get_elem_list_65536_66
      003F6B E0               [24]  975 	movx	a,@dptr
      003F6C FD               [12]  976 	mov	r5,a
      003F6D A3               [24]  977 	inc	dptr
      003F6E E0               [24]  978 	movx	a,@dptr
      003F6F FE               [12]  979 	mov	r6,a
      003F70 A3               [24]  980 	inc	dptr
      003F71 E0               [24]  981 	movx	a,@dptr
      003F72 FF               [12]  982 	mov	r7,a
      003F73 8D 82            [24]  983 	mov	dpl,r5
      003F75 8E 83            [24]  984 	mov	dph,r6
      003F77 8F F0            [24]  985 	mov	b,r7
      003F79 12 4F 82         [24]  986 	lcall	__gptrget
      003F7C FD               [12]  987 	mov	r5,a
      003F7D A3               [24]  988 	inc	dptr
      003F7E 12 4F 82         [24]  989 	lcall	__gptrget
      003F81 FE               [12]  990 	mov	r6,a
      003F82 A3               [24]  991 	inc	dptr
      003F83 12 4F 82         [24]  992 	lcall	__gptrget
      003F86 FF               [12]  993 	mov	r7,a
      003F87 90 20 71         [24]  994 	mov	dptr,#_ll_get_elem_curr_65536_67
      003F8A ED               [12]  995 	mov	a,r5
      003F8B F0               [24]  996 	movx	@dptr,a
      003F8C EE               [12]  997 	mov	a,r6
      003F8D A3               [24]  998 	inc	dptr
      003F8E F0               [24]  999 	movx	@dptr,a
      003F8F EF               [12] 1000 	mov	a,r7
      003F90 A3               [24] 1001 	inc	dptr
      003F91 F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	src/linked_list.c:91: while(curr != NULL && elem_num > 0)
      003F92 90 20 6C         [24] 1004 	mov	dptr,#_ll_get_elem_PARM_2
      003F95 E0               [24] 1005 	movx	a,@dptr
      003F96 FE               [12] 1006 	mov	r6,a
      003F97 A3               [24] 1007 	inc	dptr
      003F98 E0               [24] 1008 	movx	a,@dptr
      003F99 FF               [12] 1009 	mov	r7,a
      003F9A                       1010 00102$:
      003F9A 90 20 71         [24] 1011 	mov	dptr,#_ll_get_elem_curr_65536_67
      003F9D E0               [24] 1012 	movx	a,@dptr
      003F9E FB               [12] 1013 	mov	r3,a
      003F9F A3               [24] 1014 	inc	dptr
      003FA0 E0               [24] 1015 	movx	a,@dptr
      003FA1 FC               [12] 1016 	mov	r4,a
      003FA2 A3               [24] 1017 	inc	dptr
      003FA3 E0               [24] 1018 	movx	a,@dptr
      003FA4 FD               [12] 1019 	mov	r5,a
      003FA5 90 20 71         [24] 1020 	mov	dptr,#_ll_get_elem_curr_65536_67
      003FA8 E0               [24] 1021 	movx	a,@dptr
      003FA9 F5 F0            [12] 1022 	mov	b,a
      003FAB A3               [24] 1023 	inc	dptr
      003FAC E0               [24] 1024 	movx	a,@dptr
      003FAD 45 F0            [12] 1025 	orl	a,b
      003FAF 60 31            [24] 1026 	jz	00104$
      003FB1 EE               [12] 1027 	mov	a,r6
      003FB2 4F               [12] 1028 	orl	a,r7
      003FB3 60 2D            [24] 1029 	jz	00104$
                                   1030 ;	src/linked_list.c:93: curr = curr->next;
      003FB5 74 08            [12] 1031 	mov	a,#0x08
      003FB7 2B               [12] 1032 	add	a,r3
      003FB8 FB               [12] 1033 	mov	r3,a
      003FB9 E4               [12] 1034 	clr	a
      003FBA 3C               [12] 1035 	addc	a,r4
      003FBB FC               [12] 1036 	mov	r4,a
      003FBC 8B 82            [24] 1037 	mov	dpl,r3
      003FBE 8C 83            [24] 1038 	mov	dph,r4
      003FC0 8D F0            [24] 1039 	mov	b,r5
      003FC2 12 4F 82         [24] 1040 	lcall	__gptrget
      003FC5 FB               [12] 1041 	mov	r3,a
      003FC6 A3               [24] 1042 	inc	dptr
      003FC7 12 4F 82         [24] 1043 	lcall	__gptrget
      003FCA FC               [12] 1044 	mov	r4,a
      003FCB A3               [24] 1045 	inc	dptr
      003FCC 12 4F 82         [24] 1046 	lcall	__gptrget
      003FCF FD               [12] 1047 	mov	r5,a
      003FD0 90 20 71         [24] 1048 	mov	dptr,#_ll_get_elem_curr_65536_67
      003FD3 EB               [12] 1049 	mov	a,r3
      003FD4 F0               [24] 1050 	movx	@dptr,a
      003FD5 EC               [12] 1051 	mov	a,r4
      003FD6 A3               [24] 1052 	inc	dptr
      003FD7 F0               [24] 1053 	movx	@dptr,a
      003FD8 ED               [12] 1054 	mov	a,r5
      003FD9 A3               [24] 1055 	inc	dptr
      003FDA F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	src/linked_list.c:94: elem_num--;
      003FDB 1E               [12] 1058 	dec	r6
      003FDC BE FF 01         [24] 1059 	cjne	r6,#0xff,00122$
      003FDF 1F               [12] 1060 	dec	r7
      003FE0                       1061 00122$:
      003FE0 80 B8            [24] 1062 	sjmp	00102$
      003FE2                       1063 00104$:
                                   1064 ;	src/linked_list.c:96: return curr;
      003FE2 90 20 71         [24] 1065 	mov	dptr,#_ll_get_elem_curr_65536_67
      003FE5 E0               [24] 1066 	movx	a,@dptr
      003FE6 FD               [12] 1067 	mov	r5,a
      003FE7 A3               [24] 1068 	inc	dptr
      003FE8 E0               [24] 1069 	movx	a,@dptr
      003FE9 FE               [12] 1070 	mov	r6,a
      003FEA A3               [24] 1071 	inc	dptr
      003FEB E0               [24] 1072 	movx	a,@dptr
      003FEC FF               [12] 1073 	mov	r7,a
      003FED 8D 82            [24] 1074 	mov	dpl,r5
      003FEF 8E 83            [24] 1075 	mov	dph,r6
      003FF1 8F F0            [24] 1076 	mov	b,r7
                                   1077 ;	src/linked_list.c:97: }
      003FF3 22               [24] 1078 	ret
                                   1079 	.area CSEG    (CODE)
                                   1080 	.area CONST   (CODE)
                                   1081 	.area XINIT   (CODE)
                                   1082 	.area CABS    (ABS,CODE)
