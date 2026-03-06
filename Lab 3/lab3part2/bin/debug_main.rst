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
                                     12 	.globl _minus_command_handler
                                     13 	.globl _plus_command_handler
                                     14 	.globl _hashtag_command_handler
                                     15 	.globl _dollar_sign_command_handler
                                     16 	.globl _percent_command_handler
                                     17 	.globl _enter_command_handler
                                     18 	.globl _qmark_command_handler
                                     19 	.globl _heap_report
                                     20 	.globl _command_header
                                     21 	.globl _store_in_buffer
                                     22 	.globl _initialize_buffers
                                     23 	.globl _alloc_new_buffer
                                     24 	.globl _initialize_default_elements
                                     25 	.globl _is_alphabet_char
                                     26 	.globl __sdcc_external_startup
                                     27 	.globl _dataout
                                     28 	.globl _free_all_elems_from_list
                                     29 	.globl _remove_from_buffer_list
                                     30 	.globl _append_to_buffer_list
                                     31 	.globl ___memcpy
                                     32 	.globl _memset
                                     33 	.globl _reset_char_count
                                     34 	.globl _get_char_count
                                     35 	.globl _get_next_input_char
                                     36 	.globl _get_input_buffer
                                     37 	.globl _get_string
                                     38 	.globl _free
                                     39 	.globl _malloc
                                     40 	.globl _atoi
                                     41 	.globl _printf
                                     42 	.globl _CY
                                     43 	.globl _AC
                                     44 	.globl _F0
                                     45 	.globl _RS1
                                     46 	.globl _RS0
                                     47 	.globl _OV
                                     48 	.globl _F1
                                     49 	.globl _P
                                     50 	.globl _PS
                                     51 	.globl _PT1
                                     52 	.globl _PX1
                                     53 	.globl _PT0
                                     54 	.globl _PX0
                                     55 	.globl _RD
                                     56 	.globl _WR
                                     57 	.globl _T1
                                     58 	.globl _T0
                                     59 	.globl _INT1
                                     60 	.globl _INT0
                                     61 	.globl _TXD
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _EA
                                     72 	.globl _ES
                                     73 	.globl _ET1
                                     74 	.globl _EX1
                                     75 	.globl _ET0
                                     76 	.globl _EX0
                                     77 	.globl _P2_7
                                     78 	.globl _P2_6
                                     79 	.globl _P2_5
                                     80 	.globl _P2_4
                                     81 	.globl _P2_3
                                     82 	.globl _P2_2
                                     83 	.globl _P2_1
                                     84 	.globl _P2_0
                                     85 	.globl _SM0
                                     86 	.globl _SM1
                                     87 	.globl _SM2
                                     88 	.globl _REN
                                     89 	.globl _TB8
                                     90 	.globl _RB8
                                     91 	.globl _TI
                                     92 	.globl _RI
                                     93 	.globl _P1_7
                                     94 	.globl _P1_6
                                     95 	.globl _P1_5
                                     96 	.globl _P1_4
                                     97 	.globl _P1_3
                                     98 	.globl _P1_2
                                     99 	.globl _P1_1
                                    100 	.globl _P1_0
                                    101 	.globl _TF1
                                    102 	.globl _TR1
                                    103 	.globl _TF0
                                    104 	.globl _TR0
                                    105 	.globl _IE1
                                    106 	.globl _IT1
                                    107 	.globl _IE0
                                    108 	.globl _IT0
                                    109 	.globl _P0_7
                                    110 	.globl _P0_6
                                    111 	.globl _P0_5
                                    112 	.globl _P0_4
                                    113 	.globl _P0_3
                                    114 	.globl _P0_2
                                    115 	.globl _P0_1
                                    116 	.globl _P0_0
                                    117 	.globl _P5_7
                                    118 	.globl _P5_6
                                    119 	.globl _P5_5
                                    120 	.globl _P5_4
                                    121 	.globl _P5_3
                                    122 	.globl _P5_2
                                    123 	.globl _P5_1
                                    124 	.globl _P5_0
                                    125 	.globl _P4_7
                                    126 	.globl _P4_6
                                    127 	.globl _P4_5
                                    128 	.globl _P4_4
                                    129 	.globl _P4_3
                                    130 	.globl _P4_2
                                    131 	.globl _P4_1
                                    132 	.globl _P4_0
                                    133 	.globl _PX0L
                                    134 	.globl _PT0L
                                    135 	.globl _PX1L
                                    136 	.globl _PT1L
                                    137 	.globl _PSL
                                    138 	.globl _PT2L
                                    139 	.globl _PPCL
                                    140 	.globl _EC
                                    141 	.globl _CCF0
                                    142 	.globl _CCF1
                                    143 	.globl _CCF2
                                    144 	.globl _CCF3
                                    145 	.globl _CCF4
                                    146 	.globl _CR
                                    147 	.globl _CF
                                    148 	.globl _TF2
                                    149 	.globl _EXF2
                                    150 	.globl _RCLK
                                    151 	.globl _TCLK
                                    152 	.globl _EXEN2
                                    153 	.globl _TR2
                                    154 	.globl _C_T2
                                    155 	.globl _CP_RL2
                                    156 	.globl _T2CON_7
                                    157 	.globl _T2CON_6
                                    158 	.globl _T2CON_5
                                    159 	.globl _T2CON_4
                                    160 	.globl _T2CON_3
                                    161 	.globl _T2CON_2
                                    162 	.globl _T2CON_1
                                    163 	.globl _T2CON_0
                                    164 	.globl _PT2
                                    165 	.globl _ET2
                                    166 	.globl _B
                                    167 	.globl _ACC
                                    168 	.globl _PSW
                                    169 	.globl _IP
                                    170 	.globl _P3
                                    171 	.globl _IE
                                    172 	.globl _P2
                                    173 	.globl _SBUF
                                    174 	.globl _SCON
                                    175 	.globl _P1
                                    176 	.globl _TH1
                                    177 	.globl _TH0
                                    178 	.globl _TL1
                                    179 	.globl _TL0
                                    180 	.globl _TMOD
                                    181 	.globl _TCON
                                    182 	.globl _PCON
                                    183 	.globl _DPH
                                    184 	.globl _DPL
                                    185 	.globl _SP
                                    186 	.globl _P0
                                    187 	.globl _EECON
                                    188 	.globl _KBF
                                    189 	.globl _KBE
                                    190 	.globl _KBLS
                                    191 	.globl _BRL
                                    192 	.globl _BDRCON
                                    193 	.globl _T2MOD
                                    194 	.globl _SPDAT
                                    195 	.globl _SPSTA
                                    196 	.globl _SPCON
                                    197 	.globl _SADEN
                                    198 	.globl _SADDR
                                    199 	.globl _WDTPRG
                                    200 	.globl _WDTRST
                                    201 	.globl _P5
                                    202 	.globl _P4
                                    203 	.globl _IPH1
                                    204 	.globl _IPL1
                                    205 	.globl _IPH0
                                    206 	.globl _IPL0
                                    207 	.globl _IEN1
                                    208 	.globl _IEN0
                                    209 	.globl _CMOD
                                    210 	.globl _CL
                                    211 	.globl _CH
                                    212 	.globl _CCON
                                    213 	.globl _CCAPM4
                                    214 	.globl _CCAPM3
                                    215 	.globl _CCAPM2
                                    216 	.globl _CCAPM1
                                    217 	.globl _CCAPM0
                                    218 	.globl _CCAP4L
                                    219 	.globl _CCAP3L
                                    220 	.globl _CCAP2L
                                    221 	.globl _CCAP1L
                                    222 	.globl _CCAP0L
                                    223 	.globl _CCAP4H
                                    224 	.globl _CCAP3H
                                    225 	.globl _CCAP2H
                                    226 	.globl _CCAP1H
                                    227 	.globl _CCAP0H
                                    228 	.globl _CKCON1
                                    229 	.globl _CKCON0
                                    230 	.globl _CKRL
                                    231 	.globl _AUXR1
                                    232 	.globl _AUXR
                                    233 	.globl _TH2
                                    234 	.globl _TL2
                                    235 	.globl _RCAP2H
                                    236 	.globl _RCAP2L
                                    237 	.globl _T2CON
                                    238 	.globl _dynamic_buffers_list
                                    239 	.globl _store_in_buffer_PARM_2
                                    240 	.globl _static_buffers
                                    241 	.globl _get_user_buffer_sz
                                    242 	.globl _free_all_buffers
                                    243 ;--------------------------------------------------------
                                    244 ; special function registers
                                    245 ;--------------------------------------------------------
                                    246 	.area RSEG    (ABS,DATA)
      000000                        247 	.org 0x0000
                           0000C8   248 _T2CON	=	0x00c8
                           0000CA   249 _RCAP2L	=	0x00ca
                           0000CB   250 _RCAP2H	=	0x00cb
                           0000CC   251 _TL2	=	0x00cc
                           0000CD   252 _TH2	=	0x00cd
                           00008E   253 _AUXR	=	0x008e
                           0000A2   254 _AUXR1	=	0x00a2
                           000097   255 _CKRL	=	0x0097
                           00008F   256 _CKCON0	=	0x008f
                           0000AF   257 _CKCON1	=	0x00af
                           0000FA   258 _CCAP0H	=	0x00fa
                           0000FB   259 _CCAP1H	=	0x00fb
                           0000FC   260 _CCAP2H	=	0x00fc
                           0000FD   261 _CCAP3H	=	0x00fd
                           0000FE   262 _CCAP4H	=	0x00fe
                           0000EA   263 _CCAP0L	=	0x00ea
                           0000EB   264 _CCAP1L	=	0x00eb
                           0000EC   265 _CCAP2L	=	0x00ec
                           0000ED   266 _CCAP3L	=	0x00ed
                           0000EE   267 _CCAP4L	=	0x00ee
                           0000DA   268 _CCAPM0	=	0x00da
                           0000DB   269 _CCAPM1	=	0x00db
                           0000DC   270 _CCAPM2	=	0x00dc
                           0000DD   271 _CCAPM3	=	0x00dd
                           0000DE   272 _CCAPM4	=	0x00de
                           0000D8   273 _CCON	=	0x00d8
                           0000F9   274 _CH	=	0x00f9
                           0000E9   275 _CL	=	0x00e9
                           0000D9   276 _CMOD	=	0x00d9
                           0000A8   277 _IEN0	=	0x00a8
                           0000B1   278 _IEN1	=	0x00b1
                           0000B8   279 _IPL0	=	0x00b8
                           0000B7   280 _IPH0	=	0x00b7
                           0000B2   281 _IPL1	=	0x00b2
                           0000B3   282 _IPH1	=	0x00b3
                           0000C0   283 _P4	=	0x00c0
                           0000E8   284 _P5	=	0x00e8
                           0000A6   285 _WDTRST	=	0x00a6
                           0000A7   286 _WDTPRG	=	0x00a7
                           0000A9   287 _SADDR	=	0x00a9
                           0000B9   288 _SADEN	=	0x00b9
                           0000C3   289 _SPCON	=	0x00c3
                           0000C4   290 _SPSTA	=	0x00c4
                           0000C5   291 _SPDAT	=	0x00c5
                           0000C9   292 _T2MOD	=	0x00c9
                           00009B   293 _BDRCON	=	0x009b
                           00009A   294 _BRL	=	0x009a
                           00009C   295 _KBLS	=	0x009c
                           00009D   296 _KBE	=	0x009d
                           00009E   297 _KBF	=	0x009e
                           0000D2   298 _EECON	=	0x00d2
                           000080   299 _P0	=	0x0080
                           000081   300 _SP	=	0x0081
                           000082   301 _DPL	=	0x0082
                           000083   302 _DPH	=	0x0083
                           000087   303 _PCON	=	0x0087
                           000088   304 _TCON	=	0x0088
                           000089   305 _TMOD	=	0x0089
                           00008A   306 _TL0	=	0x008a
                           00008B   307 _TL1	=	0x008b
                           00008C   308 _TH0	=	0x008c
                           00008D   309 _TH1	=	0x008d
                           000090   310 _P1	=	0x0090
                           000098   311 _SCON	=	0x0098
                           000099   312 _SBUF	=	0x0099
                           0000A0   313 _P2	=	0x00a0
                           0000A8   314 _IE	=	0x00a8
                           0000B0   315 _P3	=	0x00b0
                           0000B8   316 _IP	=	0x00b8
                           0000D0   317 _PSW	=	0x00d0
                           0000E0   318 _ACC	=	0x00e0
                           0000F0   319 _B	=	0x00f0
                                    320 ;--------------------------------------------------------
                                    321 ; special function bits
                                    322 ;--------------------------------------------------------
                                    323 	.area RSEG    (ABS,DATA)
      000000                        324 	.org 0x0000
                           0000AD   325 _ET2	=	0x00ad
                           0000BD   326 _PT2	=	0x00bd
                           0000C8   327 _T2CON_0	=	0x00c8
                           0000C9   328 _T2CON_1	=	0x00c9
                           0000CA   329 _T2CON_2	=	0x00ca
                           0000CB   330 _T2CON_3	=	0x00cb
                           0000CC   331 _T2CON_4	=	0x00cc
                           0000CD   332 _T2CON_5	=	0x00cd
                           0000CE   333 _T2CON_6	=	0x00ce
                           0000CF   334 _T2CON_7	=	0x00cf
                           0000C8   335 _CP_RL2	=	0x00c8
                           0000C9   336 _C_T2	=	0x00c9
                           0000CA   337 _TR2	=	0x00ca
                           0000CB   338 _EXEN2	=	0x00cb
                           0000CC   339 _TCLK	=	0x00cc
                           0000CD   340 _RCLK	=	0x00cd
                           0000CE   341 _EXF2	=	0x00ce
                           0000CF   342 _TF2	=	0x00cf
                           0000DF   343 _CF	=	0x00df
                           0000DE   344 _CR	=	0x00de
                           0000DC   345 _CCF4	=	0x00dc
                           0000DB   346 _CCF3	=	0x00db
                           0000DA   347 _CCF2	=	0x00da
                           0000D9   348 _CCF1	=	0x00d9
                           0000D8   349 _CCF0	=	0x00d8
                           0000AE   350 _EC	=	0x00ae
                           0000BE   351 _PPCL	=	0x00be
                           0000BD   352 _PT2L	=	0x00bd
                           0000BC   353 _PSL	=	0x00bc
                           0000BB   354 _PT1L	=	0x00bb
                           0000BA   355 _PX1L	=	0x00ba
                           0000B9   356 _PT0L	=	0x00b9
                           0000B8   357 _PX0L	=	0x00b8
                           0000C0   358 _P4_0	=	0x00c0
                           0000C1   359 _P4_1	=	0x00c1
                           0000C2   360 _P4_2	=	0x00c2
                           0000C3   361 _P4_3	=	0x00c3
                           0000C4   362 _P4_4	=	0x00c4
                           0000C5   363 _P4_5	=	0x00c5
                           0000C6   364 _P4_6	=	0x00c6
                           0000C7   365 _P4_7	=	0x00c7
                           0000E8   366 _P5_0	=	0x00e8
                           0000E9   367 _P5_1	=	0x00e9
                           0000EA   368 _P5_2	=	0x00ea
                           0000EB   369 _P5_3	=	0x00eb
                           0000EC   370 _P5_4	=	0x00ec
                           0000ED   371 _P5_5	=	0x00ed
                           0000EE   372 _P5_6	=	0x00ee
                           0000EF   373 _P5_7	=	0x00ef
                           000080   374 _P0_0	=	0x0080
                           000081   375 _P0_1	=	0x0081
                           000082   376 _P0_2	=	0x0082
                           000083   377 _P0_3	=	0x0083
                           000084   378 _P0_4	=	0x0084
                           000085   379 _P0_5	=	0x0085
                           000086   380 _P0_6	=	0x0086
                           000087   381 _P0_7	=	0x0087
                           000088   382 _IT0	=	0x0088
                           000089   383 _IE0	=	0x0089
                           00008A   384 _IT1	=	0x008a
                           00008B   385 _IE1	=	0x008b
                           00008C   386 _TR0	=	0x008c
                           00008D   387 _TF0	=	0x008d
                           00008E   388 _TR1	=	0x008e
                           00008F   389 _TF1	=	0x008f
                           000090   390 _P1_0	=	0x0090
                           000091   391 _P1_1	=	0x0091
                           000092   392 _P1_2	=	0x0092
                           000093   393 _P1_3	=	0x0093
                           000094   394 _P1_4	=	0x0094
                           000095   395 _P1_5	=	0x0095
                           000096   396 _P1_6	=	0x0096
                           000097   397 _P1_7	=	0x0097
                           000098   398 _RI	=	0x0098
                           000099   399 _TI	=	0x0099
                           00009A   400 _RB8	=	0x009a
                           00009B   401 _TB8	=	0x009b
                           00009C   402 _REN	=	0x009c
                           00009D   403 _SM2	=	0x009d
                           00009E   404 _SM1	=	0x009e
                           00009F   405 _SM0	=	0x009f
                           0000A0   406 _P2_0	=	0x00a0
                           0000A1   407 _P2_1	=	0x00a1
                           0000A2   408 _P2_2	=	0x00a2
                           0000A3   409 _P2_3	=	0x00a3
                           0000A4   410 _P2_4	=	0x00a4
                           0000A5   411 _P2_5	=	0x00a5
                           0000A6   412 _P2_6	=	0x00a6
                           0000A7   413 _P2_7	=	0x00a7
                           0000A8   414 _EX0	=	0x00a8
                           0000A9   415 _ET0	=	0x00a9
                           0000AA   416 _EX1	=	0x00aa
                           0000AB   417 _ET1	=	0x00ab
                           0000AC   418 _ES	=	0x00ac
                           0000AF   419 _EA	=	0x00af
                           0000B0   420 _P3_0	=	0x00b0
                           0000B1   421 _P3_1	=	0x00b1
                           0000B2   422 _P3_2	=	0x00b2
                           0000B3   423 _P3_3	=	0x00b3
                           0000B4   424 _P3_4	=	0x00b4
                           0000B5   425 _P3_5	=	0x00b5
                           0000B6   426 _P3_6	=	0x00b6
                           0000B7   427 _P3_7	=	0x00b7
                           0000B0   428 _RXD	=	0x00b0
                           0000B1   429 _TXD	=	0x00b1
                           0000B2   430 _INT0	=	0x00b2
                           0000B3   431 _INT1	=	0x00b3
                           0000B4   432 _T0	=	0x00b4
                           0000B5   433 _T1	=	0x00b5
                           0000B6   434 _WR	=	0x00b6
                           0000B7   435 _RD	=	0x00b7
                           0000B8   436 _PX0	=	0x00b8
                           0000B9   437 _PT0	=	0x00b9
                           0000BA   438 _PX1	=	0x00ba
                           0000BB   439 _PT1	=	0x00bb
                           0000BC   440 _PS	=	0x00bc
                           0000D0   441 _P	=	0x00d0
                           0000D1   442 _F1	=	0x00d1
                           0000D2   443 _OV	=	0x00d2
                           0000D3   444 _RS0	=	0x00d3
                           0000D4   445 _RS1	=	0x00d4
                           0000D5   446 _F0	=	0x00d5
                           0000D6   447 _AC	=	0x00d6
                           0000D7   448 _CY	=	0x00d7
                                    449 ;--------------------------------------------------------
                                    450 ; overlayable register banks
                                    451 ;--------------------------------------------------------
                                    452 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        453 	.ds 8
                                    454 ;--------------------------------------------------------
                                    455 ; internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area DSEG    (DATA)
      000021                        458 _initialize_buffers_sloc0_1_0:
      000021                        459 	.ds 2
      000023                        460 _initialize_buffers_sloc1_1_0:
      000023                        461 	.ds 2
      000025                        462 _initialize_buffers_sloc2_1_0:
      000025                        463 	.ds 2
      000027                        464 _initialize_buffers_sloc3_1_0:
      000027                        465 	.ds 3
      00002A                        466 _initialize_buffers_sloc4_1_0:
      00002A                        467 	.ds 3
      00002D                        468 _initialize_buffers_sloc5_1_0:
      00002D                        469 	.ds 3
      000030                        470 _store_in_buffer_sloc0_1_0:
      000030                        471 	.ds 2
      000032                        472 _store_in_buffer_sloc1_1_0:
      000032                        473 	.ds 3
      000035                        474 _heap_report_sloc0_1_0:
      000035                        475 	.ds 2
      000037                        476 _heap_report_sloc1_1_0:
      000037                        477 	.ds 2
      000039                        478 _heap_report_sloc2_1_0:
      000039                        479 	.ds 2
      00003B                        480 _heap_report_sloc3_1_0:
      00003B                        481 	.ds 2
      00003D                        482 _heap_report_sloc4_1_0:
      00003D                        483 	.ds 3
      000040                        484 _heap_report_sloc5_1_0:
      000040                        485 	.ds 3
      000043                        486 _qmark_command_handler_sloc0_1_0:
      000043                        487 	.ds 3
      000046                        488 _enter_command_handler_sloc0_1_0:
      000046                        489 	.ds 3
      000049                        490 _enter_command_handler_sloc1_1_0:
      000049                        491 	.ds 2
      00004B                        492 _enter_command_handler_sloc2_1_0:
      00004B                        493 	.ds 2
      00004D                        494 _enter_command_handler_sloc3_1_0:
      00004D                        495 	.ds 2
      00004F                        496 _percent_command_handler_sloc0_1_0:
      00004F                        497 	.ds 3
      000052                        498 _dollar_sign_command_handler_sloc0_1_0:
      000052                        499 	.ds 3
                                    500 ;--------------------------------------------------------
                                    501 ; overlayable items in internal ram
                                    502 ;--------------------------------------------------------
                                    503 	.area	OSEG    (OVR,DATA)
      00001B                        504 _hashtag_command_handler_c_196609_161:
      00001B                        505 	.ds 1
                                    506 ;--------------------------------------------------------
                                    507 ; Stack segment in internal ram
                                    508 ;--------------------------------------------------------
                                    509 	.area	SSEG
      000055                        510 __start__stack:
      000055                        511 	.ds	1
                                    512 
                                    513 ;--------------------------------------------------------
                                    514 ; indirectly addressable internal ram data
                                    515 ;--------------------------------------------------------
                                    516 	.area ISEG    (DATA)
                                    517 ;--------------------------------------------------------
                                    518 ; absolute internal ram data
                                    519 ;--------------------------------------------------------
                                    520 	.area IABS    (ABS,DATA)
                                    521 	.area IABS    (ABS,DATA)
                                    522 ;--------------------------------------------------------
                                    523 ; bit data
                                    524 ;--------------------------------------------------------
                                    525 	.area BSEG    (BIT)
      000000                        526 _is_alphabet_char_sloc0_1_0:
      000000                        527 	.ds 1
                                    528 ;--------------------------------------------------------
                                    529 ; paged external ram data
                                    530 ;--------------------------------------------------------
                                    531 	.area PSEG    (PAG,XDATA)
                                    532 ;--------------------------------------------------------
                                    533 ; external ram data
                                    534 ;--------------------------------------------------------
                                    535 	.area XSEG    (XDATA)
      000001                        536 _static_buffers::
      000001                        537 	.ds 22
      000017                        538 _is_alphabet_char_c_65536_80:
      000017                        539 	.ds 1
      000018                        540 _initialize_default_elements_buffer_65536_82:
      000018                        541 	.ds 3
      00001B                        542 _alloc_new_buffer_size_65536_84:
      00001B                        543 	.ds 2
      00001D                        544 _initialize_buffers_max_user_input_65538_92:
      00001D                        545 	.ds 2
      00001F                        546 _initialize_buffers_total_heap_sz_65539_106:
      00001F                        547 	.ds 2
      000021                        548 _initialize_buffers_curr_65540_110:
      000021                        549 	.ds 3
      000024                        550 _store_in_buffer_PARM_2:
      000024                        551 	.ds 1
      000025                        552 _store_in_buffer_buffer_65536_113:
      000025                        553 	.ds 3
      000028                        554 _command_header_command_string_65536_117:
      000028                        555 	.ds 3
      00002B                        556 _heap_report_total_heap_sz_65537_120:
      00002B                        557 	.ds 2
      00002D                        558 _get_user_buffer_sz_maximum_sz_65536_127:
      00002D                        559 	.ds 2
      00002F                        560 _qmark_command_handler_curr_output_char_65538_136:
      00002F                        561 	.ds 2
      000031                        562 _qmark_command_handler_curr_char_196610_138:
      000031                        563 	.ds 1
                                    564 ;--------------------------------------------------------
                                    565 ; absolute external ram data
                                    566 ;--------------------------------------------------------
                                    567 	.area XABS    (ABS,XDATA)
                                    568 ;--------------------------------------------------------
                                    569 ; external initialized ram data
                                    570 ;--------------------------------------------------------
                                    571 	.area XISEG   (XDATA)
      0020BA                        572 _dynamic_buffers_list::
      0020BA                        573 	.ds 3
                                    574 	.area HOME    (CODE)
                                    575 	.area GSINIT0 (CODE)
                                    576 	.area GSINIT1 (CODE)
                                    577 	.area GSINIT2 (CODE)
                                    578 	.area GSINIT3 (CODE)
                                    579 	.area GSINIT4 (CODE)
                                    580 	.area GSINIT5 (CODE)
                                    581 	.area GSINIT  (CODE)
                                    582 	.area GSFINAL (CODE)
                                    583 	.area CSEG    (CODE)
                                    584 ;--------------------------------------------------------
                                    585 ; interrupt vector
                                    586 ;--------------------------------------------------------
                                    587 	.area HOME    (CODE)
      002000                        588 __interrupt_vect:
      002000 02 20 34         [24]  589 	ljmp	__sdcc_gsinit_startup
                                    590 ;--------------------------------------------------------
                                    591 ; global & static initialisations
                                    592 ;--------------------------------------------------------
                                    593 	.area HOME    (CODE)
                                    594 	.area GSINIT  (CODE)
                                    595 	.area GSFINAL (CODE)
                                    596 	.area GSINIT  (CODE)
                                    597 	.globl __sdcc_gsinit_startup
                                    598 	.globl __sdcc_program_startup
                                    599 	.globl __start__stack
                                    600 	.globl __mcs51_genXINIT
                                    601 	.globl __mcs51_genXRAMCLEAR
                                    602 	.globl __mcs51_genRAMCLEAR
                                    603 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  604 	ljmp	__sdcc_program_startup
                                    605 ;--------------------------------------------------------
                                    606 ; Home
                                    607 ;--------------------------------------------------------
                                    608 	.area HOME    (CODE)
                                    609 	.area HOME    (CODE)
      002003                        610 __sdcc_program_startup:
      002003 02 34 76         [24]  611 	ljmp	_main
                                    612 ;	return from main will return to caller
                                    613 ;--------------------------------------------------------
                                    614 ; code
                                    615 ;--------------------------------------------------------
                                    616 	.area CSEG    (CODE)
                                    617 ;------------------------------------------------------------
                                    618 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    619 ;------------------------------------------------------------
                                    620 ;	src/main.c:54: int _sdcc_external_startup()
                                    621 ;	-----------------------------------------
                                    622 ;	 function _sdcc_external_startup
                                    623 ;	-----------------------------------------
      002090                        624 __sdcc_external_startup:
                           000007   625 	ar7 = 0x07
                           000006   626 	ar6 = 0x06
                           000005   627 	ar5 = 0x05
                           000004   628 	ar4 = 0x04
                           000003   629 	ar3 = 0x03
                           000002   630 	ar2 = 0x02
                           000001   631 	ar1 = 0x01
                           000000   632 	ar0 = 0x00
                                    633 ;	src/main.c:57: return 0;
      002090 90 00 00         [24]  634 	mov	dptr,#0x0000
                                    635 ;	src/main.c:58: }
      002093 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'is_alphabet_char'
                                    639 ;------------------------------------------------------------
                                    640 ;c                         Allocated with name '_is_alphabet_char_c_65536_80'
                                    641 ;------------------------------------------------------------
                                    642 ;	src/main.c:88: bool is_alphabet_char(char c)
                                    643 ;	-----------------------------------------
                                    644 ;	 function is_alphabet_char
                                    645 ;	-----------------------------------------
      002094                        646 _is_alphabet_char:
      002094 E5 82            [12]  647 	mov	a,dpl
      002096 90 00 17         [24]  648 	mov	dptr,#_is_alphabet_char_c_65536_80
      002099 F0               [24]  649 	movx	@dptr,a
                                    650 ;	src/main.c:90: return (c <= 'Z' && c >= 'A')
      00209A E0               [24]  651 	movx	a,@dptr
      00209B FF               [12]  652 	mov  r7,a
      00209C 24 A5            [12]  653 	add	a,#0xff - 0x5a
      00209E 92 00            [24]  654 	mov	_is_alphabet_char_sloc0_1_0,c
      0020A0 40 07            [24]  655 	jc	00108$
      0020A2 BF 41 00         [24]  656 	cjne	r7,#0x41,00121$
      0020A5                        657 00121$:
      0020A5 92 00            [24]  658 	mov	_is_alphabet_char_sloc0_1_0,c
      0020A7 50 16            [24]  659 	jnc	00104$
      0020A9                        660 00108$:
                                    661 ;	src/main.c:91: || (c <= 'z' && c >= 'a');
      0020A9 90 00 17         [24]  662 	mov	dptr,#_is_alphabet_char_c_65536_80
      0020AC E0               [24]  663 	movx	a,@dptr
      0020AD FF               [12]  664 	mov  r7,a
      0020AE 24 85            [12]  665 	add	a,#0xff - 0x7a
      0020B0 92 00            [24]  666 	mov	_is_alphabet_char_sloc0_1_0,c
      0020B2 40 07            [24]  667 	jc	00103$
      0020B4 BF 61 00         [24]  668 	cjne	r7,#0x61,00124$
      0020B7                        669 00124$:
      0020B7 92 00            [24]  670 	mov	_is_alphabet_char_sloc0_1_0,c
      0020B9 50 04            [24]  671 	jnc	00104$
      0020BB                        672 00103$:
                                    673 ;	assignBit
      0020BB C2 00            [12]  674 	clr	_is_alphabet_char_sloc0_1_0
      0020BD 80 02            [24]  675 	sjmp	00105$
      0020BF                        676 00104$:
                                    677 ;	assignBit
      0020BF D2 00            [12]  678 	setb	_is_alphabet_char_sloc0_1_0
      0020C1                        679 00105$:
      0020C1 A2 00            [12]  680 	mov	c,_is_alphabet_char_sloc0_1_0
      0020C3 E4               [12]  681 	clr	a
      0020C4 33               [12]  682 	rlc	a
      0020C5 F5 82            [12]  683 	mov	dpl,a
                                    684 ;	src/main.c:92: }
      0020C7 22               [24]  685 	ret
                                    686 ;------------------------------------------------------------
                                    687 ;Allocation info for local variables in function 'initialize_default_elements'
                                    688 ;------------------------------------------------------------
                                    689 ;buffer                    Allocated with name '_initialize_default_elements_buffer_65536_82'
                                    690 ;------------------------------------------------------------
                                    691 ;	src/main.c:94: void initialize_default_elements(buffer_t *buffer)
                                    692 ;	-----------------------------------------
                                    693 ;	 function initialize_default_elements
                                    694 ;	-----------------------------------------
      0020C8                        695 _initialize_default_elements:
      0020C8 AF F0            [24]  696 	mov	r7,b
      0020CA AE 83            [24]  697 	mov	r6,dph
      0020CC E5 82            [12]  698 	mov	a,dpl
      0020CE 90 00 18         [24]  699 	mov	dptr,#_initialize_default_elements_buffer_65536_82
      0020D1 F0               [24]  700 	movx	@dptr,a
      0020D2 EE               [12]  701 	mov	a,r6
      0020D3 A3               [24]  702 	inc	dptr
      0020D4 F0               [24]  703 	movx	@dptr,a
      0020D5 EF               [12]  704 	mov	a,r7
      0020D6 A3               [24]  705 	inc	dptr
      0020D7 F0               [24]  706 	movx	@dptr,a
                                    707 ;	src/main.c:96: buffer->alphabet_chars = 0;
      0020D8 90 00 18         [24]  708 	mov	dptr,#_initialize_default_elements_buffer_65536_82
      0020DB E0               [24]  709 	movx	a,@dptr
      0020DC FD               [12]  710 	mov	r5,a
      0020DD A3               [24]  711 	inc	dptr
      0020DE E0               [24]  712 	movx	a,@dptr
      0020DF FE               [12]  713 	mov	r6,a
      0020E0 A3               [24]  714 	inc	dptr
      0020E1 E0               [24]  715 	movx	a,@dptr
      0020E2 FF               [12]  716 	mov	r7,a
      0020E3 74 02            [12]  717 	mov	a,#0x02
      0020E5 2D               [12]  718 	add	a,r5
      0020E6 FA               [12]  719 	mov	r2,a
      0020E7 E4               [12]  720 	clr	a
      0020E8 3E               [12]  721 	addc	a,r6
      0020E9 FB               [12]  722 	mov	r3,a
      0020EA 8F 04            [24]  723 	mov	ar4,r7
      0020EC 8A 82            [24]  724 	mov	dpl,r2
      0020EE 8B 83            [24]  725 	mov	dph,r3
      0020F0 8C F0            [24]  726 	mov	b,r4
      0020F2 E4               [12]  727 	clr	a
      0020F3 12 3D C2         [24]  728 	lcall	__gptrput
      0020F6 A3               [24]  729 	inc	dptr
      0020F7 12 3D C2         [24]  730 	lcall	__gptrput
                                    731 ;	src/main.c:97: buffer->curr_available_char = 0;
      0020FA 74 06            [12]  732 	mov	a,#0x06
      0020FC 2D               [12]  733 	add	a,r5
      0020FD FA               [12]  734 	mov	r2,a
      0020FE E4               [12]  735 	clr	a
      0020FF 3E               [12]  736 	addc	a,r6
      002100 FB               [12]  737 	mov	r3,a
      002101 8F 04            [24]  738 	mov	ar4,r7
      002103 8A 82            [24]  739 	mov	dpl,r2
      002105 8B 83            [24]  740 	mov	dph,r3
      002107 8C F0            [24]  741 	mov	b,r4
      002109 E4               [12]  742 	clr	a
      00210A 12 3D C2         [24]  743 	lcall	__gptrput
      00210D A3               [24]  744 	inc	dptr
      00210E 12 3D C2         [24]  745 	lcall	__gptrput
                                    746 ;	src/main.c:98: buffer->next = NULL;
      002111 74 08            [12]  747 	mov	a,#0x08
      002113 2D               [12]  748 	add	a,r5
      002114 FA               [12]  749 	mov	r2,a
      002115 E4               [12]  750 	clr	a
      002116 3E               [12]  751 	addc	a,r6
      002117 FB               [12]  752 	mov	r3,a
      002118 8F 04            [24]  753 	mov	ar4,r7
      00211A 8A 82            [24]  754 	mov	dpl,r2
      00211C 8B 83            [24]  755 	mov	dph,r3
      00211E 8C F0            [24]  756 	mov	b,r4
      002120 E4               [12]  757 	clr	a
      002121 12 3D C2         [24]  758 	lcall	__gptrput
      002124 A3               [24]  759 	inc	dptr
      002125 12 3D C2         [24]  760 	lcall	__gptrput
      002128 A3               [24]  761 	inc	dptr
      002129 12 3D C2         [24]  762 	lcall	__gptrput
                                    763 ;	src/main.c:100: memset(buffer->buffer, 0x00, buffer->size);
      00212C 8D 82            [24]  764 	mov	dpl,r5
      00212E 8E 83            [24]  765 	mov	dph,r6
      002130 8F F0            [24]  766 	mov	b,r7
      002132 12 4A 1C         [24]  767 	lcall	__gptrget
      002135 FB               [12]  768 	mov	r3,a
      002136 A3               [24]  769 	inc	dptr
      002137 12 4A 1C         [24]  770 	lcall	__gptrget
      00213A FC               [12]  771 	mov	r4,a
      00213B 7A 00            [12]  772 	mov	r2,#0x00
      00213D 74 04            [12]  773 	mov	a,#0x04
      00213F 2D               [12]  774 	add	a,r5
      002140 FD               [12]  775 	mov	r5,a
      002141 E4               [12]  776 	clr	a
      002142 3E               [12]  777 	addc	a,r6
      002143 FE               [12]  778 	mov	r6,a
      002144 8D 82            [24]  779 	mov	dpl,r5
      002146 8E 83            [24]  780 	mov	dph,r6
      002148 8F F0            [24]  781 	mov	b,r7
      00214A 12 4A 1C         [24]  782 	lcall	__gptrget
      00214D FD               [12]  783 	mov	r5,a
      00214E A3               [24]  784 	inc	dptr
      00214F 12 4A 1C         [24]  785 	lcall	__gptrget
      002152 FE               [12]  786 	mov	r6,a
      002153 90 20 6F         [24]  787 	mov	dptr,#_memset_PARM_2
      002156 E4               [12]  788 	clr	a
      002157 F0               [24]  789 	movx	@dptr,a
      002158 90 20 70         [24]  790 	mov	dptr,#_memset_PARM_3
      00215B ED               [12]  791 	mov	a,r5
      00215C F0               [24]  792 	movx	@dptr,a
      00215D EE               [12]  793 	mov	a,r6
      00215E A3               [24]  794 	inc	dptr
      00215F F0               [24]  795 	movx	@dptr,a
      002160 8B 82            [24]  796 	mov	dpl,r3
      002162 8C 83            [24]  797 	mov	dph,r4
      002164 8A F0            [24]  798 	mov	b,r2
                                    799 ;	src/main.c:101: }
      002166 02 3C 76         [24]  800 	ljmp	_memset
                                    801 ;------------------------------------------------------------
                                    802 ;Allocation info for local variables in function 'alloc_new_buffer'
                                    803 ;------------------------------------------------------------
                                    804 ;size                      Allocated with name '_alloc_new_buffer_size_65536_84'
                                    805 ;header                    Allocated with name '_alloc_new_buffer_header_65536_85'
                                    806 ;------------------------------------------------------------
                                    807 ;	src/main.c:103: buffer_t *alloc_new_buffer(size_t size)
                                    808 ;	-----------------------------------------
                                    809 ;	 function alloc_new_buffer
                                    810 ;	-----------------------------------------
      002169                        811 _alloc_new_buffer:
      002169 AF 83            [24]  812 	mov	r7,dph
      00216B E5 82            [12]  813 	mov	a,dpl
      00216D 90 00 1B         [24]  814 	mov	dptr,#_alloc_new_buffer_size_65536_84
      002170 F0               [24]  815 	movx	@dptr,a
      002171 EF               [12]  816 	mov	a,r7
      002172 A3               [24]  817 	inc	dptr
      002173 F0               [24]  818 	movx	@dptr,a
                                    819 ;	src/main.c:105: buffer_t *header = malloc(sizeof(buffer_t));
      002174 90 00 0B         [24]  820 	mov	dptr,#0x000b
      002177 12 3E 19         [24]  821 	lcall	_malloc
      00217A AE 82            [24]  822 	mov	r6,dpl
      00217C AD 83            [24]  823 	mov	r5,dph
      00217E 7F 00            [12]  824 	mov	r7,#0x00
                                    825 ;	src/main.c:106: if (header == NULL)
      002180 EE               [12]  826 	mov	a,r6
      002181 4D               [12]  827 	orl	a,r5
                                    828 ;	src/main.c:108: return NULL;
      002182 70 06            [24]  829 	jnz	00102$
      002184 90 00 00         [24]  830 	mov	dptr,#0x0000
      002187 F5 F0            [12]  831 	mov	b,a
      002189 22               [24]  832 	ret
      00218A                        833 00102$:
                                    834 ;	src/main.c:110: header->size = size;
      00218A 74 04            [12]  835 	mov	a,#0x04
      00218C 2E               [12]  836 	add	a,r6
      00218D FA               [12]  837 	mov	r2,a
      00218E E4               [12]  838 	clr	a
      00218F 3D               [12]  839 	addc	a,r5
      002190 FB               [12]  840 	mov	r3,a
      002191 8F 04            [24]  841 	mov	ar4,r7
      002193 90 00 1B         [24]  842 	mov	dptr,#_alloc_new_buffer_size_65536_84
      002196 E0               [24]  843 	movx	a,@dptr
      002197 F8               [12]  844 	mov	r0,a
      002198 A3               [24]  845 	inc	dptr
      002199 E0               [24]  846 	movx	a,@dptr
      00219A F9               [12]  847 	mov	r1,a
      00219B 8A 82            [24]  848 	mov	dpl,r2
      00219D 8B 83            [24]  849 	mov	dph,r3
      00219F 8C F0            [24]  850 	mov	b,r4
      0021A1 E8               [12]  851 	mov	a,r0
      0021A2 12 3D C2         [24]  852 	lcall	__gptrput
      0021A5 A3               [24]  853 	inc	dptr
      0021A6 E9               [12]  854 	mov	a,r1
      0021A7 12 3D C2         [24]  855 	lcall	__gptrput
                                    856 ;	src/main.c:111: header->buffer = malloc(size);
      0021AA 88 82            [24]  857 	mov	dpl,r0
      0021AC 89 83            [24]  858 	mov	dph,r1
      0021AE C0 07            [24]  859 	push	ar7
      0021B0 C0 06            [24]  860 	push	ar6
      0021B2 C0 05            [24]  861 	push	ar5
      0021B4 12 3E 19         [24]  862 	lcall	_malloc
      0021B7 AB 82            [24]  863 	mov	r3,dpl
      0021B9 AC 83            [24]  864 	mov	r4,dph
      0021BB D0 05            [24]  865 	pop	ar5
      0021BD D0 06            [24]  866 	pop	ar6
      0021BF D0 07            [24]  867 	pop	ar7
      0021C1 8E 82            [24]  868 	mov	dpl,r6
      0021C3 8D 83            [24]  869 	mov	dph,r5
      0021C5 8F F0            [24]  870 	mov	b,r7
      0021C7 EB               [12]  871 	mov	a,r3
      0021C8 12 3D C2         [24]  872 	lcall	__gptrput
      0021CB A3               [24]  873 	inc	dptr
      0021CC EC               [12]  874 	mov	a,r4
      0021CD 12 3D C2         [24]  875 	lcall	__gptrput
                                    876 ;	src/main.c:112: if (header->buffer == NULL)
      0021D0 EB               [12]  877 	mov	a,r3
      0021D1 4C               [12]  878 	orl	a,r4
      0021D2 70 16            [24]  879 	jnz	00104$
                                    880 ;	src/main.c:114: free(header);
      0021D4 8E 02            [24]  881 	mov	ar2,r6
      0021D6 8D 03            [24]  882 	mov	ar3,r5
      0021D8 8F 04            [24]  883 	mov	ar4,r7
      0021DA 8A 82            [24]  884 	mov	dpl,r2
      0021DC 8B 83            [24]  885 	mov	dph,r3
      0021DE 8C F0            [24]  886 	mov	b,r4
      0021E0 12 3A AB         [24]  887 	lcall	_free
                                    888 ;	src/main.c:115: return NULL;
      0021E3 90 00 00         [24]  889 	mov	dptr,#0x0000
      0021E6 75 F0 00         [24]  890 	mov	b,#0x00
      0021E9 22               [24]  891 	ret
      0021EA                        892 00104$:
                                    893 ;	src/main.c:117: initialize_default_elements(header);
      0021EA 8E 82            [24]  894 	mov	dpl,r6
      0021EC 8D 83            [24]  895 	mov	dph,r5
      0021EE 8F F0            [24]  896 	mov	b,r7
      0021F0 C0 07            [24]  897 	push	ar7
      0021F2 C0 06            [24]  898 	push	ar6
      0021F4 C0 05            [24]  899 	push	ar5
      0021F6 12 20 C8         [24]  900 	lcall	_initialize_default_elements
      0021F9 D0 05            [24]  901 	pop	ar5
      0021FB D0 06            [24]  902 	pop	ar6
      0021FD D0 07            [24]  903 	pop	ar7
                                    904 ;	src/main.c:118: return header; 
      0021FF 8E 82            [24]  905 	mov	dpl,r6
      002201 8D 83            [24]  906 	mov	dph,r5
      002203 8F F0            [24]  907 	mov	b,r7
                                    908 ;	src/main.c:119: }
      002205 22               [24]  909 	ret
                                    910 ;------------------------------------------------------------
                                    911 ;Allocation info for local variables in function 'initialize_buffers'
                                    912 ;------------------------------------------------------------
                                    913 ;sloc0                     Allocated with name '_initialize_buffers_sloc0_1_0'
                                    914 ;sloc1                     Allocated with name '_initialize_buffers_sloc1_1_0'
                                    915 ;sloc2                     Allocated with name '_initialize_buffers_sloc2_1_0'
                                    916 ;sloc3                     Allocated with name '_initialize_buffers_sloc3_1_0'
                                    917 ;sloc4                     Allocated with name '_initialize_buffers_sloc4_1_0'
                                    918 ;sloc5                     Allocated with name '_initialize_buffers_sloc5_1_0'
                                    919 ;student_number            Allocated with name '_initialize_buffers_student_number_65537_89'
                                    920 ;max_user_input            Allocated with name '_initialize_buffers_max_user_input_65538_92'
                                    921 ;user_buffer_size          Allocated with name '_initialize_buffers_user_buffer_size_65538_92'
                                    922 ;i                         Allocated with name '_initialize_buffers_i_196610_94'
                                    923 ;i                         Allocated with name '_initialize_buffers_i_196610_98'
                                    924 ;new_buffer                Allocated with name '_initialize_buffers_new_buffer_262146_99'
                                    925 ;buffer_4                  Allocated with name '_initialize_buffers_buffer_4_131075_102'
                                    926 ;buffer_5                  Allocated with name '_initialize_buffers_buffer_5_131076_104'
                                    927 ;total_heap_sz             Allocated with name '_initialize_buffers_total_heap_sz_65539_106'
                                    928 ;i                         Allocated with name '_initialize_buffers_i_65539_106'
                                    929 ;curr                      Allocated with name '_initialize_buffers_curr_65540_110'
                                    930 ;------------------------------------------------------------
                                    931 ;	src/main.c:122: void initialize_buffers()
                                    932 ;	-----------------------------------------
                                    933 ;	 function initialize_buffers
                                    934 ;	-----------------------------------------
      002206                        935 _initialize_buffers:
                                    936 ;	src/main.c:124: dynamic_buffers_list.head = NULL;
      002206 90 20 BA         [24]  937 	mov	dptr,#_dynamic_buffers_list
      002209 E4               [12]  938 	clr	a
      00220A F0               [24]  939 	movx	@dptr,a
      00220B A3               [24]  940 	inc	dptr
      00220C F0               [24]  941 	movx	@dptr,a
      00220D A3               [24]  942 	inc	dptr
      00220E F0               [24]  943 	movx	@dptr,a
                                    944 ;	src/main.c:126: while (true) 
      00220F                        945 00105$:
                                    946 ;	src/main.c:128: printf("\r\nPlease enter the last two digits of your ID:");
      00220F 74 38            [12]  947 	mov	a,#___str_0
      002211 C0 E0            [24]  948 	push	acc
      002213 74 4A            [12]  949 	mov	a,#(___str_0 >> 8)
      002215 C0 E0            [24]  950 	push	acc
      002217 74 80            [12]  951 	mov	a,#0x80
      002219 C0 E0            [24]  952 	push	acc
      00221B 12 3F F0         [24]  953 	lcall	_printf
      00221E 15 81            [12]  954 	dec	sp
      002220 15 81            [12]  955 	dec	sp
      002222 15 81            [12]  956 	dec	sp
                                    957 ;	src/main.c:129: get_string();
      002224 12 35 90         [24]  958 	lcall	_get_string
                                    959 ;	src/main.c:130: student_number = atoi(get_input_buffer());
      002227 12 35 89         [24]  960 	lcall	_get_input_buffer
      00222A 12 3C 9E         [24]  961 	lcall	_atoi
      00222D 85 82 25         [24]  962 	mov	_initialize_buffers_sloc2_1_0,dpl
                                    963 ;	src/main.c:131: if (!(student_number < 0 || student_number > MAX_STUDENT_NUMBER))
      002230 E5 83            [12]  964 	mov	a,dph
      002232 F5 26            [12]  965 	mov	(_initialize_buffers_sloc2_1_0 + 1),a
      002234 20 E7 D8         [24]  966 	jb	acc.7,00105$
      002237 C3               [12]  967 	clr	c
      002238 74 63            [12]  968 	mov	a,#0x63
      00223A 95 25            [12]  969 	subb	a,_initialize_buffers_sloc2_1_0
      00223C 74 80            [12]  970 	mov	a,#(0x00 ^ 0x80)
      00223E 85 26 F0         [24]  971 	mov	b,(_initialize_buffers_sloc2_1_0 + 1)
      002241 63 F0 80         [24]  972 	xrl	b,#0x80
      002244 95 F0            [12]  973 	subb	a,b
      002246 40 C7            [24]  974 	jc	00105$
                                    975 ;	src/main.c:137: size_t max_user_input = USER_BUFFER_MAX;
      002248 90 00 1D         [24]  976 	mov	dptr,#_initialize_buffers_max_user_input_65538_92
      00224B E4               [12]  977 	clr	a
      00224C F0               [24]  978 	movx	@dptr,a
      00224D 74 04            [12]  979 	mov	a,#0x04
      00224F A3               [24]  980 	inc	dptr
      002250 F0               [24]  981 	movx	@dptr,a
                                    982 ;	src/main.c:141: memset(static_buffers, 0, BUFFER_ALWAYS_HELD_COUNT * sizeof(buffer_t));
      002251 90 20 6F         [24]  983 	mov	dptr,#_memset_PARM_2
      002254 E4               [12]  984 	clr	a
      002255 F0               [24]  985 	movx	@dptr,a
      002256 90 20 70         [24]  986 	mov	dptr,#_memset_PARM_3
      002259 74 16            [12]  987 	mov	a,#0x16
      00225B F0               [24]  988 	movx	@dptr,a
      00225C E4               [12]  989 	clr	a
      00225D A3               [24]  990 	inc	dptr
      00225E F0               [24]  991 	movx	@dptr,a
      00225F 90 00 01         [24]  992 	mov	dptr,#_static_buffers
      002262 75 F0 00         [24]  993 	mov	b,#0x00
      002265 12 3C 76         [24]  994 	lcall	_memset
                                    995 ;	src/main.c:142: while(true)
      002268 74 02            [12]  996 	mov	a,#0x02
      00226A 25 25            [12]  997 	add	a,_initialize_buffers_sloc2_1_0
      00226C FC               [12]  998 	mov	r4,a
      00226D E4               [12]  999 	clr	a
      00226E 35 26            [12] 1000 	addc	a,(_initialize_buffers_sloc2_1_0 + 1)
      002270 FD               [12] 1001 	mov	r5,a
      002271                       1002 00121$:
                                   1003 ;	src/main.c:144: user_buffer_size = get_user_buffer_sz(max_user_input);
      002271 90 00 1D         [24] 1004 	mov	dptr,#_initialize_buffers_max_user_input_65538_92
      002274 E0               [24] 1005 	movx	a,@dptr
      002275 FA               [12] 1006 	mov	r2,a
      002276 A3               [24] 1007 	inc	dptr
      002277 E0               [24] 1008 	movx	a,@dptr
      002278 FB               [12] 1009 	mov	r3,a
      002279 8A 82            [24] 1010 	mov	dpl,r2
      00227B 8B 83            [24] 1011 	mov	dph,r3
      00227D C0 05            [24] 1012 	push	ar5
      00227F C0 04            [24] 1013 	push	ar4
      002281 12 2B AC         [24] 1014 	lcall	_get_user_buffer_sz
      002284 AA 82            [24] 1015 	mov	r2,dpl
      002286 AB 83            [24] 1016 	mov	r3,dph
      002288 D0 04            [24] 1017 	pop	ar4
      00228A D0 05            [24] 1018 	pop	ar5
                                   1019 ;	src/main.c:145: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00228C 78 00            [12] 1020 	mov	r0,#0x00
      00228E 79 00            [12] 1021 	mov	r1,#0x00
      002290                       1022 00132$:
      002290 C3               [12] 1023 	clr	c
      002291 E8               [12] 1024 	mov	a,r0
      002292 94 02            [12] 1025 	subb	a,#0x02
      002294 E9               [12] 1026 	mov	a,r1
      002295 64 80            [12] 1027 	xrl	a,#0x80
      002297 94 80            [12] 1028 	subb	a,#0x80
      002299 40 03            [24] 1029 	jc	00217$
      00229B 02 24 1D         [24] 1030 	ljmp	00150$
      00229E                       1031 00217$:
                                   1032 ;	src/main.c:148: static_buffers[i].buffer = malloc(user_buffer_size);
      00229E C0 04            [24] 1033 	push	ar4
      0022A0 C0 05            [24] 1034 	push	ar5
      0022A2 90 20 81         [24] 1035 	mov	dptr,#__mulint_PARM_2
      0022A5 E8               [12] 1036 	mov	a,r0
      0022A6 F0               [24] 1037 	movx	@dptr,a
      0022A7 E9               [12] 1038 	mov	a,r1
      0022A8 A3               [24] 1039 	inc	dptr
      0022A9 F0               [24] 1040 	movx	@dptr,a
      0022AA 90 00 0B         [24] 1041 	mov	dptr,#0x000b
      0022AD C0 05            [24] 1042 	push	ar5
      0022AF C0 04            [24] 1043 	push	ar4
      0022B1 C0 03            [24] 1044 	push	ar3
      0022B3 C0 02            [24] 1045 	push	ar2
      0022B5 C0 01            [24] 1046 	push	ar1
      0022B7 C0 00            [24] 1047 	push	ar0
      0022B9 12 3F 82         [24] 1048 	lcall	__mulint
      0022BC 85 82 21         [24] 1049 	mov	_initialize_buffers_sloc0_1_0,dpl
      0022BF 85 83 22         [24] 1050 	mov	(_initialize_buffers_sloc0_1_0 + 1),dph
      0022C2 D0 00            [24] 1051 	pop	ar0
      0022C4 D0 01            [24] 1052 	pop	ar1
      0022C6 D0 02            [24] 1053 	pop	ar2
      0022C8 D0 03            [24] 1054 	pop	ar3
      0022CA D0 04            [24] 1055 	pop	ar4
      0022CC D0 05            [24] 1056 	pop	ar5
      0022CE E5 21            [12] 1057 	mov	a,_initialize_buffers_sloc0_1_0
      0022D0 24 01            [12] 1058 	add	a,#_static_buffers
      0022D2 F5 23            [12] 1059 	mov	_initialize_buffers_sloc1_1_0,a
      0022D4 E5 22            [12] 1060 	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
      0022D6 34 00            [12] 1061 	addc	a,#(_static_buffers >> 8)
      0022D8 F5 24            [12] 1062 	mov	(_initialize_buffers_sloc1_1_0 + 1),a
      0022DA 8A 82            [24] 1063 	mov	dpl,r2
      0022DC 8B 83            [24] 1064 	mov	dph,r3
      0022DE C0 03            [24] 1065 	push	ar3
      0022E0 C0 02            [24] 1066 	push	ar2
      0022E2 C0 01            [24] 1067 	push	ar1
      0022E4 C0 00            [24] 1068 	push	ar0
      0022E6 12 3E 19         [24] 1069 	lcall	_malloc
      0022E9 AC 82            [24] 1070 	mov	r4,dpl
      0022EB AD 83            [24] 1071 	mov	r5,dph
      0022ED D0 00            [24] 1072 	pop	ar0
      0022EF D0 01            [24] 1073 	pop	ar1
      0022F1 D0 02            [24] 1074 	pop	ar2
      0022F3 D0 03            [24] 1075 	pop	ar3
      0022F5 85 23 82         [24] 1076 	mov	dpl,_initialize_buffers_sloc1_1_0
      0022F8 85 24 83         [24] 1077 	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
      0022FB EC               [12] 1078 	mov	a,r4
      0022FC F0               [24] 1079 	movx	@dptr,a
      0022FD ED               [12] 1080 	mov	a,r5
      0022FE A3               [24] 1081 	inc	dptr
      0022FF F0               [24] 1082 	movx	@dptr,a
                                   1083 ;	src/main.c:150: printf("\r\n static_buffers[%d].buffer %p", i, static_buffers[i].buffer);
      002300 7F 00            [12] 1084 	mov	r7,#0x00
      002302 C0 05            [24] 1085 	push	ar5
      002304 C0 04            [24] 1086 	push	ar4
      002306 C0 03            [24] 1087 	push	ar3
      002308 C0 02            [24] 1088 	push	ar2
      00230A C0 01            [24] 1089 	push	ar1
      00230C C0 00            [24] 1090 	push	ar0
      00230E C0 04            [24] 1091 	push	ar4
      002310 C0 05            [24] 1092 	push	ar5
      002312 C0 07            [24] 1093 	push	ar7
      002314 C0 00            [24] 1094 	push	ar0
      002316 C0 01            [24] 1095 	push	ar1
      002318 74 67            [12] 1096 	mov	a,#___str_1
      00231A C0 E0            [24] 1097 	push	acc
      00231C 74 4A            [12] 1098 	mov	a,#(___str_1 >> 8)
      00231E C0 E0            [24] 1099 	push	acc
      002320 74 80            [12] 1100 	mov	a,#0x80
      002322 C0 E0            [24] 1101 	push	acc
      002324 12 3F F0         [24] 1102 	lcall	_printf
      002327 E5 81            [12] 1103 	mov	a,sp
      002329 24 F8            [12] 1104 	add	a,#0xf8
      00232B F5 81            [12] 1105 	mov	sp,a
      00232D D0 00            [24] 1106 	pop	ar0
      00232F D0 01            [24] 1107 	pop	ar1
      002331 D0 02            [24] 1108 	pop	ar2
      002333 D0 03            [24] 1109 	pop	ar3
      002335 D0 04            [24] 1110 	pop	ar4
      002337 D0 05            [24] 1111 	pop	ar5
                                   1112 ;	src/main.c:151: if(static_buffers[i].buffer == NULL)
      002339 85 23 82         [24] 1113 	mov	dpl,_initialize_buffers_sloc1_1_0
      00233C 85 24 83         [24] 1114 	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
      00233F E0               [24] 1115 	movx	a,@dptr
      002340 FE               [12] 1116 	mov	r6,a
      002341 A3               [24] 1117 	inc	dptr
      002342 E0               [24] 1118 	movx	a,@dptr
      002343 FF               [12] 1119 	mov	r7,a
      002344 D0 05            [24] 1120 	pop	ar5
      002346 D0 04            [24] 1121 	pop	ar4
      002348 EE               [12] 1122 	mov	a,r6
      002349 4F               [12] 1123 	orl	a,r7
      00234A 70 3B            [24] 1124 	jnz	00108$
                                   1125 ;	src/main.c:153: free_all_buffers();
      00234C C0 05            [24] 1126 	push	ar5
      00234E C0 04            [24] 1127 	push	ar4
      002350 C0 03            [24] 1128 	push	ar3
      002352 C0 02            [24] 1129 	push	ar2
      002354 12 2C 06         [24] 1130 	lcall	_free_all_buffers
                                   1131 ;	src/main.c:154: printf(BUFFER_SZ_TOO_BIG);
      002357 74 87            [12] 1132 	mov	a,#___str_2
      002359 C0 E0            [24] 1133 	push	acc
      00235B 74 4A            [12] 1134 	mov	a,#(___str_2 >> 8)
      00235D C0 E0            [24] 1135 	push	acc
      00235F 74 80            [12] 1136 	mov	a,#0x80
      002361 C0 E0            [24] 1137 	push	acc
      002363 12 3F F0         [24] 1138 	lcall	_printf
      002366 15 81            [12] 1139 	dec	sp
      002368 15 81            [12] 1140 	dec	sp
      00236A 15 81            [12] 1141 	dec	sp
      00236C D0 02            [24] 1142 	pop	ar2
      00236E D0 03            [24] 1143 	pop	ar3
      002370 D0 04            [24] 1144 	pop	ar4
      002372 D0 05            [24] 1145 	pop	ar5
                                   1146 ;	src/main.c:155: max_user_input = user_buffer_size-1;
      002374 EA               [12] 1147 	mov	a,r2
      002375 24 FF            [12] 1148 	add	a,#0xff
      002377 FE               [12] 1149 	mov	r6,a
      002378 EB               [12] 1150 	mov	a,r3
      002379 34 FF            [12] 1151 	addc	a,#0xff
      00237B FF               [12] 1152 	mov	r7,a
      00237C 90 00 1D         [24] 1153 	mov	dptr,#_initialize_buffers_max_user_input_65538_92
      00237F EE               [12] 1154 	mov	a,r6
      002380 F0               [24] 1155 	movx	@dptr,a
      002381 EF               [12] 1156 	mov	a,r7
      002382 A3               [24] 1157 	inc	dptr
      002383 F0               [24] 1158 	movx	@dptr,a
                                   1159 ;	src/main.c:156: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
      002384 02 22 71         [24] 1160 	ljmp	00121$
      002387                       1161 00108$:
                                   1162 ;	src/main.c:158: static_buffers[i].size = (size_t) user_buffer_size;
      002387 C0 04            [24] 1163 	push	ar4
      002389 C0 05            [24] 1164 	push	ar5
      00238B E5 21            [12] 1165 	mov	a,_initialize_buffers_sloc0_1_0
      00238D 24 01            [12] 1166 	add	a,#_static_buffers
      00238F F5 23            [12] 1167 	mov	_initialize_buffers_sloc1_1_0,a
      002391 E5 22            [12] 1168 	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
      002393 34 00            [12] 1169 	addc	a,#(_static_buffers >> 8)
      002395 F5 24            [12] 1170 	mov	(_initialize_buffers_sloc1_1_0 + 1),a
      002397 85 23 82         [24] 1171 	mov	dpl,_initialize_buffers_sloc1_1_0
      00239A 85 24 83         [24] 1172 	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
      00239D A3               [24] 1173 	inc	dptr
      00239E A3               [24] 1174 	inc	dptr
      00239F A3               [24] 1175 	inc	dptr
      0023A0 A3               [24] 1176 	inc	dptr
      0023A1 EA               [12] 1177 	mov	a,r2
      0023A2 F0               [24] 1178 	movx	@dptr,a
      0023A3 EB               [12] 1179 	mov	a,r3
      0023A4 A3               [24] 1180 	inc	dptr
      0023A5 F0               [24] 1181 	movx	@dptr,a
                                   1182 ;	src/main.c:159: initialize_default_elements(&static_buffers[i]);
      0023A6 AC 23            [24] 1183 	mov	r4,_initialize_buffers_sloc1_1_0
      0023A8 AD 24            [24] 1184 	mov	r5,(_initialize_buffers_sloc1_1_0 + 1)
      0023AA 7F 00            [12] 1185 	mov	r7,#0x00
      0023AC 8C 82            [24] 1186 	mov	dpl,r4
      0023AE 8D 83            [24] 1187 	mov	dph,r5
      0023B0 8F F0            [24] 1188 	mov	b,r7
      0023B2 C0 05            [24] 1189 	push	ar5
      0023B4 C0 04            [24] 1190 	push	ar4
      0023B6 C0 03            [24] 1191 	push	ar3
      0023B8 C0 02            [24] 1192 	push	ar2
      0023BA C0 01            [24] 1193 	push	ar1
      0023BC C0 00            [24] 1194 	push	ar0
      0023BE 12 20 C8         [24] 1195 	lcall	_initialize_default_elements
      0023C1 D0 00            [24] 1196 	pop	ar0
      0023C3 D0 01            [24] 1197 	pop	ar1
      0023C5 D0 02            [24] 1198 	pop	ar2
      0023C7 D0 03            [24] 1199 	pop	ar3
      0023C9 D0 04            [24] 1200 	pop	ar4
      0023CB D0 05            [24] 1201 	pop	ar5
                                   1202 ;	src/main.c:160: printf("\r\n static_buffers[%d].buffer %p", i, static_buffers[i].buffer);
      0023CD 85 23 82         [24] 1203 	mov	dpl,_initialize_buffers_sloc1_1_0
      0023D0 85 24 83         [24] 1204 	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
      0023D3 E0               [24] 1205 	movx	a,@dptr
      0023D4 FE               [12] 1206 	mov	r6,a
      0023D5 A3               [24] 1207 	inc	dptr
      0023D6 E0               [24] 1208 	movx	a,@dptr
      0023D7 FF               [12] 1209 	mov	r7,a
      0023D8 7D 00            [12] 1210 	mov	r5,#0x00
      0023DA C0 05            [24] 1211 	push	ar5
      0023DC C0 04            [24] 1212 	push	ar4
      0023DE C0 03            [24] 1213 	push	ar3
      0023E0 C0 02            [24] 1214 	push	ar2
      0023E2 C0 01            [24] 1215 	push	ar1
      0023E4 C0 00            [24] 1216 	push	ar0
      0023E6 C0 06            [24] 1217 	push	ar6
      0023E8 C0 07            [24] 1218 	push	ar7
      0023EA C0 05            [24] 1219 	push	ar5
      0023EC C0 00            [24] 1220 	push	ar0
      0023EE C0 01            [24] 1221 	push	ar1
      0023F0 74 67            [12] 1222 	mov	a,#___str_1
      0023F2 C0 E0            [24] 1223 	push	acc
      0023F4 74 4A            [12] 1224 	mov	a,#(___str_1 >> 8)
      0023F6 C0 E0            [24] 1225 	push	acc
      0023F8 74 80            [12] 1226 	mov	a,#0x80
      0023FA C0 E0            [24] 1227 	push	acc
      0023FC 12 3F F0         [24] 1228 	lcall	_printf
      0023FF E5 81            [12] 1229 	mov	a,sp
      002401 24 F8            [12] 1230 	add	a,#0xf8
      002403 F5 81            [12] 1231 	mov	sp,a
      002405 D0 00            [24] 1232 	pop	ar0
      002407 D0 01            [24] 1233 	pop	ar1
      002409 D0 02            [24] 1234 	pop	ar2
      00240B D0 03            [24] 1235 	pop	ar3
      00240D D0 04            [24] 1236 	pop	ar4
      00240F D0 05            [24] 1237 	pop	ar5
                                   1238 ;	src/main.c:145: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002411 08               [12] 1239 	inc	r0
      002412 B8 00 01         [24] 1240 	cjne	r0,#0x00,00219$
      002415 09               [12] 1241 	inc	r1
      002416                       1242 00219$:
      002416 D0 05            [24] 1243 	pop	ar5
      002418 D0 04            [24] 1244 	pop	ar4
      00241A 02 22 90         [24] 1245 	ljmp	00132$
                                   1246 ;	src/main.c:165: for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
      00241D                       1247 00150$:
      00241D 7E 00            [12] 1248 	mov	r6,#0x00
      00241F 7F 00            [12] 1249 	mov	r7,#0x00
      002421                       1250 00135$:
      002421 C3               [12] 1251 	clr	c
      002422 EE               [12] 1252 	mov	a,r6
      002423 94 04            [12] 1253 	subb	a,#0x04
      002425 EF               [12] 1254 	mov	a,r7
      002426 64 80            [12] 1255 	xrl	a,#0x80
      002428 94 80            [12] 1256 	subb	a,#0x80
      00242A 40 03            [24] 1257 	jc	00220$
      00242C 02 24 CF         [24] 1258 	ljmp	00114$
      00242F                       1259 00220$:
                                   1260 ;	src/main.c:167: buffer_t *new_buffer = alloc_new_buffer(user_buffer_size);
      00242F 8A 82            [24] 1261 	mov	dpl,r2
      002431 8B 83            [24] 1262 	mov	dph,r3
      002433 C0 07            [24] 1263 	push	ar7
      002435 C0 06            [24] 1264 	push	ar6
      002437 C0 05            [24] 1265 	push	ar5
      002439 C0 04            [24] 1266 	push	ar4
      00243B C0 03            [24] 1267 	push	ar3
      00243D C0 02            [24] 1268 	push	ar2
      00243F 12 21 69         [24] 1269 	lcall	_alloc_new_buffer
      002442 85 82 27         [24] 1270 	mov	_initialize_buffers_sloc3_1_0,dpl
      002445 85 83 28         [24] 1271 	mov	(_initialize_buffers_sloc3_1_0 + 1),dph
      002448 85 F0 29         [24] 1272 	mov	(_initialize_buffers_sloc3_1_0 + 2),b
      00244B D0 02            [24] 1273 	pop	ar2
      00244D D0 03            [24] 1274 	pop	ar3
      00244F D0 04            [24] 1275 	pop	ar4
      002451 D0 05            [24] 1276 	pop	ar5
      002453 D0 06            [24] 1277 	pop	ar6
      002455 D0 07            [24] 1278 	pop	ar7
                                   1279 ;	src/main.c:168: if (new_buffer == NULL)
      002457 E5 27            [12] 1280 	mov	a,_initialize_buffers_sloc3_1_0
      002459 45 28            [12] 1281 	orl	a,(_initialize_buffers_sloc3_1_0 + 1)
      00245B 70 3B            [24] 1282 	jnz	00112$
                                   1283 ;	src/main.c:170: free_all_buffers();
      00245D C0 05            [24] 1284 	push	ar5
      00245F C0 04            [24] 1285 	push	ar4
      002461 C0 03            [24] 1286 	push	ar3
      002463 C0 02            [24] 1287 	push	ar2
      002465 12 2C 06         [24] 1288 	lcall	_free_all_buffers
                                   1289 ;	src/main.c:171: printf(BUFFER_SZ_TOO_BIG);
      002468 74 87            [12] 1290 	mov	a,#___str_2
      00246A C0 E0            [24] 1291 	push	acc
      00246C 74 4A            [12] 1292 	mov	a,#(___str_2 >> 8)
      00246E C0 E0            [24] 1293 	push	acc
      002470 74 80            [12] 1294 	mov	a,#0x80
      002472 C0 E0            [24] 1295 	push	acc
      002474 12 3F F0         [24] 1296 	lcall	_printf
      002477 15 81            [12] 1297 	dec	sp
      002479 15 81            [12] 1298 	dec	sp
      00247B 15 81            [12] 1299 	dec	sp
      00247D D0 02            [24] 1300 	pop	ar2
      00247F D0 03            [24] 1301 	pop	ar3
      002481 D0 04            [24] 1302 	pop	ar4
      002483 D0 05            [24] 1303 	pop	ar5
                                   1304 ;	src/main.c:172: max_user_input = user_buffer_size-1;
      002485 EA               [12] 1305 	mov	a,r2
      002486 24 FF            [12] 1306 	add	a,#0xff
      002488 F8               [12] 1307 	mov	r0,a
      002489 EB               [12] 1308 	mov	a,r3
      00248A 34 FF            [12] 1309 	addc	a,#0xff
      00248C F9               [12] 1310 	mov	r1,a
      00248D 90 00 1D         [24] 1311 	mov	dptr,#_initialize_buffers_max_user_input_65538_92
      002490 E8               [12] 1312 	mov	a,r0
      002491 F0               [24] 1313 	movx	@dptr,a
      002492 E9               [12] 1314 	mov	a,r1
      002493 A3               [24] 1315 	inc	dptr
      002494 F0               [24] 1316 	movx	@dptr,a
                                   1317 ;	src/main.c:173: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
      002495 02 22 71         [24] 1318 	ljmp	00121$
      002498                       1319 00112$:
                                   1320 ;	src/main.c:177: append_to_buffer_list(&dynamic_buffers_list, new_buffer);
      002498 90 20 41         [24] 1321 	mov	dptr,#_append_to_buffer_list_PARM_2
      00249B E5 27            [12] 1322 	mov	a,_initialize_buffers_sloc3_1_0
      00249D F0               [24] 1323 	movx	@dptr,a
      00249E E5 28            [12] 1324 	mov	a,(_initialize_buffers_sloc3_1_0 + 1)
      0024A0 A3               [24] 1325 	inc	dptr
      0024A1 F0               [24] 1326 	movx	@dptr,a
      0024A2 E5 29            [12] 1327 	mov	a,(_initialize_buffers_sloc3_1_0 + 2)
      0024A4 A3               [24] 1328 	inc	dptr
      0024A5 F0               [24] 1329 	movx	@dptr,a
      0024A6 90 20 BA         [24] 1330 	mov	dptr,#_dynamic_buffers_list
      0024A9 75 F0 00         [24] 1331 	mov	b,#0x00
      0024AC C0 07            [24] 1332 	push	ar7
      0024AE C0 06            [24] 1333 	push	ar6
      0024B0 C0 05            [24] 1334 	push	ar5
      0024B2 C0 04            [24] 1335 	push	ar4
      0024B4 C0 03            [24] 1336 	push	ar3
      0024B6 C0 02            [24] 1337 	push	ar2
      0024B8 12 36 D5         [24] 1338 	lcall	_append_to_buffer_list
      0024BB D0 02            [24] 1339 	pop	ar2
      0024BD D0 03            [24] 1340 	pop	ar3
      0024BF D0 04            [24] 1341 	pop	ar4
      0024C1 D0 05            [24] 1342 	pop	ar5
      0024C3 D0 06            [24] 1343 	pop	ar6
      0024C5 D0 07            [24] 1344 	pop	ar7
                                   1345 ;	src/main.c:165: for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
      0024C7 0E               [12] 1346 	inc	r6
      0024C8 BE 00 01         [24] 1347 	cjne	r6,#0x00,00222$
      0024CB 0F               [12] 1348 	inc	r7
      0024CC                       1349 00222$:
      0024CC 02 24 21         [24] 1350 	ljmp	00135$
      0024CF                       1351 00114$:
                                   1352 ;	src/main.c:181: buffer_t *buffer_4 = alloc_new_buffer((size_t) 10 * (student_number + 2));
      0024CF 90 20 81         [24] 1353 	mov	dptr,#__mulint_PARM_2
      0024D2 EC               [12] 1354 	mov	a,r4
      0024D3 F0               [24] 1355 	movx	@dptr,a
      0024D4 ED               [12] 1356 	mov	a,r5
      0024D5 A3               [24] 1357 	inc	dptr
      0024D6 F0               [24] 1358 	movx	@dptr,a
      0024D7 90 00 0A         [24] 1359 	mov	dptr,#0x000a
      0024DA C0 05            [24] 1360 	push	ar5
      0024DC C0 04            [24] 1361 	push	ar4
      0024DE C0 03            [24] 1362 	push	ar3
      0024E0 C0 02            [24] 1363 	push	ar2
      0024E2 12 3F 82         [24] 1364 	lcall	__mulint
      0024E5 12 21 69         [24] 1365 	lcall	_alloc_new_buffer
      0024E8 A9 82            [24] 1366 	mov	r1,dpl
      0024EA AE 83            [24] 1367 	mov	r6,dph
      0024EC D0 02            [24] 1368 	pop	ar2
      0024EE D0 03            [24] 1369 	pop	ar3
      0024F0 D0 04            [24] 1370 	pop	ar4
      0024F2 D0 05            [24] 1371 	pop	ar5
                                   1372 ;	src/main.c:183: if (buffer_4 == NULL)
      0024F4 E9               [12] 1373 	mov	a,r1
      0024F5 4E               [12] 1374 	orl	a,r6
      0024F6 70 3B            [24] 1375 	jnz	00116$
                                   1376 ;	src/main.c:185: free_all_buffers();
      0024F8 C0 05            [24] 1377 	push	ar5
      0024FA C0 04            [24] 1378 	push	ar4
      0024FC C0 03            [24] 1379 	push	ar3
      0024FE C0 02            [24] 1380 	push	ar2
      002500 12 2C 06         [24] 1381 	lcall	_free_all_buffers
                                   1382 ;	src/main.c:186: printf(BUFFER_SZ_TOO_BIG);
      002503 74 87            [12] 1383 	mov	a,#___str_2
      002505 C0 E0            [24] 1384 	push	acc
      002507 74 4A            [12] 1385 	mov	a,#(___str_2 >> 8)
      002509 C0 E0            [24] 1386 	push	acc
      00250B 74 80            [12] 1387 	mov	a,#0x80
      00250D C0 E0            [24] 1388 	push	acc
      00250F 12 3F F0         [24] 1389 	lcall	_printf
      002512 15 81            [12] 1390 	dec	sp
      002514 15 81            [12] 1391 	dec	sp
      002516 15 81            [12] 1392 	dec	sp
      002518 D0 02            [24] 1393 	pop	ar2
      00251A D0 03            [24] 1394 	pop	ar3
      00251C D0 04            [24] 1395 	pop	ar4
      00251E D0 05            [24] 1396 	pop	ar5
                                   1397 ;	src/main.c:187: max_user_input = user_buffer_size-1;
      002520 EA               [12] 1398 	mov	a,r2
      002521 24 FF            [12] 1399 	add	a,#0xff
      002523 FE               [12] 1400 	mov	r6,a
      002524 EB               [12] 1401 	mov	a,r3
      002525 34 FF            [12] 1402 	addc	a,#0xff
      002527 FF               [12] 1403 	mov	r7,a
      002528 90 00 1D         [24] 1404 	mov	dptr,#_initialize_buffers_max_user_input_65538_92
      00252B EE               [12] 1405 	mov	a,r6
      00252C F0               [24] 1406 	movx	@dptr,a
      00252D EF               [12] 1407 	mov	a,r7
      00252E A3               [24] 1408 	inc	dptr
      00252F F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	src/main.c:188: continue;
      002530 02 22 71         [24] 1411 	ljmp	00121$
      002533                       1412 00116$:
                                   1413 ;	src/main.c:191: buffer_t *buffer_5 = alloc_new_buffer((size_t) 2 * user_buffer_size);
      002533 EA               [12] 1414 	mov	a,r2
      002534 2A               [12] 1415 	add	a,r2
      002535 FE               [12] 1416 	mov	r6,a
      002536 EB               [12] 1417 	mov	a,r3
      002537 33               [12] 1418 	rlc	a
      002538 FF               [12] 1419 	mov	r7,a
      002539 8E 82            [24] 1420 	mov	dpl,r6
      00253B 8F 83            [24] 1421 	mov	dph,r7
      00253D C0 05            [24] 1422 	push	ar5
      00253F C0 04            [24] 1423 	push	ar4
      002541 C0 03            [24] 1424 	push	ar3
      002543 C0 02            [24] 1425 	push	ar2
      002545 12 21 69         [24] 1426 	lcall	_alloc_new_buffer
      002548 A9 82            [24] 1427 	mov	r1,dpl
      00254A AE 83            [24] 1428 	mov	r6,dph
      00254C D0 02            [24] 1429 	pop	ar2
      00254E D0 03            [24] 1430 	pop	ar3
      002550 D0 04            [24] 1431 	pop	ar4
      002552 D0 05            [24] 1432 	pop	ar5
                                   1433 ;	src/main.c:192: if (buffer_5 == NULL)
      002554 E9               [12] 1434 	mov	a,r1
      002555 4E               [12] 1435 	orl	a,r6
      002556 70 3B            [24] 1436 	jnz	00122$
                                   1437 ;	src/main.c:194: free_all_buffers();
      002558 C0 05            [24] 1438 	push	ar5
      00255A C0 04            [24] 1439 	push	ar4
      00255C C0 03            [24] 1440 	push	ar3
      00255E C0 02            [24] 1441 	push	ar2
      002560 12 2C 06         [24] 1442 	lcall	_free_all_buffers
                                   1443 ;	src/main.c:195: printf(BUFFER_SZ_TOO_BIG);
      002563 74 87            [12] 1444 	mov	a,#___str_2
      002565 C0 E0            [24] 1445 	push	acc
      002567 74 4A            [12] 1446 	mov	a,#(___str_2 >> 8)
      002569 C0 E0            [24] 1447 	push	acc
      00256B 74 80            [12] 1448 	mov	a,#0x80
      00256D C0 E0            [24] 1449 	push	acc
      00256F 12 3F F0         [24] 1450 	lcall	_printf
      002572 15 81            [12] 1451 	dec	sp
      002574 15 81            [12] 1452 	dec	sp
      002576 15 81            [12] 1453 	dec	sp
      002578 D0 02            [24] 1454 	pop	ar2
      00257A D0 03            [24] 1455 	pop	ar3
      00257C D0 04            [24] 1456 	pop	ar4
      00257E D0 05            [24] 1457 	pop	ar5
                                   1458 ;	src/main.c:196: max_user_input = user_buffer_size-1;
      002580 EA               [12] 1459 	mov	a,r2
      002581 24 FF            [12] 1460 	add	a,#0xff
      002583 FE               [12] 1461 	mov	r6,a
      002584 EB               [12] 1462 	mov	a,r3
      002585 34 FF            [12] 1463 	addc	a,#0xff
      002587 FF               [12] 1464 	mov	r7,a
      002588 90 00 1D         [24] 1465 	mov	dptr,#_initialize_buffers_max_user_input_65538_92
      00258B EE               [12] 1466 	mov	a,r6
      00258C F0               [24] 1467 	movx	@dptr,a
      00258D EF               [12] 1468 	mov	a,r7
      00258E A3               [24] 1469 	inc	dptr
      00258F F0               [24] 1470 	movx	@dptr,a
                                   1471 ;	src/main.c:197: continue;
      002590 02 22 71         [24] 1472 	ljmp	00121$
                                   1473 ;	src/main.c:200: get_the_buffer_sz:;
      002593                       1474 00122$:
                                   1475 ;	src/main.c:203: printf("\r\nstudent_number: %d", student_number);
      002593 C0 03            [24] 1476 	push	ar3
      002595 C0 02            [24] 1477 	push	ar2
      002597 C0 25            [24] 1478 	push	_initialize_buffers_sloc2_1_0
      002599 C0 26            [24] 1479 	push	(_initialize_buffers_sloc2_1_0 + 1)
      00259B 74 C0            [12] 1480 	mov	a,#___str_3
      00259D C0 E0            [24] 1481 	push	acc
      00259F 74 4A            [12] 1482 	mov	a,#(___str_3 >> 8)
      0025A1 C0 E0            [24] 1483 	push	acc
      0025A3 74 80            [12] 1484 	mov	a,#0x80
      0025A5 C0 E0            [24] 1485 	push	acc
      0025A7 12 3F F0         [24] 1486 	lcall	_printf
      0025AA E5 81            [12] 1487 	mov	a,sp
      0025AC 24 FB            [12] 1488 	add	a,#0xfb
      0025AE F5 81            [12] 1489 	mov	sp,a
      0025B0 D0 02            [24] 1490 	pop	ar2
      0025B2 D0 03            [24] 1491 	pop	ar3
                                   1492 ;	src/main.c:204: printf("\r\nuser_buffer_size: %zu", user_buffer_size);
      0025B4 C0 02            [24] 1493 	push	ar2
      0025B6 C0 03            [24] 1494 	push	ar3
      0025B8 74 D5            [12] 1495 	mov	a,#___str_4
      0025BA C0 E0            [24] 1496 	push	acc
      0025BC 74 4A            [12] 1497 	mov	a,#(___str_4 >> 8)
      0025BE C0 E0            [24] 1498 	push	acc
      0025C0 74 80            [12] 1499 	mov	a,#0x80
      0025C2 C0 E0            [24] 1500 	push	acc
      0025C4 12 3F F0         [24] 1501 	lcall	_printf
      0025C7 E5 81            [12] 1502 	mov	a,sp
      0025C9 24 FB            [12] 1503 	add	a,#0xfb
      0025CB F5 81            [12] 1504 	mov	sp,a
                                   1505 ;	src/main.c:206: size_t total_heap_sz = 0;
      0025CD 90 00 1F         [24] 1506 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_106
      0025D0 E4               [12] 1507 	clr	a
      0025D1 F0               [24] 1508 	movx	@dptr,a
      0025D2 A3               [24] 1509 	inc	dptr
      0025D3 F0               [24] 1510 	movx	@dptr,a
                                   1511 ;	src/main.c:208: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      0025D4 7E 00            [12] 1512 	mov	r6,#0x00
      0025D6 7F 00            [12] 1513 	mov	r7,#0x00
      0025D8                       1514 00137$:
                                   1515 ;	src/main.c:210: printf("\r\n static_buffers[%d].buffer %p", i, static_buffers[i].buffer);
      0025D8 90 20 81         [24] 1516 	mov	dptr,#__mulint_PARM_2
      0025DB EE               [12] 1517 	mov	a,r6
      0025DC F0               [24] 1518 	movx	@dptr,a
      0025DD EF               [12] 1519 	mov	a,r7
      0025DE A3               [24] 1520 	inc	dptr
      0025DF F0               [24] 1521 	movx	@dptr,a
      0025E0 90 00 0B         [24] 1522 	mov	dptr,#0x000b
      0025E3 C0 07            [24] 1523 	push	ar7
      0025E5 C0 06            [24] 1524 	push	ar6
      0025E7 12 3F 82         [24] 1525 	lcall	__mulint
      0025EA AC 82            [24] 1526 	mov	r4,dpl
      0025EC AD 83            [24] 1527 	mov	r5,dph
      0025EE D0 06            [24] 1528 	pop	ar6
      0025F0 D0 07            [24] 1529 	pop	ar7
      0025F2 EC               [12] 1530 	mov	a,r4
      0025F3 24 01            [12] 1531 	add	a,#_static_buffers
      0025F5 F5 27            [12] 1532 	mov	_initialize_buffers_sloc3_1_0,a
      0025F7 ED               [12] 1533 	mov	a,r5
      0025F8 34 00            [12] 1534 	addc	a,#(_static_buffers >> 8)
      0025FA F5 28            [12] 1535 	mov	(_initialize_buffers_sloc3_1_0 + 1),a
      0025FC 85 27 82         [24] 1536 	mov	dpl,_initialize_buffers_sloc3_1_0
      0025FF 85 28 83         [24] 1537 	mov	dph,(_initialize_buffers_sloc3_1_0 + 1)
      002602 E0               [24] 1538 	movx	a,@dptr
      002603 F8               [12] 1539 	mov	r0,a
      002604 A3               [24] 1540 	inc	dptr
      002605 E0               [24] 1541 	movx	a,@dptr
      002606 F9               [12] 1542 	mov	r1,a
      002607 7B 00            [12] 1543 	mov	r3,#0x00
      002609 C0 07            [24] 1544 	push	ar7
      00260B C0 06            [24] 1545 	push	ar6
      00260D C0 05            [24] 1546 	push	ar5
      00260F C0 04            [24] 1547 	push	ar4
      002611 C0 00            [24] 1548 	push	ar0
      002613 C0 01            [24] 1549 	push	ar1
      002615 C0 03            [24] 1550 	push	ar3
      002617 C0 06            [24] 1551 	push	ar6
      002619 C0 07            [24] 1552 	push	ar7
      00261B 74 67            [12] 1553 	mov	a,#___str_1
      00261D C0 E0            [24] 1554 	push	acc
      00261F 74 4A            [12] 1555 	mov	a,#(___str_1 >> 8)
      002621 C0 E0            [24] 1556 	push	acc
      002623 74 80            [12] 1557 	mov	a,#0x80
      002625 C0 E0            [24] 1558 	push	acc
      002627 12 3F F0         [24] 1559 	lcall	_printf
      00262A E5 81            [12] 1560 	mov	a,sp
      00262C 24 F8            [12] 1561 	add	a,#0xf8
      00262E F5 81            [12] 1562 	mov	sp,a
      002630 D0 04            [24] 1563 	pop	ar4
      002632 D0 05            [24] 1564 	pop	ar5
      002634 D0 06            [24] 1565 	pop	ar6
      002636 D0 07            [24] 1566 	pop	ar7
                                   1567 ;	src/main.c:211: if(static_buffers[i].buffer != NULL) {
      002638 85 27 82         [24] 1568 	mov	dpl,_initialize_buffers_sloc3_1_0
      00263B 85 28 83         [24] 1569 	mov	dph,(_initialize_buffers_sloc3_1_0 + 1)
      00263E E0               [24] 1570 	movx	a,@dptr
      00263F FA               [12] 1571 	mov	r2,a
      002640 A3               [24] 1572 	inc	dptr
      002641 E0               [24] 1573 	movx	a,@dptr
      002642 FB               [12] 1574 	mov	r3,a
      002643 4A               [12] 1575 	orl	a,r2
      002644 70 03            [24] 1576 	jnz	00225$
      002646 02 26 D9         [24] 1577 	ljmp	00138$
      002649                       1578 00225$:
                                   1579 ;	src/main.c:212: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, static_buffers[i].buffer, static_buffers[i].buffer + static_buffers[i].size, static_buffers[i].size);
      002649 EC               [12] 1580 	mov	a,r4
      00264A 24 01            [12] 1581 	add	a,#_static_buffers
      00264C FC               [12] 1582 	mov	r4,a
      00264D ED               [12] 1583 	mov	a,r5
      00264E 34 00            [12] 1584 	addc	a,#(_static_buffers >> 8)
      002650 FD               [12] 1585 	mov	r5,a
      002651 74 04            [12] 1586 	mov	a,#0x04
      002653 2C               [12] 1587 	add	a,r4
      002654 FA               [12] 1588 	mov	r2,a
      002655 E4               [12] 1589 	clr	a
      002656 3D               [12] 1590 	addc	a,r5
      002657 FB               [12] 1591 	mov	r3,a
      002658 8A 82            [24] 1592 	mov	dpl,r2
      00265A 8B 83            [24] 1593 	mov	dph,r3
      00265C E0               [24] 1594 	movx	a,@dptr
      00265D F5 25            [12] 1595 	mov	_initialize_buffers_sloc2_1_0,a
      00265F A3               [24] 1596 	inc	dptr
      002660 E0               [24] 1597 	movx	a,@dptr
      002661 F5 26            [12] 1598 	mov	(_initialize_buffers_sloc2_1_0 + 1),a
      002663 8C 82            [24] 1599 	mov	dpl,r4
      002665 8D 83            [24] 1600 	mov	dph,r5
      002667 E0               [24] 1601 	movx	a,@dptr
      002668 F5 27            [12] 1602 	mov	_initialize_buffers_sloc3_1_0,a
      00266A A3               [24] 1603 	inc	dptr
      00266B E0               [24] 1604 	movx	a,@dptr
      00266C F5 28            [12] 1605 	mov	(_initialize_buffers_sloc3_1_0 + 1),a
      00266E E5 25            [12] 1606 	mov	a,_initialize_buffers_sloc2_1_0
      002670 25 27            [12] 1607 	add	a,_initialize_buffers_sloc3_1_0
      002672 FC               [12] 1608 	mov	r4,a
      002673 E5 26            [12] 1609 	mov	a,(_initialize_buffers_sloc2_1_0 + 1)
      002675 35 28            [12] 1610 	addc	a,(_initialize_buffers_sloc3_1_0 + 1)
      002677 FD               [12] 1611 	mov	r5,a
      002678 8C 2A            [24] 1612 	mov	_initialize_buffers_sloc4_1_0,r4
      00267A 8D 2B            [24] 1613 	mov	(_initialize_buffers_sloc4_1_0 + 1),r5
      00267C 75 2C 00         [24] 1614 	mov	(_initialize_buffers_sloc4_1_0 + 2),#0x00
      00267F A8 27            [24] 1615 	mov	r0,_initialize_buffers_sloc3_1_0
      002681 AD 28            [24] 1616 	mov	r5,(_initialize_buffers_sloc3_1_0 + 1)
      002683 7C 00            [12] 1617 	mov	r4,#0x00
      002685 C0 07            [24] 1618 	push	ar7
      002687 C0 06            [24] 1619 	push	ar6
      002689 C0 03            [24] 1620 	push	ar3
      00268B C0 02            [24] 1621 	push	ar2
      00268D C0 25            [24] 1622 	push	_initialize_buffers_sloc2_1_0
      00268F C0 26            [24] 1623 	push	(_initialize_buffers_sloc2_1_0 + 1)
      002691 C0 2A            [24] 1624 	push	_initialize_buffers_sloc4_1_0
      002693 C0 2B            [24] 1625 	push	(_initialize_buffers_sloc4_1_0 + 1)
      002695 C0 2C            [24] 1626 	push	(_initialize_buffers_sloc4_1_0 + 2)
      002697 C0 00            [24] 1627 	push	ar0
      002699 C0 05            [24] 1628 	push	ar5
      00269B C0 04            [24] 1629 	push	ar4
      00269D C0 06            [24] 1630 	push	ar6
      00269F C0 07            [24] 1631 	push	ar7
      0026A1 74 ED            [12] 1632 	mov	a,#___str_5
      0026A3 C0 E0            [24] 1633 	push	acc
      0026A5 74 4A            [12] 1634 	mov	a,#(___str_5 >> 8)
      0026A7 C0 E0            [24] 1635 	push	acc
      0026A9 74 80            [12] 1636 	mov	a,#0x80
      0026AB C0 E0            [24] 1637 	push	acc
      0026AD 12 3F F0         [24] 1638 	lcall	_printf
      0026B0 E5 81            [12] 1639 	mov	a,sp
      0026B2 24 F3            [12] 1640 	add	a,#0xf3
      0026B4 F5 81            [12] 1641 	mov	sp,a
      0026B6 D0 02            [24] 1642 	pop	ar2
      0026B8 D0 03            [24] 1643 	pop	ar3
      0026BA D0 06            [24] 1644 	pop	ar6
      0026BC D0 07            [24] 1645 	pop	ar7
                                   1646 ;	src/main.c:213: total_heap_sz += static_buffers[i].size; 
      0026BE 8A 82            [24] 1647 	mov	dpl,r2
      0026C0 8B 83            [24] 1648 	mov	dph,r3
      0026C2 E0               [24] 1649 	movx	a,@dptr
      0026C3 FA               [12] 1650 	mov	r2,a
      0026C4 A3               [24] 1651 	inc	dptr
      0026C5 E0               [24] 1652 	movx	a,@dptr
      0026C6 FB               [12] 1653 	mov	r3,a
      0026C7 90 00 1F         [24] 1654 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_106
      0026CA E0               [24] 1655 	movx	a,@dptr
      0026CB FC               [12] 1656 	mov	r4,a
      0026CC A3               [24] 1657 	inc	dptr
      0026CD E0               [24] 1658 	movx	a,@dptr
      0026CE FD               [12] 1659 	mov	r5,a
      0026CF 90 00 1F         [24] 1660 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_106
      0026D2 EA               [12] 1661 	mov	a,r2
      0026D3 2C               [12] 1662 	add	a,r4
      0026D4 F0               [24] 1663 	movx	@dptr,a
      0026D5 EB               [12] 1664 	mov	a,r3
      0026D6 3D               [12] 1665 	addc	a,r5
      0026D7 A3               [24] 1666 	inc	dptr
      0026D8 F0               [24] 1667 	movx	@dptr,a
      0026D9                       1668 00138$:
                                   1669 ;	src/main.c:208: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      0026D9 0E               [12] 1670 	inc	r6
      0026DA BE 00 01         [24] 1671 	cjne	r6,#0x00,00226$
      0026DD 0F               [12] 1672 	inc	r7
      0026DE                       1673 00226$:
      0026DE C3               [12] 1674 	clr	c
      0026DF EE               [12] 1675 	mov	a,r6
      0026E0 94 02            [12] 1676 	subb	a,#0x02
      0026E2 EF               [12] 1677 	mov	a,r7
      0026E3 64 80            [12] 1678 	xrl	a,#0x80
      0026E5 94 80            [12] 1679 	subb	a,#0x80
      0026E7 50 03            [24] 1680 	jnc	00227$
      0026E9 02 25 D8         [24] 1681 	ljmp	00137$
      0026EC                       1682 00227$:
                                   1683 ;	src/main.c:217: buffer_t *curr = dynamic_buffers_list.head;
      0026EC 90 20 BA         [24] 1684 	mov	dptr,#_dynamic_buffers_list
      0026EF E0               [24] 1685 	movx	a,@dptr
      0026F0 FB               [12] 1686 	mov	r3,a
      0026F1 A3               [24] 1687 	inc	dptr
      0026F2 E0               [24] 1688 	movx	a,@dptr
      0026F3 FC               [12] 1689 	mov	r4,a
      0026F4 A3               [24] 1690 	inc	dptr
      0026F5 E0               [24] 1691 	movx	a,@dptr
      0026F6 FD               [12] 1692 	mov	r5,a
      0026F7 90 00 21         [24] 1693 	mov	dptr,#_initialize_buffers_curr_65540_110
      0026FA EB               [12] 1694 	mov	a,r3
      0026FB F0               [24] 1695 	movx	@dptr,a
      0026FC EC               [12] 1696 	mov	a,r4
      0026FD A3               [24] 1697 	inc	dptr
      0026FE F0               [24] 1698 	movx	@dptr,a
      0026FF ED               [12] 1699 	mov	a,r5
      002700 A3               [24] 1700 	inc	dptr
      002701 F0               [24] 1701 	movx	@dptr,a
                                   1702 ;	src/main.c:219: while(curr != NULL) {
      002702 8E 2A            [24] 1703 	mov	_initialize_buffers_sloc4_1_0,r6
      002704 8F 2B            [24] 1704 	mov	(_initialize_buffers_sloc4_1_0 + 1),r7
      002706                       1705 00128$:
      002706 90 00 21         [24] 1706 	mov	dptr,#_initialize_buffers_curr_65540_110
      002709 E0               [24] 1707 	movx	a,@dptr
      00270A FB               [12] 1708 	mov	r3,a
      00270B A3               [24] 1709 	inc	dptr
      00270C E0               [24] 1710 	movx	a,@dptr
      00270D FC               [12] 1711 	mov	r4,a
      00270E A3               [24] 1712 	inc	dptr
      00270F E0               [24] 1713 	movx	a,@dptr
      002710 FD               [12] 1714 	mov	r5,a
      002711 EB               [12] 1715 	mov	a,r3
      002712 4C               [12] 1716 	orl	a,r4
      002713 70 03            [24] 1717 	jnz	00228$
      002715 02 27 E8         [24] 1718 	ljmp	00130$
      002718                       1719 00228$:
                                   1720 ;	src/main.c:220: if(curr->buffer != NULL) {
      002718 8B 82            [24] 1721 	mov	dpl,r3
      00271A 8C 83            [24] 1722 	mov	dph,r4
      00271C 8D F0            [24] 1723 	mov	b,r5
      00271E 12 4A 1C         [24] 1724 	lcall	__gptrget
      002721 F9               [12] 1725 	mov	r1,a
      002722 A3               [24] 1726 	inc	dptr
      002723 12 4A 1C         [24] 1727 	lcall	__gptrget
      002726 FA               [12] 1728 	mov	r2,a
      002727 49               [12] 1729 	orl	a,r1
      002728 70 03            [24] 1730 	jnz	00229$
      00272A 02 27 AC         [24] 1731 	ljmp	00127$
      00272D                       1732 00229$:
                                   1733 ;	src/main.c:221: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, curr->buffer, curr->buffer + curr->size, curr->size);
      00272D 74 04            [12] 1734 	mov	a,#0x04
      00272F 2B               [12] 1735 	add	a,r3
      002730 FB               [12] 1736 	mov	r3,a
      002731 E4               [12] 1737 	clr	a
      002732 3C               [12] 1738 	addc	a,r4
      002733 FC               [12] 1739 	mov	r4,a
      002734 8B 82            [24] 1740 	mov	dpl,r3
      002736 8C 83            [24] 1741 	mov	dph,r4
      002738 8D F0            [24] 1742 	mov	b,r5
      00273A 12 4A 1C         [24] 1743 	lcall	__gptrget
      00273D F5 27            [12] 1744 	mov	_initialize_buffers_sloc3_1_0,a
      00273F A3               [24] 1745 	inc	dptr
      002740 12 4A 1C         [24] 1746 	lcall	__gptrget
      002743 F5 28            [12] 1747 	mov	(_initialize_buffers_sloc3_1_0 + 1),a
      002745 E5 27            [12] 1748 	mov	a,_initialize_buffers_sloc3_1_0
      002747 29               [12] 1749 	add	a,r1
      002748 FE               [12] 1750 	mov	r6,a
      002749 E5 28            [12] 1751 	mov	a,(_initialize_buffers_sloc3_1_0 + 1)
      00274B 3A               [12] 1752 	addc	a,r2
      00274C FF               [12] 1753 	mov	r7,a
      00274D 8E 2D            [24] 1754 	mov	_initialize_buffers_sloc5_1_0,r6
      00274F 8F 2E            [24] 1755 	mov	(_initialize_buffers_sloc5_1_0 + 1),r7
      002751 75 2F 00         [24] 1756 	mov	(_initialize_buffers_sloc5_1_0 + 2),#0x00
      002754 7F 00            [12] 1757 	mov	r7,#0x00
      002756 C0 05            [24] 1758 	push	ar5
      002758 C0 04            [24] 1759 	push	ar4
      00275A C0 03            [24] 1760 	push	ar3
      00275C C0 27            [24] 1761 	push	_initialize_buffers_sloc3_1_0
      00275E C0 28            [24] 1762 	push	(_initialize_buffers_sloc3_1_0 + 1)
      002760 C0 2D            [24] 1763 	push	_initialize_buffers_sloc5_1_0
      002762 C0 2E            [24] 1764 	push	(_initialize_buffers_sloc5_1_0 + 1)
      002764 C0 2F            [24] 1765 	push	(_initialize_buffers_sloc5_1_0 + 2)
      002766 C0 01            [24] 1766 	push	ar1
      002768 C0 02            [24] 1767 	push	ar2
      00276A C0 07            [24] 1768 	push	ar7
      00276C C0 2A            [24] 1769 	push	_initialize_buffers_sloc4_1_0
      00276E C0 2B            [24] 1770 	push	(_initialize_buffers_sloc4_1_0 + 1)
      002770 74 ED            [12] 1771 	mov	a,#___str_5
      002772 C0 E0            [24] 1772 	push	acc
      002774 74 4A            [12] 1773 	mov	a,#(___str_5 >> 8)
      002776 C0 E0            [24] 1774 	push	acc
      002778 74 80            [12] 1775 	mov	a,#0x80
      00277A C0 E0            [24] 1776 	push	acc
      00277C 12 3F F0         [24] 1777 	lcall	_printf
      00277F E5 81            [12] 1778 	mov	a,sp
      002781 24 F3            [12] 1779 	add	a,#0xf3
      002783 F5 81            [12] 1780 	mov	sp,a
      002785 D0 03            [24] 1781 	pop	ar3
      002787 D0 04            [24] 1782 	pop	ar4
      002789 D0 05            [24] 1783 	pop	ar5
                                   1784 ;	src/main.c:222: total_heap_sz += curr->size; 
      00278B 8B 82            [24] 1785 	mov	dpl,r3
      00278D 8C 83            [24] 1786 	mov	dph,r4
      00278F 8D F0            [24] 1787 	mov	b,r5
      002791 12 4A 1C         [24] 1788 	lcall	__gptrget
      002794 FB               [12] 1789 	mov	r3,a
      002795 A3               [24] 1790 	inc	dptr
      002796 12 4A 1C         [24] 1791 	lcall	__gptrget
      002799 FC               [12] 1792 	mov	r4,a
      00279A 90 00 1F         [24] 1793 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_106
      00279D E0               [24] 1794 	movx	a,@dptr
      00279E FE               [12] 1795 	mov	r6,a
      00279F A3               [24] 1796 	inc	dptr
      0027A0 E0               [24] 1797 	movx	a,@dptr
      0027A1 FF               [12] 1798 	mov	r7,a
      0027A2 90 00 1F         [24] 1799 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_106
      0027A5 EB               [12] 1800 	mov	a,r3
      0027A6 2E               [12] 1801 	add	a,r6
      0027A7 F0               [24] 1802 	movx	@dptr,a
      0027A8 EC               [12] 1803 	mov	a,r4
      0027A9 3F               [12] 1804 	addc	a,r7
      0027AA A3               [24] 1805 	inc	dptr
      0027AB F0               [24] 1806 	movx	@dptr,a
      0027AC                       1807 00127$:
                                   1808 ;	src/main.c:224: i++; 
      0027AC 05 2A            [12] 1809 	inc	_initialize_buffers_sloc4_1_0
      0027AE E4               [12] 1810 	clr	a
      0027AF B5 2A 02         [24] 1811 	cjne	a,_initialize_buffers_sloc4_1_0,00230$
      0027B2 05 2B            [12] 1812 	inc	(_initialize_buffers_sloc4_1_0 + 1)
      0027B4                       1813 00230$:
                                   1814 ;	src/main.c:225: curr = curr->next;
      0027B4 90 00 21         [24] 1815 	mov	dptr,#_initialize_buffers_curr_65540_110
      0027B7 E0               [24] 1816 	movx	a,@dptr
      0027B8 FD               [12] 1817 	mov	r5,a
      0027B9 A3               [24] 1818 	inc	dptr
      0027BA E0               [24] 1819 	movx	a,@dptr
      0027BB FE               [12] 1820 	mov	r6,a
      0027BC A3               [24] 1821 	inc	dptr
      0027BD E0               [24] 1822 	movx	a,@dptr
      0027BE FF               [12] 1823 	mov	r7,a
      0027BF 74 08            [12] 1824 	mov	a,#0x08
      0027C1 2D               [12] 1825 	add	a,r5
      0027C2 FD               [12] 1826 	mov	r5,a
      0027C3 E4               [12] 1827 	clr	a
      0027C4 3E               [12] 1828 	addc	a,r6
      0027C5 FE               [12] 1829 	mov	r6,a
      0027C6 8D 82            [24] 1830 	mov	dpl,r5
      0027C8 8E 83            [24] 1831 	mov	dph,r6
      0027CA 8F F0            [24] 1832 	mov	b,r7
      0027CC 12 4A 1C         [24] 1833 	lcall	__gptrget
      0027CF FD               [12] 1834 	mov	r5,a
      0027D0 A3               [24] 1835 	inc	dptr
      0027D1 12 4A 1C         [24] 1836 	lcall	__gptrget
      0027D4 FE               [12] 1837 	mov	r6,a
      0027D5 A3               [24] 1838 	inc	dptr
      0027D6 12 4A 1C         [24] 1839 	lcall	__gptrget
      0027D9 FF               [12] 1840 	mov	r7,a
      0027DA 90 00 21         [24] 1841 	mov	dptr,#_initialize_buffers_curr_65540_110
      0027DD ED               [12] 1842 	mov	a,r5
      0027DE F0               [24] 1843 	movx	@dptr,a
      0027DF EE               [12] 1844 	mov	a,r6
      0027E0 A3               [24] 1845 	inc	dptr
      0027E1 F0               [24] 1846 	movx	@dptr,a
      0027E2 EF               [12] 1847 	mov	a,r7
      0027E3 A3               [24] 1848 	inc	dptr
      0027E4 F0               [24] 1849 	movx	@dptr,a
      0027E5 02 27 06         [24] 1850 	ljmp	00128$
      0027E8                       1851 00130$:
                                   1852 ;	src/main.c:227: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      0027E8 90 00 1F         [24] 1853 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_106
      0027EB E0               [24] 1854 	movx	a,@dptr
      0027EC C0 E0            [24] 1855 	push	acc
      0027EE A3               [24] 1856 	inc	dptr
      0027EF E0               [24] 1857 	movx	a,@dptr
      0027F0 C0 E0            [24] 1858 	push	acc
      0027F2 74 34            [12] 1859 	mov	a,#(___sdcc_heap + 0x2000)
      0027F4 C0 E0            [24] 1860 	push	acc
      0027F6 74 20            [12] 1861 	mov	a,#((___sdcc_heap + 0x2000) >> 8)
      0027F8 C0 E0            [24] 1862 	push	acc
      0027FA E4               [12] 1863 	clr	a
      0027FB C0 E0            [24] 1864 	push	acc
      0027FD 74 34            [12] 1865 	mov	a,#___sdcc_heap
      0027FF C0 E0            [24] 1866 	push	acc
      002801 74 00            [12] 1867 	mov	a,#(___sdcc_heap >> 8)
      002803 C0 E0            [24] 1868 	push	acc
      002805 E4               [12] 1869 	clr	a
      002806 C0 E0            [24] 1870 	push	acc
      002808 74 19            [12] 1871 	mov	a,#___str_6
      00280A C0 E0            [24] 1872 	push	acc
      00280C 74 4B            [12] 1873 	mov	a,#(___str_6 >> 8)
      00280E C0 E0            [24] 1874 	push	acc
      002810 74 80            [12] 1875 	mov	a,#0x80
      002812 C0 E0            [24] 1876 	push	acc
      002814 12 3F F0         [24] 1877 	lcall	_printf
      002817 E5 81            [12] 1878 	mov	a,sp
      002819 24 F5            [12] 1879 	add	a,#0xf5
      00281B F5 81            [12] 1880 	mov	sp,a
                                   1881 ;	src/main.c:228: }
      00281D 22               [24] 1882 	ret
                                   1883 ;------------------------------------------------------------
                                   1884 ;Allocation info for local variables in function 'store_in_buffer'
                                   1885 ;------------------------------------------------------------
                                   1886 ;sloc0                     Allocated with name '_store_in_buffer_sloc0_1_0'
                                   1887 ;sloc1                     Allocated with name '_store_in_buffer_sloc1_1_0'
                                   1888 ;c                         Allocated with name '_store_in_buffer_PARM_2'
                                   1889 ;buffer                    Allocated with name '_store_in_buffer_buffer_65536_113'
                                   1890 ;------------------------------------------------------------
                                   1891 ;	src/main.c:230: void store_in_buffer(buffer_t *buffer, char c)
                                   1892 ;	-----------------------------------------
                                   1893 ;	 function store_in_buffer
                                   1894 ;	-----------------------------------------
      00281E                       1895 _store_in_buffer:
      00281E AF F0            [24] 1896 	mov	r7,b
      002820 AE 83            [24] 1897 	mov	r6,dph
      002822 E5 82            [12] 1898 	mov	a,dpl
      002824 90 00 25         [24] 1899 	mov	dptr,#_store_in_buffer_buffer_65536_113
      002827 F0               [24] 1900 	movx	@dptr,a
      002828 EE               [12] 1901 	mov	a,r6
      002829 A3               [24] 1902 	inc	dptr
      00282A F0               [24] 1903 	movx	@dptr,a
      00282B EF               [12] 1904 	mov	a,r7
      00282C A3               [24] 1905 	inc	dptr
      00282D F0               [24] 1906 	movx	@dptr,a
                                   1907 ;	src/main.c:232: if (buffer->curr_available_char < buffer->size)
      00282E 90 00 25         [24] 1908 	mov	dptr,#_store_in_buffer_buffer_65536_113
      002831 E0               [24] 1909 	movx	a,@dptr
      002832 FD               [12] 1910 	mov	r5,a
      002833 A3               [24] 1911 	inc	dptr
      002834 E0               [24] 1912 	movx	a,@dptr
      002835 FE               [12] 1913 	mov	r6,a
      002836 A3               [24] 1914 	inc	dptr
      002837 E0               [24] 1915 	movx	a,@dptr
      002838 FF               [12] 1916 	mov	r7,a
      002839 74 06            [12] 1917 	mov	a,#0x06
      00283B 2D               [12] 1918 	add	a,r5
      00283C F5 32            [12] 1919 	mov	_store_in_buffer_sloc1_1_0,a
      00283E E4               [12] 1920 	clr	a
      00283F 3E               [12] 1921 	addc	a,r6
      002840 F5 33            [12] 1922 	mov	(_store_in_buffer_sloc1_1_0 + 1),a
      002842 8F 34            [24] 1923 	mov	(_store_in_buffer_sloc1_1_0 + 2),r7
      002844 85 32 82         [24] 1924 	mov	dpl,_store_in_buffer_sloc1_1_0
      002847 85 33 83         [24] 1925 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      00284A 85 34 F0         [24] 1926 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      00284D 12 4A 1C         [24] 1927 	lcall	__gptrget
      002850 F5 30            [12] 1928 	mov	_store_in_buffer_sloc0_1_0,a
      002852 A3               [24] 1929 	inc	dptr
      002853 12 4A 1C         [24] 1930 	lcall	__gptrget
      002856 F5 31            [12] 1931 	mov	(_store_in_buffer_sloc0_1_0 + 1),a
      002858 74 04            [12] 1932 	mov	a,#0x04
      00285A 2D               [12] 1933 	add	a,r5
      00285B F8               [12] 1934 	mov	r0,a
      00285C E4               [12] 1935 	clr	a
      00285D 3E               [12] 1936 	addc	a,r6
      00285E F9               [12] 1937 	mov	r1,a
      00285F 8F 04            [24] 1938 	mov	ar4,r7
      002861 88 82            [24] 1939 	mov	dpl,r0
      002863 89 83            [24] 1940 	mov	dph,r1
      002865 8C F0            [24] 1941 	mov	b,r4
      002867 12 4A 1C         [24] 1942 	lcall	__gptrget
      00286A F8               [12] 1943 	mov	r0,a
      00286B A3               [24] 1944 	inc	dptr
      00286C 12 4A 1C         [24] 1945 	lcall	__gptrget
      00286F F9               [12] 1946 	mov	r1,a
      002870 C3               [12] 1947 	clr	c
      002871 E5 30            [12] 1948 	mov	a,_store_in_buffer_sloc0_1_0
      002873 98               [12] 1949 	subb	a,r0
      002874 E5 31            [12] 1950 	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
      002876 99               [12] 1951 	subb	a,r1
      002877 40 01            [24] 1952 	jc	00115$
      002879 22               [24] 1953 	ret
      00287A                       1954 00115$:
                                   1955 ;	src/main.c:234: buffer->buffer[buffer->curr_available_char] = c;
      00287A 8D 82            [24] 1956 	mov	dpl,r5
      00287C 8E 83            [24] 1957 	mov	dph,r6
      00287E 8F F0            [24] 1958 	mov	b,r7
      002880 12 4A 1C         [24] 1959 	lcall	__gptrget
      002883 FB               [12] 1960 	mov	r3,a
      002884 A3               [24] 1961 	inc	dptr
      002885 12 4A 1C         [24] 1962 	lcall	__gptrget
      002888 FC               [12] 1963 	mov	r4,a
      002889 E5 30            [12] 1964 	mov	a,_store_in_buffer_sloc0_1_0
      00288B 2B               [12] 1965 	add	a,r3
      00288C FB               [12] 1966 	mov	r3,a
      00288D E5 31            [12] 1967 	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
      00288F 3C               [12] 1968 	addc	a,r4
      002890 FC               [12] 1969 	mov	r4,a
      002891 90 00 24         [24] 1970 	mov	dptr,#_store_in_buffer_PARM_2
      002894 E0               [24] 1971 	movx	a,@dptr
      002895 FA               [12] 1972 	mov	r2,a
      002896 8B 82            [24] 1973 	mov	dpl,r3
      002898 8C 83            [24] 1974 	mov	dph,r4
      00289A F0               [24] 1975 	movx	@dptr,a
                                   1976 ;	src/main.c:235: buffer->curr_available_char++;
      00289B 85 32 82         [24] 1977 	mov	dpl,_store_in_buffer_sloc1_1_0
      00289E 85 33 83         [24] 1978 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      0028A1 85 34 F0         [24] 1979 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      0028A4 12 4A 1C         [24] 1980 	lcall	__gptrget
      0028A7 FC               [12] 1981 	mov	r4,a
      0028A8 A3               [24] 1982 	inc	dptr
      0028A9 12 4A 1C         [24] 1983 	lcall	__gptrget
      0028AC FB               [12] 1984 	mov	r3,a
      0028AD 0C               [12] 1985 	inc	r4
      0028AE BC 00 01         [24] 1986 	cjne	r4,#0x00,00116$
      0028B1 0B               [12] 1987 	inc	r3
      0028B2                       1988 00116$:
      0028B2 85 32 82         [24] 1989 	mov	dpl,_store_in_buffer_sloc1_1_0
      0028B5 85 33 83         [24] 1990 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      0028B8 85 34 F0         [24] 1991 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      0028BB EC               [12] 1992 	mov	a,r4
      0028BC 12 3D C2         [24] 1993 	lcall	__gptrput
      0028BF A3               [24] 1994 	inc	dptr
      0028C0 EB               [12] 1995 	mov	a,r3
      0028C1 12 3D C2         [24] 1996 	lcall	__gptrput
                                   1997 ;	src/main.c:236: if (is_alphabet_char(c))
      0028C4 8A 82            [24] 1998 	mov	dpl,r2
      0028C6 C0 07            [24] 1999 	push	ar7
      0028C8 C0 06            [24] 2000 	push	ar6
      0028CA C0 05            [24] 2001 	push	ar5
      0028CC 12 20 94         [24] 2002 	lcall	_is_alphabet_char
      0028CF E5 82            [12] 2003 	mov	a,dpl
      0028D1 D0 05            [24] 2004 	pop	ar5
      0028D3 D0 06            [24] 2005 	pop	ar6
      0028D5 D0 07            [24] 2006 	pop	ar7
      0028D7 60 2A            [24] 2007 	jz	00105$
                                   2008 ;	src/main.c:238: buffer->alphabet_chars++;
      0028D9 74 02            [12] 2009 	mov	a,#0x02
      0028DB 2D               [12] 2010 	add	a,r5
      0028DC FD               [12] 2011 	mov	r5,a
      0028DD E4               [12] 2012 	clr	a
      0028DE 3E               [12] 2013 	addc	a,r6
      0028DF FE               [12] 2014 	mov	r6,a
      0028E0 8D 82            [24] 2015 	mov	dpl,r5
      0028E2 8E 83            [24] 2016 	mov	dph,r6
      0028E4 8F F0            [24] 2017 	mov	b,r7
      0028E6 12 4A 1C         [24] 2018 	lcall	__gptrget
      0028E9 FB               [12] 2019 	mov	r3,a
      0028EA A3               [24] 2020 	inc	dptr
      0028EB 12 4A 1C         [24] 2021 	lcall	__gptrget
      0028EE FC               [12] 2022 	mov	r4,a
      0028EF 0B               [12] 2023 	inc	r3
      0028F0 BB 00 01         [24] 2024 	cjne	r3,#0x00,00118$
      0028F3 0C               [12] 2025 	inc	r4
      0028F4                       2026 00118$:
      0028F4 8D 82            [24] 2027 	mov	dpl,r5
      0028F6 8E 83            [24] 2028 	mov	dph,r6
      0028F8 8F F0            [24] 2029 	mov	b,r7
      0028FA EB               [12] 2030 	mov	a,r3
      0028FB 12 3D C2         [24] 2031 	lcall	__gptrput
      0028FE A3               [24] 2032 	inc	dptr
      0028FF EC               [12] 2033 	mov	a,r4
                                   2034 ;	src/main.c:241: }
      002900 02 3D C2         [24] 2035 	ljmp	__gptrput
      002903                       2036 00105$:
      002903 22               [24] 2037 	ret
                                   2038 ;------------------------------------------------------------
                                   2039 ;Allocation info for local variables in function 'command_header'
                                   2040 ;------------------------------------------------------------
                                   2041 ;command_string            Allocated with name '_command_header_command_string_65536_117'
                                   2042 ;------------------------------------------------------------
                                   2043 ;	src/main.c:243: void command_header(char *command_string)
                                   2044 ;	-----------------------------------------
                                   2045 ;	 function command_header
                                   2046 ;	-----------------------------------------
      002904                       2047 _command_header:
      002904 AF F0            [24] 2048 	mov	r7,b
      002906 AE 83            [24] 2049 	mov	r6,dph
      002908 E5 82            [12] 2050 	mov	a,dpl
      00290A 90 00 28         [24] 2051 	mov	dptr,#_command_header_command_string_65536_117
      00290D F0               [24] 2052 	movx	@dptr,a
      00290E EE               [12] 2053 	mov	a,r6
      00290F A3               [24] 2054 	inc	dptr
      002910 F0               [24] 2055 	movx	@dptr,a
      002911 EF               [12] 2056 	mov	a,r7
      002912 A3               [24] 2057 	inc	dptr
      002913 F0               [24] 2058 	movx	@dptr,a
                                   2059 ;	src/main.c:245: printf("\r\n        %s", command_string);
      002914 90 00 28         [24] 2060 	mov	dptr,#_command_header_command_string_65536_117
      002917 E0               [24] 2061 	movx	a,@dptr
      002918 C0 E0            [24] 2062 	push	acc
      00291A A3               [24] 2063 	inc	dptr
      00291B E0               [24] 2064 	movx	a,@dptr
      00291C C0 E0            [24] 2065 	push	acc
      00291E A3               [24] 2066 	inc	dptr
      00291F E0               [24] 2067 	movx	a,@dptr
      002920 C0 E0            [24] 2068 	push	acc
      002922 74 42            [12] 2069 	mov	a,#___str_7
      002924 C0 E0            [24] 2070 	push	acc
      002926 74 4B            [12] 2071 	mov	a,#(___str_7 >> 8)
      002928 C0 E0            [24] 2072 	push	acc
      00292A 74 80            [12] 2073 	mov	a,#0x80
      00292C C0 E0            [24] 2074 	push	acc
      00292E 12 3F F0         [24] 2075 	lcall	_printf
      002931 E5 81            [12] 2076 	mov	a,sp
      002933 24 FA            [12] 2077 	add	a,#0xfa
      002935 F5 81            [12] 2078 	mov	sp,a
                                   2079 ;	src/main.c:246: printf("\r\n------------------------------");   
      002937 74 4F            [12] 2080 	mov	a,#___str_8
      002939 C0 E0            [24] 2081 	push	acc
      00293B 74 4B            [12] 2082 	mov	a,#(___str_8 >> 8)
      00293D C0 E0            [24] 2083 	push	acc
      00293F 74 80            [12] 2084 	mov	a,#0x80
      002941 C0 E0            [24] 2085 	push	acc
      002943 12 3F F0         [24] 2086 	lcall	_printf
      002946 15 81            [12] 2087 	dec	sp
      002948 15 81            [12] 2088 	dec	sp
      00294A 15 81            [12] 2089 	dec	sp
                                   2090 ;	src/main.c:247: }
      00294C 22               [24] 2091 	ret
                                   2092 ;------------------------------------------------------------
                                   2093 ;Allocation info for local variables in function 'heap_report'
                                   2094 ;------------------------------------------------------------
                                   2095 ;sloc0                     Allocated with name '_heap_report_sloc0_1_0'
                                   2096 ;sloc1                     Allocated with name '_heap_report_sloc1_1_0'
                                   2097 ;sloc2                     Allocated with name '_heap_report_sloc2_1_0'
                                   2098 ;sloc3                     Allocated with name '_heap_report_sloc3_1_0'
                                   2099 ;sloc4                     Allocated with name '_heap_report_sloc4_1_0'
                                   2100 ;sloc5                     Allocated with name '_heap_report_sloc5_1_0'
                                   2101 ;total_heap_sz             Allocated with name '_heap_report_total_heap_sz_65537_120'
                                   2102 ;i                         Allocated with name '_heap_report_i_65537_120'
                                   2103 ;curr                      Allocated with name '_heap_report_curr_65538_124'
                                   2104 ;------------------------------------------------------------
                                   2105 ;	src/main.c:251: void heap_report()
                                   2106 ;	-----------------------------------------
                                   2107 ;	 function heap_report
                                   2108 ;	-----------------------------------------
      00294D                       2109 _heap_report:
                                   2110 ;	src/main.c:253: command_header("HEAP REPORT");
      00294D 90 4B 70         [24] 2111 	mov	dptr,#___str_9
      002950 75 F0 80         [24] 2112 	mov	b,#0x80
      002953 12 29 04         [24] 2113 	lcall	_command_header
                                   2114 ;	src/main.c:254: size_t total_heap_sz = 0;
      002956 90 00 2B         [24] 2115 	mov	dptr,#_heap_report_total_heap_sz_65537_120
      002959 E4               [12] 2116 	clr	a
      00295A F0               [24] 2117 	movx	@dptr,a
      00295B A3               [24] 2118 	inc	dptr
      00295C F0               [24] 2119 	movx	@dptr,a
                                   2120 ;	src/main.c:256: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00295D 7E 00            [12] 2121 	mov	r6,#0x00
      00295F 7F 00            [12] 2122 	mov	r7,#0x00
      002961                       2123 00109$:
                                   2124 ;	src/main.c:258: if(static_buffers[i].buffer != NULL) {
      002961 90 20 81         [24] 2125 	mov	dptr,#__mulint_PARM_2
      002964 EE               [12] 2126 	mov	a,r6
      002965 F0               [24] 2127 	movx	@dptr,a
      002966 EF               [12] 2128 	mov	a,r7
      002967 A3               [24] 2129 	inc	dptr
      002968 F0               [24] 2130 	movx	@dptr,a
      002969 90 00 0B         [24] 2131 	mov	dptr,#0x000b
      00296C C0 07            [24] 2132 	push	ar7
      00296E C0 06            [24] 2133 	push	ar6
      002970 12 3F 82         [24] 2134 	lcall	__mulint
      002973 AC 82            [24] 2135 	mov	r4,dpl
      002975 AD 83            [24] 2136 	mov	r5,dph
      002977 D0 06            [24] 2137 	pop	ar6
      002979 D0 07            [24] 2138 	pop	ar7
      00297B EC               [12] 2139 	mov	a,r4
      00297C 24 01            [12] 2140 	add	a,#_static_buffers
      00297E F5 82            [12] 2141 	mov	dpl,a
      002980 ED               [12] 2142 	mov	a,r5
      002981 34 00            [12] 2143 	addc	a,#(_static_buffers >> 8)
      002983 F5 83            [12] 2144 	mov	dph,a
      002985 E0               [24] 2145 	movx	a,@dptr
      002986 FA               [12] 2146 	mov	r2,a
      002987 A3               [24] 2147 	inc	dptr
      002988 E0               [24] 2148 	movx	a,@dptr
      002989 FB               [12] 2149 	mov	r3,a
      00298A 4A               [12] 2150 	orl	a,r2
      00298B 70 03            [24] 2151 	jnz	00139$
      00298D 02 2A 46         [24] 2152 	ljmp	00110$
      002990                       2153 00139$:
                                   2154 ;	src/main.c:265: static_buffers[i].size - static_buffers[i].curr_available_char);
      002990 EC               [12] 2155 	mov	a,r4
      002991 24 01            [12] 2156 	add	a,#_static_buffers
      002993 FC               [12] 2157 	mov	r4,a
      002994 ED               [12] 2158 	mov	a,r5
      002995 34 00            [12] 2159 	addc	a,#(_static_buffers >> 8)
      002997 FD               [12] 2160 	mov	r5,a
      002998 74 04            [12] 2161 	mov	a,#0x04
      00299A 2C               [12] 2162 	add	a,r4
      00299B F5 35            [12] 2163 	mov	_heap_report_sloc0_1_0,a
      00299D E4               [12] 2164 	clr	a
      00299E 3D               [12] 2165 	addc	a,r5
      00299F F5 36            [12] 2166 	mov	(_heap_report_sloc0_1_0 + 1),a
      0029A1 85 35 82         [24] 2167 	mov	dpl,_heap_report_sloc0_1_0
      0029A4 85 36 83         [24] 2168 	mov	dph,(_heap_report_sloc0_1_0 + 1)
      0029A7 E0               [24] 2169 	movx	a,@dptr
      0029A8 F8               [12] 2170 	mov	r0,a
      0029A9 A3               [24] 2171 	inc	dptr
      0029AA E0               [24] 2172 	movx	a,@dptr
      0029AB F9               [12] 2173 	mov	r1,a
      0029AC 74 06            [12] 2174 	mov	a,#0x06
      0029AE 2C               [12] 2175 	add	a,r4
      0029AF F5 82            [12] 2176 	mov	dpl,a
      0029B1 E4               [12] 2177 	clr	a
      0029B2 3D               [12] 2178 	addc	a,r5
      0029B3 F5 83            [12] 2179 	mov	dph,a
      0029B5 E0               [24] 2180 	movx	a,@dptr
      0029B6 FA               [12] 2181 	mov	r2,a
      0029B7 A3               [24] 2182 	inc	dptr
      0029B8 E0               [24] 2183 	movx	a,@dptr
      0029B9 FB               [12] 2184 	mov	r3,a
      0029BA E8               [12] 2185 	mov	a,r0
      0029BB C3               [12] 2186 	clr	c
      0029BC 9A               [12] 2187 	subb	a,r2
      0029BD F5 37            [12] 2188 	mov	_heap_report_sloc1_1_0,a
      0029BF E9               [12] 2189 	mov	a,r1
      0029C0 9B               [12] 2190 	subb	a,r3
      0029C1 F5 38            [12] 2191 	mov	(_heap_report_sloc1_1_0 + 1),a
                                   2192 ;	src/main.c:264: static_buffers[i].alphabet_chars,
      0029C3 8C 82            [24] 2193 	mov	dpl,r4
      0029C5 8D 83            [24] 2194 	mov	dph,r5
      0029C7 A3               [24] 2195 	inc	dptr
      0029C8 A3               [24] 2196 	inc	dptr
      0029C9 E0               [24] 2197 	movx	a,@dptr
      0029CA F5 39            [12] 2198 	mov	_heap_report_sloc2_1_0,a
      0029CC A3               [24] 2199 	inc	dptr
      0029CD E0               [24] 2200 	movx	a,@dptr
      0029CE F5 3A            [12] 2201 	mov	(_heap_report_sloc2_1_0 + 1),a
                                   2202 ;	src/main.c:262: static_buffers[i].buffer + static_buffers[i].size, 
      0029D0 8C 82            [24] 2203 	mov	dpl,r4
      0029D2 8D 83            [24] 2204 	mov	dph,r5
      0029D4 E0               [24] 2205 	movx	a,@dptr
      0029D5 F5 3B            [12] 2206 	mov	_heap_report_sloc3_1_0,a
      0029D7 A3               [24] 2207 	inc	dptr
      0029D8 E0               [24] 2208 	movx	a,@dptr
      0029D9 F5 3C            [12] 2209 	mov	(_heap_report_sloc3_1_0 + 1),a
      0029DB E8               [12] 2210 	mov	a,r0
      0029DC 25 3B            [12] 2211 	add	a,_heap_report_sloc3_1_0
      0029DE FA               [12] 2212 	mov	r2,a
      0029DF E9               [12] 2213 	mov	a,r1
      0029E0 35 3C            [12] 2214 	addc	a,(_heap_report_sloc3_1_0 + 1)
      0029E2 FB               [12] 2215 	mov	r3,a
      0029E3 8A 3D            [24] 2216 	mov	_heap_report_sloc4_1_0,r2
      0029E5 8B 3E            [24] 2217 	mov	(_heap_report_sloc4_1_0 + 1),r3
      0029E7 75 3F 00         [24] 2218 	mov	(_heap_report_sloc4_1_0 + 2),#0x00
                                   2219 ;	src/main.c:261: static_buffers[i].buffer, 
      0029EA AC 3B            [24] 2220 	mov	r4,_heap_report_sloc3_1_0
      0029EC AD 3C            [24] 2221 	mov	r5,(_heap_report_sloc3_1_0 + 1)
      0029EE 7B 00            [12] 2222 	mov	r3,#0x00
                                   2223 ;	src/main.c:259: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
      0029F0 C0 07            [24] 2224 	push	ar7
      0029F2 C0 06            [24] 2225 	push	ar6
      0029F4 C0 37            [24] 2226 	push	_heap_report_sloc1_1_0
      0029F6 C0 38            [24] 2227 	push	(_heap_report_sloc1_1_0 + 1)
      0029F8 C0 39            [24] 2228 	push	_heap_report_sloc2_1_0
      0029FA C0 3A            [24] 2229 	push	(_heap_report_sloc2_1_0 + 1)
      0029FC C0 00            [24] 2230 	push	ar0
      0029FE C0 01            [24] 2231 	push	ar1
      002A00 C0 3D            [24] 2232 	push	_heap_report_sloc4_1_0
      002A02 C0 3E            [24] 2233 	push	(_heap_report_sloc4_1_0 + 1)
      002A04 C0 3F            [24] 2234 	push	(_heap_report_sloc4_1_0 + 2)
      002A06 C0 04            [24] 2235 	push	ar4
      002A08 C0 05            [24] 2236 	push	ar5
      002A0A C0 03            [24] 2237 	push	ar3
      002A0C C0 06            [24] 2238 	push	ar6
      002A0E C0 07            [24] 2239 	push	ar7
      002A10 74 7C            [12] 2240 	mov	a,#___str_10
      002A12 C0 E0            [24] 2241 	push	acc
      002A14 74 4B            [12] 2242 	mov	a,#(___str_10 >> 8)
      002A16 C0 E0            [24] 2243 	push	acc
      002A18 74 80            [12] 2244 	mov	a,#0x80
      002A1A C0 E0            [24] 2245 	push	acc
      002A1C 12 3F F0         [24] 2246 	lcall	_printf
      002A1F E5 81            [12] 2247 	mov	a,sp
      002A21 24 EF            [12] 2248 	add	a,#0xef
      002A23 F5 81            [12] 2249 	mov	sp,a
      002A25 D0 06            [24] 2250 	pop	ar6
      002A27 D0 07            [24] 2251 	pop	ar7
                                   2252 ;	src/main.c:266: total_heap_sz += static_buffers[i].size; 
      002A29 85 35 82         [24] 2253 	mov	dpl,_heap_report_sloc0_1_0
      002A2C 85 36 83         [24] 2254 	mov	dph,(_heap_report_sloc0_1_0 + 1)
      002A2F E0               [24] 2255 	movx	a,@dptr
      002A30 FC               [12] 2256 	mov	r4,a
      002A31 A3               [24] 2257 	inc	dptr
      002A32 E0               [24] 2258 	movx	a,@dptr
      002A33 FD               [12] 2259 	mov	r5,a
      002A34 90 00 2B         [24] 2260 	mov	dptr,#_heap_report_total_heap_sz_65537_120
      002A37 E0               [24] 2261 	movx	a,@dptr
      002A38 FA               [12] 2262 	mov	r2,a
      002A39 A3               [24] 2263 	inc	dptr
      002A3A E0               [24] 2264 	movx	a,@dptr
      002A3B FB               [12] 2265 	mov	r3,a
      002A3C 90 00 2B         [24] 2266 	mov	dptr,#_heap_report_total_heap_sz_65537_120
      002A3F EC               [12] 2267 	mov	a,r4
      002A40 2A               [12] 2268 	add	a,r2
      002A41 F0               [24] 2269 	movx	@dptr,a
      002A42 ED               [12] 2270 	mov	a,r5
      002A43 3B               [12] 2271 	addc	a,r3
      002A44 A3               [24] 2272 	inc	dptr
      002A45 F0               [24] 2273 	movx	@dptr,a
      002A46                       2274 00110$:
                                   2275 ;	src/main.c:256: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002A46 0E               [12] 2276 	inc	r6
      002A47 BE 00 01         [24] 2277 	cjne	r6,#0x00,00140$
      002A4A 0F               [12] 2278 	inc	r7
      002A4B                       2279 00140$:
      002A4B C3               [12] 2280 	clr	c
      002A4C EE               [12] 2281 	mov	a,r6
      002A4D 94 02            [12] 2282 	subb	a,#0x02
      002A4F EF               [12] 2283 	mov	a,r7
      002A50 64 80            [12] 2284 	xrl	a,#0x80
      002A52 94 80            [12] 2285 	subb	a,#0x80
      002A54 50 03            [24] 2286 	jnc	00141$
      002A56 02 29 61         [24] 2287 	ljmp	00109$
      002A59                       2288 00141$:
                                   2289 ;	src/main.c:270: buffer_t *curr = dynamic_buffers_list.head;
      002A59 90 20 BA         [24] 2290 	mov	dptr,#_dynamic_buffers_list
      002A5C E0               [24] 2291 	movx	a,@dptr
      002A5D FB               [12] 2292 	mov	r3,a
      002A5E A3               [24] 2293 	inc	dptr
      002A5F E0               [24] 2294 	movx	a,@dptr
      002A60 FC               [12] 2295 	mov	r4,a
      002A61 A3               [24] 2296 	inc	dptr
      002A62 E0               [24] 2297 	movx	a,@dptr
      002A63 FD               [12] 2298 	mov	r5,a
                                   2299 ;	src/main.c:271: while(curr != NULL) {
      002A64 74 04            [12] 2300 	mov	a,#0x04
      002A66 2B               [12] 2301 	add	a,r3
      002A67 F8               [12] 2302 	mov	r0,a
      002A68 E4               [12] 2303 	clr	a
      002A69 3C               [12] 2304 	addc	a,r4
      002A6A F9               [12] 2305 	mov	r1,a
      002A6B 8D 02            [24] 2306 	mov	ar2,r5
      002A6D 74 02            [12] 2307 	mov	a,#0x02
      002A6F 2B               [12] 2308 	add	a,r3
      002A70 F5 3D            [12] 2309 	mov	_heap_report_sloc4_1_0,a
      002A72 E4               [12] 2310 	clr	a
      002A73 3C               [12] 2311 	addc	a,r4
      002A74 F5 3E            [12] 2312 	mov	(_heap_report_sloc4_1_0 + 1),a
      002A76 8D 3F            [24] 2313 	mov	(_heap_report_sloc4_1_0 + 2),r5
      002A78 8E 39            [24] 2314 	mov	_heap_report_sloc2_1_0,r6
      002A7A 8F 3A            [24] 2315 	mov	(_heap_report_sloc2_1_0 + 1),r7
      002A7C                       2316 00106$:
      002A7C EB               [12] 2317 	mov	a,r3
      002A7D 4C               [12] 2318 	orl	a,r4
      002A7E 70 03            [24] 2319 	jnz	00142$
      002A80 02 2B 61         [24] 2320 	ljmp	00108$
      002A83                       2321 00142$:
                                   2322 ;	src/main.c:272: if(curr->buffer != NULL) {
      002A83 8B 82            [24] 2323 	mov	dpl,r3
      002A85 8C 83            [24] 2324 	mov	dph,r4
      002A87 8D F0            [24] 2325 	mov	b,r5
      002A89 12 4A 1C         [24] 2326 	lcall	__gptrget
      002A8C F5 3B            [12] 2327 	mov	_heap_report_sloc3_1_0,a
      002A8E A3               [24] 2328 	inc	dptr
      002A8F 12 4A 1C         [24] 2329 	lcall	__gptrget
      002A92 F5 3C            [12] 2330 	mov	(_heap_report_sloc3_1_0 + 1),a
      002A94 E5 3B            [12] 2331 	mov	a,_heap_report_sloc3_1_0
      002A96 45 3C            [12] 2332 	orl	a,(_heap_report_sloc3_1_0 + 1)
      002A98 70 03            [24] 2333 	jnz	00143$
      002A9A 02 2B 56         [24] 2334 	ljmp	00105$
      002A9D                       2335 00143$:
                                   2336 ;	src/main.c:279: curr->size - curr->alphabet_chars);
      002A9D C0 03            [24] 2337 	push	ar3
      002A9F C0 04            [24] 2338 	push	ar4
      002AA1 C0 05            [24] 2339 	push	ar5
      002AA3 88 82            [24] 2340 	mov	dpl,r0
      002AA5 89 83            [24] 2341 	mov	dph,r1
      002AA7 8A F0            [24] 2342 	mov	b,r2
      002AA9 12 4A 1C         [24] 2343 	lcall	__gptrget
      002AAC FC               [12] 2344 	mov	r4,a
      002AAD A3               [24] 2345 	inc	dptr
      002AAE 12 4A 1C         [24] 2346 	lcall	__gptrget
      002AB1 FD               [12] 2347 	mov	r5,a
      002AB2 85 3D 82         [24] 2348 	mov	dpl,_heap_report_sloc4_1_0
      002AB5 85 3E 83         [24] 2349 	mov	dph,(_heap_report_sloc4_1_0 + 1)
      002AB8 85 3F F0         [24] 2350 	mov	b,(_heap_report_sloc4_1_0 + 2)
      002ABB 12 4A 1C         [24] 2351 	lcall	__gptrget
      002ABE F5 37            [12] 2352 	mov	_heap_report_sloc1_1_0,a
      002AC0 A3               [24] 2353 	inc	dptr
      002AC1 12 4A 1C         [24] 2354 	lcall	__gptrget
      002AC4 F5 38            [12] 2355 	mov	(_heap_report_sloc1_1_0 + 1),a
      002AC6 EC               [12] 2356 	mov	a,r4
      002AC7 C3               [12] 2357 	clr	c
      002AC8 95 37            [12] 2358 	subb	a,_heap_report_sloc1_1_0
      002ACA F5 35            [12] 2359 	mov	_heap_report_sloc0_1_0,a
      002ACC ED               [12] 2360 	mov	a,r5
      002ACD 95 38            [12] 2361 	subb	a,(_heap_report_sloc1_1_0 + 1)
      002ACF F5 36            [12] 2362 	mov	(_heap_report_sloc0_1_0 + 1),a
                                   2363 ;	src/main.c:276: curr->buffer + curr->size, 
      002AD1 EC               [12] 2364 	mov	a,r4
      002AD2 25 3B            [12] 2365 	add	a,_heap_report_sloc3_1_0
      002AD4 FB               [12] 2366 	mov	r3,a
      002AD5 ED               [12] 2367 	mov	a,r5
      002AD6 35 3C            [12] 2368 	addc	a,(_heap_report_sloc3_1_0 + 1)
      002AD8 FF               [12] 2369 	mov	r7,a
      002AD9 8B 40            [24] 2370 	mov	_heap_report_sloc5_1_0,r3
      002ADB 8F 41            [24] 2371 	mov	(_heap_report_sloc5_1_0 + 1),r7
      002ADD 75 42 00         [24] 2372 	mov	(_heap_report_sloc5_1_0 + 2),#0x00
                                   2373 ;	src/main.c:275: curr->buffer, 
      002AE0 AE 3B            [24] 2374 	mov	r6,_heap_report_sloc3_1_0
      002AE2 AF 3C            [24] 2375 	mov	r7,(_heap_report_sloc3_1_0 + 1)
      002AE4 7B 00            [12] 2376 	mov	r3,#0x00
                                   2377 ;	src/main.c:273: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
      002AE6 C0 05            [24] 2378 	push	ar5
      002AE8 C0 04            [24] 2379 	push	ar4
      002AEA C0 03            [24] 2380 	push	ar3
      002AEC C0 02            [24] 2381 	push	ar2
      002AEE C0 01            [24] 2382 	push	ar1
      002AF0 C0 00            [24] 2383 	push	ar0
      002AF2 C0 35            [24] 2384 	push	_heap_report_sloc0_1_0
      002AF4 C0 36            [24] 2385 	push	(_heap_report_sloc0_1_0 + 1)
      002AF6 C0 37            [24] 2386 	push	_heap_report_sloc1_1_0
      002AF8 C0 38            [24] 2387 	push	(_heap_report_sloc1_1_0 + 1)
      002AFA C0 04            [24] 2388 	push	ar4
      002AFC C0 05            [24] 2389 	push	ar5
      002AFE C0 40            [24] 2390 	push	_heap_report_sloc5_1_0
      002B00 C0 41            [24] 2391 	push	(_heap_report_sloc5_1_0 + 1)
      002B02 C0 42            [24] 2392 	push	(_heap_report_sloc5_1_0 + 2)
      002B04 C0 06            [24] 2393 	push	ar6
      002B06 C0 07            [24] 2394 	push	ar7
      002B08 C0 03            [24] 2395 	push	ar3
      002B0A C0 39            [24] 2396 	push	_heap_report_sloc2_1_0
      002B0C C0 3A            [24] 2397 	push	(_heap_report_sloc2_1_0 + 1)
      002B0E 74 7C            [12] 2398 	mov	a,#___str_10
      002B10 C0 E0            [24] 2399 	push	acc
      002B12 74 4B            [12] 2400 	mov	a,#(___str_10 >> 8)
      002B14 C0 E0            [24] 2401 	push	acc
      002B16 74 80            [12] 2402 	mov	a,#0x80
      002B18 C0 E0            [24] 2403 	push	acc
      002B1A 12 3F F0         [24] 2404 	lcall	_printf
      002B1D E5 81            [12] 2405 	mov	a,sp
      002B1F 24 EF            [12] 2406 	add	a,#0xef
      002B21 F5 81            [12] 2407 	mov	sp,a
      002B23 D0 00            [24] 2408 	pop	ar0
      002B25 D0 01            [24] 2409 	pop	ar1
      002B27 D0 02            [24] 2410 	pop	ar2
      002B29 D0 03            [24] 2411 	pop	ar3
      002B2B D0 04            [24] 2412 	pop	ar4
      002B2D D0 05            [24] 2413 	pop	ar5
                                   2414 ;	src/main.c:280: total_heap_sz += curr->size; 
      002B2F 88 82            [24] 2415 	mov	dpl,r0
      002B31 89 83            [24] 2416 	mov	dph,r1
      002B33 8A F0            [24] 2417 	mov	b,r2
      002B35 12 4A 1C         [24] 2418 	lcall	__gptrget
      002B38 FE               [12] 2419 	mov	r6,a
      002B39 A3               [24] 2420 	inc	dptr
      002B3A 12 4A 1C         [24] 2421 	lcall	__gptrget
      002B3D FF               [12] 2422 	mov	r7,a
      002B3E 90 00 2B         [24] 2423 	mov	dptr,#_heap_report_total_heap_sz_65537_120
      002B41 E0               [24] 2424 	movx	a,@dptr
      002B42 FC               [12] 2425 	mov	r4,a
      002B43 A3               [24] 2426 	inc	dptr
      002B44 E0               [24] 2427 	movx	a,@dptr
      002B45 FD               [12] 2428 	mov	r5,a
      002B46 90 00 2B         [24] 2429 	mov	dptr,#_heap_report_total_heap_sz_65537_120
      002B49 EE               [12] 2430 	mov	a,r6
      002B4A 2C               [12] 2431 	add	a,r4
      002B4B F0               [24] 2432 	movx	@dptr,a
      002B4C EF               [12] 2433 	mov	a,r7
      002B4D 3D               [12] 2434 	addc	a,r5
      002B4E A3               [24] 2435 	inc	dptr
      002B4F F0               [24] 2436 	movx	@dptr,a
                                   2437 ;	src/main.c:286: printf("\r\n");
      002B50 D0 05            [24] 2438 	pop	ar5
      002B52 D0 04            [24] 2439 	pop	ar4
      002B54 D0 03            [24] 2440 	pop	ar3
                                   2441 ;	src/main.c:280: total_heap_sz += curr->size; 
      002B56                       2442 00105$:
                                   2443 ;	src/main.c:282: i++;
      002B56 05 39            [12] 2444 	inc	_heap_report_sloc2_1_0
      002B58 E4               [12] 2445 	clr	a
      002B59 B5 39 02         [24] 2446 	cjne	a,_heap_report_sloc2_1_0,00144$
      002B5C 05 3A            [12] 2447 	inc	(_heap_report_sloc2_1_0 + 1)
      002B5E                       2448 00144$:
                                   2449 ;	src/main.c:283: curr->next;
      002B5E 02 2A 7C         [24] 2450 	ljmp	00106$
      002B61                       2451 00108$:
                                   2452 ;	src/main.c:285: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      002B61 90 00 2B         [24] 2453 	mov	dptr,#_heap_report_total_heap_sz_65537_120
      002B64 E0               [24] 2454 	movx	a,@dptr
      002B65 C0 E0            [24] 2455 	push	acc
      002B67 A3               [24] 2456 	inc	dptr
      002B68 E0               [24] 2457 	movx	a,@dptr
      002B69 C0 E0            [24] 2458 	push	acc
      002B6B 74 34            [12] 2459 	mov	a,#(___sdcc_heap + 0x2000)
      002B6D C0 E0            [24] 2460 	push	acc
      002B6F 74 20            [12] 2461 	mov	a,#((___sdcc_heap + 0x2000) >> 8)
      002B71 C0 E0            [24] 2462 	push	acc
      002B73 E4               [12] 2463 	clr	a
      002B74 C0 E0            [24] 2464 	push	acc
      002B76 74 34            [12] 2465 	mov	a,#___sdcc_heap
      002B78 C0 E0            [24] 2466 	push	acc
      002B7A 74 00            [12] 2467 	mov	a,#(___sdcc_heap >> 8)
      002B7C C0 E0            [24] 2468 	push	acc
      002B7E E4               [12] 2469 	clr	a
      002B7F C0 E0            [24] 2470 	push	acc
      002B81 74 19            [12] 2471 	mov	a,#___str_6
      002B83 C0 E0            [24] 2472 	push	acc
      002B85 74 4B            [12] 2473 	mov	a,#(___str_6 >> 8)
      002B87 C0 E0            [24] 2474 	push	acc
      002B89 74 80            [12] 2475 	mov	a,#0x80
      002B8B C0 E0            [24] 2476 	push	acc
      002B8D 12 3F F0         [24] 2477 	lcall	_printf
      002B90 E5 81            [12] 2478 	mov	a,sp
      002B92 24 F5            [12] 2479 	add	a,#0xf5
      002B94 F5 81            [12] 2480 	mov	sp,a
                                   2481 ;	src/main.c:286: printf("\r\n");
      002B96 74 DE            [12] 2482 	mov	a,#___str_11
      002B98 C0 E0            [24] 2483 	push	acc
      002B9A 74 4B            [12] 2484 	mov	a,#(___str_11 >> 8)
      002B9C C0 E0            [24] 2485 	push	acc
      002B9E 74 80            [12] 2486 	mov	a,#0x80
      002BA0 C0 E0            [24] 2487 	push	acc
      002BA2 12 3F F0         [24] 2488 	lcall	_printf
      002BA5 15 81            [12] 2489 	dec	sp
      002BA7 15 81            [12] 2490 	dec	sp
      002BA9 15 81            [12] 2491 	dec	sp
                                   2492 ;	src/main.c:287: }
      002BAB 22               [24] 2493 	ret
                                   2494 ;------------------------------------------------------------
                                   2495 ;Allocation info for local variables in function 'get_user_buffer_sz'
                                   2496 ;------------------------------------------------------------
                                   2497 ;maximum_sz                Allocated with name '_get_user_buffer_sz_maximum_sz_65536_127'
                                   2498 ;user_buffer_size          Allocated with name '_get_user_buffer_sz_user_buffer_size_65536_128'
                                   2499 ;------------------------------------------------------------
                                   2500 ;	src/main.c:291: size_t get_user_buffer_sz(size_t maximum_sz)
                                   2501 ;	-----------------------------------------
                                   2502 ;	 function get_user_buffer_sz
                                   2503 ;	-----------------------------------------
      002BAC                       2504 _get_user_buffer_sz:
      002BAC AF 83            [24] 2505 	mov	r7,dph
      002BAE E5 82            [12] 2506 	mov	a,dpl
      002BB0 90 00 2D         [24] 2507 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_127
      002BB3 F0               [24] 2508 	movx	@dptr,a
      002BB4 EF               [12] 2509 	mov	a,r7
      002BB5 A3               [24] 2510 	inc	dptr
      002BB6 F0               [24] 2511 	movx	@dptr,a
                                   2512 ;	src/main.c:294: do {
      002BB7 90 00 2D         [24] 2513 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_127
      002BBA E0               [24] 2514 	movx	a,@dptr
      002BBB FE               [12] 2515 	mov	r6,a
      002BBC A3               [24] 2516 	inc	dptr
      002BBD E0               [24] 2517 	movx	a,@dptr
      002BBE FF               [12] 2518 	mov	r7,a
      002BBF                       2519 00103$:
                                   2520 ;	src/main.c:295: printf("\r\nPlease enter a valid buffer size that is divisible by 32 [64,%zu]: ", maximum_sz);
      002BBF C0 07            [24] 2521 	push	ar7
      002BC1 C0 06            [24] 2522 	push	ar6
      002BC3 C0 06            [24] 2523 	push	ar6
      002BC5 C0 07            [24] 2524 	push	ar7
      002BC7 74 E1            [12] 2525 	mov	a,#___str_12
      002BC9 C0 E0            [24] 2526 	push	acc
      002BCB 74 4B            [12] 2527 	mov	a,#(___str_12 >> 8)
      002BCD C0 E0            [24] 2528 	push	acc
      002BCF 74 80            [12] 2529 	mov	a,#0x80
      002BD1 C0 E0            [24] 2530 	push	acc
      002BD3 12 3F F0         [24] 2531 	lcall	_printf
      002BD6 E5 81            [12] 2532 	mov	a,sp
      002BD8 24 FB            [12] 2533 	add	a,#0xfb
      002BDA F5 81            [12] 2534 	mov	sp,a
                                   2535 ;	src/main.c:296: get_string();
      002BDC 12 35 90         [24] 2536 	lcall	_get_string
                                   2537 ;	src/main.c:297: user_buffer_size = (size_t) atoi(get_input_buffer()); //TODO: replace with own implementation of atoi that respects the size_t
      002BDF 12 35 89         [24] 2538 	lcall	_get_input_buffer
      002BE2 12 3C 9E         [24] 2539 	lcall	_atoi
      002BE5 AC 82            [24] 2540 	mov	r4,dpl
      002BE7 AD 83            [24] 2541 	mov	r5,dph
      002BE9 D0 06            [24] 2542 	pop	ar6
      002BEB D0 07            [24] 2543 	pop	ar7
                                   2544 ;	src/main.c:298: } while ((user_buffer_size > maximum_sz)
      002BED C3               [12] 2545 	clr	c
      002BEE EE               [12] 2546 	mov	a,r6
      002BEF 9C               [12] 2547 	subb	a,r4
      002BF0 EF               [12] 2548 	mov	a,r7
      002BF1 9D               [12] 2549 	subb	a,r5
                                   2550 ;	src/main.c:299: || (user_buffer_size < USER_BUFFER_MIN)
      002BF2 40 CB            [24] 2551 	jc	00103$
      002BF4 EC               [12] 2552 	mov	a,r4
      002BF5 94 40            [12] 2553 	subb	a,#0x40
      002BF7 ED               [12] 2554 	mov	a,r5
      002BF8 94 00            [12] 2555 	subb	a,#0x00
      002BFA 40 C3            [24] 2556 	jc	00103$
                                   2557 ;	src/main.c:300: || (MODULE_32(user_buffer_size) != 0));
      002BFC EC               [12] 2558 	mov	a,r4
      002BFD 54 1F            [12] 2559 	anl	a,#0x1f
      002BFF 70 BE            [24] 2560 	jnz	00103$
                                   2561 ;	src/main.c:301: return user_buffer_size;
      002C01 8C 82            [24] 2562 	mov	dpl,r4
      002C03 8D 83            [24] 2563 	mov	dph,r5
                                   2564 ;	src/main.c:302: }
      002C05 22               [24] 2565 	ret
                                   2566 ;------------------------------------------------------------
                                   2567 ;Allocation info for local variables in function 'free_all_buffers'
                                   2568 ;------------------------------------------------------------
                                   2569 ;i                         Allocated with name '_free_all_buffers_i_131072_131'
                                   2570 ;------------------------------------------------------------
                                   2571 ;	src/main.c:305: void free_all_buffers()
                                   2572 ;	-----------------------------------------
                                   2573 ;	 function free_all_buffers
                                   2574 ;	-----------------------------------------
      002C06                       2575 _free_all_buffers:
                                   2576 ;	src/main.c:307: printf("\r\n Freeing ALL BUFFERS");
      002C06 74 27            [12] 2577 	mov	a,#___str_13
      002C08 C0 E0            [24] 2578 	push	acc
      002C0A 74 4C            [12] 2579 	mov	a,#(___str_13 >> 8)
      002C0C C0 E0            [24] 2580 	push	acc
      002C0E 74 80            [12] 2581 	mov	a,#0x80
      002C10 C0 E0            [24] 2582 	push	acc
      002C12 12 3F F0         [24] 2583 	lcall	_printf
      002C15 15 81            [12] 2584 	dec	sp
      002C17 15 81            [12] 2585 	dec	sp
      002C19 15 81            [12] 2586 	dec	sp
                                   2587 ;	src/main.c:308: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002C1B 7E 00            [12] 2588 	mov	r6,#0x00
      002C1D 7F 00            [12] 2589 	mov	r7,#0x00
      002C1F                       2590 00105$:
      002C1F C3               [12] 2591 	clr	c
      002C20 EE               [12] 2592 	mov	a,r6
      002C21 94 02            [12] 2593 	subb	a,#0x02
      002C23 EF               [12] 2594 	mov	a,r7
      002C24 64 80            [12] 2595 	xrl	a,#0x80
      002C26 94 80            [12] 2596 	subb	a,#0x80
      002C28 40 03            [24] 2597 	jc	00122$
      002C2A 02 2C B0         [24] 2598 	ljmp	00103$
      002C2D                       2599 00122$:
                                   2600 ;	src/main.c:310: if(static_buffers[i].buffer != NULL)
      002C2D 90 20 81         [24] 2601 	mov	dptr,#__mulint_PARM_2
      002C30 EE               [12] 2602 	mov	a,r6
      002C31 F0               [24] 2603 	movx	@dptr,a
      002C32 EF               [12] 2604 	mov	a,r7
      002C33 A3               [24] 2605 	inc	dptr
      002C34 F0               [24] 2606 	movx	@dptr,a
      002C35 90 00 0B         [24] 2607 	mov	dptr,#0x000b
      002C38 C0 07            [24] 2608 	push	ar7
      002C3A C0 06            [24] 2609 	push	ar6
      002C3C 12 3F 82         [24] 2610 	lcall	__mulint
      002C3F AC 82            [24] 2611 	mov	r4,dpl
      002C41 AD 83            [24] 2612 	mov	r5,dph
      002C43 D0 06            [24] 2613 	pop	ar6
      002C45 D0 07            [24] 2614 	pop	ar7
      002C47 EC               [12] 2615 	mov	a,r4
      002C48 24 01            [12] 2616 	add	a,#_static_buffers
      002C4A F5 82            [12] 2617 	mov	dpl,a
      002C4C ED               [12] 2618 	mov	a,r5
      002C4D 34 00            [12] 2619 	addc	a,#(_static_buffers >> 8)
      002C4F F5 83            [12] 2620 	mov	dph,a
      002C51 E0               [24] 2621 	movx	a,@dptr
      002C52 FC               [12] 2622 	mov	r4,a
      002C53 A3               [24] 2623 	inc	dptr
      002C54 E0               [24] 2624 	movx	a,@dptr
      002C55 FD               [12] 2625 	mov	r5,a
      002C56 4C               [12] 2626 	orl	a,r4
      002C57 60 13            [24] 2627 	jz	00102$
                                   2628 ;	src/main.c:312: free(static_buffers[i].buffer);
      002C59 7B 00            [12] 2629 	mov	r3,#0x00
      002C5B 8C 82            [24] 2630 	mov	dpl,r4
      002C5D 8D 83            [24] 2631 	mov	dph,r5
      002C5F 8B F0            [24] 2632 	mov	b,r3
      002C61 C0 07            [24] 2633 	push	ar7
      002C63 C0 06            [24] 2634 	push	ar6
      002C65 12 3A AB         [24] 2635 	lcall	_free
      002C68 D0 06            [24] 2636 	pop	ar6
      002C6A D0 07            [24] 2637 	pop	ar7
      002C6C                       2638 00102$:
                                   2639 ;	src/main.c:314: static_buffers[i].buffer = NULL;
      002C6C 90 20 81         [24] 2640 	mov	dptr,#__mulint_PARM_2
      002C6F EE               [12] 2641 	mov	a,r6
      002C70 F0               [24] 2642 	movx	@dptr,a
      002C71 EF               [12] 2643 	mov	a,r7
      002C72 A3               [24] 2644 	inc	dptr
      002C73 F0               [24] 2645 	movx	@dptr,a
      002C74 90 00 0B         [24] 2646 	mov	dptr,#0x000b
      002C77 C0 07            [24] 2647 	push	ar7
      002C79 C0 06            [24] 2648 	push	ar6
      002C7B 12 3F 82         [24] 2649 	lcall	__mulint
      002C7E AC 82            [24] 2650 	mov	r4,dpl
      002C80 AD 83            [24] 2651 	mov	r5,dph
      002C82 D0 06            [24] 2652 	pop	ar6
      002C84 D0 07            [24] 2653 	pop	ar7
      002C86 EC               [12] 2654 	mov	a,r4
      002C87 24 01            [12] 2655 	add	a,#_static_buffers
      002C89 F5 82            [12] 2656 	mov	dpl,a
      002C8B ED               [12] 2657 	mov	a,r5
      002C8C 34 00            [12] 2658 	addc	a,#(_static_buffers >> 8)
      002C8E F5 83            [12] 2659 	mov	dph,a
      002C90 E4               [12] 2660 	clr	a
      002C91 F0               [24] 2661 	movx	@dptr,a
      002C92 A3               [24] 2662 	inc	dptr
      002C93 F0               [24] 2663 	movx	@dptr,a
                                   2664 ;	src/main.c:315: static_buffers[i].size = 0; 
      002C94 EC               [12] 2665 	mov	a,r4
      002C95 24 01            [12] 2666 	add	a,#_static_buffers
      002C97 FC               [12] 2667 	mov	r4,a
      002C98 ED               [12] 2668 	mov	a,r5
      002C99 34 00            [12] 2669 	addc	a,#(_static_buffers >> 8)
      002C9B FD               [12] 2670 	mov	r5,a
      002C9C 8C 82            [24] 2671 	mov	dpl,r4
      002C9E 8D 83            [24] 2672 	mov	dph,r5
      002CA0 A3               [24] 2673 	inc	dptr
      002CA1 A3               [24] 2674 	inc	dptr
      002CA2 A3               [24] 2675 	inc	dptr
      002CA3 A3               [24] 2676 	inc	dptr
      002CA4 E4               [12] 2677 	clr	a
      002CA5 F0               [24] 2678 	movx	@dptr,a
      002CA6 A3               [24] 2679 	inc	dptr
      002CA7 F0               [24] 2680 	movx	@dptr,a
                                   2681 ;	src/main.c:308: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002CA8 0E               [12] 2682 	inc	r6
      002CA9 BE 00 01         [24] 2683 	cjne	r6,#0x00,00124$
      002CAC 0F               [12] 2684 	inc	r7
      002CAD                       2685 00124$:
      002CAD 02 2C 1F         [24] 2686 	ljmp	00105$
      002CB0                       2687 00103$:
                                   2688 ;	src/main.c:317: free_all_elems_from_list(&dynamic_buffers_list); 
      002CB0 90 20 BA         [24] 2689 	mov	dptr,#_dynamic_buffers_list
      002CB3 75 F0 00         [24] 2690 	mov	b,#0x00
                                   2691 ;	src/main.c:318: }
      002CB6 02 39 6D         [24] 2692 	ljmp	_free_all_elems_from_list
                                   2693 ;------------------------------------------------------------
                                   2694 ;Allocation info for local variables in function 'qmark_command_handler'
                                   2695 ;------------------------------------------------------------
                                   2696 ;sloc0                     Allocated with name '_qmark_command_handler_sloc0_1_0'
                                   2697 ;chars_received_since_last_qmark Allocated with name '_qmark_command_handler_chars_received_since_last_qmark_65537_135'
                                   2698 ;curr_output_char          Allocated with name '_qmark_command_handler_curr_output_char_65538_136'
                                   2699 ;i                         Allocated with name '_qmark_command_handler_i_131074_137'
                                   2700 ;curr_buffer_char          Allocated with name '_qmark_command_handler_curr_buffer_char_196610_138'
                                   2701 ;curr_char                 Allocated with name '_qmark_command_handler_curr_char_196610_138'
                                   2702 ;------------------------------------------------------------
                                   2703 ;	src/main.c:322: void qmark_command_handler()
                                   2704 ;	-----------------------------------------
                                   2705 ;	 function qmark_command_handler
                                   2706 ;	-----------------------------------------
      002CB9                       2707 _qmark_command_handler:
                                   2708 ;	src/main.c:324: heap_report();
      002CB9 12 29 4D         [24] 2709 	lcall	_heap_report
                                   2710 ;	src/main.c:325: size_t chars_received_since_last_qmark = get_char_count();
      002CBC 12 36 C1         [24] 2711 	lcall	_get_char_count
      002CBF AE 82            [24] 2712 	mov	r6,dpl
      002CC1 AF 83            [24] 2713 	mov	r7,dph
                                   2714 ;	src/main.c:326: reset_char_count();
      002CC3 C0 07            [24] 2715 	push	ar7
      002CC5 C0 06            [24] 2716 	push	ar6
      002CC7 12 36 CD         [24] 2717 	lcall	_reset_char_count
      002CCA D0 06            [24] 2718 	pop	ar6
      002CCC D0 07            [24] 2719 	pop	ar7
                                   2720 ;	src/main.c:327: printf("\r\n Received %zu chars since last invocation of ?", chars_received_since_last_qmark);
      002CCE C0 06            [24] 2721 	push	ar6
      002CD0 C0 07            [24] 2722 	push	ar7
      002CD2 74 3E            [12] 2723 	mov	a,#___str_14
      002CD4 C0 E0            [24] 2724 	push	acc
      002CD6 74 4C            [12] 2725 	mov	a,#(___str_14 >> 8)
      002CD8 C0 E0            [24] 2726 	push	acc
      002CDA 74 80            [12] 2727 	mov	a,#0x80
      002CDC C0 E0            [24] 2728 	push	acc
      002CDE 12 3F F0         [24] 2729 	lcall	_printf
      002CE1 E5 81            [12] 2730 	mov	a,sp
      002CE3 24 FB            [12] 2731 	add	a,#0xfb
      002CE5 F5 81            [12] 2732 	mov	sp,a
                                   2733 ;	src/main.c:328: size_t curr_output_char = 0;
      002CE7 90 00 2F         [24] 2734 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_136
      002CEA E4               [12] 2735 	clr	a
      002CEB F0               [24] 2736 	movx	@dptr,a
      002CEC A3               [24] 2737 	inc	dptr
      002CED F0               [24] 2738 	movx	@dptr,a
                                   2739 ;	src/main.c:330: for(int i = 0; i < 2; i++)
      002CEE 7E 00            [12] 2740 	mov	r6,#0x00
      002CF0 7F 00            [12] 2741 	mov	r7,#0x00
      002CF2                       2742 00108$:
      002CF2 C3               [12] 2743 	clr	c
      002CF3 EE               [12] 2744 	mov	a,r6
      002CF4 94 02            [12] 2745 	subb	a,#0x02
      002CF6 EF               [12] 2746 	mov	a,r7
      002CF7 64 80            [12] 2747 	xrl	a,#0x80
      002CF9 94 80            [12] 2748 	subb	a,#0x80
      002CFB 40 03            [24] 2749 	jc	00134$
      002CFD 02 2E 7B         [24] 2750 	ljmp	00106$
      002D00                       2751 00134$:
                                   2752 ;	src/main.c:333: char curr_char = static_buffers[i].buffer[0];
      002D00 90 20 81         [24] 2753 	mov	dptr,#__mulint_PARM_2
      002D03 EE               [12] 2754 	mov	a,r6
      002D04 F0               [24] 2755 	movx	@dptr,a
      002D05 EF               [12] 2756 	mov	a,r7
      002D06 A3               [24] 2757 	inc	dptr
      002D07 F0               [24] 2758 	movx	@dptr,a
      002D08 90 00 0B         [24] 2759 	mov	dptr,#0x000b
      002D0B C0 07            [24] 2760 	push	ar7
      002D0D C0 06            [24] 2761 	push	ar6
      002D0F 12 3F 82         [24] 2762 	lcall	__mulint
      002D12 AC 82            [24] 2763 	mov	r4,dpl
      002D14 AD 83            [24] 2764 	mov	r5,dph
      002D16 D0 06            [24] 2765 	pop	ar6
      002D18 D0 07            [24] 2766 	pop	ar7
      002D1A EC               [12] 2767 	mov	a,r4
      002D1B 24 01            [12] 2768 	add	a,#_static_buffers
      002D1D FC               [12] 2769 	mov	r4,a
      002D1E ED               [12] 2770 	mov	a,r5
      002D1F 34 00            [12] 2771 	addc	a,#(_static_buffers >> 8)
      002D21 FD               [12] 2772 	mov	r5,a
      002D22 8C 82            [24] 2773 	mov	dpl,r4
      002D24 8D 83            [24] 2774 	mov	dph,r5
      002D26 E0               [24] 2775 	movx	a,@dptr
      002D27 FA               [12] 2776 	mov	r2,a
      002D28 A3               [24] 2777 	inc	dptr
      002D29 E0               [24] 2778 	movx	a,@dptr
      002D2A FB               [12] 2779 	mov	r3,a
      002D2B 8A 82            [24] 2780 	mov	dpl,r2
      002D2D 8B 83            [24] 2781 	mov	dph,r3
      002D2F E0               [24] 2782 	movx	a,@dptr
      002D30 90 00 31         [24] 2783 	mov	dptr,#_qmark_command_handler_curr_char_196610_138
      002D33 F0               [24] 2784 	movx	@dptr,a
                                   2785 ;	src/main.c:334: while(curr_char != '\0')
      002D34 90 00 2F         [24] 2786 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_136
      002D37 E0               [24] 2787 	movx	a,@dptr
      002D38 FA               [12] 2788 	mov	r2,a
      002D39 A3               [24] 2789 	inc	dptr
      002D3A E0               [24] 2790 	movx	a,@dptr
      002D3B FB               [12] 2791 	mov	r3,a
      002D3C 78 00            [12] 2792 	mov	r0,#0x00
      002D3E 79 00            [12] 2793 	mov	r1,#0x00
      002D40                       2794 00103$:
      002D40 90 00 31         [24] 2795 	mov	dptr,#_qmark_command_handler_curr_char_196610_138
      002D43 E0               [24] 2796 	movx	a,@dptr
      002D44 70 03            [24] 2797 	jnz	00135$
      002D46 02 2D EE         [24] 2798 	ljmp	00117$
      002D49                       2799 00135$:
                                   2800 ;	src/main.c:336: if (MODULE_32(curr_output_char) == 0)
      002D49 EA               [12] 2801 	mov	a,r2
      002D4A 54 1F            [12] 2802 	anl	a,#0x1f
      002D4C 70 35            [24] 2803 	jnz	00102$
                                   2804 ;	src/main.c:338: printf("\r\n");
      002D4E C0 07            [24] 2805 	push	ar7
      002D50 C0 06            [24] 2806 	push	ar6
      002D52 C0 05            [24] 2807 	push	ar5
      002D54 C0 04            [24] 2808 	push	ar4
      002D56 C0 03            [24] 2809 	push	ar3
      002D58 C0 02            [24] 2810 	push	ar2
      002D5A C0 01            [24] 2811 	push	ar1
      002D5C C0 00            [24] 2812 	push	ar0
      002D5E 74 DE            [12] 2813 	mov	a,#___str_11
      002D60 C0 E0            [24] 2814 	push	acc
      002D62 74 4B            [12] 2815 	mov	a,#(___str_11 >> 8)
      002D64 C0 E0            [24] 2816 	push	acc
      002D66 74 80            [12] 2817 	mov	a,#0x80
      002D68 C0 E0            [24] 2818 	push	acc
      002D6A 12 3F F0         [24] 2819 	lcall	_printf
      002D6D 15 81            [12] 2820 	dec	sp
      002D6F 15 81            [12] 2821 	dec	sp
      002D71 15 81            [12] 2822 	dec	sp
      002D73 D0 00            [24] 2823 	pop	ar0
      002D75 D0 01            [24] 2824 	pop	ar1
      002D77 D0 02            [24] 2825 	pop	ar2
      002D79 D0 03            [24] 2826 	pop	ar3
      002D7B D0 04            [24] 2827 	pop	ar4
      002D7D D0 05            [24] 2828 	pop	ar5
      002D7F D0 06            [24] 2829 	pop	ar6
      002D81 D0 07            [24] 2830 	pop	ar7
      002D83                       2831 00102$:
                                   2832 ;	src/main.c:340: printf("%c", curr_char);
      002D83 C0 06            [24] 2833 	push	ar6
      002D85 C0 07            [24] 2834 	push	ar7
      002D87 90 00 31         [24] 2835 	mov	dptr,#_qmark_command_handler_curr_char_196610_138
      002D8A E0               [24] 2836 	movx	a,@dptr
      002D8B FF               [12] 2837 	mov	r7,a
      002D8C 7E 00            [12] 2838 	mov	r6,#0x00
      002D8E C0 07            [24] 2839 	push	ar7
      002D90 C0 06            [24] 2840 	push	ar6
      002D92 C0 05            [24] 2841 	push	ar5
      002D94 C0 04            [24] 2842 	push	ar4
      002D96 C0 03            [24] 2843 	push	ar3
      002D98 C0 02            [24] 2844 	push	ar2
      002D9A C0 01            [24] 2845 	push	ar1
      002D9C C0 00            [24] 2846 	push	ar0
      002D9E C0 07            [24] 2847 	push	ar7
      002DA0 C0 06            [24] 2848 	push	ar6
      002DA2 74 6F            [12] 2849 	mov	a,#___str_15
      002DA4 C0 E0            [24] 2850 	push	acc
      002DA6 74 4C            [12] 2851 	mov	a,#(___str_15 >> 8)
      002DA8 C0 E0            [24] 2852 	push	acc
      002DAA 74 80            [12] 2853 	mov	a,#0x80
      002DAC C0 E0            [24] 2854 	push	acc
      002DAE 12 3F F0         [24] 2855 	lcall	_printf
      002DB1 E5 81            [12] 2856 	mov	a,sp
      002DB3 24 FB            [12] 2857 	add	a,#0xfb
      002DB5 F5 81            [12] 2858 	mov	sp,a
      002DB7 D0 00            [24] 2859 	pop	ar0
      002DB9 D0 01            [24] 2860 	pop	ar1
      002DBB D0 02            [24] 2861 	pop	ar2
      002DBD D0 03            [24] 2862 	pop	ar3
      002DBF D0 04            [24] 2863 	pop	ar4
      002DC1 D0 05            [24] 2864 	pop	ar5
      002DC3 D0 06            [24] 2865 	pop	ar6
      002DC5 D0 07            [24] 2866 	pop	ar7
                                   2867 ;	src/main.c:341: curr_output_char++;
      002DC7 0A               [12] 2868 	inc	r2
      002DC8 BA 00 01         [24] 2869 	cjne	r2,#0x00,00138$
      002DCB 0B               [12] 2870 	inc	r3
      002DCC                       2871 00138$:
                                   2872 ;	src/main.c:342: curr_buffer_char++;
      002DCC 08               [12] 2873 	inc	r0
      002DCD B8 00 01         [24] 2874 	cjne	r0,#0x00,00139$
      002DD0 09               [12] 2875 	inc	r1
      002DD1                       2876 00139$:
                                   2877 ;	src/main.c:343: curr_char = static_buffers[i].buffer[curr_buffer_char];
      002DD1 8C 82            [24] 2878 	mov	dpl,r4
      002DD3 8D 83            [24] 2879 	mov	dph,r5
      002DD5 E0               [24] 2880 	movx	a,@dptr
      002DD6 FE               [12] 2881 	mov	r6,a
      002DD7 A3               [24] 2882 	inc	dptr
      002DD8 E0               [24] 2883 	movx	a,@dptr
      002DD9 FF               [12] 2884 	mov	r7,a
      002DDA E8               [12] 2885 	mov	a,r0
      002DDB 2E               [12] 2886 	add	a,r6
      002DDC F5 82            [12] 2887 	mov	dpl,a
      002DDE E9               [12] 2888 	mov	a,r1
      002DDF 3F               [12] 2889 	addc	a,r7
      002DE0 F5 83            [12] 2890 	mov	dph,a
      002DE2 E0               [24] 2891 	movx	a,@dptr
      002DE3 90 00 31         [24] 2892 	mov	dptr,#_qmark_command_handler_curr_char_196610_138
      002DE6 F0               [24] 2893 	movx	@dptr,a
      002DE7 D0 07            [24] 2894 	pop	ar7
      002DE9 D0 06            [24] 2895 	pop	ar6
      002DEB 02 2D 40         [24] 2896 	ljmp	00103$
      002DEE                       2897 00117$:
      002DEE 90 00 2F         [24] 2898 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_136
      002DF1 EA               [12] 2899 	mov	a,r2
      002DF2 F0               [24] 2900 	movx	@dptr,a
      002DF3 EB               [12] 2901 	mov	a,r3
      002DF4 A3               [24] 2902 	inc	dptr
      002DF5 F0               [24] 2903 	movx	@dptr,a
                                   2904 ;	src/main.c:346: memset(static_buffers[i].buffer, '\0', static_buffers[i].size);
      002DF6 90 20 81         [24] 2905 	mov	dptr,#__mulint_PARM_2
      002DF9 EE               [12] 2906 	mov	a,r6
      002DFA F0               [24] 2907 	movx	@dptr,a
      002DFB EF               [12] 2908 	mov	a,r7
      002DFC A3               [24] 2909 	inc	dptr
      002DFD F0               [24] 2910 	movx	@dptr,a
      002DFE 90 00 0B         [24] 2911 	mov	dptr,#0x000b
      002E01 C0 07            [24] 2912 	push	ar7
      002E03 C0 06            [24] 2913 	push	ar6
      002E05 12 3F 82         [24] 2914 	lcall	__mulint
      002E08 AC 82            [24] 2915 	mov	r4,dpl
      002E0A AD 83            [24] 2916 	mov	r5,dph
      002E0C EC               [12] 2917 	mov	a,r4
      002E0D 24 01            [12] 2918 	add	a,#_static_buffers
      002E0F F5 82            [12] 2919 	mov	dpl,a
      002E11 ED               [12] 2920 	mov	a,r5
      002E12 34 00            [12] 2921 	addc	a,#(_static_buffers >> 8)
      002E14 F5 83            [12] 2922 	mov	dph,a
      002E16 E0               [24] 2923 	movx	a,@dptr
      002E17 FA               [12] 2924 	mov	r2,a
      002E18 A3               [24] 2925 	inc	dptr
      002E19 E0               [24] 2926 	movx	a,@dptr
      002E1A FB               [12] 2927 	mov	r3,a
      002E1B 8A 43            [24] 2928 	mov	_qmark_command_handler_sloc0_1_0,r2
      002E1D 8B 44            [24] 2929 	mov	(_qmark_command_handler_sloc0_1_0 + 1),r3
      002E1F 75 45 00         [24] 2930 	mov	(_qmark_command_handler_sloc0_1_0 + 2),#0x00
      002E22 EC               [12] 2931 	mov	a,r4
      002E23 24 01            [12] 2932 	add	a,#_static_buffers
      002E25 FC               [12] 2933 	mov	r4,a
      002E26 ED               [12] 2934 	mov	a,r5
      002E27 34 00            [12] 2935 	addc	a,#(_static_buffers >> 8)
      002E29 FD               [12] 2936 	mov	r5,a
      002E2A 8C 82            [24] 2937 	mov	dpl,r4
      002E2C 8D 83            [24] 2938 	mov	dph,r5
      002E2E A3               [24] 2939 	inc	dptr
      002E2F A3               [24] 2940 	inc	dptr
      002E30 A3               [24] 2941 	inc	dptr
      002E31 A3               [24] 2942 	inc	dptr
      002E32 E0               [24] 2943 	movx	a,@dptr
      002E33 F8               [12] 2944 	mov	r0,a
      002E34 A3               [24] 2945 	inc	dptr
      002E35 E0               [24] 2946 	movx	a,@dptr
      002E36 FB               [12] 2947 	mov	r3,a
      002E37 90 20 6F         [24] 2948 	mov	dptr,#_memset_PARM_2
      002E3A E4               [12] 2949 	clr	a
      002E3B F0               [24] 2950 	movx	@dptr,a
      002E3C 90 20 70         [24] 2951 	mov	dptr,#_memset_PARM_3
      002E3F E8               [12] 2952 	mov	a,r0
      002E40 F0               [24] 2953 	movx	@dptr,a
      002E41 EB               [12] 2954 	mov	a,r3
      002E42 A3               [24] 2955 	inc	dptr
      002E43 F0               [24] 2956 	movx	@dptr,a
      002E44 85 43 82         [24] 2957 	mov	dpl,_qmark_command_handler_sloc0_1_0
      002E47 85 44 83         [24] 2958 	mov	dph,(_qmark_command_handler_sloc0_1_0 + 1)
      002E4A 85 45 F0         [24] 2959 	mov	b,(_qmark_command_handler_sloc0_1_0 + 2)
      002E4D C0 05            [24] 2960 	push	ar5
      002E4F C0 04            [24] 2961 	push	ar4
      002E51 12 3C 76         [24] 2962 	lcall	_memset
      002E54 D0 04            [24] 2963 	pop	ar4
      002E56 D0 05            [24] 2964 	pop	ar5
      002E58 D0 06            [24] 2965 	pop	ar6
      002E5A D0 07            [24] 2966 	pop	ar7
                                   2967 ;	src/main.c:347: static_buffers[i].alphabet_chars = 0;
      002E5C 8C 82            [24] 2968 	mov	dpl,r4
      002E5E 8D 83            [24] 2969 	mov	dph,r5
      002E60 A3               [24] 2970 	inc	dptr
      002E61 A3               [24] 2971 	inc	dptr
      002E62 E4               [12] 2972 	clr	a
      002E63 F0               [24] 2973 	movx	@dptr,a
      002E64 A3               [24] 2974 	inc	dptr
      002E65 F0               [24] 2975 	movx	@dptr,a
                                   2976 ;	src/main.c:348: static_buffers[i].curr_available_char = 0;
      002E66 74 06            [12] 2977 	mov	a,#0x06
      002E68 2C               [12] 2978 	add	a,r4
      002E69 F5 82            [12] 2979 	mov	dpl,a
      002E6B E4               [12] 2980 	clr	a
      002E6C 3D               [12] 2981 	addc	a,r5
      002E6D F5 83            [12] 2982 	mov	dph,a
      002E6F E4               [12] 2983 	clr	a
      002E70 F0               [24] 2984 	movx	@dptr,a
      002E71 A3               [24] 2985 	inc	dptr
      002E72 F0               [24] 2986 	movx	@dptr,a
                                   2987 ;	src/main.c:330: for(int i = 0; i < 2; i++)
      002E73 0E               [12] 2988 	inc	r6
      002E74 BE 00 01         [24] 2989 	cjne	r6,#0x00,00140$
      002E77 0F               [12] 2990 	inc	r7
      002E78                       2991 00140$:
      002E78 02 2C F2         [24] 2992 	ljmp	00108$
      002E7B                       2993 00106$:
                                   2994 ;	src/main.c:351: printf("\r\n");
      002E7B 74 DE            [12] 2995 	mov	a,#___str_11
      002E7D C0 E0            [24] 2996 	push	acc
      002E7F 74 4B            [12] 2997 	mov	a,#(___str_11 >> 8)
      002E81 C0 E0            [24] 2998 	push	acc
      002E83 74 80            [12] 2999 	mov	a,#0x80
      002E85 C0 E0            [24] 3000 	push	acc
      002E87 12 3F F0         [24] 3001 	lcall	_printf
      002E8A 15 81            [12] 3002 	dec	sp
      002E8C 15 81            [12] 3003 	dec	sp
      002E8E 15 81            [12] 3004 	dec	sp
                                   3005 ;	src/main.c:352: printf("\r\n");
      002E90 74 DE            [12] 3006 	mov	a,#___str_11
      002E92 C0 E0            [24] 3007 	push	acc
      002E94 74 4B            [12] 3008 	mov	a,#(___str_11 >> 8)
      002E96 C0 E0            [24] 3009 	push	acc
      002E98 74 80            [12] 3010 	mov	a,#0x80
      002E9A C0 E0            [24] 3011 	push	acc
      002E9C 12 3F F0         [24] 3012 	lcall	_printf
      002E9F 15 81            [12] 3013 	dec	sp
      002EA1 15 81            [12] 3014 	dec	sp
      002EA3 15 81            [12] 3015 	dec	sp
                                   3016 ;	src/main.c:353: }
      002EA5 22               [24] 3017 	ret
                                   3018 ;------------------------------------------------------------
                                   3019 ;Allocation info for local variables in function 'enter_command_handler'
                                   3020 ;------------------------------------------------------------
                                   3021 ;sloc0                     Allocated with name '_enter_command_handler_sloc0_1_0'
                                   3022 ;sloc1                     Allocated with name '_enter_command_handler_sloc1_1_0'
                                   3023 ;sloc2                     Allocated with name '_enter_command_handler_sloc2_1_0'
                                   3024 ;sloc3                     Allocated with name '_enter_command_handler_sloc3_1_0'
                                   3025 ;i                         Allocated with name '_enter_command_handler_i_131072_142'
                                   3026 ;address                   Allocated with name '_enter_command_handler_address_262144_144'
                                   3027 ;j                         Allocated with name '_enter_command_handler_j_393216_146'
                                   3028 ;------------------------------------------------------------
                                   3029 ;	src/main.c:355: void enter_command_handler()
                                   3030 ;	-----------------------------------------
                                   3031 ;	 function enter_command_handler
                                   3032 ;	-----------------------------------------
      002EA6                       3033 _enter_command_handler:
                                   3034 ;	src/main.c:357: command_header("Dump Admin Buffers");
      002EA6 90 4C 72         [24] 3035 	mov	dptr,#___str_16
      002EA9 75 F0 80         [24] 3036 	mov	b,#0x80
      002EAC 12 29 04         [24] 3037 	lcall	_command_header
                                   3038 ;	src/main.c:358: for(int i = 0; i < 2; i++)
      002EAF 7E 00            [12] 3039 	mov	r6,#0x00
      002EB1 7F 00            [12] 3040 	mov	r7,#0x00
      002EB3                       3041 00111$:
      002EB3 C3               [12] 3042 	clr	c
      002EB4 EE               [12] 3043 	mov	a,r6
      002EB5 94 02            [12] 3044 	subb	a,#0x02
      002EB7 EF               [12] 3045 	mov	a,r7
      002EB8 64 80            [12] 3046 	xrl	a,#0x80
      002EBA 94 80            [12] 3047 	subb	a,#0x80
      002EBC 40 01            [24] 3048 	jc	00142$
      002EBE 22               [24] 3049 	ret
      002EBF                       3050 00142$:
                                   3051 ;	src/main.c:360: printf("\r\n Buffer %d ", i);
      002EBF C0 07            [24] 3052 	push	ar7
      002EC1 C0 06            [24] 3053 	push	ar6
      002EC3 C0 06            [24] 3054 	push	ar6
      002EC5 C0 07            [24] 3055 	push	ar7
      002EC7 74 85            [12] 3056 	mov	a,#___str_17
      002EC9 C0 E0            [24] 3057 	push	acc
      002ECB 74 4C            [12] 3058 	mov	a,#(___str_17 >> 8)
      002ECD C0 E0            [24] 3059 	push	acc
      002ECF 74 80            [12] 3060 	mov	a,#0x80
      002ED1 C0 E0            [24] 3061 	push	acc
      002ED3 12 3F F0         [24] 3062 	lcall	_printf
      002ED6 E5 81            [12] 3063 	mov	a,sp
      002ED8 24 FB            [12] 3064 	add	a,#0xfb
      002EDA F5 81            [12] 3065 	mov	sp,a
                                   3066 ;	src/main.c:361: printf("\r\n----------");
      002EDC 74 93            [12] 3067 	mov	a,#___str_18
      002EDE C0 E0            [24] 3068 	push	acc
      002EE0 74 4C            [12] 3069 	mov	a,#(___str_18 >> 8)
      002EE2 C0 E0            [24] 3070 	push	acc
      002EE4 74 80            [12] 3071 	mov	a,#0x80
      002EE6 C0 E0            [24] 3072 	push	acc
      002EE8 12 3F F0         [24] 3073 	lcall	_printf
      002EEB 15 81            [12] 3074 	dec	sp
      002EED 15 81            [12] 3075 	dec	sp
      002EEF 15 81            [12] 3076 	dec	sp
      002EF1 D0 06            [24] 3077 	pop	ar6
      002EF3 D0 07            [24] 3078 	pop	ar7
                                   3079 ;	src/main.c:362: for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
      002EF5 90 20 81         [24] 3080 	mov	dptr,#__mulint_PARM_2
      002EF8 EE               [12] 3081 	mov	a,r6
      002EF9 F0               [24] 3082 	movx	@dptr,a
      002EFA EF               [12] 3083 	mov	a,r7
      002EFB A3               [24] 3084 	inc	dptr
      002EFC F0               [24] 3085 	movx	@dptr,a
      002EFD 90 00 0B         [24] 3086 	mov	dptr,#0x000b
      002F00 C0 07            [24] 3087 	push	ar7
      002F02 C0 06            [24] 3088 	push	ar6
      002F04 12 3F 82         [24] 3089 	lcall	__mulint
      002F07 AC 82            [24] 3090 	mov	r4,dpl
      002F09 AD 83            [24] 3091 	mov	r5,dph
      002F0B D0 06            [24] 3092 	pop	ar6
      002F0D D0 07            [24] 3093 	pop	ar7
      002F0F EC               [12] 3094 	mov	a,r4
      002F10 24 01            [12] 3095 	add	a,#_static_buffers
      002F12 FA               [12] 3096 	mov	r2,a
      002F13 ED               [12] 3097 	mov	a,r5
      002F14 34 00            [12] 3098 	addc	a,#(_static_buffers >> 8)
      002F16 FB               [12] 3099 	mov	r3,a
      002F17 8A 82            [24] 3100 	mov	dpl,r2
      002F19 8B 83            [24] 3101 	mov	dph,r3
      002F1B E0               [24] 3102 	movx	a,@dptr
      002F1C F8               [12] 3103 	mov	r0,a
      002F1D A3               [24] 3104 	inc	dptr
      002F1E E0               [24] 3105 	movx	a,@dptr
      002F1F F9               [12] 3106 	mov	r1,a
      002F20 88 46            [24] 3107 	mov	_enter_command_handler_sloc0_1_0,r0
      002F22 89 47            [24] 3108 	mov	(_enter_command_handler_sloc0_1_0 + 1),r1
      002F24 75 48 00         [24] 3109 	mov	(_enter_command_handler_sloc0_1_0 + 2),#0x00
      002F27 8E 00            [24] 3110 	mov	ar0,r6
      002F29 8F 01            [24] 3111 	mov	ar1,r7
      002F2B 8A 4D            [24] 3112 	mov	_enter_command_handler_sloc3_1_0,r2
      002F2D 8B 4E            [24] 3113 	mov	(_enter_command_handler_sloc3_1_0 + 1),r3
      002F2F EC               [12] 3114 	mov	a,r4
      002F30 24 01            [12] 3115 	add	a,#_static_buffers
      002F32 FC               [12] 3116 	mov	r4,a
      002F33 ED               [12] 3117 	mov	a,r5
      002F34 34 00            [12] 3118 	addc	a,#(_static_buffers >> 8)
      002F36 FD               [12] 3119 	mov	r5,a
      002F37 74 04            [12] 3120 	mov	a,#0x04
      002F39 2C               [12] 3121 	add	a,r4
      002F3A F5 49            [12] 3122 	mov	_enter_command_handler_sloc1_1_0,a
      002F3C E4               [12] 3123 	clr	a
      002F3D 3D               [12] 3124 	addc	a,r5
      002F3E F5 4A            [12] 3125 	mov	(_enter_command_handler_sloc1_1_0 + 1),a
      002F40                       3126 00108$:
      002F40 C0 00            [24] 3127 	push	ar0
      002F42 C0 01            [24] 3128 	push	ar1
      002F44 85 4D 82         [24] 3129 	mov	dpl,_enter_command_handler_sloc3_1_0
      002F47 85 4E 83         [24] 3130 	mov	dph,(_enter_command_handler_sloc3_1_0 + 1)
      002F4A E0               [24] 3131 	movx	a,@dptr
      002F4B F8               [12] 3132 	mov	r0,a
      002F4C A3               [24] 3133 	inc	dptr
      002F4D E0               [24] 3134 	movx	a,@dptr
      002F4E F9               [12] 3135 	mov	r1,a
      002F4F 85 49 82         [24] 3136 	mov	dpl,_enter_command_handler_sloc1_1_0
      002F52 85 4A 83         [24] 3137 	mov	dph,(_enter_command_handler_sloc1_1_0 + 1)
      002F55 E0               [24] 3138 	movx	a,@dptr
      002F56 FC               [12] 3139 	mov	r4,a
      002F57 A3               [24] 3140 	inc	dptr
      002F58 E0               [24] 3141 	movx	a,@dptr
      002F59 FD               [12] 3142 	mov	r5,a
      002F5A EC               [12] 3143 	mov	a,r4
      002F5B 28               [12] 3144 	add	a,r0
      002F5C F5 4B            [12] 3145 	mov	_enter_command_handler_sloc2_1_0,a
      002F5E ED               [12] 3146 	mov	a,r5
      002F5F 39               [12] 3147 	addc	a,r1
      002F60 F5 4C            [12] 3148 	mov	(_enter_command_handler_sloc2_1_0 + 1),a
      002F62 A9 46            [24] 3149 	mov	r1,_enter_command_handler_sloc0_1_0
      002F64 AC 47            [24] 3150 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      002F66 AD 48            [24] 3151 	mov	r5,(_enter_command_handler_sloc0_1_0 + 2)
      002F68 A8 4B            [24] 3152 	mov	r0,_enter_command_handler_sloc2_1_0
      002F6A AA 4C            [24] 3153 	mov	r2,(_enter_command_handler_sloc2_1_0 + 1)
      002F6C 7B 00            [12] 3154 	mov	r3,#0x00
      002F6E C0 00            [24] 3155 	push	ar0
      002F70 C0 02            [24] 3156 	push	ar2
      002F72 C0 03            [24] 3157 	push	ar3
      002F74 89 82            [24] 3158 	mov	dpl,r1
      002F76 8C 83            [24] 3159 	mov	dph,r4
      002F78 8D F0            [24] 3160 	mov	b,r5
      002F7A 12 20 06         [24] 3161 	lcall	___gptr_cmp
      002F7D 15 81            [12] 3162 	dec	sp
      002F7F 15 81            [12] 3163 	dec	sp
      002F81 15 81            [12] 3164 	dec	sp
      002F83 D0 01            [24] 3165 	pop	ar1
      002F85 D0 00            [24] 3166 	pop	ar0
      002F87 40 03            [24] 3167 	jc	00143$
      002F89 02 30 2C         [24] 3168 	ljmp	00102$
      002F8C                       3169 00143$:
                                   3170 ;	src/main.c:364: printf("\r\n%04X:", (unsigned int) address);
      002F8C AB 46            [24] 3171 	mov	r3,_enter_command_handler_sloc0_1_0
      002F8E AC 47            [24] 3172 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      002F90 C0 01            [24] 3173 	push	ar1
      002F92 C0 00            [24] 3174 	push	ar0
      002F94 C0 03            [24] 3175 	push	ar3
      002F96 C0 04            [24] 3176 	push	ar4
      002F98 74 A0            [12] 3177 	mov	a,#___str_19
      002F9A C0 E0            [24] 3178 	push	acc
      002F9C 74 4C            [12] 3179 	mov	a,#(___str_19 >> 8)
      002F9E C0 E0            [24] 3180 	push	acc
      002FA0 74 80            [12] 3181 	mov	a,#0x80
      002FA2 C0 E0            [24] 3182 	push	acc
      002FA4 12 3F F0         [24] 3183 	lcall	_printf
      002FA7 E5 81            [12] 3184 	mov	a,sp
      002FA9 24 FB            [12] 3185 	add	a,#0xfb
      002FAB F5 81            [12] 3186 	mov	sp,a
      002FAD D0 00            [24] 3187 	pop	ar0
      002FAF D0 01            [24] 3188 	pop	ar1
                                   3189 ;	src/main.c:365: for(int j = 0; j < 16; j++)
      002FB1 AB 46            [24] 3190 	mov	r3,_enter_command_handler_sloc0_1_0
      002FB3 AC 47            [24] 3191 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      002FB5 AD 48            [24] 3192 	mov	r5,(_enter_command_handler_sloc0_1_0 + 2)
      002FB7 E4               [12] 3193 	clr	a
      002FB8 F5 4B            [12] 3194 	mov	_enter_command_handler_sloc2_1_0,a
      002FBA F5 4C            [12] 3195 	mov	(_enter_command_handler_sloc2_1_0 + 1),a
      002FBC                       3196 00105$:
      002FBC C3               [12] 3197 	clr	c
      002FBD E5 4B            [12] 3198 	mov	a,_enter_command_handler_sloc2_1_0
      002FBF 94 10            [12] 3199 	subb	a,#0x10
      002FC1 E5 4C            [12] 3200 	mov	a,(_enter_command_handler_sloc2_1_0 + 1)
      002FC3 64 80            [12] 3201 	xrl	a,#0x80
      002FC5 94 80            [12] 3202 	subb	a,#0x80
      002FC7 50 55            [24] 3203 	jnc	00109$
                                   3204 ;	src/main.c:367: printf(" %02hhX", (unsigned char) *(address+j));
      002FC9 C0 00            [24] 3205 	push	ar0
      002FCB C0 01            [24] 3206 	push	ar1
      002FCD E5 4B            [12] 3207 	mov	a,_enter_command_handler_sloc2_1_0
      002FCF 2B               [12] 3208 	add	a,r3
      002FD0 F8               [12] 3209 	mov	r0,a
      002FD1 E5 4C            [12] 3210 	mov	a,(_enter_command_handler_sloc2_1_0 + 1)
      002FD3 3C               [12] 3211 	addc	a,r4
      002FD4 F9               [12] 3212 	mov	r1,a
      002FD5 8D 02            [24] 3213 	mov	ar2,r5
      002FD7 88 82            [24] 3214 	mov	dpl,r0
      002FD9 89 83            [24] 3215 	mov	dph,r1
      002FDB 8A F0            [24] 3216 	mov	b,r2
      002FDD 12 4A 1C         [24] 3217 	lcall	__gptrget
      002FE0 F8               [12] 3218 	mov	r0,a
      002FE1 7A 00            [12] 3219 	mov	r2,#0x00
      002FE3 C0 05            [24] 3220 	push	ar5
      002FE5 C0 04            [24] 3221 	push	ar4
      002FE7 C0 03            [24] 3222 	push	ar3
      002FE9 C0 01            [24] 3223 	push	ar1
      002FEB C0 00            [24] 3224 	push	ar0
      002FED C0 00            [24] 3225 	push	ar0
      002FEF C0 02            [24] 3226 	push	ar2
      002FF1 74 A8            [12] 3227 	mov	a,#___str_20
      002FF3 C0 E0            [24] 3228 	push	acc
      002FF5 74 4C            [12] 3229 	mov	a,#(___str_20 >> 8)
      002FF7 C0 E0            [24] 3230 	push	acc
      002FF9 74 80            [12] 3231 	mov	a,#0x80
      002FFB C0 E0            [24] 3232 	push	acc
      002FFD 12 3F F0         [24] 3233 	lcall	_printf
      003000 E5 81            [12] 3234 	mov	a,sp
      003002 24 FB            [12] 3235 	add	a,#0xfb
      003004 F5 81            [12] 3236 	mov	sp,a
      003006 D0 00            [24] 3237 	pop	ar0
      003008 D0 01            [24] 3238 	pop	ar1
      00300A D0 03            [24] 3239 	pop	ar3
      00300C D0 04            [24] 3240 	pop	ar4
      00300E D0 05            [24] 3241 	pop	ar5
                                   3242 ;	src/main.c:365: for(int j = 0; j < 16; j++)
      003010 05 4B            [12] 3243 	inc	_enter_command_handler_sloc2_1_0
      003012 E4               [12] 3244 	clr	a
      003013 B5 4B 02         [24] 3245 	cjne	a,_enter_command_handler_sloc2_1_0,00145$
      003016 05 4C            [12] 3246 	inc	(_enter_command_handler_sloc2_1_0 + 1)
      003018                       3247 00145$:
      003018 D0 01            [24] 3248 	pop	ar1
      00301A D0 00            [24] 3249 	pop	ar0
      00301C 80 9E            [24] 3250 	sjmp	00105$
      00301E                       3251 00109$:
                                   3252 ;	src/main.c:362: for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
      00301E 74 10            [12] 3253 	mov	a,#0x10
      003020 25 46            [12] 3254 	add	a,_enter_command_handler_sloc0_1_0
      003022 F5 46            [12] 3255 	mov	_enter_command_handler_sloc0_1_0,a
      003024 E4               [12] 3256 	clr	a
      003025 35 47            [12] 3257 	addc	a,(_enter_command_handler_sloc0_1_0 + 1)
      003027 F5 47            [12] 3258 	mov	(_enter_command_handler_sloc0_1_0 + 1),a
      003029 02 2F 40         [24] 3259 	ljmp	00108$
      00302C                       3260 00102$:
                                   3261 ;	src/main.c:370: printf("\r\n");
      00302C C0 01            [24] 3262 	push	ar1
      00302E C0 00            [24] 3263 	push	ar0
      003030 74 DE            [12] 3264 	mov	a,#___str_11
      003032 C0 E0            [24] 3265 	push	acc
      003034 74 4B            [12] 3266 	mov	a,#(___str_11 >> 8)
      003036 C0 E0            [24] 3267 	push	acc
      003038 74 80            [12] 3268 	mov	a,#0x80
      00303A C0 E0            [24] 3269 	push	acc
      00303C 12 3F F0         [24] 3270 	lcall	_printf
      00303F 15 81            [12] 3271 	dec	sp
      003041 15 81            [12] 3272 	dec	sp
      003043 15 81            [12] 3273 	dec	sp
      003045 D0 00            [24] 3274 	pop	ar0
      003047 D0 01            [24] 3275 	pop	ar1
                                   3276 ;	src/main.c:358: for(int i = 0; i < 2; i++)
      003049 74 01            [12] 3277 	mov	a,#0x01
      00304B 28               [12] 3278 	add	a,r0
      00304C FE               [12] 3279 	mov	r6,a
      00304D E4               [12] 3280 	clr	a
      00304E 39               [12] 3281 	addc	a,r1
      00304F FF               [12] 3282 	mov	r7,a
                                   3283 ;	src/main.c:372: }
      003050 02 2E B3         [24] 3284 	ljmp	00111$
                                   3285 ;------------------------------------------------------------
                                   3286 ;Allocation info for local variables in function 'percent_command_handler'
                                   3287 ;------------------------------------------------------------
                                   3288 ;sloc0                     Allocated with name '_percent_command_handler_sloc0_1_0'
                                   3289 ;i                         Allocated with name '_percent_command_handler_i_131072_149'
                                   3290 ;curr                      Allocated with name '_percent_command_handler_curr_65537_152'
                                   3291 ;------------------------------------------------------------
                                   3292 ;	src/main.c:374: void percent_command_handler()
                                   3293 ;	-----------------------------------------
                                   3294 ;	 function percent_command_handler
                                   3295 ;	-----------------------------------------
      003053                       3296 _percent_command_handler:
                                   3297 ;	src/main.c:376: command_header("Clear Buffers");
      003053 90 4C B0         [24] 3298 	mov	dptr,#___str_21
      003056 75 F0 80         [24] 3299 	mov	b,#0x80
      003059 12 29 04         [24] 3300 	lcall	_command_header
                                   3301 ;	src/main.c:377: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00305C 7E 00            [12] 3302 	mov	r6,#0x00
      00305E 7F 00            [12] 3303 	mov	r7,#0x00
      003060                       3304 00107$:
      003060 C3               [12] 3305 	clr	c
      003061 EE               [12] 3306 	mov	a,r6
      003062 94 02            [12] 3307 	subb	a,#0x02
      003064 EF               [12] 3308 	mov	a,r7
      003065 64 80            [12] 3309 	xrl	a,#0x80
      003067 94 80            [12] 3310 	subb	a,#0x80
      003069 40 03            [24] 3311 	jc	00128$
      00306B 02 30 FF         [24] 3312 	ljmp	00103$
      00306E                       3313 00128$:
                                   3314 ;	src/main.c:379: if (static_buffers[i].buffer != NULL) 
      00306E 90 20 81         [24] 3315 	mov	dptr,#__mulint_PARM_2
      003071 EE               [12] 3316 	mov	a,r6
      003072 F0               [24] 3317 	movx	@dptr,a
      003073 EF               [12] 3318 	mov	a,r7
      003074 A3               [24] 3319 	inc	dptr
      003075 F0               [24] 3320 	movx	@dptr,a
      003076 90 00 0B         [24] 3321 	mov	dptr,#0x000b
      003079 C0 07            [24] 3322 	push	ar7
      00307B C0 06            [24] 3323 	push	ar6
      00307D 12 3F 82         [24] 3324 	lcall	__mulint
      003080 AC 82            [24] 3325 	mov	r4,dpl
      003082 AD 83            [24] 3326 	mov	r5,dph
      003084 D0 06            [24] 3327 	pop	ar6
      003086 D0 07            [24] 3328 	pop	ar7
      003088 EC               [12] 3329 	mov	a,r4
      003089 24 01            [12] 3330 	add	a,#_static_buffers
      00308B F5 82            [12] 3331 	mov	dpl,a
      00308D ED               [12] 3332 	mov	a,r5
      00308E 34 00            [12] 3333 	addc	a,#(_static_buffers >> 8)
      003090 F5 83            [12] 3334 	mov	dph,a
      003092 E0               [24] 3335 	movx	a,@dptr
      003093 FA               [12] 3336 	mov	r2,a
      003094 A3               [24] 3337 	inc	dptr
      003095 E0               [24] 3338 	movx	a,@dptr
      003096 FB               [12] 3339 	mov	r3,a
      003097 4A               [12] 3340 	orl	a,r2
      003098 60 5D            [24] 3341 	jz	00108$
                                   3342 ;	src/main.c:381: memset(static_buffers[i].buffer, 0x00, static_buffers[i].size);
      00309A C0 06            [24] 3343 	push	ar6
      00309C C0 07            [24] 3344 	push	ar7
      00309E 8B 01            [24] 3345 	mov	ar1,r3
      0030A0 7B 00            [12] 3346 	mov	r3,#0x00
      0030A2 EC               [12] 3347 	mov	a,r4
      0030A3 24 01            [12] 3348 	add	a,#_static_buffers
      0030A5 FC               [12] 3349 	mov	r4,a
      0030A6 ED               [12] 3350 	mov	a,r5
      0030A7 34 00            [12] 3351 	addc	a,#(_static_buffers >> 8)
      0030A9 FD               [12] 3352 	mov	r5,a
      0030AA 8C 82            [24] 3353 	mov	dpl,r4
      0030AC 8D 83            [24] 3354 	mov	dph,r5
      0030AE A3               [24] 3355 	inc	dptr
      0030AF A3               [24] 3356 	inc	dptr
      0030B0 A3               [24] 3357 	inc	dptr
      0030B1 A3               [24] 3358 	inc	dptr
      0030B2 E0               [24] 3359 	movx	a,@dptr
      0030B3 F8               [12] 3360 	mov	r0,a
      0030B4 A3               [24] 3361 	inc	dptr
      0030B5 E0               [24] 3362 	movx	a,@dptr
      0030B6 FF               [12] 3363 	mov	r7,a
      0030B7 90 20 6F         [24] 3364 	mov	dptr,#_memset_PARM_2
      0030BA E4               [12] 3365 	clr	a
      0030BB F0               [24] 3366 	movx	@dptr,a
      0030BC 90 20 70         [24] 3367 	mov	dptr,#_memset_PARM_3
      0030BF E8               [12] 3368 	mov	a,r0
      0030C0 F0               [24] 3369 	movx	@dptr,a
      0030C1 EF               [12] 3370 	mov	a,r7
      0030C2 A3               [24] 3371 	inc	dptr
      0030C3 F0               [24] 3372 	movx	@dptr,a
      0030C4 8A 82            [24] 3373 	mov	dpl,r2
      0030C6 89 83            [24] 3374 	mov	dph,r1
      0030C8 8B F0            [24] 3375 	mov	b,r3
      0030CA C0 07            [24] 3376 	push	ar7
      0030CC C0 06            [24] 3377 	push	ar6
      0030CE C0 05            [24] 3378 	push	ar5
      0030D0 C0 04            [24] 3379 	push	ar4
      0030D2 12 3C 76         [24] 3380 	lcall	_memset
      0030D5 D0 04            [24] 3381 	pop	ar4
      0030D7 D0 05            [24] 3382 	pop	ar5
      0030D9 D0 06            [24] 3383 	pop	ar6
      0030DB D0 07            [24] 3384 	pop	ar7
                                   3385 ;	src/main.c:382: static_buffers[i].curr_available_char = 0;
      0030DD 74 06            [12] 3386 	mov	a,#0x06
      0030DF 2C               [12] 3387 	add	a,r4
      0030E0 F5 82            [12] 3388 	mov	dpl,a
      0030E2 E4               [12] 3389 	clr	a
      0030E3 3D               [12] 3390 	addc	a,r5
      0030E4 F5 83            [12] 3391 	mov	dph,a
      0030E6 E4               [12] 3392 	clr	a
      0030E7 F0               [24] 3393 	movx	@dptr,a
      0030E8 A3               [24] 3394 	inc	dptr
      0030E9 F0               [24] 3395 	movx	@dptr,a
                                   3396 ;	src/main.c:383: static_buffers[i].alphabet_chars = 0; 
      0030EA 8C 82            [24] 3397 	mov	dpl,r4
      0030EC 8D 83            [24] 3398 	mov	dph,r5
      0030EE A3               [24] 3399 	inc	dptr
      0030EF A3               [24] 3400 	inc	dptr
      0030F0 F0               [24] 3401 	movx	@dptr,a
      0030F1 A3               [24] 3402 	inc	dptr
      0030F2 F0               [24] 3403 	movx	@dptr,a
                                   3404 ;	src/main.c:392: curr->alphabet_chars = 0; 
      0030F3 D0 07            [24] 3405 	pop	ar7
      0030F5 D0 06            [24] 3406 	pop	ar6
                                   3407 ;	src/main.c:383: static_buffers[i].alphabet_chars = 0; 
      0030F7                       3408 00108$:
                                   3409 ;	src/main.c:377: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      0030F7 0E               [12] 3410 	inc	r6
      0030F8 BE 00 01         [24] 3411 	cjne	r6,#0x00,00130$
      0030FB 0F               [12] 3412 	inc	r7
      0030FC                       3413 00130$:
      0030FC 02 30 60         [24] 3414 	ljmp	00107$
      0030FF                       3415 00103$:
                                   3416 ;	src/main.c:387: buffer_t *curr = dynamic_buffers_list.head;
      0030FF 90 20 BA         [24] 3417 	mov	dptr,#_dynamic_buffers_list
      003102 E0               [24] 3418 	movx	a,@dptr
      003103 FD               [12] 3419 	mov	r5,a
      003104 A3               [24] 3420 	inc	dptr
      003105 E0               [24] 3421 	movx	a,@dptr
      003106 FE               [12] 3422 	mov	r6,a
      003107 A3               [24] 3423 	inc	dptr
      003108 E0               [24] 3424 	movx	a,@dptr
      003109 FF               [12] 3425 	mov	r7,a
                                   3426 ;	src/main.c:388: if (curr != NULL)
      00310A ED               [12] 3427 	mov	a,r5
      00310B 4E               [12] 3428 	orl	a,r6
      00310C 70 01            [24] 3429 	jnz	00131$
      00310E 22               [24] 3430 	ret
      00310F                       3431 00131$:
                                   3432 ;	src/main.c:390: memset(curr->buffer, 0x00, curr->size);
      00310F 8D 82            [24] 3433 	mov	dpl,r5
      003111 8E 83            [24] 3434 	mov	dph,r6
      003113 8F F0            [24] 3435 	mov	b,r7
      003115 12 4A 1C         [24] 3436 	lcall	__gptrget
      003118 FB               [12] 3437 	mov	r3,a
      003119 A3               [24] 3438 	inc	dptr
      00311A 12 4A 1C         [24] 3439 	lcall	__gptrget
      00311D FC               [12] 3440 	mov	r4,a
      00311E 8B 4F            [24] 3441 	mov	_percent_command_handler_sloc0_1_0,r3
      003120 8C 50            [24] 3442 	mov	(_percent_command_handler_sloc0_1_0 + 1),r4
      003122 75 51 00         [24] 3443 	mov	(_percent_command_handler_sloc0_1_0 + 2),#0x00
      003125 74 04            [12] 3444 	mov	a,#0x04
      003127 2D               [12] 3445 	add	a,r5
      003128 F8               [12] 3446 	mov	r0,a
      003129 E4               [12] 3447 	clr	a
      00312A 3E               [12] 3448 	addc	a,r6
      00312B F9               [12] 3449 	mov	r1,a
      00312C 8F 04            [24] 3450 	mov	ar4,r7
      00312E 88 82            [24] 3451 	mov	dpl,r0
      003130 89 83            [24] 3452 	mov	dph,r1
      003132 8C F0            [24] 3453 	mov	b,r4
      003134 12 4A 1C         [24] 3454 	lcall	__gptrget
      003137 F8               [12] 3455 	mov	r0,a
      003138 A3               [24] 3456 	inc	dptr
      003139 12 4A 1C         [24] 3457 	lcall	__gptrget
      00313C F9               [12] 3458 	mov	r1,a
      00313D 90 20 6F         [24] 3459 	mov	dptr,#_memset_PARM_2
      003140 E4               [12] 3460 	clr	a
      003141 F0               [24] 3461 	movx	@dptr,a
      003142 90 20 70         [24] 3462 	mov	dptr,#_memset_PARM_3
      003145 E8               [12] 3463 	mov	a,r0
      003146 F0               [24] 3464 	movx	@dptr,a
      003147 E9               [12] 3465 	mov	a,r1
      003148 A3               [24] 3466 	inc	dptr
      003149 F0               [24] 3467 	movx	@dptr,a
      00314A 85 4F 82         [24] 3468 	mov	dpl,_percent_command_handler_sloc0_1_0
      00314D 85 50 83         [24] 3469 	mov	dph,(_percent_command_handler_sloc0_1_0 + 1)
      003150 85 51 F0         [24] 3470 	mov	b,(_percent_command_handler_sloc0_1_0 + 2)
      003153 C0 07            [24] 3471 	push	ar7
      003155 C0 06            [24] 3472 	push	ar6
      003157 C0 05            [24] 3473 	push	ar5
      003159 12 3C 76         [24] 3474 	lcall	_memset
      00315C D0 05            [24] 3475 	pop	ar5
      00315E D0 06            [24] 3476 	pop	ar6
      003160 D0 07            [24] 3477 	pop	ar7
                                   3478 ;	src/main.c:391: curr->curr_available_char = 0;
      003162 74 06            [12] 3479 	mov	a,#0x06
      003164 2D               [12] 3480 	add	a,r5
      003165 FA               [12] 3481 	mov	r2,a
      003166 E4               [12] 3482 	clr	a
      003167 3E               [12] 3483 	addc	a,r6
      003168 FB               [12] 3484 	mov	r3,a
      003169 8F 04            [24] 3485 	mov	ar4,r7
      00316B 8A 82            [24] 3486 	mov	dpl,r2
      00316D 8B 83            [24] 3487 	mov	dph,r3
      00316F 8C F0            [24] 3488 	mov	b,r4
      003171 E4               [12] 3489 	clr	a
      003172 12 3D C2         [24] 3490 	lcall	__gptrput
      003175 A3               [24] 3491 	inc	dptr
      003176 12 3D C2         [24] 3492 	lcall	__gptrput
                                   3493 ;	src/main.c:392: curr->alphabet_chars = 0; 
      003179 74 02            [12] 3494 	mov	a,#0x02
      00317B 2D               [12] 3495 	add	a,r5
      00317C FD               [12] 3496 	mov	r5,a
      00317D E4               [12] 3497 	clr	a
      00317E 3E               [12] 3498 	addc	a,r6
      00317F FE               [12] 3499 	mov	r6,a
      003180 8D 82            [24] 3500 	mov	dpl,r5
      003182 8E 83            [24] 3501 	mov	dph,r6
      003184 8F F0            [24] 3502 	mov	b,r7
      003186 E4               [12] 3503 	clr	a
      003187 12 3D C2         [24] 3504 	lcall	__gptrput
      00318A A3               [24] 3505 	inc	dptr
                                   3506 ;	src/main.c:394: }
      00318B 02 3D C2         [24] 3507 	ljmp	__gptrput
                                   3508 ;------------------------------------------------------------
                                   3509 ;Allocation info for local variables in function 'dollar_sign_command_handler'
                                   3510 ;------------------------------------------------------------
                                   3511 ;sloc0                     Allocated with name '_dollar_sign_command_handler_sloc0_1_0'
                                   3512 ;buffer_3                  Allocated with name '_dollar_sign_command_handler_buffer_3_65537_156'
                                   3513 ;------------------------------------------------------------
                                   3514 ;	src/main.c:396: void dollar_sign_command_handler()
                                   3515 ;	-----------------------------------------
                                   3516 ;	 function dollar_sign_command_handler
                                   3517 ;	-----------------------------------------
      00318E                       3518 _dollar_sign_command_handler:
                                   3519 ;	src/main.c:398: P1_0 = ON;
                                   3520 ;	assignBit
      00318E D2 90            [12] 3521 	setb	_P1_0
                                   3522 ;	src/main.c:399: if (dynamic_buffers_list.head == NULL
      003190 90 20 BA         [24] 3523 	mov	dptr,#_dynamic_buffers_list
      003193 E0               [24] 3524 	movx	a,@dptr
      003194 FD               [12] 3525 	mov	r5,a
      003195 A3               [24] 3526 	inc	dptr
      003196 E0               [24] 3527 	movx	a,@dptr
      003197 FE               [12] 3528 	mov	r6,a
      003198 A3               [24] 3529 	inc	dptr
      003199 E0               [24] 3530 	movx	a,@dptr
      00319A FF               [12] 3531 	mov	r7,a
      00319B ED               [12] 3532 	mov	a,r5
      00319C 4E               [12] 3533 	orl	a,r6
      00319D 60 1F            [24] 3534 	jz	00101$
                                   3535 ;	src/main.c:400: || dynamic_buffers_list.head->next == NULL) 
      00319F 74 08            [12] 3536 	mov	a,#0x08
      0031A1 2D               [12] 3537 	add	a,r5
      0031A2 FD               [12] 3538 	mov	r5,a
      0031A3 E4               [12] 3539 	clr	a
      0031A4 3E               [12] 3540 	addc	a,r6
      0031A5 FE               [12] 3541 	mov	r6,a
      0031A6 8D 82            [24] 3542 	mov	dpl,r5
      0031A8 8E 83            [24] 3543 	mov	dph,r6
      0031AA 8F F0            [24] 3544 	mov	b,r7
      0031AC 12 4A 1C         [24] 3545 	lcall	__gptrget
      0031AF FD               [12] 3546 	mov	r5,a
      0031B0 A3               [24] 3547 	inc	dptr
      0031B1 12 4A 1C         [24] 3548 	lcall	__gptrget
      0031B4 FE               [12] 3549 	mov	r6,a
      0031B5 A3               [24] 3550 	inc	dptr
      0031B6 12 4A 1C         [24] 3551 	lcall	__gptrget
      0031B9 FF               [12] 3552 	mov	r7,a
      0031BA ED               [12] 3553 	mov	a,r5
      0031BB 4E               [12] 3554 	orl	a,r6
      0031BC 70 03            [24] 3555 	jnz	00102$
      0031BE                       3556 00101$:
                                   3557 ;	src/main.c:402: P1_0 = OFF;
                                   3558 ;	assignBit
      0031BE C2 90            [12] 3559 	clr	_P1_0
                                   3560 ;	src/main.c:403: return; 
      0031C0 22               [24] 3561 	ret
      0031C1                       3562 00102$:
                                   3563 ;	src/main.c:406: memcpy(buffer_3->buffer, static_buffers[0].buffer, static_buffers[0].size);
      0031C1 8D 82            [24] 3564 	mov	dpl,r5
      0031C3 8E 83            [24] 3565 	mov	dph,r6
      0031C5 8F F0            [24] 3566 	mov	b,r7
      0031C7 12 4A 1C         [24] 3567 	lcall	__gptrget
      0031CA FB               [12] 3568 	mov	r3,a
      0031CB A3               [24] 3569 	inc	dptr
      0031CC 12 4A 1C         [24] 3570 	lcall	__gptrget
      0031CF FC               [12] 3571 	mov	r4,a
      0031D0 8B 52            [24] 3572 	mov	_dollar_sign_command_handler_sloc0_1_0,r3
      0031D2 8C 53            [24] 3573 	mov	(_dollar_sign_command_handler_sloc0_1_0 + 1),r4
      0031D4 75 54 00         [24] 3574 	mov	(_dollar_sign_command_handler_sloc0_1_0 + 2),#0x00
      0031D7 90 00 01         [24] 3575 	mov	dptr,#_static_buffers
      0031DA E0               [24] 3576 	movx	a,@dptr
      0031DB F8               [12] 3577 	mov	r0,a
      0031DC A3               [24] 3578 	inc	dptr
      0031DD E0               [24] 3579 	movx	a,@dptr
      0031DE F9               [12] 3580 	mov	r1,a
      0031DF 7C 00            [12] 3581 	mov	r4,#0x00
      0031E1 90 00 05         [24] 3582 	mov	dptr,#(_static_buffers + 0x0004)
      0031E4 E0               [24] 3583 	movx	a,@dptr
      0031E5 FA               [12] 3584 	mov	r2,a
      0031E6 A3               [24] 3585 	inc	dptr
      0031E7 E0               [24] 3586 	movx	a,@dptr
      0031E8 FB               [12] 3587 	mov	r3,a
      0031E9 90 20 67         [24] 3588 	mov	dptr,#___memcpy_PARM_2
      0031EC E8               [12] 3589 	mov	a,r0
      0031ED F0               [24] 3590 	movx	@dptr,a
      0031EE E9               [12] 3591 	mov	a,r1
      0031EF A3               [24] 3592 	inc	dptr
      0031F0 F0               [24] 3593 	movx	@dptr,a
      0031F1 EC               [12] 3594 	mov	a,r4
      0031F2 A3               [24] 3595 	inc	dptr
      0031F3 F0               [24] 3596 	movx	@dptr,a
      0031F4 90 20 6A         [24] 3597 	mov	dptr,#___memcpy_PARM_3
      0031F7 EA               [12] 3598 	mov	a,r2
      0031F8 F0               [24] 3599 	movx	@dptr,a
      0031F9 EB               [12] 3600 	mov	a,r3
      0031FA A3               [24] 3601 	inc	dptr
      0031FB F0               [24] 3602 	movx	@dptr,a
      0031FC 85 52 82         [24] 3603 	mov	dpl,_dollar_sign_command_handler_sloc0_1_0
      0031FF 85 53 83         [24] 3604 	mov	dph,(_dollar_sign_command_handler_sloc0_1_0 + 1)
      003202 85 54 F0         [24] 3605 	mov	b,(_dollar_sign_command_handler_sloc0_1_0 + 2)
      003205 C0 07            [24] 3606 	push	ar7
      003207 C0 06            [24] 3607 	push	ar6
      003209 C0 05            [24] 3608 	push	ar5
      00320B 12 3C 02         [24] 3609 	lcall	___memcpy
      00320E D0 05            [24] 3610 	pop	ar5
      003210 D0 06            [24] 3611 	pop	ar6
      003212 D0 07            [24] 3612 	pop	ar7
                                   3613 ;	src/main.c:407: buffer_3->alphabet_chars = static_buffers[0].alphabet_chars;
      003214 74 02            [12] 3614 	mov	a,#0x02
      003216 2D               [12] 3615 	add	a,r5
      003217 FA               [12] 3616 	mov	r2,a
      003218 E4               [12] 3617 	clr	a
      003219 3E               [12] 3618 	addc	a,r6
      00321A FB               [12] 3619 	mov	r3,a
      00321B 8F 04            [24] 3620 	mov	ar4,r7
      00321D 90 00 03         [24] 3621 	mov	dptr,#(_static_buffers + 0x0002)
      003220 E0               [24] 3622 	movx	a,@dptr
      003221 F8               [12] 3623 	mov	r0,a
      003222 A3               [24] 3624 	inc	dptr
      003223 E0               [24] 3625 	movx	a,@dptr
      003224 F9               [12] 3626 	mov	r1,a
      003225 8A 82            [24] 3627 	mov	dpl,r2
      003227 8B 83            [24] 3628 	mov	dph,r3
      003229 8C F0            [24] 3629 	mov	b,r4
      00322B E8               [12] 3630 	mov	a,r0
      00322C 12 3D C2         [24] 3631 	lcall	__gptrput
      00322F A3               [24] 3632 	inc	dptr
      003230 E9               [12] 3633 	mov	a,r1
      003231 12 3D C2         [24] 3634 	lcall	__gptrput
                                   3635 ;	src/main.c:408: buffer_3->curr_available_char = static_buffers[0].curr_available_char;
      003234 74 06            [12] 3636 	mov	a,#0x06
      003236 2D               [12] 3637 	add	a,r5
      003237 FD               [12] 3638 	mov	r5,a
      003238 E4               [12] 3639 	clr	a
      003239 3E               [12] 3640 	addc	a,r6
      00323A FE               [12] 3641 	mov	r6,a
      00323B 90 00 07         [24] 3642 	mov	dptr,#(_static_buffers + 0x0006)
      00323E E0               [24] 3643 	movx	a,@dptr
      00323F FB               [12] 3644 	mov	r3,a
      003240 A3               [24] 3645 	inc	dptr
      003241 E0               [24] 3646 	movx	a,@dptr
      003242 FC               [12] 3647 	mov	r4,a
      003243 8D 82            [24] 3648 	mov	dpl,r5
      003245 8E 83            [24] 3649 	mov	dph,r6
      003247 8F F0            [24] 3650 	mov	b,r7
      003249 EB               [12] 3651 	mov	a,r3
      00324A 12 3D C2         [24] 3652 	lcall	__gptrput
      00324D A3               [24] 3653 	inc	dptr
      00324E EC               [12] 3654 	mov	a,r4
      00324F 12 3D C2         [24] 3655 	lcall	__gptrput
                                   3656 ;	src/main.c:409: P1_0 = OFF; 
                                   3657 ;	assignBit
      003252 C2 90            [12] 3658 	clr	_P1_0
                                   3659 ;	src/main.c:410: }
      003254 22               [24] 3660 	ret
                                   3661 ;------------------------------------------------------------
                                   3662 ;Allocation info for local variables in function 'hashtag_command_handler'
                                   3663 ;------------------------------------------------------------
                                   3664 ;buffer_3                  Allocated with name '_hashtag_command_handler_buffer_3_65537_159'
                                   3665 ;i                         Allocated with name '_hashtag_command_handler_i_131073_160'
                                   3666 ;c                         Allocated with name '_hashtag_command_handler_c_196609_161'
                                   3667 ;------------------------------------------------------------
                                   3668 ;	src/main.c:412: void hashtag_command_handler()
                                   3669 ;	-----------------------------------------
                                   3670 ;	 function hashtag_command_handler
                                   3671 ;	-----------------------------------------
      003255                       3672 _hashtag_command_handler:
                                   3673 ;	src/main.c:414: P1_0 = ON;
                                   3674 ;	assignBit
      003255 D2 90            [12] 3675 	setb	_P1_0
                                   3676 ;	src/main.c:415: if (dynamic_buffers_list.head == NULL
      003257 90 20 BA         [24] 3677 	mov	dptr,#_dynamic_buffers_list
      00325A E0               [24] 3678 	movx	a,@dptr
      00325B FD               [12] 3679 	mov	r5,a
      00325C A3               [24] 3680 	inc	dptr
      00325D E0               [24] 3681 	movx	a,@dptr
      00325E FE               [12] 3682 	mov	r6,a
      00325F A3               [24] 3683 	inc	dptr
      003260 E0               [24] 3684 	movx	a,@dptr
      003261 FF               [12] 3685 	mov	r7,a
      003262 ED               [12] 3686 	mov	a,r5
      003263 4E               [12] 3687 	orl	a,r6
      003264 60 1F            [24] 3688 	jz	00101$
                                   3689 ;	src/main.c:416: || dynamic_buffers_list.head->next == NULL) 
      003266 74 08            [12] 3690 	mov	a,#0x08
      003268 2D               [12] 3691 	add	a,r5
      003269 FD               [12] 3692 	mov	r5,a
      00326A E4               [12] 3693 	clr	a
      00326B 3E               [12] 3694 	addc	a,r6
      00326C FE               [12] 3695 	mov	r6,a
      00326D 8D 82            [24] 3696 	mov	dpl,r5
      00326F 8E 83            [24] 3697 	mov	dph,r6
      003271 8F F0            [24] 3698 	mov	b,r7
      003273 12 4A 1C         [24] 3699 	lcall	__gptrget
      003276 FD               [12] 3700 	mov	r5,a
      003277 A3               [24] 3701 	inc	dptr
      003278 12 4A 1C         [24] 3702 	lcall	__gptrget
      00327B FE               [12] 3703 	mov	r6,a
      00327C A3               [24] 3704 	inc	dptr
      00327D 12 4A 1C         [24] 3705 	lcall	__gptrget
      003280 FF               [12] 3706 	mov	r7,a
      003281 ED               [12] 3707 	mov	a,r5
      003282 4E               [12] 3708 	orl	a,r6
      003283 70 03            [24] 3709 	jnz	00102$
      003285                       3710 00101$:
                                   3711 ;	src/main.c:418: P1_0 = OFF;
                                   3712 ;	assignBit
      003285 C2 90            [12] 3713 	clr	_P1_0
                                   3714 ;	src/main.c:419: return; 
      003287 22               [24] 3715 	ret
      003288                       3716 00102$:
                                   3717 ;	src/main.c:422: buffer_t *buffer_3 = dynamic_buffers_list.head->next;
      003288 8D 02            [24] 3718 	mov	ar2,r5
      00328A 8E 03            [24] 3719 	mov	ar3,r6
      00328C 8F 04            [24] 3720 	mov	ar4,r7
                                   3721 ;	src/main.c:423: for(size_t i = 0; i < buffer_3->curr_available_char; i++)
      00328E 74 06            [12] 3722 	mov	a,#0x06
      003290 2D               [12] 3723 	add	a,r5
      003291 FD               [12] 3724 	mov	r5,a
      003292 E4               [12] 3725 	clr	a
      003293 3E               [12] 3726 	addc	a,r6
      003294 FE               [12] 3727 	mov	r6,a
      003295 78 00            [12] 3728 	mov	r0,#0x00
      003297 79 00            [12] 3729 	mov	r1,#0x00
      003299                       3730 00109$:
      003299 C0 02            [24] 3731 	push	ar2
      00329B C0 03            [24] 3732 	push	ar3
      00329D C0 04            [24] 3733 	push	ar4
      00329F 8D 82            [24] 3734 	mov	dpl,r5
      0032A1 8E 83            [24] 3735 	mov	dph,r6
      0032A3 8F F0            [24] 3736 	mov	b,r7
      0032A5 12 4A 1C         [24] 3737 	lcall	__gptrget
      0032A8 FB               [12] 3738 	mov	r3,a
      0032A9 A3               [24] 3739 	inc	dptr
      0032AA 12 4A 1C         [24] 3740 	lcall	__gptrget
      0032AD FC               [12] 3741 	mov	r4,a
      0032AE C3               [12] 3742 	clr	c
      0032AF E8               [12] 3743 	mov	a,r0
      0032B0 9B               [12] 3744 	subb	a,r3
      0032B1 E9               [12] 3745 	mov	a,r1
      0032B2 9C               [12] 3746 	subb	a,r4
      0032B3 D0 04            [24] 3747 	pop	ar4
      0032B5 D0 03            [24] 3748 	pop	ar3
      0032B7 D0 02            [24] 3749 	pop	ar2
      0032B9 50 6B            [24] 3750 	jnc	00107$
                                   3751 ;	src/main.c:425: register char c = buffer_3->buffer[i];
      0032BB C0 05            [24] 3752 	push	ar5
      0032BD C0 06            [24] 3753 	push	ar6
      0032BF C0 07            [24] 3754 	push	ar7
      0032C1 8A 82            [24] 3755 	mov	dpl,r2
      0032C3 8B 83            [24] 3756 	mov	dph,r3
      0032C5 8C F0            [24] 3757 	mov	b,r4
      0032C7 12 4A 1C         [24] 3758 	lcall	__gptrget
      0032CA FE               [12] 3759 	mov	r6,a
      0032CB A3               [24] 3760 	inc	dptr
      0032CC 12 4A 1C         [24] 3761 	lcall	__gptrget
      0032CF FF               [12] 3762 	mov	r7,a
      0032D0 E8               [12] 3763 	mov	a,r0
      0032D1 2E               [12] 3764 	add	a,r6
      0032D2 F5 82            [12] 3765 	mov	dpl,a
      0032D4 E9               [12] 3766 	mov	a,r1
      0032D5 3F               [12] 3767 	addc	a,r7
      0032D6 F5 83            [12] 3768 	mov	dph,a
      0032D8 E0               [24] 3769 	movx	a,@dptr
      0032D9 F5 1B            [12] 3770 	mov	_hashtag_command_handler_c_196609_161,a
                                   3771 ;	src/main.c:426: if (c <= 'Z' || c >= 'A')
      0032DB C3               [12] 3772 	clr	c
      0032DC 74 5A            [12] 3773 	mov	a,#0x5a
      0032DE 95 1B            [12] 3774 	subb	a,_hashtag_command_handler_c_196609_161
      0032E0 D0 07            [24] 3775 	pop	ar7
      0032E2 D0 06            [24] 3776 	pop	ar6
      0032E4 D0 05            [24] 3777 	pop	ar5
      0032E6 50 06            [24] 3778 	jnc	00104$
      0032E8 74 BF            [12] 3779 	mov	a,#0x100 - 0x41
      0032EA 25 1B            [12] 3780 	add	a,_hashtag_command_handler_c_196609_161
      0032EC 50 30            [24] 3781 	jnc	00110$
      0032EE                       3782 00104$:
                                   3783 ;	src/main.c:428: buffer_3->buffer[i] |= LOWER_CASE_MASK;
      0032EE C0 05            [24] 3784 	push	ar5
      0032F0 C0 06            [24] 3785 	push	ar6
      0032F2 C0 07            [24] 3786 	push	ar7
      0032F4 8A 82            [24] 3787 	mov	dpl,r2
      0032F6 8B 83            [24] 3788 	mov	dph,r3
      0032F8 8C F0            [24] 3789 	mov	b,r4
      0032FA 12 4A 1C         [24] 3790 	lcall	__gptrget
      0032FD FE               [12] 3791 	mov	r6,a
      0032FE A3               [24] 3792 	inc	dptr
      0032FF 12 4A 1C         [24] 3793 	lcall	__gptrget
      003302 FF               [12] 3794 	mov	r7,a
      003303 E8               [12] 3795 	mov	a,r0
      003304 2E               [12] 3796 	add	a,r6
      003305 FE               [12] 3797 	mov	r6,a
      003306 E9               [12] 3798 	mov	a,r1
      003307 3F               [12] 3799 	addc	a,r7
      003308 FF               [12] 3800 	mov	r7,a
      003309 8E 82            [24] 3801 	mov	dpl,r6
      00330B 8F 83            [24] 3802 	mov	dph,r7
      00330D E0               [24] 3803 	movx	a,@dptr
      00330E FD               [12] 3804 	mov	r5,a
      00330F 43 05 20         [24] 3805 	orl	ar5,#0x20
      003312 8E 82            [24] 3806 	mov	dpl,r6
      003314 8F 83            [24] 3807 	mov	dph,r7
      003316 ED               [12] 3808 	mov	a,r5
      003317 F0               [24] 3809 	movx	@dptr,a
                                   3810 ;	src/main.c:431: P1_0 = OFF;
      003318 D0 07            [24] 3811 	pop	ar7
      00331A D0 06            [24] 3812 	pop	ar6
      00331C D0 05            [24] 3813 	pop	ar5
                                   3814 ;	src/main.c:428: buffer_3->buffer[i] |= LOWER_CASE_MASK;
      00331E                       3815 00110$:
                                   3816 ;	src/main.c:423: for(size_t i = 0; i < buffer_3->curr_available_char; i++)
      00331E 08               [12] 3817 	inc	r0
      00331F B8 00 01         [24] 3818 	cjne	r0,#0x00,00135$
      003322 09               [12] 3819 	inc	r1
      003323                       3820 00135$:
      003323 02 32 99         [24] 3821 	ljmp	00109$
      003326                       3822 00107$:
                                   3823 ;	src/main.c:431: P1_0 = OFF;
                                   3824 ;	assignBit
      003326 C2 90            [12] 3825 	clr	_P1_0
                                   3826 ;	src/main.c:432: }
      003328 22               [24] 3827 	ret
                                   3828 ;------------------------------------------------------------
                                   3829 ;Allocation info for local variables in function 'plus_command_handler'
                                   3830 ;------------------------------------------------------------
                                   3831 ;size                      Allocated with name '_plus_command_handler_size_65536_163'
                                   3832 ;new_buffer                Allocated with name '_plus_command_handler_new_buffer_65537_165'
                                   3833 ;------------------------------------------------------------
                                   3834 ;	src/main.c:435: void plus_command_handler() 
                                   3835 ;	-----------------------------------------
                                   3836 ;	 function plus_command_handler
                                   3837 ;	-----------------------------------------
      003329                       3838 _plus_command_handler:
                                   3839 ;	src/main.c:438: while (true) {
      003329                       3840 00105$:
                                   3841 ;	src/main.c:439: printf("\r\nPlease enter a size for the new buffer, [200,600]: ");
      003329 74 BE            [12] 3842 	mov	a,#___str_22
      00332B C0 E0            [24] 3843 	push	acc
      00332D 74 4C            [12] 3844 	mov	a,#(___str_22 >> 8)
      00332F C0 E0            [24] 3845 	push	acc
      003331 74 80            [12] 3846 	mov	a,#0x80
      003333 C0 E0            [24] 3847 	push	acc
      003335 12 3F F0         [24] 3848 	lcall	_printf
      003338 15 81            [12] 3849 	dec	sp
      00333A 15 81            [12] 3850 	dec	sp
      00333C 15 81            [12] 3851 	dec	sp
                                   3852 ;	src/main.c:440: get_string();
      00333E 12 35 90         [24] 3853 	lcall	_get_string
                                   3854 ;	src/main.c:441: size = atoi(get_input_buffer());
      003341 12 35 89         [24] 3855 	lcall	_get_input_buffer
      003344 12 3C 9E         [24] 3856 	lcall	_atoi
      003347 AE 82            [24] 3857 	mov	r6,dpl
      003349 AF 83            [24] 3858 	mov	r7,dph
                                   3859 ;	src/main.c:442: if (size <= MAX_USER_DETERMINED_BUFFER_SZ && size >= MIN_USER_DETERMINED_BUFFER_SZ) break;
      00334B C3               [12] 3860 	clr	c
      00334C 74 58            [12] 3861 	mov	a,#0x58
      00334E 9E               [12] 3862 	subb	a,r6
      00334F 74 82            [12] 3863 	mov	a,#(0x02 ^ 0x80)
      003351 8F F0            [24] 3864 	mov	b,r7
      003353 63 F0 80         [24] 3865 	xrl	b,#0x80
      003356 95 F0            [12] 3866 	subb	a,b
      003358 40 0A            [24] 3867 	jc	00102$
      00335A EE               [12] 3868 	mov	a,r6
      00335B 94 C8            [12] 3869 	subb	a,#0xc8
      00335D EF               [12] 3870 	mov	a,r7
      00335E 64 80            [12] 3871 	xrl	a,#0x80
      003360 94 80            [12] 3872 	subb	a,#0x80
      003362 50 17            [24] 3873 	jnc	00106$
      003364                       3874 00102$:
                                   3875 ;	src/main.c:443: printf("\r\nBuffer size invalid!! Please try again");
      003364 74 F4            [12] 3876 	mov	a,#___str_23
      003366 C0 E0            [24] 3877 	push	acc
      003368 74 4C            [12] 3878 	mov	a,#(___str_23 >> 8)
      00336A C0 E0            [24] 3879 	push	acc
      00336C 74 80            [12] 3880 	mov	a,#0x80
      00336E C0 E0            [24] 3881 	push	acc
      003370 12 3F F0         [24] 3882 	lcall	_printf
      003373 15 81            [12] 3883 	dec	sp
      003375 15 81            [12] 3884 	dec	sp
      003377 15 81            [12] 3885 	dec	sp
      003379 80 AE            [24] 3886 	sjmp	00105$
      00337B                       3887 00106$:
                                   3888 ;	src/main.c:446: buffer_t *new_buffer = alloc_new_buffer((size_t) size);
      00337B 8E 82            [24] 3889 	mov	dpl,r6
      00337D 8F 83            [24] 3890 	mov	dph,r7
      00337F 12 21 69         [24] 3891 	lcall	_alloc_new_buffer
      003382 AD 82            [24] 3892 	mov	r5,dpl
      003384 AE 83            [24] 3893 	mov	r6,dph
      003386 AF F0            [24] 3894 	mov	r7,b
                                   3895 ;	src/main.c:448: if (new_buffer == NULL)
      003388 ED               [12] 3896 	mov	a,r5
      003389 4E               [12] 3897 	orl	a,r6
      00338A 70 16            [24] 3898 	jnz	00108$
                                   3899 ;	src/main.c:450: printf("\r\n Allocation failed; able to allocate header but not buffer");
      00338C 74 1D            [12] 3900 	mov	a,#___str_24
      00338E C0 E0            [24] 3901 	push	acc
      003390 74 4D            [12] 3902 	mov	a,#(___str_24 >> 8)
      003392 C0 E0            [24] 3903 	push	acc
      003394 74 80            [12] 3904 	mov	a,#0x80
      003396 C0 E0            [24] 3905 	push	acc
      003398 12 3F F0         [24] 3906 	lcall	_printf
      00339B 15 81            [12] 3907 	dec	sp
      00339D 15 81            [12] 3908 	dec	sp
      00339F 15 81            [12] 3909 	dec	sp
                                   3910 ;	src/main.c:451: return;
      0033A1 22               [24] 3911 	ret
      0033A2                       3912 00108$:
                                   3913 ;	src/main.c:454: append_to_buffer_list(&dynamic_buffers_list, new_buffer);
      0033A2 90 20 41         [24] 3914 	mov	dptr,#_append_to_buffer_list_PARM_2
      0033A5 ED               [12] 3915 	mov	a,r5
      0033A6 F0               [24] 3916 	movx	@dptr,a
      0033A7 EE               [12] 3917 	mov	a,r6
      0033A8 A3               [24] 3918 	inc	dptr
      0033A9 F0               [24] 3919 	movx	@dptr,a
      0033AA EF               [12] 3920 	mov	a,r7
      0033AB A3               [24] 3921 	inc	dptr
      0033AC F0               [24] 3922 	movx	@dptr,a
      0033AD 90 20 BA         [24] 3923 	mov	dptr,#_dynamic_buffers_list
      0033B0 75 F0 00         [24] 3924 	mov	b,#0x00
      0033B3 12 36 D5         [24] 3925 	lcall	_append_to_buffer_list
                                   3926 ;	src/main.c:456: printf("\r\n Allocation successful!! New buffer added");
      0033B6 74 5A            [12] 3927 	mov	a,#___str_25
      0033B8 C0 E0            [24] 3928 	push	acc
      0033BA 74 4D            [12] 3929 	mov	a,#(___str_25 >> 8)
      0033BC C0 E0            [24] 3930 	push	acc
      0033BE 74 80            [12] 3931 	mov	a,#0x80
      0033C0 C0 E0            [24] 3932 	push	acc
      0033C2 12 3F F0         [24] 3933 	lcall	_printf
      0033C5 15 81            [12] 3934 	dec	sp
      0033C7 15 81            [12] 3935 	dec	sp
      0033C9 15 81            [12] 3936 	dec	sp
                                   3937 ;	src/main.c:458: }
      0033CB 22               [24] 3938 	ret
                                   3939 ;------------------------------------------------------------
                                   3940 ;Allocation info for local variables in function 'minus_command_handler'
                                   3941 ;------------------------------------------------------------
                                   3942 ;buffer_num                Allocated with name '_minus_command_handler_buffer_num_65537_168'
                                   3943 ;freed                     Allocated with name '_minus_command_handler_freed_131073_171'
                                   3944 ;------------------------------------------------------------
                                   3945 ;	src/main.c:460: void minus_command_handler() 
                                   3946 ;	-----------------------------------------
                                   3947 ;	 function minus_command_handler
                                   3948 ;	-----------------------------------------
      0033CC                       3949 _minus_command_handler:
                                   3950 ;	src/main.c:462: printf("\r\nPlease enter the number of the buffer you would like to free: ");
      0033CC 74 86            [12] 3951 	mov	a,#___str_26
      0033CE C0 E0            [24] 3952 	push	acc
      0033D0 74 4D            [12] 3953 	mov	a,#(___str_26 >> 8)
      0033D2 C0 E0            [24] 3954 	push	acc
      0033D4 74 80            [12] 3955 	mov	a,#0x80
      0033D6 C0 E0            [24] 3956 	push	acc
      0033D8 12 3F F0         [24] 3957 	lcall	_printf
      0033DB 15 81            [12] 3958 	dec	sp
      0033DD 15 81            [12] 3959 	dec	sp
      0033DF 15 81            [12] 3960 	dec	sp
                                   3961 ;	src/main.c:463: get_string(); 
      0033E1 12 35 90         [24] 3962 	lcall	_get_string
                                   3963 ;	src/main.c:464: int buffer_num = atoi(get_input_buffer()); 
      0033E4 12 35 89         [24] 3964 	lcall	_get_input_buffer
      0033E7 12 3C 9E         [24] 3965 	lcall	_atoi
      0033EA AE 82            [24] 3966 	mov	r6,dpl
                                   3967 ;	src/main.c:465: if (buffer_num < 0)
      0033EC E5 83            [12] 3968 	mov	a,dph
      0033EE FF               [12] 3969 	mov	r7,a
      0033EF 30 E7 16         [24] 3970 	jnb	acc.7,00108$
                                   3971 ;	src/main.c:467: printf("\r\n Invalid buffer number, negatives not valid");
      0033F2 74 C7            [12] 3972 	mov	a,#___str_27
      0033F4 C0 E0            [24] 3973 	push	acc
      0033F6 74 4D            [12] 3974 	mov	a,#(___str_27 >> 8)
      0033F8 C0 E0            [24] 3975 	push	acc
      0033FA 74 80            [12] 3976 	mov	a,#0x80
      0033FC C0 E0            [24] 3977 	push	acc
      0033FE 12 3F F0         [24] 3978 	lcall	_printf
      003401 15 81            [12] 3979 	dec	sp
      003403 15 81            [12] 3980 	dec	sp
      003405 15 81            [12] 3981 	dec	sp
                                   3982 ;	src/main.c:468: return;
      003407 22               [24] 3983 	ret
      003408                       3984 00108$:
                                   3985 ;	src/main.c:470: else if (buffer_num <= 1) 
      003408 C3               [12] 3986 	clr	c
      003409 74 01            [12] 3987 	mov	a,#0x01
      00340B 9E               [12] 3988 	subb	a,r6
      00340C 74 80            [12] 3989 	mov	a,#(0x00 ^ 0x80)
      00340E 8F F0            [24] 3990 	mov	b,r7
      003410 63 F0 80         [24] 3991 	xrl	b,#0x80
      003413 95 F0            [12] 3992 	subb	a,b
      003415 40 16            [24] 3993 	jc	00105$
                                   3994 ;	src/main.c:472: printf("\r\n Invalid buffer number, buffers 0 & 1 are protected");
      003417 74 F5            [12] 3995 	mov	a,#___str_28
      003419 C0 E0            [24] 3996 	push	acc
      00341B 74 4D            [12] 3997 	mov	a,#(___str_28 >> 8)
      00341D C0 E0            [24] 3998 	push	acc
      00341F 74 80            [12] 3999 	mov	a,#0x80
      003421 C0 E0            [24] 4000 	push	acc
      003423 12 3F F0         [24] 4001 	lcall	_printf
      003426 15 81            [12] 4002 	dec	sp
      003428 15 81            [12] 4003 	dec	sp
      00342A 15 81            [12] 4004 	dec	sp
                                   4005 ;	src/main.c:473: return; 
      00342C 22               [24] 4006 	ret
      00342D                       4007 00105$:
                                   4008 ;	src/main.c:477: bool freed = remove_from_buffer_list(&dynamic_buffers_list, (size_t)(buffer_num-2));
      00342D EE               [12] 4009 	mov	a,r6
      00342E 24 FE            [12] 4010 	add	a,#0xfe
      003430 FE               [12] 4011 	mov	r6,a
      003431 EF               [12] 4012 	mov	a,r7
      003432 34 FF            [12] 4013 	addc	a,#0xff
      003434 FF               [12] 4014 	mov	r7,a
      003435 90 20 4A         [24] 4015 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003438 EE               [12] 4016 	mov	a,r6
      003439 F0               [24] 4017 	movx	@dptr,a
      00343A EF               [12] 4018 	mov	a,r7
      00343B A3               [24] 4019 	inc	dptr
      00343C F0               [24] 4020 	movx	@dptr,a
      00343D 90 20 BA         [24] 4021 	mov	dptr,#_dynamic_buffers_list
      003440 75 F0 00         [24] 4022 	mov	b,#0x00
      003443 12 37 BB         [24] 4023 	lcall	_remove_from_buffer_list
      003446 E5 82            [12] 4024 	mov	a,dpl
                                   4025 ;	src/main.c:478: if (freed)
      003448 60 16            [24] 4026 	jz	00102$
                                   4027 ;	src/main.c:480: printf("\r\n Successfully removed buffer");
      00344A 74 2B            [12] 4028 	mov	a,#___str_29
      00344C C0 E0            [24] 4029 	push	acc
      00344E 74 4E            [12] 4030 	mov	a,#(___str_29 >> 8)
      003450 C0 E0            [24] 4031 	push	acc
      003452 74 80            [12] 4032 	mov	a,#0x80
      003454 C0 E0            [24] 4033 	push	acc
      003456 12 3F F0         [24] 4034 	lcall	_printf
      003459 15 81            [12] 4035 	dec	sp
      00345B 15 81            [12] 4036 	dec	sp
      00345D 15 81            [12] 4037 	dec	sp
      00345F 22               [24] 4038 	ret
      003460                       4039 00102$:
                                   4040 ;	src/main.c:484: printf("\r\n Failed to remove buffer, idx too big");
      003460 74 4A            [12] 4041 	mov	a,#___str_30
      003462 C0 E0            [24] 4042 	push	acc
      003464 74 4E            [12] 4043 	mov	a,#(___str_30 >> 8)
      003466 C0 E0            [24] 4044 	push	acc
      003468 74 80            [12] 4045 	mov	a,#0x80
      00346A C0 E0            [24] 4046 	push	acc
      00346C 12 3F F0         [24] 4047 	lcall	_printf
      00346F 15 81            [12] 4048 	dec	sp
      003471 15 81            [12] 4049 	dec	sp
      003473 15 81            [12] 4050 	dec	sp
                                   4051 ;	src/main.c:488: }
      003475 22               [24] 4052 	ret
                                   4053 ;------------------------------------------------------------
                                   4054 ;Allocation info for local variables in function 'main'
                                   4055 ;------------------------------------------------------------
                                   4056 ;c                         Allocated with name '_main_c_65537_175'
                                   4057 ;received_char             Allocated with name '_main_received_char_196610_178'
                                   4058 ;------------------------------------------------------------
                                   4059 ;	src/main.c:490: void main()
                                   4060 ;	-----------------------------------------
                                   4061 ;	 function main
                                   4062 ;	-----------------------------------------
      003476                       4063 _main:
                                   4064 ;	src/main.c:492: initialize_buffers();
      003476 12 22 06         [24] 4065 	lcall	_initialize_buffers
                                   4066 ;	src/main.c:493: unsigned char c = 0;
      003479 7F 00            [12] 4067 	mov	r7,#0x00
      00347B                       4068 00114$:
                                   4069 ;	src/main.c:497: DEBUG_PORT(MAIN_COUNTER_ADDRESS, c++);
      00347B 90 20 5B         [24] 4070 	mov	dptr,#_dataout_PARM_2
      00347E EF               [12] 4071 	mov	a,r7
      00347F F0               [24] 4072 	movx	@dptr,a
      003480 0F               [12] 4073 	inc	r7
      003481 90 FF FF         [24] 4074 	mov	dptr,#0xffff
      003484 C0 07            [24] 4075 	push	ar7
      003486 12 3A 8E         [24] 4076 	lcall	_dataout
                                   4077 ;	src/main.c:498: printf("\r\nEnter a char: ");
      003489 74 72            [12] 4078 	mov	a,#___str_31
      00348B C0 E0            [24] 4079 	push	acc
      00348D 74 4E            [12] 4080 	mov	a,#(___str_31 >> 8)
      00348F C0 E0            [24] 4081 	push	acc
      003491 74 80            [12] 4082 	mov	a,#0x80
      003493 C0 E0            [24] 4083 	push	acc
      003495 12 3F F0         [24] 4084 	lcall	_printf
      003498 15 81            [12] 4085 	dec	sp
      00349A 15 81            [12] 4086 	dec	sp
      00349C 15 81            [12] 4087 	dec	sp
                                   4088 ;	src/main.c:499: char received_char = get_next_input_char();
      00349E 12 36 9E         [24] 4089 	lcall	_get_next_input_char
                                   4090 ;	src/main.c:500: if (is_alphabet_char(received_char))
      0034A1 AE 82            [24] 4091 	mov  r6,dpl
      0034A3 C0 06            [24] 4092 	push	ar6
      0034A5 12 20 94         [24] 4093 	lcall	_is_alphabet_char
      0034A8 E5 82            [12] 4094 	mov	a,dpl
      0034AA D0 06            [24] 4095 	pop	ar6
      0034AC D0 07            [24] 4096 	pop	ar7
      0034AE 60 18            [24] 4097 	jz	00102$
                                   4098 ;	src/main.c:502: store_in_buffer(&static_buffers[0], received_char);
      0034B0 90 00 24         [24] 4099 	mov	dptr,#_store_in_buffer_PARM_2
      0034B3 EE               [12] 4100 	mov	a,r6
      0034B4 F0               [24] 4101 	movx	@dptr,a
      0034B5 90 00 01         [24] 4102 	mov	dptr,#_static_buffers
      0034B8 75 F0 00         [24] 4103 	mov	b,#0x00
      0034BB C0 07            [24] 4104 	push	ar7
      0034BD C0 06            [24] 4105 	push	ar6
      0034BF 12 28 1E         [24] 4106 	lcall	_store_in_buffer
      0034C2 D0 06            [24] 4107 	pop	ar6
      0034C4 D0 07            [24] 4108 	pop	ar7
      0034C6 80 16            [24] 4109 	sjmp	00103$
      0034C8                       4110 00102$:
                                   4111 ;	src/main.c:506: store_in_buffer(&static_buffers[1], received_char);
      0034C8 90 00 24         [24] 4112 	mov	dptr,#_store_in_buffer_PARM_2
      0034CB EE               [12] 4113 	mov	a,r6
      0034CC F0               [24] 4114 	movx	@dptr,a
      0034CD 90 00 0C         [24] 4115 	mov	dptr,#(_static_buffers + 0x000b)
      0034D0 75 F0 00         [24] 4116 	mov	b,#0x00
      0034D3 C0 07            [24] 4117 	push	ar7
      0034D5 C0 06            [24] 4118 	push	ar6
      0034D7 12 28 1E         [24] 4119 	lcall	_store_in_buffer
      0034DA D0 06            [24] 4120 	pop	ar6
      0034DC D0 07            [24] 4121 	pop	ar7
      0034DE                       4122 00103$:
                                   4123 ;	src/main.c:509: switch(received_char)
      0034DE BE 23 02         [24] 4124 	cjne	r6,#0x23,00159$
      0034E1 80 5B            [24] 4125 	sjmp	00109$
      0034E3                       4126 00159$:
      0034E3 BE 24 02         [24] 4127 	cjne	r6,#0x24,00160$
      0034E6 80 4C            [24] 4128 	sjmp	00108$
      0034E8                       4129 00160$:
      0034E8 BE 25 02         [24] 4130 	cjne	r6,#0x25,00161$
      0034EB 80 30            [24] 4131 	sjmp	00106$
      0034ED                       4132 00161$:
      0034ED BE 2B 02         [24] 4133 	cjne	r6,#0x2b,00162$
      0034F0 80 56            [24] 4134 	sjmp	00110$
      0034F2                       4135 00162$:
      0034F2 BE 2D 02         [24] 4136 	cjne	r6,#0x2d,00163$
      0034F5 80 5B            [24] 4137 	sjmp	00111$
      0034F7                       4138 00163$:
      0034F7 BE 3D 02         [24] 4139 	cjne	r6,#0x3d,00164$
      0034FA 80 17            [24] 4140 	sjmp	00105$
      0034FC                       4141 00164$:
      0034FC BE 3F 02         [24] 4142 	cjne	r6,#0x3f,00165$
      0034FF 80 08            [24] 4143 	sjmp	00104$
      003501                       4144 00165$:
      003501 BE 40 02         [24] 4145 	cjne	r6,#0x40,00166$
      003504 80 21            [24] 4146 	sjmp	00107$
      003506                       4147 00166$:
      003506 02 34 7B         [24] 4148 	ljmp	00114$
                                   4149 ;	src/main.c:511: case '?':
      003509                       4150 00104$:
                                   4151 ;	src/main.c:512: qmark_command_handler();
      003509 C0 07            [24] 4152 	push	ar7
      00350B 12 2C B9         [24] 4153 	lcall	_qmark_command_handler
      00350E D0 07            [24] 4154 	pop	ar7
                                   4155 ;	src/main.c:513: break;
      003510 02 34 7B         [24] 4156 	ljmp	00114$
                                   4157 ;	src/main.c:514: case '=':
      003513                       4158 00105$:
                                   4159 ;	src/main.c:515: enter_command_handler();
      003513 C0 07            [24] 4160 	push	ar7
      003515 12 2E A6         [24] 4161 	lcall	_enter_command_handler
      003518 D0 07            [24] 4162 	pop	ar7
                                   4163 ;	src/main.c:516: break;
      00351A 02 34 7B         [24] 4164 	ljmp	00114$
                                   4165 ;	src/main.c:517: case '%':
      00351D                       4166 00106$:
                                   4167 ;	src/main.c:518: percent_command_handler();
      00351D C0 07            [24] 4168 	push	ar7
      00351F 12 30 53         [24] 4169 	lcall	_percent_command_handler
      003522 D0 07            [24] 4170 	pop	ar7
                                   4171 ;	src/main.c:519: break;
      003524 02 34 7B         [24] 4172 	ljmp	00114$
                                   4173 ;	src/main.c:520: case '@':
      003527                       4174 00107$:
                                   4175 ;	src/main.c:521: free_all_buffers();
      003527 C0 07            [24] 4176 	push	ar7
      003529 12 2C 06         [24] 4177 	lcall	_free_all_buffers
                                   4178 ;	src/main.c:522: initialize_buffers();
      00352C 12 22 06         [24] 4179 	lcall	_initialize_buffers
      00352F D0 07            [24] 4180 	pop	ar7
                                   4181 ;	src/main.c:523: break;
      003531 02 34 7B         [24] 4182 	ljmp	00114$
                                   4183 ;	src/main.c:524: case '$':
      003534                       4184 00108$:
                                   4185 ;	src/main.c:525: dollar_sign_command_handler();
      003534 C0 07            [24] 4186 	push	ar7
      003536 12 31 8E         [24] 4187 	lcall	_dollar_sign_command_handler
      003539 D0 07            [24] 4188 	pop	ar7
                                   4189 ;	src/main.c:526: break;
      00353B 02 34 7B         [24] 4190 	ljmp	00114$
                                   4191 ;	src/main.c:527: case '#':
      00353E                       4192 00109$:
                                   4193 ;	src/main.c:528: hashtag_command_handler();
      00353E C0 07            [24] 4194 	push	ar7
      003540 12 32 55         [24] 4195 	lcall	_hashtag_command_handler
      003543 D0 07            [24] 4196 	pop	ar7
                                   4197 ;	src/main.c:529: break;
      003545 02 34 7B         [24] 4198 	ljmp	00114$
                                   4199 ;	src/main.c:530: case '+':
      003548                       4200 00110$:
                                   4201 ;	src/main.c:531: plus_command_handler();
      003548 C0 07            [24] 4202 	push	ar7
      00354A 12 33 29         [24] 4203 	lcall	_plus_command_handler
      00354D D0 07            [24] 4204 	pop	ar7
                                   4205 ;	src/main.c:532: break;
      00354F 02 34 7B         [24] 4206 	ljmp	00114$
                                   4207 ;	src/main.c:533: case '-':
      003552                       4208 00111$:
                                   4209 ;	src/main.c:534: minus_command_handler();
      003552 C0 07            [24] 4210 	push	ar7
      003554 12 33 CC         [24] 4211 	lcall	_minus_command_handler
      003557 D0 07            [24] 4212 	pop	ar7
                                   4213 ;	src/main.c:536: }
                                   4214 ;	src/main.c:538: }
      003559 02 34 7B         [24] 4215 	ljmp	00114$
                                   4216 	.area CSEG    (CODE)
                                   4217 	.area CONST   (CODE)
                                   4218 	.area CONST   (CODE)
      004A38                       4219 ___str_0:
      004A38 0D                    4220 	.db 0x0d
      004A39 0A                    4221 	.db 0x0a
      004A3A 50 6C 65 61 73 65 20  4222 	.ascii "Please enter the last two digits of your ID:"
             65 6E 74 65 72 20 74
             68 65 20 6C 61 73 74
             20 74 77 6F 20 64 69
             67 69 74 73 20 6F 66
             20 79 6F 75 72 20 49
             44 3A
      004A66 00                    4223 	.db 0x00
                                   4224 	.area CSEG    (CODE)
                                   4225 	.area CONST   (CODE)
      004A67                       4226 ___str_1:
      004A67 0D                    4227 	.db 0x0d
      004A68 0A                    4228 	.db 0x0a
      004A69 20 73 74 61 74 69 63  4229 	.ascii " static_buffers[%d].buffer %p"
             5F 62 75 66 66 65 72
             73 5B 25 64 5D 2E 62
             75 66 66 65 72 20 25
             70
      004A86 00                    4230 	.db 0x00
                                   4231 	.area CSEG    (CODE)
                                   4232 	.area CONST   (CODE)
      004A87                       4233 ___str_2:
      004A87 0D                    4234 	.db 0x0d
      004A88 0A                    4235 	.db 0x0a
      004A89 42 75 66 66 65 72 20  4236 	.ascii "Buffer Size too big, please pick a smaller buffer size"
             53 69 7A 65 20 74 6F
             6F 20 62 69 67 2C 20
             70 6C 65 61 73 65 20
             70 69 63 6B 20 61 20
             73 6D 61 6C 6C 65 72
             20 62 75 66 66 65 72
             20 73 69 7A 65
      004ABF 00                    4237 	.db 0x00
                                   4238 	.area CSEG    (CODE)
                                   4239 	.area CONST   (CODE)
      004AC0                       4240 ___str_3:
      004AC0 0D                    4241 	.db 0x0d
      004AC1 0A                    4242 	.db 0x0a
      004AC2 73 74 75 64 65 6E 74  4243 	.ascii "student_number: %d"
             5F 6E 75 6D 62 65 72
             3A 20 25 64
      004AD4 00                    4244 	.db 0x00
                                   4245 	.area CSEG    (CODE)
                                   4246 	.area CONST   (CODE)
      004AD5                       4247 ___str_4:
      004AD5 0D                    4248 	.db 0x0d
      004AD6 0A                    4249 	.db 0x0a
      004AD7 75 73 65 72 5F 62 75  4250 	.ascii "user_buffer_size: %zu"
             66 66 65 72 5F 73 69
             7A 65 3A 20 25 7A 75
      004AEC 00                    4251 	.db 0x00
                                   4252 	.area CSEG    (CODE)
                                   4253 	.area CONST   (CODE)
      004AED                       4254 ___str_5:
      004AED 0D                    4255 	.db 0x0d
      004AEE 0A                    4256 	.db 0x0a
      004AEF 62 75 66 66 65 72 5F  4257 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75
      004B18 00                    4258 	.db 0x00
                                   4259 	.area CSEG    (CODE)
                                   4260 	.area CONST   (CODE)
      004B19                       4261 ___str_6:
      004B19 0D                    4262 	.db 0x0d
      004B1A 0A                    4263 	.db 0x0a
      004B1B 48 65 61 70 20 73 74  4264 	.ascii "Heap starts @ %p, ends @ %p, size: %zu"
             61 72 74 73 20 40 20
             25 70 2C 20 65 6E 64
             73 20 40 20 25 70 2C
             20 73 69 7A 65 3A 20
             25 7A 75
      004B41 00                    4265 	.db 0x00
                                   4266 	.area CSEG    (CODE)
                                   4267 	.area CONST   (CODE)
      004B42                       4268 ___str_7:
      004B42 0D                    4269 	.db 0x0d
      004B43 0A                    4270 	.db 0x0a
      004B44 20 20 20 20 20 20 20  4271 	.ascii "        %s"
             20 25 73
      004B4E 00                    4272 	.db 0x00
                                   4273 	.area CSEG    (CODE)
                                   4274 	.area CONST   (CODE)
      004B4F                       4275 ___str_8:
      004B4F 0D                    4276 	.db 0x0d
      004B50 0A                    4277 	.db 0x0a
      004B51 2D 2D 2D 2D 2D 2D 2D  4278 	.ascii "------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D
      004B6F 00                    4279 	.db 0x00
                                   4280 	.area CSEG    (CODE)
                                   4281 	.area CONST   (CODE)
      004B70                       4282 ___str_9:
      004B70 48 45 41 50 20 52 45  4283 	.ascii "HEAP REPORT"
             50 4F 52 54
      004B7B 00                    4284 	.db 0x00
                                   4285 	.area CSEG    (CODE)
                                   4286 	.area CONST   (CODE)
      004B7C                       4287 ___str_10:
      004B7C 0D                    4288 	.db 0x0d
      004B7D 0A                    4289 	.db 0x0a
      004B7E 62 75 66 66 65 72 5F  4290 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu, contains %zu alph"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75 2C
             20 63 6F 6E 74 61 69
             6E 73 20 25 7A 75 20
             61 6C 70 68
      004BBA 61 62 65 74 20 63 68  4291 	.ascii "abet chars, has %zu chars remaining"
             61 72 73 2C 20 68 61
             73 20 25 7A 75 20 63
             68 61 72 73 20 72 65
             6D 61 69 6E 69 6E 67
      004BDD 00                    4292 	.db 0x00
                                   4293 	.area CSEG    (CODE)
                                   4294 	.area CONST   (CODE)
      004BDE                       4295 ___str_11:
      004BDE 0D                    4296 	.db 0x0d
      004BDF 0A                    4297 	.db 0x0a
      004BE0 00                    4298 	.db 0x00
                                   4299 	.area CSEG    (CODE)
                                   4300 	.area CONST   (CODE)
      004BE1                       4301 ___str_12:
      004BE1 0D                    4302 	.db 0x0d
      004BE2 0A                    4303 	.db 0x0a
      004BE3 50 6C 65 61 73 65 20  4304 	.ascii "Please enter a valid buffer size that is divisible by 32 [64"
             65 6E 74 65 72 20 61
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             73 69 7A 65 20 74 68
             61 74 20 69 73 20 64
             69 76 69 73 69 62 6C
             65 20 62 79 20 33 32
             20 5B 36 34
      004C1F 2C 25 7A 75 5D 3A 20  4305 	.ascii ",%zu]: "
      004C26 00                    4306 	.db 0x00
                                   4307 	.area CSEG    (CODE)
                                   4308 	.area CONST   (CODE)
      004C27                       4309 ___str_13:
      004C27 0D                    4310 	.db 0x0d
      004C28 0A                    4311 	.db 0x0a
      004C29 20 46 72 65 65 69 6E  4312 	.ascii " Freeing ALL BUFFERS"
             67 20 41 4C 4C 20 42
             55 46 46 45 52 53
      004C3D 00                    4313 	.db 0x00
                                   4314 	.area CSEG    (CODE)
                                   4315 	.area CONST   (CODE)
      004C3E                       4316 ___str_14:
      004C3E 0D                    4317 	.db 0x0d
      004C3F 0A                    4318 	.db 0x0a
      004C40 20 52 65 63 65 69 76  4319 	.ascii " Received %zu chars since last invocation of ?"
             65 64 20 25 7A 75 20
             63 68 61 72 73 20 73
             69 6E 63 65 20 6C 61
             73 74 20 69 6E 76 6F
             63 61 74 69 6F 6E 20
             6F 66 20 3F
      004C6E 00                    4320 	.db 0x00
                                   4321 	.area CSEG    (CODE)
                                   4322 	.area CONST   (CODE)
      004C6F                       4323 ___str_15:
      004C6F 25 63                 4324 	.ascii "%c"
      004C71 00                    4325 	.db 0x00
                                   4326 	.area CSEG    (CODE)
                                   4327 	.area CONST   (CODE)
      004C72                       4328 ___str_16:
      004C72 44 75 6D 70 20 41 64  4329 	.ascii "Dump Admin Buffers"
             6D 69 6E 20 42 75 66
             66 65 72 73
      004C84 00                    4330 	.db 0x00
                                   4331 	.area CSEG    (CODE)
                                   4332 	.area CONST   (CODE)
      004C85                       4333 ___str_17:
      004C85 0D                    4334 	.db 0x0d
      004C86 0A                    4335 	.db 0x0a
      004C87 20 42 75 66 66 65 72  4336 	.ascii " Buffer %d "
             20 25 64 20
      004C92 00                    4337 	.db 0x00
                                   4338 	.area CSEG    (CODE)
                                   4339 	.area CONST   (CODE)
      004C93                       4340 ___str_18:
      004C93 0D                    4341 	.db 0x0d
      004C94 0A                    4342 	.db 0x0a
      004C95 2D 2D 2D 2D 2D 2D 2D  4343 	.ascii "----------"
             2D 2D 2D
      004C9F 00                    4344 	.db 0x00
                                   4345 	.area CSEG    (CODE)
                                   4346 	.area CONST   (CODE)
      004CA0                       4347 ___str_19:
      004CA0 0D                    4348 	.db 0x0d
      004CA1 0A                    4349 	.db 0x0a
      004CA2 25 30 34 58 3A        4350 	.ascii "%04X:"
      004CA7 00                    4351 	.db 0x00
                                   4352 	.area CSEG    (CODE)
                                   4353 	.area CONST   (CODE)
      004CA8                       4354 ___str_20:
      004CA8 20 25 30 32 68 68 58  4355 	.ascii " %02hhX"
      004CAF 00                    4356 	.db 0x00
                                   4357 	.area CSEG    (CODE)
                                   4358 	.area CONST   (CODE)
      004CB0                       4359 ___str_21:
      004CB0 43 6C 65 61 72 20 42  4360 	.ascii "Clear Buffers"
             75 66 66 65 72 73
      004CBD 00                    4361 	.db 0x00
                                   4362 	.area CSEG    (CODE)
                                   4363 	.area CONST   (CODE)
      004CBE                       4364 ___str_22:
      004CBE 0D                    4365 	.db 0x0d
      004CBF 0A                    4366 	.db 0x0a
      004CC0 50 6C 65 61 73 65 20  4367 	.ascii "Please enter a size for the new buffer, [200,600]: "
             65 6E 74 65 72 20 61
             20 73 69 7A 65 20 66
             6F 72 20 74 68 65 20
             6E 65 77 20 62 75 66
             66 65 72 2C 20 5B 32
             30 30 2C 36 30 30 5D
             3A 20
      004CF3 00                    4368 	.db 0x00
                                   4369 	.area CSEG    (CODE)
                                   4370 	.area CONST   (CODE)
      004CF4                       4371 ___str_23:
      004CF4 0D                    4372 	.db 0x0d
      004CF5 0A                    4373 	.db 0x0a
      004CF6 42 75 66 66 65 72 20  4374 	.ascii "Buffer size invalid!! Please try again"
             73 69 7A 65 20 69 6E
             76 61 6C 69 64 21 21
             20 50 6C 65 61 73 65
             20 74 72 79 20 61 67
             61 69 6E
      004D1C 00                    4375 	.db 0x00
                                   4376 	.area CSEG    (CODE)
                                   4377 	.area CONST   (CODE)
      004D1D                       4378 ___str_24:
      004D1D 0D                    4379 	.db 0x0d
      004D1E 0A                    4380 	.db 0x0a
      004D1F 20 41 6C 6C 6F 63 61  4381 	.ascii " Allocation failed; able to allocate header but not buffer"
             74 69 6F 6E 20 66 61
             69 6C 65 64 3B 20 61
             62 6C 65 20 74 6F 20
             61 6C 6C 6F 63 61 74
             65 20 68 65 61 64 65
             72 20 62 75 74 20 6E
             6F 74 20 62 75 66 66
             65 72
      004D59 00                    4382 	.db 0x00
                                   4383 	.area CSEG    (CODE)
                                   4384 	.area CONST   (CODE)
      004D5A                       4385 ___str_25:
      004D5A 0D                    4386 	.db 0x0d
      004D5B 0A                    4387 	.db 0x0a
      004D5C 20 41 6C 6C 6F 63 61  4388 	.ascii " Allocation successful!! New buffer added"
             74 69 6F 6E 20 73 75
             63 63 65 73 73 66 75
             6C 21 21 20 4E 65 77
             20 62 75 66 66 65 72
             20 61 64 64 65 64
      004D85 00                    4389 	.db 0x00
                                   4390 	.area CSEG    (CODE)
                                   4391 	.area CONST   (CODE)
      004D86                       4392 ___str_26:
      004D86 0D                    4393 	.db 0x0d
      004D87 0A                    4394 	.db 0x0a
      004D88 50 6C 65 61 73 65 20  4395 	.ascii "Please enter the number of the buffer you would like to free"
             65 6E 74 65 72 20 74
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 74
             68 65 20 62 75 66 66
             65 72 20 79 6F 75 20
             77 6F 75 6C 64 20 6C
             69 6B 65 20 74 6F 20
             66 72 65 65
      004DC4 3A 20                 4396 	.ascii ": "
      004DC6 00                    4397 	.db 0x00
                                   4398 	.area CSEG    (CODE)
                                   4399 	.area CONST   (CODE)
      004DC7                       4400 ___str_27:
      004DC7 0D                    4401 	.db 0x0d
      004DC8 0A                    4402 	.db 0x0a
      004DC9 20 49 6E 76 61 6C 69  4403 	.ascii " Invalid buffer number, negatives not valid"
             64 20 62 75 66 66 65
             72 20 6E 75 6D 62 65
             72 2C 20 6E 65 67 61
             74 69 76 65 73 20 6E
             6F 74 20 76 61 6C 69
             64
      004DF4 00                    4404 	.db 0x00
                                   4405 	.area CSEG    (CODE)
                                   4406 	.area CONST   (CODE)
      004DF5                       4407 ___str_28:
      004DF5 0D                    4408 	.db 0x0d
      004DF6 0A                    4409 	.db 0x0a
      004DF7 20 49 6E 76 61 6C 69  4410 	.ascii " Invalid buffer number, buffers 0 & 1 are protected"
             64 20 62 75 66 66 65
             72 20 6E 75 6D 62 65
             72 2C 20 62 75 66 66
             65 72 73 20 30 20 26
             20 31 20 61 72 65 20
             70 72 6F 74 65 63 74
             65 64
      004E2A 00                    4411 	.db 0x00
                                   4412 	.area CSEG    (CODE)
                                   4413 	.area CONST   (CODE)
      004E2B                       4414 ___str_29:
      004E2B 0D                    4415 	.db 0x0d
      004E2C 0A                    4416 	.db 0x0a
      004E2D 20 53 75 63 63 65 73  4417 	.ascii " Successfully removed buffer"
             73 66 75 6C 6C 79 20
             72 65 6D 6F 76 65 64
             20 62 75 66 66 65 72
      004E49 00                    4418 	.db 0x00
                                   4419 	.area CSEG    (CODE)
                                   4420 	.area CONST   (CODE)
      004E4A                       4421 ___str_30:
      004E4A 0D                    4422 	.db 0x0d
      004E4B 0A                    4423 	.db 0x0a
      004E4C 20 46 61 69 6C 65 64  4424 	.ascii " Failed to remove buffer, idx too big"
             20 74 6F 20 72 65 6D
             6F 76 65 20 62 75 66
             66 65 72 2C 20 69 64
             78 20 74 6F 6F 20 62
             69 67
      004E71 00                    4425 	.db 0x00
                                   4426 	.area CSEG    (CODE)
                                   4427 	.area CONST   (CODE)
      004E72                       4428 ___str_31:
      004E72 0D                    4429 	.db 0x0d
      004E73 0A                    4430 	.db 0x0a
      004E74 45 6E 74 65 72 20 61  4431 	.ascii "Enter a char: "
             20 63 68 61 72 3A 20
      004E82 00                    4432 	.db 0x00
                                   4433 	.area CSEG    (CODE)
                                   4434 	.area XINIT   (CODE)
      004E90                       4435 __xinit__dynamic_buffers_list:
                                   4436 ; generic printIvalPtr
      004E90 00 00 00              4437 	.byte #0x00,#0x00,#0x00
                                   4438 	.area CABS    (ABS,CODE)
