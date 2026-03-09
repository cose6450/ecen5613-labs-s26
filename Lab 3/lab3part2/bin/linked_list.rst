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
                                    142 ;	src/linked_list.c:14: bool append_to_buffer_list(buffer_list_t *list, buffer_t *buffer)
                                    143 ;	-----------------------------------------
                                    144 ;	 function append_to_buffer_list
                                    145 ;	-----------------------------------------
      003B2E                        146 _append_to_buffer_list:
                           000007   147 	ar7 = 0x07
                           000006   148 	ar6 = 0x06
                           000005   149 	ar5 = 0x05
                           000004   150 	ar4 = 0x04
                           000003   151 	ar3 = 0x03
                           000002   152 	ar2 = 0x02
                           000001   153 	ar1 = 0x01
                           000000   154 	ar0 = 0x00
      003B2E AF F0            [24]  155 	mov	r7,b
      003B30 AE 83            [24]  156 	mov	r6,dph
      003B32 E5 82            [12]  157 	mov	a,dpl
      003B34 90 20 4D         [24]  158 	mov	dptr,#_append_to_buffer_list_list_65536_47
      003B37 F0               [24]  159 	movx	@dptr,a
      003B38 EE               [12]  160 	mov	a,r6
      003B39 A3               [24]  161 	inc	dptr
      003B3A F0               [24]  162 	movx	@dptr,a
      003B3B EF               [12]  163 	mov	a,r7
      003B3C A3               [24]  164 	inc	dptr
      003B3D F0               [24]  165 	movx	@dptr,a
                                    166 ;	src/linked_list.c:16: if (list->head == NULL) 
      003B3E 90 20 4D         [24]  167 	mov	dptr,#_append_to_buffer_list_list_65536_47
      003B41 E0               [24]  168 	movx	a,@dptr
      003B42 F5 1B            [12]  169 	mov	_append_to_buffer_list_sloc0_1_0,a
      003B44 A3               [24]  170 	inc	dptr
      003B45 E0               [24]  171 	movx	a,@dptr
      003B46 F5 1C            [12]  172 	mov	(_append_to_buffer_list_sloc0_1_0 + 1),a
      003B48 A3               [24]  173 	inc	dptr
      003B49 E0               [24]  174 	movx	a,@dptr
      003B4A F5 1D            [12]  175 	mov	(_append_to_buffer_list_sloc0_1_0 + 2),a
      003B4C 85 1B 82         [24]  176 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      003B4F 85 1C 83         [24]  177 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      003B52 85 1D F0         [24]  178 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      003B55 12 4F 9C         [24]  179 	lcall	__gptrget
      003B58 FA               [12]  180 	mov	r2,a
      003B59 A3               [24]  181 	inc	dptr
      003B5A 12 4F 9C         [24]  182 	lcall	__gptrget
      003B5D FB               [12]  183 	mov	r3,a
      003B5E A3               [24]  184 	inc	dptr
      003B5F 12 4F 9C         [24]  185 	lcall	__gptrget
      003B62 FC               [12]  186 	mov	r4,a
      003B63 EA               [12]  187 	mov	a,r2
      003B64 4B               [12]  188 	orl	a,r3
      003B65 70 24            [24]  189 	jnz	00105$
                                    190 ;	src/linked_list.c:18: list->head = buffer; 
      003B67 90 20 4A         [24]  191 	mov	dptr,#_append_to_buffer_list_PARM_2
      003B6A E0               [24]  192 	movx	a,@dptr
      003B6B F8               [12]  193 	mov	r0,a
      003B6C A3               [24]  194 	inc	dptr
      003B6D E0               [24]  195 	movx	a,@dptr
      003B6E F9               [12]  196 	mov	r1,a
      003B6F A3               [24]  197 	inc	dptr
      003B70 E0               [24]  198 	movx	a,@dptr
      003B71 FF               [12]  199 	mov	r7,a
      003B72 85 1B 82         [24]  200 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      003B75 85 1C 83         [24]  201 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      003B78 85 1D F0         [24]  202 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      003B7B E8               [12]  203 	mov	a,r0
      003B7C 12 43 42         [24]  204 	lcall	__gptrput
      003B7F A3               [24]  205 	inc	dptr
      003B80 E9               [12]  206 	mov	a,r1
      003B81 12 43 42         [24]  207 	lcall	__gptrput
      003B84 A3               [24]  208 	inc	dptr
      003B85 EF               [12]  209 	mov	a,r7
      003B86 12 43 42         [24]  210 	lcall	__gptrput
      003B89 80 61            [24]  211 	sjmp	00106$
      003B8B                        212 00105$:
                                    213 ;	src/linked_list.c:22: buffer_t *tail = list->head;
      003B8B 90 20 50         [24]  214 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      003B8E EA               [12]  215 	mov	a,r2
      003B8F F0               [24]  216 	movx	@dptr,a
      003B90 EB               [12]  217 	mov	a,r3
      003B91 A3               [24]  218 	inc	dptr
      003B92 F0               [24]  219 	movx	@dptr,a
      003B93 EC               [12]  220 	mov	a,r4
      003B94 A3               [24]  221 	inc	dptr
      003B95 F0               [24]  222 	movx	@dptr,a
                                    223 ;	src/linked_list.c:23: while(tail->next != NULL)
      003B96                        224 00101$:
      003B96 90 20 50         [24]  225 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      003B99 E0               [24]  226 	movx	a,@dptr
      003B9A FD               [12]  227 	mov	r5,a
      003B9B A3               [24]  228 	inc	dptr
      003B9C E0               [24]  229 	movx	a,@dptr
      003B9D FE               [12]  230 	mov	r6,a
      003B9E A3               [24]  231 	inc	dptr
      003B9F E0               [24]  232 	movx	a,@dptr
      003BA0 FF               [12]  233 	mov	r7,a
      003BA1 74 08            [12]  234 	mov	a,#0x08
      003BA3 2D               [12]  235 	add	a,r5
      003BA4 FD               [12]  236 	mov	r5,a
      003BA5 E4               [12]  237 	clr	a
      003BA6 3E               [12]  238 	addc	a,r6
      003BA7 FE               [12]  239 	mov	r6,a
      003BA8 8D 82            [24]  240 	mov	dpl,r5
      003BAA 8E 83            [24]  241 	mov	dph,r6
      003BAC 8F F0            [24]  242 	mov	b,r7
      003BAE 12 4F 9C         [24]  243 	lcall	__gptrget
      003BB1 FA               [12]  244 	mov	r2,a
      003BB2 A3               [24]  245 	inc	dptr
      003BB3 12 4F 9C         [24]  246 	lcall	__gptrget
      003BB6 FB               [12]  247 	mov	r3,a
      003BB7 A3               [24]  248 	inc	dptr
      003BB8 12 4F 9C         [24]  249 	lcall	__gptrget
      003BBB FC               [12]  250 	mov	r4,a
      003BBC EA               [12]  251 	mov	a,r2
      003BBD 4B               [12]  252 	orl	a,r3
      003BBE 60 0D            [24]  253 	jz	00103$
                                    254 ;	src/linked_list.c:25: tail = tail->next;
      003BC0 90 20 50         [24]  255 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      003BC3 EA               [12]  256 	mov	a,r2
      003BC4 F0               [24]  257 	movx	@dptr,a
      003BC5 EB               [12]  258 	mov	a,r3
      003BC6 A3               [24]  259 	inc	dptr
      003BC7 F0               [24]  260 	movx	@dptr,a
      003BC8 EC               [12]  261 	mov	a,r4
      003BC9 A3               [24]  262 	inc	dptr
      003BCA F0               [24]  263 	movx	@dptr,a
      003BCB 80 C9            [24]  264 	sjmp	00101$
      003BCD                        265 00103$:
                                    266 ;	src/linked_list.c:27: tail->next = buffer;
      003BCD 90 20 4A         [24]  267 	mov	dptr,#_append_to_buffer_list_PARM_2
      003BD0 E0               [24]  268 	movx	a,@dptr
      003BD1 FA               [12]  269 	mov	r2,a
      003BD2 A3               [24]  270 	inc	dptr
      003BD3 E0               [24]  271 	movx	a,@dptr
      003BD4 FB               [12]  272 	mov	r3,a
      003BD5 A3               [24]  273 	inc	dptr
      003BD6 E0               [24]  274 	movx	a,@dptr
      003BD7 FC               [12]  275 	mov	r4,a
      003BD8 8D 82            [24]  276 	mov	dpl,r5
      003BDA 8E 83            [24]  277 	mov	dph,r6
      003BDC 8F F0            [24]  278 	mov	b,r7
      003BDE EA               [12]  279 	mov	a,r2
      003BDF 12 43 42         [24]  280 	lcall	__gptrput
      003BE2 A3               [24]  281 	inc	dptr
      003BE3 EB               [12]  282 	mov	a,r3
      003BE4 12 43 42         [24]  283 	lcall	__gptrput
      003BE7 A3               [24]  284 	inc	dptr
      003BE8 EC               [12]  285 	mov	a,r4
      003BE9 12 43 42         [24]  286 	lcall	__gptrput
      003BEC                        287 00106$:
                                    288 ;	src/linked_list.c:29: buffer->next = NULL; 
      003BEC 90 20 4A         [24]  289 	mov	dptr,#_append_to_buffer_list_PARM_2
      003BEF E0               [24]  290 	movx	a,@dptr
      003BF0 FD               [12]  291 	mov	r5,a
      003BF1 A3               [24]  292 	inc	dptr
      003BF2 E0               [24]  293 	movx	a,@dptr
      003BF3 FE               [12]  294 	mov	r6,a
      003BF4 A3               [24]  295 	inc	dptr
      003BF5 E0               [24]  296 	movx	a,@dptr
      003BF6 FF               [12]  297 	mov	r7,a
      003BF7 74 08            [12]  298 	mov	a,#0x08
      003BF9 2D               [12]  299 	add	a,r5
      003BFA FD               [12]  300 	mov	r5,a
      003BFB E4               [12]  301 	clr	a
      003BFC 3E               [12]  302 	addc	a,r6
      003BFD FE               [12]  303 	mov	r6,a
      003BFE 8D 82            [24]  304 	mov	dpl,r5
      003C00 8E 83            [24]  305 	mov	dph,r6
      003C02 8F F0            [24]  306 	mov	b,r7
      003C04 E4               [12]  307 	clr	a
      003C05 12 43 42         [24]  308 	lcall	__gptrput
      003C08 A3               [24]  309 	inc	dptr
      003C09 12 43 42         [24]  310 	lcall	__gptrput
      003C0C A3               [24]  311 	inc	dptr
      003C0D 12 43 42         [24]  312 	lcall	__gptrput
                                    313 ;	src/linked_list.c:30: return true;
      003C10 75 82 01         [24]  314 	mov	dpl,#0x01
                                    315 ;	src/linked_list.c:31: }
      003C13 22               [24]  316 	ret
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
      003C14                        330 _remove_from_buffer_list:
      003C14 AF F0            [24]  331 	mov	r7,b
      003C16 AE 83            [24]  332 	mov	r6,dph
      003C18 E5 82            [12]  333 	mov	a,dpl
      003C1A 90 20 55         [24]  334 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      003C1D F0               [24]  335 	movx	@dptr,a
      003C1E EE               [12]  336 	mov	a,r6
      003C1F A3               [24]  337 	inc	dptr
      003C20 F0               [24]  338 	movx	@dptr,a
      003C21 EF               [12]  339 	mov	a,r7
      003C22 A3               [24]  340 	inc	dptr
      003C23 F0               [24]  341 	movx	@dptr,a
                                    342 ;	src/linked_list.c:36: if (list == NULL) return false;
      003C24 90 20 55         [24]  343 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      003C27 E0               [24]  344 	movx	a,@dptr
      003C28 F5 08            [12]  345 	mov	_remove_from_buffer_list_sloc0_1_0,a
      003C2A A3               [24]  346 	inc	dptr
      003C2B E0               [24]  347 	movx	a,@dptr
      003C2C F5 09            [12]  348 	mov	(_remove_from_buffer_list_sloc0_1_0 + 1),a
      003C2E A3               [24]  349 	inc	dptr
      003C2F E0               [24]  350 	movx	a,@dptr
      003C30 F5 0A            [12]  351 	mov	(_remove_from_buffer_list_sloc0_1_0 + 2),a
      003C32 E5 08            [12]  352 	mov	a,_remove_from_buffer_list_sloc0_1_0
      003C34 45 09            [12]  353 	orl	a,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003C36 70 03            [24]  354 	jnz	00102$
      003C38 F5 82            [12]  355 	mov	dpl,a
      003C3A 22               [24]  356 	ret
      003C3B                        357 00102$:
                                    358 ;	src/linked_list.c:37: if (list->head == NULL) return false;
      003C3B 85 08 82         [24]  359 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      003C3E 85 09 83         [24]  360 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003C41 85 0A F0         [24]  361 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      003C44 12 4F 9C         [24]  362 	lcall	__gptrget
      003C47 FA               [12]  363 	mov	r2,a
      003C48 A3               [24]  364 	inc	dptr
      003C49 12 4F 9C         [24]  365 	lcall	__gptrget
      003C4C FB               [12]  366 	mov	r3,a
      003C4D A3               [24]  367 	inc	dptr
      003C4E 12 4F 9C         [24]  368 	lcall	__gptrget
      003C51 FC               [12]  369 	mov	r4,a
      003C52 EA               [12]  370 	mov	a,r2
      003C53 4B               [12]  371 	orl	a,r3
      003C54 70 03            [24]  372 	jnz	00104$
      003C56 F5 82            [12]  373 	mov	dpl,a
      003C58 22               [24]  374 	ret
      003C59                        375 00104$:
                                    376 ;	src/linked_list.c:40: if (idx == 0)
      003C59 90 20 53         [24]  377 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003C5C E0               [24]  378 	movx	a,@dptr
      003C5D F8               [12]  379 	mov	r0,a
      003C5E A3               [24]  380 	inc	dptr
      003C5F E0               [24]  381 	movx	a,@dptr
      003C60 F9               [12]  382 	mov	r1,a
      003C61 90 20 53         [24]  383 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003C64 E0               [24]  384 	movx	a,@dptr
      003C65 F5 F0            [12]  385 	mov	b,a
      003C67 A3               [24]  386 	inc	dptr
      003C68 E0               [24]  387 	movx	a,@dptr
      003C69 45 F0            [12]  388 	orl	a,b
      003C6B 70 42            [24]  389 	jnz	00112$
                                    390 ;	src/linked_list.c:43: to_free = list->head;
      003C6D 90 20 58         [24]  391 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003C70 EA               [12]  392 	mov	a,r2
      003C71 F0               [24]  393 	movx	@dptr,a
      003C72 EB               [12]  394 	mov	a,r3
      003C73 A3               [24]  395 	inc	dptr
      003C74 F0               [24]  396 	movx	@dptr,a
      003C75 EC               [12]  397 	mov	a,r4
      003C76 A3               [24]  398 	inc	dptr
      003C77 F0               [24]  399 	movx	@dptr,a
                                    400 ;	src/linked_list.c:44: list->head = list->head->next;  
      003C78 74 08            [12]  401 	mov	a,#0x08
      003C7A 2A               [12]  402 	add	a,r2
      003C7B FD               [12]  403 	mov	r5,a
      003C7C E4               [12]  404 	clr	a
      003C7D 3B               [12]  405 	addc	a,r3
      003C7E FE               [12]  406 	mov	r6,a
      003C7F 8C 07            [24]  407 	mov	ar7,r4
      003C81 8D 82            [24]  408 	mov	dpl,r5
      003C83 8E 83            [24]  409 	mov	dph,r6
      003C85 8F F0            [24]  410 	mov	b,r7
      003C87 12 4F 9C         [24]  411 	lcall	__gptrget
      003C8A FD               [12]  412 	mov	r5,a
      003C8B A3               [24]  413 	inc	dptr
      003C8C 12 4F 9C         [24]  414 	lcall	__gptrget
      003C8F FE               [12]  415 	mov	r6,a
      003C90 A3               [24]  416 	inc	dptr
      003C91 12 4F 9C         [24]  417 	lcall	__gptrget
      003C94 FF               [12]  418 	mov	r7,a
      003C95 85 08 82         [24]  419 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      003C98 85 09 83         [24]  420 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      003C9B 85 0A F0         [24]  421 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      003C9E ED               [12]  422 	mov	a,r5
      003C9F 12 43 42         [24]  423 	lcall	__gptrput
      003CA2 A3               [24]  424 	inc	dptr
      003CA3 EE               [12]  425 	mov	a,r6
      003CA4 12 43 42         [24]  426 	lcall	__gptrput
      003CA7 A3               [24]  427 	inc	dptr
      003CA8 EF               [12]  428 	mov	a,r7
      003CA9 12 43 42         [24]  429 	lcall	__gptrput
      003CAC 02 3D 77         [24]  430 	ljmp	00113$
      003CAF                        431 00112$:
                                    432 ;	src/linked_list.c:48: buffer_t *prev = list->head;
      003CAF 90 20 5B         [24]  433 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      003CB2 EA               [12]  434 	mov	a,r2
      003CB3 F0               [24]  435 	movx	@dptr,a
      003CB4 EB               [12]  436 	mov	a,r3
      003CB5 A3               [24]  437 	inc	dptr
      003CB6 F0               [24]  438 	movx	@dptr,a
      003CB7 EC               [12]  439 	mov	a,r4
      003CB8 A3               [24]  440 	inc	dptr
      003CB9 F0               [24]  441 	movx	@dptr,a
                                    442 ;	src/linked_list.c:49: idx--;
      003CBA 18               [12]  443 	dec	r0
      003CBB B8 FF 01         [24]  444 	cjne	r0,#0xff,00160$
      003CBE 19               [12]  445 	dec	r1
      003CBF                        446 00160$:
      003CBF 90 20 53         [24]  447 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003CC2 E8               [12]  448 	mov	a,r0
      003CC3 F0               [24]  449 	movx	@dptr,a
      003CC4 E9               [12]  450 	mov	a,r1
      003CC5 A3               [24]  451 	inc	dptr
      003CC6 F0               [24]  452 	movx	@dptr,a
                                    453 ;	src/linked_list.c:50: while(idx > 0 && prev->next != NULL)
      003CC7 90 20 53         [24]  454 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003CCA E0               [24]  455 	movx	a,@dptr
      003CCB FE               [12]  456 	mov	r6,a
      003CCC A3               [24]  457 	inc	dptr
      003CCD E0               [24]  458 	movx	a,@dptr
      003CCE FF               [12]  459 	mov	r7,a
      003CCF                        460 00106$:
      003CCF EE               [12]  461 	mov	a,r6
      003CD0 4F               [12]  462 	orl	a,r7
      003CD1 60 3C            [24]  463 	jz	00108$
      003CD3 90 20 5B         [24]  464 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      003CD6 E0               [24]  465 	movx	a,@dptr
      003CD7 FB               [12]  466 	mov	r3,a
      003CD8 A3               [24]  467 	inc	dptr
      003CD9 E0               [24]  468 	movx	a,@dptr
      003CDA FC               [12]  469 	mov	r4,a
      003CDB A3               [24]  470 	inc	dptr
      003CDC E0               [24]  471 	movx	a,@dptr
      003CDD FD               [12]  472 	mov	r5,a
      003CDE 74 08            [12]  473 	mov	a,#0x08
      003CE0 2B               [12]  474 	add	a,r3
      003CE1 FB               [12]  475 	mov	r3,a
      003CE2 E4               [12]  476 	clr	a
      003CE3 3C               [12]  477 	addc	a,r4
      003CE4 FC               [12]  478 	mov	r4,a
      003CE5 8B 82            [24]  479 	mov	dpl,r3
      003CE7 8C 83            [24]  480 	mov	dph,r4
      003CE9 8D F0            [24]  481 	mov	b,r5
      003CEB 12 4F 9C         [24]  482 	lcall	__gptrget
      003CEE FB               [12]  483 	mov	r3,a
      003CEF A3               [24]  484 	inc	dptr
      003CF0 12 4F 9C         [24]  485 	lcall	__gptrget
      003CF3 FC               [12]  486 	mov	r4,a
      003CF4 A3               [24]  487 	inc	dptr
      003CF5 12 4F 9C         [24]  488 	lcall	__gptrget
      003CF8 FD               [12]  489 	mov	r5,a
      003CF9 EB               [12]  490 	mov	a,r3
      003CFA 4C               [12]  491 	orl	a,r4
      003CFB 60 12            [24]  492 	jz	00108$
                                    493 ;	src/linked_list.c:52: prev = prev->next;
      003CFD 90 20 5B         [24]  494 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      003D00 EB               [12]  495 	mov	a,r3
      003D01 F0               [24]  496 	movx	@dptr,a
      003D02 EC               [12]  497 	mov	a,r4
      003D03 A3               [24]  498 	inc	dptr
      003D04 F0               [24]  499 	movx	@dptr,a
      003D05 ED               [12]  500 	mov	a,r5
      003D06 A3               [24]  501 	inc	dptr
      003D07 F0               [24]  502 	movx	@dptr,a
                                    503 ;	src/linked_list.c:53: idx--;
      003D08 1E               [12]  504 	dec	r6
      003D09 BE FF 01         [24]  505 	cjne	r6,#0xff,00163$
      003D0C 1F               [12]  506 	dec	r7
      003D0D                        507 00163$:
      003D0D 80 C0            [24]  508 	sjmp	00106$
      003D0F                        509 00108$:
                                    510 ;	src/linked_list.c:56: if (idx != 0) return false;
      003D0F EE               [12]  511 	mov	a,r6
      003D10 4F               [12]  512 	orl	a,r7
      003D11 60 04            [24]  513 	jz	00110$
      003D13 75 82 00         [24]  514 	mov	dpl,#0x00
      003D16 22               [24]  515 	ret
      003D17                        516 00110$:
                                    517 ;	src/linked_list.c:57: to_free = prev->next;
      003D17 90 20 5B         [24]  518 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      003D1A E0               [24]  519 	movx	a,@dptr
      003D1B FD               [12]  520 	mov	r5,a
      003D1C A3               [24]  521 	inc	dptr
      003D1D E0               [24]  522 	movx	a,@dptr
      003D1E FE               [12]  523 	mov	r6,a
      003D1F A3               [24]  524 	inc	dptr
      003D20 E0               [24]  525 	movx	a,@dptr
      003D21 FF               [12]  526 	mov	r7,a
      003D22 74 08            [12]  527 	mov	a,#0x08
      003D24 2D               [12]  528 	add	a,r5
      003D25 FD               [12]  529 	mov	r5,a
      003D26 E4               [12]  530 	clr	a
      003D27 3E               [12]  531 	addc	a,r6
      003D28 FE               [12]  532 	mov	r6,a
      003D29 8D 82            [24]  533 	mov	dpl,r5
      003D2B 8E 83            [24]  534 	mov	dph,r6
      003D2D 8F F0            [24]  535 	mov	b,r7
      003D2F 12 4F 9C         [24]  536 	lcall	__gptrget
      003D32 FA               [12]  537 	mov	r2,a
      003D33 A3               [24]  538 	inc	dptr
      003D34 12 4F 9C         [24]  539 	lcall	__gptrget
      003D37 FB               [12]  540 	mov	r3,a
      003D38 A3               [24]  541 	inc	dptr
      003D39 12 4F 9C         [24]  542 	lcall	__gptrget
      003D3C FC               [12]  543 	mov	r4,a
      003D3D 90 20 58         [24]  544 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003D40 EA               [12]  545 	mov	a,r2
      003D41 F0               [24]  546 	movx	@dptr,a
      003D42 EB               [12]  547 	mov	a,r3
      003D43 A3               [24]  548 	inc	dptr
      003D44 F0               [24]  549 	movx	@dptr,a
      003D45 EC               [12]  550 	mov	a,r4
      003D46 A3               [24]  551 	inc	dptr
      003D47 F0               [24]  552 	movx	@dptr,a
                                    553 ;	src/linked_list.c:58: prev->next = to_free->next;
      003D48 74 08            [12]  554 	mov	a,#0x08
      003D4A 2A               [12]  555 	add	a,r2
      003D4B FA               [12]  556 	mov	r2,a
      003D4C E4               [12]  557 	clr	a
      003D4D 3B               [12]  558 	addc	a,r3
      003D4E FB               [12]  559 	mov	r3,a
      003D4F 8A 82            [24]  560 	mov	dpl,r2
      003D51 8B 83            [24]  561 	mov	dph,r3
      003D53 8C F0            [24]  562 	mov	b,r4
      003D55 12 4F 9C         [24]  563 	lcall	__gptrget
      003D58 FA               [12]  564 	mov	r2,a
      003D59 A3               [24]  565 	inc	dptr
      003D5A 12 4F 9C         [24]  566 	lcall	__gptrget
      003D5D FB               [12]  567 	mov	r3,a
      003D5E A3               [24]  568 	inc	dptr
      003D5F 12 4F 9C         [24]  569 	lcall	__gptrget
      003D62 FC               [12]  570 	mov	r4,a
      003D63 8D 82            [24]  571 	mov	dpl,r5
      003D65 8E 83            [24]  572 	mov	dph,r6
      003D67 8F F0            [24]  573 	mov	b,r7
      003D69 EA               [12]  574 	mov	a,r2
      003D6A 12 43 42         [24]  575 	lcall	__gptrput
      003D6D A3               [24]  576 	inc	dptr
      003D6E EB               [12]  577 	mov	a,r3
      003D6F 12 43 42         [24]  578 	lcall	__gptrput
      003D72 A3               [24]  579 	inc	dptr
      003D73 EC               [12]  580 	mov	a,r4
      003D74 12 43 42         [24]  581 	lcall	__gptrput
      003D77                        582 00113$:
                                    583 ;	src/linked_list.c:61: if (to_free == NULL) return false; 
      003D77 90 20 58         [24]  584 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003D7A E0               [24]  585 	movx	a,@dptr
      003D7B FE               [12]  586 	mov	r6,a
      003D7C A3               [24]  587 	inc	dptr
      003D7D E0               [24]  588 	movx	a,@dptr
      003D7E FD               [12]  589 	mov	r5,a
      003D7F A3               [24]  590 	inc	dptr
      003D80 E0               [24]  591 	movx	a,@dptr
      003D81 FF               [12]  592 	mov	r7,a
      003D82 90 20 58         [24]  593 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003D85 E0               [24]  594 	movx	a,@dptr
      003D86 F5 F0            [12]  595 	mov	b,a
      003D88 A3               [24]  596 	inc	dptr
      003D89 E0               [24]  597 	movx	a,@dptr
      003D8A 45 F0            [12]  598 	orl	a,b
      003D8C 70 03            [24]  599 	jnz	00115$
      003D8E F5 82            [12]  600 	mov	dpl,a
      003D90 22               [24]  601 	ret
      003D91                        602 00115$:
                                    603 ;	src/linked_list.c:62: if (to_free->buffer != NULL) 
      003D91 8E 82            [24]  604 	mov	dpl,r6
      003D93 8D 83            [24]  605 	mov	dph,r5
      003D95 8F F0            [24]  606 	mov	b,r7
      003D97 12 4F 9C         [24]  607 	lcall	__gptrget
      003D9A FE               [12]  608 	mov	r6,a
      003D9B A3               [24]  609 	inc	dptr
      003D9C 12 4F 9C         [24]  610 	lcall	__gptrget
      003D9F FF               [12]  611 	mov	r7,a
      003DA0 4E               [12]  612 	orl	a,r6
      003DA1 60 0B            [24]  613 	jz	00117$
                                    614 ;	src/linked_list.c:64: free(to_free->buffer);
      003DA3 7D 00            [12]  615 	mov	r5,#0x00
      003DA5 8E 82            [24]  616 	mov	dpl,r6
      003DA7 8F 83            [24]  617 	mov	dph,r7
      003DA9 8D F0            [24]  618 	mov	b,r5
      003DAB 12 40 2B         [24]  619 	lcall	_free
      003DAE                        620 00117$:
                                    621 ;	src/linked_list.c:66: free(to_free);
      003DAE 90 20 58         [24]  622 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      003DB1 E0               [24]  623 	movx	a,@dptr
      003DB2 FD               [12]  624 	mov	r5,a
      003DB3 A3               [24]  625 	inc	dptr
      003DB4 E0               [24]  626 	movx	a,@dptr
      003DB5 FE               [12]  627 	mov	r6,a
      003DB6 A3               [24]  628 	inc	dptr
      003DB7 E0               [24]  629 	movx	a,@dptr
      003DB8 FF               [12]  630 	mov	r7,a
      003DB9 8D 82            [24]  631 	mov	dpl,r5
      003DBB 8E 83            [24]  632 	mov	dph,r6
      003DBD 8F F0            [24]  633 	mov	b,r7
      003DBF 12 40 2B         [24]  634 	lcall	_free
                                    635 ;	src/linked_list.c:67: return true; 
      003DC2 75 82 01         [24]  636 	mov	dpl,#0x01
                                    637 ;	src/linked_list.c:68: }
      003DC5 22               [24]  638 	ret
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
      003DC6                        650 _free_all_elems_from_list:
      003DC6 AF F0            [24]  651 	mov	r7,b
      003DC8 AE 83            [24]  652 	mov	r6,dph
      003DCA E5 82            [12]  653 	mov	a,dpl
      003DCC 90 20 5E         [24]  654 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      003DCF F0               [24]  655 	movx	@dptr,a
      003DD0 EE               [12]  656 	mov	a,r6
      003DD1 A3               [24]  657 	inc	dptr
      003DD2 F0               [24]  658 	movx	@dptr,a
      003DD3 EF               [12]  659 	mov	a,r7
      003DD4 A3               [24]  660 	inc	dptr
      003DD5 F0               [24]  661 	movx	@dptr,a
                                    662 ;	src/linked_list.c:72: buffer_t *buffer_to_free = list->head;
      003DD6 90 20 5E         [24]  663 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      003DD9 E0               [24]  664 	movx	a,@dptr
      003DDA FD               [12]  665 	mov	r5,a
      003DDB A3               [24]  666 	inc	dptr
      003DDC E0               [24]  667 	movx	a,@dptr
      003DDD FE               [12]  668 	mov	r6,a
      003DDE A3               [24]  669 	inc	dptr
      003DDF E0               [24]  670 	movx	a,@dptr
      003DE0 FF               [12]  671 	mov	r7,a
      003DE1 8D 82            [24]  672 	mov	dpl,r5
      003DE3 8E 83            [24]  673 	mov	dph,r6
      003DE5 8F F0            [24]  674 	mov	b,r7
      003DE7 12 4F 9C         [24]  675 	lcall	__gptrget
      003DEA FA               [12]  676 	mov	r2,a
      003DEB A3               [24]  677 	inc	dptr
      003DEC 12 4F 9C         [24]  678 	lcall	__gptrget
      003DEF FB               [12]  679 	mov	r3,a
      003DF0 A3               [24]  680 	inc	dptr
      003DF1 12 4F 9C         [24]  681 	lcall	__gptrget
      003DF4 FC               [12]  682 	mov	r4,a
      003DF5 90 20 61         [24]  683 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      003DF8 EA               [12]  684 	mov	a,r2
      003DF9 F0               [24]  685 	movx	@dptr,a
      003DFA EB               [12]  686 	mov	a,r3
      003DFB A3               [24]  687 	inc	dptr
      003DFC F0               [24]  688 	movx	@dptr,a
      003DFD EC               [12]  689 	mov	a,r4
      003DFE A3               [24]  690 	inc	dptr
      003DFF F0               [24]  691 	movx	@dptr,a
                                    692 ;	src/linked_list.c:73: while(list->head != NULL)
      003E00                        693 00103$:
      003E00 90 20 5E         [24]  694 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      003E03 E0               [24]  695 	movx	a,@dptr
      003E04 FA               [12]  696 	mov	r2,a
      003E05 A3               [24]  697 	inc	dptr
      003E06 E0               [24]  698 	movx	a,@dptr
      003E07 FB               [12]  699 	mov	r3,a
      003E08 A3               [24]  700 	inc	dptr
      003E09 E0               [24]  701 	movx	a,@dptr
      003E0A FC               [12]  702 	mov	r4,a
      003E0B 8A 82            [24]  703 	mov	dpl,r2
      003E0D 8B 83            [24]  704 	mov	dph,r3
      003E0F 8C F0            [24]  705 	mov	b,r4
      003E11 12 4F 9C         [24]  706 	lcall	__gptrget
      003E14 F5 0B            [12]  707 	mov	_free_all_elems_from_list_sloc0_1_0,a
      003E16 A3               [24]  708 	inc	dptr
      003E17 12 4F 9C         [24]  709 	lcall	__gptrget
      003E1A F5 0C            [12]  710 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      003E1C A3               [24]  711 	inc	dptr
      003E1D 12 4F 9C         [24]  712 	lcall	__gptrget
      003E20 F5 0D            [12]  713 	mov	(_free_all_elems_from_list_sloc0_1_0 + 2),a
      003E22 E5 0B            [12]  714 	mov	a,_free_all_elems_from_list_sloc0_1_0
      003E24 45 0C            [12]  715 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003E26 70 01            [24]  716 	jnz	00120$
      003E28 22               [24]  717 	ret
      003E29                        718 00120$:
                                    719 ;	src/linked_list.c:75: list->head = list->head->next;
      003E29 C0 05            [24]  720 	push	ar5
      003E2B C0 06            [24]  721 	push	ar6
      003E2D C0 07            [24]  722 	push	ar7
      003E2F 74 08            [12]  723 	mov	a,#0x08
      003E31 25 0B            [12]  724 	add	a,_free_all_elems_from_list_sloc0_1_0
      003E33 F8               [12]  725 	mov	r0,a
      003E34 E4               [12]  726 	clr	a
      003E35 35 0C            [12]  727 	addc	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003E37 F9               [12]  728 	mov	r1,a
      003E38 AF 0D            [24]  729 	mov	r7,(_free_all_elems_from_list_sloc0_1_0 + 2)
      003E3A 88 82            [24]  730 	mov	dpl,r0
      003E3C 89 83            [24]  731 	mov	dph,r1
      003E3E 8F F0            [24]  732 	mov	b,r7
      003E40 12 4F 9C         [24]  733 	lcall	__gptrget
      003E43 F8               [12]  734 	mov	r0,a
      003E44 A3               [24]  735 	inc	dptr
      003E45 12 4F 9C         [24]  736 	lcall	__gptrget
      003E48 F9               [12]  737 	mov	r1,a
      003E49 A3               [24]  738 	inc	dptr
      003E4A 12 4F 9C         [24]  739 	lcall	__gptrget
      003E4D FF               [12]  740 	mov	r7,a
      003E4E 8A 82            [24]  741 	mov	dpl,r2
      003E50 8B 83            [24]  742 	mov	dph,r3
      003E52 8C F0            [24]  743 	mov	b,r4
      003E54 E8               [12]  744 	mov	a,r0
      003E55 12 43 42         [24]  745 	lcall	__gptrput
      003E58 A3               [24]  746 	inc	dptr
      003E59 E9               [12]  747 	mov	a,r1
      003E5A 12 43 42         [24]  748 	lcall	__gptrput
      003E5D A3               [24]  749 	inc	dptr
      003E5E EF               [12]  750 	mov	a,r7
      003E5F 12 43 42         [24]  751 	lcall	__gptrput
                                    752 ;	src/linked_list.c:76: if (buffer_to_free->buffer != NULL)
      003E62 90 20 61         [24]  753 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      003E65 E0               [24]  754 	movx	a,@dptr
      003E66 FD               [12]  755 	mov	r5,a
      003E67 A3               [24]  756 	inc	dptr
      003E68 E0               [24]  757 	movx	a,@dptr
      003E69 FE               [12]  758 	mov	r6,a
      003E6A A3               [24]  759 	inc	dptr
      003E6B E0               [24]  760 	movx	a,@dptr
      003E6C FF               [12]  761 	mov	r7,a
      003E6D 8D 82            [24]  762 	mov	dpl,r5
      003E6F 8E 83            [24]  763 	mov	dph,r6
      003E71 8F F0            [24]  764 	mov	b,r7
      003E73 12 4F 9C         [24]  765 	lcall	__gptrget
      003E76 F5 0B            [12]  766 	mov	_free_all_elems_from_list_sloc0_1_0,a
      003E78 A3               [24]  767 	inc	dptr
      003E79 12 4F 9C         [24]  768 	lcall	__gptrget
      003E7C F5 0C            [12]  769 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      003E7E D0 07            [24]  770 	pop	ar7
      003E80 D0 06            [24]  771 	pop	ar6
      003E82 D0 05            [24]  772 	pop	ar5
      003E84 E5 0B            [12]  773 	mov	a,_free_all_elems_from_list_sloc0_1_0
      003E86 45 0C            [12]  774 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003E88 60 1B            [24]  775 	jz	00102$
                                    776 ;	src/linked_list.c:78: free(buffer_to_free->buffer);
      003E8A AB 0B            [24]  777 	mov	r3,_free_all_elems_from_list_sloc0_1_0
      003E8C AC 0C            [24]  778 	mov	r4,(_free_all_elems_from_list_sloc0_1_0 + 1)
      003E8E 7A 00            [12]  779 	mov	r2,#0x00
      003E90 8B 82            [24]  780 	mov	dpl,r3
      003E92 8C 83            [24]  781 	mov	dph,r4
      003E94 8A F0            [24]  782 	mov	b,r2
      003E96 C0 07            [24]  783 	push	ar7
      003E98 C0 06            [24]  784 	push	ar6
      003E9A C0 05            [24]  785 	push	ar5
      003E9C 12 40 2B         [24]  786 	lcall	_free
      003E9F D0 05            [24]  787 	pop	ar5
      003EA1 D0 06            [24]  788 	pop	ar6
      003EA3 D0 07            [24]  789 	pop	ar7
      003EA5                        790 00102$:
                                    791 ;	src/linked_list.c:80: free(buffer_to_free);
      003EA5 90 20 61         [24]  792 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      003EA8 E0               [24]  793 	movx	a,@dptr
      003EA9 FA               [12]  794 	mov	r2,a
      003EAA A3               [24]  795 	inc	dptr
      003EAB E0               [24]  796 	movx	a,@dptr
      003EAC FB               [12]  797 	mov	r3,a
      003EAD A3               [24]  798 	inc	dptr
      003EAE E0               [24]  799 	movx	a,@dptr
      003EAF FC               [12]  800 	mov	r4,a
      003EB0 8A 82            [24]  801 	mov	dpl,r2
      003EB2 8B 83            [24]  802 	mov	dph,r3
      003EB4 8C F0            [24]  803 	mov	b,r4
      003EB6 C0 07            [24]  804 	push	ar7
      003EB8 C0 06            [24]  805 	push	ar6
      003EBA C0 05            [24]  806 	push	ar5
      003EBC 12 40 2B         [24]  807 	lcall	_free
      003EBF D0 05            [24]  808 	pop	ar5
      003EC1 D0 06            [24]  809 	pop	ar6
      003EC3 D0 07            [24]  810 	pop	ar7
                                    811 ;	src/linked_list.c:81: buffer_to_free = list->head;
      003EC5 8D 82            [24]  812 	mov	dpl,r5
      003EC7 8E 83            [24]  813 	mov	dph,r6
      003EC9 8F F0            [24]  814 	mov	b,r7
      003ECB 12 4F 9C         [24]  815 	lcall	__gptrget
      003ECE FA               [12]  816 	mov	r2,a
      003ECF A3               [24]  817 	inc	dptr
      003ED0 12 4F 9C         [24]  818 	lcall	__gptrget
      003ED3 FB               [12]  819 	mov	r3,a
      003ED4 A3               [24]  820 	inc	dptr
      003ED5 12 4F 9C         [24]  821 	lcall	__gptrget
      003ED8 FC               [12]  822 	mov	r4,a
      003ED9 90 20 61         [24]  823 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      003EDC EA               [12]  824 	mov	a,r2
      003EDD F0               [24]  825 	movx	@dptr,a
      003EDE EB               [12]  826 	mov	a,r3
      003EDF A3               [24]  827 	inc	dptr
      003EE0 F0               [24]  828 	movx	@dptr,a
      003EE1 EC               [12]  829 	mov	a,r4
      003EE2 A3               [24]  830 	inc	dptr
      003EE3 F0               [24]  831 	movx	@dptr,a
                                    832 ;	src/linked_list.c:83: }
      003EE4 02 3E 00         [24]  833 	ljmp	00103$
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
      003EE7                        845 _ll_length:
      003EE7 AF F0            [24]  846 	mov	r7,b
      003EE9 AE 83            [24]  847 	mov	r6,dph
      003EEB E5 82            [12]  848 	mov	a,dpl
      003EED 90 20 64         [24]  849 	mov	dptr,#_ll_length_list_65536_63
      003EF0 F0               [24]  850 	movx	@dptr,a
      003EF1 EE               [12]  851 	mov	a,r6
      003EF2 A3               [24]  852 	inc	dptr
      003EF3 F0               [24]  853 	movx	@dptr,a
      003EF4 EF               [12]  854 	mov	a,r7
      003EF5 A3               [24]  855 	inc	dptr
      003EF6 F0               [24]  856 	movx	@dptr,a
                                    857 ;	src/linked_list.c:88: buffer_t *curr = list->head;
      003EF7 90 20 64         [24]  858 	mov	dptr,#_ll_length_list_65536_63
      003EFA E0               [24]  859 	movx	a,@dptr
      003EFB FD               [12]  860 	mov	r5,a
      003EFC A3               [24]  861 	inc	dptr
      003EFD E0               [24]  862 	movx	a,@dptr
      003EFE FE               [12]  863 	mov	r6,a
      003EFF A3               [24]  864 	inc	dptr
      003F00 E0               [24]  865 	movx	a,@dptr
      003F01 FF               [12]  866 	mov	r7,a
      003F02 8D 82            [24]  867 	mov	dpl,r5
      003F04 8E 83            [24]  868 	mov	dph,r6
      003F06 8F F0            [24]  869 	mov	b,r7
      003F08 12 4F 9C         [24]  870 	lcall	__gptrget
      003F0B FD               [12]  871 	mov	r5,a
      003F0C A3               [24]  872 	inc	dptr
      003F0D 12 4F 9C         [24]  873 	lcall	__gptrget
      003F10 FE               [12]  874 	mov	r6,a
      003F11 A3               [24]  875 	inc	dptr
      003F12 12 4F 9C         [24]  876 	lcall	__gptrget
      003F15 FF               [12]  877 	mov	r7,a
      003F16 90 20 69         [24]  878 	mov	dptr,#_ll_length_curr_65536_64
      003F19 ED               [12]  879 	mov	a,r5
      003F1A F0               [24]  880 	movx	@dptr,a
      003F1B EE               [12]  881 	mov	a,r6
      003F1C A3               [24]  882 	inc	dptr
      003F1D F0               [24]  883 	movx	@dptr,a
      003F1E EF               [12]  884 	mov	a,r7
      003F1F A3               [24]  885 	inc	dptr
      003F20 F0               [24]  886 	movx	@dptr,a
                                    887 ;	src/linked_list.c:89: while(curr != NULL)
      003F21 90 20 67         [24]  888 	mov	dptr,#_ll_length_size_65536_64
      003F24 E0               [24]  889 	movx	a,@dptr
      003F25 FE               [12]  890 	mov	r6,a
      003F26 A3               [24]  891 	inc	dptr
      003F27 E0               [24]  892 	movx	a,@dptr
      003F28 FF               [12]  893 	mov	r7,a
      003F29                        894 00101$:
      003F29 90 20 69         [24]  895 	mov	dptr,#_ll_length_curr_65536_64
      003F2C E0               [24]  896 	movx	a,@dptr
      003F2D FB               [12]  897 	mov	r3,a
      003F2E A3               [24]  898 	inc	dptr
      003F2F E0               [24]  899 	movx	a,@dptr
      003F30 FC               [12]  900 	mov	r4,a
      003F31 A3               [24]  901 	inc	dptr
      003F32 E0               [24]  902 	movx	a,@dptr
      003F33 FD               [12]  903 	mov	r5,a
      003F34 90 20 69         [24]  904 	mov	dptr,#_ll_length_curr_65536_64
      003F37 E0               [24]  905 	movx	a,@dptr
      003F38 F5 F0            [12]  906 	mov	b,a
      003F3A A3               [24]  907 	inc	dptr
      003F3B E0               [24]  908 	movx	a,@dptr
      003F3C 45 F0            [12]  909 	orl	a,b
      003F3E 60 2D            [24]  910 	jz	00103$
                                    911 ;	src/linked_list.c:91: size++;
      003F40 0E               [12]  912 	inc	r6
      003F41 BE 00 01         [24]  913 	cjne	r6,#0x00,00116$
      003F44 0F               [12]  914 	inc	r7
      003F45                        915 00116$:
                                    916 ;	src/linked_list.c:92: curr = curr->next;
      003F45 74 08            [12]  917 	mov	a,#0x08
      003F47 2B               [12]  918 	add	a,r3
      003F48 FB               [12]  919 	mov	r3,a
      003F49 E4               [12]  920 	clr	a
      003F4A 3C               [12]  921 	addc	a,r4
      003F4B FC               [12]  922 	mov	r4,a
      003F4C 8B 82            [24]  923 	mov	dpl,r3
      003F4E 8C 83            [24]  924 	mov	dph,r4
      003F50 8D F0            [24]  925 	mov	b,r5
      003F52 12 4F 9C         [24]  926 	lcall	__gptrget
      003F55 FB               [12]  927 	mov	r3,a
      003F56 A3               [24]  928 	inc	dptr
      003F57 12 4F 9C         [24]  929 	lcall	__gptrget
      003F5A FC               [12]  930 	mov	r4,a
      003F5B A3               [24]  931 	inc	dptr
      003F5C 12 4F 9C         [24]  932 	lcall	__gptrget
      003F5F FD               [12]  933 	mov	r5,a
      003F60 90 20 69         [24]  934 	mov	dptr,#_ll_length_curr_65536_64
      003F63 EB               [12]  935 	mov	a,r3
      003F64 F0               [24]  936 	movx	@dptr,a
      003F65 EC               [12]  937 	mov	a,r4
      003F66 A3               [24]  938 	inc	dptr
      003F67 F0               [24]  939 	movx	@dptr,a
      003F68 ED               [12]  940 	mov	a,r5
      003F69 A3               [24]  941 	inc	dptr
      003F6A F0               [24]  942 	movx	@dptr,a
      003F6B 80 BC            [24]  943 	sjmp	00101$
      003F6D                        944 00103$:
                                    945 ;	src/linked_list.c:94: return size; 
      003F6D 8E 82            [24]  946 	mov	dpl,r6
      003F6F 8F 83            [24]  947 	mov	dph,r7
                                    948 ;	src/linked_list.c:95: }
      003F71 22               [24]  949 	ret
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
      003F72                        961 _ll_get_elem:
      003F72 AF F0            [24]  962 	mov	r7,b
      003F74 AE 83            [24]  963 	mov	r6,dph
      003F76 E5 82            [12]  964 	mov	a,dpl
      003F78 90 20 6E         [24]  965 	mov	dptr,#_ll_get_elem_list_65536_66
      003F7B F0               [24]  966 	movx	@dptr,a
      003F7C EE               [12]  967 	mov	a,r6
      003F7D A3               [24]  968 	inc	dptr
      003F7E F0               [24]  969 	movx	@dptr,a
      003F7F EF               [12]  970 	mov	a,r7
      003F80 A3               [24]  971 	inc	dptr
      003F81 F0               [24]  972 	movx	@dptr,a
                                    973 ;	src/linked_list.c:99: buffer_t *curr = list->head;
      003F82 90 20 6E         [24]  974 	mov	dptr,#_ll_get_elem_list_65536_66
      003F85 E0               [24]  975 	movx	a,@dptr
      003F86 FD               [12]  976 	mov	r5,a
      003F87 A3               [24]  977 	inc	dptr
      003F88 E0               [24]  978 	movx	a,@dptr
      003F89 FE               [12]  979 	mov	r6,a
      003F8A A3               [24]  980 	inc	dptr
      003F8B E0               [24]  981 	movx	a,@dptr
      003F8C FF               [12]  982 	mov	r7,a
      003F8D 8D 82            [24]  983 	mov	dpl,r5
      003F8F 8E 83            [24]  984 	mov	dph,r6
      003F91 8F F0            [24]  985 	mov	b,r7
      003F93 12 4F 9C         [24]  986 	lcall	__gptrget
      003F96 FD               [12]  987 	mov	r5,a
      003F97 A3               [24]  988 	inc	dptr
      003F98 12 4F 9C         [24]  989 	lcall	__gptrget
      003F9B FE               [12]  990 	mov	r6,a
      003F9C A3               [24]  991 	inc	dptr
      003F9D 12 4F 9C         [24]  992 	lcall	__gptrget
      003FA0 FF               [12]  993 	mov	r7,a
      003FA1 90 20 71         [24]  994 	mov	dptr,#_ll_get_elem_curr_65536_67
      003FA4 ED               [12]  995 	mov	a,r5
      003FA5 F0               [24]  996 	movx	@dptr,a
      003FA6 EE               [12]  997 	mov	a,r6
      003FA7 A3               [24]  998 	inc	dptr
      003FA8 F0               [24]  999 	movx	@dptr,a
      003FA9 EF               [12] 1000 	mov	a,r7
      003FAA A3               [24] 1001 	inc	dptr
      003FAB F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	src/linked_list.c:100: while(curr != NULL && elem_num > 0)
      003FAC 90 20 6C         [24] 1004 	mov	dptr,#_ll_get_elem_PARM_2
      003FAF E0               [24] 1005 	movx	a,@dptr
      003FB0 FE               [12] 1006 	mov	r6,a
      003FB1 A3               [24] 1007 	inc	dptr
      003FB2 E0               [24] 1008 	movx	a,@dptr
      003FB3 FF               [12] 1009 	mov	r7,a
      003FB4                       1010 00102$:
      003FB4 90 20 71         [24] 1011 	mov	dptr,#_ll_get_elem_curr_65536_67
      003FB7 E0               [24] 1012 	movx	a,@dptr
      003FB8 FB               [12] 1013 	mov	r3,a
      003FB9 A3               [24] 1014 	inc	dptr
      003FBA E0               [24] 1015 	movx	a,@dptr
      003FBB FC               [12] 1016 	mov	r4,a
      003FBC A3               [24] 1017 	inc	dptr
      003FBD E0               [24] 1018 	movx	a,@dptr
      003FBE FD               [12] 1019 	mov	r5,a
      003FBF 90 20 71         [24] 1020 	mov	dptr,#_ll_get_elem_curr_65536_67
      003FC2 E0               [24] 1021 	movx	a,@dptr
      003FC3 F5 F0            [12] 1022 	mov	b,a
      003FC5 A3               [24] 1023 	inc	dptr
      003FC6 E0               [24] 1024 	movx	a,@dptr
      003FC7 45 F0            [12] 1025 	orl	a,b
      003FC9 60 31            [24] 1026 	jz	00104$
      003FCB EE               [12] 1027 	mov	a,r6
      003FCC 4F               [12] 1028 	orl	a,r7
      003FCD 60 2D            [24] 1029 	jz	00104$
                                   1030 ;	src/linked_list.c:102: curr = curr->next;
      003FCF 74 08            [12] 1031 	mov	a,#0x08
      003FD1 2B               [12] 1032 	add	a,r3
      003FD2 FB               [12] 1033 	mov	r3,a
      003FD3 E4               [12] 1034 	clr	a
      003FD4 3C               [12] 1035 	addc	a,r4
      003FD5 FC               [12] 1036 	mov	r4,a
      003FD6 8B 82            [24] 1037 	mov	dpl,r3
      003FD8 8C 83            [24] 1038 	mov	dph,r4
      003FDA 8D F0            [24] 1039 	mov	b,r5
      003FDC 12 4F 9C         [24] 1040 	lcall	__gptrget
      003FDF FB               [12] 1041 	mov	r3,a
      003FE0 A3               [24] 1042 	inc	dptr
      003FE1 12 4F 9C         [24] 1043 	lcall	__gptrget
      003FE4 FC               [12] 1044 	mov	r4,a
      003FE5 A3               [24] 1045 	inc	dptr
      003FE6 12 4F 9C         [24] 1046 	lcall	__gptrget
      003FE9 FD               [12] 1047 	mov	r5,a
      003FEA 90 20 71         [24] 1048 	mov	dptr,#_ll_get_elem_curr_65536_67
      003FED EB               [12] 1049 	mov	a,r3
      003FEE F0               [24] 1050 	movx	@dptr,a
      003FEF EC               [12] 1051 	mov	a,r4
      003FF0 A3               [24] 1052 	inc	dptr
      003FF1 F0               [24] 1053 	movx	@dptr,a
      003FF2 ED               [12] 1054 	mov	a,r5
      003FF3 A3               [24] 1055 	inc	dptr
      003FF4 F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	src/linked_list.c:103: elem_num--;
      003FF5 1E               [12] 1058 	dec	r6
      003FF6 BE FF 01         [24] 1059 	cjne	r6,#0xff,00122$
      003FF9 1F               [12] 1060 	dec	r7
      003FFA                       1061 00122$:
      003FFA 80 B8            [24] 1062 	sjmp	00102$
      003FFC                       1063 00104$:
                                   1064 ;	src/linked_list.c:105: return curr;
      003FFC 90 20 71         [24] 1065 	mov	dptr,#_ll_get_elem_curr_65536_67
      003FFF E0               [24] 1066 	movx	a,@dptr
      004000 FD               [12] 1067 	mov	r5,a
      004001 A3               [24] 1068 	inc	dptr
      004002 E0               [24] 1069 	movx	a,@dptr
      004003 FE               [12] 1070 	mov	r6,a
      004004 A3               [24] 1071 	inc	dptr
      004005 E0               [24] 1072 	movx	a,@dptr
      004006 FF               [12] 1073 	mov	r7,a
      004007 8D 82            [24] 1074 	mov	dpl,r5
      004009 8E 83            [24] 1075 	mov	dph,r6
      00400B 8F F0            [24] 1076 	mov	b,r7
                                   1077 ;	src/linked_list.c:106: }
      00400D 22               [24] 1078 	ret
                                   1079 	.area CSEG    (CODE)
                                   1080 	.area CONST   (CODE)
                                   1081 	.area XINIT   (CODE)
                                   1082 	.area CABS    (ABS,CODE)
