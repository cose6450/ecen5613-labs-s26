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
      002028                         70 _append_to_buffer_list_PARM_2:
      002028                         71 	.ds 3
      00202B                         72 _append_to_buffer_list_list_65536_47:
      00202B                         73 	.ds 3
      00202E                         74 _append_to_buffer_list_tail_131072_50:
      00202E                         75 	.ds 3
      002031                         76 _remove_from_buffer_list_PARM_2:
      002031                         77 	.ds 2
      002033                         78 _remove_from_buffer_list_list_65536_52:
      002033                         79 	.ds 3
      002036                         80 _remove_from_buffer_list_to_free_65537_54:
      002036                         81 	.ds 3
      002039                         82 _remove_from_buffer_list_prev_131073_56:
      002039                         83 	.ds 3
      00203C                         84 _free_all_elems_from_list_list_65536_59:
      00203C                         85 	.ds 3
      00203F                         86 _free_all_elems_from_list_buffer_to_free_65536_60:
      00203F                         87 	.ds 3
      002042                         88 _ll_length_list_65536_63:
      002042                         89 	.ds 3
      002045                         90 _ll_length_size_65536_64:
      002045                         91 	.ds 2
      002047                         92 _ll_length_curr_65536_64:
      002047                         93 	.ds 3
      00204A                         94 _ll_get_elem_PARM_2:
      00204A                         95 	.ds 2
      00204C                         96 _ll_get_elem_list_65536_66:
      00204C                         97 	.ds 3
      00204F                         98 _ll_get_elem_curr_65536_67:
      00204F                         99 	.ds 3
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
      0028B7                        146 _append_to_buffer_list:
                           000007   147 	ar7 = 0x07
                           000006   148 	ar6 = 0x06
                           000005   149 	ar5 = 0x05
                           000004   150 	ar4 = 0x04
                           000003   151 	ar3 = 0x03
                           000002   152 	ar2 = 0x02
                           000001   153 	ar1 = 0x01
                           000000   154 	ar0 = 0x00
      0028B7 AF F0            [24]  155 	mov	r7,b
      0028B9 AE 83            [24]  156 	mov	r6,dph
      0028BB E5 82            [12]  157 	mov	a,dpl
      0028BD 90 20 2B         [24]  158 	mov	dptr,#_append_to_buffer_list_list_65536_47
      0028C0 F0               [24]  159 	movx	@dptr,a
      0028C1 EE               [12]  160 	mov	a,r6
      0028C2 A3               [24]  161 	inc	dptr
      0028C3 F0               [24]  162 	movx	@dptr,a
      0028C4 EF               [12]  163 	mov	a,r7
      0028C5 A3               [24]  164 	inc	dptr
      0028C6 F0               [24]  165 	movx	@dptr,a
                                    166 ;	src/linked_list.c:16: if (list->head == NULL) 
      0028C7 90 20 2B         [24]  167 	mov	dptr,#_append_to_buffer_list_list_65536_47
      0028CA E0               [24]  168 	movx	a,@dptr
      0028CB F5 1B            [12]  169 	mov	_append_to_buffer_list_sloc0_1_0,a
      0028CD A3               [24]  170 	inc	dptr
      0028CE E0               [24]  171 	movx	a,@dptr
      0028CF F5 1C            [12]  172 	mov	(_append_to_buffer_list_sloc0_1_0 + 1),a
      0028D1 A3               [24]  173 	inc	dptr
      0028D2 E0               [24]  174 	movx	a,@dptr
      0028D3 F5 1D            [12]  175 	mov	(_append_to_buffer_list_sloc0_1_0 + 2),a
      0028D5 85 1B 82         [24]  176 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      0028D8 85 1C 83         [24]  177 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      0028DB 85 1D F0         [24]  178 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      0028DE 12 3E C2         [24]  179 	lcall	__gptrget
      0028E1 FA               [12]  180 	mov	r2,a
      0028E2 A3               [24]  181 	inc	dptr
      0028E3 12 3E C2         [24]  182 	lcall	__gptrget
      0028E6 FB               [12]  183 	mov	r3,a
      0028E7 A3               [24]  184 	inc	dptr
      0028E8 12 3E C2         [24]  185 	lcall	__gptrget
      0028EB FC               [12]  186 	mov	r4,a
      0028EC EA               [12]  187 	mov	a,r2
      0028ED 4B               [12]  188 	orl	a,r3
      0028EE 70 24            [24]  189 	jnz	00105$
                                    190 ;	src/linked_list.c:18: list->head = buffer; 
      0028F0 90 20 28         [24]  191 	mov	dptr,#_append_to_buffer_list_PARM_2
      0028F3 E0               [24]  192 	movx	a,@dptr
      0028F4 F8               [12]  193 	mov	r0,a
      0028F5 A3               [24]  194 	inc	dptr
      0028F6 E0               [24]  195 	movx	a,@dptr
      0028F7 F9               [12]  196 	mov	r1,a
      0028F8 A3               [24]  197 	inc	dptr
      0028F9 E0               [24]  198 	movx	a,@dptr
      0028FA FF               [12]  199 	mov	r7,a
      0028FB 85 1B 82         [24]  200 	mov	dpl,_append_to_buffer_list_sloc0_1_0
      0028FE 85 1C 83         [24]  201 	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
      002901 85 1D F0         [24]  202 	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
      002904 E8               [12]  203 	mov	a,r0
      002905 12 32 68         [24]  204 	lcall	__gptrput
      002908 A3               [24]  205 	inc	dptr
      002909 E9               [12]  206 	mov	a,r1
      00290A 12 32 68         [24]  207 	lcall	__gptrput
      00290D A3               [24]  208 	inc	dptr
      00290E EF               [12]  209 	mov	a,r7
      00290F 12 32 68         [24]  210 	lcall	__gptrput
      002912 80 61            [24]  211 	sjmp	00106$
      002914                        212 00105$:
                                    213 ;	src/linked_list.c:22: buffer_t *tail = list->head;
      002914 90 20 2E         [24]  214 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      002917 EA               [12]  215 	mov	a,r2
      002918 F0               [24]  216 	movx	@dptr,a
      002919 EB               [12]  217 	mov	a,r3
      00291A A3               [24]  218 	inc	dptr
      00291B F0               [24]  219 	movx	@dptr,a
      00291C EC               [12]  220 	mov	a,r4
      00291D A3               [24]  221 	inc	dptr
      00291E F0               [24]  222 	movx	@dptr,a
                                    223 ;	src/linked_list.c:23: while(tail->next != NULL)
      00291F                        224 00101$:
      00291F 90 20 2E         [24]  225 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      002922 E0               [24]  226 	movx	a,@dptr
      002923 FD               [12]  227 	mov	r5,a
      002924 A3               [24]  228 	inc	dptr
      002925 E0               [24]  229 	movx	a,@dptr
      002926 FE               [12]  230 	mov	r6,a
      002927 A3               [24]  231 	inc	dptr
      002928 E0               [24]  232 	movx	a,@dptr
      002929 FF               [12]  233 	mov	r7,a
      00292A 74 08            [12]  234 	mov	a,#0x08
      00292C 2D               [12]  235 	add	a,r5
      00292D FD               [12]  236 	mov	r5,a
      00292E E4               [12]  237 	clr	a
      00292F 3E               [12]  238 	addc	a,r6
      002930 FE               [12]  239 	mov	r6,a
      002931 8D 82            [24]  240 	mov	dpl,r5
      002933 8E 83            [24]  241 	mov	dph,r6
      002935 8F F0            [24]  242 	mov	b,r7
      002937 12 3E C2         [24]  243 	lcall	__gptrget
      00293A FA               [12]  244 	mov	r2,a
      00293B A3               [24]  245 	inc	dptr
      00293C 12 3E C2         [24]  246 	lcall	__gptrget
      00293F FB               [12]  247 	mov	r3,a
      002940 A3               [24]  248 	inc	dptr
      002941 12 3E C2         [24]  249 	lcall	__gptrget
      002944 FC               [12]  250 	mov	r4,a
      002945 EA               [12]  251 	mov	a,r2
      002946 4B               [12]  252 	orl	a,r3
      002947 60 0D            [24]  253 	jz	00103$
                                    254 ;	src/linked_list.c:25: tail = tail->next;
      002949 90 20 2E         [24]  255 	mov	dptr,#_append_to_buffer_list_tail_131072_50
      00294C EA               [12]  256 	mov	a,r2
      00294D F0               [24]  257 	movx	@dptr,a
      00294E EB               [12]  258 	mov	a,r3
      00294F A3               [24]  259 	inc	dptr
      002950 F0               [24]  260 	movx	@dptr,a
      002951 EC               [12]  261 	mov	a,r4
      002952 A3               [24]  262 	inc	dptr
      002953 F0               [24]  263 	movx	@dptr,a
      002954 80 C9            [24]  264 	sjmp	00101$
      002956                        265 00103$:
                                    266 ;	src/linked_list.c:27: tail->next = buffer;
      002956 90 20 28         [24]  267 	mov	dptr,#_append_to_buffer_list_PARM_2
      002959 E0               [24]  268 	movx	a,@dptr
      00295A FA               [12]  269 	mov	r2,a
      00295B A3               [24]  270 	inc	dptr
      00295C E0               [24]  271 	movx	a,@dptr
      00295D FB               [12]  272 	mov	r3,a
      00295E A3               [24]  273 	inc	dptr
      00295F E0               [24]  274 	movx	a,@dptr
      002960 FC               [12]  275 	mov	r4,a
      002961 8D 82            [24]  276 	mov	dpl,r5
      002963 8E 83            [24]  277 	mov	dph,r6
      002965 8F F0            [24]  278 	mov	b,r7
      002967 EA               [12]  279 	mov	a,r2
      002968 12 32 68         [24]  280 	lcall	__gptrput
      00296B A3               [24]  281 	inc	dptr
      00296C EB               [12]  282 	mov	a,r3
      00296D 12 32 68         [24]  283 	lcall	__gptrput
      002970 A3               [24]  284 	inc	dptr
      002971 EC               [12]  285 	mov	a,r4
      002972 12 32 68         [24]  286 	lcall	__gptrput
      002975                        287 00106$:
                                    288 ;	src/linked_list.c:29: buffer->next = NULL; 
      002975 90 20 28         [24]  289 	mov	dptr,#_append_to_buffer_list_PARM_2
      002978 E0               [24]  290 	movx	a,@dptr
      002979 FD               [12]  291 	mov	r5,a
      00297A A3               [24]  292 	inc	dptr
      00297B E0               [24]  293 	movx	a,@dptr
      00297C FE               [12]  294 	mov	r6,a
      00297D A3               [24]  295 	inc	dptr
      00297E E0               [24]  296 	movx	a,@dptr
      00297F FF               [12]  297 	mov	r7,a
      002980 74 08            [12]  298 	mov	a,#0x08
      002982 2D               [12]  299 	add	a,r5
      002983 FD               [12]  300 	mov	r5,a
      002984 E4               [12]  301 	clr	a
      002985 3E               [12]  302 	addc	a,r6
      002986 FE               [12]  303 	mov	r6,a
      002987 8D 82            [24]  304 	mov	dpl,r5
      002989 8E 83            [24]  305 	mov	dph,r6
      00298B 8F F0            [24]  306 	mov	b,r7
      00298D E4               [12]  307 	clr	a
      00298E 12 32 68         [24]  308 	lcall	__gptrput
      002991 A3               [24]  309 	inc	dptr
      002992 12 32 68         [24]  310 	lcall	__gptrput
      002995 A3               [24]  311 	inc	dptr
      002996 12 32 68         [24]  312 	lcall	__gptrput
                                    313 ;	src/linked_list.c:30: return true;
      002999 75 82 01         [24]  314 	mov	dpl,#0x01
                                    315 ;	src/linked_list.c:31: }
      00299C 22               [24]  316 	ret
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
      00299D                        330 _remove_from_buffer_list:
      00299D AF F0            [24]  331 	mov	r7,b
      00299F AE 83            [24]  332 	mov	r6,dph
      0029A1 E5 82            [12]  333 	mov	a,dpl
      0029A3 90 20 33         [24]  334 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      0029A6 F0               [24]  335 	movx	@dptr,a
      0029A7 EE               [12]  336 	mov	a,r6
      0029A8 A3               [24]  337 	inc	dptr
      0029A9 F0               [24]  338 	movx	@dptr,a
      0029AA EF               [12]  339 	mov	a,r7
      0029AB A3               [24]  340 	inc	dptr
      0029AC F0               [24]  341 	movx	@dptr,a
                                    342 ;	src/linked_list.c:36: if (list == NULL) return false;
      0029AD 90 20 33         [24]  343 	mov	dptr,#_remove_from_buffer_list_list_65536_52
      0029B0 E0               [24]  344 	movx	a,@dptr
      0029B1 F5 08            [12]  345 	mov	_remove_from_buffer_list_sloc0_1_0,a
      0029B3 A3               [24]  346 	inc	dptr
      0029B4 E0               [24]  347 	movx	a,@dptr
      0029B5 F5 09            [12]  348 	mov	(_remove_from_buffer_list_sloc0_1_0 + 1),a
      0029B7 A3               [24]  349 	inc	dptr
      0029B8 E0               [24]  350 	movx	a,@dptr
      0029B9 F5 0A            [12]  351 	mov	(_remove_from_buffer_list_sloc0_1_0 + 2),a
      0029BB E5 08            [12]  352 	mov	a,_remove_from_buffer_list_sloc0_1_0
      0029BD 45 09            [12]  353 	orl	a,(_remove_from_buffer_list_sloc0_1_0 + 1)
      0029BF 70 03            [24]  354 	jnz	00102$
      0029C1 F5 82            [12]  355 	mov	dpl,a
      0029C3 22               [24]  356 	ret
      0029C4                        357 00102$:
                                    358 ;	src/linked_list.c:37: if (list->head == NULL) return false;
      0029C4 85 08 82         [24]  359 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      0029C7 85 09 83         [24]  360 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      0029CA 85 0A F0         [24]  361 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      0029CD 12 3E C2         [24]  362 	lcall	__gptrget
      0029D0 FA               [12]  363 	mov	r2,a
      0029D1 A3               [24]  364 	inc	dptr
      0029D2 12 3E C2         [24]  365 	lcall	__gptrget
      0029D5 FB               [12]  366 	mov	r3,a
      0029D6 A3               [24]  367 	inc	dptr
      0029D7 12 3E C2         [24]  368 	lcall	__gptrget
      0029DA FC               [12]  369 	mov	r4,a
      0029DB EA               [12]  370 	mov	a,r2
      0029DC 4B               [12]  371 	orl	a,r3
      0029DD 70 03            [24]  372 	jnz	00104$
      0029DF F5 82            [12]  373 	mov	dpl,a
      0029E1 22               [24]  374 	ret
      0029E2                        375 00104$:
                                    376 ;	src/linked_list.c:40: if (idx == 0)
      0029E2 90 20 31         [24]  377 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0029E5 E0               [24]  378 	movx	a,@dptr
      0029E6 F8               [12]  379 	mov	r0,a
      0029E7 A3               [24]  380 	inc	dptr
      0029E8 E0               [24]  381 	movx	a,@dptr
      0029E9 F9               [12]  382 	mov	r1,a
      0029EA 90 20 31         [24]  383 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0029ED E0               [24]  384 	movx	a,@dptr
      0029EE F5 F0            [12]  385 	mov	b,a
      0029F0 A3               [24]  386 	inc	dptr
      0029F1 E0               [24]  387 	movx	a,@dptr
      0029F2 45 F0            [12]  388 	orl	a,b
      0029F4 70 42            [24]  389 	jnz	00112$
                                    390 ;	src/linked_list.c:43: to_free = list->head;
      0029F6 90 20 36         [24]  391 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      0029F9 EA               [12]  392 	mov	a,r2
      0029FA F0               [24]  393 	movx	@dptr,a
      0029FB EB               [12]  394 	mov	a,r3
      0029FC A3               [24]  395 	inc	dptr
      0029FD F0               [24]  396 	movx	@dptr,a
      0029FE EC               [12]  397 	mov	a,r4
      0029FF A3               [24]  398 	inc	dptr
      002A00 F0               [24]  399 	movx	@dptr,a
                                    400 ;	src/linked_list.c:44: list->head = list->head->next;  
      002A01 74 08            [12]  401 	mov	a,#0x08
      002A03 2A               [12]  402 	add	a,r2
      002A04 FD               [12]  403 	mov	r5,a
      002A05 E4               [12]  404 	clr	a
      002A06 3B               [12]  405 	addc	a,r3
      002A07 FE               [12]  406 	mov	r6,a
      002A08 8C 07            [24]  407 	mov	ar7,r4
      002A0A 8D 82            [24]  408 	mov	dpl,r5
      002A0C 8E 83            [24]  409 	mov	dph,r6
      002A0E 8F F0            [24]  410 	mov	b,r7
      002A10 12 3E C2         [24]  411 	lcall	__gptrget
      002A13 FD               [12]  412 	mov	r5,a
      002A14 A3               [24]  413 	inc	dptr
      002A15 12 3E C2         [24]  414 	lcall	__gptrget
      002A18 FE               [12]  415 	mov	r6,a
      002A19 A3               [24]  416 	inc	dptr
      002A1A 12 3E C2         [24]  417 	lcall	__gptrget
      002A1D FF               [12]  418 	mov	r7,a
      002A1E 85 08 82         [24]  419 	mov	dpl,_remove_from_buffer_list_sloc0_1_0
      002A21 85 09 83         [24]  420 	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
      002A24 85 0A F0         [24]  421 	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
      002A27 ED               [12]  422 	mov	a,r5
      002A28 12 32 68         [24]  423 	lcall	__gptrput
      002A2B A3               [24]  424 	inc	dptr
      002A2C EE               [12]  425 	mov	a,r6
      002A2D 12 32 68         [24]  426 	lcall	__gptrput
      002A30 A3               [24]  427 	inc	dptr
      002A31 EF               [12]  428 	mov	a,r7
      002A32 12 32 68         [24]  429 	lcall	__gptrput
      002A35 02 2B 00         [24]  430 	ljmp	00113$
      002A38                        431 00112$:
                                    432 ;	src/linked_list.c:48: buffer_t *prev = list->head;
      002A38 90 20 39         [24]  433 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      002A3B EA               [12]  434 	mov	a,r2
      002A3C F0               [24]  435 	movx	@dptr,a
      002A3D EB               [12]  436 	mov	a,r3
      002A3E A3               [24]  437 	inc	dptr
      002A3F F0               [24]  438 	movx	@dptr,a
      002A40 EC               [12]  439 	mov	a,r4
      002A41 A3               [24]  440 	inc	dptr
      002A42 F0               [24]  441 	movx	@dptr,a
                                    442 ;	src/linked_list.c:49: idx--;
      002A43 18               [12]  443 	dec	r0
      002A44 B8 FF 01         [24]  444 	cjne	r0,#0xff,00160$
      002A47 19               [12]  445 	dec	r1
      002A48                        446 00160$:
      002A48 90 20 31         [24]  447 	mov	dptr,#_remove_from_buffer_list_PARM_2
      002A4B E8               [12]  448 	mov	a,r0
      002A4C F0               [24]  449 	movx	@dptr,a
      002A4D E9               [12]  450 	mov	a,r1
      002A4E A3               [24]  451 	inc	dptr
      002A4F F0               [24]  452 	movx	@dptr,a
                                    453 ;	src/linked_list.c:50: while(idx > 0 && prev->next != NULL)
      002A50 90 20 31         [24]  454 	mov	dptr,#_remove_from_buffer_list_PARM_2
      002A53 E0               [24]  455 	movx	a,@dptr
      002A54 FE               [12]  456 	mov	r6,a
      002A55 A3               [24]  457 	inc	dptr
      002A56 E0               [24]  458 	movx	a,@dptr
      002A57 FF               [12]  459 	mov	r7,a
      002A58                        460 00106$:
      002A58 EE               [12]  461 	mov	a,r6
      002A59 4F               [12]  462 	orl	a,r7
      002A5A 60 3C            [24]  463 	jz	00108$
      002A5C 90 20 39         [24]  464 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      002A5F E0               [24]  465 	movx	a,@dptr
      002A60 FB               [12]  466 	mov	r3,a
      002A61 A3               [24]  467 	inc	dptr
      002A62 E0               [24]  468 	movx	a,@dptr
      002A63 FC               [12]  469 	mov	r4,a
      002A64 A3               [24]  470 	inc	dptr
      002A65 E0               [24]  471 	movx	a,@dptr
      002A66 FD               [12]  472 	mov	r5,a
      002A67 74 08            [12]  473 	mov	a,#0x08
      002A69 2B               [12]  474 	add	a,r3
      002A6A FB               [12]  475 	mov	r3,a
      002A6B E4               [12]  476 	clr	a
      002A6C 3C               [12]  477 	addc	a,r4
      002A6D FC               [12]  478 	mov	r4,a
      002A6E 8B 82            [24]  479 	mov	dpl,r3
      002A70 8C 83            [24]  480 	mov	dph,r4
      002A72 8D F0            [24]  481 	mov	b,r5
      002A74 12 3E C2         [24]  482 	lcall	__gptrget
      002A77 FB               [12]  483 	mov	r3,a
      002A78 A3               [24]  484 	inc	dptr
      002A79 12 3E C2         [24]  485 	lcall	__gptrget
      002A7C FC               [12]  486 	mov	r4,a
      002A7D A3               [24]  487 	inc	dptr
      002A7E 12 3E C2         [24]  488 	lcall	__gptrget
      002A81 FD               [12]  489 	mov	r5,a
      002A82 EB               [12]  490 	mov	a,r3
      002A83 4C               [12]  491 	orl	a,r4
      002A84 60 12            [24]  492 	jz	00108$
                                    493 ;	src/linked_list.c:52: prev = prev->next;
      002A86 90 20 39         [24]  494 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      002A89 EB               [12]  495 	mov	a,r3
      002A8A F0               [24]  496 	movx	@dptr,a
      002A8B EC               [12]  497 	mov	a,r4
      002A8C A3               [24]  498 	inc	dptr
      002A8D F0               [24]  499 	movx	@dptr,a
      002A8E ED               [12]  500 	mov	a,r5
      002A8F A3               [24]  501 	inc	dptr
      002A90 F0               [24]  502 	movx	@dptr,a
                                    503 ;	src/linked_list.c:53: idx--;
      002A91 1E               [12]  504 	dec	r6
      002A92 BE FF 01         [24]  505 	cjne	r6,#0xff,00163$
      002A95 1F               [12]  506 	dec	r7
      002A96                        507 00163$:
      002A96 80 C0            [24]  508 	sjmp	00106$
      002A98                        509 00108$:
                                    510 ;	src/linked_list.c:56: if (idx != 0) return false;
      002A98 EE               [12]  511 	mov	a,r6
      002A99 4F               [12]  512 	orl	a,r7
      002A9A 60 04            [24]  513 	jz	00110$
      002A9C 75 82 00         [24]  514 	mov	dpl,#0x00
      002A9F 22               [24]  515 	ret
      002AA0                        516 00110$:
                                    517 ;	src/linked_list.c:57: to_free = prev->next;
      002AA0 90 20 39         [24]  518 	mov	dptr,#_remove_from_buffer_list_prev_131073_56
      002AA3 E0               [24]  519 	movx	a,@dptr
      002AA4 FD               [12]  520 	mov	r5,a
      002AA5 A3               [24]  521 	inc	dptr
      002AA6 E0               [24]  522 	movx	a,@dptr
      002AA7 FE               [12]  523 	mov	r6,a
      002AA8 A3               [24]  524 	inc	dptr
      002AA9 E0               [24]  525 	movx	a,@dptr
      002AAA FF               [12]  526 	mov	r7,a
      002AAB 74 08            [12]  527 	mov	a,#0x08
      002AAD 2D               [12]  528 	add	a,r5
      002AAE FD               [12]  529 	mov	r5,a
      002AAF E4               [12]  530 	clr	a
      002AB0 3E               [12]  531 	addc	a,r6
      002AB1 FE               [12]  532 	mov	r6,a
      002AB2 8D 82            [24]  533 	mov	dpl,r5
      002AB4 8E 83            [24]  534 	mov	dph,r6
      002AB6 8F F0            [24]  535 	mov	b,r7
      002AB8 12 3E C2         [24]  536 	lcall	__gptrget
      002ABB FA               [12]  537 	mov	r2,a
      002ABC A3               [24]  538 	inc	dptr
      002ABD 12 3E C2         [24]  539 	lcall	__gptrget
      002AC0 FB               [12]  540 	mov	r3,a
      002AC1 A3               [24]  541 	inc	dptr
      002AC2 12 3E C2         [24]  542 	lcall	__gptrget
      002AC5 FC               [12]  543 	mov	r4,a
      002AC6 90 20 36         [24]  544 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002AC9 EA               [12]  545 	mov	a,r2
      002ACA F0               [24]  546 	movx	@dptr,a
      002ACB EB               [12]  547 	mov	a,r3
      002ACC A3               [24]  548 	inc	dptr
      002ACD F0               [24]  549 	movx	@dptr,a
      002ACE EC               [12]  550 	mov	a,r4
      002ACF A3               [24]  551 	inc	dptr
      002AD0 F0               [24]  552 	movx	@dptr,a
                                    553 ;	src/linked_list.c:58: prev->next = to_free->next;
      002AD1 74 08            [12]  554 	mov	a,#0x08
      002AD3 2A               [12]  555 	add	a,r2
      002AD4 FA               [12]  556 	mov	r2,a
      002AD5 E4               [12]  557 	clr	a
      002AD6 3B               [12]  558 	addc	a,r3
      002AD7 FB               [12]  559 	mov	r3,a
      002AD8 8A 82            [24]  560 	mov	dpl,r2
      002ADA 8B 83            [24]  561 	mov	dph,r3
      002ADC 8C F0            [24]  562 	mov	b,r4
      002ADE 12 3E C2         [24]  563 	lcall	__gptrget
      002AE1 FA               [12]  564 	mov	r2,a
      002AE2 A3               [24]  565 	inc	dptr
      002AE3 12 3E C2         [24]  566 	lcall	__gptrget
      002AE6 FB               [12]  567 	mov	r3,a
      002AE7 A3               [24]  568 	inc	dptr
      002AE8 12 3E C2         [24]  569 	lcall	__gptrget
      002AEB FC               [12]  570 	mov	r4,a
      002AEC 8D 82            [24]  571 	mov	dpl,r5
      002AEE 8E 83            [24]  572 	mov	dph,r6
      002AF0 8F F0            [24]  573 	mov	b,r7
      002AF2 EA               [12]  574 	mov	a,r2
      002AF3 12 32 68         [24]  575 	lcall	__gptrput
      002AF6 A3               [24]  576 	inc	dptr
      002AF7 EB               [12]  577 	mov	a,r3
      002AF8 12 32 68         [24]  578 	lcall	__gptrput
      002AFB A3               [24]  579 	inc	dptr
      002AFC EC               [12]  580 	mov	a,r4
      002AFD 12 32 68         [24]  581 	lcall	__gptrput
      002B00                        582 00113$:
                                    583 ;	src/linked_list.c:61: if (to_free == NULL) return false; 
      002B00 90 20 36         [24]  584 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002B03 E0               [24]  585 	movx	a,@dptr
      002B04 FE               [12]  586 	mov	r6,a
      002B05 A3               [24]  587 	inc	dptr
      002B06 E0               [24]  588 	movx	a,@dptr
      002B07 FD               [12]  589 	mov	r5,a
      002B08 A3               [24]  590 	inc	dptr
      002B09 E0               [24]  591 	movx	a,@dptr
      002B0A FF               [12]  592 	mov	r7,a
      002B0B 90 20 36         [24]  593 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002B0E E0               [24]  594 	movx	a,@dptr
      002B0F F5 F0            [12]  595 	mov	b,a
      002B11 A3               [24]  596 	inc	dptr
      002B12 E0               [24]  597 	movx	a,@dptr
      002B13 45 F0            [12]  598 	orl	a,b
      002B15 70 03            [24]  599 	jnz	00115$
      002B17 F5 82            [12]  600 	mov	dpl,a
      002B19 22               [24]  601 	ret
      002B1A                        602 00115$:
                                    603 ;	src/linked_list.c:62: if (to_free->buffer != NULL) 
      002B1A 8E 82            [24]  604 	mov	dpl,r6
      002B1C 8D 83            [24]  605 	mov	dph,r5
      002B1E 8F F0            [24]  606 	mov	b,r7
      002B20 12 3E C2         [24]  607 	lcall	__gptrget
      002B23 FE               [12]  608 	mov	r6,a
      002B24 A3               [24]  609 	inc	dptr
      002B25 12 3E C2         [24]  610 	lcall	__gptrget
      002B28 FF               [12]  611 	mov	r7,a
      002B29 4E               [12]  612 	orl	a,r6
      002B2A 60 0B            [24]  613 	jz	00117$
                                    614 ;	src/linked_list.c:64: free(to_free->buffer);
      002B2C 7D 00            [12]  615 	mov	r5,#0x00
      002B2E 8E 82            [24]  616 	mov	dpl,r6
      002B30 8F 83            [24]  617 	mov	dph,r7
      002B32 8D F0            [24]  618 	mov	b,r5
      002B34 12 30 E9         [24]  619 	lcall	_free
      002B37                        620 00117$:
                                    621 ;	src/linked_list.c:66: free(to_free);
      002B37 90 20 36         [24]  622 	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
      002B3A E0               [24]  623 	movx	a,@dptr
      002B3B FD               [12]  624 	mov	r5,a
      002B3C A3               [24]  625 	inc	dptr
      002B3D E0               [24]  626 	movx	a,@dptr
      002B3E FE               [12]  627 	mov	r6,a
      002B3F A3               [24]  628 	inc	dptr
      002B40 E0               [24]  629 	movx	a,@dptr
      002B41 FF               [12]  630 	mov	r7,a
      002B42 8D 82            [24]  631 	mov	dpl,r5
      002B44 8E 83            [24]  632 	mov	dph,r6
      002B46 8F F0            [24]  633 	mov	b,r7
      002B48 12 30 E9         [24]  634 	lcall	_free
                                    635 ;	src/linked_list.c:67: return true; 
      002B4B 75 82 01         [24]  636 	mov	dpl,#0x01
                                    637 ;	src/linked_list.c:68: }
      002B4E 22               [24]  638 	ret
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
      002B4F                        650 _free_all_elems_from_list:
      002B4F AF F0            [24]  651 	mov	r7,b
      002B51 AE 83            [24]  652 	mov	r6,dph
      002B53 E5 82            [12]  653 	mov	a,dpl
      002B55 90 20 3C         [24]  654 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      002B58 F0               [24]  655 	movx	@dptr,a
      002B59 EE               [12]  656 	mov	a,r6
      002B5A A3               [24]  657 	inc	dptr
      002B5B F0               [24]  658 	movx	@dptr,a
      002B5C EF               [12]  659 	mov	a,r7
      002B5D A3               [24]  660 	inc	dptr
      002B5E F0               [24]  661 	movx	@dptr,a
                                    662 ;	src/linked_list.c:72: buffer_t *buffer_to_free = list->head;
      002B5F 90 20 3C         [24]  663 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      002B62 E0               [24]  664 	movx	a,@dptr
      002B63 FD               [12]  665 	mov	r5,a
      002B64 A3               [24]  666 	inc	dptr
      002B65 E0               [24]  667 	movx	a,@dptr
      002B66 FE               [12]  668 	mov	r6,a
      002B67 A3               [24]  669 	inc	dptr
      002B68 E0               [24]  670 	movx	a,@dptr
      002B69 FF               [12]  671 	mov	r7,a
      002B6A 8D 82            [24]  672 	mov	dpl,r5
      002B6C 8E 83            [24]  673 	mov	dph,r6
      002B6E 8F F0            [24]  674 	mov	b,r7
      002B70 12 3E C2         [24]  675 	lcall	__gptrget
      002B73 FA               [12]  676 	mov	r2,a
      002B74 A3               [24]  677 	inc	dptr
      002B75 12 3E C2         [24]  678 	lcall	__gptrget
      002B78 FB               [12]  679 	mov	r3,a
      002B79 A3               [24]  680 	inc	dptr
      002B7A 12 3E C2         [24]  681 	lcall	__gptrget
      002B7D FC               [12]  682 	mov	r4,a
      002B7E 90 20 3F         [24]  683 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      002B81 EA               [12]  684 	mov	a,r2
      002B82 F0               [24]  685 	movx	@dptr,a
      002B83 EB               [12]  686 	mov	a,r3
      002B84 A3               [24]  687 	inc	dptr
      002B85 F0               [24]  688 	movx	@dptr,a
      002B86 EC               [12]  689 	mov	a,r4
      002B87 A3               [24]  690 	inc	dptr
      002B88 F0               [24]  691 	movx	@dptr,a
                                    692 ;	src/linked_list.c:73: while(list->head != NULL)
      002B89                        693 00103$:
      002B89 90 20 3C         [24]  694 	mov	dptr,#_free_all_elems_from_list_list_65536_59
      002B8C E0               [24]  695 	movx	a,@dptr
      002B8D FA               [12]  696 	mov	r2,a
      002B8E A3               [24]  697 	inc	dptr
      002B8F E0               [24]  698 	movx	a,@dptr
      002B90 FB               [12]  699 	mov	r3,a
      002B91 A3               [24]  700 	inc	dptr
      002B92 E0               [24]  701 	movx	a,@dptr
      002B93 FC               [12]  702 	mov	r4,a
      002B94 8A 82            [24]  703 	mov	dpl,r2
      002B96 8B 83            [24]  704 	mov	dph,r3
      002B98 8C F0            [24]  705 	mov	b,r4
      002B9A 12 3E C2         [24]  706 	lcall	__gptrget
      002B9D F5 0B            [12]  707 	mov	_free_all_elems_from_list_sloc0_1_0,a
      002B9F A3               [24]  708 	inc	dptr
      002BA0 12 3E C2         [24]  709 	lcall	__gptrget
      002BA3 F5 0C            [12]  710 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      002BA5 A3               [24]  711 	inc	dptr
      002BA6 12 3E C2         [24]  712 	lcall	__gptrget
      002BA9 F5 0D            [12]  713 	mov	(_free_all_elems_from_list_sloc0_1_0 + 2),a
      002BAB E5 0B            [12]  714 	mov	a,_free_all_elems_from_list_sloc0_1_0
      002BAD 45 0C            [12]  715 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      002BAF 70 01            [24]  716 	jnz	00120$
      002BB1 22               [24]  717 	ret
      002BB2                        718 00120$:
                                    719 ;	src/linked_list.c:75: list->head = list->head->next;
      002BB2 C0 05            [24]  720 	push	ar5
      002BB4 C0 06            [24]  721 	push	ar6
      002BB6 C0 07            [24]  722 	push	ar7
      002BB8 74 08            [12]  723 	mov	a,#0x08
      002BBA 25 0B            [12]  724 	add	a,_free_all_elems_from_list_sloc0_1_0
      002BBC F8               [12]  725 	mov	r0,a
      002BBD E4               [12]  726 	clr	a
      002BBE 35 0C            [12]  727 	addc	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      002BC0 F9               [12]  728 	mov	r1,a
      002BC1 AF 0D            [24]  729 	mov	r7,(_free_all_elems_from_list_sloc0_1_0 + 2)
      002BC3 88 82            [24]  730 	mov	dpl,r0
      002BC5 89 83            [24]  731 	mov	dph,r1
      002BC7 8F F0            [24]  732 	mov	b,r7
      002BC9 12 3E C2         [24]  733 	lcall	__gptrget
      002BCC F8               [12]  734 	mov	r0,a
      002BCD A3               [24]  735 	inc	dptr
      002BCE 12 3E C2         [24]  736 	lcall	__gptrget
      002BD1 F9               [12]  737 	mov	r1,a
      002BD2 A3               [24]  738 	inc	dptr
      002BD3 12 3E C2         [24]  739 	lcall	__gptrget
      002BD6 FF               [12]  740 	mov	r7,a
      002BD7 8A 82            [24]  741 	mov	dpl,r2
      002BD9 8B 83            [24]  742 	mov	dph,r3
      002BDB 8C F0            [24]  743 	mov	b,r4
      002BDD E8               [12]  744 	mov	a,r0
      002BDE 12 32 68         [24]  745 	lcall	__gptrput
      002BE1 A3               [24]  746 	inc	dptr
      002BE2 E9               [12]  747 	mov	a,r1
      002BE3 12 32 68         [24]  748 	lcall	__gptrput
      002BE6 A3               [24]  749 	inc	dptr
      002BE7 EF               [12]  750 	mov	a,r7
      002BE8 12 32 68         [24]  751 	lcall	__gptrput
                                    752 ;	src/linked_list.c:76: if (buffer_to_free->buffer != NULL)
      002BEB 90 20 3F         [24]  753 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      002BEE E0               [24]  754 	movx	a,@dptr
      002BEF FD               [12]  755 	mov	r5,a
      002BF0 A3               [24]  756 	inc	dptr
      002BF1 E0               [24]  757 	movx	a,@dptr
      002BF2 FE               [12]  758 	mov	r6,a
      002BF3 A3               [24]  759 	inc	dptr
      002BF4 E0               [24]  760 	movx	a,@dptr
      002BF5 FF               [12]  761 	mov	r7,a
      002BF6 8D 82            [24]  762 	mov	dpl,r5
      002BF8 8E 83            [24]  763 	mov	dph,r6
      002BFA 8F F0            [24]  764 	mov	b,r7
      002BFC 12 3E C2         [24]  765 	lcall	__gptrget
      002BFF F5 0B            [12]  766 	mov	_free_all_elems_from_list_sloc0_1_0,a
      002C01 A3               [24]  767 	inc	dptr
      002C02 12 3E C2         [24]  768 	lcall	__gptrget
      002C05 F5 0C            [12]  769 	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
      002C07 D0 07            [24]  770 	pop	ar7
      002C09 D0 06            [24]  771 	pop	ar6
      002C0B D0 05            [24]  772 	pop	ar5
      002C0D E5 0B            [12]  773 	mov	a,_free_all_elems_from_list_sloc0_1_0
      002C0F 45 0C            [12]  774 	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
      002C11 60 1B            [24]  775 	jz	00102$
                                    776 ;	src/linked_list.c:78: free(buffer_to_free->buffer);
      002C13 AB 0B            [24]  777 	mov	r3,_free_all_elems_from_list_sloc0_1_0
      002C15 AC 0C            [24]  778 	mov	r4,(_free_all_elems_from_list_sloc0_1_0 + 1)
      002C17 7A 00            [12]  779 	mov	r2,#0x00
      002C19 8B 82            [24]  780 	mov	dpl,r3
      002C1B 8C 83            [24]  781 	mov	dph,r4
      002C1D 8A F0            [24]  782 	mov	b,r2
      002C1F C0 07            [24]  783 	push	ar7
      002C21 C0 06            [24]  784 	push	ar6
      002C23 C0 05            [24]  785 	push	ar5
      002C25 12 30 E9         [24]  786 	lcall	_free
      002C28 D0 05            [24]  787 	pop	ar5
      002C2A D0 06            [24]  788 	pop	ar6
      002C2C D0 07            [24]  789 	pop	ar7
      002C2E                        790 00102$:
                                    791 ;	src/linked_list.c:80: free(buffer_to_free);
      002C2E 90 20 3F         [24]  792 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      002C31 E0               [24]  793 	movx	a,@dptr
      002C32 FA               [12]  794 	mov	r2,a
      002C33 A3               [24]  795 	inc	dptr
      002C34 E0               [24]  796 	movx	a,@dptr
      002C35 FB               [12]  797 	mov	r3,a
      002C36 A3               [24]  798 	inc	dptr
      002C37 E0               [24]  799 	movx	a,@dptr
      002C38 FC               [12]  800 	mov	r4,a
      002C39 8A 82            [24]  801 	mov	dpl,r2
      002C3B 8B 83            [24]  802 	mov	dph,r3
      002C3D 8C F0            [24]  803 	mov	b,r4
      002C3F C0 07            [24]  804 	push	ar7
      002C41 C0 06            [24]  805 	push	ar6
      002C43 C0 05            [24]  806 	push	ar5
      002C45 12 30 E9         [24]  807 	lcall	_free
      002C48 D0 05            [24]  808 	pop	ar5
      002C4A D0 06            [24]  809 	pop	ar6
      002C4C D0 07            [24]  810 	pop	ar7
                                    811 ;	src/linked_list.c:81: buffer_to_free = list->head;
      002C4E 8D 82            [24]  812 	mov	dpl,r5
      002C50 8E 83            [24]  813 	mov	dph,r6
      002C52 8F F0            [24]  814 	mov	b,r7
      002C54 12 3E C2         [24]  815 	lcall	__gptrget
      002C57 FA               [12]  816 	mov	r2,a
      002C58 A3               [24]  817 	inc	dptr
      002C59 12 3E C2         [24]  818 	lcall	__gptrget
      002C5C FB               [12]  819 	mov	r3,a
      002C5D A3               [24]  820 	inc	dptr
      002C5E 12 3E C2         [24]  821 	lcall	__gptrget
      002C61 FC               [12]  822 	mov	r4,a
      002C62 90 20 3F         [24]  823 	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
      002C65 EA               [12]  824 	mov	a,r2
      002C66 F0               [24]  825 	movx	@dptr,a
      002C67 EB               [12]  826 	mov	a,r3
      002C68 A3               [24]  827 	inc	dptr
      002C69 F0               [24]  828 	movx	@dptr,a
      002C6A EC               [12]  829 	mov	a,r4
      002C6B A3               [24]  830 	inc	dptr
      002C6C F0               [24]  831 	movx	@dptr,a
                                    832 ;	src/linked_list.c:83: }
      002C6D 02 2B 89         [24]  833 	ljmp	00103$
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
      002C70                        845 _ll_length:
      002C70 AF F0            [24]  846 	mov	r7,b
      002C72 AE 83            [24]  847 	mov	r6,dph
      002C74 E5 82            [12]  848 	mov	a,dpl
      002C76 90 20 42         [24]  849 	mov	dptr,#_ll_length_list_65536_63
      002C79 F0               [24]  850 	movx	@dptr,a
      002C7A EE               [12]  851 	mov	a,r6
      002C7B A3               [24]  852 	inc	dptr
      002C7C F0               [24]  853 	movx	@dptr,a
      002C7D EF               [12]  854 	mov	a,r7
      002C7E A3               [24]  855 	inc	dptr
      002C7F F0               [24]  856 	movx	@dptr,a
                                    857 ;	src/linked_list.c:88: buffer_t *curr = list->head;
      002C80 90 20 42         [24]  858 	mov	dptr,#_ll_length_list_65536_63
      002C83 E0               [24]  859 	movx	a,@dptr
      002C84 FD               [12]  860 	mov	r5,a
      002C85 A3               [24]  861 	inc	dptr
      002C86 E0               [24]  862 	movx	a,@dptr
      002C87 FE               [12]  863 	mov	r6,a
      002C88 A3               [24]  864 	inc	dptr
      002C89 E0               [24]  865 	movx	a,@dptr
      002C8A FF               [12]  866 	mov	r7,a
      002C8B 8D 82            [24]  867 	mov	dpl,r5
      002C8D 8E 83            [24]  868 	mov	dph,r6
      002C8F 8F F0            [24]  869 	mov	b,r7
      002C91 12 3E C2         [24]  870 	lcall	__gptrget
      002C94 FD               [12]  871 	mov	r5,a
      002C95 A3               [24]  872 	inc	dptr
      002C96 12 3E C2         [24]  873 	lcall	__gptrget
      002C99 FE               [12]  874 	mov	r6,a
      002C9A A3               [24]  875 	inc	dptr
      002C9B 12 3E C2         [24]  876 	lcall	__gptrget
      002C9E FF               [12]  877 	mov	r7,a
      002C9F 90 20 47         [24]  878 	mov	dptr,#_ll_length_curr_65536_64
      002CA2 ED               [12]  879 	mov	a,r5
      002CA3 F0               [24]  880 	movx	@dptr,a
      002CA4 EE               [12]  881 	mov	a,r6
      002CA5 A3               [24]  882 	inc	dptr
      002CA6 F0               [24]  883 	movx	@dptr,a
      002CA7 EF               [12]  884 	mov	a,r7
      002CA8 A3               [24]  885 	inc	dptr
      002CA9 F0               [24]  886 	movx	@dptr,a
                                    887 ;	src/linked_list.c:89: while(curr != NULL)
      002CAA 90 20 45         [24]  888 	mov	dptr,#_ll_length_size_65536_64
      002CAD E0               [24]  889 	movx	a,@dptr
      002CAE FE               [12]  890 	mov	r6,a
      002CAF A3               [24]  891 	inc	dptr
      002CB0 E0               [24]  892 	movx	a,@dptr
      002CB1 FF               [12]  893 	mov	r7,a
      002CB2                        894 00101$:
      002CB2 90 20 47         [24]  895 	mov	dptr,#_ll_length_curr_65536_64
      002CB5 E0               [24]  896 	movx	a,@dptr
      002CB6 FB               [12]  897 	mov	r3,a
      002CB7 A3               [24]  898 	inc	dptr
      002CB8 E0               [24]  899 	movx	a,@dptr
      002CB9 FC               [12]  900 	mov	r4,a
      002CBA A3               [24]  901 	inc	dptr
      002CBB E0               [24]  902 	movx	a,@dptr
      002CBC FD               [12]  903 	mov	r5,a
      002CBD 90 20 47         [24]  904 	mov	dptr,#_ll_length_curr_65536_64
      002CC0 E0               [24]  905 	movx	a,@dptr
      002CC1 F5 F0            [12]  906 	mov	b,a
      002CC3 A3               [24]  907 	inc	dptr
      002CC4 E0               [24]  908 	movx	a,@dptr
      002CC5 45 F0            [12]  909 	orl	a,b
      002CC7 60 2D            [24]  910 	jz	00103$
                                    911 ;	src/linked_list.c:91: size++;
      002CC9 0E               [12]  912 	inc	r6
      002CCA BE 00 01         [24]  913 	cjne	r6,#0x00,00116$
      002CCD 0F               [12]  914 	inc	r7
      002CCE                        915 00116$:
                                    916 ;	src/linked_list.c:92: curr = curr->next;
      002CCE 74 08            [12]  917 	mov	a,#0x08
      002CD0 2B               [12]  918 	add	a,r3
      002CD1 FB               [12]  919 	mov	r3,a
      002CD2 E4               [12]  920 	clr	a
      002CD3 3C               [12]  921 	addc	a,r4
      002CD4 FC               [12]  922 	mov	r4,a
      002CD5 8B 82            [24]  923 	mov	dpl,r3
      002CD7 8C 83            [24]  924 	mov	dph,r4
      002CD9 8D F0            [24]  925 	mov	b,r5
      002CDB 12 3E C2         [24]  926 	lcall	__gptrget
      002CDE FB               [12]  927 	mov	r3,a
      002CDF A3               [24]  928 	inc	dptr
      002CE0 12 3E C2         [24]  929 	lcall	__gptrget
      002CE3 FC               [12]  930 	mov	r4,a
      002CE4 A3               [24]  931 	inc	dptr
      002CE5 12 3E C2         [24]  932 	lcall	__gptrget
      002CE8 FD               [12]  933 	mov	r5,a
      002CE9 90 20 47         [24]  934 	mov	dptr,#_ll_length_curr_65536_64
      002CEC EB               [12]  935 	mov	a,r3
      002CED F0               [24]  936 	movx	@dptr,a
      002CEE EC               [12]  937 	mov	a,r4
      002CEF A3               [24]  938 	inc	dptr
      002CF0 F0               [24]  939 	movx	@dptr,a
      002CF1 ED               [12]  940 	mov	a,r5
      002CF2 A3               [24]  941 	inc	dptr
      002CF3 F0               [24]  942 	movx	@dptr,a
      002CF4 80 BC            [24]  943 	sjmp	00101$
      002CF6                        944 00103$:
                                    945 ;	src/linked_list.c:94: return size; 
      002CF6 8E 82            [24]  946 	mov	dpl,r6
      002CF8 8F 83            [24]  947 	mov	dph,r7
                                    948 ;	src/linked_list.c:95: }
      002CFA 22               [24]  949 	ret
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
      002CFB                        961 _ll_get_elem:
      002CFB AF F0            [24]  962 	mov	r7,b
      002CFD AE 83            [24]  963 	mov	r6,dph
      002CFF E5 82            [12]  964 	mov	a,dpl
      002D01 90 20 4C         [24]  965 	mov	dptr,#_ll_get_elem_list_65536_66
      002D04 F0               [24]  966 	movx	@dptr,a
      002D05 EE               [12]  967 	mov	a,r6
      002D06 A3               [24]  968 	inc	dptr
      002D07 F0               [24]  969 	movx	@dptr,a
      002D08 EF               [12]  970 	mov	a,r7
      002D09 A3               [24]  971 	inc	dptr
      002D0A F0               [24]  972 	movx	@dptr,a
                                    973 ;	src/linked_list.c:99: buffer_t *curr = list->head;
      002D0B 90 20 4C         [24]  974 	mov	dptr,#_ll_get_elem_list_65536_66
      002D0E E0               [24]  975 	movx	a,@dptr
      002D0F FD               [12]  976 	mov	r5,a
      002D10 A3               [24]  977 	inc	dptr
      002D11 E0               [24]  978 	movx	a,@dptr
      002D12 FE               [12]  979 	mov	r6,a
      002D13 A3               [24]  980 	inc	dptr
      002D14 E0               [24]  981 	movx	a,@dptr
      002D15 FF               [12]  982 	mov	r7,a
      002D16 8D 82            [24]  983 	mov	dpl,r5
      002D18 8E 83            [24]  984 	mov	dph,r6
      002D1A 8F F0            [24]  985 	mov	b,r7
      002D1C 12 3E C2         [24]  986 	lcall	__gptrget
      002D1F FD               [12]  987 	mov	r5,a
      002D20 A3               [24]  988 	inc	dptr
      002D21 12 3E C2         [24]  989 	lcall	__gptrget
      002D24 FE               [12]  990 	mov	r6,a
      002D25 A3               [24]  991 	inc	dptr
      002D26 12 3E C2         [24]  992 	lcall	__gptrget
      002D29 FF               [12]  993 	mov	r7,a
      002D2A 90 20 4F         [24]  994 	mov	dptr,#_ll_get_elem_curr_65536_67
      002D2D ED               [12]  995 	mov	a,r5
      002D2E F0               [24]  996 	movx	@dptr,a
      002D2F EE               [12]  997 	mov	a,r6
      002D30 A3               [24]  998 	inc	dptr
      002D31 F0               [24]  999 	movx	@dptr,a
      002D32 EF               [12] 1000 	mov	a,r7
      002D33 A3               [24] 1001 	inc	dptr
      002D34 F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	src/linked_list.c:100: while(curr != NULL && elem_num > 0)
      002D35 90 20 4A         [24] 1004 	mov	dptr,#_ll_get_elem_PARM_2
      002D38 E0               [24] 1005 	movx	a,@dptr
      002D39 FE               [12] 1006 	mov	r6,a
      002D3A A3               [24] 1007 	inc	dptr
      002D3B E0               [24] 1008 	movx	a,@dptr
      002D3C FF               [12] 1009 	mov	r7,a
      002D3D                       1010 00102$:
      002D3D 90 20 4F         [24] 1011 	mov	dptr,#_ll_get_elem_curr_65536_67
      002D40 E0               [24] 1012 	movx	a,@dptr
      002D41 FB               [12] 1013 	mov	r3,a
      002D42 A3               [24] 1014 	inc	dptr
      002D43 E0               [24] 1015 	movx	a,@dptr
      002D44 FC               [12] 1016 	mov	r4,a
      002D45 A3               [24] 1017 	inc	dptr
      002D46 E0               [24] 1018 	movx	a,@dptr
      002D47 FD               [12] 1019 	mov	r5,a
      002D48 90 20 4F         [24] 1020 	mov	dptr,#_ll_get_elem_curr_65536_67
      002D4B E0               [24] 1021 	movx	a,@dptr
      002D4C F5 F0            [12] 1022 	mov	b,a
      002D4E A3               [24] 1023 	inc	dptr
      002D4F E0               [24] 1024 	movx	a,@dptr
      002D50 45 F0            [12] 1025 	orl	a,b
      002D52 60 31            [24] 1026 	jz	00104$
      002D54 EE               [12] 1027 	mov	a,r6
      002D55 4F               [12] 1028 	orl	a,r7
      002D56 60 2D            [24] 1029 	jz	00104$
                                   1030 ;	src/linked_list.c:102: curr = curr->next;
      002D58 74 08            [12] 1031 	mov	a,#0x08
      002D5A 2B               [12] 1032 	add	a,r3
      002D5B FB               [12] 1033 	mov	r3,a
      002D5C E4               [12] 1034 	clr	a
      002D5D 3C               [12] 1035 	addc	a,r4
      002D5E FC               [12] 1036 	mov	r4,a
      002D5F 8B 82            [24] 1037 	mov	dpl,r3
      002D61 8C 83            [24] 1038 	mov	dph,r4
      002D63 8D F0            [24] 1039 	mov	b,r5
      002D65 12 3E C2         [24] 1040 	lcall	__gptrget
      002D68 FB               [12] 1041 	mov	r3,a
      002D69 A3               [24] 1042 	inc	dptr
      002D6A 12 3E C2         [24] 1043 	lcall	__gptrget
      002D6D FC               [12] 1044 	mov	r4,a
      002D6E A3               [24] 1045 	inc	dptr
      002D6F 12 3E C2         [24] 1046 	lcall	__gptrget
      002D72 FD               [12] 1047 	mov	r5,a
      002D73 90 20 4F         [24] 1048 	mov	dptr,#_ll_get_elem_curr_65536_67
      002D76 EB               [12] 1049 	mov	a,r3
      002D77 F0               [24] 1050 	movx	@dptr,a
      002D78 EC               [12] 1051 	mov	a,r4
      002D79 A3               [24] 1052 	inc	dptr
      002D7A F0               [24] 1053 	movx	@dptr,a
      002D7B ED               [12] 1054 	mov	a,r5
      002D7C A3               [24] 1055 	inc	dptr
      002D7D F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	src/linked_list.c:103: elem_num--;
      002D7E 1E               [12] 1058 	dec	r6
      002D7F BE FF 01         [24] 1059 	cjne	r6,#0xff,00122$
      002D82 1F               [12] 1060 	dec	r7
      002D83                       1061 00122$:
      002D83 80 B8            [24] 1062 	sjmp	00102$
      002D85                       1063 00104$:
                                   1064 ;	src/linked_list.c:105: return curr;
      002D85 90 20 4F         [24] 1065 	mov	dptr,#_ll_get_elem_curr_65536_67
      002D88 E0               [24] 1066 	movx	a,@dptr
      002D89 FD               [12] 1067 	mov	r5,a
      002D8A A3               [24] 1068 	inc	dptr
      002D8B E0               [24] 1069 	movx	a,@dptr
      002D8C FE               [12] 1070 	mov	r6,a
      002D8D A3               [24] 1071 	inc	dptr
      002D8E E0               [24] 1072 	movx	a,@dptr
      002D8F FF               [12] 1073 	mov	r7,a
      002D90 8D 82            [24] 1074 	mov	dpl,r5
      002D92 8E 83            [24] 1075 	mov	dph,r6
      002D94 8F F0            [24] 1076 	mov	b,r7
                                   1077 ;	src/linked_list.c:106: }
      002D96 22               [24] 1078 	ret
                                   1079 	.area CSEG    (CODE)
                                   1080 	.area CONST   (CODE)
                                   1081 	.area XINIT   (CODE)
                                   1082 	.area CABS    (ABS,CODE)
