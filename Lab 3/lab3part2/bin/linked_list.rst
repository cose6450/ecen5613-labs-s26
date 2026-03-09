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
      002047                         70 _append_to_buffer_list_PARM_2:
      002047                         71 	.ds 3
      00204A                         72 _append_to_buffer_list_list_65536_47:
      00204A                         73 	.ds 3
      00204D                         74 _append_to_buffer_list_tail_131072_50:
      00204D                         75 	.ds 3
      002050                         76 _remove_from_buffer_list_PARM_2:
      002050                         77 	.ds 2
      002052                         78 _remove_from_buffer_list_list_65536_52:
      002052                         79 	.ds 3
      002055                         80 _remove_from_buffer_list_to_free_65537_54:
      002055                         81 	.ds 3
      002058                         82 _remove_from_buffer_list_prev_131073_56:
      002058                         83 	.ds 3
      00205B                         84 _free_all_elems_from_list_list_65536_59:
      00205B                         85 	.ds 3
      00205E                         86 _free_all_elems_from_list_buffer_to_free_65536_60:
      00205E                         87 	.ds 3
      002061                         88 _ll_length_list_65536_63:
      002061                         89 	.ds 3
      002064                         90 _ll_length_size_65536_64:
      002064                         91 	.ds 2
      002066                         92 _ll_length_curr_65536_64:
      002066                         93 	.ds 3
      002069                         94 _ll_get_elem_PARM_2:
      002069                         95 	.ds 2
      00206B                         96 _ll_get_elem_list_65536_66:
      00206B                         97 	.ds 3
      00206E                         98 _ll_get_elem_curr_65536_67:
      00206E                         99 	.ds 3
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
      003A94                        146 _append_to_buffer_list:
                           000007   147 	ar7 = 0x07
                           000006   148 	ar6 = 0x06
                           000005   149 	ar5 = 0x05
                           000004   150 	ar4 = 0x04
                           000003   151 	ar3 = 0x03
                           000002   152 	ar2 = 0x02
                           000001   153 	ar1 = 0x01
                           000000   154 	ar0 = 0x00
      003A94 AF F0            [24]  155 	mov	r7,b
      003A96 AE 83            [24]  156 	mov	r6,dph
      003A98 E5 82            [12]  157 	mov	a,dpl
      003A9A 90 20 4A         [24]  158 	mov	dptr,#_append_to_buffer_list_list_65536_47
      003A9D F0               [24]  159 	movx	@dptr,a
      003A9E EE               [12]  160 	mov	a,r6
      003A9F A3               [24]  161 	inc	dptr
      003AA0 F0               [24]  162 	movx	@dptr,a
      003AA1 EF               [12]  163 	mov	a,r7
      003AA2 A3               [24]  164 	inc	dptr
      003AA3 F0               [24]  165 	movx	@dptr,a
                                    166 ;	src/linked_list.c:7: if (list->head == NULL) 
      003AA4 90 20 4A         [24]  167 	mov	dptr,#_append_to_buffer_list_list_65536_47
      003AA7 E0               [24]  168 	movx	a,@dptr
      003AA8 F5 1B            [12]  169 	mov	_append_to_buffer_list_sloc0_1_0,a
      003AAA A3               [24]  170 	inc	dptr
      003AAB E0               [24]  171 	movx	a,@dptr
      003AAC F5 1C            [12]  172 	mov	(_append_to_buffer_list_sloc0_1_0 + 1),a
      003AAE A3               [24]  173 	inc	dptr
      003AAF E0               [24]  174 	movx	a,@dptr
      003AB0 F5 1D            [12]  175 	mov	(_append_to_buffer_list_sloc0_1_0 + 2),a
      003AB2 85 1B 82         [24]  176 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      003AB5 85 1C 83         [24]  177 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      003AB8 85 1D F0         [24]  178 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      003ABB 12 4F 02         [24]  179 	lcall	__gptrget
      003ABE FA               [12]  180 	mov	r2,a
      003ABF A3               [24]  181 	inc	dptr
      003AC0 12 4F 02         [24]  182 	lcall	__gptrget
      003AC3 FB               [12]  183 	mov	r3,a
      003AC4 A3               [24]  184 	inc	dptr
      003AC5 12 4F 02         [24]  185 	lcall	__gptrget
      003AC8 FC               [12]  186 	mov	r4,a
      003AC9 EA               [12]  187 	mov	a,r2
      003ACA 4B               [12]  188 	orl	a,r3
      003ACB 70 24            [24]  189 	jnz	00105$
                                    190 ;	src/linked_list.c:9: list->head = buffer; 
      003ACD 90 20 47         [24]  191 	mov	dptr,#_append_to_buffer_list_PARM_2
      003AD0 E0               [24]  192 	movx	a,@dptr
      003AD1 F8               [12]  193 	mov	r0,a
      003AD2 A3               [24]  194 	inc	dptr
      003AD3 E0               [24]  195 	movx	a,@dptr
      003AD4 F9               [12]  196 	mov	r1,a
      003AD5 A3               [24]  197 	inc	dptr
      003AD6 E0               [24]  198 	movx	a,@dptr
      003AD7 FF               [12]  199 	mov	r7,a
      003AD8 85 1B 82         [24]  200 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      003ADB 85 1C 83         [24]  201 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      003ADE 85 1D F0         [24]  202 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      003AE1 E8               [12]  203 	mov	a,r0
      003AE2 12 42 A8         [24]  204 	lcall	__gptrput
      003AE5 A3               [24]  205 	inc	dptr
      003AE6 E9               [12]  206 	mov	a,r1
      003AE7 12 42 A8         [24]  207 	lcall	__gptrput
      003AEA A3               [24]  208 	inc	dptr
      003AEB EF               [12]  209 	mov	a,r7
      003AEC 12 42 A8         [24]  210 	lcall	__gptrput
      003AEF 80 61            [24]  211 	sjmp	00106$
      003AF1                        212 00105$:
                                    213 ;	src/linked_list.c:13: buffer_t *tail = list->head;
      003AF1 90 20 4D         [24]  214 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      003AF4 EA               [12]  215 	mov	a,r2
      003AF5 F0               [24]  216 	movx	@dptr,a
      003AF6 EB               [12]  217 	mov	a,r3
      003AF7 A3               [24]  218 	inc	dptr
      003AF8 F0               [24]  219 	movx	@dptr,a
      003AF9 EC               [12]  220 	mov	a,r4
      003AFA A3               [24]  221 	inc	dptr
      003AFB F0               [24]  222 	movx	@dptr,a
                                    223 ;	src/linked_list.c:14: while(tail->next != NULL)
      003AFC                        224 00101$:
      003AFC 90 20 4D         [24]  225 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      003AFF E0               [24]  226 	movx	a,@dptr
      003B00 FD               [12]  227 	mov	r5,a
      003B01 A3               [24]  228 	inc	dptr
      003B02 E0               [24]  229 	movx	a,@dptr
      003B03 FE               [12]  230 	mov	r6,a
      003B04 A3               [24]  231 	inc	dptr
      003B05 E0               [24]  232 	movx	a,@dptr
      003B06 FF               [12]  233 	mov	r7,a
      003B07 74 08            [12]  234 	mov	a,#0x08
      003B09 2D               [12]  235 	add	a,r5
      003B0A FD               [12]  236 	mov	r5,a
      003B0B E4               [12]  237 	clr	a
      003B0C 3E               [12]  238 	addc	a,r6
      003B0D FE               [12]  239 	mov	r6,a
      003B0E 8D 82            [24]  240 	mov	dpl,r5
      003B10 8E 83            [24]  241 	mov	dph,r6
      003B12 8F F0            [24]  242 	mov	b,r7
      003B14 12 4F 02         [24]  243 	lcall	__gptrget
      003B17 FA               [12]  244 	mov	r2,a
      003B18 A3               [24]  245 	inc	dptr
      003B19 12 4F 02         [24]  246 	lcall	__gptrget
      003B1C FB               [12]  247 	mov	r3,a
      003B1D A3               [24]  248 	inc	dptr
      003B1E 12 4F 02         [24]  249 	lcall	__gptrget
      003B21 FC               [12]  250 	mov	r4,a
      003B22 EA               [12]  251 	mov	a,r2
      003B23 4B               [12]  252 	orl	a,r3
      003B24 60 0D            [24]  253 	jz	00103$
                                    254 ;	src/linked_list.c:16: tail = tail->next;
      003B26 90 20 4D         [24]  255 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      003B29 EA               [12]  256 	mov	a,r2
      003B2A F0               [24]  257 	movx	@dptr,a
      003B2B EB               [12]  258 	mov	a,r3
      003B2C A3               [24]  259 	inc	dptr
      003B2D F0               [24]  260 	movx	@dptr,a
      003B2E EC               [12]  261 	mov	a,r4
      003B2F A3               [24]  262 	inc	dptr
      003B30 F0               [24]  263 	movx	@dptr,a
      003B31 80 C9            [24]  264 	sjmp	00101$
      003B33                        265 00103$:
                                    266 ;	src/linked_list.c:18: tail->next = buffer;
      003B33 90 20 47         [24]  267 	mov	dptr,#_append_to_buffer_list_PARM_2
      003B36 E0               [24]  268 	movx	a,@dptr
      003B37 FA               [12]  269 	mov	r2,a
      003B38 A3               [24]  270 	inc	dptr
      003B39 E0               [24]  271 	movx	a,@dptr
      003B3A FB               [12]  272 	mov	r3,a
      003B3B A3               [24]  273 	inc	dptr
      003B3C E0               [24]  274 	movx	a,@dptr
      003B3D FC               [12]  275 	mov	r4,a
      003B3E 8D 82            [24]  276 	mov	dpl,r5
      003B40 8E 83            [24]  277 	mov	dph,r6
      003B42 8F F0            [24]  278 	mov	b,r7
      003B44 EA               [12]  279 	mov	a,r2
      003B45 12 42 A8         [24]  280 	lcall	__gptrput
      003B48 A3               [24]  281 	inc	dptr
      003B49 EB               [12]  282 	mov	a,r3
      003B4A 12 42 A8         [24]  283 	lcall	__gptrput
      003B4D A3               [24]  284 	inc	dptr
      003B4E EC               [12]  285 	mov	a,r4
      003B4F 12 42 A8         [24]  286 	lcall	__gptrput
      003B52                        287 00106$:
                                    288 ;	src/linked_list.c:20: buffer->next = NULL; 
      003B52 90 20 47         [24]  289 	mov	dptr,#_append_to_buffer_list_PARM_2
      003B55 E0               [24]  290 	movx	a,@dptr
      003B56 FD               [12]  291 	mov	r5,a
      003B57 A3               [24]  292 	inc	dptr
      003B58 E0               [24]  293 	movx	a,@dptr
      003B59 FE               [12]  294 	mov	r6,a
      003B5A A3               [24]  295 	inc	dptr
      003B5B E0               [24]  296 	movx	a,@dptr
      003B5C FF               [12]  297 	mov	r7,a
      003B5D 74 08            [12]  298 	mov	a,#0x08
      003B5F 2D               [12]  299 	add	a,r5
      003B60 FD               [12]  300 	mov	r5,a
      003B61 E4               [12]  301 	clr	a
      003B62 3E               [12]  302 	addc	a,r6
      003B63 FE               [12]  303 	mov	r6,a
      003B64 8D 82            [24]  304 	mov	dpl,r5
      003B66 8E 83            [24]  305 	mov	dph,r6
      003B68 8F F0            [24]  306 	mov	b,r7
      003B6A E4               [12]  307 	clr	a
      003B6B 12 42 A8         [24]  308 	lcall	__gptrput
      003B6E A3               [24]  309 	inc	dptr
      003B6F 12 42 A8         [24]  310 	lcall	__gptrput
      003B72 A3               [24]  311 	inc	dptr
      003B73 12 42 A8         [24]  312 	lcall	__gptrput
                                    313 ;	src/linked_list.c:21: return true;
      003B76 75 82 01         [24]  314 	mov	dpl,#0x01
                                    315 ;	src/linked_list.c:22: }
      003B79 22               [24]  316 	ret
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
      003B7A                        330 _remove_from_buffer_list:
      003B7A AF F0            [24]  331 	mov	r7,b
      003B7C AE 83            [24]  332 	mov	r6,dph
      003B7E E5 82            [12]  333 	mov	a,dpl
      003B80 90 20 52         [24]  334 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      003B83 F0               [24]  335 	movx	@dptr,a
      003B84 EE               [12]  336 	mov	a,r6
      003B85 A3               [24]  337 	inc	dptr
      003B86 F0               [24]  338 	movx	@dptr,a
      003B87 EF               [12]  339 	mov	a,r7
      003B88 A3               [24]  340 	inc	dptr
      003B89 F0               [24]  341 	movx	@dptr,a
                                    342 ;	src/linked_list.c:27: if (list == NULL) return false;
      003B8A 90 20 52         [24]  343 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      003B8D E0               [24]  344 	movx	a,@dptr
      003B8E F5 08            [12]  345 	mov	_remove_from_buffer_list_sloc0_1_0,a
      003B90 A3               [24]  346 	inc	dptr
      003B91 E0               [24]  347 	movx	a,@dptr
      003B92 F5 09            [12]  348 	mov	(_remove_from_buffer_list_sloc0_1_0 + 1),a
      003B94 A3               [24]  349 	inc	dptr
      003B95 E0               [24]  350 	movx	a,@dptr
      003B96 F5 0A            [12]  351 	mov	(_remove_from_buffer_list_sloc0_1_0 + 2),a
      003B98 E5 08            [12]  352 	mov	a,_remove_from_buffer_list_sloc0_1_0
      003B9A 45 09            [12]  353 	orl	a,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003B9C 70 03            [24]  354 	jnz	00102$
      003B9E F5 82            [12]  355 	mov	dpl,a
      003BA0 22               [24]  356 	ret
      003BA1                        357 00102$:
                                    358 ;	src/linked_list.c:28: if (list->head == NULL) return false;
      003BA1 85 08 82         [24]  359 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      003BA4 85 09 83         [24]  360 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003BA7 85 0A F0         [24]  361 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      003BAA 12 4F 02         [24]  362 	lcall	__gptrget
      003BAD FA               [12]  363 	mov	r2,a
      003BAE A3               [24]  364 	inc	dptr
      003BAF 12 4F 02         [24]  365 	lcall	__gptrget
      003BB2 FB               [12]  366 	mov	r3,a
      003BB3 A3               [24]  367 	inc	dptr
      003BB4 12 4F 02         [24]  368 	lcall	__gptrget
      003BB7 FC               [12]  369 	mov	r4,a
      003BB8 EA               [12]  370 	mov	a,r2
      003BB9 4B               [12]  371 	orl	a,r3
      003BBA 70 03            [24]  372 	jnz	00104$
      003BBC F5 82            [12]  373 	mov	dpl,a
      003BBE 22               [24]  374 	ret
      003BBF                        375 00104$:
                                    376 ;	src/linked_list.c:31: if (idx == 0)
      003BBF 90 20 50         [24]  377 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003BC2 E0               [24]  378 	movx	a,@dptr
      003BC3 F8               [12]  379 	mov	r0,a
      003BC4 A3               [24]  380 	inc	dptr
      003BC5 E0               [24]  381 	movx	a,@dptr
      003BC6 F9               [12]  382 	mov	r1,a
      003BC7 90 20 50         [24]  383 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003BCA E0               [24]  384 	movx	a,@dptr
      003BCB F5 F0            [12]  385 	mov	b,a
      003BCD A3               [24]  386 	inc	dptr
      003BCE E0               [24]  387 	movx	a,@dptr
      003BCF 45 F0            [12]  388 	orl	a,b
      003BD1 70 42            [24]  389 	jnz	00112$
                                    390 ;	src/linked_list.c:34: to_free = list->head;
      003BD3 90 20 55         [24]  391 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003BD6 EA               [12]  392 	mov	a,r2
      003BD7 F0               [24]  393 	movx	@dptr,a
      003BD8 EB               [12]  394 	mov	a,r3
      003BD9 A3               [24]  395 	inc	dptr
      003BDA F0               [24]  396 	movx	@dptr,a
      003BDB EC               [12]  397 	mov	a,r4
      003BDC A3               [24]  398 	inc	dptr
      003BDD F0               [24]  399 	movx	@dptr,a
                                    400 ;	src/linked_list.c:35: list->head = list->head->next;  
      003BDE 74 08            [12]  401 	mov	a,#0x08
      003BE0 2A               [12]  402 	add	a,r2
      003BE1 FD               [12]  403 	mov	r5,a
      003BE2 E4               [12]  404 	clr	a
      003BE3 3B               [12]  405 	addc	a,r3
      003BE4 FE               [12]  406 	mov	r6,a
      003BE5 8C 07            [24]  407 	mov	ar7,r4
      003BE7 8D 82            [24]  408 	mov	dpl,r5
      003BE9 8E 83            [24]  409 	mov	dph,r6
      003BEB 8F F0            [24]  410 	mov	b,r7
      003BED 12 4F 02         [24]  411 	lcall	__gptrget
      003BF0 FD               [12]  412 	mov	r5,a
      003BF1 A3               [24]  413 	inc	dptr
      003BF2 12 4F 02         [24]  414 	lcall	__gptrget
      003BF5 FE               [12]  415 	mov	r6,a
      003BF6 A3               [24]  416 	inc	dptr
      003BF7 12 4F 02         [24]  417 	lcall	__gptrget
      003BFA FF               [12]  418 	mov	r7,a
      003BFB 85 08 82         [24]  419 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      003BFE 85 09 83         [24]  420 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003C01 85 0A F0         [24]  421 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      003C04 ED               [12]  422 	mov	a,r5
      003C05 12 42 A8         [24]  423 	lcall	__gptrput
      003C08 A3               [24]  424 	inc	dptr
      003C09 EE               [12]  425 	mov	a,r6
      003C0A 12 42 A8         [24]  426 	lcall	__gptrput
      003C0D A3               [24]  427 	inc	dptr
      003C0E EF               [12]  428 	mov	a,r7
      003C0F 12 42 A8         [24]  429 	lcall	__gptrput
      003C12 02 3C DD         [24]  430 	ljmp	00113$
      003C15                        431 00112$:
                                    432 ;	src/linked_list.c:39: buffer_t *prev = list->head;
      003C15 90 20 58         [24]  433 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      003C18 EA               [12]  434 	mov	a,r2
      003C19 F0               [24]  435 	movx	@dptr,a
      003C1A EB               [12]  436 	mov	a,r3
      003C1B A3               [24]  437 	inc	dptr
      003C1C F0               [24]  438 	movx	@dptr,a
      003C1D EC               [12]  439 	mov	a,r4
      003C1E A3               [24]  440 	inc	dptr
      003C1F F0               [24]  441 	movx	@dptr,a
                                    442 ;	src/linked_list.c:40: idx--;
      003C20 18               [12]  443 	dec	r0
      003C21 B8 FF 01         [24]  444 	cjne	r0,#0xff,00160$
      003C24 19               [12]  445 	dec	r1
      003C25                        446 00160$:
      003C25 90 20 50         [24]  447 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003C28 E8               [12]  448 	mov	a,r0
      003C29 F0               [24]  449 	movx	@dptr,a
      003C2A E9               [12]  450 	mov	a,r1
      003C2B A3               [24]  451 	inc	dptr
      003C2C F0               [24]  452 	movx	@dptr,a
                                    453 ;	src/linked_list.c:41: while(idx > 0 && prev->next != NULL)
      003C2D 90 20 50         [24]  454 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003C30 E0               [24]  455 	movx	a,@dptr
      003C31 FE               [12]  456 	mov	r6,a
      003C32 A3               [24]  457 	inc	dptr
      003C33 E0               [24]  458 	movx	a,@dptr
      003C34 FF               [12]  459 	mov	r7,a
      003C35                        460 00106$:
      003C35 EE               [12]  461 	mov	a,r6
      003C36 4F               [12]  462 	orl	a,r7
      003C37 60 3C            [24]  463 	jz	00108$
      003C39 90 20 58         [24]  464 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      003C3C E0               [24]  465 	movx	a,@dptr
      003C3D FB               [12]  466 	mov	r3,a
      003C3E A3               [24]  467 	inc	dptr
      003C3F E0               [24]  468 	movx	a,@dptr
      003C40 FC               [12]  469 	mov	r4,a
      003C41 A3               [24]  470 	inc	dptr
      003C42 E0               [24]  471 	movx	a,@dptr
      003C43 FD               [12]  472 	mov	r5,a
      003C44 74 08            [12]  473 	mov	a,#0x08
      003C46 2B               [12]  474 	add	a,r3
      003C47 FB               [12]  475 	mov	r3,a
      003C48 E4               [12]  476 	clr	a
      003C49 3C               [12]  477 	addc	a,r4
      003C4A FC               [12]  478 	mov	r4,a
      003C4B 8B 82            [24]  479 	mov	dpl,r3
      003C4D 8C 83            [24]  480 	mov	dph,r4
      003C4F 8D F0            [24]  481 	mov	b,r5
      003C51 12 4F 02         [24]  482 	lcall	__gptrget
      003C54 FB               [12]  483 	mov	r3,a
      003C55 A3               [24]  484 	inc	dptr
      003C56 12 4F 02         [24]  485 	lcall	__gptrget
      003C59 FC               [12]  486 	mov	r4,a
      003C5A A3               [24]  487 	inc	dptr
      003C5B 12 4F 02         [24]  488 	lcall	__gptrget
      003C5E FD               [12]  489 	mov	r5,a
      003C5F EB               [12]  490 	mov	a,r3
      003C60 4C               [12]  491 	orl	a,r4
      003C61 60 12            [24]  492 	jz	00108$
                                    493 ;	src/linked_list.c:43: prev = prev->next;
      003C63 90 20 58         [24]  494 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      003C66 EB               [12]  495 	mov	a,r3
      003C67 F0               [24]  496 	movx	@dptr,a
      003C68 EC               [12]  497 	mov	a,r4
      003C69 A3               [24]  498 	inc	dptr
      003C6A F0               [24]  499 	movx	@dptr,a
      003C6B ED               [12]  500 	mov	a,r5
      003C6C A3               [24]  501 	inc	dptr
      003C6D F0               [24]  502 	movx	@dptr,a
                                    503 ;	src/linked_list.c:44: idx--;
      003C6E 1E               [12]  504 	dec	r6
      003C6F BE FF 01         [24]  505 	cjne	r6,#0xff,00163$
      003C72 1F               [12]  506 	dec	r7
      003C73                        507 00163$:
      003C73 80 C0            [24]  508 	sjmp	00106$
      003C75                        509 00108$:
                                    510 ;	src/linked_list.c:47: if (idx != 0) return false;
      003C75 EE               [12]  511 	mov	a,r6
      003C76 4F               [12]  512 	orl	a,r7
      003C77 60 04            [24]  513 	jz	00110$
      003C79 75 82 00         [24]  514 	mov	dpl,#0x00
      003C7C 22               [24]  515 	ret
      003C7D                        516 00110$:
                                    517 ;	src/linked_list.c:48: to_free = prev->next;
      003C7D 90 20 58         [24]  518 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      003C80 E0               [24]  519 	movx	a,@dptr
      003C81 FD               [12]  520 	mov	r5,a
      003C82 A3               [24]  521 	inc	dptr
      003C83 E0               [24]  522 	movx	a,@dptr
      003C84 FE               [12]  523 	mov	r6,a
      003C85 A3               [24]  524 	inc	dptr
      003C86 E0               [24]  525 	movx	a,@dptr
      003C87 FF               [12]  526 	mov	r7,a
      003C88 74 08            [12]  527 	mov	a,#0x08
      003C8A 2D               [12]  528 	add	a,r5
      003C8B FD               [12]  529 	mov	r5,a
      003C8C E4               [12]  530 	clr	a
      003C8D 3E               [12]  531 	addc	a,r6
      003C8E FE               [12]  532 	mov	r6,a
      003C8F 8D 82            [24]  533 	mov	dpl,r5
      003C91 8E 83            [24]  534 	mov	dph,r6
      003C93 8F F0            [24]  535 	mov	b,r7
      003C95 12 4F 02         [24]  536 	lcall	__gptrget
      003C98 FA               [12]  537 	mov	r2,a
      003C99 A3               [24]  538 	inc	dptr
      003C9A 12 4F 02         [24]  539 	lcall	__gptrget
      003C9D FB               [12]  540 	mov	r3,a
      003C9E A3               [24]  541 	inc	dptr
      003C9F 12 4F 02         [24]  542 	lcall	__gptrget
      003CA2 FC               [12]  543 	mov	r4,a
      003CA3 90 20 55         [24]  544 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003CA6 EA               [12]  545 	mov	a,r2
      003CA7 F0               [24]  546 	movx	@dptr,a
      003CA8 EB               [12]  547 	mov	a,r3
      003CA9 A3               [24]  548 	inc	dptr
      003CAA F0               [24]  549 	movx	@dptr,a
      003CAB EC               [12]  550 	mov	a,r4
      003CAC A3               [24]  551 	inc	dptr
      003CAD F0               [24]  552 	movx	@dptr,a
                                    553 ;	src/linked_list.c:49: prev->next = to_free->next;
      003CAE 74 08            [12]  554 	mov	a,#0x08
      003CB0 2A               [12]  555 	add	a,r2
      003CB1 FA               [12]  556 	mov	r2,a
      003CB2 E4               [12]  557 	clr	a
      003CB3 3B               [12]  558 	addc	a,r3
      003CB4 FB               [12]  559 	mov	r3,a
      003CB5 8A 82            [24]  560 	mov	dpl,r2
      003CB7 8B 83            [24]  561 	mov	dph,r3
      003CB9 8C F0            [24]  562 	mov	b,r4
      003CBB 12 4F 02         [24]  563 	lcall	__gptrget
      003CBE FA               [12]  564 	mov	r2,a
      003CBF A3               [24]  565 	inc	dptr
      003CC0 12 4F 02         [24]  566 	lcall	__gptrget
      003CC3 FB               [12]  567 	mov	r3,a
      003CC4 A3               [24]  568 	inc	dptr
      003CC5 12 4F 02         [24]  569 	lcall	__gptrget
      003CC8 FC               [12]  570 	mov	r4,a
      003CC9 8D 82            [24]  571 	mov	dpl,r5
      003CCB 8E 83            [24]  572 	mov	dph,r6
      003CCD 8F F0            [24]  573 	mov	b,r7
      003CCF EA               [12]  574 	mov	a,r2
      003CD0 12 42 A8         [24]  575 	lcall	__gptrput
      003CD3 A3               [24]  576 	inc	dptr
      003CD4 EB               [12]  577 	mov	a,r3
      003CD5 12 42 A8         [24]  578 	lcall	__gptrput
      003CD8 A3               [24]  579 	inc	dptr
      003CD9 EC               [12]  580 	mov	a,r4
      003CDA 12 42 A8         [24]  581 	lcall	__gptrput
      003CDD                        582 00113$:
                                    583 ;	src/linked_list.c:52: if (to_free == NULL) return false; 
      003CDD 90 20 55         [24]  584 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003CE0 E0               [24]  585 	movx	a,@dptr
      003CE1 FE               [12]  586 	mov	r6,a
      003CE2 A3               [24]  587 	inc	dptr
      003CE3 E0               [24]  588 	movx	a,@dptr
      003CE4 FD               [12]  589 	mov	r5,a
      003CE5 A3               [24]  590 	inc	dptr
      003CE6 E0               [24]  591 	movx	a,@dptr
      003CE7 FF               [12]  592 	mov	r7,a
      003CE8 90 20 55         [24]  593 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003CEB E0               [24]  594 	movx	a,@dptr
      003CEC F5 F0            [12]  595 	mov	b,a
      003CEE A3               [24]  596 	inc	dptr
      003CEF E0               [24]  597 	movx	a,@dptr
      003CF0 45 F0            [12]  598 	orl	a,b
      003CF2 70 03            [24]  599 	jnz	00115$
      003CF4 F5 82            [12]  600 	mov	dpl,a
      003CF6 22               [24]  601 	ret
      003CF7                        602 00115$:
                                    603 ;	src/linked_list.c:53: if (to_free->buffer != NULL) 
      003CF7 8E 82            [24]  604 	mov	dpl,r6
      003CF9 8D 83            [24]  605 	mov	dph,r5
      003CFB 8F F0            [24]  606 	mov	b,r7
      003CFD 12 4F 02         [24]  607 	lcall	__gptrget
      003D00 FE               [12]  608 	mov	r6,a
      003D01 A3               [24]  609 	inc	dptr
      003D02 12 4F 02         [24]  610 	lcall	__gptrget
      003D05 FF               [12]  611 	mov	r7,a
      003D06 4E               [12]  612 	orl	a,r6
      003D07 60 0B            [24]  613 	jz	00117$
                                    614 ;	src/linked_list.c:55: free(to_free->buffer);
      003D09 7D 00            [12]  615 	mov	r5,#0x00
      003D0B 8E 82            [24]  616 	mov	dpl,r6
      003D0D 8F 83            [24]  617 	mov	dph,r7
      003D0F 8D F0            [24]  618 	mov	b,r5
      003D11 12 3F 91         [24]  619 	lcall	_free
      003D14                        620 00117$:
                                    621 ;	src/linked_list.c:57: free(to_free);
      003D14 90 20 55         [24]  622 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003D17 E0               [24]  623 	movx	a,@dptr
      003D18 FD               [12]  624 	mov	r5,a
      003D19 A3               [24]  625 	inc	dptr
      003D1A E0               [24]  626 	movx	a,@dptr
      003D1B FE               [12]  627 	mov	r6,a
      003D1C A3               [24]  628 	inc	dptr
      003D1D E0               [24]  629 	movx	a,@dptr
      003D1E FF               [12]  630 	mov	r7,a
      003D1F 8D 82            [24]  631 	mov	dpl,r5
      003D21 8E 83            [24]  632 	mov	dph,r6
      003D23 8F F0            [24]  633 	mov	b,r7
      003D25 12 3F 91         [24]  634 	lcall	_free
                                    635 ;	src/linked_list.c:58: return true; 
      003D28 75 82 01         [24]  636 	mov	dpl,#0x01
                                    637 ;	src/linked_list.c:59: }
      003D2B 22               [24]  638 	ret
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
      003D2C                        650 _free_all_elems_from_list:
      003D2C AF F0            [24]  651 	mov	r7,b
      003D2E AE 83            [24]  652 	mov	r6,dph
      003D30 E5 82            [12]  653 	mov	a,dpl
      003D32 90 20 5B         [24]  654 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      003D35 F0               [24]  655 	movx	@dptr,a
      003D36 EE               [12]  656 	mov	a,r6
      003D37 A3               [24]  657 	inc	dptr
      003D38 F0               [24]  658 	movx	@dptr,a
      003D39 EF               [12]  659 	mov	a,r7
      003D3A A3               [24]  660 	inc	dptr
      003D3B F0               [24]  661 	movx	@dptr,a
                                    662 ;	src/linked_list.c:63: buffer_t *buffer_to_free = list->head;
      003D3C 90 20 5B         [24]  663 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      003D3F E0               [24]  664 	movx	a,@dptr
      003D40 FD               [12]  665 	mov	r5,a
      003D41 A3               [24]  666 	inc	dptr
      003D42 E0               [24]  667 	movx	a,@dptr
      003D43 FE               [12]  668 	mov	r6,a
      003D44 A3               [24]  669 	inc	dptr
      003D45 E0               [24]  670 	movx	a,@dptr
      003D46 FF               [12]  671 	mov	r7,a
      003D47 8D 82            [24]  672 	mov	dpl,r5
      003D49 8E 83            [24]  673 	mov	dph,r6
      003D4B 8F F0            [24]  674 	mov	b,r7
      003D4D 12 4F 02         [24]  675 	lcall	__gptrget
      003D50 FA               [12]  676 	mov	r2,a
      003D51 A3               [24]  677 	inc	dptr
      003D52 12 4F 02         [24]  678 	lcall	__gptrget
      003D55 FB               [12]  679 	mov	r3,a
      003D56 A3               [24]  680 	inc	dptr
      003D57 12 4F 02         [24]  681 	lcall	__gptrget
      003D5A FC               [12]  682 	mov	r4,a
      003D5B 90 20 5E         [24]  683 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      003D5E EA               [12]  684 	mov	a,r2
      003D5F F0               [24]  685 	movx	@dptr,a
      003D60 EB               [12]  686 	mov	a,r3
      003D61 A3               [24]  687 	inc	dptr
      003D62 F0               [24]  688 	movx	@dptr,a
      003D63 EC               [12]  689 	mov	a,r4
      003D64 A3               [24]  690 	inc	dptr
      003D65 F0               [24]  691 	movx	@dptr,a
                                    692 ;	src/linked_list.c:64: while(list->head != NULL)
      003D66                        693 00103$:
      003D66 90 20 5B         [24]  694 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      003D69 E0               [24]  695 	movx	a,@dptr
      003D6A FA               [12]  696 	mov	r2,a
      003D6B A3               [24]  697 	inc	dptr
      003D6C E0               [24]  698 	movx	a,@dptr
      003D6D FB               [12]  699 	mov	r3,a
      003D6E A3               [24]  700 	inc	dptr
      003D6F E0               [24]  701 	movx	a,@dptr
      003D70 FC               [12]  702 	mov	r4,a
      003D71 8A 82            [24]  703 	mov	dpl,r2
      003D73 8B 83            [24]  704 	mov	dph,r3
      003D75 8C F0            [24]  705 	mov	b,r4
      003D77 12 4F 02         [24]  706 	lcall	__gptrget
      003D7A F5 0B            [12]  707 	mov	_free_all_elems_from_list_sloc0_1_0,a
      003D7C A3               [24]  708 	inc	dptr
      003D7D 12 4F 02         [24]  709 	lcall	__gptrget
      003D80 F5 0C            [12]  710 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      003D82 A3               [24]  711 	inc	dptr
      003D83 12 4F 02         [24]  712 	lcall	__gptrget
      003D86 F5 0D            [12]  713 	mov	(_free_all_elems_from_list_sloc0_1_0 + 2),a
      003D88 E5 0B            [12]  714 	mov	a,_free_all_elems_from_list_sloc0_1_0
      003D8A 45 0C            [12]  715 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003D8C 70 01            [24]  716 	jnz	00120$
      003D8E 22               [24]  717 	ret
      003D8F                        718 00120$:
                                    719 ;	src/linked_list.c:66: list->head = list->head->next;
      003D8F C0 05            [24]  720 	push	ar5
      003D91 C0 06            [24]  721 	push	ar6
      003D93 C0 07            [24]  722 	push	ar7
      003D95 74 08            [12]  723 	mov	a,#0x08
      003D97 25 0B            [12]  724 	add	a,_free_all_elems_from_list_sloc0_1_0
      003D99 F8               [12]  725 	mov	r0,a
      003D9A E4               [12]  726 	clr	a
      003D9B 35 0C            [12]  727 	addc	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003D9D F9               [12]  728 	mov	r1,a
      003D9E AF 0D            [24]  729 	mov	r7,(_free_all_elems_from_list_sloc0_1_0 + 2)
      003DA0 88 82            [24]  730 	mov	dpl,r0
      003DA2 89 83            [24]  731 	mov	dph,r1
      003DA4 8F F0            [24]  732 	mov	b,r7
      003DA6 12 4F 02         [24]  733 	lcall	__gptrget
      003DA9 F8               [12]  734 	mov	r0,a
      003DAA A3               [24]  735 	inc	dptr
      003DAB 12 4F 02         [24]  736 	lcall	__gptrget
      003DAE F9               [12]  737 	mov	r1,a
      003DAF A3               [24]  738 	inc	dptr
      003DB0 12 4F 02         [24]  739 	lcall	__gptrget
      003DB3 FF               [12]  740 	mov	r7,a
      003DB4 8A 82            [24]  741 	mov	dpl,r2
      003DB6 8B 83            [24]  742 	mov	dph,r3
      003DB8 8C F0            [24]  743 	mov	b,r4
      003DBA E8               [12]  744 	mov	a,r0
      003DBB 12 42 A8         [24]  745 	lcall	__gptrput
      003DBE A3               [24]  746 	inc	dptr
      003DBF E9               [12]  747 	mov	a,r1
      003DC0 12 42 A8         [24]  748 	lcall	__gptrput
      003DC3 A3               [24]  749 	inc	dptr
      003DC4 EF               [12]  750 	mov	a,r7
      003DC5 12 42 A8         [24]  751 	lcall	__gptrput
                                    752 ;	src/linked_list.c:67: if (buffer_to_free->buffer != NULL)
      003DC8 90 20 5E         [24]  753 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      003DCB E0               [24]  754 	movx	a,@dptr
      003DCC FD               [12]  755 	mov	r5,a
      003DCD A3               [24]  756 	inc	dptr
      003DCE E0               [24]  757 	movx	a,@dptr
      003DCF FE               [12]  758 	mov	r6,a
      003DD0 A3               [24]  759 	inc	dptr
      003DD1 E0               [24]  760 	movx	a,@dptr
      003DD2 FF               [12]  761 	mov	r7,a
      003DD3 8D 82            [24]  762 	mov	dpl,r5
      003DD5 8E 83            [24]  763 	mov	dph,r6
      003DD7 8F F0            [24]  764 	mov	b,r7
      003DD9 12 4F 02         [24]  765 	lcall	__gptrget
      003DDC F5 0B            [12]  766 	mov	_free_all_elems_from_list_sloc0_1_0,a
      003DDE A3               [24]  767 	inc	dptr
      003DDF 12 4F 02         [24]  768 	lcall	__gptrget
      003DE2 F5 0C            [12]  769 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      003DE4 D0 07            [24]  770 	pop	ar7
      003DE6 D0 06            [24]  771 	pop	ar6
      003DE8 D0 05            [24]  772 	pop	ar5
      003DEA E5 0B            [12]  773 	mov	a,_free_all_elems_from_list_sloc0_1_0
      003DEC 45 0C            [12]  774 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003DEE 60 1B            [24]  775 	jz	00102$
                                    776 ;	src/linked_list.c:69: free(buffer_to_free->buffer);
      003DF0 AB 0B            [24]  777 	mov	r3,_free_all_elems_from_list_sloc0_1_0
      003DF2 AC 0C            [24]  778 	mov	r4,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003DF4 7A 00            [12]  779 	mov	r2,#0x00
      003DF6 8B 82            [24]  780 	mov	dpl,r3
      003DF8 8C 83            [24]  781 	mov	dph,r4
      003DFA 8A F0            [24]  782 	mov	b,r2
      003DFC C0 07            [24]  783 	push	ar7
      003DFE C0 06            [24]  784 	push	ar6
      003E00 C0 05            [24]  785 	push	ar5
      003E02 12 3F 91         [24]  786 	lcall	_free
      003E05 D0 05            [24]  787 	pop	ar5
      003E07 D0 06            [24]  788 	pop	ar6
      003E09 D0 07            [24]  789 	pop	ar7
      003E0B                        790 00102$:
                                    791 ;	src/linked_list.c:71: free(buffer_to_free);
      003E0B 90 20 5E         [24]  792 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      003E0E E0               [24]  793 	movx	a,@dptr
      003E0F FA               [12]  794 	mov	r2,a
      003E10 A3               [24]  795 	inc	dptr
      003E11 E0               [24]  796 	movx	a,@dptr
      003E12 FB               [12]  797 	mov	r3,a
      003E13 A3               [24]  798 	inc	dptr
      003E14 E0               [24]  799 	movx	a,@dptr
      003E15 FC               [12]  800 	mov	r4,a
      003E16 8A 82            [24]  801 	mov	dpl,r2
      003E18 8B 83            [24]  802 	mov	dph,r3
      003E1A 8C F0            [24]  803 	mov	b,r4
      003E1C C0 07            [24]  804 	push	ar7
      003E1E C0 06            [24]  805 	push	ar6
      003E20 C0 05            [24]  806 	push	ar5
      003E22 12 3F 91         [24]  807 	lcall	_free
      003E25 D0 05            [24]  808 	pop	ar5
      003E27 D0 06            [24]  809 	pop	ar6
      003E29 D0 07            [24]  810 	pop	ar7
                                    811 ;	src/linked_list.c:72: buffer_to_free = list->head;
      003E2B 8D 82            [24]  812 	mov	dpl,r5
      003E2D 8E 83            [24]  813 	mov	dph,r6
      003E2F 8F F0            [24]  814 	mov	b,r7
      003E31 12 4F 02         [24]  815 	lcall	__gptrget
      003E34 FA               [12]  816 	mov	r2,a
      003E35 A3               [24]  817 	inc	dptr
      003E36 12 4F 02         [24]  818 	lcall	__gptrget
      003E39 FB               [12]  819 	mov	r3,a
      003E3A A3               [24]  820 	inc	dptr
      003E3B 12 4F 02         [24]  821 	lcall	__gptrget
      003E3E FC               [12]  822 	mov	r4,a
      003E3F 90 20 5E         [24]  823 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      003E42 EA               [12]  824 	mov	a,r2
      003E43 F0               [24]  825 	movx	@dptr,a
      003E44 EB               [12]  826 	mov	a,r3
      003E45 A3               [24]  827 	inc	dptr
      003E46 F0               [24]  828 	movx	@dptr,a
      003E47 EC               [12]  829 	mov	a,r4
      003E48 A3               [24]  830 	inc	dptr
      003E49 F0               [24]  831 	movx	@dptr,a
                                    832 ;	src/linked_list.c:74: }
      003E4A 02 3D 66         [24]  833 	ljmp	00103$
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
      003E4D                        845 _ll_length:
      003E4D AF F0            [24]  846 	mov	r7,b
      003E4F AE 83            [24]  847 	mov	r6,dph
      003E51 E5 82            [12]  848 	mov	a,dpl
      003E53 90 20 61         [24]  849 	mov	dptr,#_ll_length_list_65536_63
      003E56 F0               [24]  850 	movx	@dptr,a
      003E57 EE               [12]  851 	mov	a,r6
      003E58 A3               [24]  852 	inc	dptr
      003E59 F0               [24]  853 	movx	@dptr,a
      003E5A EF               [12]  854 	mov	a,r7
      003E5B A3               [24]  855 	inc	dptr
      003E5C F0               [24]  856 	movx	@dptr,a
                                    857 ;	src/linked_list.c:79: buffer_t *curr = list->head;
      003E5D 90 20 61         [24]  858 	mov	dptr,#_ll_length_list_65536_63
      003E60 E0               [24]  859 	movx	a,@dptr
      003E61 FD               [12]  860 	mov	r5,a
      003E62 A3               [24]  861 	inc	dptr
      003E63 E0               [24]  862 	movx	a,@dptr
      003E64 FE               [12]  863 	mov	r6,a
      003E65 A3               [24]  864 	inc	dptr
      003E66 E0               [24]  865 	movx	a,@dptr
      003E67 FF               [12]  866 	mov	r7,a
      003E68 8D 82            [24]  867 	mov	dpl,r5
      003E6A 8E 83            [24]  868 	mov	dph,r6
      003E6C 8F F0            [24]  869 	mov	b,r7
      003E6E 12 4F 02         [24]  870 	lcall	__gptrget
      003E71 FD               [12]  871 	mov	r5,a
      003E72 A3               [24]  872 	inc	dptr
      003E73 12 4F 02         [24]  873 	lcall	__gptrget
      003E76 FE               [12]  874 	mov	r6,a
      003E77 A3               [24]  875 	inc	dptr
      003E78 12 4F 02         [24]  876 	lcall	__gptrget
      003E7B FF               [12]  877 	mov	r7,a
      003E7C 90 20 66         [24]  878 	mov	dptr,#_ll_length_curr_65536_64
      003E7F ED               [12]  879 	mov	a,r5
      003E80 F0               [24]  880 	movx	@dptr,a
      003E81 EE               [12]  881 	mov	a,r6
      003E82 A3               [24]  882 	inc	dptr
      003E83 F0               [24]  883 	movx	@dptr,a
      003E84 EF               [12]  884 	mov	a,r7
      003E85 A3               [24]  885 	inc	dptr
      003E86 F0               [24]  886 	movx	@dptr,a
                                    887 ;	src/linked_list.c:80: while(curr != NULL)
      003E87 90 20 64         [24]  888 	mov	dptr,#_ll_length_size_65536_64
      003E8A E0               [24]  889 	movx	a,@dptr
      003E8B FE               [12]  890 	mov	r6,a
      003E8C A3               [24]  891 	inc	dptr
      003E8D E0               [24]  892 	movx	a,@dptr
      003E8E FF               [12]  893 	mov	r7,a
      003E8F                        894 00101$:
      003E8F 90 20 66         [24]  895 	mov	dptr,#_ll_length_curr_65536_64
      003E92 E0               [24]  896 	movx	a,@dptr
      003E93 FB               [12]  897 	mov	r3,a
      003E94 A3               [24]  898 	inc	dptr
      003E95 E0               [24]  899 	movx	a,@dptr
      003E96 FC               [12]  900 	mov	r4,a
      003E97 A3               [24]  901 	inc	dptr
      003E98 E0               [24]  902 	movx	a,@dptr
      003E99 FD               [12]  903 	mov	r5,a
      003E9A 90 20 66         [24]  904 	mov	dptr,#_ll_length_curr_65536_64
      003E9D E0               [24]  905 	movx	a,@dptr
      003E9E F5 F0            [12]  906 	mov	b,a
      003EA0 A3               [24]  907 	inc	dptr
      003EA1 E0               [24]  908 	movx	a,@dptr
      003EA2 45 F0            [12]  909 	orl	a,b
      003EA4 60 2D            [24]  910 	jz	00103$
                                    911 ;	src/linked_list.c:82: size++;
      003EA6 0E               [12]  912 	inc	r6
      003EA7 BE 00 01         [24]  913 	cjne	r6,#0x00,00116$
      003EAA 0F               [12]  914 	inc	r7
      003EAB                        915 00116$:
                                    916 ;	src/linked_list.c:83: curr = curr->next;
      003EAB 74 08            [12]  917 	mov	a,#0x08
      003EAD 2B               [12]  918 	add	a,r3
      003EAE FB               [12]  919 	mov	r3,a
      003EAF E4               [12]  920 	clr	a
      003EB0 3C               [12]  921 	addc	a,r4
      003EB1 FC               [12]  922 	mov	r4,a
      003EB2 8B 82            [24]  923 	mov	dpl,r3
      003EB4 8C 83            [24]  924 	mov	dph,r4
      003EB6 8D F0            [24]  925 	mov	b,r5
      003EB8 12 4F 02         [24]  926 	lcall	__gptrget
      003EBB FB               [12]  927 	mov	r3,a
      003EBC A3               [24]  928 	inc	dptr
      003EBD 12 4F 02         [24]  929 	lcall	__gptrget
      003EC0 FC               [12]  930 	mov	r4,a
      003EC1 A3               [24]  931 	inc	dptr
      003EC2 12 4F 02         [24]  932 	lcall	__gptrget
      003EC5 FD               [12]  933 	mov	r5,a
      003EC6 90 20 66         [24]  934 	mov	dptr,#_ll_length_curr_65536_64
      003EC9 EB               [12]  935 	mov	a,r3
      003ECA F0               [24]  936 	movx	@dptr,a
      003ECB EC               [12]  937 	mov	a,r4
      003ECC A3               [24]  938 	inc	dptr
      003ECD F0               [24]  939 	movx	@dptr,a
      003ECE ED               [12]  940 	mov	a,r5
      003ECF A3               [24]  941 	inc	dptr
      003ED0 F0               [24]  942 	movx	@dptr,a
      003ED1 80 BC            [24]  943 	sjmp	00101$
      003ED3                        944 00103$:
                                    945 ;	src/linked_list.c:85: return size; 
      003ED3 8E 82            [24]  946 	mov	dpl,r6
      003ED5 8F 83            [24]  947 	mov	dph,r7
                                    948 ;	src/linked_list.c:86: }
      003ED7 22               [24]  949 	ret
                                    950 ;------------------------------------------------------------
                                    951 ;Allocation info for local variables in function 'll_get_elem'
                                    952 ;------------------------------------------------------------
                                    953 ;elem_num                  Allocated with name '_ll_get_elem_PARM_2'
                                    954 ;list                      Allocated with name '_ll_get_elem_list_65536_66'
                                    955 ;curr                      Allocated with name '_ll_get_elem_curr_65536_67'
                                    956 ;------------------------------------------------------------
                                    957 ;	src/linked_list.c:88: size_t ll_get_elem(buffer_list_t *list, size_t elem_num)
                                    958 ;	-----------------------------------------
                                    959 ;	 function ll_get_elem
                                    960 ;	-----------------------------------------
      003ED8                        961 _ll_get_elem:
      003ED8 AF F0            [24]  962 	mov	r7,b
      003EDA AE 83            [24]  963 	mov	r6,dph
      003EDC E5 82            [12]  964 	mov	a,dpl
      003EDE 90 20 6B         [24]  965 	mov	dptr,#_ll_get_elem_list_65536_66
      003EE1 F0               [24]  966 	movx	@dptr,a
      003EE2 EE               [12]  967 	mov	a,r6
      003EE3 A3               [24]  968 	inc	dptr
      003EE4 F0               [24]  969 	movx	@dptr,a
      003EE5 EF               [12]  970 	mov	a,r7
      003EE6 A3               [24]  971 	inc	dptr
      003EE7 F0               [24]  972 	movx	@dptr,a
                                    973 ;	src/linked_list.c:90: buffer_t *curr = list->head;
      003EE8 90 20 6B         [24]  974 	mov	dptr,#_ll_get_elem_list_65536_66
      003EEB E0               [24]  975 	movx	a,@dptr
      003EEC FD               [12]  976 	mov	r5,a
      003EED A3               [24]  977 	inc	dptr
      003EEE E0               [24]  978 	movx	a,@dptr
      003EEF FE               [12]  979 	mov	r6,a
      003EF0 A3               [24]  980 	inc	dptr
      003EF1 E0               [24]  981 	movx	a,@dptr
      003EF2 FF               [12]  982 	mov	r7,a
      003EF3 8D 82            [24]  983 	mov	dpl,r5
      003EF5 8E 83            [24]  984 	mov	dph,r6
      003EF7 8F F0            [24]  985 	mov	b,r7
      003EF9 12 4F 02         [24]  986 	lcall	__gptrget
      003EFC FD               [12]  987 	mov	r5,a
      003EFD A3               [24]  988 	inc	dptr
      003EFE 12 4F 02         [24]  989 	lcall	__gptrget
      003F01 FE               [12]  990 	mov	r6,a
      003F02 A3               [24]  991 	inc	dptr
      003F03 12 4F 02         [24]  992 	lcall	__gptrget
      003F06 FF               [12]  993 	mov	r7,a
      003F07 90 20 6E         [24]  994 	mov	dptr,#_ll_get_elem_curr_65536_67
      003F0A ED               [12]  995 	mov	a,r5
      003F0B F0               [24]  996 	movx	@dptr,a
      003F0C EE               [12]  997 	mov	a,r6
      003F0D A3               [24]  998 	inc	dptr
      003F0E F0               [24]  999 	movx	@dptr,a
      003F0F EF               [12] 1000 	mov	a,r7
      003F10 A3               [24] 1001 	inc	dptr
      003F11 F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	src/linked_list.c:91: while(curr != NULL && elem_num > 0)
      003F12 90 20 69         [24] 1004 	mov	dptr,#_ll_get_elem_PARM_2
      003F15 E0               [24] 1005 	movx	a,@dptr
      003F16 FE               [12] 1006 	mov	r6,a
      003F17 A3               [24] 1007 	inc	dptr
      003F18 E0               [24] 1008 	movx	a,@dptr
      003F19 FF               [12] 1009 	mov	r7,a
      003F1A                       1010 00102$:
      003F1A 90 20 6E         [24] 1011 	mov	dptr,#_ll_get_elem_curr_65536_67
      003F1D E0               [24] 1012 	movx	a,@dptr
      003F1E FB               [12] 1013 	mov	r3,a
      003F1F A3               [24] 1014 	inc	dptr
      003F20 E0               [24] 1015 	movx	a,@dptr
      003F21 FC               [12] 1016 	mov	r4,a
      003F22 A3               [24] 1017 	inc	dptr
      003F23 E0               [24] 1018 	movx	a,@dptr
      003F24 FD               [12] 1019 	mov	r5,a
      003F25 90 20 6E         [24] 1020 	mov	dptr,#_ll_get_elem_curr_65536_67
      003F28 E0               [24] 1021 	movx	a,@dptr
      003F29 F5 F0            [12] 1022 	mov	b,a
      003F2B A3               [24] 1023 	inc	dptr
      003F2C E0               [24] 1024 	movx	a,@dptr
      003F2D 45 F0            [12] 1025 	orl	a,b
      003F2F 60 31            [24] 1026 	jz	00104$
      003F31 EE               [12] 1027 	mov	a,r6
      003F32 4F               [12] 1028 	orl	a,r7
      003F33 60 2D            [24] 1029 	jz	00104$
                                   1030 ;	src/linked_list.c:93: curr = curr->next;
      003F35 74 08            [12] 1031 	mov	a,#0x08
      003F37 2B               [12] 1032 	add	a,r3
      003F38 FB               [12] 1033 	mov	r3,a
      003F39 E4               [12] 1034 	clr	a
      003F3A 3C               [12] 1035 	addc	a,r4
      003F3B FC               [12] 1036 	mov	r4,a
      003F3C 8B 82            [24] 1037 	mov	dpl,r3
      003F3E 8C 83            [24] 1038 	mov	dph,r4
      003F40 8D F0            [24] 1039 	mov	b,r5
      003F42 12 4F 02         [24] 1040 	lcall	__gptrget
      003F45 FB               [12] 1041 	mov	r3,a
      003F46 A3               [24] 1042 	inc	dptr
      003F47 12 4F 02         [24] 1043 	lcall	__gptrget
      003F4A FC               [12] 1044 	mov	r4,a
      003F4B A3               [24] 1045 	inc	dptr
      003F4C 12 4F 02         [24] 1046 	lcall	__gptrget
      003F4F FD               [12] 1047 	mov	r5,a
      003F50 90 20 6E         [24] 1048 	mov	dptr,#_ll_get_elem_curr_65536_67
      003F53 EB               [12] 1049 	mov	a,r3
      003F54 F0               [24] 1050 	movx	@dptr,a
      003F55 EC               [12] 1051 	mov	a,r4
      003F56 A3               [24] 1052 	inc	dptr
      003F57 F0               [24] 1053 	movx	@dptr,a
      003F58 ED               [12] 1054 	mov	a,r5
      003F59 A3               [24] 1055 	inc	dptr
      003F5A F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	src/linked_list.c:94: elem_num--;
      003F5B 1E               [12] 1058 	dec	r6
      003F5C BE FF 01         [24] 1059 	cjne	r6,#0xff,00122$
      003F5F 1F               [12] 1060 	dec	r7
      003F60                       1061 00122$:
      003F60 80 B8            [24] 1062 	sjmp	00102$
      003F62                       1063 00104$:
                                   1064 ;	src/linked_list.c:96: return curr;
      003F62 90 20 6E         [24] 1065 	mov	dptr,#_ll_get_elem_curr_65536_67
      003F65 E0               [24] 1066 	movx	a,@dptr
      003F66 FD               [12] 1067 	mov	r5,a
      003F67 A3               [24] 1068 	inc	dptr
      003F68 E0               [24] 1069 	movx	a,@dptr
      003F69 FE               [12] 1070 	mov	r6,a
      003F6A A3               [24] 1071 	inc	dptr
      003F6B E0               [24] 1072 	movx	a,@dptr
      003F6C FF               [12] 1073 	mov	r7,a
      003F6D 8D 82            [24] 1074 	mov	dpl,r5
      003F6F 8E 83            [24] 1075 	mov	dph,r6
      003F71 8F F0            [24] 1076 	mov	b,r7
                                   1077 ;	src/linked_list.c:97: }
      003F73 22               [24] 1078 	ret
                                   1079 	.area CSEG    (CODE)
                                   1080 	.area CONST   (CODE)
                                   1081 	.area XINIT   (CODE)
                                   1082 	.area CABS    (ABS,CODE)
