                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _ampersand_command_handler
                                     13 	.globl _star_command_handler
                                     14 	.globl _minus_command_handler
                                     15 	.globl _plus_command_handler
                                     16 	.globl _hashtag_command_handler
                                     17 	.globl _dollar_sign_command_handler
                                     18 	.globl _percent_command_handler
                                     19 	.globl _enter_command_handler
                                     20 	.globl _qmark_command_handler
                                     21 	.globl _heap_report
                                     22 	.globl _command_header
                                     23 	.globl _print_dashed_line
                                     24 	.globl _store_in_buffer
                                     25 	.globl _initialize_buffers
                                     26 	.globl _is_number
                                     27 	.globl _alloc_new_buffer
                                     28 	.globl _initialize_default_elements
                                     29 	.globl _is_alphabet_char
                                     30 	.globl __sdcc_external_startup
                                     31 	.globl _ll_get_elem
                                     32 	.globl _ll_length
                                     33 	.globl _free_all_elems_from_list
                                     34 	.globl _remove_from_buffer_list
                                     35 	.globl _append_to_buffer_list
                                     36 	.globl ___memcpy
                                     37 	.globl _strlen
                                     38 	.globl _memset
                                     39 	.globl _reset_char_count
                                     40 	.globl _get_char_count
                                     41 	.globl _get_next_input_char
                                     42 	.globl _get_input_buffer
                                     43 	.globl _get_string
                                     44 	.globl _free
                                     45 	.globl _malloc
                                     46 	.globl _atoi
                                     47 	.globl _printf
                                     48 	.globl _CY
                                     49 	.globl _AC
                                     50 	.globl _F0
                                     51 	.globl _RS1
                                     52 	.globl _RS0
                                     53 	.globl _OV
                                     54 	.globl _F1
                                     55 	.globl _P
                                     56 	.globl _PS
                                     57 	.globl _PT1
                                     58 	.globl _PX1
                                     59 	.globl _PT0
                                     60 	.globl _PX0
                                     61 	.globl _RD
                                     62 	.globl _WR
                                     63 	.globl _T1
                                     64 	.globl _T0
                                     65 	.globl _INT1
                                     66 	.globl _INT0
                                     67 	.globl _TXD
                                     68 	.globl _RXD
                                     69 	.globl _P3_7
                                     70 	.globl _P3_6
                                     71 	.globl _P3_5
                                     72 	.globl _P3_4
                                     73 	.globl _P3_3
                                     74 	.globl _P3_2
                                     75 	.globl _P3_1
                                     76 	.globl _P3_0
                                     77 	.globl _EA
                                     78 	.globl _ES
                                     79 	.globl _ET1
                                     80 	.globl _EX1
                                     81 	.globl _ET0
                                     82 	.globl _EX0
                                     83 	.globl _P2_7
                                     84 	.globl _P2_6
                                     85 	.globl _P2_5
                                     86 	.globl _P2_4
                                     87 	.globl _P2_3
                                     88 	.globl _P2_2
                                     89 	.globl _P2_1
                                     90 	.globl _P2_0
                                     91 	.globl _SM0
                                     92 	.globl _SM1
                                     93 	.globl _SM2
                                     94 	.globl _REN
                                     95 	.globl _TB8
                                     96 	.globl _RB8
                                     97 	.globl _TI
                                     98 	.globl _RI
                                     99 	.globl _P1_7
                                    100 	.globl _P1_6
                                    101 	.globl _P1_5
                                    102 	.globl _P1_4
                                    103 	.globl _P1_3
                                    104 	.globl _P1_2
                                    105 	.globl _P1_1
                                    106 	.globl _P1_0
                                    107 	.globl _TF1
                                    108 	.globl _TR1
                                    109 	.globl _TF0
                                    110 	.globl _TR0
                                    111 	.globl _IE1
                                    112 	.globl _IT1
                                    113 	.globl _IE0
                                    114 	.globl _IT0
                                    115 	.globl _P0_7
                                    116 	.globl _P0_6
                                    117 	.globl _P0_5
                                    118 	.globl _P0_4
                                    119 	.globl _P0_3
                                    120 	.globl _P0_2
                                    121 	.globl _P0_1
                                    122 	.globl _P0_0
                                    123 	.globl _P5_7
                                    124 	.globl _P5_6
                                    125 	.globl _P5_5
                                    126 	.globl _P5_4
                                    127 	.globl _P5_3
                                    128 	.globl _P5_2
                                    129 	.globl _P5_1
                                    130 	.globl _P5_0
                                    131 	.globl _P4_7
                                    132 	.globl _P4_6
                                    133 	.globl _P4_5
                                    134 	.globl _P4_4
                                    135 	.globl _P4_3
                                    136 	.globl _P4_2
                                    137 	.globl _P4_1
                                    138 	.globl _P4_0
                                    139 	.globl _PX0L
                                    140 	.globl _PT0L
                                    141 	.globl _PX1L
                                    142 	.globl _PT1L
                                    143 	.globl _PSL
                                    144 	.globl _PT2L
                                    145 	.globl _PPCL
                                    146 	.globl _EC
                                    147 	.globl _CCF0
                                    148 	.globl _CCF1
                                    149 	.globl _CCF2
                                    150 	.globl _CCF3
                                    151 	.globl _CCF4
                                    152 	.globl _CR
                                    153 	.globl _CF
                                    154 	.globl _TF2
                                    155 	.globl _EXF2
                                    156 	.globl _RCLK
                                    157 	.globl _TCLK
                                    158 	.globl _EXEN2
                                    159 	.globl _TR2
                                    160 	.globl _C_T2
                                    161 	.globl _CP_RL2
                                    162 	.globl _T2CON_7
                                    163 	.globl _T2CON_6
                                    164 	.globl _T2CON_5
                                    165 	.globl _T2CON_4
                                    166 	.globl _T2CON_3
                                    167 	.globl _T2CON_2
                                    168 	.globl _T2CON_1
                                    169 	.globl _T2CON_0
                                    170 	.globl _PT2
                                    171 	.globl _ET2
                                    172 	.globl _B
                                    173 	.globl _ACC
                                    174 	.globl _PSW
                                    175 	.globl _IP
                                    176 	.globl _P3
                                    177 	.globl _IE
                                    178 	.globl _P2
                                    179 	.globl _SBUF
                                    180 	.globl _SCON
                                    181 	.globl _P1
                                    182 	.globl _TH1
                                    183 	.globl _TH0
                                    184 	.globl _TL1
                                    185 	.globl _TL0
                                    186 	.globl _TMOD
                                    187 	.globl _TCON
                                    188 	.globl _PCON
                                    189 	.globl _DPH
                                    190 	.globl _DPL
                                    191 	.globl _SP
                                    192 	.globl _P0
                                    193 	.globl _EECON
                                    194 	.globl _KBF
                                    195 	.globl _KBE
                                    196 	.globl _KBLS
                                    197 	.globl _BRL
                                    198 	.globl _BDRCON
                                    199 	.globl _T2MOD
                                    200 	.globl _SPDAT
                                    201 	.globl _SPSTA
                                    202 	.globl _SPCON
                                    203 	.globl _SADEN
                                    204 	.globl _SADDR
                                    205 	.globl _WDTPRG
                                    206 	.globl _WDTRST
                                    207 	.globl _P5
                                    208 	.globl _P4
                                    209 	.globl _IPH1
                                    210 	.globl _IPL1
                                    211 	.globl _IPH0
                                    212 	.globl _IPL0
                                    213 	.globl _IEN1
                                    214 	.globl _IEN0
                                    215 	.globl _CMOD
                                    216 	.globl _CL
                                    217 	.globl _CH
                                    218 	.globl _CCON
                                    219 	.globl _CCAPM4
                                    220 	.globl _CCAPM3
                                    221 	.globl _CCAPM2
                                    222 	.globl _CCAPM1
                                    223 	.globl _CCAPM0
                                    224 	.globl _CCAP4L
                                    225 	.globl _CCAP3L
                                    226 	.globl _CCAP2L
                                    227 	.globl _CCAP1L
                                    228 	.globl _CCAP0L
                                    229 	.globl _CCAP4H
                                    230 	.globl _CCAP3H
                                    231 	.globl _CCAP2H
                                    232 	.globl _CCAP1H
                                    233 	.globl _CCAP0H
                                    234 	.globl _CKCON1
                                    235 	.globl _CKCON0
                                    236 	.globl _CKRL
                                    237 	.globl _AUXR1
                                    238 	.globl _AUXR
                                    239 	.globl _TH2
                                    240 	.globl _TL2
                                    241 	.globl _RCAP2H
                                    242 	.globl _RCAP2L
                                    243 	.globl _T2CON
                                    244 	.globl _dynamic_buffers_list
                                    245 	.globl _store_in_buffer_PARM_2
                                    246 	.globl _static_buffers
                                    247 	.globl _get_user_buffer_sz
                                    248 	.globl _free_all_buffers
                                    249 ;--------------------------------------------------------
                                    250 ; special function registers
                                    251 ;--------------------------------------------------------
                                    252 	.area RSEG    (ABS,DATA)
      000000                        253 	.org 0x0000
                           0000C8   254 _T2CON	=	0x00c8
                           0000CA   255 _RCAP2L	=	0x00ca
                           0000CB   256 _RCAP2H	=	0x00cb
                           0000CC   257 _TL2	=	0x00cc
                           0000CD   258 _TH2	=	0x00cd
                           00008E   259 _AUXR	=	0x008e
                           0000A2   260 _AUXR1	=	0x00a2
                           000097   261 _CKRL	=	0x0097
                           00008F   262 _CKCON0	=	0x008f
                           0000AF   263 _CKCON1	=	0x00af
                           0000FA   264 _CCAP0H	=	0x00fa
                           0000FB   265 _CCAP1H	=	0x00fb
                           0000FC   266 _CCAP2H	=	0x00fc
                           0000FD   267 _CCAP3H	=	0x00fd
                           0000FE   268 _CCAP4H	=	0x00fe
                           0000EA   269 _CCAP0L	=	0x00ea
                           0000EB   270 _CCAP1L	=	0x00eb
                           0000EC   271 _CCAP2L	=	0x00ec
                           0000ED   272 _CCAP3L	=	0x00ed
                           0000EE   273 _CCAP4L	=	0x00ee
                           0000DA   274 _CCAPM0	=	0x00da
                           0000DB   275 _CCAPM1	=	0x00db
                           0000DC   276 _CCAPM2	=	0x00dc
                           0000DD   277 _CCAPM3	=	0x00dd
                           0000DE   278 _CCAPM4	=	0x00de
                           0000D8   279 _CCON	=	0x00d8
                           0000F9   280 _CH	=	0x00f9
                           0000E9   281 _CL	=	0x00e9
                           0000D9   282 _CMOD	=	0x00d9
                           0000A8   283 _IEN0	=	0x00a8
                           0000B1   284 _IEN1	=	0x00b1
                           0000B8   285 _IPL0	=	0x00b8
                           0000B7   286 _IPH0	=	0x00b7
                           0000B2   287 _IPL1	=	0x00b2
                           0000B3   288 _IPH1	=	0x00b3
                           0000C0   289 _P4	=	0x00c0
                           0000E8   290 _P5	=	0x00e8
                           0000A6   291 _WDTRST	=	0x00a6
                           0000A7   292 _WDTPRG	=	0x00a7
                           0000A9   293 _SADDR	=	0x00a9
                           0000B9   294 _SADEN	=	0x00b9
                           0000C3   295 _SPCON	=	0x00c3
                           0000C4   296 _SPSTA	=	0x00c4
                           0000C5   297 _SPDAT	=	0x00c5
                           0000C9   298 _T2MOD	=	0x00c9
                           00009B   299 _BDRCON	=	0x009b
                           00009A   300 _BRL	=	0x009a
                           00009C   301 _KBLS	=	0x009c
                           00009D   302 _KBE	=	0x009d
                           00009E   303 _KBF	=	0x009e
                           0000D2   304 _EECON	=	0x00d2
                           000080   305 _P0	=	0x0080
                           000081   306 _SP	=	0x0081
                           000082   307 _DPL	=	0x0082
                           000083   308 _DPH	=	0x0083
                           000087   309 _PCON	=	0x0087
                           000088   310 _TCON	=	0x0088
                           000089   311 _TMOD	=	0x0089
                           00008A   312 _TL0	=	0x008a
                           00008B   313 _TL1	=	0x008b
                           00008C   314 _TH0	=	0x008c
                           00008D   315 _TH1	=	0x008d
                           000090   316 _P1	=	0x0090
                           000098   317 _SCON	=	0x0098
                           000099   318 _SBUF	=	0x0099
                           0000A0   319 _P2	=	0x00a0
                           0000A8   320 _IE	=	0x00a8
                           0000B0   321 _P3	=	0x00b0
                           0000B8   322 _IP	=	0x00b8
                           0000D0   323 _PSW	=	0x00d0
                           0000E0   324 _ACC	=	0x00e0
                           0000F0   325 _B	=	0x00f0
                                    326 ;--------------------------------------------------------
                                    327 ; special function bits
                                    328 ;--------------------------------------------------------
                                    329 	.area RSEG    (ABS,DATA)
      000000                        330 	.org 0x0000
                           0000AD   331 _ET2	=	0x00ad
                           0000BD   332 _PT2	=	0x00bd
                           0000C8   333 _T2CON_0	=	0x00c8
                           0000C9   334 _T2CON_1	=	0x00c9
                           0000CA   335 _T2CON_2	=	0x00ca
                           0000CB   336 _T2CON_3	=	0x00cb
                           0000CC   337 _T2CON_4	=	0x00cc
                           0000CD   338 _T2CON_5	=	0x00cd
                           0000CE   339 _T2CON_6	=	0x00ce
                           0000CF   340 _T2CON_7	=	0x00cf
                           0000C8   341 _CP_RL2	=	0x00c8
                           0000C9   342 _C_T2	=	0x00c9
                           0000CA   343 _TR2	=	0x00ca
                           0000CB   344 _EXEN2	=	0x00cb
                           0000CC   345 _TCLK	=	0x00cc
                           0000CD   346 _RCLK	=	0x00cd
                           0000CE   347 _EXF2	=	0x00ce
                           0000CF   348 _TF2	=	0x00cf
                           0000DF   349 _CF	=	0x00df
                           0000DE   350 _CR	=	0x00de
                           0000DC   351 _CCF4	=	0x00dc
                           0000DB   352 _CCF3	=	0x00db
                           0000DA   353 _CCF2	=	0x00da
                           0000D9   354 _CCF1	=	0x00d9
                           0000D8   355 _CCF0	=	0x00d8
                           0000AE   356 _EC	=	0x00ae
                           0000BE   357 _PPCL	=	0x00be
                           0000BD   358 _PT2L	=	0x00bd
                           0000BC   359 _PSL	=	0x00bc
                           0000BB   360 _PT1L	=	0x00bb
                           0000BA   361 _PX1L	=	0x00ba
                           0000B9   362 _PT0L	=	0x00b9
                           0000B8   363 _PX0L	=	0x00b8
                           0000C0   364 _P4_0	=	0x00c0
                           0000C1   365 _P4_1	=	0x00c1
                           0000C2   366 _P4_2	=	0x00c2
                           0000C3   367 _P4_3	=	0x00c3
                           0000C4   368 _P4_4	=	0x00c4
                           0000C5   369 _P4_5	=	0x00c5
                           0000C6   370 _P4_6	=	0x00c6
                           0000C7   371 _P4_7	=	0x00c7
                           0000E8   372 _P5_0	=	0x00e8
                           0000E9   373 _P5_1	=	0x00e9
                           0000EA   374 _P5_2	=	0x00ea
                           0000EB   375 _P5_3	=	0x00eb
                           0000EC   376 _P5_4	=	0x00ec
                           0000ED   377 _P5_5	=	0x00ed
                           0000EE   378 _P5_6	=	0x00ee
                           0000EF   379 _P5_7	=	0x00ef
                           000080   380 _P0_0	=	0x0080
                           000081   381 _P0_1	=	0x0081
                           000082   382 _P0_2	=	0x0082
                           000083   383 _P0_3	=	0x0083
                           000084   384 _P0_4	=	0x0084
                           000085   385 _P0_5	=	0x0085
                           000086   386 _P0_6	=	0x0086
                           000087   387 _P0_7	=	0x0087
                           000088   388 _IT0	=	0x0088
                           000089   389 _IE0	=	0x0089
                           00008A   390 _IT1	=	0x008a
                           00008B   391 _IE1	=	0x008b
                           00008C   392 _TR0	=	0x008c
                           00008D   393 _TF0	=	0x008d
                           00008E   394 _TR1	=	0x008e
                           00008F   395 _TF1	=	0x008f
                           000090   396 _P1_0	=	0x0090
                           000091   397 _P1_1	=	0x0091
                           000092   398 _P1_2	=	0x0092
                           000093   399 _P1_3	=	0x0093
                           000094   400 _P1_4	=	0x0094
                           000095   401 _P1_5	=	0x0095
                           000096   402 _P1_6	=	0x0096
                           000097   403 _P1_7	=	0x0097
                           000098   404 _RI	=	0x0098
                           000099   405 _TI	=	0x0099
                           00009A   406 _RB8	=	0x009a
                           00009B   407 _TB8	=	0x009b
                           00009C   408 _REN	=	0x009c
                           00009D   409 _SM2	=	0x009d
                           00009E   410 _SM1	=	0x009e
                           00009F   411 _SM0	=	0x009f
                           0000A0   412 _P2_0	=	0x00a0
                           0000A1   413 _P2_1	=	0x00a1
                           0000A2   414 _P2_2	=	0x00a2
                           0000A3   415 _P2_3	=	0x00a3
                           0000A4   416 _P2_4	=	0x00a4
                           0000A5   417 _P2_5	=	0x00a5
                           0000A6   418 _P2_6	=	0x00a6
                           0000A7   419 _P2_7	=	0x00a7
                           0000A8   420 _EX0	=	0x00a8
                           0000A9   421 _ET0	=	0x00a9
                           0000AA   422 _EX1	=	0x00aa
                           0000AB   423 _ET1	=	0x00ab
                           0000AC   424 _ES	=	0x00ac
                           0000AF   425 _EA	=	0x00af
                           0000B0   426 _P3_0	=	0x00b0
                           0000B1   427 _P3_1	=	0x00b1
                           0000B2   428 _P3_2	=	0x00b2
                           0000B3   429 _P3_3	=	0x00b3
                           0000B4   430 _P3_4	=	0x00b4
                           0000B5   431 _P3_5	=	0x00b5
                           0000B6   432 _P3_6	=	0x00b6
                           0000B7   433 _P3_7	=	0x00b7
                           0000B0   434 _RXD	=	0x00b0
                           0000B1   435 _TXD	=	0x00b1
                           0000B2   436 _INT0	=	0x00b2
                           0000B3   437 _INT1	=	0x00b3
                           0000B4   438 _T0	=	0x00b4
                           0000B5   439 _T1	=	0x00b5
                           0000B6   440 _WR	=	0x00b6
                           0000B7   441 _RD	=	0x00b7
                           0000B8   442 _PX0	=	0x00b8
                           0000B9   443 _PT0	=	0x00b9
                           0000BA   444 _PX1	=	0x00ba
                           0000BB   445 _PT1	=	0x00bb
                           0000BC   446 _PS	=	0x00bc
                           0000D0   447 _P	=	0x00d0
                           0000D1   448 _F1	=	0x00d1
                           0000D2   449 _OV	=	0x00d2
                           0000D3   450 _RS0	=	0x00d3
                           0000D4   451 _RS1	=	0x00d4
                           0000D5   452 _F0	=	0x00d5
                           0000D6   453 _AC	=	0x00d6
                           0000D7   454 _CY	=	0x00d7
                                    455 ;--------------------------------------------------------
                                    456 ; overlayable register banks
                                    457 ;--------------------------------------------------------
                                    458 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        459 	.ds 8
                                    460 ;--------------------------------------------------------
                                    461 ; internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area DSEG    (DATA)
      000021                        464 _initialize_buffers_sloc0_1_0:
      000021                        465 	.ds 2
      000023                        466 _initialize_buffers_sloc1_1_0:
      000023                        467 	.ds 2
      000025                        468 _initialize_buffers_sloc2_1_0:
      000025                        469 	.ds 2
      000027                        470 _initialize_buffers_sloc3_1_0:
      000027                        471 	.ds 3
      00002A                        472 _initialize_buffers_sloc4_1_0:
      00002A                        473 	.ds 3
      00002D                        474 _initialize_buffers_sloc5_1_0:
      00002D                        475 	.ds 3
      000030                        476 _store_in_buffer_sloc0_1_0:
      000030                        477 	.ds 2
      000032                        478 _store_in_buffer_sloc1_1_0:
      000032                        479 	.ds 3
      000035                        480 _heap_report_sloc0_1_0:
      000035                        481 	.ds 2
      000037                        482 _heap_report_sloc1_1_0:
      000037                        483 	.ds 2
      000039                        484 _heap_report_sloc2_1_0:
      000039                        485 	.ds 2
      00003B                        486 _heap_report_sloc3_1_0:
      00003B                        487 	.ds 2
      00003D                        488 _heap_report_sloc4_1_0:
      00003D                        489 	.ds 3
      000040                        490 _heap_report_sloc5_1_0:
      000040                        491 	.ds 3
      000043                        492 _qmark_command_handler_sloc0_1_0:
      000043                        493 	.ds 2
      000045                        494 _qmark_command_handler_sloc1_1_0:
      000045                        495 	.ds 3
      000048                        496 _enter_command_handler_sloc0_1_0:
      000048                        497 	.ds 3
      00004B                        498 _enter_command_handler_sloc1_1_0:
      00004B                        499 	.ds 2
      00004D                        500 _enter_command_handler_sloc2_1_0:
      00004D                        501 	.ds 2
      00004F                        502 _enter_command_handler_sloc3_1_0:
      00004F                        503 	.ds 2
      000051                        504 _percent_command_handler_sloc0_1_0:
      000051                        505 	.ds 3
      000054                        506 _dollar_sign_command_handler_sloc0_1_0:
      000054                        507 	.ds 2
      000056                        508 _hashtag_command_handler_c_196609_174:
      000056                        509 	.ds 1
      000057                        510 _ampersand_command_handler_sloc0_1_0:
      000057                        511 	.ds 3
      00005A                        512 _ampersand_command_handler_sloc1_1_0:
      00005A                        513 	.ds 2
      00005C                        514 _ampersand_command_handler_sloc2_1_0:
      00005C                        515 	.ds 3
                                    516 ;--------------------------------------------------------
                                    517 ; overlayable items in internal ram
                                    518 ;--------------------------------------------------------
                                    519 ;--------------------------------------------------------
                                    520 ; Stack segment in internal ram
                                    521 ;--------------------------------------------------------
                                    522 	.area	SSEG
      00005F                        523 __start__stack:
      00005F                        524 	.ds	1
                                    525 
                                    526 ;--------------------------------------------------------
                                    527 ; indirectly addressable internal ram data
                                    528 ;--------------------------------------------------------
                                    529 	.area ISEG    (DATA)
                                    530 ;--------------------------------------------------------
                                    531 ; absolute internal ram data
                                    532 ;--------------------------------------------------------
                                    533 	.area IABS    (ABS,DATA)
                                    534 	.area IABS    (ABS,DATA)
                                    535 ;--------------------------------------------------------
                                    536 ; bit data
                                    537 ;--------------------------------------------------------
                                    538 	.area BSEG    (BIT)
      000000                        539 _is_alphabet_char_sloc0_1_0:
      000000                        540 	.ds 1
      000001                        541 _is_number_sloc0_1_0:
      000001                        542 	.ds 1
                                    543 ;--------------------------------------------------------
                                    544 ; paged external ram data
                                    545 ;--------------------------------------------------------
                                    546 	.area PSEG    (PAG,XDATA)
                                    547 ;--------------------------------------------------------
                                    548 ; external ram data
                                    549 ;--------------------------------------------------------
                                    550 	.area XSEG    (XDATA)
      000001                        551 _static_buffers::
      000001                        552 	.ds 22
      000017                        553 _is_alphabet_char_c_65536_82:
      000017                        554 	.ds 1
      000018                        555 _initialize_default_elements_buffer_65536_84:
      000018                        556 	.ds 3
      00001B                        557 _alloc_new_buffer_size_65536_86:
      00001B                        558 	.ds 2
      00001D                        559 _is_number_c_65536_90:
      00001D                        560 	.ds 1
      00001E                        561 _initialize_buffers_max_user_input_65538_98:
      00001E                        562 	.ds 2
      000020                        563 _initialize_buffers_total_heap_sz_65539_114:
      000020                        564 	.ds 2
      000022                        565 _initialize_buffers_curr_65540_118:
      000022                        566 	.ds 3
      000025                        567 _store_in_buffer_PARM_2:
      000025                        568 	.ds 1
      000026                        569 _store_in_buffer_buffer_65536_121:
      000026                        570 	.ds 3
      000029                        571 _command_header_command_string_65536_126:
      000029                        572 	.ds 3
      00002C                        573 _heap_report_total_heap_sz_65537_129:
      00002C                        574 	.ds 2
      00002E                        575 _heap_report_curr_65538_133:
      00002E                        576 	.ds 3
      000031                        577 _get_user_buffer_sz_maximum_sz_65536_136:
      000031                        578 	.ds 2
      000033                        579 _qmark_command_handler_curr_output_char_65538_149:
      000033                        580 	.ds 2
      000035                        581 _qmark_command_handler_curr_char_196610_151:
      000035                        582 	.ds 1
      000036                        583 _percent_command_handler_curr_65537_165:
      000036                        584 	.ds 3
                                    585 ;--------------------------------------------------------
                                    586 ; absolute external ram data
                                    587 ;--------------------------------------------------------
                                    588 	.area XABS    (ABS,XDATA)
                                    589 ;--------------------------------------------------------
                                    590 ; external initialized ram data
                                    591 ;--------------------------------------------------------
                                    592 	.area XISEG   (XDATA)
      0020D3                        593 _dynamic_buffers_list::
      0020D3                        594 	.ds 3
                                    595 	.area HOME    (CODE)
                                    596 	.area GSINIT0 (CODE)
                                    597 	.area GSINIT1 (CODE)
                                    598 	.area GSINIT2 (CODE)
                                    599 	.area GSINIT3 (CODE)
                                    600 	.area GSINIT4 (CODE)
                                    601 	.area GSINIT5 (CODE)
                                    602 	.area GSINIT  (CODE)
                                    603 	.area GSFINAL (CODE)
                                    604 	.area CSEG    (CODE)
                                    605 ;--------------------------------------------------------
                                    606 ; interrupt vector
                                    607 ;--------------------------------------------------------
                                    608 	.area HOME    (CODE)
      002000                        609 __interrupt_vect:
      002000 02 20 34         [24]  610 	ljmp	__sdcc_gsinit_startup
                                    611 ;--------------------------------------------------------
                                    612 ; global & static initialisations
                                    613 ;--------------------------------------------------------
                                    614 	.area HOME    (CODE)
                                    615 	.area GSINIT  (CODE)
                                    616 	.area GSFINAL (CODE)
                                    617 	.area GSINIT  (CODE)
                                    618 	.globl __sdcc_gsinit_startup
                                    619 	.globl __sdcc_program_startup
                                    620 	.globl __start__stack
                                    621 	.globl __mcs51_genXINIT
                                    622 	.globl __mcs51_genXRAMCLEAR
                                    623 	.globl __mcs51_genRAMCLEAR
                                    624 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  625 	ljmp	__sdcc_program_startup
                                    626 ;--------------------------------------------------------
                                    627 ; Home
                                    628 ;--------------------------------------------------------
                                    629 	.area HOME    (CODE)
                                    630 	.area HOME    (CODE)
      002003                        631 __sdcc_program_startup:
      002003 02 38 A4         [24]  632 	ljmp	_main
                                    633 ;	return from main will return to caller
                                    634 ;--------------------------------------------------------
                                    635 ; code
                                    636 ;--------------------------------------------------------
                                    637 	.area CSEG    (CODE)
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    640 ;------------------------------------------------------------
                                    641 ;	src/main.c:54: int _sdcc_external_startup()
                                    642 ;	-----------------------------------------
                                    643 ;	 function _sdcc_external_startup
                                    644 ;	-----------------------------------------
      002090                        645 __sdcc_external_startup:
                           000007   646 	ar7 = 0x07
                           000006   647 	ar6 = 0x06
                           000005   648 	ar5 = 0x05
                           000004   649 	ar4 = 0x04
                           000003   650 	ar3 = 0x03
                           000002   651 	ar2 = 0x02
                           000001   652 	ar1 = 0x01
                           000000   653 	ar0 = 0x00
                                    654 ;	src/main.c:57: return 0;
      002090 90 00 00         [24]  655 	mov	dptr,#0x0000
                                    656 ;	src/main.c:58: }
      002093 22               [24]  657 	ret
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'is_alphabet_char'
                                    660 ;------------------------------------------------------------
                                    661 ;c                         Allocated with name '_is_alphabet_char_c_65536_82'
                                    662 ;------------------------------------------------------------
                                    663 ;	src/main.c:88: bool is_alphabet_char(char c)
                                    664 ;	-----------------------------------------
                                    665 ;	 function is_alphabet_char
                                    666 ;	-----------------------------------------
      002094                        667 _is_alphabet_char:
      002094 E5 82            [12]  668 	mov	a,dpl
      002096 90 00 17         [24]  669 	mov	dptr,#_is_alphabet_char_c_65536_82
      002099 F0               [24]  670 	movx	@dptr,a
                                    671 ;	src/main.c:90: return (c <= 'Z' && c >= 'A')
      00209A E0               [24]  672 	movx	a,@dptr
      00209B FF               [12]  673 	mov  r7,a
      00209C 24 A5            [12]  674 	add	a,#0xff - 0x5a
      00209E 92 00            [24]  675 	mov	_is_alphabet_char_sloc0_1_0,c
      0020A0 40 07            [24]  676 	jc	00108$
      0020A2 BF 41 00         [24]  677 	cjne	r7,#0x41,00121$
      0020A5                        678 00121$:
      0020A5 92 00            [24]  679 	mov	_is_alphabet_char_sloc0_1_0,c
      0020A7 50 16            [24]  680 	jnc	00104$
      0020A9                        681 00108$:
                                    682 ;	src/main.c:91: || (c <= 'z' && c >= 'a');
      0020A9 90 00 17         [24]  683 	mov	dptr,#_is_alphabet_char_c_65536_82
      0020AC E0               [24]  684 	movx	a,@dptr
      0020AD FF               [12]  685 	mov  r7,a
      0020AE 24 85            [12]  686 	add	a,#0xff - 0x7a
      0020B0 92 00            [24]  687 	mov	_is_alphabet_char_sloc0_1_0,c
      0020B2 40 07            [24]  688 	jc	00103$
      0020B4 BF 61 00         [24]  689 	cjne	r7,#0x61,00124$
      0020B7                        690 00124$:
      0020B7 92 00            [24]  691 	mov	_is_alphabet_char_sloc0_1_0,c
      0020B9 50 04            [24]  692 	jnc	00104$
      0020BB                        693 00103$:
                                    694 ;	assignBit
      0020BB C2 00            [12]  695 	clr	_is_alphabet_char_sloc0_1_0
      0020BD 80 02            [24]  696 	sjmp	00105$
      0020BF                        697 00104$:
                                    698 ;	assignBit
      0020BF D2 00            [12]  699 	setb	_is_alphabet_char_sloc0_1_0
      0020C1                        700 00105$:
      0020C1 A2 00            [12]  701 	mov	c,_is_alphabet_char_sloc0_1_0
      0020C3 E4               [12]  702 	clr	a
      0020C4 33               [12]  703 	rlc	a
      0020C5 F5 82            [12]  704 	mov	dpl,a
                                    705 ;	src/main.c:92: }
      0020C7 22               [24]  706 	ret
                                    707 ;------------------------------------------------------------
                                    708 ;Allocation info for local variables in function 'initialize_default_elements'
                                    709 ;------------------------------------------------------------
                                    710 ;buffer                    Allocated with name '_initialize_default_elements_buffer_65536_84'
                                    711 ;------------------------------------------------------------
                                    712 ;	src/main.c:94: void initialize_default_elements(buffer_t *buffer)
                                    713 ;	-----------------------------------------
                                    714 ;	 function initialize_default_elements
                                    715 ;	-----------------------------------------
      0020C8                        716 _initialize_default_elements:
      0020C8 AF F0            [24]  717 	mov	r7,b
      0020CA AE 83            [24]  718 	mov	r6,dph
      0020CC E5 82            [12]  719 	mov	a,dpl
      0020CE 90 00 18         [24]  720 	mov	dptr,#_initialize_default_elements_buffer_65536_84
      0020D1 F0               [24]  721 	movx	@dptr,a
      0020D2 EE               [12]  722 	mov	a,r6
      0020D3 A3               [24]  723 	inc	dptr
      0020D4 F0               [24]  724 	movx	@dptr,a
      0020D5 EF               [12]  725 	mov	a,r7
      0020D6 A3               [24]  726 	inc	dptr
      0020D7 F0               [24]  727 	movx	@dptr,a
                                    728 ;	src/main.c:96: buffer->alphabet_chars = 0;
      0020D8 90 00 18         [24]  729 	mov	dptr,#_initialize_default_elements_buffer_65536_84
      0020DB E0               [24]  730 	movx	a,@dptr
      0020DC FD               [12]  731 	mov	r5,a
      0020DD A3               [24]  732 	inc	dptr
      0020DE E0               [24]  733 	movx	a,@dptr
      0020DF FE               [12]  734 	mov	r6,a
      0020E0 A3               [24]  735 	inc	dptr
      0020E1 E0               [24]  736 	movx	a,@dptr
      0020E2 FF               [12]  737 	mov	r7,a
      0020E3 74 02            [12]  738 	mov	a,#0x02
      0020E5 2D               [12]  739 	add	a,r5
      0020E6 FA               [12]  740 	mov	r2,a
      0020E7 E4               [12]  741 	clr	a
      0020E8 3E               [12]  742 	addc	a,r6
      0020E9 FB               [12]  743 	mov	r3,a
      0020EA 8F 04            [24]  744 	mov	ar4,r7
      0020EC 8A 82            [24]  745 	mov	dpl,r2
      0020EE 8B 83            [24]  746 	mov	dph,r3
      0020F0 8C F0            [24]  747 	mov	b,r4
      0020F2 E4               [12]  748 	clr	a
      0020F3 12 43 28         [24]  749 	lcall	__gptrput
      0020F6 A3               [24]  750 	inc	dptr
      0020F7 12 43 28         [24]  751 	lcall	__gptrput
                                    752 ;	src/main.c:97: buffer->curr_available_char = 0;
      0020FA 74 06            [12]  753 	mov	a,#0x06
      0020FC 2D               [12]  754 	add	a,r5
      0020FD FA               [12]  755 	mov	r2,a
      0020FE E4               [12]  756 	clr	a
      0020FF 3E               [12]  757 	addc	a,r6
      002100 FB               [12]  758 	mov	r3,a
      002101 8F 04            [24]  759 	mov	ar4,r7
      002103 8A 82            [24]  760 	mov	dpl,r2
      002105 8B 83            [24]  761 	mov	dph,r3
      002107 8C F0            [24]  762 	mov	b,r4
      002109 E4               [12]  763 	clr	a
      00210A 12 43 28         [24]  764 	lcall	__gptrput
      00210D A3               [24]  765 	inc	dptr
      00210E 12 43 28         [24]  766 	lcall	__gptrput
                                    767 ;	src/main.c:98: buffer->next = NULL;
      002111 74 08            [12]  768 	mov	a,#0x08
      002113 2D               [12]  769 	add	a,r5
      002114 FA               [12]  770 	mov	r2,a
      002115 E4               [12]  771 	clr	a
      002116 3E               [12]  772 	addc	a,r6
      002117 FB               [12]  773 	mov	r3,a
      002118 8F 04            [24]  774 	mov	ar4,r7
      00211A 8A 82            [24]  775 	mov	dpl,r2
      00211C 8B 83            [24]  776 	mov	dph,r3
      00211E 8C F0            [24]  777 	mov	b,r4
      002120 E4               [12]  778 	clr	a
      002121 12 43 28         [24]  779 	lcall	__gptrput
      002124 A3               [24]  780 	inc	dptr
      002125 12 43 28         [24]  781 	lcall	__gptrput
      002128 A3               [24]  782 	inc	dptr
      002129 12 43 28         [24]  783 	lcall	__gptrput
                                    784 ;	src/main.c:100: memset(buffer->buffer, 0x00, buffer->size);
      00212C 8D 82            [24]  785 	mov	dpl,r5
      00212E 8E 83            [24]  786 	mov	dph,r6
      002130 8F F0            [24]  787 	mov	b,r7
      002132 12 4F 82         [24]  788 	lcall	__gptrget
      002135 FB               [12]  789 	mov	r3,a
      002136 A3               [24]  790 	inc	dptr
      002137 12 4F 82         [24]  791 	lcall	__gptrget
      00213A FC               [12]  792 	mov	r4,a
      00213B 7A 00            [12]  793 	mov	r2,#0x00
      00213D 74 04            [12]  794 	mov	a,#0x04
      00213F 2D               [12]  795 	add	a,r5
      002140 FD               [12]  796 	mov	r5,a
      002141 E4               [12]  797 	clr	a
      002142 3E               [12]  798 	addc	a,r6
      002143 FE               [12]  799 	mov	r6,a
      002144 8D 82            [24]  800 	mov	dpl,r5
      002146 8E 83            [24]  801 	mov	dph,r6
      002148 8F F0            [24]  802 	mov	b,r7
      00214A 12 4F 82         [24]  803 	lcall	__gptrget
      00214D FD               [12]  804 	mov	r5,a
      00214E A3               [24]  805 	inc	dptr
      00214F 12 4F 82         [24]  806 	lcall	__gptrget
      002152 FE               [12]  807 	mov	r6,a
      002153 90 20 88         [24]  808 	mov	dptr,#_memset_PARM_2
      002156 E4               [12]  809 	clr	a
      002157 F0               [24]  810 	movx	@dptr,a
      002158 90 20 89         [24]  811 	mov	dptr,#_memset_PARM_3
      00215B ED               [12]  812 	mov	a,r5
      00215C F0               [24]  813 	movx	@dptr,a
      00215D EE               [12]  814 	mov	a,r6
      00215E A3               [24]  815 	inc	dptr
      00215F F0               [24]  816 	movx	@dptr,a
      002160 8B 82            [24]  817 	mov	dpl,r3
      002162 8C 83            [24]  818 	mov	dph,r4
      002164 8A F0            [24]  819 	mov	b,r2
                                    820 ;	src/main.c:101: }
      002166 02 41 DC         [24]  821 	ljmp	_memset
                                    822 ;------------------------------------------------------------
                                    823 ;Allocation info for local variables in function 'alloc_new_buffer'
                                    824 ;------------------------------------------------------------
                                    825 ;size                      Allocated with name '_alloc_new_buffer_size_65536_86'
                                    826 ;header                    Allocated with name '_alloc_new_buffer_header_65536_87'
                                    827 ;------------------------------------------------------------
                                    828 ;	src/main.c:103: buffer_t *alloc_new_buffer(size_t size)
                                    829 ;	-----------------------------------------
                                    830 ;	 function alloc_new_buffer
                                    831 ;	-----------------------------------------
      002169                        832 _alloc_new_buffer:
      002169 AF 83            [24]  833 	mov	r7,dph
      00216B E5 82            [12]  834 	mov	a,dpl
      00216D 90 00 1B         [24]  835 	mov	dptr,#_alloc_new_buffer_size_65536_86
      002170 F0               [24]  836 	movx	@dptr,a
      002171 EF               [12]  837 	mov	a,r7
      002172 A3               [24]  838 	inc	dptr
      002173 F0               [24]  839 	movx	@dptr,a
                                    840 ;	src/main.c:105: buffer_t *header = malloc(sizeof(buffer_t));
      002174 90 00 0B         [24]  841 	mov	dptr,#0x000b
      002177 12 43 7F         [24]  842 	lcall	_malloc
      00217A AE 82            [24]  843 	mov	r6,dpl
      00217C AD 83            [24]  844 	mov	r5,dph
      00217E 7F 00            [12]  845 	mov	r7,#0x00
                                    846 ;	src/main.c:106: if (header == NULL)
      002180 EE               [12]  847 	mov	a,r6
      002181 4D               [12]  848 	orl	a,r5
                                    849 ;	src/main.c:108: return NULL;
      002182 70 06            [24]  850 	jnz	00102$
      002184 90 00 00         [24]  851 	mov	dptr,#0x0000
      002187 F5 F0            [12]  852 	mov	b,a
      002189 22               [24]  853 	ret
      00218A                        854 00102$:
                                    855 ;	src/main.c:110: header->size = size;
      00218A 74 04            [12]  856 	mov	a,#0x04
      00218C 2E               [12]  857 	add	a,r6
      00218D FA               [12]  858 	mov	r2,a
      00218E E4               [12]  859 	clr	a
      00218F 3D               [12]  860 	addc	a,r5
      002190 FB               [12]  861 	mov	r3,a
      002191 8F 04            [24]  862 	mov	ar4,r7
      002193 90 00 1B         [24]  863 	mov	dptr,#_alloc_new_buffer_size_65536_86
      002196 E0               [24]  864 	movx	a,@dptr
      002197 F8               [12]  865 	mov	r0,a
      002198 A3               [24]  866 	inc	dptr
      002199 E0               [24]  867 	movx	a,@dptr
      00219A F9               [12]  868 	mov	r1,a
      00219B 8A 82            [24]  869 	mov	dpl,r2
      00219D 8B 83            [24]  870 	mov	dph,r3
      00219F 8C F0            [24]  871 	mov	b,r4
      0021A1 E8               [12]  872 	mov	a,r0
      0021A2 12 43 28         [24]  873 	lcall	__gptrput
      0021A5 A3               [24]  874 	inc	dptr
      0021A6 E9               [12]  875 	mov	a,r1
      0021A7 12 43 28         [24]  876 	lcall	__gptrput
                                    877 ;	src/main.c:111: header->buffer = malloc(size);
      0021AA 88 82            [24]  878 	mov	dpl,r0
      0021AC 89 83            [24]  879 	mov	dph,r1
      0021AE C0 07            [24]  880 	push	ar7
      0021B0 C0 06            [24]  881 	push	ar6
      0021B2 C0 05            [24]  882 	push	ar5
      0021B4 12 43 7F         [24]  883 	lcall	_malloc
      0021B7 AB 82            [24]  884 	mov	r3,dpl
      0021B9 AC 83            [24]  885 	mov	r4,dph
      0021BB D0 05            [24]  886 	pop	ar5
      0021BD D0 06            [24]  887 	pop	ar6
      0021BF D0 07            [24]  888 	pop	ar7
      0021C1 8E 82            [24]  889 	mov	dpl,r6
      0021C3 8D 83            [24]  890 	mov	dph,r5
      0021C5 8F F0            [24]  891 	mov	b,r7
      0021C7 EB               [12]  892 	mov	a,r3
      0021C8 12 43 28         [24]  893 	lcall	__gptrput
      0021CB A3               [24]  894 	inc	dptr
      0021CC EC               [12]  895 	mov	a,r4
      0021CD 12 43 28         [24]  896 	lcall	__gptrput
                                    897 ;	src/main.c:112: if (header->buffer == NULL)
      0021D0 EB               [12]  898 	mov	a,r3
      0021D1 4C               [12]  899 	orl	a,r4
      0021D2 70 16            [24]  900 	jnz	00104$
                                    901 ;	src/main.c:114: free(header);
      0021D4 8E 02            [24]  902 	mov	ar2,r6
      0021D6 8D 03            [24]  903 	mov	ar3,r5
      0021D8 8F 04            [24]  904 	mov	ar4,r7
      0021DA 8A 82            [24]  905 	mov	dpl,r2
      0021DC 8B 83            [24]  906 	mov	dph,r3
      0021DE 8C F0            [24]  907 	mov	b,r4
      0021E0 12 40 11         [24]  908 	lcall	_free
                                    909 ;	src/main.c:115: return NULL;
      0021E3 90 00 00         [24]  910 	mov	dptr,#0x0000
      0021E6 75 F0 00         [24]  911 	mov	b,#0x00
      0021E9 22               [24]  912 	ret
      0021EA                        913 00104$:
                                    914 ;	src/main.c:117: initialize_default_elements(header);
      0021EA 8E 82            [24]  915 	mov	dpl,r6
      0021EC 8D 83            [24]  916 	mov	dph,r5
      0021EE 8F F0            [24]  917 	mov	b,r7
      0021F0 C0 07            [24]  918 	push	ar7
      0021F2 C0 06            [24]  919 	push	ar6
      0021F4 C0 05            [24]  920 	push	ar5
      0021F6 12 20 C8         [24]  921 	lcall	_initialize_default_elements
      0021F9 D0 05            [24]  922 	pop	ar5
      0021FB D0 06            [24]  923 	pop	ar6
      0021FD D0 07            [24]  924 	pop	ar7
                                    925 ;	src/main.c:118: return header; 
      0021FF 8E 82            [24]  926 	mov	dpl,r6
      002201 8D 83            [24]  927 	mov	dph,r5
      002203 8F F0            [24]  928 	mov	b,r7
                                    929 ;	src/main.c:119: }
      002205 22               [24]  930 	ret
                                    931 ;------------------------------------------------------------
                                    932 ;Allocation info for local variables in function 'is_number'
                                    933 ;------------------------------------------------------------
                                    934 ;c                         Allocated with name '_is_number_c_65536_90'
                                    935 ;------------------------------------------------------------
                                    936 ;	src/main.c:121: bool is_number(char c)
                                    937 ;	-----------------------------------------
                                    938 ;	 function is_number
                                    939 ;	-----------------------------------------
      002206                        940 _is_number:
      002206 E5 82            [12]  941 	mov	a,dpl
      002208 90 00 1D         [24]  942 	mov	dptr,#_is_number_c_65536_90
      00220B F0               [24]  943 	movx	@dptr,a
                                    944 ;	src/main.c:123: return c >= '0' && c <= '9';
      00220C E0               [24]  945 	movx	a,@dptr
      00220D FF               [12]  946 	mov	r7,a
      00220E BF 30 00         [24]  947 	cjne	r7,#0x30,00110$
      002211                        948 00110$:
      002211 92 01            [24]  949 	mov	_is_number_sloc0_1_0,c
      002213 40 07            [24]  950 	jc	00103$
      002215 EF               [12]  951 	mov	a,r7
      002216 24 C6            [12]  952 	add	a,#0xff - 0x39
      002218 92 01            [24]  953 	mov	_is_number_sloc0_1_0,c
      00221A 50 04            [24]  954 	jnc	00104$
      00221C                        955 00103$:
                                    956 ;	assignBit
      00221C C2 01            [12]  957 	clr	_is_number_sloc0_1_0
      00221E 80 02            [24]  958 	sjmp	00105$
      002220                        959 00104$:
                                    960 ;	assignBit
      002220 D2 01            [12]  961 	setb	_is_number_sloc0_1_0
      002222                        962 00105$:
      002222 A2 01            [12]  963 	mov	c,_is_number_sloc0_1_0
      002224 E4               [12]  964 	clr	a
      002225 33               [12]  965 	rlc	a
      002226 F5 82            [12]  966 	mov	dpl,a
                                    967 ;	src/main.c:124: }
      002228 22               [24]  968 	ret
                                    969 ;------------------------------------------------------------
                                    970 ;Allocation info for local variables in function 'initialize_buffers'
                                    971 ;------------------------------------------------------------
                                    972 ;sloc0                     Allocated with name '_initialize_buffers_sloc0_1_0'
                                    973 ;sloc1                     Allocated with name '_initialize_buffers_sloc1_1_0'
                                    974 ;sloc2                     Allocated with name '_initialize_buffers_sloc2_1_0'
                                    975 ;sloc3                     Allocated with name '_initialize_buffers_sloc3_1_0'
                                    976 ;sloc4                     Allocated with name '_initialize_buffers_sloc4_1_0'
                                    977 ;sloc5                     Allocated with name '_initialize_buffers_sloc5_1_0'
                                    978 ;student_number            Allocated with name '_initialize_buffers_student_number_65537_93'
                                    979 ;max_user_input            Allocated with name '_initialize_buffers_max_user_input_65538_98'
                                    980 ;user_buffer_size          Allocated with name '_initialize_buffers_user_buffer_size_65538_98'
                                    981 ;i                         Allocated with name '_initialize_buffers_i_196610_100'
                                    982 ;i                         Allocated with name '_initialize_buffers_i_196610_104'
                                    983 ;new_buffer                Allocated with name '_initialize_buffers_new_buffer_262146_105'
                                    984 ;buffer_4                  Allocated with name '_initialize_buffers_buffer_4_131075_108'
                                    985 ;buffer_5                  Allocated with name '_initialize_buffers_buffer_5_131076_111'
                                    986 ;total_heap_sz             Allocated with name '_initialize_buffers_total_heap_sz_65539_114'
                                    987 ;i                         Allocated with name '_initialize_buffers_i_65539_114'
                                    988 ;curr                      Allocated with name '_initialize_buffers_curr_65540_118'
                                    989 ;------------------------------------------------------------
                                    990 ;	src/main.c:127: void initialize_buffers()
                                    991 ;	-----------------------------------------
                                    992 ;	 function initialize_buffers
                                    993 ;	-----------------------------------------
      002229                        994 _initialize_buffers:
                                    995 ;	src/main.c:129: dynamic_buffers_list.head = NULL;
      002229 90 20 D3         [24]  996 	mov	dptr,#_dynamic_buffers_list
      00222C E4               [12]  997 	clr	a
      00222D F0               [24]  998 	movx	@dptr,a
      00222E A3               [24]  999 	inc	dptr
      00222F F0               [24] 1000 	movx	@dptr,a
      002230 A3               [24] 1001 	inc	dptr
      002231 F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	src/main.c:131: while (true) 
      002232                       1004 00110$:
                                   1005 ;	src/main.c:133: printf("\r\nPlease enter the last two digits of your ID:");
      002232 74 9E            [12] 1006 	mov	a,#___str_0
      002234 C0 E0            [24] 1007 	push	acc
      002236 74 4F            [12] 1008 	mov	a,#(___str_0 >> 8)
      002238 C0 E0            [24] 1009 	push	acc
      00223A 74 80            [12] 1010 	mov	a,#0x80
      00223C C0 E0            [24] 1011 	push	acc
      00223E 12 45 56         [24] 1012 	lcall	_printf
      002241 15 81            [12] 1013 	dec	sp
      002243 15 81            [12] 1014 	dec	sp
      002245 15 81            [12] 1015 	dec	sp
                                   1016 ;	src/main.c:134: get_string();
      002247 12 39 A9         [24] 1017 	lcall	_get_string
                                   1018 ;	src/main.c:135: if (strlen(get_input_buffer()) != TWO_DIGIT_LEN 
      00224A 12 39 A2         [24] 1019 	lcall	_get_input_buffer
      00224D 12 4F 6A         [24] 1020 	lcall	_strlen
      002250 AE 82            [24] 1021 	mov	r6,dpl
      002252 AF 83            [24] 1022 	mov	r7,dph
      002254 BE 02 32         [24] 1023 	cjne	r6,#0x02,00101$
      002257 BF 00 2F         [24] 1024 	cjne	r7,#0x00,00101$
                                   1025 ;	src/main.c:136: || !is_number(*get_input_buffer())
      00225A 12 39 A2         [24] 1026 	lcall	_get_input_buffer
      00225D 12 4F 82         [24] 1027 	lcall	__gptrget
      002260 F5 82            [12] 1028 	mov	dpl,a
      002262 12 22 06         [24] 1029 	lcall	_is_number
      002265 E5 82            [12] 1030 	mov	a,dpl
      002267 60 20            [24] 1031 	jz	00101$
                                   1032 ;	src/main.c:137: || !is_number(*(get_input_buffer()+1)))
      002269 12 39 A2         [24] 1033 	lcall	_get_input_buffer
      00226C AD 82            [24] 1034 	mov	r5,dpl
      00226E AE 83            [24] 1035 	mov	r6,dph
      002270 AF F0            [24] 1036 	mov	r7,b
      002272 0D               [12] 1037 	inc	r5
      002273 BD 00 01         [24] 1038 	cjne	r5,#0x00,00229$
      002276 0E               [12] 1039 	inc	r6
      002277                       1040 00229$:
      002277 8D 82            [24] 1041 	mov	dpl,r5
      002279 8E 83            [24] 1042 	mov	dph,r6
      00227B 8F F0            [24] 1043 	mov	b,r7
      00227D 12 4F 82         [24] 1044 	lcall	__gptrget
      002280 F5 82            [12] 1045 	mov	dpl,a
      002282 12 22 06         [24] 1046 	lcall	_is_number
      002285 E5 82            [12] 1047 	mov	a,dpl
      002287 70 17            [24] 1048 	jnz	00102$
      002289                       1049 00101$:
                                   1050 ;	src/main.c:139: printf("\r\n Did not enter valid two digit number, please try again");
      002289 74 CD            [12] 1051 	mov	a,#___str_1
      00228B C0 E0            [24] 1052 	push	acc
      00228D 74 4F            [12] 1053 	mov	a,#(___str_1 >> 8)
      00228F C0 E0            [24] 1054 	push	acc
      002291 74 80            [12] 1055 	mov	a,#0x80
      002293 C0 E0            [24] 1056 	push	acc
      002295 12 45 56         [24] 1057 	lcall	_printf
      002298 15 81            [12] 1058 	dec	sp
      00229A 15 81            [12] 1059 	dec	sp
      00229C 15 81            [12] 1060 	dec	sp
                                   1061 ;	src/main.c:140: continue;
      00229E 80 92            [24] 1062 	sjmp	00110$
      0022A0                       1063 00102$:
                                   1064 ;	src/main.c:142: student_number = atoi(get_input_buffer());
      0022A0 12 39 A2         [24] 1065 	lcall	_get_input_buffer
      0022A3 12 42 04         [24] 1066 	lcall	_atoi
      0022A6 85 82 25         [24] 1067 	mov	_initialize_buffers_sloc2_1_0,dpl
                                   1068 ;	src/main.c:143: if (!(student_number < 0 || student_number > MAX_STUDENT_NUMBER))
      0022A9 E5 83            [12] 1069 	mov	a,dph
      0022AB F5 26            [12] 1070 	mov	(_initialize_buffers_sloc2_1_0 + 1),a
      0022AD 20 E7 11         [24] 1071 	jb	acc.7,00106$
      0022B0 C3               [12] 1072 	clr	c
      0022B1 74 63            [12] 1073 	mov	a,#0x63
      0022B3 95 25            [12] 1074 	subb	a,_initialize_buffers_sloc2_1_0
      0022B5 74 80            [12] 1075 	mov	a,#(0x00 ^ 0x80)
      0022B7 85 26 F0         [24] 1076 	mov	b,(_initialize_buffers_sloc2_1_0 + 1)
      0022BA 63 F0 80         [24] 1077 	xrl	b,#0x80
      0022BD 95 F0            [12] 1078 	subb	a,b
      0022BF 50 18            [24] 1079 	jnc	00111$
                                   1080 ;	src/main.c:145: break;
      0022C1                       1081 00106$:
                                   1082 ;	src/main.c:149: printf("\r\nAtoi error: number invalid or out of range, please try again");
      0022C1 74 07            [12] 1083 	mov	a,#___str_2
      0022C3 C0 E0            [24] 1084 	push	acc
      0022C5 74 50            [12] 1085 	mov	a,#(___str_2 >> 8)
      0022C7 C0 E0            [24] 1086 	push	acc
      0022C9 74 80            [12] 1087 	mov	a,#0x80
      0022CB C0 E0            [24] 1088 	push	acc
      0022CD 12 45 56         [24] 1089 	lcall	_printf
      0022D0 15 81            [12] 1090 	dec	sp
      0022D2 15 81            [12] 1091 	dec	sp
      0022D4 15 81            [12] 1092 	dec	sp
      0022D6 02 22 32         [24] 1093 	ljmp	00110$
      0022D9                       1094 00111$:
                                   1095 ;	src/main.c:153: size_t max_user_input = USER_BUFFER_MAX;
      0022D9 90 00 1E         [24] 1096 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      0022DC E4               [12] 1097 	clr	a
      0022DD F0               [24] 1098 	movx	@dptr,a
      0022DE 74 04            [12] 1099 	mov	a,#0x04
      0022E0 A3               [24] 1100 	inc	dptr
      0022E1 F0               [24] 1101 	movx	@dptr,a
                                   1102 ;	src/main.c:157: memset(static_buffers, 0, BUFFER_ALWAYS_HELD_COUNT * sizeof(buffer_t));
      0022E2 90 20 88         [24] 1103 	mov	dptr,#_memset_PARM_2
      0022E5 E4               [12] 1104 	clr	a
      0022E6 F0               [24] 1105 	movx	@dptr,a
      0022E7 90 20 89         [24] 1106 	mov	dptr,#_memset_PARM_3
      0022EA 74 16            [12] 1107 	mov	a,#0x16
      0022EC F0               [24] 1108 	movx	@dptr,a
      0022ED E4               [12] 1109 	clr	a
      0022EE A3               [24] 1110 	inc	dptr
      0022EF F0               [24] 1111 	movx	@dptr,a
      0022F0 90 00 01         [24] 1112 	mov	dptr,#_static_buffers
      0022F3 75 F0 00         [24] 1113 	mov	b,#0x00
      0022F6 12 41 DC         [24] 1114 	lcall	_memset
                                   1115 ;	src/main.c:158: while(true)
      0022F9 90 20 9A         [24] 1116 	mov	dptr,#__mulint_PARM_2
      0022FC 74 02            [12] 1117 	mov	a,#0x02
      0022FE 25 25            [12] 1118 	add	a,_initialize_buffers_sloc2_1_0
      002300 F0               [24] 1119 	movx	@dptr,a
      002301 E4               [12] 1120 	clr	a
      002302 35 26            [12] 1121 	addc	a,(_initialize_buffers_sloc2_1_0 + 1)
      002304 A3               [24] 1122 	inc	dptr
      002305 F0               [24] 1123 	movx	@dptr,a
      002306 90 00 0A         [24] 1124 	mov	dptr,#0x000a
      002309 12 44 E8         [24] 1125 	lcall	__mulint
      00230C AC 82            [24] 1126 	mov	r4,dpl
      00230E AD 83            [24] 1127 	mov	r5,dph
      002310                       1128 00128$:
                                   1129 ;	src/main.c:160: user_buffer_size = get_user_buffer_sz(max_user_input);
      002310 90 00 1E         [24] 1130 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      002313 E0               [24] 1131 	movx	a,@dptr
      002314 FA               [12] 1132 	mov	r2,a
      002315 A3               [24] 1133 	inc	dptr
      002316 E0               [24] 1134 	movx	a,@dptr
      002317 FB               [12] 1135 	mov	r3,a
      002318 8A 82            [24] 1136 	mov	dpl,r2
      00231A 8B 83            [24] 1137 	mov	dph,r3
      00231C C0 05            [24] 1138 	push	ar5
      00231E C0 04            [24] 1139 	push	ar4
      002320 12 2B FD         [24] 1140 	lcall	_get_user_buffer_sz
      002323 AA 82            [24] 1141 	mov	r2,dpl
      002325 AB 83            [24] 1142 	mov	r3,dph
      002327 D0 04            [24] 1143 	pop	ar4
      002329 D0 05            [24] 1144 	pop	ar5
                                   1145 ;	src/main.c:161: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00232B 78 00            [12] 1146 	mov	r0,#0x00
      00232D 79 00            [12] 1147 	mov	r1,#0x00
      00232F                       1148 00139$:
      00232F C3               [12] 1149 	clr	c
      002330 E8               [12] 1150 	mov	a,r0
      002331 94 02            [12] 1151 	subb	a,#0x02
      002333 E9               [12] 1152 	mov	a,r1
      002334 64 80            [12] 1153 	xrl	a,#0x80
      002336 94 80            [12] 1154 	subb	a,#0x80
      002338 40 03            [24] 1155 	jc	00233$
      00233A 02 24 34         [24] 1156 	ljmp	00158$
      00233D                       1157 00233$:
                                   1158 ;	src/main.c:164: static_buffers[i].buffer = malloc(user_buffer_size);
      00233D C0 04            [24] 1159 	push	ar4
      00233F C0 05            [24] 1160 	push	ar5
      002341 90 20 9A         [24] 1161 	mov	dptr,#__mulint_PARM_2
      002344 E8               [12] 1162 	mov	a,r0
      002345 F0               [24] 1163 	movx	@dptr,a
      002346 E9               [12] 1164 	mov	a,r1
      002347 A3               [24] 1165 	inc	dptr
      002348 F0               [24] 1166 	movx	@dptr,a
      002349 90 00 0B         [24] 1167 	mov	dptr,#0x000b
      00234C C0 05            [24] 1168 	push	ar5
      00234E C0 04            [24] 1169 	push	ar4
      002350 C0 03            [24] 1170 	push	ar3
      002352 C0 02            [24] 1171 	push	ar2
      002354 C0 01            [24] 1172 	push	ar1
      002356 C0 00            [24] 1173 	push	ar0
      002358 12 44 E8         [24] 1174 	lcall	__mulint
      00235B 85 82 21         [24] 1175 	mov	_initialize_buffers_sloc0_1_0,dpl
      00235E 85 83 22         [24] 1176 	mov	(_initialize_buffers_sloc0_1_0 + 1),dph
      002361 D0 00            [24] 1177 	pop	ar0
      002363 D0 01            [24] 1178 	pop	ar1
      002365 D0 02            [24] 1179 	pop	ar2
      002367 D0 03            [24] 1180 	pop	ar3
      002369 D0 04            [24] 1181 	pop	ar4
      00236B D0 05            [24] 1182 	pop	ar5
      00236D E5 21            [12] 1183 	mov	a,_initialize_buffers_sloc0_1_0
      00236F 24 01            [12] 1184 	add	a,#_static_buffers
      002371 F5 23            [12] 1185 	mov	_initialize_buffers_sloc1_1_0,a
      002373 E5 22            [12] 1186 	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
      002375 34 00            [12] 1187 	addc	a,#(_static_buffers >> 8)
      002377 F5 24            [12] 1188 	mov	(_initialize_buffers_sloc1_1_0 + 1),a
      002379 8A 82            [24] 1189 	mov	dpl,r2
      00237B 8B 83            [24] 1190 	mov	dph,r3
      00237D C0 03            [24] 1191 	push	ar3
      00237F C0 02            [24] 1192 	push	ar2
      002381 C0 01            [24] 1193 	push	ar1
      002383 C0 00            [24] 1194 	push	ar0
      002385 12 43 7F         [24] 1195 	lcall	_malloc
      002388 AC 82            [24] 1196 	mov	r4,dpl
      00238A AD 83            [24] 1197 	mov	r5,dph
      00238C D0 00            [24] 1198 	pop	ar0
      00238E D0 01            [24] 1199 	pop	ar1
      002390 D0 02            [24] 1200 	pop	ar2
      002392 D0 03            [24] 1201 	pop	ar3
      002394 85 23 82         [24] 1202 	mov	dpl,_initialize_buffers_sloc1_1_0
      002397 85 24 83         [24] 1203 	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
      00239A EC               [12] 1204 	mov	a,r4
      00239B F0               [24] 1205 	movx	@dptr,a
      00239C ED               [12] 1206 	mov	a,r5
      00239D A3               [24] 1207 	inc	dptr
      00239E F0               [24] 1208 	movx	@dptr,a
                                   1209 ;	src/main.c:165: if(static_buffers[i].buffer == NULL)
      00239F EC               [12] 1210 	mov	a,r4
      0023A0 4D               [12] 1211 	orl	a,r5
      0023A1 D0 05            [24] 1212 	pop	ar5
      0023A3 D0 04            [24] 1213 	pop	ar4
      0023A5 70 43            [24] 1214 	jnz	00113$
                                   1215 ;	src/main.c:167: free_all_buffers();
      0023A7 C0 04            [24] 1216 	push	ar4
      0023A9 C0 05            [24] 1217 	push	ar5
      0023AB C0 05            [24] 1218 	push	ar5
      0023AD C0 04            [24] 1219 	push	ar4
      0023AF C0 03            [24] 1220 	push	ar3
      0023B1 C0 02            [24] 1221 	push	ar2
      0023B3 12 2C B7         [24] 1222 	lcall	_free_all_buffers
                                   1223 ;	src/main.c:168: printf(BUFFER_SZ_TOO_BIG);
      0023B6 74 46            [12] 1224 	mov	a,#___str_3
      0023B8 C0 E0            [24] 1225 	push	acc
      0023BA 74 50            [12] 1226 	mov	a,#(___str_3 >> 8)
      0023BC C0 E0            [24] 1227 	push	acc
      0023BE 74 80            [12] 1228 	mov	a,#0x80
      0023C0 C0 E0            [24] 1229 	push	acc
      0023C2 12 45 56         [24] 1230 	lcall	_printf
      0023C5 15 81            [12] 1231 	dec	sp
      0023C7 15 81            [12] 1232 	dec	sp
      0023C9 15 81            [12] 1233 	dec	sp
      0023CB D0 02            [24] 1234 	pop	ar2
      0023CD D0 03            [24] 1235 	pop	ar3
      0023CF D0 04            [24] 1236 	pop	ar4
      0023D1 D0 05            [24] 1237 	pop	ar5
                                   1238 ;	src/main.c:169: max_user_input = user_buffer_size-1;
      0023D3 EA               [12] 1239 	mov	a,r2
      0023D4 24 FF            [12] 1240 	add	a,#0xff
      0023D6 FC               [12] 1241 	mov	r4,a
      0023D7 EB               [12] 1242 	mov	a,r3
      0023D8 34 FF            [12] 1243 	addc	a,#0xff
      0023DA FD               [12] 1244 	mov	r5,a
      0023DB 90 00 1E         [24] 1245 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      0023DE EC               [12] 1246 	mov	a,r4
      0023DF F0               [24] 1247 	movx	@dptr,a
      0023E0 ED               [12] 1248 	mov	a,r5
      0023E1 A3               [24] 1249 	inc	dptr
      0023E2 F0               [24] 1250 	movx	@dptr,a
                                   1251 ;	src/main.c:170: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
      0023E3 D0 05            [24] 1252 	pop	ar5
      0023E5 D0 04            [24] 1253 	pop	ar4
      0023E7 02 23 10         [24] 1254 	ljmp	00128$
      0023EA                       1255 00113$:
                                   1256 ;	src/main.c:172: static_buffers[i].size = (size_t) user_buffer_size;
      0023EA C0 04            [24] 1257 	push	ar4
      0023EC C0 05            [24] 1258 	push	ar5
      0023EE E5 21            [12] 1259 	mov	a,_initialize_buffers_sloc0_1_0
      0023F0 24 01            [12] 1260 	add	a,#_static_buffers
      0023F2 FC               [12] 1261 	mov	r4,a
      0023F3 E5 22            [12] 1262 	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
      0023F5 34 00            [12] 1263 	addc	a,#(_static_buffers >> 8)
      0023F7 FD               [12] 1264 	mov	r5,a
      0023F8 8C 82            [24] 1265 	mov	dpl,r4
      0023FA 8D 83            [24] 1266 	mov	dph,r5
      0023FC A3               [24] 1267 	inc	dptr
      0023FD A3               [24] 1268 	inc	dptr
      0023FE A3               [24] 1269 	inc	dptr
      0023FF A3               [24] 1270 	inc	dptr
      002400 EA               [12] 1271 	mov	a,r2
      002401 F0               [24] 1272 	movx	@dptr,a
      002402 EB               [12] 1273 	mov	a,r3
      002403 A3               [24] 1274 	inc	dptr
      002404 F0               [24] 1275 	movx	@dptr,a
                                   1276 ;	src/main.c:173: initialize_default_elements(&static_buffers[i]);
      002405 7F 00            [12] 1277 	mov	r7,#0x00
      002407 8C 82            [24] 1278 	mov	dpl,r4
      002409 8D 83            [24] 1279 	mov	dph,r5
      00240B 8F F0            [24] 1280 	mov	b,r7
      00240D C0 05            [24] 1281 	push	ar5
      00240F C0 04            [24] 1282 	push	ar4
      002411 C0 03            [24] 1283 	push	ar3
      002413 C0 02            [24] 1284 	push	ar2
      002415 C0 01            [24] 1285 	push	ar1
      002417 C0 00            [24] 1286 	push	ar0
      002419 12 20 C8         [24] 1287 	lcall	_initialize_default_elements
      00241C D0 00            [24] 1288 	pop	ar0
      00241E D0 01            [24] 1289 	pop	ar1
      002420 D0 02            [24] 1290 	pop	ar2
      002422 D0 03            [24] 1291 	pop	ar3
      002424 D0 04            [24] 1292 	pop	ar4
      002426 D0 05            [24] 1293 	pop	ar5
                                   1294 ;	src/main.c:161: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002428 08               [12] 1295 	inc	r0
      002429 B8 00 01         [24] 1296 	cjne	r0,#0x00,00235$
      00242C 09               [12] 1297 	inc	r1
      00242D                       1298 00235$:
      00242D D0 05            [24] 1299 	pop	ar5
      00242F D0 04            [24] 1300 	pop	ar4
      002431 02 23 2F         [24] 1301 	ljmp	00139$
                                   1302 ;	src/main.c:178: for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
      002434                       1303 00158$:
      002434 7E 00            [12] 1304 	mov	r6,#0x00
      002436 7F 00            [12] 1305 	mov	r7,#0x00
      002438                       1306 00142$:
      002438 C3               [12] 1307 	clr	c
      002439 EE               [12] 1308 	mov	a,r6
      00243A 94 02            [12] 1309 	subb	a,#0x02
      00243C EF               [12] 1310 	mov	a,r7
      00243D 64 80            [12] 1311 	xrl	a,#0x80
      00243F 94 80            [12] 1312 	subb	a,#0x80
      002441 40 03            [24] 1313 	jc	00236$
      002443 02 24 E6         [24] 1314 	ljmp	00119$
      002446                       1315 00236$:
                                   1316 ;	src/main.c:180: buffer_t *new_buffer = alloc_new_buffer(user_buffer_size);
      002446 8A 82            [24] 1317 	mov	dpl,r2
      002448 8B 83            [24] 1318 	mov	dph,r3
      00244A C0 07            [24] 1319 	push	ar7
      00244C C0 06            [24] 1320 	push	ar6
      00244E C0 05            [24] 1321 	push	ar5
      002450 C0 04            [24] 1322 	push	ar4
      002452 C0 03            [24] 1323 	push	ar3
      002454 C0 02            [24] 1324 	push	ar2
      002456 12 21 69         [24] 1325 	lcall	_alloc_new_buffer
      002459 85 82 27         [24] 1326 	mov	_initialize_buffers_sloc3_1_0,dpl
      00245C 85 83 28         [24] 1327 	mov	(_initialize_buffers_sloc3_1_0 + 1),dph
      00245F 85 F0 29         [24] 1328 	mov	(_initialize_buffers_sloc3_1_0 + 2),b
      002462 D0 02            [24] 1329 	pop	ar2
      002464 D0 03            [24] 1330 	pop	ar3
      002466 D0 04            [24] 1331 	pop	ar4
      002468 D0 05            [24] 1332 	pop	ar5
      00246A D0 06            [24] 1333 	pop	ar6
      00246C D0 07            [24] 1334 	pop	ar7
                                   1335 ;	src/main.c:181: if (new_buffer == NULL)
      00246E E5 27            [12] 1336 	mov	a,_initialize_buffers_sloc3_1_0
      002470 45 28            [12] 1337 	orl	a,(_initialize_buffers_sloc3_1_0 + 1)
      002472 70 3B            [24] 1338 	jnz	00117$
                                   1339 ;	src/main.c:183: free_all_buffers();
      002474 C0 05            [24] 1340 	push	ar5
      002476 C0 04            [24] 1341 	push	ar4
      002478 C0 03            [24] 1342 	push	ar3
      00247A C0 02            [24] 1343 	push	ar2
      00247C 12 2C B7         [24] 1344 	lcall	_free_all_buffers
                                   1345 ;	src/main.c:184: printf(BUFFER_SZ_TOO_BIG);
      00247F 74 46            [12] 1346 	mov	a,#___str_3
      002481 C0 E0            [24] 1347 	push	acc
      002483 74 50            [12] 1348 	mov	a,#(___str_3 >> 8)
      002485 C0 E0            [24] 1349 	push	acc
      002487 74 80            [12] 1350 	mov	a,#0x80
      002489 C0 E0            [24] 1351 	push	acc
      00248B 12 45 56         [24] 1352 	lcall	_printf
      00248E 15 81            [12] 1353 	dec	sp
      002490 15 81            [12] 1354 	dec	sp
      002492 15 81            [12] 1355 	dec	sp
      002494 D0 02            [24] 1356 	pop	ar2
      002496 D0 03            [24] 1357 	pop	ar3
      002498 D0 04            [24] 1358 	pop	ar4
      00249A D0 05            [24] 1359 	pop	ar5
                                   1360 ;	src/main.c:185: max_user_input = user_buffer_size-1;
      00249C EA               [12] 1361 	mov	a,r2
      00249D 24 FF            [12] 1362 	add	a,#0xff
      00249F F8               [12] 1363 	mov	r0,a
      0024A0 EB               [12] 1364 	mov	a,r3
      0024A1 34 FF            [12] 1365 	addc	a,#0xff
      0024A3 F9               [12] 1366 	mov	r1,a
      0024A4 90 00 1E         [24] 1367 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      0024A7 E8               [12] 1368 	mov	a,r0
      0024A8 F0               [24] 1369 	movx	@dptr,a
      0024A9 E9               [12] 1370 	mov	a,r1
      0024AA A3               [24] 1371 	inc	dptr
      0024AB F0               [24] 1372 	movx	@dptr,a
                                   1373 ;	src/main.c:186: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
      0024AC 02 23 10         [24] 1374 	ljmp	00128$
      0024AF                       1375 00117$:
                                   1376 ;	src/main.c:190: append_to_buffer_list(&dynamic_buffers_list, new_buffer);
      0024AF 90 20 4A         [24] 1377 	mov	dptr,#_append_to_buffer_list_PARM_2
      0024B2 E5 27            [12] 1378 	mov	a,_initialize_buffers_sloc3_1_0
      0024B4 F0               [24] 1379 	movx	@dptr,a
      0024B5 E5 28            [12] 1380 	mov	a,(_initialize_buffers_sloc3_1_0 + 1)
      0024B7 A3               [24] 1381 	inc	dptr
      0024B8 F0               [24] 1382 	movx	@dptr,a
      0024B9 E5 29            [12] 1383 	mov	a,(_initialize_buffers_sloc3_1_0 + 2)
      0024BB A3               [24] 1384 	inc	dptr
      0024BC F0               [24] 1385 	movx	@dptr,a
      0024BD 90 20 D3         [24] 1386 	mov	dptr,#_dynamic_buffers_list
      0024C0 75 F0 00         [24] 1387 	mov	b,#0x00
      0024C3 C0 07            [24] 1388 	push	ar7
      0024C5 C0 06            [24] 1389 	push	ar6
      0024C7 C0 05            [24] 1390 	push	ar5
      0024C9 C0 04            [24] 1391 	push	ar4
      0024CB C0 03            [24] 1392 	push	ar3
      0024CD C0 02            [24] 1393 	push	ar2
      0024CF 12 3B 14         [24] 1394 	lcall	_append_to_buffer_list
      0024D2 D0 02            [24] 1395 	pop	ar2
      0024D4 D0 03            [24] 1396 	pop	ar3
      0024D6 D0 04            [24] 1397 	pop	ar4
      0024D8 D0 05            [24] 1398 	pop	ar5
      0024DA D0 06            [24] 1399 	pop	ar6
      0024DC D0 07            [24] 1400 	pop	ar7
                                   1401 ;	src/main.c:178: for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
      0024DE 0E               [12] 1402 	inc	r6
      0024DF BE 00 01         [24] 1403 	cjne	r6,#0x00,00238$
      0024E2 0F               [12] 1404 	inc	r7
      0024E3                       1405 00238$:
      0024E3 02 24 38         [24] 1406 	ljmp	00142$
      0024E6                       1407 00119$:
                                   1408 ;	src/main.c:194: remove_from_buffer_list(&dynamic_buffers_list, 2); 
      0024E6 90 20 53         [24] 1409 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0024E9 74 02            [12] 1410 	mov	a,#0x02
      0024EB F0               [24] 1411 	movx	@dptr,a
      0024EC E4               [12] 1412 	clr	a
      0024ED A3               [24] 1413 	inc	dptr
      0024EE F0               [24] 1414 	movx	@dptr,a
      0024EF 90 20 D3         [24] 1415 	mov	dptr,#_dynamic_buffers_list
      0024F2 75 F0 00         [24] 1416 	mov	b,#0x00
      0024F5 C0 05            [24] 1417 	push	ar5
      0024F7 C0 04            [24] 1418 	push	ar4
      0024F9 C0 03            [24] 1419 	push	ar3
      0024FB C0 02            [24] 1420 	push	ar2
      0024FD 12 3B FA         [24] 1421 	lcall	_remove_from_buffer_list
      002500 D0 02            [24] 1422 	pop	ar2
      002502 D0 03            [24] 1423 	pop	ar3
      002504 D0 04            [24] 1424 	pop	ar4
      002506 D0 05            [24] 1425 	pop	ar5
                                   1426 ;	src/main.c:196: buffer_t *buffer_4 = alloc_new_buffer((size_t) (10 * (student_number + 2)));
      002508 8C 06            [24] 1427 	mov	ar6,r4
      00250A 8D 07            [24] 1428 	mov	ar7,r5
      00250C 8E 82            [24] 1429 	mov	dpl,r6
      00250E 8F 83            [24] 1430 	mov	dph,r7
      002510 C0 05            [24] 1431 	push	ar5
      002512 C0 04            [24] 1432 	push	ar4
      002514 C0 03            [24] 1433 	push	ar3
      002516 C0 02            [24] 1434 	push	ar2
      002518 12 21 69         [24] 1435 	lcall	_alloc_new_buffer
      00251B A9 82            [24] 1436 	mov	r1,dpl
      00251D AE 83            [24] 1437 	mov	r6,dph
      00251F AF F0            [24] 1438 	mov	r7,b
      002521 D0 02            [24] 1439 	pop	ar2
      002523 D0 03            [24] 1440 	pop	ar3
      002525 D0 04            [24] 1441 	pop	ar4
      002527 D0 05            [24] 1442 	pop	ar5
                                   1443 ;	src/main.c:198: if (buffer_4 == NULL)
      002529 E9               [12] 1444 	mov	a,r1
      00252A 4E               [12] 1445 	orl	a,r6
      00252B 70 43            [24] 1446 	jnz	00121$
                                   1447 ;	src/main.c:200: free_all_buffers();
      00252D C0 04            [24] 1448 	push	ar4
      00252F C0 05            [24] 1449 	push	ar5
      002531 C0 05            [24] 1450 	push	ar5
      002533 C0 04            [24] 1451 	push	ar4
      002535 C0 03            [24] 1452 	push	ar3
      002537 C0 02            [24] 1453 	push	ar2
      002539 12 2C B7         [24] 1454 	lcall	_free_all_buffers
                                   1455 ;	src/main.c:201: printf(BUFFER_SZ_TOO_BIG);
      00253C 74 46            [12] 1456 	mov	a,#___str_3
      00253E C0 E0            [24] 1457 	push	acc
      002540 74 50            [12] 1458 	mov	a,#(___str_3 >> 8)
      002542 C0 E0            [24] 1459 	push	acc
      002544 74 80            [12] 1460 	mov	a,#0x80
      002546 C0 E0            [24] 1461 	push	acc
      002548 12 45 56         [24] 1462 	lcall	_printf
      00254B 15 81            [12] 1463 	dec	sp
      00254D 15 81            [12] 1464 	dec	sp
      00254F 15 81            [12] 1465 	dec	sp
      002551 D0 02            [24] 1466 	pop	ar2
      002553 D0 03            [24] 1467 	pop	ar3
      002555 D0 04            [24] 1468 	pop	ar4
      002557 D0 05            [24] 1469 	pop	ar5
                                   1470 ;	src/main.c:202: max_user_input = user_buffer_size-1;
      002559 EA               [12] 1471 	mov	a,r2
      00255A 24 FF            [12] 1472 	add	a,#0xff
      00255C F8               [12] 1473 	mov	r0,a
      00255D EB               [12] 1474 	mov	a,r3
      00255E 34 FF            [12] 1475 	addc	a,#0xff
      002560 FD               [12] 1476 	mov	r5,a
      002561 90 00 1E         [24] 1477 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      002564 E8               [12] 1478 	mov	a,r0
      002565 F0               [24] 1479 	movx	@dptr,a
      002566 ED               [12] 1480 	mov	a,r5
      002567 A3               [24] 1481 	inc	dptr
      002568 F0               [24] 1482 	movx	@dptr,a
                                   1483 ;	src/main.c:203: continue;
      002569 D0 05            [24] 1484 	pop	ar5
      00256B D0 04            [24] 1485 	pop	ar4
      00256D 02 23 10         [24] 1486 	ljmp	00128$
      002570                       1487 00121$:
                                   1488 ;	src/main.c:207: append_to_buffer_list(&dynamic_buffers_list, buffer_4);
      002570 90 20 4A         [24] 1489 	mov	dptr,#_append_to_buffer_list_PARM_2
      002573 E9               [12] 1490 	mov	a,r1
      002574 F0               [24] 1491 	movx	@dptr,a
      002575 EE               [12] 1492 	mov	a,r6
      002576 A3               [24] 1493 	inc	dptr
      002577 F0               [24] 1494 	movx	@dptr,a
      002578 EF               [12] 1495 	mov	a,r7
      002579 A3               [24] 1496 	inc	dptr
      00257A F0               [24] 1497 	movx	@dptr,a
      00257B 90 20 D3         [24] 1498 	mov	dptr,#_dynamic_buffers_list
      00257E 75 F0 00         [24] 1499 	mov	b,#0x00
      002581 C0 05            [24] 1500 	push	ar5
      002583 C0 04            [24] 1501 	push	ar4
      002585 C0 03            [24] 1502 	push	ar3
      002587 C0 02            [24] 1503 	push	ar2
      002589 12 3B 14         [24] 1504 	lcall	_append_to_buffer_list
      00258C D0 02            [24] 1505 	pop	ar2
      00258E D0 03            [24] 1506 	pop	ar3
                                   1507 ;	src/main.c:210: buffer_t *buffer_5 = alloc_new_buffer((size_t) 2 * user_buffer_size);
      002590 EA               [12] 1508 	mov	a,r2
      002591 2A               [12] 1509 	add	a,r2
      002592 FE               [12] 1510 	mov	r6,a
      002593 EB               [12] 1511 	mov	a,r3
      002594 33               [12] 1512 	rlc	a
      002595 FF               [12] 1513 	mov	r7,a
      002596 8E 82            [24] 1514 	mov	dpl,r6
      002598 8F 83            [24] 1515 	mov	dph,r7
      00259A C0 03            [24] 1516 	push	ar3
      00259C C0 02            [24] 1517 	push	ar2
      00259E 12 21 69         [24] 1518 	lcall	_alloc_new_buffer
      0025A1 A9 82            [24] 1519 	mov	r1,dpl
      0025A3 AE 83            [24] 1520 	mov	r6,dph
      0025A5 AF F0            [24] 1521 	mov	r7,b
      0025A7 D0 02            [24] 1522 	pop	ar2
      0025A9 D0 03            [24] 1523 	pop	ar3
      0025AB D0 04            [24] 1524 	pop	ar4
      0025AD D0 05            [24] 1525 	pop	ar5
                                   1526 ;	src/main.c:211: if (buffer_5 == NULL)
      0025AF E9               [12] 1527 	mov	a,r1
      0025B0 4E               [12] 1528 	orl	a,r6
      0025B1 70 43            [24] 1529 	jnz	00124$
                                   1530 ;	src/main.c:213: free_all_buffers();
      0025B3 C0 04            [24] 1531 	push	ar4
      0025B5 C0 05            [24] 1532 	push	ar5
      0025B7 C0 05            [24] 1533 	push	ar5
      0025B9 C0 04            [24] 1534 	push	ar4
      0025BB C0 03            [24] 1535 	push	ar3
      0025BD C0 02            [24] 1536 	push	ar2
      0025BF 12 2C B7         [24] 1537 	lcall	_free_all_buffers
                                   1538 ;	src/main.c:214: printf(BUFFER_SZ_TOO_BIG);
      0025C2 74 46            [12] 1539 	mov	a,#___str_3
      0025C4 C0 E0            [24] 1540 	push	acc
      0025C6 74 50            [12] 1541 	mov	a,#(___str_3 >> 8)
      0025C8 C0 E0            [24] 1542 	push	acc
      0025CA 74 80            [12] 1543 	mov	a,#0x80
      0025CC C0 E0            [24] 1544 	push	acc
      0025CE 12 45 56         [24] 1545 	lcall	_printf
      0025D1 15 81            [12] 1546 	dec	sp
      0025D3 15 81            [12] 1547 	dec	sp
      0025D5 15 81            [12] 1548 	dec	sp
      0025D7 D0 02            [24] 1549 	pop	ar2
      0025D9 D0 03            [24] 1550 	pop	ar3
      0025DB D0 04            [24] 1551 	pop	ar4
      0025DD D0 05            [24] 1552 	pop	ar5
                                   1553 ;	src/main.c:215: max_user_input = user_buffer_size-1;
      0025DF EA               [12] 1554 	mov	a,r2
      0025E0 24 FF            [12] 1555 	add	a,#0xff
      0025E2 F8               [12] 1556 	mov	r0,a
      0025E3 EB               [12] 1557 	mov	a,r3
      0025E4 34 FF            [12] 1558 	addc	a,#0xff
      0025E6 FD               [12] 1559 	mov	r5,a
      0025E7 90 00 1E         [24] 1560 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      0025EA E8               [12] 1561 	mov	a,r0
      0025EB F0               [24] 1562 	movx	@dptr,a
      0025EC ED               [12] 1563 	mov	a,r5
      0025ED A3               [24] 1564 	inc	dptr
      0025EE F0               [24] 1565 	movx	@dptr,a
                                   1566 ;	src/main.c:216: continue;
      0025EF D0 05            [24] 1567 	pop	ar5
      0025F1 D0 04            [24] 1568 	pop	ar4
      0025F3 02 23 10         [24] 1569 	ljmp	00128$
      0025F6                       1570 00124$:
                                   1571 ;	src/main.c:220: append_to_buffer_list(&dynamic_buffers_list, buffer_5); 
      0025F6 90 20 4A         [24] 1572 	mov	dptr,#_append_to_buffer_list_PARM_2
      0025F9 E9               [12] 1573 	mov	a,r1
      0025FA F0               [24] 1574 	movx	@dptr,a
      0025FB EE               [12] 1575 	mov	a,r6
      0025FC A3               [24] 1576 	inc	dptr
      0025FD F0               [24] 1577 	movx	@dptr,a
      0025FE EF               [12] 1578 	mov	a,r7
      0025FF A3               [24] 1579 	inc	dptr
      002600 F0               [24] 1580 	movx	@dptr,a
      002601 90 20 D3         [24] 1581 	mov	dptr,#_dynamic_buffers_list
      002604 75 F0 00         [24] 1582 	mov	b,#0x00
      002607 C0 03            [24] 1583 	push	ar3
      002609 C0 02            [24] 1584 	push	ar2
      00260B 12 3B 14         [24] 1585 	lcall	_append_to_buffer_list
                                   1586 ;	src/main.c:226: printf("\r\nstudent_number: %d", student_number);
      00260E C0 25            [24] 1587 	push	_initialize_buffers_sloc2_1_0
      002610 C0 26            [24] 1588 	push	(_initialize_buffers_sloc2_1_0 + 1)
      002612 74 7F            [12] 1589 	mov	a,#___str_4
      002614 C0 E0            [24] 1590 	push	acc
      002616 74 50            [12] 1591 	mov	a,#(___str_4 >> 8)
      002618 C0 E0            [24] 1592 	push	acc
      00261A 74 80            [12] 1593 	mov	a,#0x80
      00261C C0 E0            [24] 1594 	push	acc
      00261E 12 45 56         [24] 1595 	lcall	_printf
      002621 E5 81            [12] 1596 	mov	a,sp
      002623 24 FB            [12] 1597 	add	a,#0xfb
      002625 F5 81            [12] 1598 	mov	sp,a
      002627 D0 02            [24] 1599 	pop	ar2
      002629 D0 03            [24] 1600 	pop	ar3
                                   1601 ;	src/main.c:227: printf("\r\nuser_buffer_size: %zu", user_buffer_size);
      00262B C0 02            [24] 1602 	push	ar2
      00262D C0 03            [24] 1603 	push	ar3
      00262F 74 94            [12] 1604 	mov	a,#___str_5
      002631 C0 E0            [24] 1605 	push	acc
      002633 74 50            [12] 1606 	mov	a,#(___str_5 >> 8)
      002635 C0 E0            [24] 1607 	push	acc
      002637 74 80            [12] 1608 	mov	a,#0x80
      002639 C0 E0            [24] 1609 	push	acc
      00263B 12 45 56         [24] 1610 	lcall	_printf
      00263E E5 81            [12] 1611 	mov	a,sp
      002640 24 FB            [12] 1612 	add	a,#0xfb
      002642 F5 81            [12] 1613 	mov	sp,a
                                   1614 ;	src/main.c:229: size_t total_heap_sz = 0;
      002644 90 00 20         [24] 1615 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      002647 E4               [12] 1616 	clr	a
      002648 F0               [24] 1617 	movx	@dptr,a
      002649 A3               [24] 1618 	inc	dptr
      00264A F0               [24] 1619 	movx	@dptr,a
                                   1620 ;	src/main.c:231: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00264B 7E 00            [12] 1621 	mov	r6,#0x00
      00264D 7F 00            [12] 1622 	mov	r7,#0x00
      00264F                       1623 00144$:
                                   1624 ;	src/main.c:233: if(static_buffers[i].buffer != NULL) {
      00264F 90 20 9A         [24] 1625 	mov	dptr,#__mulint_PARM_2
      002652 EE               [12] 1626 	mov	a,r6
      002653 F0               [24] 1627 	movx	@dptr,a
      002654 EF               [12] 1628 	mov	a,r7
      002655 A3               [24] 1629 	inc	dptr
      002656 F0               [24] 1630 	movx	@dptr,a
      002657 90 00 0B         [24] 1631 	mov	dptr,#0x000b
      00265A C0 07            [24] 1632 	push	ar7
      00265C C0 06            [24] 1633 	push	ar6
      00265E 12 44 E8         [24] 1634 	lcall	__mulint
      002661 AC 82            [24] 1635 	mov	r4,dpl
      002663 AD 83            [24] 1636 	mov	r5,dph
      002665 D0 06            [24] 1637 	pop	ar6
      002667 D0 07            [24] 1638 	pop	ar7
      002669 EC               [12] 1639 	mov	a,r4
      00266A 24 01            [12] 1640 	add	a,#_static_buffers
      00266C F5 82            [12] 1641 	mov	dpl,a
      00266E ED               [12] 1642 	mov	a,r5
      00266F 34 00            [12] 1643 	addc	a,#(_static_buffers >> 8)
      002671 F5 83            [12] 1644 	mov	dph,a
      002673 E0               [24] 1645 	movx	a,@dptr
      002674 FA               [12] 1646 	mov	r2,a
      002675 A3               [24] 1647 	inc	dptr
      002676 E0               [24] 1648 	movx	a,@dptr
      002677 FB               [12] 1649 	mov	r3,a
      002678 4A               [12] 1650 	orl	a,r2
      002679 70 03            [24] 1651 	jnz	00241$
      00267B 02 27 0E         [24] 1652 	ljmp	00145$
      00267E                       1653 00241$:
                                   1654 ;	src/main.c:234: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, static_buffers[i].buffer, static_buffers[i].buffer + static_buffers[i].size, static_buffers[i].size);
      00267E EC               [12] 1655 	mov	a,r4
      00267F 24 01            [12] 1656 	add	a,#_static_buffers
      002681 FC               [12] 1657 	mov	r4,a
      002682 ED               [12] 1658 	mov	a,r5
      002683 34 00            [12] 1659 	addc	a,#(_static_buffers >> 8)
      002685 FD               [12] 1660 	mov	r5,a
      002686 74 04            [12] 1661 	mov	a,#0x04
      002688 2C               [12] 1662 	add	a,r4
      002689 FA               [12] 1663 	mov	r2,a
      00268A E4               [12] 1664 	clr	a
      00268B 3D               [12] 1665 	addc	a,r5
      00268C FB               [12] 1666 	mov	r3,a
      00268D 8A 82            [24] 1667 	mov	dpl,r2
      00268F 8B 83            [24] 1668 	mov	dph,r3
      002691 E0               [24] 1669 	movx	a,@dptr
      002692 F5 25            [12] 1670 	mov	_initialize_buffers_sloc2_1_0,a
      002694 A3               [24] 1671 	inc	dptr
      002695 E0               [24] 1672 	movx	a,@dptr
      002696 F5 26            [12] 1673 	mov	(_initialize_buffers_sloc2_1_0 + 1),a
      002698 8C 82            [24] 1674 	mov	dpl,r4
      00269A 8D 83            [24] 1675 	mov	dph,r5
      00269C E0               [24] 1676 	movx	a,@dptr
      00269D F5 27            [12] 1677 	mov	_initialize_buffers_sloc3_1_0,a
      00269F A3               [24] 1678 	inc	dptr
      0026A0 E0               [24] 1679 	movx	a,@dptr
      0026A1 F5 28            [12] 1680 	mov	(_initialize_buffers_sloc3_1_0 + 1),a
      0026A3 E5 25            [12] 1681 	mov	a,_initialize_buffers_sloc2_1_0
      0026A5 25 27            [12] 1682 	add	a,_initialize_buffers_sloc3_1_0
      0026A7 FC               [12] 1683 	mov	r4,a
      0026A8 E5 26            [12] 1684 	mov	a,(_initialize_buffers_sloc2_1_0 + 1)
      0026AA 35 28            [12] 1685 	addc	a,(_initialize_buffers_sloc3_1_0 + 1)
      0026AC FD               [12] 1686 	mov	r5,a
      0026AD 8C 2A            [24] 1687 	mov	_initialize_buffers_sloc4_1_0,r4
      0026AF 8D 2B            [24] 1688 	mov	(_initialize_buffers_sloc4_1_0 + 1),r5
      0026B1 75 2C 00         [24] 1689 	mov	(_initialize_buffers_sloc4_1_0 + 2),#0x00
      0026B4 A8 27            [24] 1690 	mov	r0,_initialize_buffers_sloc3_1_0
      0026B6 AD 28            [24] 1691 	mov	r5,(_initialize_buffers_sloc3_1_0 + 1)
      0026B8 7C 00            [12] 1692 	mov	r4,#0x00
      0026BA C0 07            [24] 1693 	push	ar7
      0026BC C0 06            [24] 1694 	push	ar6
      0026BE C0 03            [24] 1695 	push	ar3
      0026C0 C0 02            [24] 1696 	push	ar2
      0026C2 C0 25            [24] 1697 	push	_initialize_buffers_sloc2_1_0
      0026C4 C0 26            [24] 1698 	push	(_initialize_buffers_sloc2_1_0 + 1)
      0026C6 C0 2A            [24] 1699 	push	_initialize_buffers_sloc4_1_0
      0026C8 C0 2B            [24] 1700 	push	(_initialize_buffers_sloc4_1_0 + 1)
      0026CA C0 2C            [24] 1701 	push	(_initialize_buffers_sloc4_1_0 + 2)
      0026CC C0 00            [24] 1702 	push	ar0
      0026CE C0 05            [24] 1703 	push	ar5
      0026D0 C0 04            [24] 1704 	push	ar4
      0026D2 C0 06            [24] 1705 	push	ar6
      0026D4 C0 07            [24] 1706 	push	ar7
      0026D6 74 AC            [12] 1707 	mov	a,#___str_6
      0026D8 C0 E0            [24] 1708 	push	acc
      0026DA 74 50            [12] 1709 	mov	a,#(___str_6 >> 8)
      0026DC C0 E0            [24] 1710 	push	acc
      0026DE 74 80            [12] 1711 	mov	a,#0x80
      0026E0 C0 E0            [24] 1712 	push	acc
      0026E2 12 45 56         [24] 1713 	lcall	_printf
      0026E5 E5 81            [12] 1714 	mov	a,sp
      0026E7 24 F3            [12] 1715 	add	a,#0xf3
      0026E9 F5 81            [12] 1716 	mov	sp,a
      0026EB D0 02            [24] 1717 	pop	ar2
      0026ED D0 03            [24] 1718 	pop	ar3
      0026EF D0 06            [24] 1719 	pop	ar6
      0026F1 D0 07            [24] 1720 	pop	ar7
                                   1721 ;	src/main.c:235: total_heap_sz += static_buffers[i].size; 
      0026F3 8A 82            [24] 1722 	mov	dpl,r2
      0026F5 8B 83            [24] 1723 	mov	dph,r3
      0026F7 E0               [24] 1724 	movx	a,@dptr
      0026F8 FA               [12] 1725 	mov	r2,a
      0026F9 A3               [24] 1726 	inc	dptr
      0026FA E0               [24] 1727 	movx	a,@dptr
      0026FB FB               [12] 1728 	mov	r3,a
      0026FC 90 00 20         [24] 1729 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      0026FF E0               [24] 1730 	movx	a,@dptr
      002700 FC               [12] 1731 	mov	r4,a
      002701 A3               [24] 1732 	inc	dptr
      002702 E0               [24] 1733 	movx	a,@dptr
      002703 FD               [12] 1734 	mov	r5,a
      002704 90 00 20         [24] 1735 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      002707 EA               [12] 1736 	mov	a,r2
      002708 2C               [12] 1737 	add	a,r4
      002709 F0               [24] 1738 	movx	@dptr,a
      00270A EB               [12] 1739 	mov	a,r3
      00270B 3D               [12] 1740 	addc	a,r5
      00270C A3               [24] 1741 	inc	dptr
      00270D F0               [24] 1742 	movx	@dptr,a
      00270E                       1743 00145$:
                                   1744 ;	src/main.c:231: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00270E 0E               [12] 1745 	inc	r6
      00270F BE 00 01         [24] 1746 	cjne	r6,#0x00,00242$
      002712 0F               [12] 1747 	inc	r7
      002713                       1748 00242$:
      002713 C3               [12] 1749 	clr	c
      002714 EE               [12] 1750 	mov	a,r6
      002715 94 02            [12] 1751 	subb	a,#0x02
      002717 EF               [12] 1752 	mov	a,r7
      002718 64 80            [12] 1753 	xrl	a,#0x80
      00271A 94 80            [12] 1754 	subb	a,#0x80
      00271C 50 03            [24] 1755 	jnc	00243$
      00271E 02 26 4F         [24] 1756 	ljmp	00144$
      002721                       1757 00243$:
                                   1758 ;	src/main.c:239: buffer_t *curr = dynamic_buffers_list.head;
      002721 90 20 D3         [24] 1759 	mov	dptr,#_dynamic_buffers_list
      002724 E0               [24] 1760 	movx	a,@dptr
      002725 FB               [12] 1761 	mov	r3,a
      002726 A3               [24] 1762 	inc	dptr
      002727 E0               [24] 1763 	movx	a,@dptr
      002728 FC               [12] 1764 	mov	r4,a
      002729 A3               [24] 1765 	inc	dptr
      00272A E0               [24] 1766 	movx	a,@dptr
      00272B FD               [12] 1767 	mov	r5,a
      00272C 90 00 22         [24] 1768 	mov	dptr,#_initialize_buffers_curr_65540_118
      00272F EB               [12] 1769 	mov	a,r3
      002730 F0               [24] 1770 	movx	@dptr,a
      002731 EC               [12] 1771 	mov	a,r4
      002732 A3               [24] 1772 	inc	dptr
      002733 F0               [24] 1773 	movx	@dptr,a
      002734 ED               [12] 1774 	mov	a,r5
      002735 A3               [24] 1775 	inc	dptr
      002736 F0               [24] 1776 	movx	@dptr,a
                                   1777 ;	src/main.c:241: while(curr != NULL) {
      002737 8E 2A            [24] 1778 	mov	_initialize_buffers_sloc4_1_0,r6
      002739 8F 2B            [24] 1779 	mov	(_initialize_buffers_sloc4_1_0 + 1),r7
      00273B                       1780 00135$:
      00273B 90 00 22         [24] 1781 	mov	dptr,#_initialize_buffers_curr_65540_118
      00273E E0               [24] 1782 	movx	a,@dptr
      00273F FB               [12] 1783 	mov	r3,a
      002740 A3               [24] 1784 	inc	dptr
      002741 E0               [24] 1785 	movx	a,@dptr
      002742 FC               [12] 1786 	mov	r4,a
      002743 A3               [24] 1787 	inc	dptr
      002744 E0               [24] 1788 	movx	a,@dptr
      002745 FD               [12] 1789 	mov	r5,a
      002746 EB               [12] 1790 	mov	a,r3
      002747 4C               [12] 1791 	orl	a,r4
      002748 70 03            [24] 1792 	jnz	00244$
      00274A 02 28 1D         [24] 1793 	ljmp	00137$
      00274D                       1794 00244$:
                                   1795 ;	src/main.c:242: if(curr->buffer != NULL) {
      00274D 8B 82            [24] 1796 	mov	dpl,r3
      00274F 8C 83            [24] 1797 	mov	dph,r4
      002751 8D F0            [24] 1798 	mov	b,r5
      002753 12 4F 82         [24] 1799 	lcall	__gptrget
      002756 F9               [12] 1800 	mov	r1,a
      002757 A3               [24] 1801 	inc	dptr
      002758 12 4F 82         [24] 1802 	lcall	__gptrget
      00275B FA               [12] 1803 	mov	r2,a
      00275C 49               [12] 1804 	orl	a,r1
      00275D 70 03            [24] 1805 	jnz	00245$
      00275F 02 27 E1         [24] 1806 	ljmp	00134$
      002762                       1807 00245$:
                                   1808 ;	src/main.c:243: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, curr->buffer, curr->buffer + curr->size, curr->size);
      002762 74 04            [12] 1809 	mov	a,#0x04
      002764 2B               [12] 1810 	add	a,r3
      002765 FB               [12] 1811 	mov	r3,a
      002766 E4               [12] 1812 	clr	a
      002767 3C               [12] 1813 	addc	a,r4
      002768 FC               [12] 1814 	mov	r4,a
      002769 8B 82            [24] 1815 	mov	dpl,r3
      00276B 8C 83            [24] 1816 	mov	dph,r4
      00276D 8D F0            [24] 1817 	mov	b,r5
      00276F 12 4F 82         [24] 1818 	lcall	__gptrget
      002772 F5 27            [12] 1819 	mov	_initialize_buffers_sloc3_1_0,a
      002774 A3               [24] 1820 	inc	dptr
      002775 12 4F 82         [24] 1821 	lcall	__gptrget
      002778 F5 28            [12] 1822 	mov	(_initialize_buffers_sloc3_1_0 + 1),a
      00277A E5 27            [12] 1823 	mov	a,_initialize_buffers_sloc3_1_0
      00277C 29               [12] 1824 	add	a,r1
      00277D FE               [12] 1825 	mov	r6,a
      00277E E5 28            [12] 1826 	mov	a,(_initialize_buffers_sloc3_1_0 + 1)
      002780 3A               [12] 1827 	addc	a,r2
      002781 FF               [12] 1828 	mov	r7,a
      002782 8E 2D            [24] 1829 	mov	_initialize_buffers_sloc5_1_0,r6
      002784 8F 2E            [24] 1830 	mov	(_initialize_buffers_sloc5_1_0 + 1),r7
      002786 75 2F 00         [24] 1831 	mov	(_initialize_buffers_sloc5_1_0 + 2),#0x00
      002789 7F 00            [12] 1832 	mov	r7,#0x00
      00278B C0 05            [24] 1833 	push	ar5
      00278D C0 04            [24] 1834 	push	ar4
      00278F C0 03            [24] 1835 	push	ar3
      002791 C0 27            [24] 1836 	push	_initialize_buffers_sloc3_1_0
      002793 C0 28            [24] 1837 	push	(_initialize_buffers_sloc3_1_0 + 1)
      002795 C0 2D            [24] 1838 	push	_initialize_buffers_sloc5_1_0
      002797 C0 2E            [24] 1839 	push	(_initialize_buffers_sloc5_1_0 + 1)
      002799 C0 2F            [24] 1840 	push	(_initialize_buffers_sloc5_1_0 + 2)
      00279B C0 01            [24] 1841 	push	ar1
      00279D C0 02            [24] 1842 	push	ar2
      00279F C0 07            [24] 1843 	push	ar7
      0027A1 C0 2A            [24] 1844 	push	_initialize_buffers_sloc4_1_0
      0027A3 C0 2B            [24] 1845 	push	(_initialize_buffers_sloc4_1_0 + 1)
      0027A5 74 AC            [12] 1846 	mov	a,#___str_6
      0027A7 C0 E0            [24] 1847 	push	acc
      0027A9 74 50            [12] 1848 	mov	a,#(___str_6 >> 8)
      0027AB C0 E0            [24] 1849 	push	acc
      0027AD 74 80            [12] 1850 	mov	a,#0x80
      0027AF C0 E0            [24] 1851 	push	acc
      0027B1 12 45 56         [24] 1852 	lcall	_printf
      0027B4 E5 81            [12] 1853 	mov	a,sp
      0027B6 24 F3            [12] 1854 	add	a,#0xf3
      0027B8 F5 81            [12] 1855 	mov	sp,a
      0027BA D0 03            [24] 1856 	pop	ar3
      0027BC D0 04            [24] 1857 	pop	ar4
      0027BE D0 05            [24] 1858 	pop	ar5
                                   1859 ;	src/main.c:244: total_heap_sz += curr->size; 
      0027C0 8B 82            [24] 1860 	mov	dpl,r3
      0027C2 8C 83            [24] 1861 	mov	dph,r4
      0027C4 8D F0            [24] 1862 	mov	b,r5
      0027C6 12 4F 82         [24] 1863 	lcall	__gptrget
      0027C9 FB               [12] 1864 	mov	r3,a
      0027CA A3               [24] 1865 	inc	dptr
      0027CB 12 4F 82         [24] 1866 	lcall	__gptrget
      0027CE FC               [12] 1867 	mov	r4,a
      0027CF 90 00 20         [24] 1868 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      0027D2 E0               [24] 1869 	movx	a,@dptr
      0027D3 FE               [12] 1870 	mov	r6,a
      0027D4 A3               [24] 1871 	inc	dptr
      0027D5 E0               [24] 1872 	movx	a,@dptr
      0027D6 FF               [12] 1873 	mov	r7,a
      0027D7 90 00 20         [24] 1874 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      0027DA EB               [12] 1875 	mov	a,r3
      0027DB 2E               [12] 1876 	add	a,r6
      0027DC F0               [24] 1877 	movx	@dptr,a
      0027DD EC               [12] 1878 	mov	a,r4
      0027DE 3F               [12] 1879 	addc	a,r7
      0027DF A3               [24] 1880 	inc	dptr
      0027E0 F0               [24] 1881 	movx	@dptr,a
      0027E1                       1882 00134$:
                                   1883 ;	src/main.c:246: i++; 
      0027E1 05 2A            [12] 1884 	inc	_initialize_buffers_sloc4_1_0
      0027E3 E4               [12] 1885 	clr	a
      0027E4 B5 2A 02         [24] 1886 	cjne	a,_initialize_buffers_sloc4_1_0,00246$
      0027E7 05 2B            [12] 1887 	inc	(_initialize_buffers_sloc4_1_0 + 1)
      0027E9                       1888 00246$:
                                   1889 ;	src/main.c:247: curr = curr->next;
      0027E9 90 00 22         [24] 1890 	mov	dptr,#_initialize_buffers_curr_65540_118
      0027EC E0               [24] 1891 	movx	a,@dptr
      0027ED FD               [12] 1892 	mov	r5,a
      0027EE A3               [24] 1893 	inc	dptr
      0027EF E0               [24] 1894 	movx	a,@dptr
      0027F0 FE               [12] 1895 	mov	r6,a
      0027F1 A3               [24] 1896 	inc	dptr
      0027F2 E0               [24] 1897 	movx	a,@dptr
      0027F3 FF               [12] 1898 	mov	r7,a
      0027F4 74 08            [12] 1899 	mov	a,#0x08
      0027F6 2D               [12] 1900 	add	a,r5
      0027F7 FD               [12] 1901 	mov	r5,a
      0027F8 E4               [12] 1902 	clr	a
      0027F9 3E               [12] 1903 	addc	a,r6
      0027FA FE               [12] 1904 	mov	r6,a
      0027FB 8D 82            [24] 1905 	mov	dpl,r5
      0027FD 8E 83            [24] 1906 	mov	dph,r6
      0027FF 8F F0            [24] 1907 	mov	b,r7
      002801 12 4F 82         [24] 1908 	lcall	__gptrget
      002804 FD               [12] 1909 	mov	r5,a
      002805 A3               [24] 1910 	inc	dptr
      002806 12 4F 82         [24] 1911 	lcall	__gptrget
      002809 FE               [12] 1912 	mov	r6,a
      00280A A3               [24] 1913 	inc	dptr
      00280B 12 4F 82         [24] 1914 	lcall	__gptrget
      00280E FF               [12] 1915 	mov	r7,a
      00280F 90 00 22         [24] 1916 	mov	dptr,#_initialize_buffers_curr_65540_118
      002812 ED               [12] 1917 	mov	a,r5
      002813 F0               [24] 1918 	movx	@dptr,a
      002814 EE               [12] 1919 	mov	a,r6
      002815 A3               [24] 1920 	inc	dptr
      002816 F0               [24] 1921 	movx	@dptr,a
      002817 EF               [12] 1922 	mov	a,r7
      002818 A3               [24] 1923 	inc	dptr
      002819 F0               [24] 1924 	movx	@dptr,a
      00281A 02 27 3B         [24] 1925 	ljmp	00135$
      00281D                       1926 00137$:
                                   1927 ;	src/main.c:249: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      00281D 90 00 20         [24] 1928 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      002820 E0               [24] 1929 	movx	a,@dptr
      002821 C0 E0            [24] 1930 	push	acc
      002823 A3               [24] 1931 	inc	dptr
      002824 E0               [24] 1932 	movx	a,@dptr
      002825 C0 E0            [24] 1933 	push	acc
      002827 74 3B            [12] 1934 	mov	a,#(___sdcc_heap + 0x2000)
      002829 C0 E0            [24] 1935 	push	acc
      00282B 74 20            [12] 1936 	mov	a,#((___sdcc_heap + 0x2000) >> 8)
      00282D C0 E0            [24] 1937 	push	acc
      00282F E4               [12] 1938 	clr	a
      002830 C0 E0            [24] 1939 	push	acc
      002832 74 3B            [12] 1940 	mov	a,#___sdcc_heap
      002834 C0 E0            [24] 1941 	push	acc
      002836 74 00            [12] 1942 	mov	a,#(___sdcc_heap >> 8)
      002838 C0 E0            [24] 1943 	push	acc
      00283A E4               [12] 1944 	clr	a
      00283B C0 E0            [24] 1945 	push	acc
      00283D 74 D8            [12] 1946 	mov	a,#___str_7
      00283F C0 E0            [24] 1947 	push	acc
      002841 74 50            [12] 1948 	mov	a,#(___str_7 >> 8)
      002843 C0 E0            [24] 1949 	push	acc
      002845 74 80            [12] 1950 	mov	a,#0x80
      002847 C0 E0            [24] 1951 	push	acc
      002849 12 45 56         [24] 1952 	lcall	_printf
      00284C E5 81            [12] 1953 	mov	a,sp
      00284E 24 F5            [12] 1954 	add	a,#0xf5
      002850 F5 81            [12] 1955 	mov	sp,a
                                   1956 ;	src/main.c:250: reset_char_count();
                                   1957 ;	src/main.c:251: }
      002852 02 3B 0C         [24] 1958 	ljmp	_reset_char_count
                                   1959 ;------------------------------------------------------------
                                   1960 ;Allocation info for local variables in function 'store_in_buffer'
                                   1961 ;------------------------------------------------------------
                                   1962 ;sloc0                     Allocated with name '_store_in_buffer_sloc0_1_0'
                                   1963 ;sloc1                     Allocated with name '_store_in_buffer_sloc1_1_0'
                                   1964 ;c                         Allocated with name '_store_in_buffer_PARM_2'
                                   1965 ;buffer                    Allocated with name '_store_in_buffer_buffer_65536_121'
                                   1966 ;------------------------------------------------------------
                                   1967 ;	src/main.c:253: void store_in_buffer(buffer_t *buffer, char c)
                                   1968 ;	-----------------------------------------
                                   1969 ;	 function store_in_buffer
                                   1970 ;	-----------------------------------------
      002855                       1971 _store_in_buffer:
      002855 AF F0            [24] 1972 	mov	r7,b
      002857 AE 83            [24] 1973 	mov	r6,dph
      002859 E5 82            [12] 1974 	mov	a,dpl
      00285B 90 00 26         [24] 1975 	mov	dptr,#_store_in_buffer_buffer_65536_121
      00285E F0               [24] 1976 	movx	@dptr,a
      00285F EE               [12] 1977 	mov	a,r6
      002860 A3               [24] 1978 	inc	dptr
      002861 F0               [24] 1979 	movx	@dptr,a
      002862 EF               [12] 1980 	mov	a,r7
      002863 A3               [24] 1981 	inc	dptr
      002864 F0               [24] 1982 	movx	@dptr,a
                                   1983 ;	src/main.c:255: if (buffer->curr_available_char < buffer->size)
      002865 90 00 26         [24] 1984 	mov	dptr,#_store_in_buffer_buffer_65536_121
      002868 E0               [24] 1985 	movx	a,@dptr
      002869 FD               [12] 1986 	mov	r5,a
      00286A A3               [24] 1987 	inc	dptr
      00286B E0               [24] 1988 	movx	a,@dptr
      00286C FE               [12] 1989 	mov	r6,a
      00286D A3               [24] 1990 	inc	dptr
      00286E E0               [24] 1991 	movx	a,@dptr
      00286F FF               [12] 1992 	mov	r7,a
      002870 74 06            [12] 1993 	mov	a,#0x06
      002872 2D               [12] 1994 	add	a,r5
      002873 F5 32            [12] 1995 	mov	_store_in_buffer_sloc1_1_0,a
      002875 E4               [12] 1996 	clr	a
      002876 3E               [12] 1997 	addc	a,r6
      002877 F5 33            [12] 1998 	mov	(_store_in_buffer_sloc1_1_0 + 1),a
      002879 8F 34            [24] 1999 	mov	(_store_in_buffer_sloc1_1_0 + 2),r7
      00287B 85 32 82         [24] 2000 	mov	dpl,_store_in_buffer_sloc1_1_0
      00287E 85 33 83         [24] 2001 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      002881 85 34 F0         [24] 2002 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      002884 12 4F 82         [24] 2003 	lcall	__gptrget
      002887 F5 30            [12] 2004 	mov	_store_in_buffer_sloc0_1_0,a
      002889 A3               [24] 2005 	inc	dptr
      00288A 12 4F 82         [24] 2006 	lcall	__gptrget
      00288D F5 31            [12] 2007 	mov	(_store_in_buffer_sloc0_1_0 + 1),a
      00288F 74 04            [12] 2008 	mov	a,#0x04
      002891 2D               [12] 2009 	add	a,r5
      002892 F8               [12] 2010 	mov	r0,a
      002893 E4               [12] 2011 	clr	a
      002894 3E               [12] 2012 	addc	a,r6
      002895 F9               [12] 2013 	mov	r1,a
      002896 8F 04            [24] 2014 	mov	ar4,r7
      002898 88 82            [24] 2015 	mov	dpl,r0
      00289A 89 83            [24] 2016 	mov	dph,r1
      00289C 8C F0            [24] 2017 	mov	b,r4
      00289E 12 4F 82         [24] 2018 	lcall	__gptrget
      0028A1 F8               [12] 2019 	mov	r0,a
      0028A2 A3               [24] 2020 	inc	dptr
      0028A3 12 4F 82         [24] 2021 	lcall	__gptrget
      0028A6 F9               [12] 2022 	mov	r1,a
      0028A7 C3               [12] 2023 	clr	c
      0028A8 E5 30            [12] 2024 	mov	a,_store_in_buffer_sloc0_1_0
      0028AA 98               [12] 2025 	subb	a,r0
      0028AB E5 31            [12] 2026 	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
      0028AD 99               [12] 2027 	subb	a,r1
      0028AE 40 01            [24] 2028 	jc	00115$
      0028B0 22               [24] 2029 	ret
      0028B1                       2030 00115$:
                                   2031 ;	src/main.c:257: buffer->buffer[buffer->curr_available_char] = c;
      0028B1 8D 82            [24] 2032 	mov	dpl,r5
      0028B3 8E 83            [24] 2033 	mov	dph,r6
      0028B5 8F F0            [24] 2034 	mov	b,r7
      0028B7 12 4F 82         [24] 2035 	lcall	__gptrget
      0028BA FB               [12] 2036 	mov	r3,a
      0028BB A3               [24] 2037 	inc	dptr
      0028BC 12 4F 82         [24] 2038 	lcall	__gptrget
      0028BF FC               [12] 2039 	mov	r4,a
      0028C0 E5 30            [12] 2040 	mov	a,_store_in_buffer_sloc0_1_0
      0028C2 2B               [12] 2041 	add	a,r3
      0028C3 FB               [12] 2042 	mov	r3,a
      0028C4 E5 31            [12] 2043 	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
      0028C6 3C               [12] 2044 	addc	a,r4
      0028C7 FC               [12] 2045 	mov	r4,a
      0028C8 90 00 25         [24] 2046 	mov	dptr,#_store_in_buffer_PARM_2
      0028CB E0               [24] 2047 	movx	a,@dptr
      0028CC FA               [12] 2048 	mov	r2,a
      0028CD 8B 82            [24] 2049 	mov	dpl,r3
      0028CF 8C 83            [24] 2050 	mov	dph,r4
      0028D1 F0               [24] 2051 	movx	@dptr,a
                                   2052 ;	src/main.c:258: buffer->curr_available_char++;
      0028D2 85 32 82         [24] 2053 	mov	dpl,_store_in_buffer_sloc1_1_0
      0028D5 85 33 83         [24] 2054 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      0028D8 85 34 F0         [24] 2055 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      0028DB 12 4F 82         [24] 2056 	lcall	__gptrget
      0028DE FC               [12] 2057 	mov	r4,a
      0028DF A3               [24] 2058 	inc	dptr
      0028E0 12 4F 82         [24] 2059 	lcall	__gptrget
      0028E3 FB               [12] 2060 	mov	r3,a
      0028E4 0C               [12] 2061 	inc	r4
      0028E5 BC 00 01         [24] 2062 	cjne	r4,#0x00,00116$
      0028E8 0B               [12] 2063 	inc	r3
      0028E9                       2064 00116$:
      0028E9 85 32 82         [24] 2065 	mov	dpl,_store_in_buffer_sloc1_1_0
      0028EC 85 33 83         [24] 2066 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      0028EF 85 34 F0         [24] 2067 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      0028F2 EC               [12] 2068 	mov	a,r4
      0028F3 12 43 28         [24] 2069 	lcall	__gptrput
      0028F6 A3               [24] 2070 	inc	dptr
      0028F7 EB               [12] 2071 	mov	a,r3
      0028F8 12 43 28         [24] 2072 	lcall	__gptrput
                                   2073 ;	src/main.c:259: if (is_alphabet_char(c))
      0028FB 8A 82            [24] 2074 	mov	dpl,r2
      0028FD C0 07            [24] 2075 	push	ar7
      0028FF C0 06            [24] 2076 	push	ar6
      002901 C0 05            [24] 2077 	push	ar5
      002903 12 20 94         [24] 2078 	lcall	_is_alphabet_char
      002906 E5 82            [12] 2079 	mov	a,dpl
      002908 D0 05            [24] 2080 	pop	ar5
      00290A D0 06            [24] 2081 	pop	ar6
      00290C D0 07            [24] 2082 	pop	ar7
      00290E 60 2A            [24] 2083 	jz	00105$
                                   2084 ;	src/main.c:261: buffer->alphabet_chars++;
      002910 74 02            [12] 2085 	mov	a,#0x02
      002912 2D               [12] 2086 	add	a,r5
      002913 FD               [12] 2087 	mov	r5,a
      002914 E4               [12] 2088 	clr	a
      002915 3E               [12] 2089 	addc	a,r6
      002916 FE               [12] 2090 	mov	r6,a
      002917 8D 82            [24] 2091 	mov	dpl,r5
      002919 8E 83            [24] 2092 	mov	dph,r6
      00291B 8F F0            [24] 2093 	mov	b,r7
      00291D 12 4F 82         [24] 2094 	lcall	__gptrget
      002920 FB               [12] 2095 	mov	r3,a
      002921 A3               [24] 2096 	inc	dptr
      002922 12 4F 82         [24] 2097 	lcall	__gptrget
      002925 FC               [12] 2098 	mov	r4,a
      002926 0B               [12] 2099 	inc	r3
      002927 BB 00 01         [24] 2100 	cjne	r3,#0x00,00118$
      00292A 0C               [12] 2101 	inc	r4
      00292B                       2102 00118$:
      00292B 8D 82            [24] 2103 	mov	dpl,r5
      00292D 8E 83            [24] 2104 	mov	dph,r6
      00292F 8F F0            [24] 2105 	mov	b,r7
      002931 EB               [12] 2106 	mov	a,r3
      002932 12 43 28         [24] 2107 	lcall	__gptrput
      002935 A3               [24] 2108 	inc	dptr
      002936 EC               [12] 2109 	mov	a,r4
                                   2110 ;	src/main.c:264: }
      002937 02 43 28         [24] 2111 	ljmp	__gptrput
      00293A                       2112 00105$:
      00293A 22               [24] 2113 	ret
                                   2114 ;------------------------------------------------------------
                                   2115 ;Allocation info for local variables in function 'print_dashed_line'
                                   2116 ;------------------------------------------------------------
                                   2117 ;	src/main.c:266: void print_dashed_line()
                                   2118 ;	-----------------------------------------
                                   2119 ;	 function print_dashed_line
                                   2120 ;	-----------------------------------------
      00293B                       2121 _print_dashed_line:
                                   2122 ;	src/main.c:268: printf("\r\n------------------------------------------------");
      00293B 74 01            [12] 2123 	mov	a,#___str_8
      00293D C0 E0            [24] 2124 	push	acc
      00293F 74 51            [12] 2125 	mov	a,#(___str_8 >> 8)
      002941 C0 E0            [24] 2126 	push	acc
      002943 74 80            [12] 2127 	mov	a,#0x80
      002945 C0 E0            [24] 2128 	push	acc
      002947 12 45 56         [24] 2129 	lcall	_printf
      00294A 15 81            [12] 2130 	dec	sp
      00294C 15 81            [12] 2131 	dec	sp
      00294E 15 81            [12] 2132 	dec	sp
                                   2133 ;	src/main.c:269: }
      002950 22               [24] 2134 	ret
                                   2135 ;------------------------------------------------------------
                                   2136 ;Allocation info for local variables in function 'command_header'
                                   2137 ;------------------------------------------------------------
                                   2138 ;command_string            Allocated with name '_command_header_command_string_65536_126'
                                   2139 ;------------------------------------------------------------
                                   2140 ;	src/main.c:271: void command_header(char *command_string)
                                   2141 ;	-----------------------------------------
                                   2142 ;	 function command_header
                                   2143 ;	-----------------------------------------
      002951                       2144 _command_header:
      002951 AF F0            [24] 2145 	mov	r7,b
      002953 AE 83            [24] 2146 	mov	r6,dph
      002955 E5 82            [12] 2147 	mov	a,dpl
      002957 90 00 29         [24] 2148 	mov	dptr,#_command_header_command_string_65536_126
      00295A F0               [24] 2149 	movx	@dptr,a
      00295B EE               [12] 2150 	mov	a,r6
      00295C A3               [24] 2151 	inc	dptr
      00295D F0               [24] 2152 	movx	@dptr,a
      00295E EF               [12] 2153 	mov	a,r7
      00295F A3               [24] 2154 	inc	dptr
      002960 F0               [24] 2155 	movx	@dptr,a
                                   2156 ;	src/main.c:273: print_dashed_line();
      002961 12 29 3B         [24] 2157 	lcall	_print_dashed_line
                                   2158 ;	src/main.c:274: printf("\r\n%s", command_string);
      002964 90 00 29         [24] 2159 	mov	dptr,#_command_header_command_string_65536_126
      002967 E0               [24] 2160 	movx	a,@dptr
      002968 C0 E0            [24] 2161 	push	acc
      00296A A3               [24] 2162 	inc	dptr
      00296B E0               [24] 2163 	movx	a,@dptr
      00296C C0 E0            [24] 2164 	push	acc
      00296E A3               [24] 2165 	inc	dptr
      00296F E0               [24] 2166 	movx	a,@dptr
      002970 C0 E0            [24] 2167 	push	acc
      002972 74 34            [12] 2168 	mov	a,#___str_9
      002974 C0 E0            [24] 2169 	push	acc
      002976 74 51            [12] 2170 	mov	a,#(___str_9 >> 8)
      002978 C0 E0            [24] 2171 	push	acc
      00297A 74 80            [12] 2172 	mov	a,#0x80
      00297C C0 E0            [24] 2173 	push	acc
      00297E 12 45 56         [24] 2174 	lcall	_printf
      002981 E5 81            [12] 2175 	mov	a,sp
      002983 24 FA            [12] 2176 	add	a,#0xfa
      002985 F5 81            [12] 2177 	mov	sp,a
                                   2178 ;	src/main.c:275: print_dashed_line();
                                   2179 ;	src/main.c:276: }
      002987 02 29 3B         [24] 2180 	ljmp	_print_dashed_line
                                   2181 ;------------------------------------------------------------
                                   2182 ;Allocation info for local variables in function 'heap_report'
                                   2183 ;------------------------------------------------------------
                                   2184 ;sloc0                     Allocated with name '_heap_report_sloc0_1_0'
                                   2185 ;sloc1                     Allocated with name '_heap_report_sloc1_1_0'
                                   2186 ;sloc2                     Allocated with name '_heap_report_sloc2_1_0'
                                   2187 ;sloc3                     Allocated with name '_heap_report_sloc3_1_0'
                                   2188 ;sloc4                     Allocated with name '_heap_report_sloc4_1_0'
                                   2189 ;sloc5                     Allocated with name '_heap_report_sloc5_1_0'
                                   2190 ;total_heap_sz             Allocated with name '_heap_report_total_heap_sz_65537_129'
                                   2191 ;i                         Allocated with name '_heap_report_i_65537_129'
                                   2192 ;curr                      Allocated with name '_heap_report_curr_65538_133'
                                   2193 ;------------------------------------------------------------
                                   2194 ;	src/main.c:280: void heap_report()
                                   2195 ;	-----------------------------------------
                                   2196 ;	 function heap_report
                                   2197 ;	-----------------------------------------
      00298A                       2198 _heap_report:
                                   2199 ;	src/main.c:282: command_header("Heap Report");
      00298A 90 51 39         [24] 2200 	mov	dptr,#___str_10
      00298D 75 F0 80         [24] 2201 	mov	b,#0x80
      002990 12 29 51         [24] 2202 	lcall	_command_header
                                   2203 ;	src/main.c:283: size_t total_heap_sz = 0;
      002993 90 00 2C         [24] 2204 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002996 E4               [12] 2205 	clr	a
      002997 F0               [24] 2206 	movx	@dptr,a
      002998 A3               [24] 2207 	inc	dptr
      002999 F0               [24] 2208 	movx	@dptr,a
                                   2209 ;	src/main.c:285: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00299A 7E 00            [12] 2210 	mov	r6,#0x00
      00299C 7F 00            [12] 2211 	mov	r7,#0x00
      00299E                       2212 00109$:
                                   2213 ;	src/main.c:287: if(static_buffers[i].buffer != NULL) {
      00299E 90 20 9A         [24] 2214 	mov	dptr,#__mulint_PARM_2
      0029A1 EE               [12] 2215 	mov	a,r6
      0029A2 F0               [24] 2216 	movx	@dptr,a
      0029A3 EF               [12] 2217 	mov	a,r7
      0029A4 A3               [24] 2218 	inc	dptr
      0029A5 F0               [24] 2219 	movx	@dptr,a
      0029A6 90 00 0B         [24] 2220 	mov	dptr,#0x000b
      0029A9 C0 07            [24] 2221 	push	ar7
      0029AB C0 06            [24] 2222 	push	ar6
      0029AD 12 44 E8         [24] 2223 	lcall	__mulint
      0029B0 AC 82            [24] 2224 	mov	r4,dpl
      0029B2 AD 83            [24] 2225 	mov	r5,dph
      0029B4 D0 06            [24] 2226 	pop	ar6
      0029B6 D0 07            [24] 2227 	pop	ar7
      0029B8 EC               [12] 2228 	mov	a,r4
      0029B9 24 01            [12] 2229 	add	a,#_static_buffers
      0029BB F5 82            [12] 2230 	mov	dpl,a
      0029BD ED               [12] 2231 	mov	a,r5
      0029BE 34 00            [12] 2232 	addc	a,#(_static_buffers >> 8)
      0029C0 F5 83            [12] 2233 	mov	dph,a
      0029C2 E0               [24] 2234 	movx	a,@dptr
      0029C3 FA               [12] 2235 	mov	r2,a
      0029C4 A3               [24] 2236 	inc	dptr
      0029C5 E0               [24] 2237 	movx	a,@dptr
      0029C6 FB               [12] 2238 	mov	r3,a
      0029C7 4A               [12] 2239 	orl	a,r2
      0029C8 70 03            [24] 2240 	jnz	00139$
      0029CA 02 2A 83         [24] 2241 	ljmp	00110$
      0029CD                       2242 00139$:
                                   2243 ;	src/main.c:294: static_buffers[i].size - static_buffers[i].curr_available_char);
      0029CD EC               [12] 2244 	mov	a,r4
      0029CE 24 01            [12] 2245 	add	a,#_static_buffers
      0029D0 FC               [12] 2246 	mov	r4,a
      0029D1 ED               [12] 2247 	mov	a,r5
      0029D2 34 00            [12] 2248 	addc	a,#(_static_buffers >> 8)
      0029D4 FD               [12] 2249 	mov	r5,a
      0029D5 74 04            [12] 2250 	mov	a,#0x04
      0029D7 2C               [12] 2251 	add	a,r4
      0029D8 F5 35            [12] 2252 	mov	_heap_report_sloc0_1_0,a
      0029DA E4               [12] 2253 	clr	a
      0029DB 3D               [12] 2254 	addc	a,r5
      0029DC F5 36            [12] 2255 	mov	(_heap_report_sloc0_1_0 + 1),a
      0029DE 85 35 82         [24] 2256 	mov	dpl,_heap_report_sloc0_1_0
      0029E1 85 36 83         [24] 2257 	mov	dph,(_heap_report_sloc0_1_0 + 1)
      0029E4 E0               [24] 2258 	movx	a,@dptr
      0029E5 F8               [12] 2259 	mov	r0,a
      0029E6 A3               [24] 2260 	inc	dptr
      0029E7 E0               [24] 2261 	movx	a,@dptr
      0029E8 F9               [12] 2262 	mov	r1,a
      0029E9 74 06            [12] 2263 	mov	a,#0x06
      0029EB 2C               [12] 2264 	add	a,r4
      0029EC F5 82            [12] 2265 	mov	dpl,a
      0029EE E4               [12] 2266 	clr	a
      0029EF 3D               [12] 2267 	addc	a,r5
      0029F0 F5 83            [12] 2268 	mov	dph,a
      0029F2 E0               [24] 2269 	movx	a,@dptr
      0029F3 FA               [12] 2270 	mov	r2,a
      0029F4 A3               [24] 2271 	inc	dptr
      0029F5 E0               [24] 2272 	movx	a,@dptr
      0029F6 FB               [12] 2273 	mov	r3,a
      0029F7 E8               [12] 2274 	mov	a,r0
      0029F8 C3               [12] 2275 	clr	c
      0029F9 9A               [12] 2276 	subb	a,r2
      0029FA F5 37            [12] 2277 	mov	_heap_report_sloc1_1_0,a
      0029FC E9               [12] 2278 	mov	a,r1
      0029FD 9B               [12] 2279 	subb	a,r3
      0029FE F5 38            [12] 2280 	mov	(_heap_report_sloc1_1_0 + 1),a
                                   2281 ;	src/main.c:293: static_buffers[i].alphabet_chars,
      002A00 8C 82            [24] 2282 	mov	dpl,r4
      002A02 8D 83            [24] 2283 	mov	dph,r5
      002A04 A3               [24] 2284 	inc	dptr
      002A05 A3               [24] 2285 	inc	dptr
      002A06 E0               [24] 2286 	movx	a,@dptr
      002A07 F5 39            [12] 2287 	mov	_heap_report_sloc2_1_0,a
      002A09 A3               [24] 2288 	inc	dptr
      002A0A E0               [24] 2289 	movx	a,@dptr
      002A0B F5 3A            [12] 2290 	mov	(_heap_report_sloc2_1_0 + 1),a
                                   2291 ;	src/main.c:291: static_buffers[i].buffer + static_buffers[i].size, 
      002A0D 8C 82            [24] 2292 	mov	dpl,r4
      002A0F 8D 83            [24] 2293 	mov	dph,r5
      002A11 E0               [24] 2294 	movx	a,@dptr
      002A12 F5 3B            [12] 2295 	mov	_heap_report_sloc3_1_0,a
      002A14 A3               [24] 2296 	inc	dptr
      002A15 E0               [24] 2297 	movx	a,@dptr
      002A16 F5 3C            [12] 2298 	mov	(_heap_report_sloc3_1_0 + 1),a
      002A18 E8               [12] 2299 	mov	a,r0
      002A19 25 3B            [12] 2300 	add	a,_heap_report_sloc3_1_0
      002A1B FA               [12] 2301 	mov	r2,a
      002A1C E9               [12] 2302 	mov	a,r1
      002A1D 35 3C            [12] 2303 	addc	a,(_heap_report_sloc3_1_0 + 1)
      002A1F FB               [12] 2304 	mov	r3,a
      002A20 8A 3D            [24] 2305 	mov	_heap_report_sloc4_1_0,r2
      002A22 8B 3E            [24] 2306 	mov	(_heap_report_sloc4_1_0 + 1),r3
      002A24 75 3F 00         [24] 2307 	mov	(_heap_report_sloc4_1_0 + 2),#0x00
                                   2308 ;	src/main.c:290: static_buffers[i].buffer, 
      002A27 AC 3B            [24] 2309 	mov	r4,_heap_report_sloc3_1_0
      002A29 AD 3C            [24] 2310 	mov	r5,(_heap_report_sloc3_1_0 + 1)
      002A2B 7B 00            [12] 2311 	mov	r3,#0x00
                                   2312 ;	src/main.c:288: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
      002A2D C0 07            [24] 2313 	push	ar7
      002A2F C0 06            [24] 2314 	push	ar6
      002A31 C0 37            [24] 2315 	push	_heap_report_sloc1_1_0
      002A33 C0 38            [24] 2316 	push	(_heap_report_sloc1_1_0 + 1)
      002A35 C0 39            [24] 2317 	push	_heap_report_sloc2_1_0
      002A37 C0 3A            [24] 2318 	push	(_heap_report_sloc2_1_0 + 1)
      002A39 C0 00            [24] 2319 	push	ar0
      002A3B C0 01            [24] 2320 	push	ar1
      002A3D C0 3D            [24] 2321 	push	_heap_report_sloc4_1_0
      002A3F C0 3E            [24] 2322 	push	(_heap_report_sloc4_1_0 + 1)
      002A41 C0 3F            [24] 2323 	push	(_heap_report_sloc4_1_0 + 2)
      002A43 C0 04            [24] 2324 	push	ar4
      002A45 C0 05            [24] 2325 	push	ar5
      002A47 C0 03            [24] 2326 	push	ar3
      002A49 C0 06            [24] 2327 	push	ar6
      002A4B C0 07            [24] 2328 	push	ar7
      002A4D 74 45            [12] 2329 	mov	a,#___str_11
      002A4F C0 E0            [24] 2330 	push	acc
      002A51 74 51            [12] 2331 	mov	a,#(___str_11 >> 8)
      002A53 C0 E0            [24] 2332 	push	acc
      002A55 74 80            [12] 2333 	mov	a,#0x80
      002A57 C0 E0            [24] 2334 	push	acc
      002A59 12 45 56         [24] 2335 	lcall	_printf
      002A5C E5 81            [12] 2336 	mov	a,sp
      002A5E 24 EF            [12] 2337 	add	a,#0xef
      002A60 F5 81            [12] 2338 	mov	sp,a
      002A62 D0 06            [24] 2339 	pop	ar6
      002A64 D0 07            [24] 2340 	pop	ar7
                                   2341 ;	src/main.c:295: total_heap_sz += static_buffers[i].size; 
      002A66 85 35 82         [24] 2342 	mov	dpl,_heap_report_sloc0_1_0
      002A69 85 36 83         [24] 2343 	mov	dph,(_heap_report_sloc0_1_0 + 1)
      002A6C E0               [24] 2344 	movx	a,@dptr
      002A6D FC               [12] 2345 	mov	r4,a
      002A6E A3               [24] 2346 	inc	dptr
      002A6F E0               [24] 2347 	movx	a,@dptr
      002A70 FD               [12] 2348 	mov	r5,a
      002A71 90 00 2C         [24] 2349 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002A74 E0               [24] 2350 	movx	a,@dptr
      002A75 FA               [12] 2351 	mov	r2,a
      002A76 A3               [24] 2352 	inc	dptr
      002A77 E0               [24] 2353 	movx	a,@dptr
      002A78 FB               [12] 2354 	mov	r3,a
      002A79 90 00 2C         [24] 2355 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002A7C EC               [12] 2356 	mov	a,r4
      002A7D 2A               [12] 2357 	add	a,r2
      002A7E F0               [24] 2358 	movx	@dptr,a
      002A7F ED               [12] 2359 	mov	a,r5
      002A80 3B               [12] 2360 	addc	a,r3
      002A81 A3               [24] 2361 	inc	dptr
      002A82 F0               [24] 2362 	movx	@dptr,a
      002A83                       2363 00110$:
                                   2364 ;	src/main.c:285: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002A83 0E               [12] 2365 	inc	r6
      002A84 BE 00 01         [24] 2366 	cjne	r6,#0x00,00140$
      002A87 0F               [12] 2367 	inc	r7
      002A88                       2368 00140$:
      002A88 C3               [12] 2369 	clr	c
      002A89 EE               [12] 2370 	mov	a,r6
      002A8A 94 02            [12] 2371 	subb	a,#0x02
      002A8C EF               [12] 2372 	mov	a,r7
      002A8D 64 80            [12] 2373 	xrl	a,#0x80
      002A8F 94 80            [12] 2374 	subb	a,#0x80
      002A91 50 03            [24] 2375 	jnc	00141$
      002A93 02 29 9E         [24] 2376 	ljmp	00109$
      002A96                       2377 00141$:
                                   2378 ;	src/main.c:299: buffer_t *curr = dynamic_buffers_list.head;
      002A96 90 20 D3         [24] 2379 	mov	dptr,#_dynamic_buffers_list
      002A99 E0               [24] 2380 	movx	a,@dptr
      002A9A FB               [12] 2381 	mov	r3,a
      002A9B A3               [24] 2382 	inc	dptr
      002A9C E0               [24] 2383 	movx	a,@dptr
      002A9D FC               [12] 2384 	mov	r4,a
      002A9E A3               [24] 2385 	inc	dptr
      002A9F E0               [24] 2386 	movx	a,@dptr
      002AA0 FD               [12] 2387 	mov	r5,a
      002AA1 90 00 2E         [24] 2388 	mov	dptr,#_heap_report_curr_65538_133
      002AA4 EB               [12] 2389 	mov	a,r3
      002AA5 F0               [24] 2390 	movx	@dptr,a
      002AA6 EC               [12] 2391 	mov	a,r4
      002AA7 A3               [24] 2392 	inc	dptr
      002AA8 F0               [24] 2393 	movx	@dptr,a
      002AA9 ED               [12] 2394 	mov	a,r5
      002AAA A3               [24] 2395 	inc	dptr
      002AAB F0               [24] 2396 	movx	@dptr,a
                                   2397 ;	src/main.c:300: while(curr != NULL) {
      002AAC 8E 3D            [24] 2398 	mov	_heap_report_sloc4_1_0,r6
      002AAE 8F 3E            [24] 2399 	mov	(_heap_report_sloc4_1_0 + 1),r7
      002AB0                       2400 00106$:
      002AB0 90 00 2E         [24] 2401 	mov	dptr,#_heap_report_curr_65538_133
      002AB3 E0               [24] 2402 	movx	a,@dptr
      002AB4 FB               [12] 2403 	mov	r3,a
      002AB5 A3               [24] 2404 	inc	dptr
      002AB6 E0               [24] 2405 	movx	a,@dptr
      002AB7 FC               [12] 2406 	mov	r4,a
      002AB8 A3               [24] 2407 	inc	dptr
      002AB9 E0               [24] 2408 	movx	a,@dptr
      002ABA FD               [12] 2409 	mov	r5,a
      002ABB EB               [12] 2410 	mov	a,r3
      002ABC 4C               [12] 2411 	orl	a,r4
      002ABD 70 03            [24] 2412 	jnz	00142$
      002ABF 02 2B B2         [24] 2413 	ljmp	00108$
      002AC2                       2414 00142$:
                                   2415 ;	src/main.c:301: if(curr->buffer != NULL) {
      002AC2 8B 82            [24] 2416 	mov	dpl,r3
      002AC4 8C 83            [24] 2417 	mov	dph,r4
      002AC6 8D F0            [24] 2418 	mov	b,r5
      002AC8 12 4F 82         [24] 2419 	lcall	__gptrget
      002ACB F9               [12] 2420 	mov	r1,a
      002ACC A3               [24] 2421 	inc	dptr
      002ACD 12 4F 82         [24] 2422 	lcall	__gptrget
      002AD0 FA               [12] 2423 	mov	r2,a
      002AD1 49               [12] 2424 	orl	a,r1
      002AD2 70 03            [24] 2425 	jnz	00143$
      002AD4 02 2B 76         [24] 2426 	ljmp	00105$
      002AD7                       2427 00143$:
                                   2428 ;	src/main.c:308: curr->size - curr->alphabet_chars);
      002AD7 74 04            [12] 2429 	mov	a,#0x04
      002AD9 2B               [12] 2430 	add	a,r3
      002ADA F5 40            [12] 2431 	mov	_heap_report_sloc5_1_0,a
      002ADC E4               [12] 2432 	clr	a
      002ADD 3C               [12] 2433 	addc	a,r4
      002ADE F5 41            [12] 2434 	mov	(_heap_report_sloc5_1_0 + 1),a
      002AE0 8D 42            [24] 2435 	mov	(_heap_report_sloc5_1_0 + 2),r5
      002AE2 85 40 82         [24] 2436 	mov	dpl,_heap_report_sloc5_1_0
      002AE5 85 41 83         [24] 2437 	mov	dph,(_heap_report_sloc5_1_0 + 1)
      002AE8 85 42 F0         [24] 2438 	mov	b,(_heap_report_sloc5_1_0 + 2)
      002AEB 12 4F 82         [24] 2439 	lcall	__gptrget
      002AEE FE               [12] 2440 	mov	r6,a
      002AEF A3               [24] 2441 	inc	dptr
      002AF0 12 4F 82         [24] 2442 	lcall	__gptrget
      002AF3 FF               [12] 2443 	mov	r7,a
      002AF4 74 02            [12] 2444 	mov	a,#0x02
      002AF6 2B               [12] 2445 	add	a,r3
      002AF7 FB               [12] 2446 	mov	r3,a
      002AF8 E4               [12] 2447 	clr	a
      002AF9 3C               [12] 2448 	addc	a,r4
      002AFA FC               [12] 2449 	mov	r4,a
      002AFB 8B 82            [24] 2450 	mov	dpl,r3
      002AFD 8C 83            [24] 2451 	mov	dph,r4
      002AFF 8D F0            [24] 2452 	mov	b,r5
      002B01 12 4F 82         [24] 2453 	lcall	__gptrget
      002B04 F5 39            [12] 2454 	mov	_heap_report_sloc2_1_0,a
      002B06 A3               [24] 2455 	inc	dptr
      002B07 12 4F 82         [24] 2456 	lcall	__gptrget
      002B0A F5 3A            [12] 2457 	mov	(_heap_report_sloc2_1_0 + 1),a
      002B0C EE               [12] 2458 	mov	a,r6
      002B0D C3               [12] 2459 	clr	c
      002B0E 95 39            [12] 2460 	subb	a,_heap_report_sloc2_1_0
      002B10 F5 3B            [12] 2461 	mov	_heap_report_sloc3_1_0,a
      002B12 EF               [12] 2462 	mov	a,r7
      002B13 95 3A            [12] 2463 	subb	a,(_heap_report_sloc2_1_0 + 1)
      002B15 F5 3C            [12] 2464 	mov	(_heap_report_sloc3_1_0 + 1),a
                                   2465 ;	src/main.c:305: curr->buffer + curr->size, 
      002B17 EE               [12] 2466 	mov	a,r6
      002B18 29               [12] 2467 	add	a,r1
      002B19 F8               [12] 2468 	mov	r0,a
      002B1A EF               [12] 2469 	mov	a,r7
      002B1B 3A               [12] 2470 	addc	a,r2
      002B1C FC               [12] 2471 	mov	r4,a
      002B1D 7D 00            [12] 2472 	mov	r5,#0x00
                                   2473 ;	src/main.c:304: curr->buffer, 
      002B1F 7B 00            [12] 2474 	mov	r3,#0x00
                                   2475 ;	src/main.c:302: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
      002B21 C0 3B            [24] 2476 	push	_heap_report_sloc3_1_0
      002B23 C0 3C            [24] 2477 	push	(_heap_report_sloc3_1_0 + 1)
      002B25 C0 39            [24] 2478 	push	_heap_report_sloc2_1_0
      002B27 C0 3A            [24] 2479 	push	(_heap_report_sloc2_1_0 + 1)
      002B29 C0 06            [24] 2480 	push	ar6
      002B2B C0 07            [24] 2481 	push	ar7
      002B2D C0 00            [24] 2482 	push	ar0
      002B2F C0 04            [24] 2483 	push	ar4
      002B31 C0 05            [24] 2484 	push	ar5
      002B33 C0 01            [24] 2485 	push	ar1
      002B35 C0 02            [24] 2486 	push	ar2
      002B37 C0 03            [24] 2487 	push	ar3
      002B39 C0 3D            [24] 2488 	push	_heap_report_sloc4_1_0
      002B3B C0 3E            [24] 2489 	push	(_heap_report_sloc4_1_0 + 1)
      002B3D 74 45            [12] 2490 	mov	a,#___str_11
      002B3F C0 E0            [24] 2491 	push	acc
      002B41 74 51            [12] 2492 	mov	a,#(___str_11 >> 8)
      002B43 C0 E0            [24] 2493 	push	acc
      002B45 74 80            [12] 2494 	mov	a,#0x80
      002B47 C0 E0            [24] 2495 	push	acc
      002B49 12 45 56         [24] 2496 	lcall	_printf
      002B4C E5 81            [12] 2497 	mov	a,sp
      002B4E 24 EF            [12] 2498 	add	a,#0xef
      002B50 F5 81            [12] 2499 	mov	sp,a
                                   2500 ;	src/main.c:309: total_heap_sz += curr->size; 
      002B52 85 40 82         [24] 2501 	mov	dpl,_heap_report_sloc5_1_0
      002B55 85 41 83         [24] 2502 	mov	dph,(_heap_report_sloc5_1_0 + 1)
      002B58 85 42 F0         [24] 2503 	mov	b,(_heap_report_sloc5_1_0 + 2)
      002B5B 12 4F 82         [24] 2504 	lcall	__gptrget
      002B5E FE               [12] 2505 	mov	r6,a
      002B5F A3               [24] 2506 	inc	dptr
      002B60 12 4F 82         [24] 2507 	lcall	__gptrget
      002B63 FF               [12] 2508 	mov	r7,a
      002B64 90 00 2C         [24] 2509 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002B67 E0               [24] 2510 	movx	a,@dptr
      002B68 FC               [12] 2511 	mov	r4,a
      002B69 A3               [24] 2512 	inc	dptr
      002B6A E0               [24] 2513 	movx	a,@dptr
      002B6B FD               [12] 2514 	mov	r5,a
      002B6C 90 00 2C         [24] 2515 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002B6F EE               [12] 2516 	mov	a,r6
      002B70 2C               [12] 2517 	add	a,r4
      002B71 F0               [24] 2518 	movx	@dptr,a
      002B72 EF               [12] 2519 	mov	a,r7
      002B73 3D               [12] 2520 	addc	a,r5
      002B74 A3               [24] 2521 	inc	dptr
      002B75 F0               [24] 2522 	movx	@dptr,a
      002B76                       2523 00105$:
                                   2524 ;	src/main.c:311: i++;
      002B76 05 3D            [12] 2525 	inc	_heap_report_sloc4_1_0
      002B78 E4               [12] 2526 	clr	a
      002B79 B5 3D 02         [24] 2527 	cjne	a,_heap_report_sloc4_1_0,00144$
      002B7C 05 3E            [12] 2528 	inc	(_heap_report_sloc4_1_0 + 1)
      002B7E                       2529 00144$:
                                   2530 ;	src/main.c:312: curr = curr->next;
      002B7E 90 00 2E         [24] 2531 	mov	dptr,#_heap_report_curr_65538_133
      002B81 E0               [24] 2532 	movx	a,@dptr
      002B82 FD               [12] 2533 	mov	r5,a
      002B83 A3               [24] 2534 	inc	dptr
      002B84 E0               [24] 2535 	movx	a,@dptr
      002B85 FE               [12] 2536 	mov	r6,a
      002B86 A3               [24] 2537 	inc	dptr
      002B87 E0               [24] 2538 	movx	a,@dptr
      002B88 FF               [12] 2539 	mov	r7,a
      002B89 74 08            [12] 2540 	mov	a,#0x08
      002B8B 2D               [12] 2541 	add	a,r5
      002B8C FD               [12] 2542 	mov	r5,a
      002B8D E4               [12] 2543 	clr	a
      002B8E 3E               [12] 2544 	addc	a,r6
      002B8F FE               [12] 2545 	mov	r6,a
      002B90 8D 82            [24] 2546 	mov	dpl,r5
      002B92 8E 83            [24] 2547 	mov	dph,r6
      002B94 8F F0            [24] 2548 	mov	b,r7
      002B96 12 4F 82         [24] 2549 	lcall	__gptrget
      002B99 FD               [12] 2550 	mov	r5,a
      002B9A A3               [24] 2551 	inc	dptr
      002B9B 12 4F 82         [24] 2552 	lcall	__gptrget
      002B9E FE               [12] 2553 	mov	r6,a
      002B9F A3               [24] 2554 	inc	dptr
      002BA0 12 4F 82         [24] 2555 	lcall	__gptrget
      002BA3 FF               [12] 2556 	mov	r7,a
      002BA4 90 00 2E         [24] 2557 	mov	dptr,#_heap_report_curr_65538_133
      002BA7 ED               [12] 2558 	mov	a,r5
      002BA8 F0               [24] 2559 	movx	@dptr,a
      002BA9 EE               [12] 2560 	mov	a,r6
      002BAA A3               [24] 2561 	inc	dptr
      002BAB F0               [24] 2562 	movx	@dptr,a
      002BAC EF               [12] 2563 	mov	a,r7
      002BAD A3               [24] 2564 	inc	dptr
      002BAE F0               [24] 2565 	movx	@dptr,a
      002BAF 02 2A B0         [24] 2566 	ljmp	00106$
      002BB2                       2567 00108$:
                                   2568 ;	src/main.c:314: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      002BB2 90 00 2C         [24] 2569 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002BB5 E0               [24] 2570 	movx	a,@dptr
      002BB6 C0 E0            [24] 2571 	push	acc
      002BB8 A3               [24] 2572 	inc	dptr
      002BB9 E0               [24] 2573 	movx	a,@dptr
      002BBA C0 E0            [24] 2574 	push	acc
      002BBC 74 3B            [12] 2575 	mov	a,#(___sdcc_heap + 0x2000)
      002BBE C0 E0            [24] 2576 	push	acc
      002BC0 74 20            [12] 2577 	mov	a,#((___sdcc_heap + 0x2000) >> 8)
      002BC2 C0 E0            [24] 2578 	push	acc
      002BC4 E4               [12] 2579 	clr	a
      002BC5 C0 E0            [24] 2580 	push	acc
      002BC7 74 3B            [12] 2581 	mov	a,#___sdcc_heap
      002BC9 C0 E0            [24] 2582 	push	acc
      002BCB 74 00            [12] 2583 	mov	a,#(___sdcc_heap >> 8)
      002BCD C0 E0            [24] 2584 	push	acc
      002BCF E4               [12] 2585 	clr	a
      002BD0 C0 E0            [24] 2586 	push	acc
      002BD2 74 D8            [12] 2587 	mov	a,#___str_7
      002BD4 C0 E0            [24] 2588 	push	acc
      002BD6 74 50            [12] 2589 	mov	a,#(___str_7 >> 8)
      002BD8 C0 E0            [24] 2590 	push	acc
      002BDA 74 80            [12] 2591 	mov	a,#0x80
      002BDC C0 E0            [24] 2592 	push	acc
      002BDE 12 45 56         [24] 2593 	lcall	_printf
      002BE1 E5 81            [12] 2594 	mov	a,sp
      002BE3 24 F5            [12] 2595 	add	a,#0xf5
      002BE5 F5 81            [12] 2596 	mov	sp,a
                                   2597 ;	src/main.c:315: printf("\r\n");
      002BE7 74 A7            [12] 2598 	mov	a,#___str_12
      002BE9 C0 E0            [24] 2599 	push	acc
      002BEB 74 51            [12] 2600 	mov	a,#(___str_12 >> 8)
      002BED C0 E0            [24] 2601 	push	acc
      002BEF 74 80            [12] 2602 	mov	a,#0x80
      002BF1 C0 E0            [24] 2603 	push	acc
      002BF3 12 45 56         [24] 2604 	lcall	_printf
      002BF6 15 81            [12] 2605 	dec	sp
      002BF8 15 81            [12] 2606 	dec	sp
      002BFA 15 81            [12] 2607 	dec	sp
                                   2608 ;	src/main.c:316: }
      002BFC 22               [24] 2609 	ret
                                   2610 ;------------------------------------------------------------
                                   2611 ;Allocation info for local variables in function 'get_user_buffer_sz'
                                   2612 ;------------------------------------------------------------
                                   2613 ;maximum_sz                Allocated with name '_get_user_buffer_sz_maximum_sz_65536_136'
                                   2614 ;user_buffer_size          Allocated with name '_get_user_buffer_sz_user_buffer_size_65536_137'
                                   2615 ;------------------------------------------------------------
                                   2616 ;	src/main.c:320: size_t get_user_buffer_sz(size_t maximum_sz)
                                   2617 ;	-----------------------------------------
                                   2618 ;	 function get_user_buffer_sz
                                   2619 ;	-----------------------------------------
      002BFD                       2620 _get_user_buffer_sz:
      002BFD AF 83            [24] 2621 	mov	r7,dph
      002BFF E5 82            [12] 2622 	mov	a,dpl
      002C01 90 00 31         [24] 2623 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_136
      002C04 F0               [24] 2624 	movx	@dptr,a
      002C05 EF               [12] 2625 	mov	a,r7
      002C06 A3               [24] 2626 	inc	dptr
      002C07 F0               [24] 2627 	movx	@dptr,a
                                   2628 ;	src/main.c:323: while(true) {
      002C08 90 00 31         [24] 2629 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_136
      002C0B E0               [24] 2630 	movx	a,@dptr
      002C0C FE               [12] 2631 	mov	r6,a
      002C0D A3               [24] 2632 	inc	dptr
      002C0E E0               [24] 2633 	movx	a,@dptr
      002C0F FF               [12] 2634 	mov	r7,a
      002C10                       2635 00111$:
                                   2636 ;	src/main.c:324: printf("\r\nPlease enter a valid buffer size that is divisible by 32 [64,%zu]: ", maximum_sz);
      002C10 C0 07            [24] 2637 	push	ar7
      002C12 C0 06            [24] 2638 	push	ar6
      002C14 C0 06            [24] 2639 	push	ar6
      002C16 C0 07            [24] 2640 	push	ar7
      002C18 74 AA            [12] 2641 	mov	a,#___str_13
      002C1A C0 E0            [24] 2642 	push	acc
      002C1C 74 51            [12] 2643 	mov	a,#(___str_13 >> 8)
      002C1E C0 E0            [24] 2644 	push	acc
      002C20 74 80            [12] 2645 	mov	a,#0x80
      002C22 C0 E0            [24] 2646 	push	acc
      002C24 12 45 56         [24] 2647 	lcall	_printf
      002C27 E5 81            [12] 2648 	mov	a,sp
      002C29 24 FB            [12] 2649 	add	a,#0xfb
      002C2B F5 81            [12] 2650 	mov	sp,a
                                   2651 ;	src/main.c:325: get_string();
      002C2D 12 39 A9         [24] 2652 	lcall	_get_string
                                   2653 ;	src/main.c:326: user_buffer_size = (size_t) atoi(get_input_buffer()); //TODO: replace with own implementation of atoi that respects the size_t
      002C30 12 39 A2         [24] 2654 	lcall	_get_input_buffer
      002C33 12 42 04         [24] 2655 	lcall	_atoi
      002C36 AC 82            [24] 2656 	mov	r4,dpl
      002C38 AD 83            [24] 2657 	mov	r5,dph
      002C3A D0 06            [24] 2658 	pop	ar6
      002C3C D0 07            [24] 2659 	pop	ar7
                                   2660 ;	src/main.c:327: if (user_buffer_size > maximum_sz)
      002C3E C3               [12] 2661 	clr	c
      002C3F EE               [12] 2662 	mov	a,r6
      002C40 9C               [12] 2663 	subb	a,r4
      002C41 EF               [12] 2664 	mov	a,r7
      002C42 9D               [12] 2665 	subb	a,r5
      002C43 50 1F            [24] 2666 	jnc	00108$
                                   2667 ;	src/main.c:329: printf("\r\n User buffer size larger than maximum");
      002C45 C0 07            [24] 2668 	push	ar7
      002C47 C0 06            [24] 2669 	push	ar6
      002C49 74 F0            [12] 2670 	mov	a,#___str_14
      002C4B C0 E0            [24] 2671 	push	acc
      002C4D 74 51            [12] 2672 	mov	a,#(___str_14 >> 8)
      002C4F C0 E0            [24] 2673 	push	acc
      002C51 74 80            [12] 2674 	mov	a,#0x80
      002C53 C0 E0            [24] 2675 	push	acc
      002C55 12 45 56         [24] 2676 	lcall	_printf
      002C58 15 81            [12] 2677 	dec	sp
      002C5A 15 81            [12] 2678 	dec	sp
      002C5C 15 81            [12] 2679 	dec	sp
      002C5E D0 06            [24] 2680 	pop	ar6
      002C60 D0 07            [24] 2681 	pop	ar7
      002C62 80 AC            [24] 2682 	sjmp	00111$
      002C64                       2683 00108$:
                                   2684 ;	src/main.c:331: else if (user_buffer_size < USER_BUFFER_MIN)
      002C64 C3               [12] 2685 	clr	c
      002C65 EC               [12] 2686 	mov	a,r4
      002C66 94 40            [12] 2687 	subb	a,#0x40
      002C68 ED               [12] 2688 	mov	a,r5
      002C69 94 00            [12] 2689 	subb	a,#0x00
      002C6B 50 20            [24] 2690 	jnc	00105$
                                   2691 ;	src/main.c:333: printf("\r\n User buffer size too small or error in conversion");
      002C6D C0 07            [24] 2692 	push	ar7
      002C6F C0 06            [24] 2693 	push	ar6
      002C71 74 18            [12] 2694 	mov	a,#___str_15
      002C73 C0 E0            [24] 2695 	push	acc
      002C75 74 52            [12] 2696 	mov	a,#(___str_15 >> 8)
      002C77 C0 E0            [24] 2697 	push	acc
      002C79 74 80            [12] 2698 	mov	a,#0x80
      002C7B C0 E0            [24] 2699 	push	acc
      002C7D 12 45 56         [24] 2700 	lcall	_printf
      002C80 15 81            [12] 2701 	dec	sp
      002C82 15 81            [12] 2702 	dec	sp
      002C84 15 81            [12] 2703 	dec	sp
      002C86 D0 06            [24] 2704 	pop	ar6
      002C88 D0 07            [24] 2705 	pop	ar7
      002C8A 02 2C 10         [24] 2706 	ljmp	00111$
      002C8D                       2707 00105$:
                                   2708 ;	src/main.c:335: else if (MODULE_32(user_buffer_size) != 0)
      002C8D EC               [12] 2709 	mov	a,r4
      002C8E 54 1F            [12] 2710 	anl	a,#0x1f
      002C90 60 20            [24] 2711 	jz	00102$
                                   2712 ;	src/main.c:337: printf("\r\n User buffer size is not divisible by 32");
      002C92 C0 07            [24] 2713 	push	ar7
      002C94 C0 06            [24] 2714 	push	ar6
      002C96 74 4D            [12] 2715 	mov	a,#___str_16
      002C98 C0 E0            [24] 2716 	push	acc
      002C9A 74 52            [12] 2717 	mov	a,#(___str_16 >> 8)
      002C9C C0 E0            [24] 2718 	push	acc
      002C9E 74 80            [12] 2719 	mov	a,#0x80
      002CA0 C0 E0            [24] 2720 	push	acc
      002CA2 12 45 56         [24] 2721 	lcall	_printf
      002CA5 15 81            [12] 2722 	dec	sp
      002CA7 15 81            [12] 2723 	dec	sp
      002CA9 15 81            [12] 2724 	dec	sp
      002CAB D0 06            [24] 2725 	pop	ar6
      002CAD D0 07            [24] 2726 	pop	ar7
      002CAF 02 2C 10         [24] 2727 	ljmp	00111$
      002CB2                       2728 00102$:
                                   2729 ;	src/main.c:341: return user_buffer_size;
      002CB2 8C 82            [24] 2730 	mov	dpl,r4
      002CB4 8D 83            [24] 2731 	mov	dph,r5
                                   2732 ;	src/main.c:344: }
      002CB6 22               [24] 2733 	ret
                                   2734 ;------------------------------------------------------------
                                   2735 ;Allocation info for local variables in function 'free_all_buffers'
                                   2736 ;------------------------------------------------------------
                                   2737 ;i                         Allocated with name '_free_all_buffers_i_131072_144'
                                   2738 ;------------------------------------------------------------
                                   2739 ;	src/main.c:347: void free_all_buffers()
                                   2740 ;	-----------------------------------------
                                   2741 ;	 function free_all_buffers
                                   2742 ;	-----------------------------------------
      002CB7                       2743 _free_all_buffers:
                                   2744 ;	src/main.c:349: printf("\r\n Freeing ALL BUFFERS");
      002CB7 74 78            [12] 2745 	mov	a,#___str_17
      002CB9 C0 E0            [24] 2746 	push	acc
      002CBB 74 52            [12] 2747 	mov	a,#(___str_17 >> 8)
      002CBD C0 E0            [24] 2748 	push	acc
      002CBF 74 80            [12] 2749 	mov	a,#0x80
      002CC1 C0 E0            [24] 2750 	push	acc
      002CC3 12 45 56         [24] 2751 	lcall	_printf
      002CC6 15 81            [12] 2752 	dec	sp
      002CC8 15 81            [12] 2753 	dec	sp
      002CCA 15 81            [12] 2754 	dec	sp
                                   2755 ;	src/main.c:350: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002CCC 7E 00            [12] 2756 	mov	r6,#0x00
      002CCE 7F 00            [12] 2757 	mov	r7,#0x00
      002CD0                       2758 00105$:
      002CD0 C3               [12] 2759 	clr	c
      002CD1 EE               [12] 2760 	mov	a,r6
      002CD2 94 02            [12] 2761 	subb	a,#0x02
      002CD4 EF               [12] 2762 	mov	a,r7
      002CD5 64 80            [12] 2763 	xrl	a,#0x80
      002CD7 94 80            [12] 2764 	subb	a,#0x80
      002CD9 40 03            [24] 2765 	jc	00122$
      002CDB 02 2D 61         [24] 2766 	ljmp	00103$
      002CDE                       2767 00122$:
                                   2768 ;	src/main.c:352: if(static_buffers[i].buffer != NULL)
      002CDE 90 20 9A         [24] 2769 	mov	dptr,#__mulint_PARM_2
      002CE1 EE               [12] 2770 	mov	a,r6
      002CE2 F0               [24] 2771 	movx	@dptr,a
      002CE3 EF               [12] 2772 	mov	a,r7
      002CE4 A3               [24] 2773 	inc	dptr
      002CE5 F0               [24] 2774 	movx	@dptr,a
      002CE6 90 00 0B         [24] 2775 	mov	dptr,#0x000b
      002CE9 C0 07            [24] 2776 	push	ar7
      002CEB C0 06            [24] 2777 	push	ar6
      002CED 12 44 E8         [24] 2778 	lcall	__mulint
      002CF0 AC 82            [24] 2779 	mov	r4,dpl
      002CF2 AD 83            [24] 2780 	mov	r5,dph
      002CF4 D0 06            [24] 2781 	pop	ar6
      002CF6 D0 07            [24] 2782 	pop	ar7
      002CF8 EC               [12] 2783 	mov	a,r4
      002CF9 24 01            [12] 2784 	add	a,#_static_buffers
      002CFB F5 82            [12] 2785 	mov	dpl,a
      002CFD ED               [12] 2786 	mov	a,r5
      002CFE 34 00            [12] 2787 	addc	a,#(_static_buffers >> 8)
      002D00 F5 83            [12] 2788 	mov	dph,a
      002D02 E0               [24] 2789 	movx	a,@dptr
      002D03 FC               [12] 2790 	mov	r4,a
      002D04 A3               [24] 2791 	inc	dptr
      002D05 E0               [24] 2792 	movx	a,@dptr
      002D06 FD               [12] 2793 	mov	r5,a
      002D07 4C               [12] 2794 	orl	a,r4
      002D08 60 13            [24] 2795 	jz	00102$
                                   2796 ;	src/main.c:354: free(static_buffers[i].buffer);
      002D0A 7B 00            [12] 2797 	mov	r3,#0x00
      002D0C 8C 82            [24] 2798 	mov	dpl,r4
      002D0E 8D 83            [24] 2799 	mov	dph,r5
      002D10 8B F0            [24] 2800 	mov	b,r3
      002D12 C0 07            [24] 2801 	push	ar7
      002D14 C0 06            [24] 2802 	push	ar6
      002D16 12 40 11         [24] 2803 	lcall	_free
      002D19 D0 06            [24] 2804 	pop	ar6
      002D1B D0 07            [24] 2805 	pop	ar7
      002D1D                       2806 00102$:
                                   2807 ;	src/main.c:356: static_buffers[i].buffer = NULL;
      002D1D 90 20 9A         [24] 2808 	mov	dptr,#__mulint_PARM_2
      002D20 EE               [12] 2809 	mov	a,r6
      002D21 F0               [24] 2810 	movx	@dptr,a
      002D22 EF               [12] 2811 	mov	a,r7
      002D23 A3               [24] 2812 	inc	dptr
      002D24 F0               [24] 2813 	movx	@dptr,a
      002D25 90 00 0B         [24] 2814 	mov	dptr,#0x000b
      002D28 C0 07            [24] 2815 	push	ar7
      002D2A C0 06            [24] 2816 	push	ar6
      002D2C 12 44 E8         [24] 2817 	lcall	__mulint
      002D2F AC 82            [24] 2818 	mov	r4,dpl
      002D31 AD 83            [24] 2819 	mov	r5,dph
      002D33 D0 06            [24] 2820 	pop	ar6
      002D35 D0 07            [24] 2821 	pop	ar7
      002D37 EC               [12] 2822 	mov	a,r4
      002D38 24 01            [12] 2823 	add	a,#_static_buffers
      002D3A F5 82            [12] 2824 	mov	dpl,a
      002D3C ED               [12] 2825 	mov	a,r5
      002D3D 34 00            [12] 2826 	addc	a,#(_static_buffers >> 8)
      002D3F F5 83            [12] 2827 	mov	dph,a
      002D41 E4               [12] 2828 	clr	a
      002D42 F0               [24] 2829 	movx	@dptr,a
      002D43 A3               [24] 2830 	inc	dptr
      002D44 F0               [24] 2831 	movx	@dptr,a
                                   2832 ;	src/main.c:357: static_buffers[i].size = 0; 
      002D45 EC               [12] 2833 	mov	a,r4
      002D46 24 01            [12] 2834 	add	a,#_static_buffers
      002D48 FC               [12] 2835 	mov	r4,a
      002D49 ED               [12] 2836 	mov	a,r5
      002D4A 34 00            [12] 2837 	addc	a,#(_static_buffers >> 8)
      002D4C FD               [12] 2838 	mov	r5,a
      002D4D 8C 82            [24] 2839 	mov	dpl,r4
      002D4F 8D 83            [24] 2840 	mov	dph,r5
      002D51 A3               [24] 2841 	inc	dptr
      002D52 A3               [24] 2842 	inc	dptr
      002D53 A3               [24] 2843 	inc	dptr
      002D54 A3               [24] 2844 	inc	dptr
      002D55 E4               [12] 2845 	clr	a
      002D56 F0               [24] 2846 	movx	@dptr,a
      002D57 A3               [24] 2847 	inc	dptr
      002D58 F0               [24] 2848 	movx	@dptr,a
                                   2849 ;	src/main.c:350: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002D59 0E               [12] 2850 	inc	r6
      002D5A BE 00 01         [24] 2851 	cjne	r6,#0x00,00124$
      002D5D 0F               [12] 2852 	inc	r7
      002D5E                       2853 00124$:
      002D5E 02 2C D0         [24] 2854 	ljmp	00105$
      002D61                       2855 00103$:
                                   2856 ;	src/main.c:359: free_all_elems_from_list(&dynamic_buffers_list); 
      002D61 90 20 D3         [24] 2857 	mov	dptr,#_dynamic_buffers_list
      002D64 75 F0 00         [24] 2858 	mov	b,#0x00
                                   2859 ;	src/main.c:360: }
      002D67 02 3D AC         [24] 2860 	ljmp	_free_all_elems_from_list
                                   2861 ;------------------------------------------------------------
                                   2862 ;Allocation info for local variables in function 'qmark_command_handler'
                                   2863 ;------------------------------------------------------------
                                   2864 ;sloc0                     Allocated with name '_qmark_command_handler_sloc0_1_0'
                                   2865 ;sloc1                     Allocated with name '_qmark_command_handler_sloc1_1_0'
                                   2866 ;chars_received_since_last_qmark Allocated with name '_qmark_command_handler_chars_received_since_last_qmark_65537_148'
                                   2867 ;curr_output_char          Allocated with name '_qmark_command_handler_curr_output_char_65538_149'
                                   2868 ;i                         Allocated with name '_qmark_command_handler_i_131074_150'
                                   2869 ;curr_buffer_char          Allocated with name '_qmark_command_handler_curr_buffer_char_196610_151'
                                   2870 ;curr_char                 Allocated with name '_qmark_command_handler_curr_char_196610_151'
                                   2871 ;------------------------------------------------------------
                                   2872 ;	src/main.c:364: void qmark_command_handler()
                                   2873 ;	-----------------------------------------
                                   2874 ;	 function qmark_command_handler
                                   2875 ;	-----------------------------------------
      002D6A                       2876 _qmark_command_handler:
                                   2877 ;	src/main.c:366: heap_report();
      002D6A 12 29 8A         [24] 2878 	lcall	_heap_report
                                   2879 ;	src/main.c:367: size_t chars_received_since_last_qmark = get_char_count();
      002D6D 12 3B 00         [24] 2880 	lcall	_get_char_count
      002D70 AE 82            [24] 2881 	mov	r6,dpl
      002D72 AF 83            [24] 2882 	mov	r7,dph
                                   2883 ;	src/main.c:368: reset_char_count();
      002D74 C0 07            [24] 2884 	push	ar7
      002D76 C0 06            [24] 2885 	push	ar6
      002D78 12 3B 0C         [24] 2886 	lcall	_reset_char_count
      002D7B D0 06            [24] 2887 	pop	ar6
      002D7D D0 07            [24] 2888 	pop	ar7
                                   2889 ;	src/main.c:369: printf("\r\n Received %zu chars since last invocation of ?", chars_received_since_last_qmark);
      002D7F C0 06            [24] 2890 	push	ar6
      002D81 C0 07            [24] 2891 	push	ar7
      002D83 74 8F            [12] 2892 	mov	a,#___str_18
      002D85 C0 E0            [24] 2893 	push	acc
      002D87 74 52            [12] 2894 	mov	a,#(___str_18 >> 8)
      002D89 C0 E0            [24] 2895 	push	acc
      002D8B 74 80            [12] 2896 	mov	a,#0x80
      002D8D C0 E0            [24] 2897 	push	acc
      002D8F 12 45 56         [24] 2898 	lcall	_printf
      002D92 E5 81            [12] 2899 	mov	a,sp
      002D94 24 FB            [12] 2900 	add	a,#0xfb
      002D96 F5 81            [12] 2901 	mov	sp,a
                                   2902 ;	src/main.c:370: size_t curr_output_char = 0;
      002D98 90 00 33         [24] 2903 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_149
      002D9B E4               [12] 2904 	clr	a
      002D9C F0               [24] 2905 	movx	@dptr,a
      002D9D A3               [24] 2906 	inc	dptr
      002D9E F0               [24] 2907 	movx	@dptr,a
                                   2908 ;	src/main.c:372: for(int i = 0; i < 2; i++)
      002D9F 7E 00            [12] 2909 	mov	r6,#0x00
      002DA1 7F 00            [12] 2910 	mov	r7,#0x00
      002DA3                       2911 00109$:
      002DA3 C3               [12] 2912 	clr	c
      002DA4 EE               [12] 2913 	mov	a,r6
      002DA5 94 02            [12] 2914 	subb	a,#0x02
      002DA7 EF               [12] 2915 	mov	a,r7
      002DA8 64 80            [12] 2916 	xrl	a,#0x80
      002DAA 94 80            [12] 2917 	subb	a,#0x80
      002DAC 40 03            [24] 2918 	jc	00139$
      002DAE 02 2F 64         [24] 2919 	ljmp	00107$
      002DB1                       2920 00139$:
                                   2921 ;	src/main.c:375: char curr_char = static_buffers[i].buffer[0];
      002DB1 90 20 9A         [24] 2922 	mov	dptr,#__mulint_PARM_2
      002DB4 EE               [12] 2923 	mov	a,r6
      002DB5 F0               [24] 2924 	movx	@dptr,a
      002DB6 EF               [12] 2925 	mov	a,r7
      002DB7 A3               [24] 2926 	inc	dptr
      002DB8 F0               [24] 2927 	movx	@dptr,a
      002DB9 90 00 0B         [24] 2928 	mov	dptr,#0x000b
      002DBC C0 07            [24] 2929 	push	ar7
      002DBE C0 06            [24] 2930 	push	ar6
      002DC0 12 44 E8         [24] 2931 	lcall	__mulint
      002DC3 AC 82            [24] 2932 	mov	r4,dpl
      002DC5 AD 83            [24] 2933 	mov	r5,dph
      002DC7 D0 06            [24] 2934 	pop	ar6
      002DC9 D0 07            [24] 2935 	pop	ar7
      002DCB EC               [12] 2936 	mov	a,r4
      002DCC 24 01            [12] 2937 	add	a,#_static_buffers
      002DCE F5 82            [12] 2938 	mov	dpl,a
      002DD0 ED               [12] 2939 	mov	a,r5
      002DD1 34 00            [12] 2940 	addc	a,#(_static_buffers >> 8)
      002DD3 F5 83            [12] 2941 	mov	dph,a
      002DD5 E0               [24] 2942 	movx	a,@dptr
      002DD6 FA               [12] 2943 	mov	r2,a
      002DD7 A3               [24] 2944 	inc	dptr
      002DD8 E0               [24] 2945 	movx	a,@dptr
      002DD9 FB               [12] 2946 	mov	r3,a
      002DDA 8A 82            [24] 2947 	mov	dpl,r2
      002DDC 8B 83            [24] 2948 	mov	dph,r3
      002DDE E0               [24] 2949 	movx	a,@dptr
      002DDF 90 00 35         [24] 2950 	mov	dptr,#_qmark_command_handler_curr_char_196610_151
      002DE2 F0               [24] 2951 	movx	@dptr,a
                                   2952 ;	src/main.c:376: while(curr_char != '\0' && curr_buffer_char < static_buffers[i].size)
      002DE3 EC               [12] 2953 	mov	a,r4
      002DE4 24 01            [12] 2954 	add	a,#_static_buffers
      002DE6 FA               [12] 2955 	mov	r2,a
      002DE7 ED               [12] 2956 	mov	a,r5
      002DE8 34 00            [12] 2957 	addc	a,#(_static_buffers >> 8)
      002DEA FB               [12] 2958 	mov	r3,a
      002DEB 74 04            [12] 2959 	mov	a,#0x04
      002DED 2A               [12] 2960 	add	a,r2
      002DEE FA               [12] 2961 	mov	r2,a
      002DEF E4               [12] 2962 	clr	a
      002DF0 3B               [12] 2963 	addc	a,r3
      002DF1 FB               [12] 2964 	mov	r3,a
      002DF2 EC               [12] 2965 	mov	a,r4
      002DF3 24 01            [12] 2966 	add	a,#_static_buffers
      002DF5 FC               [12] 2967 	mov	r4,a
      002DF6 ED               [12] 2968 	mov	a,r5
      002DF7 34 00            [12] 2969 	addc	a,#(_static_buffers >> 8)
      002DF9 FD               [12] 2970 	mov	r5,a
      002DFA 90 00 33         [24] 2971 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_149
      002DFD E0               [24] 2972 	movx	a,@dptr
      002DFE F8               [12] 2973 	mov	r0,a
      002DFF A3               [24] 2974 	inc	dptr
      002E00 E0               [24] 2975 	movx	a,@dptr
      002E01 F9               [12] 2976 	mov	r1,a
      002E02 E4               [12] 2977 	clr	a
      002E03 F5 43            [12] 2978 	mov	_qmark_command_handler_sloc0_1_0,a
      002E05 F5 44            [12] 2979 	mov	(_qmark_command_handler_sloc0_1_0 + 1),a
      002E07                       2980 00104$:
      002E07 90 00 35         [24] 2981 	mov	dptr,#_qmark_command_handler_curr_char_196610_151
      002E0A E0               [24] 2982 	movx	a,@dptr
      002E0B 70 03            [24] 2983 	jnz	00140$
      002E0D 02 2E D7         [24] 2984 	ljmp	00119$
      002E10                       2985 00140$:
      002E10 C0 04            [24] 2986 	push	ar4
      002E12 C0 05            [24] 2987 	push	ar5
      002E14 8A 82            [24] 2988 	mov	dpl,r2
      002E16 8B 83            [24] 2989 	mov	dph,r3
      002E18 E0               [24] 2990 	movx	a,@dptr
      002E19 FC               [12] 2991 	mov	r4,a
      002E1A A3               [24] 2992 	inc	dptr
      002E1B E0               [24] 2993 	movx	a,@dptr
      002E1C FD               [12] 2994 	mov	r5,a
      002E1D C3               [12] 2995 	clr	c
      002E1E E5 43            [12] 2996 	mov	a,_qmark_command_handler_sloc0_1_0
      002E20 9C               [12] 2997 	subb	a,r4
      002E21 E5 44            [12] 2998 	mov	a,(_qmark_command_handler_sloc0_1_0 + 1)
      002E23 9D               [12] 2999 	subb	a,r5
      002E24 D0 05            [24] 3000 	pop	ar5
      002E26 D0 04            [24] 3001 	pop	ar4
      002E28 40 03            [24] 3002 	jc	00141$
      002E2A 02 2E D7         [24] 3003 	ljmp	00119$
      002E2D                       3004 00141$:
                                   3005 ;	src/main.c:378: if (MODULE_32(curr_output_char) == 0)
      002E2D E8               [12] 3006 	mov	a,r0
      002E2E 54 1F            [12] 3007 	anl	a,#0x1f
      002E30 70 35            [24] 3008 	jnz	00102$
                                   3009 ;	src/main.c:380: printf("\r\n");
      002E32 C0 07            [24] 3010 	push	ar7
      002E34 C0 06            [24] 3011 	push	ar6
      002E36 C0 05            [24] 3012 	push	ar5
      002E38 C0 04            [24] 3013 	push	ar4
      002E3A C0 03            [24] 3014 	push	ar3
      002E3C C0 02            [24] 3015 	push	ar2
      002E3E C0 01            [24] 3016 	push	ar1
      002E40 C0 00            [24] 3017 	push	ar0
      002E42 74 A7            [12] 3018 	mov	a,#___str_12
      002E44 C0 E0            [24] 3019 	push	acc
      002E46 74 51            [12] 3020 	mov	a,#(___str_12 >> 8)
      002E48 C0 E0            [24] 3021 	push	acc
      002E4A 74 80            [12] 3022 	mov	a,#0x80
      002E4C C0 E0            [24] 3023 	push	acc
      002E4E 12 45 56         [24] 3024 	lcall	_printf
      002E51 15 81            [12] 3025 	dec	sp
      002E53 15 81            [12] 3026 	dec	sp
      002E55 15 81            [12] 3027 	dec	sp
      002E57 D0 00            [24] 3028 	pop	ar0
      002E59 D0 01            [24] 3029 	pop	ar1
      002E5B D0 02            [24] 3030 	pop	ar2
      002E5D D0 03            [24] 3031 	pop	ar3
      002E5F D0 04            [24] 3032 	pop	ar4
      002E61 D0 05            [24] 3033 	pop	ar5
      002E63 D0 06            [24] 3034 	pop	ar6
      002E65 D0 07            [24] 3035 	pop	ar7
      002E67                       3036 00102$:
                                   3037 ;	src/main.c:382: printf("%c", curr_char);
      002E67 C0 02            [24] 3038 	push	ar2
      002E69 C0 03            [24] 3039 	push	ar3
      002E6B 90 00 35         [24] 3040 	mov	dptr,#_qmark_command_handler_curr_char_196610_151
      002E6E E0               [24] 3041 	movx	a,@dptr
      002E6F FB               [12] 3042 	mov	r3,a
      002E70 7A 00            [12] 3043 	mov	r2,#0x00
      002E72 C0 07            [24] 3044 	push	ar7
      002E74 C0 06            [24] 3045 	push	ar6
      002E76 C0 05            [24] 3046 	push	ar5
      002E78 C0 04            [24] 3047 	push	ar4
      002E7A C0 03            [24] 3048 	push	ar3
      002E7C C0 02            [24] 3049 	push	ar2
      002E7E C0 01            [24] 3050 	push	ar1
      002E80 C0 00            [24] 3051 	push	ar0
      002E82 C0 03            [24] 3052 	push	ar3
      002E84 C0 02            [24] 3053 	push	ar2
      002E86 74 C0            [12] 3054 	mov	a,#___str_19
      002E88 C0 E0            [24] 3055 	push	acc
      002E8A 74 52            [12] 3056 	mov	a,#(___str_19 >> 8)
      002E8C C0 E0            [24] 3057 	push	acc
      002E8E 74 80            [12] 3058 	mov	a,#0x80
      002E90 C0 E0            [24] 3059 	push	acc
      002E92 12 45 56         [24] 3060 	lcall	_printf
      002E95 E5 81            [12] 3061 	mov	a,sp
      002E97 24 FB            [12] 3062 	add	a,#0xfb
      002E99 F5 81            [12] 3063 	mov	sp,a
      002E9B D0 00            [24] 3064 	pop	ar0
      002E9D D0 01            [24] 3065 	pop	ar1
      002E9F D0 02            [24] 3066 	pop	ar2
      002EA1 D0 03            [24] 3067 	pop	ar3
      002EA3 D0 04            [24] 3068 	pop	ar4
      002EA5 D0 05            [24] 3069 	pop	ar5
      002EA7 D0 06            [24] 3070 	pop	ar6
      002EA9 D0 07            [24] 3071 	pop	ar7
                                   3072 ;	src/main.c:383: curr_output_char++;
      002EAB 08               [12] 3073 	inc	r0
      002EAC B8 00 01         [24] 3074 	cjne	r0,#0x00,00144$
      002EAF 09               [12] 3075 	inc	r1
      002EB0                       3076 00144$:
                                   3077 ;	src/main.c:384: curr_buffer_char++;
      002EB0 05 43            [12] 3078 	inc	_qmark_command_handler_sloc0_1_0
      002EB2 E4               [12] 3079 	clr	a
      002EB3 B5 43 02         [24] 3080 	cjne	a,_qmark_command_handler_sloc0_1_0,00145$
      002EB6 05 44            [12] 3081 	inc	(_qmark_command_handler_sloc0_1_0 + 1)
      002EB8                       3082 00145$:
                                   3083 ;	src/main.c:385: curr_char = static_buffers[i].buffer[curr_buffer_char];
      002EB8 8C 82            [24] 3084 	mov	dpl,r4
      002EBA 8D 83            [24] 3085 	mov	dph,r5
      002EBC E0               [24] 3086 	movx	a,@dptr
      002EBD FA               [12] 3087 	mov	r2,a
      002EBE A3               [24] 3088 	inc	dptr
      002EBF E0               [24] 3089 	movx	a,@dptr
      002EC0 FB               [12] 3090 	mov	r3,a
      002EC1 E5 43            [12] 3091 	mov	a,_qmark_command_handler_sloc0_1_0
      002EC3 2A               [12] 3092 	add	a,r2
      002EC4 F5 82            [12] 3093 	mov	dpl,a
      002EC6 E5 44            [12] 3094 	mov	a,(_qmark_command_handler_sloc0_1_0 + 1)
      002EC8 3B               [12] 3095 	addc	a,r3
      002EC9 F5 83            [12] 3096 	mov	dph,a
      002ECB E0               [24] 3097 	movx	a,@dptr
      002ECC 90 00 35         [24] 3098 	mov	dptr,#_qmark_command_handler_curr_char_196610_151
      002ECF F0               [24] 3099 	movx	@dptr,a
      002ED0 D0 03            [24] 3100 	pop	ar3
      002ED2 D0 02            [24] 3101 	pop	ar2
      002ED4 02 2E 07         [24] 3102 	ljmp	00104$
      002ED7                       3103 00119$:
      002ED7 90 00 33         [24] 3104 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_149
      002EDA E8               [12] 3105 	mov	a,r0
      002EDB F0               [24] 3106 	movx	@dptr,a
      002EDC E9               [12] 3107 	mov	a,r1
      002EDD A3               [24] 3108 	inc	dptr
      002EDE F0               [24] 3109 	movx	@dptr,a
                                   3110 ;	src/main.c:388: memset(static_buffers[i].buffer, '\0', static_buffers[i].size);
      002EDF 90 20 9A         [24] 3111 	mov	dptr,#__mulint_PARM_2
      002EE2 EE               [12] 3112 	mov	a,r6
      002EE3 F0               [24] 3113 	movx	@dptr,a
      002EE4 EF               [12] 3114 	mov	a,r7
      002EE5 A3               [24] 3115 	inc	dptr
      002EE6 F0               [24] 3116 	movx	@dptr,a
      002EE7 90 00 0B         [24] 3117 	mov	dptr,#0x000b
      002EEA C0 07            [24] 3118 	push	ar7
      002EEC C0 06            [24] 3119 	push	ar6
      002EEE 12 44 E8         [24] 3120 	lcall	__mulint
      002EF1 AC 82            [24] 3121 	mov	r4,dpl
      002EF3 AD 83            [24] 3122 	mov	r5,dph
      002EF5 EC               [12] 3123 	mov	a,r4
      002EF6 24 01            [12] 3124 	add	a,#_static_buffers
      002EF8 F5 82            [12] 3125 	mov	dpl,a
      002EFA ED               [12] 3126 	mov	a,r5
      002EFB 34 00            [12] 3127 	addc	a,#(_static_buffers >> 8)
      002EFD F5 83            [12] 3128 	mov	dph,a
      002EFF E0               [24] 3129 	movx	a,@dptr
      002F00 FA               [12] 3130 	mov	r2,a
      002F01 A3               [24] 3131 	inc	dptr
      002F02 E0               [24] 3132 	movx	a,@dptr
      002F03 FB               [12] 3133 	mov	r3,a
      002F04 8A 45            [24] 3134 	mov	_qmark_command_handler_sloc1_1_0,r2
      002F06 8B 46            [24] 3135 	mov	(_qmark_command_handler_sloc1_1_0 + 1),r3
      002F08 75 47 00         [24] 3136 	mov	(_qmark_command_handler_sloc1_1_0 + 2),#0x00
      002F0B EC               [12] 3137 	mov	a,r4
      002F0C 24 01            [12] 3138 	add	a,#_static_buffers
      002F0E FC               [12] 3139 	mov	r4,a
      002F0F ED               [12] 3140 	mov	a,r5
      002F10 34 00            [12] 3141 	addc	a,#(_static_buffers >> 8)
      002F12 FD               [12] 3142 	mov	r5,a
      002F13 8C 82            [24] 3143 	mov	dpl,r4
      002F15 8D 83            [24] 3144 	mov	dph,r5
      002F17 A3               [24] 3145 	inc	dptr
      002F18 A3               [24] 3146 	inc	dptr
      002F19 A3               [24] 3147 	inc	dptr
      002F1A A3               [24] 3148 	inc	dptr
      002F1B E0               [24] 3149 	movx	a,@dptr
      002F1C F8               [12] 3150 	mov	r0,a
      002F1D A3               [24] 3151 	inc	dptr
      002F1E E0               [24] 3152 	movx	a,@dptr
      002F1F FB               [12] 3153 	mov	r3,a
      002F20 90 20 88         [24] 3154 	mov	dptr,#_memset_PARM_2
      002F23 E4               [12] 3155 	clr	a
      002F24 F0               [24] 3156 	movx	@dptr,a
      002F25 90 20 89         [24] 3157 	mov	dptr,#_memset_PARM_3
      002F28 E8               [12] 3158 	mov	a,r0
      002F29 F0               [24] 3159 	movx	@dptr,a
      002F2A EB               [12] 3160 	mov	a,r3
      002F2B A3               [24] 3161 	inc	dptr
      002F2C F0               [24] 3162 	movx	@dptr,a
      002F2D 85 45 82         [24] 3163 	mov	dpl,_qmark_command_handler_sloc1_1_0
      002F30 85 46 83         [24] 3164 	mov	dph,(_qmark_command_handler_sloc1_1_0 + 1)
      002F33 85 47 F0         [24] 3165 	mov	b,(_qmark_command_handler_sloc1_1_0 + 2)
      002F36 C0 05            [24] 3166 	push	ar5
      002F38 C0 04            [24] 3167 	push	ar4
      002F3A 12 41 DC         [24] 3168 	lcall	_memset
      002F3D D0 04            [24] 3169 	pop	ar4
      002F3F D0 05            [24] 3170 	pop	ar5
      002F41 D0 06            [24] 3171 	pop	ar6
      002F43 D0 07            [24] 3172 	pop	ar7
                                   3173 ;	src/main.c:389: static_buffers[i].alphabet_chars = 0;
      002F45 8C 82            [24] 3174 	mov	dpl,r4
      002F47 8D 83            [24] 3175 	mov	dph,r5
      002F49 A3               [24] 3176 	inc	dptr
      002F4A A3               [24] 3177 	inc	dptr
      002F4B E4               [12] 3178 	clr	a
      002F4C F0               [24] 3179 	movx	@dptr,a
      002F4D A3               [24] 3180 	inc	dptr
      002F4E F0               [24] 3181 	movx	@dptr,a
                                   3182 ;	src/main.c:390: static_buffers[i].curr_available_char = 0;
      002F4F 74 06            [12] 3183 	mov	a,#0x06
      002F51 2C               [12] 3184 	add	a,r4
      002F52 F5 82            [12] 3185 	mov	dpl,a
      002F54 E4               [12] 3186 	clr	a
      002F55 3D               [12] 3187 	addc	a,r5
      002F56 F5 83            [12] 3188 	mov	dph,a
      002F58 E4               [12] 3189 	clr	a
      002F59 F0               [24] 3190 	movx	@dptr,a
      002F5A A3               [24] 3191 	inc	dptr
      002F5B F0               [24] 3192 	movx	@dptr,a
                                   3193 ;	src/main.c:372: for(int i = 0; i < 2; i++)
      002F5C 0E               [12] 3194 	inc	r6
      002F5D BE 00 01         [24] 3195 	cjne	r6,#0x00,00146$
      002F60 0F               [12] 3196 	inc	r7
      002F61                       3197 00146$:
      002F61 02 2D A3         [24] 3198 	ljmp	00109$
      002F64                       3199 00107$:
                                   3200 ;	src/main.c:393: printf("\r\n");
      002F64 74 A7            [12] 3201 	mov	a,#___str_12
      002F66 C0 E0            [24] 3202 	push	acc
      002F68 74 51            [12] 3203 	mov	a,#(___str_12 >> 8)
      002F6A C0 E0            [24] 3204 	push	acc
      002F6C 74 80            [12] 3205 	mov	a,#0x80
      002F6E C0 E0            [24] 3206 	push	acc
      002F70 12 45 56         [24] 3207 	lcall	_printf
      002F73 15 81            [12] 3208 	dec	sp
      002F75 15 81            [12] 3209 	dec	sp
      002F77 15 81            [12] 3210 	dec	sp
                                   3211 ;	src/main.c:394: printf("\r\n");
      002F79 74 A7            [12] 3212 	mov	a,#___str_12
      002F7B C0 E0            [24] 3213 	push	acc
      002F7D 74 51            [12] 3214 	mov	a,#(___str_12 >> 8)
      002F7F C0 E0            [24] 3215 	push	acc
      002F81 74 80            [12] 3216 	mov	a,#0x80
      002F83 C0 E0            [24] 3217 	push	acc
      002F85 12 45 56         [24] 3218 	lcall	_printf
      002F88 15 81            [12] 3219 	dec	sp
      002F8A 15 81            [12] 3220 	dec	sp
      002F8C 15 81            [12] 3221 	dec	sp
                                   3222 ;	src/main.c:395: }
      002F8E 22               [24] 3223 	ret
                                   3224 ;------------------------------------------------------------
                                   3225 ;Allocation info for local variables in function 'enter_command_handler'
                                   3226 ;------------------------------------------------------------
                                   3227 ;sloc0                     Allocated with name '_enter_command_handler_sloc0_1_0'
                                   3228 ;sloc1                     Allocated with name '_enter_command_handler_sloc1_1_0'
                                   3229 ;sloc2                     Allocated with name '_enter_command_handler_sloc2_1_0'
                                   3230 ;sloc3                     Allocated with name '_enter_command_handler_sloc3_1_0'
                                   3231 ;i                         Allocated with name '_enter_command_handler_i_131072_155'
                                   3232 ;address                   Allocated with name '_enter_command_handler_address_262144_157'
                                   3233 ;j                         Allocated with name '_enter_command_handler_j_393216_159'
                                   3234 ;------------------------------------------------------------
                                   3235 ;	src/main.c:397: void enter_command_handler()
                                   3236 ;	-----------------------------------------
                                   3237 ;	 function enter_command_handler
                                   3238 ;	-----------------------------------------
      002F8F                       3239 _enter_command_handler:
                                   3240 ;	src/main.c:399: command_header("Dump Admin Buffers");
      002F8F 90 52 C3         [24] 3241 	mov	dptr,#___str_20
      002F92 75 F0 80         [24] 3242 	mov	b,#0x80
      002F95 12 29 51         [24] 3243 	lcall	_command_header
                                   3244 ;	src/main.c:400: for(int i = 0; i < 2; i++)
      002F98 7E 00            [12] 3245 	mov	r6,#0x00
      002F9A 7F 00            [12] 3246 	mov	r7,#0x00
      002F9C                       3247 00111$:
      002F9C C3               [12] 3248 	clr	c
      002F9D EE               [12] 3249 	mov	a,r6
      002F9E 94 02            [12] 3250 	subb	a,#0x02
      002FA0 EF               [12] 3251 	mov	a,r7
      002FA1 64 80            [12] 3252 	xrl	a,#0x80
      002FA3 94 80            [12] 3253 	subb	a,#0x80
      002FA5 40 01            [24] 3254 	jc	00142$
      002FA7 22               [24] 3255 	ret
      002FA8                       3256 00142$:
                                   3257 ;	src/main.c:402: printf("\r\n Buffer %d ", i);
      002FA8 C0 07            [24] 3258 	push	ar7
      002FAA C0 06            [24] 3259 	push	ar6
      002FAC C0 06            [24] 3260 	push	ar6
      002FAE C0 07            [24] 3261 	push	ar7
      002FB0 74 D6            [12] 3262 	mov	a,#___str_21
      002FB2 C0 E0            [24] 3263 	push	acc
      002FB4 74 52            [12] 3264 	mov	a,#(___str_21 >> 8)
      002FB6 C0 E0            [24] 3265 	push	acc
      002FB8 74 80            [12] 3266 	mov	a,#0x80
      002FBA C0 E0            [24] 3267 	push	acc
      002FBC 12 45 56         [24] 3268 	lcall	_printf
      002FBF E5 81            [12] 3269 	mov	a,sp
      002FC1 24 FB            [12] 3270 	add	a,#0xfb
      002FC3 F5 81            [12] 3271 	mov	sp,a
                                   3272 ;	src/main.c:403: printf("\r\n----------");
      002FC5 74 E4            [12] 3273 	mov	a,#___str_22
      002FC7 C0 E0            [24] 3274 	push	acc
      002FC9 74 52            [12] 3275 	mov	a,#(___str_22 >> 8)
      002FCB C0 E0            [24] 3276 	push	acc
      002FCD 74 80            [12] 3277 	mov	a,#0x80
      002FCF C0 E0            [24] 3278 	push	acc
      002FD1 12 45 56         [24] 3279 	lcall	_printf
      002FD4 15 81            [12] 3280 	dec	sp
      002FD6 15 81            [12] 3281 	dec	sp
      002FD8 15 81            [12] 3282 	dec	sp
      002FDA D0 06            [24] 3283 	pop	ar6
      002FDC D0 07            [24] 3284 	pop	ar7
                                   3285 ;	src/main.c:404: for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
      002FDE 90 20 9A         [24] 3286 	mov	dptr,#__mulint_PARM_2
      002FE1 EE               [12] 3287 	mov	a,r6
      002FE2 F0               [24] 3288 	movx	@dptr,a
      002FE3 EF               [12] 3289 	mov	a,r7
      002FE4 A3               [24] 3290 	inc	dptr
      002FE5 F0               [24] 3291 	movx	@dptr,a
      002FE6 90 00 0B         [24] 3292 	mov	dptr,#0x000b
      002FE9 C0 07            [24] 3293 	push	ar7
      002FEB C0 06            [24] 3294 	push	ar6
      002FED 12 44 E8         [24] 3295 	lcall	__mulint
      002FF0 AC 82            [24] 3296 	mov	r4,dpl
      002FF2 AD 83            [24] 3297 	mov	r5,dph
      002FF4 D0 06            [24] 3298 	pop	ar6
      002FF6 D0 07            [24] 3299 	pop	ar7
      002FF8 EC               [12] 3300 	mov	a,r4
      002FF9 24 01            [12] 3301 	add	a,#_static_buffers
      002FFB FA               [12] 3302 	mov	r2,a
      002FFC ED               [12] 3303 	mov	a,r5
      002FFD 34 00            [12] 3304 	addc	a,#(_static_buffers >> 8)
      002FFF FB               [12] 3305 	mov	r3,a
      003000 8A 82            [24] 3306 	mov	dpl,r2
      003002 8B 83            [24] 3307 	mov	dph,r3
      003004 E0               [24] 3308 	movx	a,@dptr
      003005 F8               [12] 3309 	mov	r0,a
      003006 A3               [24] 3310 	inc	dptr
      003007 E0               [24] 3311 	movx	a,@dptr
      003008 F9               [12] 3312 	mov	r1,a
      003009 88 48            [24] 3313 	mov	_enter_command_handler_sloc0_1_0,r0
      00300B 89 49            [24] 3314 	mov	(_enter_command_handler_sloc0_1_0 + 1),r1
      00300D 75 4A 00         [24] 3315 	mov	(_enter_command_handler_sloc0_1_0 + 2),#0x00
      003010 8E 00            [24] 3316 	mov	ar0,r6
      003012 8F 01            [24] 3317 	mov	ar1,r7
      003014 8A 4F            [24] 3318 	mov	_enter_command_handler_sloc3_1_0,r2
      003016 8B 50            [24] 3319 	mov	(_enter_command_handler_sloc3_1_0 + 1),r3
      003018 EC               [12] 3320 	mov	a,r4
      003019 24 01            [12] 3321 	add	a,#_static_buffers
      00301B FC               [12] 3322 	mov	r4,a
      00301C ED               [12] 3323 	mov	a,r5
      00301D 34 00            [12] 3324 	addc	a,#(_static_buffers >> 8)
      00301F FD               [12] 3325 	mov	r5,a
      003020 74 04            [12] 3326 	mov	a,#0x04
      003022 2C               [12] 3327 	add	a,r4
      003023 F5 4B            [12] 3328 	mov	_enter_command_handler_sloc1_1_0,a
      003025 E4               [12] 3329 	clr	a
      003026 3D               [12] 3330 	addc	a,r5
      003027 F5 4C            [12] 3331 	mov	(_enter_command_handler_sloc1_1_0 + 1),a
      003029                       3332 00108$:
      003029 C0 00            [24] 3333 	push	ar0
      00302B C0 01            [24] 3334 	push	ar1
      00302D 85 4F 82         [24] 3335 	mov	dpl,_enter_command_handler_sloc3_1_0
      003030 85 50 83         [24] 3336 	mov	dph,(_enter_command_handler_sloc3_1_0 + 1)
      003033 E0               [24] 3337 	movx	a,@dptr
      003034 F8               [12] 3338 	mov	r0,a
      003035 A3               [24] 3339 	inc	dptr
      003036 E0               [24] 3340 	movx	a,@dptr
      003037 F9               [12] 3341 	mov	r1,a
      003038 85 4B 82         [24] 3342 	mov	dpl,_enter_command_handler_sloc1_1_0
      00303B 85 4C 83         [24] 3343 	mov	dph,(_enter_command_handler_sloc1_1_0 + 1)
      00303E E0               [24] 3344 	movx	a,@dptr
      00303F FC               [12] 3345 	mov	r4,a
      003040 A3               [24] 3346 	inc	dptr
      003041 E0               [24] 3347 	movx	a,@dptr
      003042 FD               [12] 3348 	mov	r5,a
      003043 EC               [12] 3349 	mov	a,r4
      003044 28               [12] 3350 	add	a,r0
      003045 F5 4D            [12] 3351 	mov	_enter_command_handler_sloc2_1_0,a
      003047 ED               [12] 3352 	mov	a,r5
      003048 39               [12] 3353 	addc	a,r1
      003049 F5 4E            [12] 3354 	mov	(_enter_command_handler_sloc2_1_0 + 1),a
      00304B A9 48            [24] 3355 	mov	r1,_enter_command_handler_sloc0_1_0
      00304D AC 49            [24] 3356 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      00304F AD 4A            [24] 3357 	mov	r5,(_enter_command_handler_sloc0_1_0 + 2)
      003051 A8 4D            [24] 3358 	mov	r0,_enter_command_handler_sloc2_1_0
      003053 AA 4E            [24] 3359 	mov	r2,(_enter_command_handler_sloc2_1_0 + 1)
      003055 7B 00            [12] 3360 	mov	r3,#0x00
      003057 C0 00            [24] 3361 	push	ar0
      003059 C0 02            [24] 3362 	push	ar2
      00305B C0 03            [24] 3363 	push	ar3
      00305D 89 82            [24] 3364 	mov	dpl,r1
      00305F 8C 83            [24] 3365 	mov	dph,r4
      003061 8D F0            [24] 3366 	mov	b,r5
      003063 12 20 06         [24] 3367 	lcall	___gptr_cmp
      003066 15 81            [12] 3368 	dec	sp
      003068 15 81            [12] 3369 	dec	sp
      00306A 15 81            [12] 3370 	dec	sp
      00306C D0 01            [24] 3371 	pop	ar1
      00306E D0 00            [24] 3372 	pop	ar0
      003070 40 03            [24] 3373 	jc	00143$
      003072 02 31 15         [24] 3374 	ljmp	00102$
      003075                       3375 00143$:
                                   3376 ;	src/main.c:406: printf("\r\n%04X:", (unsigned int) address);
      003075 AB 48            [24] 3377 	mov	r3,_enter_command_handler_sloc0_1_0
      003077 AC 49            [24] 3378 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      003079 C0 01            [24] 3379 	push	ar1
      00307B C0 00            [24] 3380 	push	ar0
      00307D C0 03            [24] 3381 	push	ar3
      00307F C0 04            [24] 3382 	push	ar4
      003081 74 F1            [12] 3383 	mov	a,#___str_23
      003083 C0 E0            [24] 3384 	push	acc
      003085 74 52            [12] 3385 	mov	a,#(___str_23 >> 8)
      003087 C0 E0            [24] 3386 	push	acc
      003089 74 80            [12] 3387 	mov	a,#0x80
      00308B C0 E0            [24] 3388 	push	acc
      00308D 12 45 56         [24] 3389 	lcall	_printf
      003090 E5 81            [12] 3390 	mov	a,sp
      003092 24 FB            [12] 3391 	add	a,#0xfb
      003094 F5 81            [12] 3392 	mov	sp,a
      003096 D0 00            [24] 3393 	pop	ar0
      003098 D0 01            [24] 3394 	pop	ar1
                                   3395 ;	src/main.c:407: for(int j = 0; j < 16; j++)
      00309A AB 48            [24] 3396 	mov	r3,_enter_command_handler_sloc0_1_0
      00309C AC 49            [24] 3397 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      00309E AD 4A            [24] 3398 	mov	r5,(_enter_command_handler_sloc0_1_0 + 2)
      0030A0 E4               [12] 3399 	clr	a
      0030A1 F5 4D            [12] 3400 	mov	_enter_command_handler_sloc2_1_0,a
      0030A3 F5 4E            [12] 3401 	mov	(_enter_command_handler_sloc2_1_0 + 1),a
      0030A5                       3402 00105$:
      0030A5 C3               [12] 3403 	clr	c
      0030A6 E5 4D            [12] 3404 	mov	a,_enter_command_handler_sloc2_1_0
      0030A8 94 10            [12] 3405 	subb	a,#0x10
      0030AA E5 4E            [12] 3406 	mov	a,(_enter_command_handler_sloc2_1_0 + 1)
      0030AC 64 80            [12] 3407 	xrl	a,#0x80
      0030AE 94 80            [12] 3408 	subb	a,#0x80
      0030B0 50 55            [24] 3409 	jnc	00109$
                                   3410 ;	src/main.c:409: printf(" %02hhX", (unsigned char) *(address+j));
      0030B2 C0 00            [24] 3411 	push	ar0
      0030B4 C0 01            [24] 3412 	push	ar1
      0030B6 E5 4D            [12] 3413 	mov	a,_enter_command_handler_sloc2_1_0
      0030B8 2B               [12] 3414 	add	a,r3
      0030B9 F8               [12] 3415 	mov	r0,a
      0030BA E5 4E            [12] 3416 	mov	a,(_enter_command_handler_sloc2_1_0 + 1)
      0030BC 3C               [12] 3417 	addc	a,r4
      0030BD F9               [12] 3418 	mov	r1,a
      0030BE 8D 02            [24] 3419 	mov	ar2,r5
      0030C0 88 82            [24] 3420 	mov	dpl,r0
      0030C2 89 83            [24] 3421 	mov	dph,r1
      0030C4 8A F0            [24] 3422 	mov	b,r2
      0030C6 12 4F 82         [24] 3423 	lcall	__gptrget
      0030C9 F8               [12] 3424 	mov	r0,a
      0030CA 7A 00            [12] 3425 	mov	r2,#0x00
      0030CC C0 05            [24] 3426 	push	ar5
      0030CE C0 04            [24] 3427 	push	ar4
      0030D0 C0 03            [24] 3428 	push	ar3
      0030D2 C0 01            [24] 3429 	push	ar1
      0030D4 C0 00            [24] 3430 	push	ar0
      0030D6 C0 00            [24] 3431 	push	ar0
      0030D8 C0 02            [24] 3432 	push	ar2
      0030DA 74 F9            [12] 3433 	mov	a,#___str_24
      0030DC C0 E0            [24] 3434 	push	acc
      0030DE 74 52            [12] 3435 	mov	a,#(___str_24 >> 8)
      0030E0 C0 E0            [24] 3436 	push	acc
      0030E2 74 80            [12] 3437 	mov	a,#0x80
      0030E4 C0 E0            [24] 3438 	push	acc
      0030E6 12 45 56         [24] 3439 	lcall	_printf
      0030E9 E5 81            [12] 3440 	mov	a,sp
      0030EB 24 FB            [12] 3441 	add	a,#0xfb
      0030ED F5 81            [12] 3442 	mov	sp,a
      0030EF D0 00            [24] 3443 	pop	ar0
      0030F1 D0 01            [24] 3444 	pop	ar1
      0030F3 D0 03            [24] 3445 	pop	ar3
      0030F5 D0 04            [24] 3446 	pop	ar4
      0030F7 D0 05            [24] 3447 	pop	ar5
                                   3448 ;	src/main.c:407: for(int j = 0; j < 16; j++)
      0030F9 05 4D            [12] 3449 	inc	_enter_command_handler_sloc2_1_0
      0030FB E4               [12] 3450 	clr	a
      0030FC B5 4D 02         [24] 3451 	cjne	a,_enter_command_handler_sloc2_1_0,00145$
      0030FF 05 4E            [12] 3452 	inc	(_enter_command_handler_sloc2_1_0 + 1)
      003101                       3453 00145$:
      003101 D0 01            [24] 3454 	pop	ar1
      003103 D0 00            [24] 3455 	pop	ar0
      003105 80 9E            [24] 3456 	sjmp	00105$
      003107                       3457 00109$:
                                   3458 ;	src/main.c:404: for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
      003107 74 10            [12] 3459 	mov	a,#0x10
      003109 25 48            [12] 3460 	add	a,_enter_command_handler_sloc0_1_0
      00310B F5 48            [12] 3461 	mov	_enter_command_handler_sloc0_1_0,a
      00310D E4               [12] 3462 	clr	a
      00310E 35 49            [12] 3463 	addc	a,(_enter_command_handler_sloc0_1_0 + 1)
      003110 F5 49            [12] 3464 	mov	(_enter_command_handler_sloc0_1_0 + 1),a
      003112 02 30 29         [24] 3465 	ljmp	00108$
      003115                       3466 00102$:
                                   3467 ;	src/main.c:412: printf("\r\n");
      003115 C0 01            [24] 3468 	push	ar1
      003117 C0 00            [24] 3469 	push	ar0
      003119 74 A7            [12] 3470 	mov	a,#___str_12
      00311B C0 E0            [24] 3471 	push	acc
      00311D 74 51            [12] 3472 	mov	a,#(___str_12 >> 8)
      00311F C0 E0            [24] 3473 	push	acc
      003121 74 80            [12] 3474 	mov	a,#0x80
      003123 C0 E0            [24] 3475 	push	acc
      003125 12 45 56         [24] 3476 	lcall	_printf
      003128 15 81            [12] 3477 	dec	sp
      00312A 15 81            [12] 3478 	dec	sp
      00312C 15 81            [12] 3479 	dec	sp
      00312E D0 00            [24] 3480 	pop	ar0
      003130 D0 01            [24] 3481 	pop	ar1
                                   3482 ;	src/main.c:400: for(int i = 0; i < 2; i++)
      003132 74 01            [12] 3483 	mov	a,#0x01
      003134 28               [12] 3484 	add	a,r0
      003135 FE               [12] 3485 	mov	r6,a
      003136 E4               [12] 3486 	clr	a
      003137 39               [12] 3487 	addc	a,r1
      003138 FF               [12] 3488 	mov	r7,a
                                   3489 ;	src/main.c:414: }
      003139 02 2F 9C         [24] 3490 	ljmp	00111$
                                   3491 ;------------------------------------------------------------
                                   3492 ;Allocation info for local variables in function 'percent_command_handler'
                                   3493 ;------------------------------------------------------------
                                   3494 ;sloc0                     Allocated with name '_percent_command_handler_sloc0_1_0'
                                   3495 ;i                         Allocated with name '_percent_command_handler_i_131072_162'
                                   3496 ;curr                      Allocated with name '_percent_command_handler_curr_65537_165'
                                   3497 ;------------------------------------------------------------
                                   3498 ;	src/main.c:416: void percent_command_handler()
                                   3499 ;	-----------------------------------------
                                   3500 ;	 function percent_command_handler
                                   3501 ;	-----------------------------------------
      00313C                       3502 _percent_command_handler:
                                   3503 ;	src/main.c:418: command_header("Clear Buffers");
      00313C 90 53 01         [24] 3504 	mov	dptr,#___str_25
      00313F 75 F0 80         [24] 3505 	mov	b,#0x80
      003142 12 29 51         [24] 3506 	lcall	_command_header
                                   3507 ;	src/main.c:419: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      003145 7E 00            [12] 3508 	mov	r6,#0x00
      003147 7F 00            [12] 3509 	mov	r7,#0x00
      003149                       3510 00108$:
      003149 C3               [12] 3511 	clr	c
      00314A EE               [12] 3512 	mov	a,r6
      00314B 94 02            [12] 3513 	subb	a,#0x02
      00314D EF               [12] 3514 	mov	a,r7
      00314E 64 80            [12] 3515 	xrl	a,#0x80
      003150 94 80            [12] 3516 	subb	a,#0x80
      003152 40 03            [24] 3517 	jc	00133$
      003154 02 31 E8         [24] 3518 	ljmp	00103$
      003157                       3519 00133$:
                                   3520 ;	src/main.c:421: if (static_buffers[i].buffer != NULL) 
      003157 90 20 9A         [24] 3521 	mov	dptr,#__mulint_PARM_2
      00315A EE               [12] 3522 	mov	a,r6
      00315B F0               [24] 3523 	movx	@dptr,a
      00315C EF               [12] 3524 	mov	a,r7
      00315D A3               [24] 3525 	inc	dptr
      00315E F0               [24] 3526 	movx	@dptr,a
      00315F 90 00 0B         [24] 3527 	mov	dptr,#0x000b
      003162 C0 07            [24] 3528 	push	ar7
      003164 C0 06            [24] 3529 	push	ar6
      003166 12 44 E8         [24] 3530 	lcall	__mulint
      003169 AC 82            [24] 3531 	mov	r4,dpl
      00316B AD 83            [24] 3532 	mov	r5,dph
      00316D D0 06            [24] 3533 	pop	ar6
      00316F D0 07            [24] 3534 	pop	ar7
      003171 EC               [12] 3535 	mov	a,r4
      003172 24 01            [12] 3536 	add	a,#_static_buffers
      003174 F5 82            [12] 3537 	mov	dpl,a
      003176 ED               [12] 3538 	mov	a,r5
      003177 34 00            [12] 3539 	addc	a,#(_static_buffers >> 8)
      003179 F5 83            [12] 3540 	mov	dph,a
      00317B E0               [24] 3541 	movx	a,@dptr
      00317C FA               [12] 3542 	mov	r2,a
      00317D A3               [24] 3543 	inc	dptr
      00317E E0               [24] 3544 	movx	a,@dptr
      00317F FB               [12] 3545 	mov	r3,a
      003180 4A               [12] 3546 	orl	a,r2
      003181 60 5D            [24] 3547 	jz	00109$
                                   3548 ;	src/main.c:423: memset(static_buffers[i].buffer, 0x00, static_buffers[i].size);
      003183 C0 06            [24] 3549 	push	ar6
      003185 C0 07            [24] 3550 	push	ar7
      003187 8B 01            [24] 3551 	mov	ar1,r3
      003189 7B 00            [12] 3552 	mov	r3,#0x00
      00318B EC               [12] 3553 	mov	a,r4
      00318C 24 01            [12] 3554 	add	a,#_static_buffers
      00318E FC               [12] 3555 	mov	r4,a
      00318F ED               [12] 3556 	mov	a,r5
      003190 34 00            [12] 3557 	addc	a,#(_static_buffers >> 8)
      003192 FD               [12] 3558 	mov	r5,a
      003193 8C 82            [24] 3559 	mov	dpl,r4
      003195 8D 83            [24] 3560 	mov	dph,r5
      003197 A3               [24] 3561 	inc	dptr
      003198 A3               [24] 3562 	inc	dptr
      003199 A3               [24] 3563 	inc	dptr
      00319A A3               [24] 3564 	inc	dptr
      00319B E0               [24] 3565 	movx	a,@dptr
      00319C F8               [12] 3566 	mov	r0,a
      00319D A3               [24] 3567 	inc	dptr
      00319E E0               [24] 3568 	movx	a,@dptr
      00319F FF               [12] 3569 	mov	r7,a
      0031A0 90 20 88         [24] 3570 	mov	dptr,#_memset_PARM_2
      0031A3 E4               [12] 3571 	clr	a
      0031A4 F0               [24] 3572 	movx	@dptr,a
      0031A5 90 20 89         [24] 3573 	mov	dptr,#_memset_PARM_3
      0031A8 E8               [12] 3574 	mov	a,r0
      0031A9 F0               [24] 3575 	movx	@dptr,a
      0031AA EF               [12] 3576 	mov	a,r7
      0031AB A3               [24] 3577 	inc	dptr
      0031AC F0               [24] 3578 	movx	@dptr,a
      0031AD 8A 82            [24] 3579 	mov	dpl,r2
      0031AF 89 83            [24] 3580 	mov	dph,r1
      0031B1 8B F0            [24] 3581 	mov	b,r3
      0031B3 C0 07            [24] 3582 	push	ar7
      0031B5 C0 06            [24] 3583 	push	ar6
      0031B7 C0 05            [24] 3584 	push	ar5
      0031B9 C0 04            [24] 3585 	push	ar4
      0031BB 12 41 DC         [24] 3586 	lcall	_memset
      0031BE D0 04            [24] 3587 	pop	ar4
      0031C0 D0 05            [24] 3588 	pop	ar5
      0031C2 D0 06            [24] 3589 	pop	ar6
      0031C4 D0 07            [24] 3590 	pop	ar7
                                   3591 ;	src/main.c:424: static_buffers[i].curr_available_char = 0;
      0031C6 74 06            [12] 3592 	mov	a,#0x06
      0031C8 2C               [12] 3593 	add	a,r4
      0031C9 F5 82            [12] 3594 	mov	dpl,a
      0031CB E4               [12] 3595 	clr	a
      0031CC 3D               [12] 3596 	addc	a,r5
      0031CD F5 83            [12] 3597 	mov	dph,a
      0031CF E4               [12] 3598 	clr	a
      0031D0 F0               [24] 3599 	movx	@dptr,a
      0031D1 A3               [24] 3600 	inc	dptr
      0031D2 F0               [24] 3601 	movx	@dptr,a
                                   3602 ;	src/main.c:425: static_buffers[i].alphabet_chars = 0; 
      0031D3 8C 82            [24] 3603 	mov	dpl,r4
      0031D5 8D 83            [24] 3604 	mov	dph,r5
      0031D7 A3               [24] 3605 	inc	dptr
      0031D8 A3               [24] 3606 	inc	dptr
      0031D9 F0               [24] 3607 	movx	@dptr,a
      0031DA A3               [24] 3608 	inc	dptr
      0031DB F0               [24] 3609 	movx	@dptr,a
                                   3610 ;	src/main.c:435: curr = curr->next;
      0031DC D0 07            [24] 3611 	pop	ar7
      0031DE D0 06            [24] 3612 	pop	ar6
                                   3613 ;	src/main.c:425: static_buffers[i].alphabet_chars = 0; 
      0031E0                       3614 00109$:
                                   3615 ;	src/main.c:419: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      0031E0 0E               [12] 3616 	inc	r6
      0031E1 BE 00 01         [24] 3617 	cjne	r6,#0x00,00135$
      0031E4 0F               [12] 3618 	inc	r7
      0031E5                       3619 00135$:
      0031E5 02 31 49         [24] 3620 	ljmp	00108$
      0031E8                       3621 00103$:
                                   3622 ;	src/main.c:429: buffer_t *curr = dynamic_buffers_list.head;
      0031E8 90 20 D3         [24] 3623 	mov	dptr,#_dynamic_buffers_list
      0031EB E0               [24] 3624 	movx	a,@dptr
      0031EC FD               [12] 3625 	mov	r5,a
      0031ED A3               [24] 3626 	inc	dptr
      0031EE E0               [24] 3627 	movx	a,@dptr
      0031EF FE               [12] 3628 	mov	r6,a
      0031F0 A3               [24] 3629 	inc	dptr
      0031F1 E0               [24] 3630 	movx	a,@dptr
      0031F2 FF               [12] 3631 	mov	r7,a
      0031F3 90 00 36         [24] 3632 	mov	dptr,#_percent_command_handler_curr_65537_165
      0031F6 ED               [12] 3633 	mov	a,r5
      0031F7 F0               [24] 3634 	movx	@dptr,a
      0031F8 EE               [12] 3635 	mov	a,r6
      0031F9 A3               [24] 3636 	inc	dptr
      0031FA F0               [24] 3637 	movx	@dptr,a
      0031FB EF               [12] 3638 	mov	a,r7
      0031FC A3               [24] 3639 	inc	dptr
      0031FD F0               [24] 3640 	movx	@dptr,a
                                   3641 ;	src/main.c:430: while (curr != NULL)
      0031FE                       3642 00104$:
      0031FE 90 00 36         [24] 3643 	mov	dptr,#_percent_command_handler_curr_65537_165
      003201 E0               [24] 3644 	movx	a,@dptr
      003202 FD               [12] 3645 	mov	r5,a
      003203 A3               [24] 3646 	inc	dptr
      003204 E0               [24] 3647 	movx	a,@dptr
      003205 FE               [12] 3648 	mov	r6,a
      003206 A3               [24] 3649 	inc	dptr
      003207 E0               [24] 3650 	movx	a,@dptr
      003208 FF               [12] 3651 	mov	r7,a
      003209 ED               [12] 3652 	mov	a,r5
      00320A 4E               [12] 3653 	orl	a,r6
      00320B 70 01            [24] 3654 	jnz	00136$
      00320D 22               [24] 3655 	ret
      00320E                       3656 00136$:
                                   3657 ;	src/main.c:432: memset(curr->buffer, 0x00, curr->size);
      00320E 8D 82            [24] 3658 	mov	dpl,r5
      003210 8E 83            [24] 3659 	mov	dph,r6
      003212 8F F0            [24] 3660 	mov	b,r7
      003214 12 4F 82         [24] 3661 	lcall	__gptrget
      003217 FB               [12] 3662 	mov	r3,a
      003218 A3               [24] 3663 	inc	dptr
      003219 12 4F 82         [24] 3664 	lcall	__gptrget
      00321C FC               [12] 3665 	mov	r4,a
      00321D 8B 51            [24] 3666 	mov	_percent_command_handler_sloc0_1_0,r3
      00321F 8C 52            [24] 3667 	mov	(_percent_command_handler_sloc0_1_0 + 1),r4
      003221 75 53 00         [24] 3668 	mov	(_percent_command_handler_sloc0_1_0 + 2),#0x00
      003224 74 04            [12] 3669 	mov	a,#0x04
      003226 2D               [12] 3670 	add	a,r5
      003227 F8               [12] 3671 	mov	r0,a
      003228 E4               [12] 3672 	clr	a
      003229 3E               [12] 3673 	addc	a,r6
      00322A F9               [12] 3674 	mov	r1,a
      00322B 8F 04            [24] 3675 	mov	ar4,r7
      00322D 88 82            [24] 3676 	mov	dpl,r0
      00322F 89 83            [24] 3677 	mov	dph,r1
      003231 8C F0            [24] 3678 	mov	b,r4
      003233 12 4F 82         [24] 3679 	lcall	__gptrget
      003236 F8               [12] 3680 	mov	r0,a
      003237 A3               [24] 3681 	inc	dptr
      003238 12 4F 82         [24] 3682 	lcall	__gptrget
      00323B F9               [12] 3683 	mov	r1,a
      00323C 90 20 88         [24] 3684 	mov	dptr,#_memset_PARM_2
      00323F E4               [12] 3685 	clr	a
      003240 F0               [24] 3686 	movx	@dptr,a
      003241 90 20 89         [24] 3687 	mov	dptr,#_memset_PARM_3
      003244 E8               [12] 3688 	mov	a,r0
      003245 F0               [24] 3689 	movx	@dptr,a
      003246 E9               [12] 3690 	mov	a,r1
      003247 A3               [24] 3691 	inc	dptr
      003248 F0               [24] 3692 	movx	@dptr,a
      003249 85 51 82         [24] 3693 	mov	dpl,_percent_command_handler_sloc0_1_0
      00324C 85 52 83         [24] 3694 	mov	dph,(_percent_command_handler_sloc0_1_0 + 1)
      00324F 85 53 F0         [24] 3695 	mov	b,(_percent_command_handler_sloc0_1_0 + 2)
      003252 C0 07            [24] 3696 	push	ar7
      003254 C0 06            [24] 3697 	push	ar6
      003256 C0 05            [24] 3698 	push	ar5
      003258 12 41 DC         [24] 3699 	lcall	_memset
      00325B D0 05            [24] 3700 	pop	ar5
      00325D D0 06            [24] 3701 	pop	ar6
      00325F D0 07            [24] 3702 	pop	ar7
                                   3703 ;	src/main.c:433: curr->curr_available_char = 0;
      003261 74 06            [12] 3704 	mov	a,#0x06
      003263 2D               [12] 3705 	add	a,r5
      003264 FA               [12] 3706 	mov	r2,a
      003265 E4               [12] 3707 	clr	a
      003266 3E               [12] 3708 	addc	a,r6
      003267 FB               [12] 3709 	mov	r3,a
      003268 8F 04            [24] 3710 	mov	ar4,r7
      00326A 8A 82            [24] 3711 	mov	dpl,r2
      00326C 8B 83            [24] 3712 	mov	dph,r3
      00326E 8C F0            [24] 3713 	mov	b,r4
      003270 E4               [12] 3714 	clr	a
      003271 12 43 28         [24] 3715 	lcall	__gptrput
      003274 A3               [24] 3716 	inc	dptr
      003275 12 43 28         [24] 3717 	lcall	__gptrput
                                   3718 ;	src/main.c:434: curr->alphabet_chars = 0; 
      003278 74 02            [12] 3719 	mov	a,#0x02
      00327A 2D               [12] 3720 	add	a,r5
      00327B FA               [12] 3721 	mov	r2,a
      00327C E4               [12] 3722 	clr	a
      00327D 3E               [12] 3723 	addc	a,r6
      00327E FB               [12] 3724 	mov	r3,a
      00327F 8F 04            [24] 3725 	mov	ar4,r7
      003281 8A 82            [24] 3726 	mov	dpl,r2
      003283 8B 83            [24] 3727 	mov	dph,r3
      003285 8C F0            [24] 3728 	mov	b,r4
      003287 E4               [12] 3729 	clr	a
      003288 12 43 28         [24] 3730 	lcall	__gptrput
      00328B A3               [24] 3731 	inc	dptr
      00328C 12 43 28         [24] 3732 	lcall	__gptrput
                                   3733 ;	src/main.c:435: curr = curr->next;
      00328F 74 08            [12] 3734 	mov	a,#0x08
      003291 2D               [12] 3735 	add	a,r5
      003292 FD               [12] 3736 	mov	r5,a
      003293 E4               [12] 3737 	clr	a
      003294 3E               [12] 3738 	addc	a,r6
      003295 FE               [12] 3739 	mov	r6,a
      003296 8D 82            [24] 3740 	mov	dpl,r5
      003298 8E 83            [24] 3741 	mov	dph,r6
      00329A 8F F0            [24] 3742 	mov	b,r7
      00329C 12 4F 82         [24] 3743 	lcall	__gptrget
      00329F FD               [12] 3744 	mov	r5,a
      0032A0 A3               [24] 3745 	inc	dptr
      0032A1 12 4F 82         [24] 3746 	lcall	__gptrget
      0032A4 FE               [12] 3747 	mov	r6,a
      0032A5 A3               [24] 3748 	inc	dptr
      0032A6 12 4F 82         [24] 3749 	lcall	__gptrget
      0032A9 FF               [12] 3750 	mov	r7,a
      0032AA 90 00 36         [24] 3751 	mov	dptr,#_percent_command_handler_curr_65537_165
      0032AD ED               [12] 3752 	mov	a,r5
      0032AE F0               [24] 3753 	movx	@dptr,a
      0032AF EE               [12] 3754 	mov	a,r6
      0032B0 A3               [24] 3755 	inc	dptr
      0032B1 F0               [24] 3756 	movx	@dptr,a
      0032B2 EF               [12] 3757 	mov	a,r7
      0032B3 A3               [24] 3758 	inc	dptr
      0032B4 F0               [24] 3759 	movx	@dptr,a
                                   3760 ;	src/main.c:437: }
      0032B5 02 31 FE         [24] 3761 	ljmp	00104$
                                   3762 ;------------------------------------------------------------
                                   3763 ;Allocation info for local variables in function 'dollar_sign_command_handler'
                                   3764 ;------------------------------------------------------------
                                   3765 ;sloc0                     Allocated with name '_dollar_sign_command_handler_sloc0_1_0'
                                   3766 ;buffer_3                  Allocated with name '_dollar_sign_command_handler_buffer_3_65537_169'
                                   3767 ;size                      Allocated with name '_dollar_sign_command_handler_size_65537_169'
                                   3768 ;------------------------------------------------------------
                                   3769 ;	src/main.c:439: void dollar_sign_command_handler()
                                   3770 ;	-----------------------------------------
                                   3771 ;	 function dollar_sign_command_handler
                                   3772 ;	-----------------------------------------
      0032B8                       3773 _dollar_sign_command_handler:
                                   3774 ;	src/main.c:441: command_header("Copy buffer_0 into buffer_3");
      0032B8 90 53 0F         [24] 3775 	mov	dptr,#___str_26
      0032BB 75 F0 80         [24] 3776 	mov	b,#0x80
      0032BE 12 29 51         [24] 3777 	lcall	_command_header
                                   3778 ;	src/main.c:442: P1_0 = ON;
                                   3779 ;	assignBit
      0032C1 D2 90            [12] 3780 	setb	_P1_0
                                   3781 ;	src/main.c:443: if (dynamic_buffers_list.head == NULL
      0032C3 90 20 D3         [24] 3782 	mov	dptr,#_dynamic_buffers_list
      0032C6 E0               [24] 3783 	movx	a,@dptr
      0032C7 FE               [12] 3784 	mov	r6,a
      0032C8 A3               [24] 3785 	inc	dptr
      0032C9 E0               [24] 3786 	movx	a,@dptr
      0032CA FD               [12] 3787 	mov	r5,a
      0032CB A3               [24] 3788 	inc	dptr
      0032CC E0               [24] 3789 	movx	a,@dptr
      0032CD FF               [12] 3790 	mov	r7,a
      0032CE EE               [12] 3791 	mov	a,r6
      0032CF 4D               [12] 3792 	orl	a,r5
      0032D0 60 1F            [24] 3793 	jz	00101$
                                   3794 ;	src/main.c:444: || dynamic_buffers_list.head->next == NULL) 
      0032D2 74 08            [12] 3795 	mov	a,#0x08
      0032D4 2E               [12] 3796 	add	a,r6
      0032D5 FE               [12] 3797 	mov	r6,a
      0032D6 E4               [12] 3798 	clr	a
      0032D7 3D               [12] 3799 	addc	a,r5
      0032D8 FD               [12] 3800 	mov	r5,a
      0032D9 8E 82            [24] 3801 	mov	dpl,r6
      0032DB 8D 83            [24] 3802 	mov	dph,r5
      0032DD 8F F0            [24] 3803 	mov	b,r7
      0032DF 12 4F 82         [24] 3804 	lcall	__gptrget
      0032E2 FE               [12] 3805 	mov	r6,a
      0032E3 A3               [24] 3806 	inc	dptr
      0032E4 12 4F 82         [24] 3807 	lcall	__gptrget
      0032E7 FD               [12] 3808 	mov	r5,a
      0032E8 A3               [24] 3809 	inc	dptr
      0032E9 12 4F 82         [24] 3810 	lcall	__gptrget
      0032EC FF               [12] 3811 	mov	r7,a
      0032ED EE               [12] 3812 	mov	a,r6
      0032EE 4D               [12] 3813 	orl	a,r5
      0032EF 70 18            [24] 3814 	jnz	00102$
      0032F1                       3815 00101$:
                                   3816 ;	src/main.c:446: P1_0 = OFF;
                                   3817 ;	assignBit
      0032F1 C2 90            [12] 3818 	clr	_P1_0
                                   3819 ;	src/main.c:447: printf("\r\n buffer_3 not allocated; exiting");
      0032F3 74 2B            [12] 3820 	mov	a,#___str_27
      0032F5 C0 E0            [24] 3821 	push	acc
      0032F7 74 53            [12] 3822 	mov	a,#(___str_27 >> 8)
      0032F9 C0 E0            [24] 3823 	push	acc
      0032FB 74 80            [12] 3824 	mov	a,#0x80
      0032FD C0 E0            [24] 3825 	push	acc
      0032FF 12 45 56         [24] 3826 	lcall	_printf
      003302 15 81            [12] 3827 	dec	sp
      003304 15 81            [12] 3828 	dec	sp
      003306 15 81            [12] 3829 	dec	sp
                                   3830 ;	src/main.c:448: return; 
      003308 22               [24] 3831 	ret
      003309                       3832 00102$:
                                   3833 ;	src/main.c:450: buffer_t* buffer_3 = dynamic_buffers_list.head->next;
      003309 8E 02            [24] 3834 	mov	ar2,r6
      00330B 8D 03            [24] 3835 	mov	ar3,r5
      00330D 8F 04            [24] 3836 	mov	ar4,r7
                                   3837 ;	src/main.c:451: size_t size = (buffer_3->size > static_buffers[0].size) ? static_buffers[0].size : buffer_3->size; 
      00330F 74 04            [12] 3838 	mov	a,#0x04
      003311 2E               [12] 3839 	add	a,r6
      003312 FE               [12] 3840 	mov	r6,a
      003313 E4               [12] 3841 	clr	a
      003314 3D               [12] 3842 	addc	a,r5
      003315 FD               [12] 3843 	mov	r5,a
      003316 8E 82            [24] 3844 	mov	dpl,r6
      003318 8D 83            [24] 3845 	mov	dph,r5
      00331A 8F F0            [24] 3846 	mov	b,r7
      00331C 12 4F 82         [24] 3847 	lcall	__gptrget
      00331F FE               [12] 3848 	mov	r6,a
      003320 A3               [24] 3849 	inc	dptr
      003321 12 4F 82         [24] 3850 	lcall	__gptrget
      003324 FF               [12] 3851 	mov	r7,a
      003325 90 00 05         [24] 3852 	mov	dptr,#(_static_buffers + 0x0004)
      003328 E0               [24] 3853 	movx	a,@dptr
      003329 F9               [12] 3854 	mov	r1,a
      00332A A3               [24] 3855 	inc	dptr
      00332B E0               [24] 3856 	movx	a,@dptr
      00332C FD               [12] 3857 	mov	r5,a
      00332D C3               [12] 3858 	clr	c
      00332E E9               [12] 3859 	mov	a,r1
      00332F 9E               [12] 3860 	subb	a,r6
      003330 ED               [12] 3861 	mov	a,r5
      003331 9F               [12] 3862 	subb	a,r7
      003332 50 06            [24] 3863 	jnc	00106$
      003334 89 54            [24] 3864 	mov	_dollar_sign_command_handler_sloc0_1_0,r1
      003336 8D 55            [24] 3865 	mov	(_dollar_sign_command_handler_sloc0_1_0 + 1),r5
      003338 80 04            [24] 3866 	sjmp	00107$
      00333A                       3867 00106$:
      00333A 8E 54            [24] 3868 	mov	_dollar_sign_command_handler_sloc0_1_0,r6
      00333C 8F 55            [24] 3869 	mov	(_dollar_sign_command_handler_sloc0_1_0 + 1),r7
      00333E                       3870 00107$:
                                   3871 ;	src/main.c:452: memcpy(buffer_3->buffer, static_buffers[0].buffer, size);
      00333E 8A 82            [24] 3872 	mov	dpl,r2
      003340 8B 83            [24] 3873 	mov	dph,r3
      003342 8C F0            [24] 3874 	mov	b,r4
      003344 12 4F 82         [24] 3875 	lcall	__gptrget
      003347 FE               [12] 3876 	mov	r6,a
      003348 A3               [24] 3877 	inc	dptr
      003349 12 4F 82         [24] 3878 	lcall	__gptrget
      00334C F8               [12] 3879 	mov	r0,a
      00334D 7F 00            [12] 3880 	mov	r7,#0x00
      00334F 90 00 01         [24] 3881 	mov	dptr,#_static_buffers
      003352 E0               [24] 3882 	movx	a,@dptr
      003353 F9               [12] 3883 	mov	r1,a
      003354 A3               [24] 3884 	inc	dptr
      003355 E0               [24] 3885 	movx	a,@dptr
      003356 FD               [12] 3886 	mov	r5,a
      003357 90 20 80         [24] 3887 	mov	dptr,#___memcpy_PARM_2
      00335A E9               [12] 3888 	mov	a,r1
      00335B F0               [24] 3889 	movx	@dptr,a
      00335C ED               [12] 3890 	mov	a,r5
      00335D A3               [24] 3891 	inc	dptr
      00335E F0               [24] 3892 	movx	@dptr,a
      00335F E4               [12] 3893 	clr	a
      003360 A3               [24] 3894 	inc	dptr
      003361 F0               [24] 3895 	movx	@dptr,a
      003362 90 20 83         [24] 3896 	mov	dptr,#___memcpy_PARM_3
      003365 E5 54            [12] 3897 	mov	a,_dollar_sign_command_handler_sloc0_1_0
      003367 F0               [24] 3898 	movx	@dptr,a
      003368 E5 55            [12] 3899 	mov	a,(_dollar_sign_command_handler_sloc0_1_0 + 1)
      00336A A3               [24] 3900 	inc	dptr
      00336B F0               [24] 3901 	movx	@dptr,a
      00336C 8E 82            [24] 3902 	mov	dpl,r6
      00336E 88 83            [24] 3903 	mov	dph,r0
      003370 8F F0            [24] 3904 	mov	b,r7
      003372 C0 04            [24] 3905 	push	ar4
      003374 C0 03            [24] 3906 	push	ar3
      003376 C0 02            [24] 3907 	push	ar2
      003378 12 41 68         [24] 3908 	lcall	___memcpy
      00337B D0 02            [24] 3909 	pop	ar2
      00337D D0 03            [24] 3910 	pop	ar3
      00337F D0 04            [24] 3911 	pop	ar4
                                   3912 ;	src/main.c:453: buffer_3->alphabet_chars = static_buffers[0].alphabet_chars;
      003381 74 02            [12] 3913 	mov	a,#0x02
      003383 2A               [12] 3914 	add	a,r2
      003384 FD               [12] 3915 	mov	r5,a
      003385 E4               [12] 3916 	clr	a
      003386 3B               [12] 3917 	addc	a,r3
      003387 FE               [12] 3918 	mov	r6,a
      003388 8C 07            [24] 3919 	mov	ar7,r4
      00338A 90 00 03         [24] 3920 	mov	dptr,#(_static_buffers + 0x0002)
      00338D E0               [24] 3921 	movx	a,@dptr
      00338E F8               [12] 3922 	mov	r0,a
      00338F A3               [24] 3923 	inc	dptr
      003390 E0               [24] 3924 	movx	a,@dptr
      003391 F9               [12] 3925 	mov	r1,a
      003392 8D 82            [24] 3926 	mov	dpl,r5
      003394 8E 83            [24] 3927 	mov	dph,r6
      003396 8F F0            [24] 3928 	mov	b,r7
      003398 E8               [12] 3929 	mov	a,r0
      003399 12 43 28         [24] 3930 	lcall	__gptrput
      00339C A3               [24] 3931 	inc	dptr
      00339D E9               [12] 3932 	mov	a,r1
      00339E 12 43 28         [24] 3933 	lcall	__gptrput
                                   3934 ;	src/main.c:454: buffer_3->curr_available_char = static_buffers[0].curr_available_char;
      0033A1 74 06            [12] 3935 	mov	a,#0x06
      0033A3 2A               [12] 3936 	add	a,r2
      0033A4 FA               [12] 3937 	mov	r2,a
      0033A5 E4               [12] 3938 	clr	a
      0033A6 3B               [12] 3939 	addc	a,r3
      0033A7 FB               [12] 3940 	mov	r3,a
      0033A8 90 00 07         [24] 3941 	mov	dptr,#(_static_buffers + 0x0006)
      0033AB E0               [24] 3942 	movx	a,@dptr
      0033AC FE               [12] 3943 	mov	r6,a
      0033AD A3               [24] 3944 	inc	dptr
      0033AE E0               [24] 3945 	movx	a,@dptr
      0033AF FF               [12] 3946 	mov	r7,a
      0033B0 8A 82            [24] 3947 	mov	dpl,r2
      0033B2 8B 83            [24] 3948 	mov	dph,r3
      0033B4 8C F0            [24] 3949 	mov	b,r4
      0033B6 EE               [12] 3950 	mov	a,r6
      0033B7 12 43 28         [24] 3951 	lcall	__gptrput
      0033BA A3               [24] 3952 	inc	dptr
      0033BB EF               [12] 3953 	mov	a,r7
      0033BC 12 43 28         [24] 3954 	lcall	__gptrput
                                   3955 ;	src/main.c:455: P1_0 = OFF; 
                                   3956 ;	assignBit
      0033BF C2 90            [12] 3957 	clr	_P1_0
                                   3958 ;	src/main.c:456: printf("\r\n Done");
      0033C1 74 4E            [12] 3959 	mov	a,#___str_28
      0033C3 C0 E0            [24] 3960 	push	acc
      0033C5 74 53            [12] 3961 	mov	a,#(___str_28 >> 8)
      0033C7 C0 E0            [24] 3962 	push	acc
      0033C9 74 80            [12] 3963 	mov	a,#0x80
      0033CB C0 E0            [24] 3964 	push	acc
      0033CD 12 45 56         [24] 3965 	lcall	_printf
      0033D0 15 81            [12] 3966 	dec	sp
      0033D2 15 81            [12] 3967 	dec	sp
      0033D4 15 81            [12] 3968 	dec	sp
                                   3969 ;	src/main.c:457: }
      0033D6 22               [24] 3970 	ret
                                   3971 ;------------------------------------------------------------
                                   3972 ;Allocation info for local variables in function 'hashtag_command_handler'
                                   3973 ;------------------------------------------------------------
                                   3974 ;c                         Allocated with name '_hashtag_command_handler_c_196609_174'
                                   3975 ;buffer_3                  Allocated with name '_hashtag_command_handler_buffer_3_65537_172'
                                   3976 ;i                         Allocated with name '_hashtag_command_handler_i_131073_173'
                                   3977 ;------------------------------------------------------------
                                   3978 ;	src/main.c:459: void hashtag_command_handler()
                                   3979 ;	-----------------------------------------
                                   3980 ;	 function hashtag_command_handler
                                   3981 ;	-----------------------------------------
      0033D7                       3982 _hashtag_command_handler:
                                   3983 ;	src/main.c:461: command_header("Convert buffer_3 chars to lowercase");
      0033D7 90 53 56         [24] 3984 	mov	dptr,#___str_29
      0033DA 75 F0 80         [24] 3985 	mov	b,#0x80
      0033DD 12 29 51         [24] 3986 	lcall	_command_header
                                   3987 ;	src/main.c:462: P1_0 = ON;
                                   3988 ;	assignBit
      0033E0 D2 90            [12] 3989 	setb	_P1_0
                                   3990 ;	src/main.c:463: if (dynamic_buffers_list.head == NULL
      0033E2 90 20 D3         [24] 3991 	mov	dptr,#_dynamic_buffers_list
      0033E5 E0               [24] 3992 	movx	a,@dptr
      0033E6 FD               [12] 3993 	mov	r5,a
      0033E7 A3               [24] 3994 	inc	dptr
      0033E8 E0               [24] 3995 	movx	a,@dptr
      0033E9 FE               [12] 3996 	mov	r6,a
      0033EA A3               [24] 3997 	inc	dptr
      0033EB E0               [24] 3998 	movx	a,@dptr
      0033EC FF               [12] 3999 	mov	r7,a
      0033ED ED               [12] 4000 	mov	a,r5
      0033EE 4E               [12] 4001 	orl	a,r6
      0033EF 60 1F            [24] 4002 	jz	00101$
                                   4003 ;	src/main.c:464: || dynamic_buffers_list.head->next == NULL) 
      0033F1 74 08            [12] 4004 	mov	a,#0x08
      0033F3 2D               [12] 4005 	add	a,r5
      0033F4 FD               [12] 4006 	mov	r5,a
      0033F5 E4               [12] 4007 	clr	a
      0033F6 3E               [12] 4008 	addc	a,r6
      0033F7 FE               [12] 4009 	mov	r6,a
      0033F8 8D 82            [24] 4010 	mov	dpl,r5
      0033FA 8E 83            [24] 4011 	mov	dph,r6
      0033FC 8F F0            [24] 4012 	mov	b,r7
      0033FE 12 4F 82         [24] 4013 	lcall	__gptrget
      003401 FD               [12] 4014 	mov	r5,a
      003402 A3               [24] 4015 	inc	dptr
      003403 12 4F 82         [24] 4016 	lcall	__gptrget
      003406 FE               [12] 4017 	mov	r6,a
      003407 A3               [24] 4018 	inc	dptr
      003408 12 4F 82         [24] 4019 	lcall	__gptrget
      00340B FF               [12] 4020 	mov	r7,a
      00340C ED               [12] 4021 	mov	a,r5
      00340D 4E               [12] 4022 	orl	a,r6
      00340E 70 03            [24] 4023 	jnz	00102$
      003410                       4024 00101$:
                                   4025 ;	src/main.c:466: P1_0 = OFF;
                                   4026 ;	assignBit
      003410 C2 90            [12] 4027 	clr	_P1_0
                                   4028 ;	src/main.c:467: return; 
      003412 22               [24] 4029 	ret
      003413                       4030 00102$:
                                   4031 ;	src/main.c:470: buffer_t *buffer_3 = dynamic_buffers_list.head->next;
      003413 8D 02            [24] 4032 	mov	ar2,r5
      003415 8E 03            [24] 4033 	mov	ar3,r6
      003417 8F 04            [24] 4034 	mov	ar4,r7
                                   4035 ;	src/main.c:471: for(size_t i = 0; i < buffer_3->curr_available_char; i++)
      003419 74 06            [12] 4036 	mov	a,#0x06
      00341B 2D               [12] 4037 	add	a,r5
      00341C FD               [12] 4038 	mov	r5,a
      00341D E4               [12] 4039 	clr	a
      00341E 3E               [12] 4040 	addc	a,r6
      00341F FE               [12] 4041 	mov	r6,a
      003420 78 00            [12] 4042 	mov	r0,#0x00
      003422 79 00            [12] 4043 	mov	r1,#0x00
      003424                       4044 00109$:
      003424 C0 02            [24] 4045 	push	ar2
      003426 C0 03            [24] 4046 	push	ar3
      003428 C0 04            [24] 4047 	push	ar4
      00342A 8D 82            [24] 4048 	mov	dpl,r5
      00342C 8E 83            [24] 4049 	mov	dph,r6
      00342E 8F F0            [24] 4050 	mov	b,r7
      003430 12 4F 82         [24] 4051 	lcall	__gptrget
      003433 FB               [12] 4052 	mov	r3,a
      003434 A3               [24] 4053 	inc	dptr
      003435 12 4F 82         [24] 4054 	lcall	__gptrget
      003438 FC               [12] 4055 	mov	r4,a
      003439 C3               [12] 4056 	clr	c
      00343A E8               [12] 4057 	mov	a,r0
      00343B 9B               [12] 4058 	subb	a,r3
      00343C E9               [12] 4059 	mov	a,r1
      00343D 9C               [12] 4060 	subb	a,r4
      00343E D0 04            [24] 4061 	pop	ar4
      003440 D0 03            [24] 4062 	pop	ar3
      003442 D0 02            [24] 4063 	pop	ar2
      003444 50 6B            [24] 4064 	jnc	00107$
                                   4065 ;	src/main.c:473: register char c = buffer_3->buffer[i];
      003446 C0 05            [24] 4066 	push	ar5
      003448 C0 06            [24] 4067 	push	ar6
      00344A C0 07            [24] 4068 	push	ar7
      00344C 8A 82            [24] 4069 	mov	dpl,r2
      00344E 8B 83            [24] 4070 	mov	dph,r3
      003450 8C F0            [24] 4071 	mov	b,r4
      003452 12 4F 82         [24] 4072 	lcall	__gptrget
      003455 FE               [12] 4073 	mov	r6,a
      003456 A3               [24] 4074 	inc	dptr
      003457 12 4F 82         [24] 4075 	lcall	__gptrget
      00345A FF               [12] 4076 	mov	r7,a
      00345B E8               [12] 4077 	mov	a,r0
      00345C 2E               [12] 4078 	add	a,r6
      00345D F5 82            [12] 4079 	mov	dpl,a
      00345F E9               [12] 4080 	mov	a,r1
      003460 3F               [12] 4081 	addc	a,r7
      003461 F5 83            [12] 4082 	mov	dph,a
      003463 E0               [24] 4083 	movx	a,@dptr
      003464 F5 56            [12] 4084 	mov	_hashtag_command_handler_c_196609_174,a
                                   4085 ;	src/main.c:474: if (c <= 'Z' || c >= 'A')
      003466 C3               [12] 4086 	clr	c
      003467 74 5A            [12] 4087 	mov	a,#0x5a
      003469 95 56            [12] 4088 	subb	a,_hashtag_command_handler_c_196609_174
      00346B D0 07            [24] 4089 	pop	ar7
      00346D D0 06            [24] 4090 	pop	ar6
      00346F D0 05            [24] 4091 	pop	ar5
      003471 50 06            [24] 4092 	jnc	00104$
      003473 74 BF            [12] 4093 	mov	a,#0x100 - 0x41
      003475 25 56            [12] 4094 	add	a,_hashtag_command_handler_c_196609_174
      003477 50 30            [24] 4095 	jnc	00110$
      003479                       4096 00104$:
                                   4097 ;	src/main.c:476: buffer_3->buffer[i] |= LOWER_CASE_MASK;
      003479 C0 05            [24] 4098 	push	ar5
      00347B C0 06            [24] 4099 	push	ar6
      00347D C0 07            [24] 4100 	push	ar7
      00347F 8A 82            [24] 4101 	mov	dpl,r2
      003481 8B 83            [24] 4102 	mov	dph,r3
      003483 8C F0            [24] 4103 	mov	b,r4
      003485 12 4F 82         [24] 4104 	lcall	__gptrget
      003488 FE               [12] 4105 	mov	r6,a
      003489 A3               [24] 4106 	inc	dptr
      00348A 12 4F 82         [24] 4107 	lcall	__gptrget
      00348D FF               [12] 4108 	mov	r7,a
      00348E E8               [12] 4109 	mov	a,r0
      00348F 2E               [12] 4110 	add	a,r6
      003490 FE               [12] 4111 	mov	r6,a
      003491 E9               [12] 4112 	mov	a,r1
      003492 3F               [12] 4113 	addc	a,r7
      003493 FF               [12] 4114 	mov	r7,a
      003494 8E 82            [24] 4115 	mov	dpl,r6
      003496 8F 83            [24] 4116 	mov	dph,r7
      003498 E0               [24] 4117 	movx	a,@dptr
      003499 FD               [12] 4118 	mov	r5,a
      00349A 43 05 20         [24] 4119 	orl	ar5,#0x20
      00349D 8E 82            [24] 4120 	mov	dpl,r6
      00349F 8F 83            [24] 4121 	mov	dph,r7
      0034A1 ED               [12] 4122 	mov	a,r5
      0034A2 F0               [24] 4123 	movx	@dptr,a
                                   4124 ;	src/main.c:480: printf("\r\n Done");
      0034A3 D0 07            [24] 4125 	pop	ar7
      0034A5 D0 06            [24] 4126 	pop	ar6
      0034A7 D0 05            [24] 4127 	pop	ar5
                                   4128 ;	src/main.c:476: buffer_3->buffer[i] |= LOWER_CASE_MASK;
      0034A9                       4129 00110$:
                                   4130 ;	src/main.c:471: for(size_t i = 0; i < buffer_3->curr_available_char; i++)
      0034A9 08               [12] 4131 	inc	r0
      0034AA B8 00 01         [24] 4132 	cjne	r0,#0x00,00135$
      0034AD 09               [12] 4133 	inc	r1
      0034AE                       4134 00135$:
      0034AE 02 34 24         [24] 4135 	ljmp	00109$
      0034B1                       4136 00107$:
                                   4137 ;	src/main.c:479: P1_0 = OFF;
                                   4138 ;	assignBit
      0034B1 C2 90            [12] 4139 	clr	_P1_0
                                   4140 ;	src/main.c:480: printf("\r\n Done");
      0034B3 74 4E            [12] 4141 	mov	a,#___str_28
      0034B5 C0 E0            [24] 4142 	push	acc
      0034B7 74 53            [12] 4143 	mov	a,#(___str_28 >> 8)
      0034B9 C0 E0            [24] 4144 	push	acc
      0034BB 74 80            [12] 4145 	mov	a,#0x80
      0034BD C0 E0            [24] 4146 	push	acc
      0034BF 12 45 56         [24] 4147 	lcall	_printf
      0034C2 15 81            [12] 4148 	dec	sp
      0034C4 15 81            [12] 4149 	dec	sp
      0034C6 15 81            [12] 4150 	dec	sp
                                   4151 ;	src/main.c:481: }
      0034C8 22               [24] 4152 	ret
                                   4153 ;------------------------------------------------------------
                                   4154 ;Allocation info for local variables in function 'plus_command_handler'
                                   4155 ;------------------------------------------------------------
                                   4156 ;size                      Allocated with name '_plus_command_handler_size_65537_177'
                                   4157 ;new_buffer                Allocated with name '_plus_command_handler_new_buffer_65538_179'
                                   4158 ;------------------------------------------------------------
                                   4159 ;	src/main.c:484: void plus_command_handler() 
                                   4160 ;	-----------------------------------------
                                   4161 ;	 function plus_command_handler
                                   4162 ;	-----------------------------------------
      0034C9                       4163 _plus_command_handler:
                                   4164 ;	src/main.c:486: command_header("\r\n Alloc Buffer");
      0034C9 90 53 7A         [24] 4165 	mov	dptr,#___str_30
      0034CC 75 F0 80         [24] 4166 	mov	b,#0x80
      0034CF 12 29 51         [24] 4167 	lcall	_command_header
                                   4168 ;	src/main.c:488: while (true) {
      0034D2                       4169 00105$:
                                   4170 ;	src/main.c:489: printf("\r\nPlease enter a size for the new buffer, [200,600]: ");
      0034D2 74 8A            [12] 4171 	mov	a,#___str_31
      0034D4 C0 E0            [24] 4172 	push	acc
      0034D6 74 53            [12] 4173 	mov	a,#(___str_31 >> 8)
      0034D8 C0 E0            [24] 4174 	push	acc
      0034DA 74 80            [12] 4175 	mov	a,#0x80
      0034DC C0 E0            [24] 4176 	push	acc
      0034DE 12 45 56         [24] 4177 	lcall	_printf
      0034E1 15 81            [12] 4178 	dec	sp
      0034E3 15 81            [12] 4179 	dec	sp
      0034E5 15 81            [12] 4180 	dec	sp
                                   4181 ;	src/main.c:490: get_string();
      0034E7 12 39 A9         [24] 4182 	lcall	_get_string
                                   4183 ;	src/main.c:491: size = atoi(get_input_buffer());
      0034EA 12 39 A2         [24] 4184 	lcall	_get_input_buffer
      0034ED 12 42 04         [24] 4185 	lcall	_atoi
      0034F0 AE 82            [24] 4186 	mov	r6,dpl
      0034F2 AF 83            [24] 4187 	mov	r7,dph
                                   4188 ;	src/main.c:492: if (size <= MAX_USER_DETERMINED_BUFFER_SZ && size >= MIN_USER_DETERMINED_BUFFER_SZ) break;
      0034F4 C3               [12] 4189 	clr	c
      0034F5 74 58            [12] 4190 	mov	a,#0x58
      0034F7 9E               [12] 4191 	subb	a,r6
      0034F8 74 82            [12] 4192 	mov	a,#(0x02 ^ 0x80)
      0034FA 8F F0            [24] 4193 	mov	b,r7
      0034FC 63 F0 80         [24] 4194 	xrl	b,#0x80
      0034FF 95 F0            [12] 4195 	subb	a,b
      003501 40 0A            [24] 4196 	jc	00102$
      003503 EE               [12] 4197 	mov	a,r6
      003504 94 C8            [12] 4198 	subb	a,#0xc8
      003506 EF               [12] 4199 	mov	a,r7
      003507 64 80            [12] 4200 	xrl	a,#0x80
      003509 94 80            [12] 4201 	subb	a,#0x80
      00350B 50 17            [24] 4202 	jnc	00106$
      00350D                       4203 00102$:
                                   4204 ;	src/main.c:493: printf("\r\nBuffer size invalid!! Please try again");
      00350D 74 C0            [12] 4205 	mov	a,#___str_32
      00350F C0 E0            [24] 4206 	push	acc
      003511 74 53            [12] 4207 	mov	a,#(___str_32 >> 8)
      003513 C0 E0            [24] 4208 	push	acc
      003515 74 80            [12] 4209 	mov	a,#0x80
      003517 C0 E0            [24] 4210 	push	acc
      003519 12 45 56         [24] 4211 	lcall	_printf
      00351C 15 81            [12] 4212 	dec	sp
      00351E 15 81            [12] 4213 	dec	sp
      003520 15 81            [12] 4214 	dec	sp
      003522 80 AE            [24] 4215 	sjmp	00105$
      003524                       4216 00106$:
                                   4217 ;	src/main.c:496: buffer_t *new_buffer = alloc_new_buffer((size_t) size);
      003524 8E 82            [24] 4218 	mov	dpl,r6
      003526 8F 83            [24] 4219 	mov	dph,r7
      003528 12 21 69         [24] 4220 	lcall	_alloc_new_buffer
      00352B AD 82            [24] 4221 	mov	r5,dpl
      00352D AE 83            [24] 4222 	mov	r6,dph
      00352F AF F0            [24] 4223 	mov	r7,b
                                   4224 ;	src/main.c:498: if (new_buffer == NULL)
      003531 ED               [12] 4225 	mov	a,r5
      003532 4E               [12] 4226 	orl	a,r6
      003533 70 16            [24] 4227 	jnz	00108$
                                   4228 ;	src/main.c:500: printf("\r\n Allocation failed; able to allocate header but not buffer");
      003535 74 E9            [12] 4229 	mov	a,#___str_33
      003537 C0 E0            [24] 4230 	push	acc
      003539 74 53            [12] 4231 	mov	a,#(___str_33 >> 8)
      00353B C0 E0            [24] 4232 	push	acc
      00353D 74 80            [12] 4233 	mov	a,#0x80
      00353F C0 E0            [24] 4234 	push	acc
      003541 12 45 56         [24] 4235 	lcall	_printf
      003544 15 81            [12] 4236 	dec	sp
      003546 15 81            [12] 4237 	dec	sp
      003548 15 81            [12] 4238 	dec	sp
                                   4239 ;	src/main.c:501: return;
      00354A 22               [24] 4240 	ret
      00354B                       4241 00108$:
                                   4242 ;	src/main.c:504: append_to_buffer_list(&dynamic_buffers_list, new_buffer);
      00354B 90 20 4A         [24] 4243 	mov	dptr,#_append_to_buffer_list_PARM_2
      00354E ED               [12] 4244 	mov	a,r5
      00354F F0               [24] 4245 	movx	@dptr,a
      003550 EE               [12] 4246 	mov	a,r6
      003551 A3               [24] 4247 	inc	dptr
      003552 F0               [24] 4248 	movx	@dptr,a
      003553 EF               [12] 4249 	mov	a,r7
      003554 A3               [24] 4250 	inc	dptr
      003555 F0               [24] 4251 	movx	@dptr,a
      003556 90 20 D3         [24] 4252 	mov	dptr,#_dynamic_buffers_list
      003559 75 F0 00         [24] 4253 	mov	b,#0x00
      00355C 12 3B 14         [24] 4254 	lcall	_append_to_buffer_list
                                   4255 ;	src/main.c:506: printf("\r\n Allocation successful!! New buffer added");
      00355F 74 26            [12] 4256 	mov	a,#___str_34
      003561 C0 E0            [24] 4257 	push	acc
      003563 74 54            [12] 4258 	mov	a,#(___str_34 >> 8)
      003565 C0 E0            [24] 4259 	push	acc
      003567 74 80            [12] 4260 	mov	a,#0x80
      003569 C0 E0            [24] 4261 	push	acc
      00356B 12 45 56         [24] 4262 	lcall	_printf
      00356E 15 81            [12] 4263 	dec	sp
      003570 15 81            [12] 4264 	dec	sp
      003572 15 81            [12] 4265 	dec	sp
                                   4266 ;	src/main.c:508: }
      003574 22               [24] 4267 	ret
                                   4268 ;------------------------------------------------------------
                                   4269 ;Allocation info for local variables in function 'minus_command_handler'
                                   4270 ;------------------------------------------------------------
                                   4271 ;length                    Allocated with name '_minus_command_handler_length_65537_182'
                                   4272 ;buffer_num                Allocated with name '_minus_command_handler_buffer_num_65538_183'
                                   4273 ;freed                     Allocated with name '_minus_command_handler_freed_131074_187'
                                   4274 ;------------------------------------------------------------
                                   4275 ;	src/main.c:510: void minus_command_handler() 
                                   4276 ;	-----------------------------------------
                                   4277 ;	 function minus_command_handler
                                   4278 ;	-----------------------------------------
      003575                       4279 _minus_command_handler:
                                   4280 ;	src/main.c:512: command_header("Free Buffer");
      003575 90 54 52         [24] 4281 	mov	dptr,#___str_35
      003578 75 F0 80         [24] 4282 	mov	b,#0x80
      00357B 12 29 51         [24] 4283 	lcall	_command_header
                                   4284 ;	src/main.c:513: size_t length = ll_length(&dynamic_buffers_list);
      00357E 90 20 D3         [24] 4285 	mov	dptr,#_dynamic_buffers_list
      003581 75 F0 00         [24] 4286 	mov	b,#0x00
      003584 12 3E CD         [24] 4287 	lcall	_ll_length
      003587 AE 82            [24] 4288 	mov	r6,dpl
      003589 AF 83            [24] 4289 	mov	r7,dph
                                   4290 ;	src/main.c:514: printf("\r\nPlease enter the number of the buffer you would like to free[2-%zu]: ", length + MIN_DYNAMIC_BUFFER_NUM - 1);
      00358B 74 01            [12] 4291 	mov	a,#0x01
      00358D 2E               [12] 4292 	add	a,r6
      00358E FC               [12] 4293 	mov	r4,a
      00358F E4               [12] 4294 	clr	a
      003590 3F               [12] 4295 	addc	a,r7
      003591 FD               [12] 4296 	mov	r5,a
      003592 C0 07            [24] 4297 	push	ar7
      003594 C0 06            [24] 4298 	push	ar6
      003596 C0 04            [24] 4299 	push	ar4
      003598 C0 05            [24] 4300 	push	ar5
      00359A 74 5E            [12] 4301 	mov	a,#___str_36
      00359C C0 E0            [24] 4302 	push	acc
      00359E 74 54            [12] 4303 	mov	a,#(___str_36 >> 8)
      0035A0 C0 E0            [24] 4304 	push	acc
      0035A2 74 80            [12] 4305 	mov	a,#0x80
      0035A4 C0 E0            [24] 4306 	push	acc
      0035A6 12 45 56         [24] 4307 	lcall	_printf
      0035A9 E5 81            [12] 4308 	mov	a,sp
      0035AB 24 FB            [12] 4309 	add	a,#0xfb
      0035AD F5 81            [12] 4310 	mov	sp,a
                                   4311 ;	src/main.c:515: get_string(); 
      0035AF 12 39 A9         [24] 4312 	lcall	_get_string
                                   4313 ;	src/main.c:516: int buffer_num = atoi(get_input_buffer()); 
      0035B2 12 39 A2         [24] 4314 	lcall	_get_input_buffer
      0035B5 12 42 04         [24] 4315 	lcall	_atoi
      0035B8 AC 82            [24] 4316 	mov	r4,dpl
      0035BA AD 83            [24] 4317 	mov	r5,dph
      0035BC D0 06            [24] 4318 	pop	ar6
      0035BE D0 07            [24] 4319 	pop	ar7
                                   4320 ;	src/main.c:517: if (buffer_num < 0)
      0035C0 ED               [12] 4321 	mov	a,r5
      0035C1 30 E7 16         [24] 4322 	jnb	acc.7,00111$
                                   4323 ;	src/main.c:519: printf("\r\n Invalid buffer number, negatives not valid");
      0035C4 74 A6            [12] 4324 	mov	a,#___str_37
      0035C6 C0 E0            [24] 4325 	push	acc
      0035C8 74 54            [12] 4326 	mov	a,#(___str_37 >> 8)
      0035CA C0 E0            [24] 4327 	push	acc
      0035CC 74 80            [12] 4328 	mov	a,#0x80
      0035CE C0 E0            [24] 4329 	push	acc
      0035D0 12 45 56         [24] 4330 	lcall	_printf
      0035D3 15 81            [12] 4331 	dec	sp
      0035D5 15 81            [12] 4332 	dec	sp
      0035D7 15 81            [12] 4333 	dec	sp
                                   4334 ;	src/main.c:520: return;
      0035D9 22               [24] 4335 	ret
      0035DA                       4336 00111$:
                                   4337 ;	src/main.c:522: else if (buffer_num <= 1) 
      0035DA C3               [12] 4338 	clr	c
      0035DB 74 01            [12] 4339 	mov	a,#0x01
      0035DD 9C               [12] 4340 	subb	a,r4
      0035DE 74 80            [12] 4341 	mov	a,#(0x00 ^ 0x80)
      0035E0 8D F0            [24] 4342 	mov	b,r5
      0035E2 63 F0 80         [24] 4343 	xrl	b,#0x80
      0035E5 95 F0            [12] 4344 	subb	a,b
      0035E7 40 16            [24] 4345 	jc	00108$
                                   4346 ;	src/main.c:524: printf("\r\n Invalid buffer number, buffers 0 & 1 are protected");
      0035E9 74 D4            [12] 4347 	mov	a,#___str_38
      0035EB C0 E0            [24] 4348 	push	acc
      0035ED 74 54            [12] 4349 	mov	a,#(___str_38 >> 8)
      0035EF C0 E0            [24] 4350 	push	acc
      0035F1 74 80            [12] 4351 	mov	a,#0x80
      0035F3 C0 E0            [24] 4352 	push	acc
      0035F5 12 45 56         [24] 4353 	lcall	_printf
      0035F8 15 81            [12] 4354 	dec	sp
      0035FA 15 81            [12] 4355 	dec	sp
      0035FC 15 81            [12] 4356 	dec	sp
                                   4357 ;	src/main.c:525: return; 
      0035FE 22               [24] 4358 	ret
      0035FF                       4359 00108$:
                                   4360 ;	src/main.c:527: else if (buffer_num >= length)
      0035FF 8C 02            [24] 4361 	mov	ar2,r4
      003601 8D 03            [24] 4362 	mov	ar3,r5
      003603 C3               [12] 4363 	clr	c
      003604 EA               [12] 4364 	mov	a,r2
      003605 9E               [12] 4365 	subb	a,r6
      003606 EB               [12] 4366 	mov	a,r3
      003607 9F               [12] 4367 	subb	a,r7
      003608 40 16            [24] 4368 	jc	00105$
                                   4369 ;	src/main.c:529: printf("\r\n Invalid Buffer number; out of range");
      00360A 74 0A            [12] 4370 	mov	a,#___str_39
      00360C C0 E0            [24] 4371 	push	acc
      00360E 74 55            [12] 4372 	mov	a,#(___str_39 >> 8)
      003610 C0 E0            [24] 4373 	push	acc
      003612 74 80            [12] 4374 	mov	a,#0x80
      003614 C0 E0            [24] 4375 	push	acc
      003616 12 45 56         [24] 4376 	lcall	_printf
      003619 15 81            [12] 4377 	dec	sp
      00361B 15 81            [12] 4378 	dec	sp
      00361D 15 81            [12] 4379 	dec	sp
                                   4380 ;	src/main.c:530: return;
      00361F 22               [24] 4381 	ret
      003620                       4382 00105$:
                                   4383 ;	src/main.c:534: bool freed = remove_from_buffer_list(&dynamic_buffers_list, (size_t)(buffer_num-2));
      003620 EC               [12] 4384 	mov	a,r4
      003621 24 FE            [12] 4385 	add	a,#0xfe
      003623 FC               [12] 4386 	mov	r4,a
      003624 ED               [12] 4387 	mov	a,r5
      003625 34 FF            [12] 4388 	addc	a,#0xff
      003627 FD               [12] 4389 	mov	r5,a
      003628 90 20 53         [24] 4390 	mov	dptr,#_remove_from_buffer_list_PARM_2
      00362B EC               [12] 4391 	mov	a,r4
      00362C F0               [24] 4392 	movx	@dptr,a
      00362D ED               [12] 4393 	mov	a,r5
      00362E A3               [24] 4394 	inc	dptr
      00362F F0               [24] 4395 	movx	@dptr,a
      003630 90 20 D3         [24] 4396 	mov	dptr,#_dynamic_buffers_list
      003633 75 F0 00         [24] 4397 	mov	b,#0x00
      003636 12 3B FA         [24] 4398 	lcall	_remove_from_buffer_list
      003639 E5 82            [12] 4399 	mov	a,dpl
                                   4400 ;	src/main.c:535: if (freed)
      00363B 60 16            [24] 4401 	jz	00102$
                                   4402 ;	src/main.c:537: printf("\r\n Successfully removed buffer");
      00363D 74 31            [12] 4403 	mov	a,#___str_40
      00363F C0 E0            [24] 4404 	push	acc
      003641 74 55            [12] 4405 	mov	a,#(___str_40 >> 8)
      003643 C0 E0            [24] 4406 	push	acc
      003645 74 80            [12] 4407 	mov	a,#0x80
      003647 C0 E0            [24] 4408 	push	acc
      003649 12 45 56         [24] 4409 	lcall	_printf
      00364C 15 81            [12] 4410 	dec	sp
      00364E 15 81            [12] 4411 	dec	sp
      003650 15 81            [12] 4412 	dec	sp
      003652 22               [24] 4413 	ret
      003653                       4414 00102$:
                                   4415 ;	src/main.c:541: printf("\r\n Failed to remove buffer, ll error");
      003653 74 50            [12] 4416 	mov	a,#___str_41
      003655 C0 E0            [24] 4417 	push	acc
      003657 74 55            [12] 4418 	mov	a,#(___str_41 >> 8)
      003659 C0 E0            [24] 4419 	push	acc
      00365B 74 80            [12] 4420 	mov	a,#0x80
      00365D C0 E0            [24] 4421 	push	acc
      00365F 12 45 56         [24] 4422 	lcall	_printf
      003662 15 81            [12] 4423 	dec	sp
      003664 15 81            [12] 4424 	dec	sp
      003666 15 81            [12] 4425 	dec	sp
                                   4426 ;	src/main.c:545: }
      003668 22               [24] 4427 	ret
                                   4428 ;------------------------------------------------------------
                                   4429 ;Allocation info for local variables in function 'star_command_handler'
                                   4430 ;------------------------------------------------------------
                                   4431 ;	src/main.c:548: void star_command_handler()
                                   4432 ;	-----------------------------------------
                                   4433 ;	 function star_command_handler
                                   4434 ;	-----------------------------------------
      003669                       4435 _star_command_handler:
                                   4436 ;	src/main.c:550: printf("\r\nResetting device");
      003669 74 75            [12] 4437 	mov	a,#___str_42
      00366B C0 E0            [24] 4438 	push	acc
      00366D 74 55            [12] 4439 	mov	a,#(___str_42 >> 8)
      00366F C0 E0            [24] 4440 	push	acc
      003671 74 80            [12] 4441 	mov	a,#0x80
      003673 C0 E0            [24] 4442 	push	acc
      003675 12 45 56         [24] 4443 	lcall	_printf
      003678 15 81            [12] 4444 	dec	sp
      00367A 15 81            [12] 4445 	dec	sp
      00367C 15 81            [12] 4446 	dec	sp
                                   4447 ;	src/main.c:551: WDTRST = 0x1E;
      00367E 75 A6 1E         [24] 4448 	mov	_WDTRST,#0x1e
                                   4449 ;	src/main.c:552: WDTRST = 0xE1; //start watchdog timer
      003681 75 A6 E1         [24] 4450 	mov	_WDTRST,#0xe1
      003684                       4451 00103$:
                                   4452 ;	src/main.c:554: }
      003684 80 FE            [24] 4453 	sjmp	00103$
                                   4454 ;------------------------------------------------------------
                                   4455 ;Allocation info for local variables in function 'ampersand_command_handler'
                                   4456 ;------------------------------------------------------------
                                   4457 ;sloc0                     Allocated with name '_ampersand_command_handler_sloc0_1_0'
                                   4458 ;sloc1                     Allocated with name '_ampersand_command_handler_sloc1_1_0'
                                   4459 ;sloc2                     Allocated with name '_ampersand_command_handler_sloc2_1_0'
                                   4460 ;length                    Allocated with name '_ampersand_command_handler_length_65537_193'
                                   4461 ;selected_buffer           Allocated with name '_ampersand_command_handler_selected_buffer_65538_194'
                                   4462 ;buffer                    Allocated with name '_ampersand_command_handler_buffer_65539_196'
                                   4463 ;address                   Allocated with name '_ampersand_command_handler_address_131075_198'
                                   4464 ;------------------------------------------------------------
                                   4465 ;	src/main.c:556: void ampersand_command_handler()
                                   4466 ;	-----------------------------------------
                                   4467 ;	 function ampersand_command_handler
                                   4468 ;	-----------------------------------------
      003686                       4469 _ampersand_command_handler:
                                   4470 ;	src/main.c:558: command_header("\r\n Dump Buffer");
      003686 90 55 88         [24] 4471 	mov	dptr,#___str_43
      003689 75 F0 80         [24] 4472 	mov	b,#0x80
      00368C 12 29 51         [24] 4473 	lcall	_command_header
                                   4474 ;	src/main.c:559: size_t length = ll_length(&dynamic_buffers_list);
      00368F 90 20 D3         [24] 4475 	mov	dptr,#_dynamic_buffers_list
      003692 75 F0 00         [24] 4476 	mov	b,#0x00
      003695 12 3E CD         [24] 4477 	lcall	_ll_length
      003698 AE 82            [24] 4478 	mov	r6,dpl
      00369A AF 83            [24] 4479 	mov	r7,dph
                                   4480 ;	src/main.c:560: printf("\r\nEnter a valid buffer # [2-%zu]: ", length + MIN_DYNAMIC_BUFFER_NUM - 1);
      00369C 74 01            [12] 4481 	mov	a,#0x01
      00369E 2E               [12] 4482 	add	a,r6
      00369F FC               [12] 4483 	mov	r4,a
      0036A0 E4               [12] 4484 	clr	a
      0036A1 3F               [12] 4485 	addc	a,r7
      0036A2 FD               [12] 4486 	mov	r5,a
      0036A3 C0 07            [24] 4487 	push	ar7
      0036A5 C0 06            [24] 4488 	push	ar6
      0036A7 C0 04            [24] 4489 	push	ar4
      0036A9 C0 05            [24] 4490 	push	ar5
      0036AB 74 97            [12] 4491 	mov	a,#___str_44
      0036AD C0 E0            [24] 4492 	push	acc
      0036AF 74 55            [12] 4493 	mov	a,#(___str_44 >> 8)
      0036B1 C0 E0            [24] 4494 	push	acc
      0036B3 74 80            [12] 4495 	mov	a,#0x80
      0036B5 C0 E0            [24] 4496 	push	acc
      0036B7 12 45 56         [24] 4497 	lcall	_printf
      0036BA E5 81            [12] 4498 	mov	a,sp
      0036BC 24 FB            [12] 4499 	add	a,#0xfb
      0036BE F5 81            [12] 4500 	mov	sp,a
                                   4501 ;	src/main.c:561: get_string();
      0036C0 12 39 A9         [24] 4502 	lcall	_get_string
                                   4503 ;	src/main.c:562: int selected_buffer = atoi(get_input_buffer());
      0036C3 12 39 A2         [24] 4504 	lcall	_get_input_buffer
      0036C6 12 42 04         [24] 4505 	lcall	_atoi
      0036C9 AC 82            [24] 4506 	mov	r4,dpl
      0036CB AD 83            [24] 4507 	mov	r5,dph
      0036CD D0 06            [24] 4508 	pop	ar6
      0036CF D0 07            [24] 4509 	pop	ar7
                                   4510 ;	src/main.c:563: if (selected_buffer < MIN_DYNAMIC_BUFFER_NUM || selected_buffer >= (MIN_DYNAMIC_BUFFER_NUM + length))
      0036D1 C3               [12] 4511 	clr	c
      0036D2 EC               [12] 4512 	mov	a,r4
      0036D3 94 02            [12] 4513 	subb	a,#0x02
      0036D5 ED               [12] 4514 	mov	a,r5
      0036D6 64 80            [12] 4515 	xrl	a,#0x80
      0036D8 94 80            [12] 4516 	subb	a,#0x80
      0036DA 40 12            [24] 4517 	jc	00101$
      0036DC 74 02            [12] 4518 	mov	a,#0x02
      0036DE 2E               [12] 4519 	add	a,r6
      0036DF FE               [12] 4520 	mov	r6,a
      0036E0 E4               [12] 4521 	clr	a
      0036E1 3F               [12] 4522 	addc	a,r7
      0036E2 FF               [12] 4523 	mov	r7,a
      0036E3 8C 02            [24] 4524 	mov	ar2,r4
      0036E5 8D 03            [24] 4525 	mov	ar3,r5
      0036E7 C3               [12] 4526 	clr	c
      0036E8 EA               [12] 4527 	mov	a,r2
      0036E9 9E               [12] 4528 	subb	a,r6
      0036EA EB               [12] 4529 	mov	a,r3
      0036EB 9F               [12] 4530 	subb	a,r7
      0036EC 40 16            [24] 4531 	jc	00102$
      0036EE                       4532 00101$:
                                   4533 ;	src/main.c:565: printf("\r\nInvalid buffer number; returning to prompt");
      0036EE 74 BA            [12] 4534 	mov	a,#___str_45
      0036F0 C0 E0            [24] 4535 	push	acc
      0036F2 74 55            [12] 4536 	mov	a,#(___str_45 >> 8)
      0036F4 C0 E0            [24] 4537 	push	acc
      0036F6 74 80            [12] 4538 	mov	a,#0x80
      0036F8 C0 E0            [24] 4539 	push	acc
      0036FA 12 45 56         [24] 4540 	lcall	_printf
      0036FD 15 81            [12] 4541 	dec	sp
      0036FF 15 81            [12] 4542 	dec	sp
      003701 15 81            [12] 4543 	dec	sp
                                   4544 ;	src/main.c:566: return;
      003703 22               [24] 4545 	ret
      003704                       4546 00102$:
                                   4547 ;	src/main.c:569: buffer_t *buffer = ll_get_elem(&dynamic_buffers_list, (size_t) (selected_buffer - 2));
      003704 EC               [12] 4548 	mov	a,r4
      003705 24 FE            [12] 4549 	add	a,#0xfe
      003707 FE               [12] 4550 	mov	r6,a
      003708 ED               [12] 4551 	mov	a,r5
      003709 34 FF            [12] 4552 	addc	a,#0xff
      00370B FF               [12] 4553 	mov	r7,a
      00370C 90 20 6C         [24] 4554 	mov	dptr,#_ll_get_elem_PARM_2
      00370F EE               [12] 4555 	mov	a,r6
      003710 F0               [24] 4556 	movx	@dptr,a
      003711 EF               [12] 4557 	mov	a,r7
      003712 A3               [24] 4558 	inc	dptr
      003713 F0               [24] 4559 	movx	@dptr,a
      003714 90 20 D3         [24] 4560 	mov	dptr,#_dynamic_buffers_list
      003717 75 F0 00         [24] 4561 	mov	b,#0x00
      00371A C0 05            [24] 4562 	push	ar5
      00371C C0 04            [24] 4563 	push	ar4
      00371E 12 3F 58         [24] 4564 	lcall	_ll_get_elem
      003721 AB 82            [24] 4565 	mov	r3,dpl
      003723 AE 83            [24] 4566 	mov	r6,dph
      003725 AF F0            [24] 4567 	mov	r7,b
      003727 D0 04            [24] 4568 	pop	ar4
      003729 D0 05            [24] 4569 	pop	ar5
                                   4570 ;	src/main.c:571: if (buffer == NULL)
      00372B EB               [12] 4571 	mov	a,r3
      00372C 4E               [12] 4572 	orl	a,r6
      00372D 70 16            [24] 4573 	jnz	00105$
                                   4574 ;	src/main.c:573: printf("\r\nLL error; returning to prompt");
      00372F 74 E7            [12] 4575 	mov	a,#___str_46
      003731 C0 E0            [24] 4576 	push	acc
      003733 74 55            [12] 4577 	mov	a,#(___str_46 >> 8)
      003735 C0 E0            [24] 4578 	push	acc
      003737 74 80            [12] 4579 	mov	a,#0x80
      003739 C0 E0            [24] 4580 	push	acc
      00373B 12 45 56         [24] 4581 	lcall	_printf
      00373E 15 81            [12] 4582 	dec	sp
      003740 15 81            [12] 4583 	dec	sp
      003742 15 81            [12] 4584 	dec	sp
                                   4585 ;	src/main.c:574: return;
      003744 22               [24] 4586 	ret
      003745                       4587 00105$:
                                   4588 ;	src/main.c:577: printf("\r\n Buffer %d", selected_buffer);
      003745 C0 07            [24] 4589 	push	ar7
      003747 C0 06            [24] 4590 	push	ar6
      003749 C0 03            [24] 4591 	push	ar3
      00374B C0 04            [24] 4592 	push	ar4
      00374D C0 05            [24] 4593 	push	ar5
      00374F 74 07            [12] 4594 	mov	a,#___str_47
      003751 C0 E0            [24] 4595 	push	acc
      003753 74 56            [12] 4596 	mov	a,#(___str_47 >> 8)
      003755 C0 E0            [24] 4597 	push	acc
      003757 74 80            [12] 4598 	mov	a,#0x80
      003759 C0 E0            [24] 4599 	push	acc
      00375B 12 45 56         [24] 4600 	lcall	_printf
      00375E E5 81            [12] 4601 	mov	a,sp
      003760 24 FB            [12] 4602 	add	a,#0xfb
      003762 F5 81            [12] 4603 	mov	sp,a
                                   4604 ;	src/main.c:578: printf("\r\n----------");
      003764 74 E4            [12] 4605 	mov	a,#___str_22
      003766 C0 E0            [24] 4606 	push	acc
      003768 74 52            [12] 4607 	mov	a,#(___str_22 >> 8)
      00376A C0 E0            [24] 4608 	push	acc
      00376C 74 80            [12] 4609 	mov	a,#0x80
      00376E C0 E0            [24] 4610 	push	acc
      003770 12 45 56         [24] 4611 	lcall	_printf
      003773 15 81            [12] 4612 	dec	sp
      003775 15 81            [12] 4613 	dec	sp
      003777 15 81            [12] 4614 	dec	sp
      003779 D0 03            [24] 4615 	pop	ar3
      00377B D0 06            [24] 4616 	pop	ar6
      00377D D0 07            [24] 4617 	pop	ar7
                                   4618 ;	src/main.c:579: for(char *address = buffer->buffer; address < (buffer->buffer + buffer->size); address++)
      00377F 8B 82            [24] 4619 	mov	dpl,r3
      003781 8E 83            [24] 4620 	mov	dph,r6
      003783 8F F0            [24] 4621 	mov	b,r7
      003785 12 4F 82         [24] 4622 	lcall	__gptrget
      003788 FC               [12] 4623 	mov	r4,a
      003789 A3               [24] 4624 	inc	dptr
      00378A 12 4F 82         [24] 4625 	lcall	__gptrget
      00378D FA               [12] 4626 	mov	r2,a
      00378E 7D 00            [12] 4627 	mov	r5,#0x00
      003790 74 04            [12] 4628 	mov	a,#0x04
      003792 2B               [12] 4629 	add	a,r3
      003793 F5 57            [12] 4630 	mov	_ampersand_command_handler_sloc0_1_0,a
      003795 E4               [12] 4631 	clr	a
      003796 3E               [12] 4632 	addc	a,r6
      003797 F5 58            [12] 4633 	mov	(_ampersand_command_handler_sloc0_1_0 + 1),a
      003799 8F 59            [24] 4634 	mov	(_ampersand_command_handler_sloc0_1_0 + 2),r7
      00379B                       4635 00110$:
      00379B 8B 82            [24] 4636 	mov	dpl,r3
      00379D 8E 83            [24] 4637 	mov	dph,r6
      00379F 8F F0            [24] 4638 	mov	b,r7
      0037A1 12 4F 82         [24] 4639 	lcall	__gptrget
      0037A4 F8               [12] 4640 	mov	r0,a
      0037A5 A3               [24] 4641 	inc	dptr
      0037A6 12 4F 82         [24] 4642 	lcall	__gptrget
      0037A9 F9               [12] 4643 	mov	r1,a
      0037AA C0 03            [24] 4644 	push	ar3
      0037AC C0 06            [24] 4645 	push	ar6
      0037AE C0 07            [24] 4646 	push	ar7
      0037B0 85 57 82         [24] 4647 	mov	dpl,_ampersand_command_handler_sloc0_1_0
      0037B3 85 58 83         [24] 4648 	mov	dph,(_ampersand_command_handler_sloc0_1_0 + 1)
      0037B6 85 59 F0         [24] 4649 	mov	b,(_ampersand_command_handler_sloc0_1_0 + 2)
      0037B9 12 4F 82         [24] 4650 	lcall	__gptrget
      0037BC FE               [12] 4651 	mov	r6,a
      0037BD A3               [24] 4652 	inc	dptr
      0037BE 12 4F 82         [24] 4653 	lcall	__gptrget
      0037C1 FF               [12] 4654 	mov	r7,a
      0037C2 EE               [12] 4655 	mov	a,r6
      0037C3 28               [12] 4656 	add	a,r0
      0037C4 F5 5A            [12] 4657 	mov	_ampersand_command_handler_sloc1_1_0,a
      0037C6 EF               [12] 4658 	mov	a,r7
      0037C7 39               [12] 4659 	addc	a,r1
      0037C8 F5 5B            [12] 4660 	mov	(_ampersand_command_handler_sloc1_1_0 + 1),a
      0037CA 8C 5C            [24] 4661 	mov	_ampersand_command_handler_sloc2_1_0,r4
      0037CC 8A 5D            [24] 4662 	mov	(_ampersand_command_handler_sloc2_1_0 + 1),r2
      0037CE 8D 5E            [24] 4663 	mov	(_ampersand_command_handler_sloc2_1_0 + 2),r5
      0037D0 AB 5A            [24] 4664 	mov	r3,_ampersand_command_handler_sloc1_1_0
      0037D2 AE 5B            [24] 4665 	mov	r6,(_ampersand_command_handler_sloc1_1_0 + 1)
      0037D4 7F 00            [12] 4666 	mov	r7,#0x00
      0037D6 C0 03            [24] 4667 	push	ar3
      0037D8 C0 06            [24] 4668 	push	ar6
      0037DA C0 07            [24] 4669 	push	ar7
      0037DC 85 5C 82         [24] 4670 	mov	dpl,_ampersand_command_handler_sloc2_1_0
      0037DF 85 5D 83         [24] 4671 	mov	dph,(_ampersand_command_handler_sloc2_1_0 + 1)
      0037E2 85 5E F0         [24] 4672 	mov	b,(_ampersand_command_handler_sloc2_1_0 + 2)
      0037E5 12 20 06         [24] 4673 	lcall	___gptr_cmp
      0037E8 15 81            [12] 4674 	dec	sp
      0037EA 15 81            [12] 4675 	dec	sp
      0037EC 15 81            [12] 4676 	dec	sp
      0037EE D0 07            [24] 4677 	pop	ar7
      0037F0 D0 06            [24] 4678 	pop	ar6
      0037F2 D0 03            [24] 4679 	pop	ar3
      0037F4 40 03            [24] 4680 	jc	00138$
      0037F6 02 38 8E         [24] 4681 	ljmp	00108$
      0037F9                       4682 00138$:
                                   4683 ;	src/main.c:581: if (MODULE_32(address-buffer->buffer) == 0)
      0037F9 EC               [12] 4684 	mov	a,r4
      0037FA C3               [12] 4685 	clr	c
      0037FB 98               [12] 4686 	subb	a,r0
      0037FC F8               [12] 4687 	mov	r0,a
      0037FD EA               [12] 4688 	mov	a,r2
      0037FE 99               [12] 4689 	subb	a,r1
      0037FF E8               [12] 4690 	mov	a,r0
      003800 54 1F            [12] 4691 	anl	a,#0x1f
      003802 70 43            [24] 4692 	jnz	00107$
                                   4693 ;	src/main.c:583: printf("\r\n%04X:", (unsigned int) address);
      003804 C0 03            [24] 4694 	push	ar3
      003806 C0 06            [24] 4695 	push	ar6
      003808 C0 07            [24] 4696 	push	ar7
      00380A 8C 00            [24] 4697 	mov	ar0,r4
      00380C 8A 01            [24] 4698 	mov	ar1,r2
      00380E 8D 07            [24] 4699 	mov	ar7,r5
      003810 C0 07            [24] 4700 	push	ar7
      003812 C0 06            [24] 4701 	push	ar6
      003814 C0 05            [24] 4702 	push	ar5
      003816 C0 04            [24] 4703 	push	ar4
      003818 C0 03            [24] 4704 	push	ar3
      00381A C0 02            [24] 4705 	push	ar2
      00381C C0 00            [24] 4706 	push	ar0
      00381E C0 01            [24] 4707 	push	ar1
      003820 74 F1            [12] 4708 	mov	a,#___str_23
      003822 C0 E0            [24] 4709 	push	acc
      003824 74 52            [12] 4710 	mov	a,#(___str_23 >> 8)
      003826 C0 E0            [24] 4711 	push	acc
      003828 74 80            [12] 4712 	mov	a,#0x80
      00382A C0 E0            [24] 4713 	push	acc
      00382C 12 45 56         [24] 4714 	lcall	_printf
      00382F E5 81            [12] 4715 	mov	a,sp
      003831 24 FB            [12] 4716 	add	a,#0xfb
      003833 F5 81            [12] 4717 	mov	sp,a
      003835 D0 02            [24] 4718 	pop	ar2
      003837 D0 03            [24] 4719 	pop	ar3
      003839 D0 04            [24] 4720 	pop	ar4
      00383B D0 05            [24] 4721 	pop	ar5
      00383D D0 06            [24] 4722 	pop	ar6
      00383F D0 07            [24] 4723 	pop	ar7
                                   4724 ;	src/main.c:588: printf("\r\n");
      003841 D0 07            [24] 4725 	pop	ar7
      003843 D0 06            [24] 4726 	pop	ar6
      003845 D0 03            [24] 4727 	pop	ar3
                                   4728 ;	src/main.c:583: printf("\r\n%04X:", (unsigned int) address);
      003847                       4729 00107$:
                                   4730 ;	src/main.c:585: printf(" %02hhX", (unsigned char) *address);
      003847 8C 82            [24] 4731 	mov	dpl,r4
      003849 8A 83            [24] 4732 	mov	dph,r2
      00384B 8D F0            [24] 4733 	mov	b,r5
      00384D 12 4F 82         [24] 4734 	lcall	__gptrget
      003850 F9               [12] 4735 	mov	r1,a
      003851 A3               [24] 4736 	inc	dptr
      003852 AC 82            [24] 4737 	mov	r4,dpl
      003854 AA 83            [24] 4738 	mov	r2,dph
      003856 89 00            [24] 4739 	mov	ar0,r1
      003858 79 00            [12] 4740 	mov	r1,#0x00
      00385A C0 07            [24] 4741 	push	ar7
      00385C C0 06            [24] 4742 	push	ar6
      00385E C0 05            [24] 4743 	push	ar5
      003860 C0 04            [24] 4744 	push	ar4
      003862 C0 03            [24] 4745 	push	ar3
      003864 C0 02            [24] 4746 	push	ar2
      003866 C0 00            [24] 4747 	push	ar0
      003868 C0 01            [24] 4748 	push	ar1
      00386A 74 F9            [12] 4749 	mov	a,#___str_24
      00386C C0 E0            [24] 4750 	push	acc
      00386E 74 52            [12] 4751 	mov	a,#(___str_24 >> 8)
      003870 C0 E0            [24] 4752 	push	acc
      003872 74 80            [12] 4753 	mov	a,#0x80
      003874 C0 E0            [24] 4754 	push	acc
      003876 12 45 56         [24] 4755 	lcall	_printf
      003879 E5 81            [12] 4756 	mov	a,sp
      00387B 24 FB            [12] 4757 	add	a,#0xfb
      00387D F5 81            [12] 4758 	mov	sp,a
      00387F D0 02            [24] 4759 	pop	ar2
      003881 D0 03            [24] 4760 	pop	ar3
      003883 D0 04            [24] 4761 	pop	ar4
      003885 D0 05            [24] 4762 	pop	ar5
      003887 D0 06            [24] 4763 	pop	ar6
      003889 D0 07            [24] 4764 	pop	ar7
                                   4765 ;	src/main.c:579: for(char *address = buffer->buffer; address < (buffer->buffer + buffer->size); address++)
      00388B 02 37 9B         [24] 4766 	ljmp	00110$
      00388E                       4767 00108$:
                                   4768 ;	src/main.c:588: printf("\r\n");
      00388E 74 A7            [12] 4769 	mov	a,#___str_12
      003890 C0 E0            [24] 4770 	push	acc
      003892 74 51            [12] 4771 	mov	a,#(___str_12 >> 8)
      003894 C0 E0            [24] 4772 	push	acc
      003896 74 80            [12] 4773 	mov	a,#0x80
      003898 C0 E0            [24] 4774 	push	acc
      00389A 12 45 56         [24] 4775 	lcall	_printf
      00389D 15 81            [12] 4776 	dec	sp
      00389F 15 81            [12] 4777 	dec	sp
      0038A1 15 81            [12] 4778 	dec	sp
                                   4779 ;	src/main.c:591: }
      0038A3 22               [24] 4780 	ret
                                   4781 ;------------------------------------------------------------
                                   4782 ;Allocation info for local variables in function 'main'
                                   4783 ;------------------------------------------------------------
                                   4784 ;c                         Allocated with name '_main_c_65537_202'
                                   4785 ;received_char             Allocated with name '_main_received_char_196610_205'
                                   4786 ;------------------------------------------------------------
                                   4787 ;	src/main.c:595: void main()
                                   4788 ;	-----------------------------------------
                                   4789 ;	 function main
                                   4790 ;	-----------------------------------------
      0038A4                       4791 _main:
                                   4792 ;	src/main.c:597: initialize_buffers();
      0038A4 12 22 29         [24] 4793 	lcall	_initialize_buffers
                                   4794 ;	src/main.c:598: unsigned char c = 0;
      0038A7                       4795 00118$:
                                   4796 ;	src/main.c:603: printf("\r\nEnter a char: ");
      0038A7 74 14            [12] 4797 	mov	a,#___str_48
      0038A9 C0 E0            [24] 4798 	push	acc
      0038AB 74 56            [12] 4799 	mov	a,#(___str_48 >> 8)
      0038AD C0 E0            [24] 4800 	push	acc
      0038AF 74 80            [12] 4801 	mov	a,#0x80
      0038B1 C0 E0            [24] 4802 	push	acc
      0038B3 12 45 56         [24] 4803 	lcall	_printf
      0038B6 15 81            [12] 4804 	dec	sp
      0038B8 15 81            [12] 4805 	dec	sp
      0038BA 15 81            [12] 4806 	dec	sp
                                   4807 ;	src/main.c:604: char received_char = get_next_input_char();
      0038BC 12 3A DD         [24] 4808 	lcall	_get_next_input_char
                                   4809 ;	src/main.c:605: if (is_alphabet_char(received_char))
      0038BF AF 82            [24] 4810 	mov  r7,dpl
      0038C1 C0 07            [24] 4811 	push	ar7
      0038C3 12 20 94         [24] 4812 	lcall	_is_alphabet_char
      0038C6 E5 82            [12] 4813 	mov	a,dpl
      0038C8 D0 07            [24] 4814 	pop	ar7
      0038CA 60 14            [24] 4815 	jz	00102$
                                   4816 ;	src/main.c:607: store_in_buffer(&static_buffers[0], received_char);
      0038CC 90 00 25         [24] 4817 	mov	dptr,#_store_in_buffer_PARM_2
      0038CF EF               [12] 4818 	mov	a,r7
      0038D0 F0               [24] 4819 	movx	@dptr,a
      0038D1 90 00 01         [24] 4820 	mov	dptr,#_static_buffers
      0038D4 75 F0 00         [24] 4821 	mov	b,#0x00
      0038D7 C0 07            [24] 4822 	push	ar7
      0038D9 12 28 55         [24] 4823 	lcall	_store_in_buffer
      0038DC D0 07            [24] 4824 	pop	ar7
      0038DE 80 12            [24] 4825 	sjmp	00103$
      0038E0                       4826 00102$:
                                   4827 ;	src/main.c:611: store_in_buffer(&static_buffers[1], received_char);
      0038E0 90 00 25         [24] 4828 	mov	dptr,#_store_in_buffer_PARM_2
      0038E3 EF               [12] 4829 	mov	a,r7
      0038E4 F0               [24] 4830 	movx	@dptr,a
      0038E5 90 00 0C         [24] 4831 	mov	dptr,#(_static_buffers + 0x000b)
      0038E8 75 F0 00         [24] 4832 	mov	b,#0x00
      0038EB C0 07            [24] 4833 	push	ar7
      0038ED 12 28 55         [24] 4834 	lcall	_store_in_buffer
      0038F0 D0 07            [24] 4835 	pop	ar7
      0038F2                       4836 00103$:
                                   4837 ;	src/main.c:614: switch(received_char)
      0038F2 BF 23 02         [24] 4838 	cjne	r7,#0x23,00170$
      0038F5 80 4C            [24] 4839 	sjmp	00109$
      0038F7                       4840 00170$:
      0038F7 BF 24 02         [24] 4841 	cjne	r7,#0x24,00171$
      0038FA 80 42            [24] 4842 	sjmp	00108$
      0038FC                       4843 00171$:
      0038FC BF 25 02         [24] 4844 	cjne	r7,#0x25,00172$
      0038FF 80 30            [24] 4845 	sjmp	00106$
      003901                       4846 00172$:
      003901 BF 26 02         [24] 4847 	cjne	r7,#0x26,00173$
      003904 80 51            [24] 4848 	sjmp	00113$
      003906                       4849 00173$:
      003906 BF 2A 02         [24] 4850 	cjne	r7,#0x2a,00174$
      003909 80 47            [24] 4851 	sjmp	00112$
      00390B                       4852 00174$:
      00390B BF 2B 02         [24] 4853 	cjne	r7,#0x2b,00175$
      00390E 80 38            [24] 4854 	sjmp	00110$
      003910                       4855 00175$:
      003910 BF 2D 02         [24] 4856 	cjne	r7,#0x2d,00176$
      003913 80 38            [24] 4857 	sjmp	00111$
      003915                       4858 00176$:
      003915 BF 3D 02         [24] 4859 	cjne	r7,#0x3d,00177$
      003918 80 12            [24] 4860 	sjmp	00105$
      00391A                       4861 00177$:
      00391A BF 3F 02         [24] 4862 	cjne	r7,#0x3f,00178$
      00391D 80 08            [24] 4863 	sjmp	00104$
      00391F                       4864 00178$:
      00391F BF 40 02         [24] 4865 	cjne	r7,#0x40,00179$
      003922 80 12            [24] 4866 	sjmp	00107$
      003924                       4867 00179$:
      003924 02 38 A7         [24] 4868 	ljmp	00118$
                                   4869 ;	src/main.c:616: case '?':
      003927                       4870 00104$:
                                   4871 ;	src/main.c:617: qmark_command_handler();
      003927 12 2D 6A         [24] 4872 	lcall	_qmark_command_handler
                                   4873 ;	src/main.c:618: break;
                                   4874 ;	src/main.c:619: case '=':
      00392A 80 2E            [24] 4875 	sjmp	00115$
      00392C                       4876 00105$:
                                   4877 ;	src/main.c:620: enter_command_handler();
      00392C 12 2F 8F         [24] 4878 	lcall	_enter_command_handler
                                   4879 ;	src/main.c:621: break;
                                   4880 ;	src/main.c:622: case '%':
      00392F 80 29            [24] 4881 	sjmp	00115$
      003931                       4882 00106$:
                                   4883 ;	src/main.c:623: percent_command_handler();
      003931 12 31 3C         [24] 4884 	lcall	_percent_command_handler
                                   4885 ;	src/main.c:624: break;
                                   4886 ;	src/main.c:625: case '@':
      003934 80 24            [24] 4887 	sjmp	00115$
      003936                       4888 00107$:
                                   4889 ;	src/main.c:626: free_all_buffers();
      003936 12 2C B7         [24] 4890 	lcall	_free_all_buffers
                                   4891 ;	src/main.c:627: initialize_buffers();
      003939 12 22 29         [24] 4892 	lcall	_initialize_buffers
                                   4893 ;	src/main.c:628: break;
                                   4894 ;	src/main.c:629: case '$':
      00393C 80 1C            [24] 4895 	sjmp	00115$
      00393E                       4896 00108$:
                                   4897 ;	src/main.c:630: dollar_sign_command_handler();
      00393E 12 32 B8         [24] 4898 	lcall	_dollar_sign_command_handler
                                   4899 ;	src/main.c:631: break;
                                   4900 ;	src/main.c:632: case '#':
      003941 80 17            [24] 4901 	sjmp	00115$
      003943                       4902 00109$:
                                   4903 ;	src/main.c:633: hashtag_command_handler();
      003943 12 33 D7         [24] 4904 	lcall	_hashtag_command_handler
                                   4905 ;	src/main.c:634: break;
                                   4906 ;	src/main.c:635: case '+':
      003946 80 12            [24] 4907 	sjmp	00115$
      003948                       4908 00110$:
                                   4909 ;	src/main.c:636: plus_command_handler();
      003948 12 34 C9         [24] 4910 	lcall	_plus_command_handler
                                   4911 ;	src/main.c:637: break;
                                   4912 ;	src/main.c:638: case '-':
      00394B 80 0D            [24] 4913 	sjmp	00115$
      00394D                       4914 00111$:
                                   4915 ;	src/main.c:639: minus_command_handler();
      00394D 12 35 75         [24] 4916 	lcall	_minus_command_handler
                                   4917 ;	src/main.c:640: break;
                                   4918 ;	src/main.c:641: case '*':
      003950 80 08            [24] 4919 	sjmp	00115$
      003952                       4920 00112$:
                                   4921 ;	src/main.c:642: star_command_handler();
      003952 12 36 69         [24] 4922 	lcall	_star_command_handler
                                   4923 ;	src/main.c:643: break;
                                   4924 ;	src/main.c:644: case '&':
      003955 80 03            [24] 4925 	sjmp	00115$
      003957                       4926 00113$:
                                   4927 ;	src/main.c:645: ampersand_command_handler();
      003957 12 36 86         [24] 4928 	lcall	_ampersand_command_handler
                                   4929 ;	src/main.c:649: }
      00395A                       4930 00115$:
                                   4931 ;	src/main.c:650: printf("\r\nEND COMMAND");
      00395A 74 25            [12] 4932 	mov	a,#___str_49
      00395C C0 E0            [24] 4933 	push	acc
      00395E 74 56            [12] 4934 	mov	a,#(___str_49 >> 8)
      003960 C0 E0            [24] 4935 	push	acc
      003962 74 80            [12] 4936 	mov	a,#0x80
      003964 C0 E0            [24] 4937 	push	acc
      003966 12 45 56         [24] 4938 	lcall	_printf
      003969 15 81            [12] 4939 	dec	sp
      00396B 15 81            [12] 4940 	dec	sp
      00396D 15 81            [12] 4941 	dec	sp
                                   4942 ;	src/main.c:651: print_dashed_line();
      00396F 12 29 3B         [24] 4943 	lcall	_print_dashed_line
                                   4944 ;	src/main.c:653: }
      003972 02 38 A7         [24] 4945 	ljmp	00118$
                                   4946 	.area CSEG    (CODE)
                                   4947 	.area CONST   (CODE)
                                   4948 	.area CONST   (CODE)
      004F9E                       4949 ___str_0:
      004F9E 0D                    4950 	.db 0x0d
      004F9F 0A                    4951 	.db 0x0a
      004FA0 50 6C 65 61 73 65 20  4952 	.ascii "Please enter the last two digits of your ID:"
             65 6E 74 65 72 20 74
             68 65 20 6C 61 73 74
             20 74 77 6F 20 64 69
             67 69 74 73 20 6F 66
             20 79 6F 75 72 20 49
             44 3A
      004FCC 00                    4953 	.db 0x00
                                   4954 	.area CSEG    (CODE)
                                   4955 	.area CONST   (CODE)
      004FCD                       4956 ___str_1:
      004FCD 0D                    4957 	.db 0x0d
      004FCE 0A                    4958 	.db 0x0a
      004FCF 20 44 69 64 20 6E 6F  4959 	.ascii " Did not enter valid two digit number, please try again"
             74 20 65 6E 74 65 72
             20 76 61 6C 69 64 20
             74 77 6F 20 64 69 67
             69 74 20 6E 75 6D 62
             65 72 2C 20 70 6C 65
             61 73 65 20 74 72 79
             20 61 67 61 69 6E
      005006 00                    4960 	.db 0x00
                                   4961 	.area CSEG    (CODE)
                                   4962 	.area CONST   (CODE)
      005007                       4963 ___str_2:
      005007 0D                    4964 	.db 0x0d
      005008 0A                    4965 	.db 0x0a
      005009 41 74 6F 69 20 65 72  4966 	.ascii "Atoi error: number invalid or out of range, please try again"
             72 6F 72 3A 20 6E 75
             6D 62 65 72 20 69 6E
             76 61 6C 69 64 20 6F
             72 20 6F 75 74 20 6F
             66 20 72 61 6E 67 65
             2C 20 70 6C 65 61 73
             65 20 74 72 79 20 61
             67 61 69 6E
      005045 00                    4967 	.db 0x00
                                   4968 	.area CSEG    (CODE)
                                   4969 	.area CONST   (CODE)
      005046                       4970 ___str_3:
      005046 0D                    4971 	.db 0x0d
      005047 0A                    4972 	.db 0x0a
      005048 42 75 66 66 65 72 20  4973 	.ascii "Buffer Size too big, please pick a smaller buffer size"
             53 69 7A 65 20 74 6F
             6F 20 62 69 67 2C 20
             70 6C 65 61 73 65 20
             70 69 63 6B 20 61 20
             73 6D 61 6C 6C 65 72
             20 62 75 66 66 65 72
             20 73 69 7A 65
      00507E 00                    4974 	.db 0x00
                                   4975 	.area CSEG    (CODE)
                                   4976 	.area CONST   (CODE)
      00507F                       4977 ___str_4:
      00507F 0D                    4978 	.db 0x0d
      005080 0A                    4979 	.db 0x0a
      005081 73 74 75 64 65 6E 74  4980 	.ascii "student_number: %d"
             5F 6E 75 6D 62 65 72
             3A 20 25 64
      005093 00                    4981 	.db 0x00
                                   4982 	.area CSEG    (CODE)
                                   4983 	.area CONST   (CODE)
      005094                       4984 ___str_5:
      005094 0D                    4985 	.db 0x0d
      005095 0A                    4986 	.db 0x0a
      005096 75 73 65 72 5F 62 75  4987 	.ascii "user_buffer_size: %zu"
             66 66 65 72 5F 73 69
             7A 65 3A 20 25 7A 75
      0050AB 00                    4988 	.db 0x00
                                   4989 	.area CSEG    (CODE)
                                   4990 	.area CONST   (CODE)
      0050AC                       4991 ___str_6:
      0050AC 0D                    4992 	.db 0x0d
      0050AD 0A                    4993 	.db 0x0a
      0050AE 62 75 66 66 65 72 5F  4994 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75
      0050D7 00                    4995 	.db 0x00
                                   4996 	.area CSEG    (CODE)
                                   4997 	.area CONST   (CODE)
      0050D8                       4998 ___str_7:
      0050D8 0D                    4999 	.db 0x0d
      0050D9 0A                    5000 	.db 0x0a
      0050DA 48 65 61 70 20 73 74  5001 	.ascii "Heap starts @ %p, ends @ %p, size: %zu"
             61 72 74 73 20 40 20
             25 70 2C 20 65 6E 64
             73 20 40 20 25 70 2C
             20 73 69 7A 65 3A 20
             25 7A 75
      005100 00                    5002 	.db 0x00
                                   5003 	.area CSEG    (CODE)
                                   5004 	.area CONST   (CODE)
      005101                       5005 ___str_8:
      005101 0D                    5006 	.db 0x0d
      005102 0A                    5007 	.db 0x0a
      005103 2D 2D 2D 2D 2D 2D 2D  5008 	.ascii "------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D
      005133 00                    5009 	.db 0x00
                                   5010 	.area CSEG    (CODE)
                                   5011 	.area CONST   (CODE)
      005134                       5012 ___str_9:
      005134 0D                    5013 	.db 0x0d
      005135 0A                    5014 	.db 0x0a
      005136 25 73                 5015 	.ascii "%s"
      005138 00                    5016 	.db 0x00
                                   5017 	.area CSEG    (CODE)
                                   5018 	.area CONST   (CODE)
      005139                       5019 ___str_10:
      005139 48 65 61 70 20 52 65  5020 	.ascii "Heap Report"
             70 6F 72 74
      005144 00                    5021 	.db 0x00
                                   5022 	.area CSEG    (CODE)
                                   5023 	.area CONST   (CODE)
      005145                       5024 ___str_11:
      005145 0D                    5025 	.db 0x0d
      005146 0A                    5026 	.db 0x0a
      005147 62 75 66 66 65 72 5F  5027 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu, contains %zu alph"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75 2C
             20 63 6F 6E 74 61 69
             6E 73 20 25 7A 75 20
             61 6C 70 68
      005183 61 62 65 74 20 63 68  5028 	.ascii "abet chars, has %zu chars remaining"
             61 72 73 2C 20 68 61
             73 20 25 7A 75 20 63
             68 61 72 73 20 72 65
             6D 61 69 6E 69 6E 67
      0051A6 00                    5029 	.db 0x00
                                   5030 	.area CSEG    (CODE)
                                   5031 	.area CONST   (CODE)
      0051A7                       5032 ___str_12:
      0051A7 0D                    5033 	.db 0x0d
      0051A8 0A                    5034 	.db 0x0a
      0051A9 00                    5035 	.db 0x00
                                   5036 	.area CSEG    (CODE)
                                   5037 	.area CONST   (CODE)
      0051AA                       5038 ___str_13:
      0051AA 0D                    5039 	.db 0x0d
      0051AB 0A                    5040 	.db 0x0a
      0051AC 50 6C 65 61 73 65 20  5041 	.ascii "Please enter a valid buffer size that is divisible by 32 [64"
             65 6E 74 65 72 20 61
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             73 69 7A 65 20 74 68
             61 74 20 69 73 20 64
             69 76 69 73 69 62 6C
             65 20 62 79 20 33 32
             20 5B 36 34
      0051E8 2C 25 7A 75 5D 3A 20  5042 	.ascii ",%zu]: "
      0051EF 00                    5043 	.db 0x00
                                   5044 	.area CSEG    (CODE)
                                   5045 	.area CONST   (CODE)
      0051F0                       5046 ___str_14:
      0051F0 0D                    5047 	.db 0x0d
      0051F1 0A                    5048 	.db 0x0a
      0051F2 20 55 73 65 72 20 62  5049 	.ascii " User buffer size larger than maximum"
             75 66 66 65 72 20 73
             69 7A 65 20 6C 61 72
             67 65 72 20 74 68 61
             6E 20 6D 61 78 69 6D
             75 6D
      005217 00                    5050 	.db 0x00
                                   5051 	.area CSEG    (CODE)
                                   5052 	.area CONST   (CODE)
      005218                       5053 ___str_15:
      005218 0D                    5054 	.db 0x0d
      005219 0A                    5055 	.db 0x0a
      00521A 20 55 73 65 72 20 62  5056 	.ascii " User buffer size too small or error in conversion"
             75 66 66 65 72 20 73
             69 7A 65 20 74 6F 6F
             20 73 6D 61 6C 6C 20
             6F 72 20 65 72 72 6F
             72 20 69 6E 20 63 6F
             6E 76 65 72 73 69 6F
             6E
      00524C 00                    5057 	.db 0x00
                                   5058 	.area CSEG    (CODE)
                                   5059 	.area CONST   (CODE)
      00524D                       5060 ___str_16:
      00524D 0D                    5061 	.db 0x0d
      00524E 0A                    5062 	.db 0x0a
      00524F 20 55 73 65 72 20 62  5063 	.ascii " User buffer size is not divisible by 32"
             75 66 66 65 72 20 73
             69 7A 65 20 69 73 20
             6E 6F 74 20 64 69 76
             69 73 69 62 6C 65 20
             62 79 20 33 32
      005277 00                    5064 	.db 0x00
                                   5065 	.area CSEG    (CODE)
                                   5066 	.area CONST   (CODE)
      005278                       5067 ___str_17:
      005278 0D                    5068 	.db 0x0d
      005279 0A                    5069 	.db 0x0a
      00527A 20 46 72 65 65 69 6E  5070 	.ascii " Freeing ALL BUFFERS"
             67 20 41 4C 4C 20 42
             55 46 46 45 52 53
      00528E 00                    5071 	.db 0x00
                                   5072 	.area CSEG    (CODE)
                                   5073 	.area CONST   (CODE)
      00528F                       5074 ___str_18:
      00528F 0D                    5075 	.db 0x0d
      005290 0A                    5076 	.db 0x0a
      005291 20 52 65 63 65 69 76  5077 	.ascii " Received %zu chars since last invocation of ?"
             65 64 20 25 7A 75 20
             63 68 61 72 73 20 73
             69 6E 63 65 20 6C 61
             73 74 20 69 6E 76 6F
             63 61 74 69 6F 6E 20
             6F 66 20 3F
      0052BF 00                    5078 	.db 0x00
                                   5079 	.area CSEG    (CODE)
                                   5080 	.area CONST   (CODE)
      0052C0                       5081 ___str_19:
      0052C0 25 63                 5082 	.ascii "%c"
      0052C2 00                    5083 	.db 0x00
                                   5084 	.area CSEG    (CODE)
                                   5085 	.area CONST   (CODE)
      0052C3                       5086 ___str_20:
      0052C3 44 75 6D 70 20 41 64  5087 	.ascii "Dump Admin Buffers"
             6D 69 6E 20 42 75 66
             66 65 72 73
      0052D5 00                    5088 	.db 0x00
                                   5089 	.area CSEG    (CODE)
                                   5090 	.area CONST   (CODE)
      0052D6                       5091 ___str_21:
      0052D6 0D                    5092 	.db 0x0d
      0052D7 0A                    5093 	.db 0x0a
      0052D8 20 42 75 66 66 65 72  5094 	.ascii " Buffer %d "
             20 25 64 20
      0052E3 00                    5095 	.db 0x00
                                   5096 	.area CSEG    (CODE)
                                   5097 	.area CONST   (CODE)
      0052E4                       5098 ___str_22:
      0052E4 0D                    5099 	.db 0x0d
      0052E5 0A                    5100 	.db 0x0a
      0052E6 2D 2D 2D 2D 2D 2D 2D  5101 	.ascii "----------"
             2D 2D 2D
      0052F0 00                    5102 	.db 0x00
                                   5103 	.area CSEG    (CODE)
                                   5104 	.area CONST   (CODE)
      0052F1                       5105 ___str_23:
      0052F1 0D                    5106 	.db 0x0d
      0052F2 0A                    5107 	.db 0x0a
      0052F3 25 30 34 58 3A        5108 	.ascii "%04X:"
      0052F8 00                    5109 	.db 0x00
                                   5110 	.area CSEG    (CODE)
                                   5111 	.area CONST   (CODE)
      0052F9                       5112 ___str_24:
      0052F9 20 25 30 32 68 68 58  5113 	.ascii " %02hhX"
      005300 00                    5114 	.db 0x00
                                   5115 	.area CSEG    (CODE)
                                   5116 	.area CONST   (CODE)
      005301                       5117 ___str_25:
      005301 43 6C 65 61 72 20 42  5118 	.ascii "Clear Buffers"
             75 66 66 65 72 73
      00530E 00                    5119 	.db 0x00
                                   5120 	.area CSEG    (CODE)
                                   5121 	.area CONST   (CODE)
      00530F                       5122 ___str_26:
      00530F 43 6F 70 79 20 62 75  5123 	.ascii "Copy buffer_0 into buffer_3"
             66 66 65 72 5F 30 20
             69 6E 74 6F 20 62 75
             66 66 65 72 5F 33
      00532A 00                    5124 	.db 0x00
                                   5125 	.area CSEG    (CODE)
                                   5126 	.area CONST   (CODE)
      00532B                       5127 ___str_27:
      00532B 0D                    5128 	.db 0x0d
      00532C 0A                    5129 	.db 0x0a
      00532D 20 62 75 66 66 65 72  5130 	.ascii " buffer_3 not allocated; exiting"
             5F 33 20 6E 6F 74 20
             61 6C 6C 6F 63 61 74
             65 64 3B 20 65 78 69
             74 69 6E 67
      00534D 00                    5131 	.db 0x00
                                   5132 	.area CSEG    (CODE)
                                   5133 	.area CONST   (CODE)
      00534E                       5134 ___str_28:
      00534E 0D                    5135 	.db 0x0d
      00534F 0A                    5136 	.db 0x0a
      005350 20 44 6F 6E 65        5137 	.ascii " Done"
      005355 00                    5138 	.db 0x00
                                   5139 	.area CSEG    (CODE)
                                   5140 	.area CONST   (CODE)
      005356                       5141 ___str_29:
      005356 43 6F 6E 76 65 72 74  5142 	.ascii "Convert buffer_3 chars to lowercase"
             20 62 75 66 66 65 72
             5F 33 20 63 68 61 72
             73 20 74 6F 20 6C 6F
             77 65 72 63 61 73 65
      005379 00                    5143 	.db 0x00
                                   5144 	.area CSEG    (CODE)
                                   5145 	.area CONST   (CODE)
      00537A                       5146 ___str_30:
      00537A 0D                    5147 	.db 0x0d
      00537B 0A                    5148 	.db 0x0a
      00537C 20 41 6C 6C 6F 63 20  5149 	.ascii " Alloc Buffer"
             42 75 66 66 65 72
      005389 00                    5150 	.db 0x00
                                   5151 	.area CSEG    (CODE)
                                   5152 	.area CONST   (CODE)
      00538A                       5153 ___str_31:
      00538A 0D                    5154 	.db 0x0d
      00538B 0A                    5155 	.db 0x0a
      00538C 50 6C 65 61 73 65 20  5156 	.ascii "Please enter a size for the new buffer, [200,600]: "
             65 6E 74 65 72 20 61
             20 73 69 7A 65 20 66
             6F 72 20 74 68 65 20
             6E 65 77 20 62 75 66
             66 65 72 2C 20 5B 32
             30 30 2C 36 30 30 5D
             3A 20
      0053BF 00                    5157 	.db 0x00
                                   5158 	.area CSEG    (CODE)
                                   5159 	.area CONST   (CODE)
      0053C0                       5160 ___str_32:
      0053C0 0D                    5161 	.db 0x0d
      0053C1 0A                    5162 	.db 0x0a
      0053C2 42 75 66 66 65 72 20  5163 	.ascii "Buffer size invalid!! Please try again"
             73 69 7A 65 20 69 6E
             76 61 6C 69 64 21 21
             20 50 6C 65 61 73 65
             20 74 72 79 20 61 67
             61 69 6E
      0053E8 00                    5164 	.db 0x00
                                   5165 	.area CSEG    (CODE)
                                   5166 	.area CONST   (CODE)
      0053E9                       5167 ___str_33:
      0053E9 0D                    5168 	.db 0x0d
      0053EA 0A                    5169 	.db 0x0a
      0053EB 20 41 6C 6C 6F 63 61  5170 	.ascii " Allocation failed; able to allocate header but not buffer"
             74 69 6F 6E 20 66 61
             69 6C 65 64 3B 20 61
             62 6C 65 20 74 6F 20
             61 6C 6C 6F 63 61 74
             65 20 68 65 61 64 65
             72 20 62 75 74 20 6E
             6F 74 20 62 75 66 66
             65 72
      005425 00                    5171 	.db 0x00
                                   5172 	.area CSEG    (CODE)
                                   5173 	.area CONST   (CODE)
      005426                       5174 ___str_34:
      005426 0D                    5175 	.db 0x0d
      005427 0A                    5176 	.db 0x0a
      005428 20 41 6C 6C 6F 63 61  5177 	.ascii " Allocation successful!! New buffer added"
             74 69 6F 6E 20 73 75
             63 63 65 73 73 66 75
             6C 21 21 20 4E 65 77
             20 62 75 66 66 65 72
             20 61 64 64 65 64
      005451 00                    5178 	.db 0x00
                                   5179 	.area CSEG    (CODE)
                                   5180 	.area CONST   (CODE)
      005452                       5181 ___str_35:
      005452 46 72 65 65 20 42 75  5182 	.ascii "Free Buffer"
             66 66 65 72
      00545D 00                    5183 	.db 0x00
                                   5184 	.area CSEG    (CODE)
                                   5185 	.area CONST   (CODE)
      00545E                       5186 ___str_36:
      00545E 0D                    5187 	.db 0x0d
      00545F 0A                    5188 	.db 0x0a
      005460 50 6C 65 61 73 65 20  5189 	.ascii "Please enter the number of the buffer you would like to free"
             65 6E 74 65 72 20 74
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 74
             68 65 20 62 75 66 66
             65 72 20 79 6F 75 20
             77 6F 75 6C 64 20 6C
             69 6B 65 20 74 6F 20
             66 72 65 65
      00549C 5B 32 2D 25 7A 75 5D  5190 	.ascii "[2-%zu]: "
             3A 20
      0054A5 00                    5191 	.db 0x00
                                   5192 	.area CSEG    (CODE)
                                   5193 	.area CONST   (CODE)
      0054A6                       5194 ___str_37:
      0054A6 0D                    5195 	.db 0x0d
      0054A7 0A                    5196 	.db 0x0a
      0054A8 20 49 6E 76 61 6C 69  5197 	.ascii " Invalid buffer number, negatives not valid"
             64 20 62 75 66 66 65
             72 20 6E 75 6D 62 65
             72 2C 20 6E 65 67 61
             74 69 76 65 73 20 6E
             6F 74 20 76 61 6C 69
             64
      0054D3 00                    5198 	.db 0x00
                                   5199 	.area CSEG    (CODE)
                                   5200 	.area CONST   (CODE)
      0054D4                       5201 ___str_38:
      0054D4 0D                    5202 	.db 0x0d
      0054D5 0A                    5203 	.db 0x0a
      0054D6 20 49 6E 76 61 6C 69  5204 	.ascii " Invalid buffer number, buffers 0 & 1 are protected"
             64 20 62 75 66 66 65
             72 20 6E 75 6D 62 65
             72 2C 20 62 75 66 66
             65 72 73 20 30 20 26
             20 31 20 61 72 65 20
             70 72 6F 74 65 63 74
             65 64
      005509 00                    5205 	.db 0x00
                                   5206 	.area CSEG    (CODE)
                                   5207 	.area CONST   (CODE)
      00550A                       5208 ___str_39:
      00550A 0D                    5209 	.db 0x0d
      00550B 0A                    5210 	.db 0x0a
      00550C 20 49 6E 76 61 6C 69  5211 	.ascii " Invalid Buffer number; out of range"
             64 20 42 75 66 66 65
             72 20 6E 75 6D 62 65
             72 3B 20 6F 75 74 20
             6F 66 20 72 61 6E 67
             65
      005530 00                    5212 	.db 0x00
                                   5213 	.area CSEG    (CODE)
                                   5214 	.area CONST   (CODE)
      005531                       5215 ___str_40:
      005531 0D                    5216 	.db 0x0d
      005532 0A                    5217 	.db 0x0a
      005533 20 53 75 63 63 65 73  5218 	.ascii " Successfully removed buffer"
             73 66 75 6C 6C 79 20
             72 65 6D 6F 76 65 64
             20 62 75 66 66 65 72
      00554F 00                    5219 	.db 0x00
                                   5220 	.area CSEG    (CODE)
                                   5221 	.area CONST   (CODE)
      005550                       5222 ___str_41:
      005550 0D                    5223 	.db 0x0d
      005551 0A                    5224 	.db 0x0a
      005552 20 46 61 69 6C 65 64  5225 	.ascii " Failed to remove buffer, ll error"
             20 74 6F 20 72 65 6D
             6F 76 65 20 62 75 66
             66 65 72 2C 20 6C 6C
             20 65 72 72 6F 72
      005574 00                    5226 	.db 0x00
                                   5227 	.area CSEG    (CODE)
                                   5228 	.area CONST   (CODE)
      005575                       5229 ___str_42:
      005575 0D                    5230 	.db 0x0d
      005576 0A                    5231 	.db 0x0a
      005577 52 65 73 65 74 74 69  5232 	.ascii "Resetting device"
             6E 67 20 64 65 76 69
             63 65
      005587 00                    5233 	.db 0x00
                                   5234 	.area CSEG    (CODE)
                                   5235 	.area CONST   (CODE)
      005588                       5236 ___str_43:
      005588 0D                    5237 	.db 0x0d
      005589 0A                    5238 	.db 0x0a
      00558A 20 44 75 6D 70 20 42  5239 	.ascii " Dump Buffer"
             75 66 66 65 72
      005596 00                    5240 	.db 0x00
                                   5241 	.area CSEG    (CODE)
                                   5242 	.area CONST   (CODE)
      005597                       5243 ___str_44:
      005597 0D                    5244 	.db 0x0d
      005598 0A                    5245 	.db 0x0a
      005599 45 6E 74 65 72 20 61  5246 	.ascii "Enter a valid buffer # [2-%zu]: "
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             23 20 5B 32 2D 25 7A
             75 5D 3A 20
      0055B9 00                    5247 	.db 0x00
                                   5248 	.area CSEG    (CODE)
                                   5249 	.area CONST   (CODE)
      0055BA                       5250 ___str_45:
      0055BA 0D                    5251 	.db 0x0d
      0055BB 0A                    5252 	.db 0x0a
      0055BC 49 6E 76 61 6C 69 64  5253 	.ascii "Invalid buffer number; returning to prompt"
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             3B 20 72 65 74 75 72
             6E 69 6E 67 20 74 6F
             20 70 72 6F 6D 70 74
      0055E6 00                    5254 	.db 0x00
                                   5255 	.area CSEG    (CODE)
                                   5256 	.area CONST   (CODE)
      0055E7                       5257 ___str_46:
      0055E7 0D                    5258 	.db 0x0d
      0055E8 0A                    5259 	.db 0x0a
      0055E9 4C 4C 20 65 72 72 6F  5260 	.ascii "LL error; returning to prompt"
             72 3B 20 72 65 74 75
             72 6E 69 6E 67 20 74
             6F 20 70 72 6F 6D 70
             74
      005606 00                    5261 	.db 0x00
                                   5262 	.area CSEG    (CODE)
                                   5263 	.area CONST   (CODE)
      005607                       5264 ___str_47:
      005607 0D                    5265 	.db 0x0d
      005608 0A                    5266 	.db 0x0a
      005609 20 42 75 66 66 65 72  5267 	.ascii " Buffer %d"
             20 25 64
      005613 00                    5268 	.db 0x00
                                   5269 	.area CSEG    (CODE)
                                   5270 	.area CONST   (CODE)
      005614                       5271 ___str_48:
      005614 0D                    5272 	.db 0x0d
      005615 0A                    5273 	.db 0x0a
      005616 45 6E 74 65 72 20 61  5274 	.ascii "Enter a char: "
             20 63 68 61 72 3A 20
      005624 00                    5275 	.db 0x00
                                   5276 	.area CSEG    (CODE)
                                   5277 	.area CONST   (CODE)
      005625                       5278 ___str_49:
      005625 0D                    5279 	.db 0x0d
      005626 0A                    5280 	.db 0x0a
      005627 45 4E 44 20 43 4F 4D  5281 	.ascii "END COMMAND"
             4D 41 4E 44
      005632 00                    5282 	.db 0x00
                                   5283 	.area CSEG    (CODE)
                                   5284 	.area XINIT   (CODE)
      005640                       5285 __xinit__dynamic_buffers_list:
                                   5286 ; generic printIvalPtr
      005640 00 00 00              5287 	.byte #0x00,#0x00,#0x00
                                   5288 	.area CABS    (ABS,CODE)
