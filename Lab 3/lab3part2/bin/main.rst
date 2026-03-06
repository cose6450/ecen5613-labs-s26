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
                                     27 	.globl _free_all_elems_from_list
                                     28 	.globl _remove_from_buffer_list
                                     29 	.globl _append_to_buffer_list
                                     30 	.globl ___memcpy
                                     31 	.globl _memset
                                     32 	.globl _reset_char_count
                                     33 	.globl _get_char_count
                                     34 	.globl _get_next_input_char
                                     35 	.globl _get_input_buffer
                                     36 	.globl _get_string
                                     37 	.globl _free
                                     38 	.globl _malloc
                                     39 	.globl _atoi
                                     40 	.globl _printf
                                     41 	.globl _CY
                                     42 	.globl _AC
                                     43 	.globl _F0
                                     44 	.globl _RS1
                                     45 	.globl _RS0
                                     46 	.globl _OV
                                     47 	.globl _F1
                                     48 	.globl _P
                                     49 	.globl _PS
                                     50 	.globl _PT1
                                     51 	.globl _PX1
                                     52 	.globl _PT0
                                     53 	.globl _PX0
                                     54 	.globl _RD
                                     55 	.globl _WR
                                     56 	.globl _T1
                                     57 	.globl _T0
                                     58 	.globl _INT1
                                     59 	.globl _INT0
                                     60 	.globl _TXD
                                     61 	.globl _RXD
                                     62 	.globl _P3_7
                                     63 	.globl _P3_6
                                     64 	.globl _P3_5
                                     65 	.globl _P3_4
                                     66 	.globl _P3_3
                                     67 	.globl _P3_2
                                     68 	.globl _P3_1
                                     69 	.globl _P3_0
                                     70 	.globl _EA
                                     71 	.globl _ES
                                     72 	.globl _ET1
                                     73 	.globl _EX1
                                     74 	.globl _ET0
                                     75 	.globl _EX0
                                     76 	.globl _P2_7
                                     77 	.globl _P2_6
                                     78 	.globl _P2_5
                                     79 	.globl _P2_4
                                     80 	.globl _P2_3
                                     81 	.globl _P2_2
                                     82 	.globl _P2_1
                                     83 	.globl _P2_0
                                     84 	.globl _SM0
                                     85 	.globl _SM1
                                     86 	.globl _SM2
                                     87 	.globl _REN
                                     88 	.globl _TB8
                                     89 	.globl _RB8
                                     90 	.globl _TI
                                     91 	.globl _RI
                                     92 	.globl _P1_7
                                     93 	.globl _P1_6
                                     94 	.globl _P1_5
                                     95 	.globl _P1_4
                                     96 	.globl _P1_3
                                     97 	.globl _P1_2
                                     98 	.globl _P1_1
                                     99 	.globl _P1_0
                                    100 	.globl _TF1
                                    101 	.globl _TR1
                                    102 	.globl _TF0
                                    103 	.globl _TR0
                                    104 	.globl _IE1
                                    105 	.globl _IT1
                                    106 	.globl _IE0
                                    107 	.globl _IT0
                                    108 	.globl _P0_7
                                    109 	.globl _P0_6
                                    110 	.globl _P0_5
                                    111 	.globl _P0_4
                                    112 	.globl _P0_3
                                    113 	.globl _P0_2
                                    114 	.globl _P0_1
                                    115 	.globl _P0_0
                                    116 	.globl _P5_7
                                    117 	.globl _P5_6
                                    118 	.globl _P5_5
                                    119 	.globl _P5_4
                                    120 	.globl _P5_3
                                    121 	.globl _P5_2
                                    122 	.globl _P5_1
                                    123 	.globl _P5_0
                                    124 	.globl _P4_7
                                    125 	.globl _P4_6
                                    126 	.globl _P4_5
                                    127 	.globl _P4_4
                                    128 	.globl _P4_3
                                    129 	.globl _P4_2
                                    130 	.globl _P4_1
                                    131 	.globl _P4_0
                                    132 	.globl _PX0L
                                    133 	.globl _PT0L
                                    134 	.globl _PX1L
                                    135 	.globl _PT1L
                                    136 	.globl _PSL
                                    137 	.globl _PT2L
                                    138 	.globl _PPCL
                                    139 	.globl _EC
                                    140 	.globl _CCF0
                                    141 	.globl _CCF1
                                    142 	.globl _CCF2
                                    143 	.globl _CCF3
                                    144 	.globl _CCF4
                                    145 	.globl _CR
                                    146 	.globl _CF
                                    147 	.globl _TF2
                                    148 	.globl _EXF2
                                    149 	.globl _RCLK
                                    150 	.globl _TCLK
                                    151 	.globl _EXEN2
                                    152 	.globl _TR2
                                    153 	.globl _C_T2
                                    154 	.globl _CP_RL2
                                    155 	.globl _T2CON_7
                                    156 	.globl _T2CON_6
                                    157 	.globl _T2CON_5
                                    158 	.globl _T2CON_4
                                    159 	.globl _T2CON_3
                                    160 	.globl _T2CON_2
                                    161 	.globl _T2CON_1
                                    162 	.globl _T2CON_0
                                    163 	.globl _PT2
                                    164 	.globl _ET2
                                    165 	.globl _B
                                    166 	.globl _ACC
                                    167 	.globl _PSW
                                    168 	.globl _IP
                                    169 	.globl _P3
                                    170 	.globl _IE
                                    171 	.globl _P2
                                    172 	.globl _SBUF
                                    173 	.globl _SCON
                                    174 	.globl _P1
                                    175 	.globl _TH1
                                    176 	.globl _TH0
                                    177 	.globl _TL1
                                    178 	.globl _TL0
                                    179 	.globl _TMOD
                                    180 	.globl _TCON
                                    181 	.globl _PCON
                                    182 	.globl _DPH
                                    183 	.globl _DPL
                                    184 	.globl _SP
                                    185 	.globl _P0
                                    186 	.globl _EECON
                                    187 	.globl _KBF
                                    188 	.globl _KBE
                                    189 	.globl _KBLS
                                    190 	.globl _BRL
                                    191 	.globl _BDRCON
                                    192 	.globl _T2MOD
                                    193 	.globl _SPDAT
                                    194 	.globl _SPSTA
                                    195 	.globl _SPCON
                                    196 	.globl _SADEN
                                    197 	.globl _SADDR
                                    198 	.globl _WDTPRG
                                    199 	.globl _WDTRST
                                    200 	.globl _P5
                                    201 	.globl _P4
                                    202 	.globl _IPH1
                                    203 	.globl _IPL1
                                    204 	.globl _IPH0
                                    205 	.globl _IPL0
                                    206 	.globl _IEN1
                                    207 	.globl _IEN0
                                    208 	.globl _CMOD
                                    209 	.globl _CL
                                    210 	.globl _CH
                                    211 	.globl _CCON
                                    212 	.globl _CCAPM4
                                    213 	.globl _CCAPM3
                                    214 	.globl _CCAPM2
                                    215 	.globl _CCAPM1
                                    216 	.globl _CCAPM0
                                    217 	.globl _CCAP4L
                                    218 	.globl _CCAP3L
                                    219 	.globl _CCAP2L
                                    220 	.globl _CCAP1L
                                    221 	.globl _CCAP0L
                                    222 	.globl _CCAP4H
                                    223 	.globl _CCAP3H
                                    224 	.globl _CCAP2H
                                    225 	.globl _CCAP1H
                                    226 	.globl _CCAP0H
                                    227 	.globl _CKCON1
                                    228 	.globl _CKCON0
                                    229 	.globl _CKRL
                                    230 	.globl _AUXR1
                                    231 	.globl _AUXR
                                    232 	.globl _TH2
                                    233 	.globl _TL2
                                    234 	.globl _RCAP2H
                                    235 	.globl _RCAP2L
                                    236 	.globl _T2CON
                                    237 	.globl _dynamic_buffers_list
                                    238 	.globl _store_in_buffer_PARM_2
                                    239 	.globl _static_buffers
                                    240 	.globl _get_user_buffer_sz
                                    241 	.globl _free_all_buffers
                                    242 ;--------------------------------------------------------
                                    243 ; special function registers
                                    244 ;--------------------------------------------------------
                                    245 	.area RSEG    (ABS,DATA)
      000000                        246 	.org 0x0000
                           0000C8   247 _T2CON	=	0x00c8
                           0000CA   248 _RCAP2L	=	0x00ca
                           0000CB   249 _RCAP2H	=	0x00cb
                           0000CC   250 _TL2	=	0x00cc
                           0000CD   251 _TH2	=	0x00cd
                           00008E   252 _AUXR	=	0x008e
                           0000A2   253 _AUXR1	=	0x00a2
                           000097   254 _CKRL	=	0x0097
                           00008F   255 _CKCON0	=	0x008f
                           0000AF   256 _CKCON1	=	0x00af
                           0000FA   257 _CCAP0H	=	0x00fa
                           0000FB   258 _CCAP1H	=	0x00fb
                           0000FC   259 _CCAP2H	=	0x00fc
                           0000FD   260 _CCAP3H	=	0x00fd
                           0000FE   261 _CCAP4H	=	0x00fe
                           0000EA   262 _CCAP0L	=	0x00ea
                           0000EB   263 _CCAP1L	=	0x00eb
                           0000EC   264 _CCAP2L	=	0x00ec
                           0000ED   265 _CCAP3L	=	0x00ed
                           0000EE   266 _CCAP4L	=	0x00ee
                           0000DA   267 _CCAPM0	=	0x00da
                           0000DB   268 _CCAPM1	=	0x00db
                           0000DC   269 _CCAPM2	=	0x00dc
                           0000DD   270 _CCAPM3	=	0x00dd
                           0000DE   271 _CCAPM4	=	0x00de
                           0000D8   272 _CCON	=	0x00d8
                           0000F9   273 _CH	=	0x00f9
                           0000E9   274 _CL	=	0x00e9
                           0000D9   275 _CMOD	=	0x00d9
                           0000A8   276 _IEN0	=	0x00a8
                           0000B1   277 _IEN1	=	0x00b1
                           0000B8   278 _IPL0	=	0x00b8
                           0000B7   279 _IPH0	=	0x00b7
                           0000B2   280 _IPL1	=	0x00b2
                           0000B3   281 _IPH1	=	0x00b3
                           0000C0   282 _P4	=	0x00c0
                           0000E8   283 _P5	=	0x00e8
                           0000A6   284 _WDTRST	=	0x00a6
                           0000A7   285 _WDTPRG	=	0x00a7
                           0000A9   286 _SADDR	=	0x00a9
                           0000B9   287 _SADEN	=	0x00b9
                           0000C3   288 _SPCON	=	0x00c3
                           0000C4   289 _SPSTA	=	0x00c4
                           0000C5   290 _SPDAT	=	0x00c5
                           0000C9   291 _T2MOD	=	0x00c9
                           00009B   292 _BDRCON	=	0x009b
                           00009A   293 _BRL	=	0x009a
                           00009C   294 _KBLS	=	0x009c
                           00009D   295 _KBE	=	0x009d
                           00009E   296 _KBF	=	0x009e
                           0000D2   297 _EECON	=	0x00d2
                           000080   298 _P0	=	0x0080
                           000081   299 _SP	=	0x0081
                           000082   300 _DPL	=	0x0082
                           000083   301 _DPH	=	0x0083
                           000087   302 _PCON	=	0x0087
                           000088   303 _TCON	=	0x0088
                           000089   304 _TMOD	=	0x0089
                           00008A   305 _TL0	=	0x008a
                           00008B   306 _TL1	=	0x008b
                           00008C   307 _TH0	=	0x008c
                           00008D   308 _TH1	=	0x008d
                           000090   309 _P1	=	0x0090
                           000098   310 _SCON	=	0x0098
                           000099   311 _SBUF	=	0x0099
                           0000A0   312 _P2	=	0x00a0
                           0000A8   313 _IE	=	0x00a8
                           0000B0   314 _P3	=	0x00b0
                           0000B8   315 _IP	=	0x00b8
                           0000D0   316 _PSW	=	0x00d0
                           0000E0   317 _ACC	=	0x00e0
                           0000F0   318 _B	=	0x00f0
                                    319 ;--------------------------------------------------------
                                    320 ; special function bits
                                    321 ;--------------------------------------------------------
                                    322 	.area RSEG    (ABS,DATA)
      000000                        323 	.org 0x0000
                           0000AD   324 _ET2	=	0x00ad
                           0000BD   325 _PT2	=	0x00bd
                           0000C8   326 _T2CON_0	=	0x00c8
                           0000C9   327 _T2CON_1	=	0x00c9
                           0000CA   328 _T2CON_2	=	0x00ca
                           0000CB   329 _T2CON_3	=	0x00cb
                           0000CC   330 _T2CON_4	=	0x00cc
                           0000CD   331 _T2CON_5	=	0x00cd
                           0000CE   332 _T2CON_6	=	0x00ce
                           0000CF   333 _T2CON_7	=	0x00cf
                           0000C8   334 _CP_RL2	=	0x00c8
                           0000C9   335 _C_T2	=	0x00c9
                           0000CA   336 _TR2	=	0x00ca
                           0000CB   337 _EXEN2	=	0x00cb
                           0000CC   338 _TCLK	=	0x00cc
                           0000CD   339 _RCLK	=	0x00cd
                           0000CE   340 _EXF2	=	0x00ce
                           0000CF   341 _TF2	=	0x00cf
                           0000DF   342 _CF	=	0x00df
                           0000DE   343 _CR	=	0x00de
                           0000DC   344 _CCF4	=	0x00dc
                           0000DB   345 _CCF3	=	0x00db
                           0000DA   346 _CCF2	=	0x00da
                           0000D9   347 _CCF1	=	0x00d9
                           0000D8   348 _CCF0	=	0x00d8
                           0000AE   349 _EC	=	0x00ae
                           0000BE   350 _PPCL	=	0x00be
                           0000BD   351 _PT2L	=	0x00bd
                           0000BC   352 _PSL	=	0x00bc
                           0000BB   353 _PT1L	=	0x00bb
                           0000BA   354 _PX1L	=	0x00ba
                           0000B9   355 _PT0L	=	0x00b9
                           0000B8   356 _PX0L	=	0x00b8
                           0000C0   357 _P4_0	=	0x00c0
                           0000C1   358 _P4_1	=	0x00c1
                           0000C2   359 _P4_2	=	0x00c2
                           0000C3   360 _P4_3	=	0x00c3
                           0000C4   361 _P4_4	=	0x00c4
                           0000C5   362 _P4_5	=	0x00c5
                           0000C6   363 _P4_6	=	0x00c6
                           0000C7   364 _P4_7	=	0x00c7
                           0000E8   365 _P5_0	=	0x00e8
                           0000E9   366 _P5_1	=	0x00e9
                           0000EA   367 _P5_2	=	0x00ea
                           0000EB   368 _P5_3	=	0x00eb
                           0000EC   369 _P5_4	=	0x00ec
                           0000ED   370 _P5_5	=	0x00ed
                           0000EE   371 _P5_6	=	0x00ee
                           0000EF   372 _P5_7	=	0x00ef
                           000080   373 _P0_0	=	0x0080
                           000081   374 _P0_1	=	0x0081
                           000082   375 _P0_2	=	0x0082
                           000083   376 _P0_3	=	0x0083
                           000084   377 _P0_4	=	0x0084
                           000085   378 _P0_5	=	0x0085
                           000086   379 _P0_6	=	0x0086
                           000087   380 _P0_7	=	0x0087
                           000088   381 _IT0	=	0x0088
                           000089   382 _IE0	=	0x0089
                           00008A   383 _IT1	=	0x008a
                           00008B   384 _IE1	=	0x008b
                           00008C   385 _TR0	=	0x008c
                           00008D   386 _TF0	=	0x008d
                           00008E   387 _TR1	=	0x008e
                           00008F   388 _TF1	=	0x008f
                           000090   389 _P1_0	=	0x0090
                           000091   390 _P1_1	=	0x0091
                           000092   391 _P1_2	=	0x0092
                           000093   392 _P1_3	=	0x0093
                           000094   393 _P1_4	=	0x0094
                           000095   394 _P1_5	=	0x0095
                           000096   395 _P1_6	=	0x0096
                           000097   396 _P1_7	=	0x0097
                           000098   397 _RI	=	0x0098
                           000099   398 _TI	=	0x0099
                           00009A   399 _RB8	=	0x009a
                           00009B   400 _TB8	=	0x009b
                           00009C   401 _REN	=	0x009c
                           00009D   402 _SM2	=	0x009d
                           00009E   403 _SM1	=	0x009e
                           00009F   404 _SM0	=	0x009f
                           0000A0   405 _P2_0	=	0x00a0
                           0000A1   406 _P2_1	=	0x00a1
                           0000A2   407 _P2_2	=	0x00a2
                           0000A3   408 _P2_3	=	0x00a3
                           0000A4   409 _P2_4	=	0x00a4
                           0000A5   410 _P2_5	=	0x00a5
                           0000A6   411 _P2_6	=	0x00a6
                           0000A7   412 _P2_7	=	0x00a7
                           0000A8   413 _EX0	=	0x00a8
                           0000A9   414 _ET0	=	0x00a9
                           0000AA   415 _EX1	=	0x00aa
                           0000AB   416 _ET1	=	0x00ab
                           0000AC   417 _ES	=	0x00ac
                           0000AF   418 _EA	=	0x00af
                           0000B0   419 _P3_0	=	0x00b0
                           0000B1   420 _P3_1	=	0x00b1
                           0000B2   421 _P3_2	=	0x00b2
                           0000B3   422 _P3_3	=	0x00b3
                           0000B4   423 _P3_4	=	0x00b4
                           0000B5   424 _P3_5	=	0x00b5
                           0000B6   425 _P3_6	=	0x00b6
                           0000B7   426 _P3_7	=	0x00b7
                           0000B0   427 _RXD	=	0x00b0
                           0000B1   428 _TXD	=	0x00b1
                           0000B2   429 _INT0	=	0x00b2
                           0000B3   430 _INT1	=	0x00b3
                           0000B4   431 _T0	=	0x00b4
                           0000B5   432 _T1	=	0x00b5
                           0000B6   433 _WR	=	0x00b6
                           0000B7   434 _RD	=	0x00b7
                           0000B8   435 _PX0	=	0x00b8
                           0000B9   436 _PT0	=	0x00b9
                           0000BA   437 _PX1	=	0x00ba
                           0000BB   438 _PT1	=	0x00bb
                           0000BC   439 _PS	=	0x00bc
                           0000D0   440 _P	=	0x00d0
                           0000D1   441 _F1	=	0x00d1
                           0000D2   442 _OV	=	0x00d2
                           0000D3   443 _RS0	=	0x00d3
                           0000D4   444 _RS1	=	0x00d4
                           0000D5   445 _F0	=	0x00d5
                           0000D6   446 _AC	=	0x00d6
                           0000D7   447 _CY	=	0x00d7
                                    448 ;--------------------------------------------------------
                                    449 ; overlayable register banks
                                    450 ;--------------------------------------------------------
                                    451 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        452 	.ds 8
                                    453 ;--------------------------------------------------------
                                    454 ; internal ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area DSEG    (DATA)
      000021                        457 _initialize_buffers_sloc0_1_0:
      000021                        458 	.ds 2
      000023                        459 _initialize_buffers_sloc1_1_0:
      000023                        460 	.ds 2
      000025                        461 _initialize_buffers_sloc2_1_0:
      000025                        462 	.ds 2
      000027                        463 _initialize_buffers_sloc3_1_0:
      000027                        464 	.ds 3
      00002A                        465 _initialize_buffers_sloc4_1_0:
      00002A                        466 	.ds 3
      00002D                        467 _initialize_buffers_sloc5_1_0:
      00002D                        468 	.ds 3
      000030                        469 _store_in_buffer_sloc0_1_0:
      000030                        470 	.ds 2
      000032                        471 _store_in_buffer_sloc1_1_0:
      000032                        472 	.ds 3
      000035                        473 _heap_report_sloc0_1_0:
      000035                        474 	.ds 2
      000037                        475 _heap_report_sloc1_1_0:
      000037                        476 	.ds 2
      000039                        477 _heap_report_sloc2_1_0:
      000039                        478 	.ds 2
      00003B                        479 _heap_report_sloc3_1_0:
      00003B                        480 	.ds 2
      00003D                        481 _heap_report_sloc4_1_0:
      00003D                        482 	.ds 3
      000040                        483 _heap_report_sloc5_1_0:
      000040                        484 	.ds 3
      000043                        485 _qmark_command_handler_sloc0_1_0:
      000043                        486 	.ds 3
      000046                        487 _enter_command_handler_sloc0_1_0:
      000046                        488 	.ds 3
      000049                        489 _enter_command_handler_sloc1_1_0:
      000049                        490 	.ds 2
      00004B                        491 _enter_command_handler_sloc2_1_0:
      00004B                        492 	.ds 2
      00004D                        493 _enter_command_handler_sloc3_1_0:
      00004D                        494 	.ds 2
      00004F                        495 _percent_command_handler_sloc0_1_0:
      00004F                        496 	.ds 3
      000052                        497 _dollar_sign_command_handler_sloc0_1_0:
      000052                        498 	.ds 3
                                    499 ;--------------------------------------------------------
                                    500 ; overlayable items in internal ram
                                    501 ;--------------------------------------------------------
                                    502 	.area	OSEG    (OVR,DATA)
      00001B                        503 _hashtag_command_handler_c_196609_161:
      00001B                        504 	.ds 1
                                    505 ;--------------------------------------------------------
                                    506 ; Stack segment in internal ram
                                    507 ;--------------------------------------------------------
                                    508 	.area	SSEG
      000055                        509 __start__stack:
      000055                        510 	.ds	1
                                    511 
                                    512 ;--------------------------------------------------------
                                    513 ; indirectly addressable internal ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area ISEG    (DATA)
                                    516 ;--------------------------------------------------------
                                    517 ; absolute internal ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area IABS    (ABS,DATA)
                                    520 	.area IABS    (ABS,DATA)
                                    521 ;--------------------------------------------------------
                                    522 ; bit data
                                    523 ;--------------------------------------------------------
                                    524 	.area BSEG    (BIT)
      000000                        525 _is_alphabet_char_sloc0_1_0:
      000000                        526 	.ds 1
                                    527 ;--------------------------------------------------------
                                    528 ; paged external ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area PSEG    (PAG,XDATA)
                                    531 ;--------------------------------------------------------
                                    532 ; external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XSEG    (XDATA)
      000001                        535 _static_buffers::
      000001                        536 	.ds 22
      000017                        537 _is_alphabet_char_c_65536_80:
      000017                        538 	.ds 1
      000018                        539 _initialize_default_elements_buffer_65536_82:
      000018                        540 	.ds 3
      00001B                        541 _alloc_new_buffer_size_65536_84:
      00001B                        542 	.ds 2
      00001D                        543 _initialize_buffers_max_user_input_65538_92:
      00001D                        544 	.ds 2
      00001F                        545 _initialize_buffers_total_heap_sz_65539_106:
      00001F                        546 	.ds 2
      000021                        547 _initialize_buffers_curr_65540_110:
      000021                        548 	.ds 3
      000024                        549 _store_in_buffer_PARM_2:
      000024                        550 	.ds 1
      000025                        551 _store_in_buffer_buffer_65536_113:
      000025                        552 	.ds 3
      000028                        553 _command_header_command_string_65536_117:
      000028                        554 	.ds 3
      00002B                        555 _heap_report_total_heap_sz_65537_120:
      00002B                        556 	.ds 2
      00002D                        557 _get_user_buffer_sz_maximum_sz_65536_127:
      00002D                        558 	.ds 2
      00002F                        559 _qmark_command_handler_curr_output_char_65538_136:
      00002F                        560 	.ds 2
      000031                        561 _qmark_command_handler_curr_char_196610_138:
      000031                        562 	.ds 1
                                    563 ;--------------------------------------------------------
                                    564 ; absolute external ram data
                                    565 ;--------------------------------------------------------
                                    566 	.area XABS    (ABS,XDATA)
                                    567 ;--------------------------------------------------------
                                    568 ; external initialized ram data
                                    569 ;--------------------------------------------------------
                                    570 	.area XISEG   (XDATA)
      0020BA                        571 _dynamic_buffers_list::
      0020BA                        572 	.ds 3
                                    573 	.area HOME    (CODE)
                                    574 	.area GSINIT0 (CODE)
                                    575 	.area GSINIT1 (CODE)
                                    576 	.area GSINIT2 (CODE)
                                    577 	.area GSINIT3 (CODE)
                                    578 	.area GSINIT4 (CODE)
                                    579 	.area GSINIT5 (CODE)
                                    580 	.area GSINIT  (CODE)
                                    581 	.area GSFINAL (CODE)
                                    582 	.area CSEG    (CODE)
                                    583 ;--------------------------------------------------------
                                    584 ; interrupt vector
                                    585 ;--------------------------------------------------------
                                    586 	.area HOME    (CODE)
      002000                        587 __interrupt_vect:
      002000 02 20 34         [24]  588 	ljmp	__sdcc_gsinit_startup
                                    589 ;--------------------------------------------------------
                                    590 ; global & static initialisations
                                    591 ;--------------------------------------------------------
                                    592 	.area HOME    (CODE)
                                    593 	.area GSINIT  (CODE)
                                    594 	.area GSFINAL (CODE)
                                    595 	.area GSINIT  (CODE)
                                    596 	.globl __sdcc_gsinit_startup
                                    597 	.globl __sdcc_program_startup
                                    598 	.globl __start__stack
                                    599 	.globl __mcs51_genXINIT
                                    600 	.globl __mcs51_genXRAMCLEAR
                                    601 	.globl __mcs51_genRAMCLEAR
                                    602 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  603 	ljmp	__sdcc_program_startup
                                    604 ;--------------------------------------------------------
                                    605 ; Home
                                    606 ;--------------------------------------------------------
                                    607 	.area HOME    (CODE)
                                    608 	.area HOME    (CODE)
      002003                        609 __sdcc_program_startup:
      002003 02 34 76         [24]  610 	ljmp	_main
                                    611 ;	return from main will return to caller
                                    612 ;--------------------------------------------------------
                                    613 ; code
                                    614 ;--------------------------------------------------------
                                    615 	.area CSEG    (CODE)
                                    616 ;------------------------------------------------------------
                                    617 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    618 ;------------------------------------------------------------
                                    619 ;	src/main.c:54: int _sdcc_external_startup()
                                    620 ;	-----------------------------------------
                                    621 ;	 function _sdcc_external_startup
                                    622 ;	-----------------------------------------
      002090                        623 __sdcc_external_startup:
                           000007   624 	ar7 = 0x07
                           000006   625 	ar6 = 0x06
                           000005   626 	ar5 = 0x05
                           000004   627 	ar4 = 0x04
                           000003   628 	ar3 = 0x03
                           000002   629 	ar2 = 0x02
                           000001   630 	ar1 = 0x01
                           000000   631 	ar0 = 0x00
                                    632 ;	src/main.c:57: return 0;
      002090 90 00 00         [24]  633 	mov	dptr,#0x0000
                                    634 ;	src/main.c:58: }
      002093 22               [24]  635 	ret
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function 'is_alphabet_char'
                                    638 ;------------------------------------------------------------
                                    639 ;c                         Allocated with name '_is_alphabet_char_c_65536_80'
                                    640 ;------------------------------------------------------------
                                    641 ;	src/main.c:88: bool is_alphabet_char(char c)
                                    642 ;	-----------------------------------------
                                    643 ;	 function is_alphabet_char
                                    644 ;	-----------------------------------------
      002094                        645 _is_alphabet_char:
      002094 E5 82            [12]  646 	mov	a,dpl
      002096 90 00 17         [24]  647 	mov	dptr,#_is_alphabet_char_c_65536_80
      002099 F0               [24]  648 	movx	@dptr,a
                                    649 ;	src/main.c:90: return (c <= 'Z' && c >= 'A')
      00209A E0               [24]  650 	movx	a,@dptr
      00209B FF               [12]  651 	mov  r7,a
      00209C 24 A5            [12]  652 	add	a,#0xff - 0x5a
      00209E 92 00            [24]  653 	mov	_is_alphabet_char_sloc0_1_0,c
      0020A0 40 07            [24]  654 	jc	00108$
      0020A2 BF 41 00         [24]  655 	cjne	r7,#0x41,00121$
      0020A5                        656 00121$:
      0020A5 92 00            [24]  657 	mov	_is_alphabet_char_sloc0_1_0,c
      0020A7 50 16            [24]  658 	jnc	00104$
      0020A9                        659 00108$:
                                    660 ;	src/main.c:91: || (c <= 'z' && c >= 'a');
      0020A9 90 00 17         [24]  661 	mov	dptr,#_is_alphabet_char_c_65536_80
      0020AC E0               [24]  662 	movx	a,@dptr
      0020AD FF               [12]  663 	mov  r7,a
      0020AE 24 85            [12]  664 	add	a,#0xff - 0x7a
      0020B0 92 00            [24]  665 	mov	_is_alphabet_char_sloc0_1_0,c
      0020B2 40 07            [24]  666 	jc	00103$
      0020B4 BF 61 00         [24]  667 	cjne	r7,#0x61,00124$
      0020B7                        668 00124$:
      0020B7 92 00            [24]  669 	mov	_is_alphabet_char_sloc0_1_0,c
      0020B9 50 04            [24]  670 	jnc	00104$
      0020BB                        671 00103$:
                                    672 ;	assignBit
      0020BB C2 00            [12]  673 	clr	_is_alphabet_char_sloc0_1_0
      0020BD 80 02            [24]  674 	sjmp	00105$
      0020BF                        675 00104$:
                                    676 ;	assignBit
      0020BF D2 00            [12]  677 	setb	_is_alphabet_char_sloc0_1_0
      0020C1                        678 00105$:
      0020C1 A2 00            [12]  679 	mov	c,_is_alphabet_char_sloc0_1_0
      0020C3 E4               [12]  680 	clr	a
      0020C4 33               [12]  681 	rlc	a
      0020C5 F5 82            [12]  682 	mov	dpl,a
                                    683 ;	src/main.c:92: }
      0020C7 22               [24]  684 	ret
                                    685 ;------------------------------------------------------------
                                    686 ;Allocation info for local variables in function 'initialize_default_elements'
                                    687 ;------------------------------------------------------------
                                    688 ;buffer                    Allocated with name '_initialize_default_elements_buffer_65536_82'
                                    689 ;------------------------------------------------------------
                                    690 ;	src/main.c:94: void initialize_default_elements(buffer_t *buffer)
                                    691 ;	-----------------------------------------
                                    692 ;	 function initialize_default_elements
                                    693 ;	-----------------------------------------
      0020C8                        694 _initialize_default_elements:
      0020C8 AF F0            [24]  695 	mov	r7,b
      0020CA AE 83            [24]  696 	mov	r6,dph
      0020CC E5 82            [12]  697 	mov	a,dpl
      0020CE 90 00 18         [24]  698 	mov	dptr,#_initialize_default_elements_buffer_65536_82
      0020D1 F0               [24]  699 	movx	@dptr,a
      0020D2 EE               [12]  700 	mov	a,r6
      0020D3 A3               [24]  701 	inc	dptr
      0020D4 F0               [24]  702 	movx	@dptr,a
      0020D5 EF               [12]  703 	mov	a,r7
      0020D6 A3               [24]  704 	inc	dptr
      0020D7 F0               [24]  705 	movx	@dptr,a
                                    706 ;	src/main.c:96: buffer->alphabet_chars = 0;
      0020D8 90 00 18         [24]  707 	mov	dptr,#_initialize_default_elements_buffer_65536_82
      0020DB E0               [24]  708 	movx	a,@dptr
      0020DC FD               [12]  709 	mov	r5,a
      0020DD A3               [24]  710 	inc	dptr
      0020DE E0               [24]  711 	movx	a,@dptr
      0020DF FE               [12]  712 	mov	r6,a
      0020E0 A3               [24]  713 	inc	dptr
      0020E1 E0               [24]  714 	movx	a,@dptr
      0020E2 FF               [12]  715 	mov	r7,a
      0020E3 74 02            [12]  716 	mov	a,#0x02
      0020E5 2D               [12]  717 	add	a,r5
      0020E6 FA               [12]  718 	mov	r2,a
      0020E7 E4               [12]  719 	clr	a
      0020E8 3E               [12]  720 	addc	a,r6
      0020E9 FB               [12]  721 	mov	r3,a
      0020EA 8F 04            [24]  722 	mov	ar4,r7
      0020EC 8A 82            [24]  723 	mov	dpl,r2
      0020EE 8B 83            [24]  724 	mov	dph,r3
      0020F0 8C F0            [24]  725 	mov	b,r4
      0020F2 E4               [12]  726 	clr	a
      0020F3 12 3D 85         [24]  727 	lcall	__gptrput
      0020F6 A3               [24]  728 	inc	dptr
      0020F7 12 3D 85         [24]  729 	lcall	__gptrput
                                    730 ;	src/main.c:97: buffer->curr_available_char = 0;
      0020FA 74 06            [12]  731 	mov	a,#0x06
      0020FC 2D               [12]  732 	add	a,r5
      0020FD FA               [12]  733 	mov	r2,a
      0020FE E4               [12]  734 	clr	a
      0020FF 3E               [12]  735 	addc	a,r6
      002100 FB               [12]  736 	mov	r3,a
      002101 8F 04            [24]  737 	mov	ar4,r7
      002103 8A 82            [24]  738 	mov	dpl,r2
      002105 8B 83            [24]  739 	mov	dph,r3
      002107 8C F0            [24]  740 	mov	b,r4
      002109 E4               [12]  741 	clr	a
      00210A 12 3D 85         [24]  742 	lcall	__gptrput
      00210D A3               [24]  743 	inc	dptr
      00210E 12 3D 85         [24]  744 	lcall	__gptrput
                                    745 ;	src/main.c:98: buffer->next = NULL;
      002111 74 08            [12]  746 	mov	a,#0x08
      002113 2D               [12]  747 	add	a,r5
      002114 FA               [12]  748 	mov	r2,a
      002115 E4               [12]  749 	clr	a
      002116 3E               [12]  750 	addc	a,r6
      002117 FB               [12]  751 	mov	r3,a
      002118 8F 04            [24]  752 	mov	ar4,r7
      00211A 8A 82            [24]  753 	mov	dpl,r2
      00211C 8B 83            [24]  754 	mov	dph,r3
      00211E 8C F0            [24]  755 	mov	b,r4
      002120 E4               [12]  756 	clr	a
      002121 12 3D 85         [24]  757 	lcall	__gptrput
      002124 A3               [24]  758 	inc	dptr
      002125 12 3D 85         [24]  759 	lcall	__gptrput
      002128 A3               [24]  760 	inc	dptr
      002129 12 3D 85         [24]  761 	lcall	__gptrput
                                    762 ;	src/main.c:100: memset(buffer->buffer, 0x00, buffer->size);
      00212C 8D 82            [24]  763 	mov	dpl,r5
      00212E 8E 83            [24]  764 	mov	dph,r6
      002130 8F F0            [24]  765 	mov	b,r7
      002132 12 49 DF         [24]  766 	lcall	__gptrget
      002135 FB               [12]  767 	mov	r3,a
      002136 A3               [24]  768 	inc	dptr
      002137 12 49 DF         [24]  769 	lcall	__gptrget
      00213A FC               [12]  770 	mov	r4,a
      00213B 7A 00            [12]  771 	mov	r2,#0x00
      00213D 74 04            [12]  772 	mov	a,#0x04
      00213F 2D               [12]  773 	add	a,r5
      002140 FD               [12]  774 	mov	r5,a
      002141 E4               [12]  775 	clr	a
      002142 3E               [12]  776 	addc	a,r6
      002143 FE               [12]  777 	mov	r6,a
      002144 8D 82            [24]  778 	mov	dpl,r5
      002146 8E 83            [24]  779 	mov	dph,r6
      002148 8F F0            [24]  780 	mov	b,r7
      00214A 12 49 DF         [24]  781 	lcall	__gptrget
      00214D FD               [12]  782 	mov	r5,a
      00214E A3               [24]  783 	inc	dptr
      00214F 12 49 DF         [24]  784 	lcall	__gptrget
      002152 FE               [12]  785 	mov	r6,a
      002153 90 20 6F         [24]  786 	mov	dptr,#_memset_PARM_2
      002156 E4               [12]  787 	clr	a
      002157 F0               [24]  788 	movx	@dptr,a
      002158 90 20 70         [24]  789 	mov	dptr,#_memset_PARM_3
      00215B ED               [12]  790 	mov	a,r5
      00215C F0               [24]  791 	movx	@dptr,a
      00215D EE               [12]  792 	mov	a,r6
      00215E A3               [24]  793 	inc	dptr
      00215F F0               [24]  794 	movx	@dptr,a
      002160 8B 82            [24]  795 	mov	dpl,r3
      002162 8C 83            [24]  796 	mov	dph,r4
      002164 8A F0            [24]  797 	mov	b,r2
                                    798 ;	src/main.c:101: }
      002166 02 3C 39         [24]  799 	ljmp	_memset
                                    800 ;------------------------------------------------------------
                                    801 ;Allocation info for local variables in function 'alloc_new_buffer'
                                    802 ;------------------------------------------------------------
                                    803 ;size                      Allocated with name '_alloc_new_buffer_size_65536_84'
                                    804 ;header                    Allocated with name '_alloc_new_buffer_header_65536_85'
                                    805 ;------------------------------------------------------------
                                    806 ;	src/main.c:103: buffer_t *alloc_new_buffer(size_t size)
                                    807 ;	-----------------------------------------
                                    808 ;	 function alloc_new_buffer
                                    809 ;	-----------------------------------------
      002169                        810 _alloc_new_buffer:
      002169 AF 83            [24]  811 	mov	r7,dph
      00216B E5 82            [12]  812 	mov	a,dpl
      00216D 90 00 1B         [24]  813 	mov	dptr,#_alloc_new_buffer_size_65536_84
      002170 F0               [24]  814 	movx	@dptr,a
      002171 EF               [12]  815 	mov	a,r7
      002172 A3               [24]  816 	inc	dptr
      002173 F0               [24]  817 	movx	@dptr,a
                                    818 ;	src/main.c:105: buffer_t *header = malloc(sizeof(buffer_t));
      002174 90 00 0B         [24]  819 	mov	dptr,#0x000b
      002177 12 3D DC         [24]  820 	lcall	_malloc
      00217A AE 82            [24]  821 	mov	r6,dpl
      00217C AD 83            [24]  822 	mov	r5,dph
      00217E 7F 00            [12]  823 	mov	r7,#0x00
                                    824 ;	src/main.c:106: if (header == NULL)
      002180 EE               [12]  825 	mov	a,r6
      002181 4D               [12]  826 	orl	a,r5
                                    827 ;	src/main.c:108: return NULL;
      002182 70 06            [24]  828 	jnz	00102$
      002184 90 00 00         [24]  829 	mov	dptr,#0x0000
      002187 F5 F0            [12]  830 	mov	b,a
      002189 22               [24]  831 	ret
      00218A                        832 00102$:
                                    833 ;	src/main.c:110: header->size = size;
      00218A 74 04            [12]  834 	mov	a,#0x04
      00218C 2E               [12]  835 	add	a,r6
      00218D FA               [12]  836 	mov	r2,a
      00218E E4               [12]  837 	clr	a
      00218F 3D               [12]  838 	addc	a,r5
      002190 FB               [12]  839 	mov	r3,a
      002191 8F 04            [24]  840 	mov	ar4,r7
      002193 90 00 1B         [24]  841 	mov	dptr,#_alloc_new_buffer_size_65536_84
      002196 E0               [24]  842 	movx	a,@dptr
      002197 F8               [12]  843 	mov	r0,a
      002198 A3               [24]  844 	inc	dptr
      002199 E0               [24]  845 	movx	a,@dptr
      00219A F9               [12]  846 	mov	r1,a
      00219B 8A 82            [24]  847 	mov	dpl,r2
      00219D 8B 83            [24]  848 	mov	dph,r3
      00219F 8C F0            [24]  849 	mov	b,r4
      0021A1 E8               [12]  850 	mov	a,r0
      0021A2 12 3D 85         [24]  851 	lcall	__gptrput
      0021A5 A3               [24]  852 	inc	dptr
      0021A6 E9               [12]  853 	mov	a,r1
      0021A7 12 3D 85         [24]  854 	lcall	__gptrput
                                    855 ;	src/main.c:111: header->buffer = malloc(size);
      0021AA 88 82            [24]  856 	mov	dpl,r0
      0021AC 89 83            [24]  857 	mov	dph,r1
      0021AE C0 07            [24]  858 	push	ar7
      0021B0 C0 06            [24]  859 	push	ar6
      0021B2 C0 05            [24]  860 	push	ar5
      0021B4 12 3D DC         [24]  861 	lcall	_malloc
      0021B7 AB 82            [24]  862 	mov	r3,dpl
      0021B9 AC 83            [24]  863 	mov	r4,dph
      0021BB D0 05            [24]  864 	pop	ar5
      0021BD D0 06            [24]  865 	pop	ar6
      0021BF D0 07            [24]  866 	pop	ar7
      0021C1 8E 82            [24]  867 	mov	dpl,r6
      0021C3 8D 83            [24]  868 	mov	dph,r5
      0021C5 8F F0            [24]  869 	mov	b,r7
      0021C7 EB               [12]  870 	mov	a,r3
      0021C8 12 3D 85         [24]  871 	lcall	__gptrput
      0021CB A3               [24]  872 	inc	dptr
      0021CC EC               [12]  873 	mov	a,r4
      0021CD 12 3D 85         [24]  874 	lcall	__gptrput
                                    875 ;	src/main.c:112: if (header->buffer == NULL)
      0021D0 EB               [12]  876 	mov	a,r3
      0021D1 4C               [12]  877 	orl	a,r4
      0021D2 70 16            [24]  878 	jnz	00104$
                                    879 ;	src/main.c:114: free(header);
      0021D4 8E 02            [24]  880 	mov	ar2,r6
      0021D6 8D 03            [24]  881 	mov	ar3,r5
      0021D8 8F 04            [24]  882 	mov	ar4,r7
      0021DA 8A 82            [24]  883 	mov	dpl,r2
      0021DC 8B 83            [24]  884 	mov	dph,r3
      0021DE 8C F0            [24]  885 	mov	b,r4
      0021E0 12 3A 6E         [24]  886 	lcall	_free
                                    887 ;	src/main.c:115: return NULL;
      0021E3 90 00 00         [24]  888 	mov	dptr,#0x0000
      0021E6 75 F0 00         [24]  889 	mov	b,#0x00
      0021E9 22               [24]  890 	ret
      0021EA                        891 00104$:
                                    892 ;	src/main.c:117: initialize_default_elements(header);
      0021EA 8E 82            [24]  893 	mov	dpl,r6
      0021EC 8D 83            [24]  894 	mov	dph,r5
      0021EE 8F F0            [24]  895 	mov	b,r7
      0021F0 C0 07            [24]  896 	push	ar7
      0021F2 C0 06            [24]  897 	push	ar6
      0021F4 C0 05            [24]  898 	push	ar5
      0021F6 12 20 C8         [24]  899 	lcall	_initialize_default_elements
      0021F9 D0 05            [24]  900 	pop	ar5
      0021FB D0 06            [24]  901 	pop	ar6
      0021FD D0 07            [24]  902 	pop	ar7
                                    903 ;	src/main.c:118: return header; 
      0021FF 8E 82            [24]  904 	mov	dpl,r6
      002201 8D 83            [24]  905 	mov	dph,r5
      002203 8F F0            [24]  906 	mov	b,r7
                                    907 ;	src/main.c:119: }
      002205 22               [24]  908 	ret
                                    909 ;------------------------------------------------------------
                                    910 ;Allocation info for local variables in function 'initialize_buffers'
                                    911 ;------------------------------------------------------------
                                    912 ;sloc0                     Allocated with name '_initialize_buffers_sloc0_1_0'
                                    913 ;sloc1                     Allocated with name '_initialize_buffers_sloc1_1_0'
                                    914 ;sloc2                     Allocated with name '_initialize_buffers_sloc2_1_0'
                                    915 ;sloc3                     Allocated with name '_initialize_buffers_sloc3_1_0'
                                    916 ;sloc4                     Allocated with name '_initialize_buffers_sloc4_1_0'
                                    917 ;sloc5                     Allocated with name '_initialize_buffers_sloc5_1_0'
                                    918 ;student_number            Allocated with name '_initialize_buffers_student_number_65537_89'
                                    919 ;max_user_input            Allocated with name '_initialize_buffers_max_user_input_65538_92'
                                    920 ;user_buffer_size          Allocated with name '_initialize_buffers_user_buffer_size_65538_92'
                                    921 ;i                         Allocated with name '_initialize_buffers_i_196610_94'
                                    922 ;i                         Allocated with name '_initialize_buffers_i_196610_98'
                                    923 ;new_buffer                Allocated with name '_initialize_buffers_new_buffer_262146_99'
                                    924 ;buffer_4                  Allocated with name '_initialize_buffers_buffer_4_131075_102'
                                    925 ;buffer_5                  Allocated with name '_initialize_buffers_buffer_5_131076_104'
                                    926 ;total_heap_sz             Allocated with name '_initialize_buffers_total_heap_sz_65539_106'
                                    927 ;i                         Allocated with name '_initialize_buffers_i_65539_106'
                                    928 ;curr                      Allocated with name '_initialize_buffers_curr_65540_110'
                                    929 ;------------------------------------------------------------
                                    930 ;	src/main.c:122: void initialize_buffers()
                                    931 ;	-----------------------------------------
                                    932 ;	 function initialize_buffers
                                    933 ;	-----------------------------------------
      002206                        934 _initialize_buffers:
                                    935 ;	src/main.c:124: dynamic_buffers_list.head = NULL;
      002206 90 20 BA         [24]  936 	mov	dptr,#_dynamic_buffers_list
      002209 E4               [12]  937 	clr	a
      00220A F0               [24]  938 	movx	@dptr,a
      00220B A3               [24]  939 	inc	dptr
      00220C F0               [24]  940 	movx	@dptr,a
      00220D A3               [24]  941 	inc	dptr
      00220E F0               [24]  942 	movx	@dptr,a
                                    943 ;	src/main.c:126: while (true) 
      00220F                        944 00105$:
                                    945 ;	src/main.c:128: printf("\r\nPlease enter the last two digits of your ID:");
      00220F 74 FB            [12]  946 	mov	a,#___str_0
      002211 C0 E0            [24]  947 	push	acc
      002213 74 49            [12]  948 	mov	a,#(___str_0 >> 8)
      002215 C0 E0            [24]  949 	push	acc
      002217 74 80            [12]  950 	mov	a,#0x80
      002219 C0 E0            [24]  951 	push	acc
      00221B 12 3F B3         [24]  952 	lcall	_printf
      00221E 15 81            [12]  953 	dec	sp
      002220 15 81            [12]  954 	dec	sp
      002222 15 81            [12]  955 	dec	sp
                                    956 ;	src/main.c:129: get_string();
      002224 12 35 53         [24]  957 	lcall	_get_string
                                    958 ;	src/main.c:130: student_number = atoi(get_input_buffer());
      002227 12 35 4C         [24]  959 	lcall	_get_input_buffer
      00222A 12 3C 61         [24]  960 	lcall	_atoi
      00222D 85 82 25         [24]  961 	mov	_initialize_buffers_sloc2_1_0,dpl
                                    962 ;	src/main.c:131: if (!(student_number < 0 || student_number > MAX_STUDENT_NUMBER))
      002230 E5 83            [12]  963 	mov	a,dph
      002232 F5 26            [12]  964 	mov	(_initialize_buffers_sloc2_1_0 + 1),a
      002234 20 E7 D8         [24]  965 	jb	acc.7,00105$
      002237 C3               [12]  966 	clr	c
      002238 74 63            [12]  967 	mov	a,#0x63
      00223A 95 25            [12]  968 	subb	a,_initialize_buffers_sloc2_1_0
      00223C 74 80            [12]  969 	mov	a,#(0x00 ^ 0x80)
      00223E 85 26 F0         [24]  970 	mov	b,(_initialize_buffers_sloc2_1_0 + 1)
      002241 63 F0 80         [24]  971 	xrl	b,#0x80
      002244 95 F0            [12]  972 	subb	a,b
      002246 40 C7            [24]  973 	jc	00105$
                                    974 ;	src/main.c:137: size_t max_user_input = USER_BUFFER_MAX;
      002248 90 00 1D         [24]  975 	mov	dptr,#_initialize_buffers_max_user_input_65538_92
      00224B E4               [12]  976 	clr	a
      00224C F0               [24]  977 	movx	@dptr,a
      00224D 74 04            [12]  978 	mov	a,#0x04
      00224F A3               [24]  979 	inc	dptr
      002250 F0               [24]  980 	movx	@dptr,a
                                    981 ;	src/main.c:141: memset(static_buffers, 0, BUFFER_ALWAYS_HELD_COUNT * sizeof(buffer_t));
      002251 90 20 6F         [24]  982 	mov	dptr,#_memset_PARM_2
      002254 E4               [12]  983 	clr	a
      002255 F0               [24]  984 	movx	@dptr,a
      002256 90 20 70         [24]  985 	mov	dptr,#_memset_PARM_3
      002259 74 16            [12]  986 	mov	a,#0x16
      00225B F0               [24]  987 	movx	@dptr,a
      00225C E4               [12]  988 	clr	a
      00225D A3               [24]  989 	inc	dptr
      00225E F0               [24]  990 	movx	@dptr,a
      00225F 90 00 01         [24]  991 	mov	dptr,#_static_buffers
      002262 75 F0 00         [24]  992 	mov	b,#0x00
      002265 12 3C 39         [24]  993 	lcall	_memset
                                    994 ;	src/main.c:142: while(true)
      002268 74 02            [12]  995 	mov	a,#0x02
      00226A 25 25            [12]  996 	add	a,_initialize_buffers_sloc2_1_0
      00226C FC               [12]  997 	mov	r4,a
      00226D E4               [12]  998 	clr	a
      00226E 35 26            [12]  999 	addc	a,(_initialize_buffers_sloc2_1_0 + 1)
      002270 FD               [12] 1000 	mov	r5,a
      002271                       1001 00121$:
                                   1002 ;	src/main.c:144: user_buffer_size = get_user_buffer_sz(max_user_input);
      002271 90 00 1D         [24] 1003 	mov	dptr,#_initialize_buffers_max_user_input_65538_92
      002274 E0               [24] 1004 	movx	a,@dptr
      002275 FA               [12] 1005 	mov	r2,a
      002276 A3               [24] 1006 	inc	dptr
      002277 E0               [24] 1007 	movx	a,@dptr
      002278 FB               [12] 1008 	mov	r3,a
      002279 8A 82            [24] 1009 	mov	dpl,r2
      00227B 8B 83            [24] 1010 	mov	dph,r3
      00227D C0 05            [24] 1011 	push	ar5
      00227F C0 04            [24] 1012 	push	ar4
      002281 12 2B AC         [24] 1013 	lcall	_get_user_buffer_sz
      002284 AA 82            [24] 1014 	mov	r2,dpl
      002286 AB 83            [24] 1015 	mov	r3,dph
      002288 D0 04            [24] 1016 	pop	ar4
      00228A D0 05            [24] 1017 	pop	ar5
                                   1018 ;	src/main.c:145: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00228C 78 00            [12] 1019 	mov	r0,#0x00
      00228E 79 00            [12] 1020 	mov	r1,#0x00
      002290                       1021 00132$:
      002290 C3               [12] 1022 	clr	c
      002291 E8               [12] 1023 	mov	a,r0
      002292 94 02            [12] 1024 	subb	a,#0x02
      002294 E9               [12] 1025 	mov	a,r1
      002295 64 80            [12] 1026 	xrl	a,#0x80
      002297 94 80            [12] 1027 	subb	a,#0x80
      002299 40 03            [24] 1028 	jc	00217$
      00229B 02 24 1D         [24] 1029 	ljmp	00150$
      00229E                       1030 00217$:
                                   1031 ;	src/main.c:148: static_buffers[i].buffer = malloc(user_buffer_size);
      00229E C0 04            [24] 1032 	push	ar4
      0022A0 C0 05            [24] 1033 	push	ar5
      0022A2 90 20 81         [24] 1034 	mov	dptr,#__mulint_PARM_2
      0022A5 E8               [12] 1035 	mov	a,r0
      0022A6 F0               [24] 1036 	movx	@dptr,a
      0022A7 E9               [12] 1037 	mov	a,r1
      0022A8 A3               [24] 1038 	inc	dptr
      0022A9 F0               [24] 1039 	movx	@dptr,a
      0022AA 90 00 0B         [24] 1040 	mov	dptr,#0x000b
      0022AD C0 05            [24] 1041 	push	ar5
      0022AF C0 04            [24] 1042 	push	ar4
      0022B1 C0 03            [24] 1043 	push	ar3
      0022B3 C0 02            [24] 1044 	push	ar2
      0022B5 C0 01            [24] 1045 	push	ar1
      0022B7 C0 00            [24] 1046 	push	ar0
      0022B9 12 3F 45         [24] 1047 	lcall	__mulint
      0022BC 85 82 21         [24] 1048 	mov	_initialize_buffers_sloc0_1_0,dpl
      0022BF 85 83 22         [24] 1049 	mov	(_initialize_buffers_sloc0_1_0 + 1),dph
      0022C2 D0 00            [24] 1050 	pop	ar0
      0022C4 D0 01            [24] 1051 	pop	ar1
      0022C6 D0 02            [24] 1052 	pop	ar2
      0022C8 D0 03            [24] 1053 	pop	ar3
      0022CA D0 04            [24] 1054 	pop	ar4
      0022CC D0 05            [24] 1055 	pop	ar5
      0022CE E5 21            [12] 1056 	mov	a,_initialize_buffers_sloc0_1_0
      0022D0 24 01            [12] 1057 	add	a,#_static_buffers
      0022D2 F5 23            [12] 1058 	mov	_initialize_buffers_sloc1_1_0,a
      0022D4 E5 22            [12] 1059 	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
      0022D6 34 00            [12] 1060 	addc	a,#(_static_buffers >> 8)
      0022D8 F5 24            [12] 1061 	mov	(_initialize_buffers_sloc1_1_0 + 1),a
      0022DA 8A 82            [24] 1062 	mov	dpl,r2
      0022DC 8B 83            [24] 1063 	mov	dph,r3
      0022DE C0 03            [24] 1064 	push	ar3
      0022E0 C0 02            [24] 1065 	push	ar2
      0022E2 C0 01            [24] 1066 	push	ar1
      0022E4 C0 00            [24] 1067 	push	ar0
      0022E6 12 3D DC         [24] 1068 	lcall	_malloc
      0022E9 AC 82            [24] 1069 	mov	r4,dpl
      0022EB AD 83            [24] 1070 	mov	r5,dph
      0022ED D0 00            [24] 1071 	pop	ar0
      0022EF D0 01            [24] 1072 	pop	ar1
      0022F1 D0 02            [24] 1073 	pop	ar2
      0022F3 D0 03            [24] 1074 	pop	ar3
      0022F5 85 23 82         [24] 1075 	mov	dpl,_initialize_buffers_sloc1_1_0
      0022F8 85 24 83         [24] 1076 	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
      0022FB EC               [12] 1077 	mov	a,r4
      0022FC F0               [24] 1078 	movx	@dptr,a
      0022FD ED               [12] 1079 	mov	a,r5
      0022FE A3               [24] 1080 	inc	dptr
      0022FF F0               [24] 1081 	movx	@dptr,a
                                   1082 ;	src/main.c:150: printf("\r\n static_buffers[%d].buffer %p", i, static_buffers[i].buffer);
      002300 7F 00            [12] 1083 	mov	r7,#0x00
      002302 C0 05            [24] 1084 	push	ar5
      002304 C0 04            [24] 1085 	push	ar4
      002306 C0 03            [24] 1086 	push	ar3
      002308 C0 02            [24] 1087 	push	ar2
      00230A C0 01            [24] 1088 	push	ar1
      00230C C0 00            [24] 1089 	push	ar0
      00230E C0 04            [24] 1090 	push	ar4
      002310 C0 05            [24] 1091 	push	ar5
      002312 C0 07            [24] 1092 	push	ar7
      002314 C0 00            [24] 1093 	push	ar0
      002316 C0 01            [24] 1094 	push	ar1
      002318 74 2A            [12] 1095 	mov	a,#___str_1
      00231A C0 E0            [24] 1096 	push	acc
      00231C 74 4A            [12] 1097 	mov	a,#(___str_1 >> 8)
      00231E C0 E0            [24] 1098 	push	acc
      002320 74 80            [12] 1099 	mov	a,#0x80
      002322 C0 E0            [24] 1100 	push	acc
      002324 12 3F B3         [24] 1101 	lcall	_printf
      002327 E5 81            [12] 1102 	mov	a,sp
      002329 24 F8            [12] 1103 	add	a,#0xf8
      00232B F5 81            [12] 1104 	mov	sp,a
      00232D D0 00            [24] 1105 	pop	ar0
      00232F D0 01            [24] 1106 	pop	ar1
      002331 D0 02            [24] 1107 	pop	ar2
      002333 D0 03            [24] 1108 	pop	ar3
      002335 D0 04            [24] 1109 	pop	ar4
      002337 D0 05            [24] 1110 	pop	ar5
                                   1111 ;	src/main.c:151: if(static_buffers[i].buffer == NULL)
      002339 85 23 82         [24] 1112 	mov	dpl,_initialize_buffers_sloc1_1_0
      00233C 85 24 83         [24] 1113 	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
      00233F E0               [24] 1114 	movx	a,@dptr
      002340 FE               [12] 1115 	mov	r6,a
      002341 A3               [24] 1116 	inc	dptr
      002342 E0               [24] 1117 	movx	a,@dptr
      002343 FF               [12] 1118 	mov	r7,a
      002344 D0 05            [24] 1119 	pop	ar5
      002346 D0 04            [24] 1120 	pop	ar4
      002348 EE               [12] 1121 	mov	a,r6
      002349 4F               [12] 1122 	orl	a,r7
      00234A 70 3B            [24] 1123 	jnz	00108$
                                   1124 ;	src/main.c:153: free_all_buffers();
      00234C C0 05            [24] 1125 	push	ar5
      00234E C0 04            [24] 1126 	push	ar4
      002350 C0 03            [24] 1127 	push	ar3
      002352 C0 02            [24] 1128 	push	ar2
      002354 12 2C 06         [24] 1129 	lcall	_free_all_buffers
                                   1130 ;	src/main.c:154: printf(BUFFER_SZ_TOO_BIG);
      002357 74 4A            [12] 1131 	mov	a,#___str_2
      002359 C0 E0            [24] 1132 	push	acc
      00235B 74 4A            [12] 1133 	mov	a,#(___str_2 >> 8)
      00235D C0 E0            [24] 1134 	push	acc
      00235F 74 80            [12] 1135 	mov	a,#0x80
      002361 C0 E0            [24] 1136 	push	acc
      002363 12 3F B3         [24] 1137 	lcall	_printf
      002366 15 81            [12] 1138 	dec	sp
      002368 15 81            [12] 1139 	dec	sp
      00236A 15 81            [12] 1140 	dec	sp
      00236C D0 02            [24] 1141 	pop	ar2
      00236E D0 03            [24] 1142 	pop	ar3
      002370 D0 04            [24] 1143 	pop	ar4
      002372 D0 05            [24] 1144 	pop	ar5
                                   1145 ;	src/main.c:155: max_user_input = user_buffer_size-1;
      002374 EA               [12] 1146 	mov	a,r2
      002375 24 FF            [12] 1147 	add	a,#0xff
      002377 FE               [12] 1148 	mov	r6,a
      002378 EB               [12] 1149 	mov	a,r3
      002379 34 FF            [12] 1150 	addc	a,#0xff
      00237B FF               [12] 1151 	mov	r7,a
      00237C 90 00 1D         [24] 1152 	mov	dptr,#_initialize_buffers_max_user_input_65538_92
      00237F EE               [12] 1153 	mov	a,r6
      002380 F0               [24] 1154 	movx	@dptr,a
      002381 EF               [12] 1155 	mov	a,r7
      002382 A3               [24] 1156 	inc	dptr
      002383 F0               [24] 1157 	movx	@dptr,a
                                   1158 ;	src/main.c:156: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
      002384 02 22 71         [24] 1159 	ljmp	00121$
      002387                       1160 00108$:
                                   1161 ;	src/main.c:158: static_buffers[i].size = (size_t) user_buffer_size;
      002387 C0 04            [24] 1162 	push	ar4
      002389 C0 05            [24] 1163 	push	ar5
      00238B E5 21            [12] 1164 	mov	a,_initialize_buffers_sloc0_1_0
      00238D 24 01            [12] 1165 	add	a,#_static_buffers
      00238F F5 23            [12] 1166 	mov	_initialize_buffers_sloc1_1_0,a
      002391 E5 22            [12] 1167 	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
      002393 34 00            [12] 1168 	addc	a,#(_static_buffers >> 8)
      002395 F5 24            [12] 1169 	mov	(_initialize_buffers_sloc1_1_0 + 1),a
      002397 85 23 82         [24] 1170 	mov	dpl,_initialize_buffers_sloc1_1_0
      00239A 85 24 83         [24] 1171 	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
      00239D A3               [24] 1172 	inc	dptr
      00239E A3               [24] 1173 	inc	dptr
      00239F A3               [24] 1174 	inc	dptr
      0023A0 A3               [24] 1175 	inc	dptr
      0023A1 EA               [12] 1176 	mov	a,r2
      0023A2 F0               [24] 1177 	movx	@dptr,a
      0023A3 EB               [12] 1178 	mov	a,r3
      0023A4 A3               [24] 1179 	inc	dptr
      0023A5 F0               [24] 1180 	movx	@dptr,a
                                   1181 ;	src/main.c:159: initialize_default_elements(&static_buffers[i]);
      0023A6 AC 23            [24] 1182 	mov	r4,_initialize_buffers_sloc1_1_0
      0023A8 AD 24            [24] 1183 	mov	r5,(_initialize_buffers_sloc1_1_0 + 1)
      0023AA 7F 00            [12] 1184 	mov	r7,#0x00
      0023AC 8C 82            [24] 1185 	mov	dpl,r4
      0023AE 8D 83            [24] 1186 	mov	dph,r5
      0023B0 8F F0            [24] 1187 	mov	b,r7
      0023B2 C0 05            [24] 1188 	push	ar5
      0023B4 C0 04            [24] 1189 	push	ar4
      0023B6 C0 03            [24] 1190 	push	ar3
      0023B8 C0 02            [24] 1191 	push	ar2
      0023BA C0 01            [24] 1192 	push	ar1
      0023BC C0 00            [24] 1193 	push	ar0
      0023BE 12 20 C8         [24] 1194 	lcall	_initialize_default_elements
      0023C1 D0 00            [24] 1195 	pop	ar0
      0023C3 D0 01            [24] 1196 	pop	ar1
      0023C5 D0 02            [24] 1197 	pop	ar2
      0023C7 D0 03            [24] 1198 	pop	ar3
      0023C9 D0 04            [24] 1199 	pop	ar4
      0023CB D0 05            [24] 1200 	pop	ar5
                                   1201 ;	src/main.c:160: printf("\r\n static_buffers[%d].buffer %p", i, static_buffers[i].buffer);
      0023CD 85 23 82         [24] 1202 	mov	dpl,_initialize_buffers_sloc1_1_0
      0023D0 85 24 83         [24] 1203 	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
      0023D3 E0               [24] 1204 	movx	a,@dptr
      0023D4 FE               [12] 1205 	mov	r6,a
      0023D5 A3               [24] 1206 	inc	dptr
      0023D6 E0               [24] 1207 	movx	a,@dptr
      0023D7 FF               [12] 1208 	mov	r7,a
      0023D8 7D 00            [12] 1209 	mov	r5,#0x00
      0023DA C0 05            [24] 1210 	push	ar5
      0023DC C0 04            [24] 1211 	push	ar4
      0023DE C0 03            [24] 1212 	push	ar3
      0023E0 C0 02            [24] 1213 	push	ar2
      0023E2 C0 01            [24] 1214 	push	ar1
      0023E4 C0 00            [24] 1215 	push	ar0
      0023E6 C0 06            [24] 1216 	push	ar6
      0023E8 C0 07            [24] 1217 	push	ar7
      0023EA C0 05            [24] 1218 	push	ar5
      0023EC C0 00            [24] 1219 	push	ar0
      0023EE C0 01            [24] 1220 	push	ar1
      0023F0 74 2A            [12] 1221 	mov	a,#___str_1
      0023F2 C0 E0            [24] 1222 	push	acc
      0023F4 74 4A            [12] 1223 	mov	a,#(___str_1 >> 8)
      0023F6 C0 E0            [24] 1224 	push	acc
      0023F8 74 80            [12] 1225 	mov	a,#0x80
      0023FA C0 E0            [24] 1226 	push	acc
      0023FC 12 3F B3         [24] 1227 	lcall	_printf
      0023FF E5 81            [12] 1228 	mov	a,sp
      002401 24 F8            [12] 1229 	add	a,#0xf8
      002403 F5 81            [12] 1230 	mov	sp,a
      002405 D0 00            [24] 1231 	pop	ar0
      002407 D0 01            [24] 1232 	pop	ar1
      002409 D0 02            [24] 1233 	pop	ar2
      00240B D0 03            [24] 1234 	pop	ar3
      00240D D0 04            [24] 1235 	pop	ar4
      00240F D0 05            [24] 1236 	pop	ar5
                                   1237 ;	src/main.c:145: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002411 08               [12] 1238 	inc	r0
      002412 B8 00 01         [24] 1239 	cjne	r0,#0x00,00219$
      002415 09               [12] 1240 	inc	r1
      002416                       1241 00219$:
      002416 D0 05            [24] 1242 	pop	ar5
      002418 D0 04            [24] 1243 	pop	ar4
      00241A 02 22 90         [24] 1244 	ljmp	00132$
                                   1245 ;	src/main.c:165: for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
      00241D                       1246 00150$:
      00241D 7E 00            [12] 1247 	mov	r6,#0x00
      00241F 7F 00            [12] 1248 	mov	r7,#0x00
      002421                       1249 00135$:
      002421 C3               [12] 1250 	clr	c
      002422 EE               [12] 1251 	mov	a,r6
      002423 94 04            [12] 1252 	subb	a,#0x04
      002425 EF               [12] 1253 	mov	a,r7
      002426 64 80            [12] 1254 	xrl	a,#0x80
      002428 94 80            [12] 1255 	subb	a,#0x80
      00242A 40 03            [24] 1256 	jc	00220$
      00242C 02 24 CF         [24] 1257 	ljmp	00114$
      00242F                       1258 00220$:
                                   1259 ;	src/main.c:167: buffer_t *new_buffer = alloc_new_buffer(user_buffer_size);
      00242F 8A 82            [24] 1260 	mov	dpl,r2
      002431 8B 83            [24] 1261 	mov	dph,r3
      002433 C0 07            [24] 1262 	push	ar7
      002435 C0 06            [24] 1263 	push	ar6
      002437 C0 05            [24] 1264 	push	ar5
      002439 C0 04            [24] 1265 	push	ar4
      00243B C0 03            [24] 1266 	push	ar3
      00243D C0 02            [24] 1267 	push	ar2
      00243F 12 21 69         [24] 1268 	lcall	_alloc_new_buffer
      002442 85 82 27         [24] 1269 	mov	_initialize_buffers_sloc3_1_0,dpl
      002445 85 83 28         [24] 1270 	mov	(_initialize_buffers_sloc3_1_0 + 1),dph
      002448 85 F0 29         [24] 1271 	mov	(_initialize_buffers_sloc3_1_0 + 2),b
      00244B D0 02            [24] 1272 	pop	ar2
      00244D D0 03            [24] 1273 	pop	ar3
      00244F D0 04            [24] 1274 	pop	ar4
      002451 D0 05            [24] 1275 	pop	ar5
      002453 D0 06            [24] 1276 	pop	ar6
      002455 D0 07            [24] 1277 	pop	ar7
                                   1278 ;	src/main.c:168: if (new_buffer == NULL)
      002457 E5 27            [12] 1279 	mov	a,_initialize_buffers_sloc3_1_0
      002459 45 28            [12] 1280 	orl	a,(_initialize_buffers_sloc3_1_0 + 1)
      00245B 70 3B            [24] 1281 	jnz	00112$
                                   1282 ;	src/main.c:170: free_all_buffers();
      00245D C0 05            [24] 1283 	push	ar5
      00245F C0 04            [24] 1284 	push	ar4
      002461 C0 03            [24] 1285 	push	ar3
      002463 C0 02            [24] 1286 	push	ar2
      002465 12 2C 06         [24] 1287 	lcall	_free_all_buffers
                                   1288 ;	src/main.c:171: printf(BUFFER_SZ_TOO_BIG);
      002468 74 4A            [12] 1289 	mov	a,#___str_2
      00246A C0 E0            [24] 1290 	push	acc
      00246C 74 4A            [12] 1291 	mov	a,#(___str_2 >> 8)
      00246E C0 E0            [24] 1292 	push	acc
      002470 74 80            [12] 1293 	mov	a,#0x80
      002472 C0 E0            [24] 1294 	push	acc
      002474 12 3F B3         [24] 1295 	lcall	_printf
      002477 15 81            [12] 1296 	dec	sp
      002479 15 81            [12] 1297 	dec	sp
      00247B 15 81            [12] 1298 	dec	sp
      00247D D0 02            [24] 1299 	pop	ar2
      00247F D0 03            [24] 1300 	pop	ar3
      002481 D0 04            [24] 1301 	pop	ar4
      002483 D0 05            [24] 1302 	pop	ar5
                                   1303 ;	src/main.c:172: max_user_input = user_buffer_size-1;
      002485 EA               [12] 1304 	mov	a,r2
      002486 24 FF            [12] 1305 	add	a,#0xff
      002488 F8               [12] 1306 	mov	r0,a
      002489 EB               [12] 1307 	mov	a,r3
      00248A 34 FF            [12] 1308 	addc	a,#0xff
      00248C F9               [12] 1309 	mov	r1,a
      00248D 90 00 1D         [24] 1310 	mov	dptr,#_initialize_buffers_max_user_input_65538_92
      002490 E8               [12] 1311 	mov	a,r0
      002491 F0               [24] 1312 	movx	@dptr,a
      002492 E9               [12] 1313 	mov	a,r1
      002493 A3               [24] 1314 	inc	dptr
      002494 F0               [24] 1315 	movx	@dptr,a
                                   1316 ;	src/main.c:173: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
      002495 02 22 71         [24] 1317 	ljmp	00121$
      002498                       1318 00112$:
                                   1319 ;	src/main.c:177: append_to_buffer_list(&dynamic_buffers_list, new_buffer);
      002498 90 20 41         [24] 1320 	mov	dptr,#_append_to_buffer_list_PARM_2
      00249B E5 27            [12] 1321 	mov	a,_initialize_buffers_sloc3_1_0
      00249D F0               [24] 1322 	movx	@dptr,a
      00249E E5 28            [12] 1323 	mov	a,(_initialize_buffers_sloc3_1_0 + 1)
      0024A0 A3               [24] 1324 	inc	dptr
      0024A1 F0               [24] 1325 	movx	@dptr,a
      0024A2 E5 29            [12] 1326 	mov	a,(_initialize_buffers_sloc3_1_0 + 2)
      0024A4 A3               [24] 1327 	inc	dptr
      0024A5 F0               [24] 1328 	movx	@dptr,a
      0024A6 90 20 BA         [24] 1329 	mov	dptr,#_dynamic_buffers_list
      0024A9 75 F0 00         [24] 1330 	mov	b,#0x00
      0024AC C0 07            [24] 1331 	push	ar7
      0024AE C0 06            [24] 1332 	push	ar6
      0024B0 C0 05            [24] 1333 	push	ar5
      0024B2 C0 04            [24] 1334 	push	ar4
      0024B4 C0 03            [24] 1335 	push	ar3
      0024B6 C0 02            [24] 1336 	push	ar2
      0024B8 12 36 98         [24] 1337 	lcall	_append_to_buffer_list
      0024BB D0 02            [24] 1338 	pop	ar2
      0024BD D0 03            [24] 1339 	pop	ar3
      0024BF D0 04            [24] 1340 	pop	ar4
      0024C1 D0 05            [24] 1341 	pop	ar5
      0024C3 D0 06            [24] 1342 	pop	ar6
      0024C5 D0 07            [24] 1343 	pop	ar7
                                   1344 ;	src/main.c:165: for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
      0024C7 0E               [12] 1345 	inc	r6
      0024C8 BE 00 01         [24] 1346 	cjne	r6,#0x00,00222$
      0024CB 0F               [12] 1347 	inc	r7
      0024CC                       1348 00222$:
      0024CC 02 24 21         [24] 1349 	ljmp	00135$
      0024CF                       1350 00114$:
                                   1351 ;	src/main.c:181: buffer_t *buffer_4 = alloc_new_buffer((size_t) 10 * (student_number + 2));
      0024CF 90 20 81         [24] 1352 	mov	dptr,#__mulint_PARM_2
      0024D2 EC               [12] 1353 	mov	a,r4
      0024D3 F0               [24] 1354 	movx	@dptr,a
      0024D4 ED               [12] 1355 	mov	a,r5
      0024D5 A3               [24] 1356 	inc	dptr
      0024D6 F0               [24] 1357 	movx	@dptr,a
      0024D7 90 00 0A         [24] 1358 	mov	dptr,#0x000a
      0024DA C0 05            [24] 1359 	push	ar5
      0024DC C0 04            [24] 1360 	push	ar4
      0024DE C0 03            [24] 1361 	push	ar3
      0024E0 C0 02            [24] 1362 	push	ar2
      0024E2 12 3F 45         [24] 1363 	lcall	__mulint
      0024E5 12 21 69         [24] 1364 	lcall	_alloc_new_buffer
      0024E8 A9 82            [24] 1365 	mov	r1,dpl
      0024EA AE 83            [24] 1366 	mov	r6,dph
      0024EC D0 02            [24] 1367 	pop	ar2
      0024EE D0 03            [24] 1368 	pop	ar3
      0024F0 D0 04            [24] 1369 	pop	ar4
      0024F2 D0 05            [24] 1370 	pop	ar5
                                   1371 ;	src/main.c:183: if (buffer_4 == NULL)
      0024F4 E9               [12] 1372 	mov	a,r1
      0024F5 4E               [12] 1373 	orl	a,r6
      0024F6 70 3B            [24] 1374 	jnz	00116$
                                   1375 ;	src/main.c:185: free_all_buffers();
      0024F8 C0 05            [24] 1376 	push	ar5
      0024FA C0 04            [24] 1377 	push	ar4
      0024FC C0 03            [24] 1378 	push	ar3
      0024FE C0 02            [24] 1379 	push	ar2
      002500 12 2C 06         [24] 1380 	lcall	_free_all_buffers
                                   1381 ;	src/main.c:186: printf(BUFFER_SZ_TOO_BIG);
      002503 74 4A            [12] 1382 	mov	a,#___str_2
      002505 C0 E0            [24] 1383 	push	acc
      002507 74 4A            [12] 1384 	mov	a,#(___str_2 >> 8)
      002509 C0 E0            [24] 1385 	push	acc
      00250B 74 80            [12] 1386 	mov	a,#0x80
      00250D C0 E0            [24] 1387 	push	acc
      00250F 12 3F B3         [24] 1388 	lcall	_printf
      002512 15 81            [12] 1389 	dec	sp
      002514 15 81            [12] 1390 	dec	sp
      002516 15 81            [12] 1391 	dec	sp
      002518 D0 02            [24] 1392 	pop	ar2
      00251A D0 03            [24] 1393 	pop	ar3
      00251C D0 04            [24] 1394 	pop	ar4
      00251E D0 05            [24] 1395 	pop	ar5
                                   1396 ;	src/main.c:187: max_user_input = user_buffer_size-1;
      002520 EA               [12] 1397 	mov	a,r2
      002521 24 FF            [12] 1398 	add	a,#0xff
      002523 FE               [12] 1399 	mov	r6,a
      002524 EB               [12] 1400 	mov	a,r3
      002525 34 FF            [12] 1401 	addc	a,#0xff
      002527 FF               [12] 1402 	mov	r7,a
      002528 90 00 1D         [24] 1403 	mov	dptr,#_initialize_buffers_max_user_input_65538_92
      00252B EE               [12] 1404 	mov	a,r6
      00252C F0               [24] 1405 	movx	@dptr,a
      00252D EF               [12] 1406 	mov	a,r7
      00252E A3               [24] 1407 	inc	dptr
      00252F F0               [24] 1408 	movx	@dptr,a
                                   1409 ;	src/main.c:188: continue;
      002530 02 22 71         [24] 1410 	ljmp	00121$
      002533                       1411 00116$:
                                   1412 ;	src/main.c:191: buffer_t *buffer_5 = alloc_new_buffer((size_t) 2 * user_buffer_size);
      002533 EA               [12] 1413 	mov	a,r2
      002534 2A               [12] 1414 	add	a,r2
      002535 FE               [12] 1415 	mov	r6,a
      002536 EB               [12] 1416 	mov	a,r3
      002537 33               [12] 1417 	rlc	a
      002538 FF               [12] 1418 	mov	r7,a
      002539 8E 82            [24] 1419 	mov	dpl,r6
      00253B 8F 83            [24] 1420 	mov	dph,r7
      00253D C0 05            [24] 1421 	push	ar5
      00253F C0 04            [24] 1422 	push	ar4
      002541 C0 03            [24] 1423 	push	ar3
      002543 C0 02            [24] 1424 	push	ar2
      002545 12 21 69         [24] 1425 	lcall	_alloc_new_buffer
      002548 A9 82            [24] 1426 	mov	r1,dpl
      00254A AE 83            [24] 1427 	mov	r6,dph
      00254C D0 02            [24] 1428 	pop	ar2
      00254E D0 03            [24] 1429 	pop	ar3
      002550 D0 04            [24] 1430 	pop	ar4
      002552 D0 05            [24] 1431 	pop	ar5
                                   1432 ;	src/main.c:192: if (buffer_5 == NULL)
      002554 E9               [12] 1433 	mov	a,r1
      002555 4E               [12] 1434 	orl	a,r6
      002556 70 3B            [24] 1435 	jnz	00122$
                                   1436 ;	src/main.c:194: free_all_buffers();
      002558 C0 05            [24] 1437 	push	ar5
      00255A C0 04            [24] 1438 	push	ar4
      00255C C0 03            [24] 1439 	push	ar3
      00255E C0 02            [24] 1440 	push	ar2
      002560 12 2C 06         [24] 1441 	lcall	_free_all_buffers
                                   1442 ;	src/main.c:195: printf(BUFFER_SZ_TOO_BIG);
      002563 74 4A            [12] 1443 	mov	a,#___str_2
      002565 C0 E0            [24] 1444 	push	acc
      002567 74 4A            [12] 1445 	mov	a,#(___str_2 >> 8)
      002569 C0 E0            [24] 1446 	push	acc
      00256B 74 80            [12] 1447 	mov	a,#0x80
      00256D C0 E0            [24] 1448 	push	acc
      00256F 12 3F B3         [24] 1449 	lcall	_printf
      002572 15 81            [12] 1450 	dec	sp
      002574 15 81            [12] 1451 	dec	sp
      002576 15 81            [12] 1452 	dec	sp
      002578 D0 02            [24] 1453 	pop	ar2
      00257A D0 03            [24] 1454 	pop	ar3
      00257C D0 04            [24] 1455 	pop	ar4
      00257E D0 05            [24] 1456 	pop	ar5
                                   1457 ;	src/main.c:196: max_user_input = user_buffer_size-1;
      002580 EA               [12] 1458 	mov	a,r2
      002581 24 FF            [12] 1459 	add	a,#0xff
      002583 FE               [12] 1460 	mov	r6,a
      002584 EB               [12] 1461 	mov	a,r3
      002585 34 FF            [12] 1462 	addc	a,#0xff
      002587 FF               [12] 1463 	mov	r7,a
      002588 90 00 1D         [24] 1464 	mov	dptr,#_initialize_buffers_max_user_input_65538_92
      00258B EE               [12] 1465 	mov	a,r6
      00258C F0               [24] 1466 	movx	@dptr,a
      00258D EF               [12] 1467 	mov	a,r7
      00258E A3               [24] 1468 	inc	dptr
      00258F F0               [24] 1469 	movx	@dptr,a
                                   1470 ;	src/main.c:197: continue;
      002590 02 22 71         [24] 1471 	ljmp	00121$
                                   1472 ;	src/main.c:200: get_the_buffer_sz:;
      002593                       1473 00122$:
                                   1474 ;	src/main.c:203: printf("\r\nstudent_number: %d", student_number);
      002593 C0 03            [24] 1475 	push	ar3
      002595 C0 02            [24] 1476 	push	ar2
      002597 C0 25            [24] 1477 	push	_initialize_buffers_sloc2_1_0
      002599 C0 26            [24] 1478 	push	(_initialize_buffers_sloc2_1_0 + 1)
      00259B 74 83            [12] 1479 	mov	a,#___str_3
      00259D C0 E0            [24] 1480 	push	acc
      00259F 74 4A            [12] 1481 	mov	a,#(___str_3 >> 8)
      0025A1 C0 E0            [24] 1482 	push	acc
      0025A3 74 80            [12] 1483 	mov	a,#0x80
      0025A5 C0 E0            [24] 1484 	push	acc
      0025A7 12 3F B3         [24] 1485 	lcall	_printf
      0025AA E5 81            [12] 1486 	mov	a,sp
      0025AC 24 FB            [12] 1487 	add	a,#0xfb
      0025AE F5 81            [12] 1488 	mov	sp,a
      0025B0 D0 02            [24] 1489 	pop	ar2
      0025B2 D0 03            [24] 1490 	pop	ar3
                                   1491 ;	src/main.c:204: printf("\r\nuser_buffer_size: %zu", user_buffer_size);
      0025B4 C0 02            [24] 1492 	push	ar2
      0025B6 C0 03            [24] 1493 	push	ar3
      0025B8 74 98            [12] 1494 	mov	a,#___str_4
      0025BA C0 E0            [24] 1495 	push	acc
      0025BC 74 4A            [12] 1496 	mov	a,#(___str_4 >> 8)
      0025BE C0 E0            [24] 1497 	push	acc
      0025C0 74 80            [12] 1498 	mov	a,#0x80
      0025C2 C0 E0            [24] 1499 	push	acc
      0025C4 12 3F B3         [24] 1500 	lcall	_printf
      0025C7 E5 81            [12] 1501 	mov	a,sp
      0025C9 24 FB            [12] 1502 	add	a,#0xfb
      0025CB F5 81            [12] 1503 	mov	sp,a
                                   1504 ;	src/main.c:206: size_t total_heap_sz = 0;
      0025CD 90 00 1F         [24] 1505 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_106
      0025D0 E4               [12] 1506 	clr	a
      0025D1 F0               [24] 1507 	movx	@dptr,a
      0025D2 A3               [24] 1508 	inc	dptr
      0025D3 F0               [24] 1509 	movx	@dptr,a
                                   1510 ;	src/main.c:208: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      0025D4 7E 00            [12] 1511 	mov	r6,#0x00
      0025D6 7F 00            [12] 1512 	mov	r7,#0x00
      0025D8                       1513 00137$:
                                   1514 ;	src/main.c:210: printf("\r\n static_buffers[%d].buffer %p", i, static_buffers[i].buffer);
      0025D8 90 20 81         [24] 1515 	mov	dptr,#__mulint_PARM_2
      0025DB EE               [12] 1516 	mov	a,r6
      0025DC F0               [24] 1517 	movx	@dptr,a
      0025DD EF               [12] 1518 	mov	a,r7
      0025DE A3               [24] 1519 	inc	dptr
      0025DF F0               [24] 1520 	movx	@dptr,a
      0025E0 90 00 0B         [24] 1521 	mov	dptr,#0x000b
      0025E3 C0 07            [24] 1522 	push	ar7
      0025E5 C0 06            [24] 1523 	push	ar6
      0025E7 12 3F 45         [24] 1524 	lcall	__mulint
      0025EA AC 82            [24] 1525 	mov	r4,dpl
      0025EC AD 83            [24] 1526 	mov	r5,dph
      0025EE D0 06            [24] 1527 	pop	ar6
      0025F0 D0 07            [24] 1528 	pop	ar7
      0025F2 EC               [12] 1529 	mov	a,r4
      0025F3 24 01            [12] 1530 	add	a,#_static_buffers
      0025F5 F5 27            [12] 1531 	mov	_initialize_buffers_sloc3_1_0,a
      0025F7 ED               [12] 1532 	mov	a,r5
      0025F8 34 00            [12] 1533 	addc	a,#(_static_buffers >> 8)
      0025FA F5 28            [12] 1534 	mov	(_initialize_buffers_sloc3_1_0 + 1),a
      0025FC 85 27 82         [24] 1535 	mov	dpl,_initialize_buffers_sloc3_1_0
      0025FF 85 28 83         [24] 1536 	mov	dph,(_initialize_buffers_sloc3_1_0 + 1)
      002602 E0               [24] 1537 	movx	a,@dptr
      002603 F8               [12] 1538 	mov	r0,a
      002604 A3               [24] 1539 	inc	dptr
      002605 E0               [24] 1540 	movx	a,@dptr
      002606 F9               [12] 1541 	mov	r1,a
      002607 7B 00            [12] 1542 	mov	r3,#0x00
      002609 C0 07            [24] 1543 	push	ar7
      00260B C0 06            [24] 1544 	push	ar6
      00260D C0 05            [24] 1545 	push	ar5
      00260F C0 04            [24] 1546 	push	ar4
      002611 C0 00            [24] 1547 	push	ar0
      002613 C0 01            [24] 1548 	push	ar1
      002615 C0 03            [24] 1549 	push	ar3
      002617 C0 06            [24] 1550 	push	ar6
      002619 C0 07            [24] 1551 	push	ar7
      00261B 74 2A            [12] 1552 	mov	a,#___str_1
      00261D C0 E0            [24] 1553 	push	acc
      00261F 74 4A            [12] 1554 	mov	a,#(___str_1 >> 8)
      002621 C0 E0            [24] 1555 	push	acc
      002623 74 80            [12] 1556 	mov	a,#0x80
      002625 C0 E0            [24] 1557 	push	acc
      002627 12 3F B3         [24] 1558 	lcall	_printf
      00262A E5 81            [12] 1559 	mov	a,sp
      00262C 24 F8            [12] 1560 	add	a,#0xf8
      00262E F5 81            [12] 1561 	mov	sp,a
      002630 D0 04            [24] 1562 	pop	ar4
      002632 D0 05            [24] 1563 	pop	ar5
      002634 D0 06            [24] 1564 	pop	ar6
      002636 D0 07            [24] 1565 	pop	ar7
                                   1566 ;	src/main.c:211: if(static_buffers[i].buffer != NULL) {
      002638 85 27 82         [24] 1567 	mov	dpl,_initialize_buffers_sloc3_1_0
      00263B 85 28 83         [24] 1568 	mov	dph,(_initialize_buffers_sloc3_1_0 + 1)
      00263E E0               [24] 1569 	movx	a,@dptr
      00263F FA               [12] 1570 	mov	r2,a
      002640 A3               [24] 1571 	inc	dptr
      002641 E0               [24] 1572 	movx	a,@dptr
      002642 FB               [12] 1573 	mov	r3,a
      002643 4A               [12] 1574 	orl	a,r2
      002644 70 03            [24] 1575 	jnz	00225$
      002646 02 26 D9         [24] 1576 	ljmp	00138$
      002649                       1577 00225$:
                                   1578 ;	src/main.c:212: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, static_buffers[i].buffer, static_buffers[i].buffer + static_buffers[i].size, static_buffers[i].size);
      002649 EC               [12] 1579 	mov	a,r4
      00264A 24 01            [12] 1580 	add	a,#_static_buffers
      00264C FC               [12] 1581 	mov	r4,a
      00264D ED               [12] 1582 	mov	a,r5
      00264E 34 00            [12] 1583 	addc	a,#(_static_buffers >> 8)
      002650 FD               [12] 1584 	mov	r5,a
      002651 74 04            [12] 1585 	mov	a,#0x04
      002653 2C               [12] 1586 	add	a,r4
      002654 FA               [12] 1587 	mov	r2,a
      002655 E4               [12] 1588 	clr	a
      002656 3D               [12] 1589 	addc	a,r5
      002657 FB               [12] 1590 	mov	r3,a
      002658 8A 82            [24] 1591 	mov	dpl,r2
      00265A 8B 83            [24] 1592 	mov	dph,r3
      00265C E0               [24] 1593 	movx	a,@dptr
      00265D F5 25            [12] 1594 	mov	_initialize_buffers_sloc2_1_0,a
      00265F A3               [24] 1595 	inc	dptr
      002660 E0               [24] 1596 	movx	a,@dptr
      002661 F5 26            [12] 1597 	mov	(_initialize_buffers_sloc2_1_0 + 1),a
      002663 8C 82            [24] 1598 	mov	dpl,r4
      002665 8D 83            [24] 1599 	mov	dph,r5
      002667 E0               [24] 1600 	movx	a,@dptr
      002668 F5 27            [12] 1601 	mov	_initialize_buffers_sloc3_1_0,a
      00266A A3               [24] 1602 	inc	dptr
      00266B E0               [24] 1603 	movx	a,@dptr
      00266C F5 28            [12] 1604 	mov	(_initialize_buffers_sloc3_1_0 + 1),a
      00266E E5 25            [12] 1605 	mov	a,_initialize_buffers_sloc2_1_0
      002670 25 27            [12] 1606 	add	a,_initialize_buffers_sloc3_1_0
      002672 FC               [12] 1607 	mov	r4,a
      002673 E5 26            [12] 1608 	mov	a,(_initialize_buffers_sloc2_1_0 + 1)
      002675 35 28            [12] 1609 	addc	a,(_initialize_buffers_sloc3_1_0 + 1)
      002677 FD               [12] 1610 	mov	r5,a
      002678 8C 2A            [24] 1611 	mov	_initialize_buffers_sloc4_1_0,r4
      00267A 8D 2B            [24] 1612 	mov	(_initialize_buffers_sloc4_1_0 + 1),r5
      00267C 75 2C 00         [24] 1613 	mov	(_initialize_buffers_sloc4_1_0 + 2),#0x00
      00267F A8 27            [24] 1614 	mov	r0,_initialize_buffers_sloc3_1_0
      002681 AD 28            [24] 1615 	mov	r5,(_initialize_buffers_sloc3_1_0 + 1)
      002683 7C 00            [12] 1616 	mov	r4,#0x00
      002685 C0 07            [24] 1617 	push	ar7
      002687 C0 06            [24] 1618 	push	ar6
      002689 C0 03            [24] 1619 	push	ar3
      00268B C0 02            [24] 1620 	push	ar2
      00268D C0 25            [24] 1621 	push	_initialize_buffers_sloc2_1_0
      00268F C0 26            [24] 1622 	push	(_initialize_buffers_sloc2_1_0 + 1)
      002691 C0 2A            [24] 1623 	push	_initialize_buffers_sloc4_1_0
      002693 C0 2B            [24] 1624 	push	(_initialize_buffers_sloc4_1_0 + 1)
      002695 C0 2C            [24] 1625 	push	(_initialize_buffers_sloc4_1_0 + 2)
      002697 C0 00            [24] 1626 	push	ar0
      002699 C0 05            [24] 1627 	push	ar5
      00269B C0 04            [24] 1628 	push	ar4
      00269D C0 06            [24] 1629 	push	ar6
      00269F C0 07            [24] 1630 	push	ar7
      0026A1 74 B0            [12] 1631 	mov	a,#___str_5
      0026A3 C0 E0            [24] 1632 	push	acc
      0026A5 74 4A            [12] 1633 	mov	a,#(___str_5 >> 8)
      0026A7 C0 E0            [24] 1634 	push	acc
      0026A9 74 80            [12] 1635 	mov	a,#0x80
      0026AB C0 E0            [24] 1636 	push	acc
      0026AD 12 3F B3         [24] 1637 	lcall	_printf
      0026B0 E5 81            [12] 1638 	mov	a,sp
      0026B2 24 F3            [12] 1639 	add	a,#0xf3
      0026B4 F5 81            [12] 1640 	mov	sp,a
      0026B6 D0 02            [24] 1641 	pop	ar2
      0026B8 D0 03            [24] 1642 	pop	ar3
      0026BA D0 06            [24] 1643 	pop	ar6
      0026BC D0 07            [24] 1644 	pop	ar7
                                   1645 ;	src/main.c:213: total_heap_sz += static_buffers[i].size; 
      0026BE 8A 82            [24] 1646 	mov	dpl,r2
      0026C0 8B 83            [24] 1647 	mov	dph,r3
      0026C2 E0               [24] 1648 	movx	a,@dptr
      0026C3 FA               [12] 1649 	mov	r2,a
      0026C4 A3               [24] 1650 	inc	dptr
      0026C5 E0               [24] 1651 	movx	a,@dptr
      0026C6 FB               [12] 1652 	mov	r3,a
      0026C7 90 00 1F         [24] 1653 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_106
      0026CA E0               [24] 1654 	movx	a,@dptr
      0026CB FC               [12] 1655 	mov	r4,a
      0026CC A3               [24] 1656 	inc	dptr
      0026CD E0               [24] 1657 	movx	a,@dptr
      0026CE FD               [12] 1658 	mov	r5,a
      0026CF 90 00 1F         [24] 1659 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_106
      0026D2 EA               [12] 1660 	mov	a,r2
      0026D3 2C               [12] 1661 	add	a,r4
      0026D4 F0               [24] 1662 	movx	@dptr,a
      0026D5 EB               [12] 1663 	mov	a,r3
      0026D6 3D               [12] 1664 	addc	a,r5
      0026D7 A3               [24] 1665 	inc	dptr
      0026D8 F0               [24] 1666 	movx	@dptr,a
      0026D9                       1667 00138$:
                                   1668 ;	src/main.c:208: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      0026D9 0E               [12] 1669 	inc	r6
      0026DA BE 00 01         [24] 1670 	cjne	r6,#0x00,00226$
      0026DD 0F               [12] 1671 	inc	r7
      0026DE                       1672 00226$:
      0026DE C3               [12] 1673 	clr	c
      0026DF EE               [12] 1674 	mov	a,r6
      0026E0 94 02            [12] 1675 	subb	a,#0x02
      0026E2 EF               [12] 1676 	mov	a,r7
      0026E3 64 80            [12] 1677 	xrl	a,#0x80
      0026E5 94 80            [12] 1678 	subb	a,#0x80
      0026E7 50 03            [24] 1679 	jnc	00227$
      0026E9 02 25 D8         [24] 1680 	ljmp	00137$
      0026EC                       1681 00227$:
                                   1682 ;	src/main.c:217: buffer_t *curr = dynamic_buffers_list.head;
      0026EC 90 20 BA         [24] 1683 	mov	dptr,#_dynamic_buffers_list
      0026EF E0               [24] 1684 	movx	a,@dptr
      0026F0 FB               [12] 1685 	mov	r3,a
      0026F1 A3               [24] 1686 	inc	dptr
      0026F2 E0               [24] 1687 	movx	a,@dptr
      0026F3 FC               [12] 1688 	mov	r4,a
      0026F4 A3               [24] 1689 	inc	dptr
      0026F5 E0               [24] 1690 	movx	a,@dptr
      0026F6 FD               [12] 1691 	mov	r5,a
      0026F7 90 00 21         [24] 1692 	mov	dptr,#_initialize_buffers_curr_65540_110
      0026FA EB               [12] 1693 	mov	a,r3
      0026FB F0               [24] 1694 	movx	@dptr,a
      0026FC EC               [12] 1695 	mov	a,r4
      0026FD A3               [24] 1696 	inc	dptr
      0026FE F0               [24] 1697 	movx	@dptr,a
      0026FF ED               [12] 1698 	mov	a,r5
      002700 A3               [24] 1699 	inc	dptr
      002701 F0               [24] 1700 	movx	@dptr,a
                                   1701 ;	src/main.c:219: while(curr != NULL) {
      002702 8E 2A            [24] 1702 	mov	_initialize_buffers_sloc4_1_0,r6
      002704 8F 2B            [24] 1703 	mov	(_initialize_buffers_sloc4_1_0 + 1),r7
      002706                       1704 00128$:
      002706 90 00 21         [24] 1705 	mov	dptr,#_initialize_buffers_curr_65540_110
      002709 E0               [24] 1706 	movx	a,@dptr
      00270A FB               [12] 1707 	mov	r3,a
      00270B A3               [24] 1708 	inc	dptr
      00270C E0               [24] 1709 	movx	a,@dptr
      00270D FC               [12] 1710 	mov	r4,a
      00270E A3               [24] 1711 	inc	dptr
      00270F E0               [24] 1712 	movx	a,@dptr
      002710 FD               [12] 1713 	mov	r5,a
      002711 EB               [12] 1714 	mov	a,r3
      002712 4C               [12] 1715 	orl	a,r4
      002713 70 03            [24] 1716 	jnz	00228$
      002715 02 27 E8         [24] 1717 	ljmp	00130$
      002718                       1718 00228$:
                                   1719 ;	src/main.c:220: if(curr->buffer != NULL) {
      002718 8B 82            [24] 1720 	mov	dpl,r3
      00271A 8C 83            [24] 1721 	mov	dph,r4
      00271C 8D F0            [24] 1722 	mov	b,r5
      00271E 12 49 DF         [24] 1723 	lcall	__gptrget
      002721 F9               [12] 1724 	mov	r1,a
      002722 A3               [24] 1725 	inc	dptr
      002723 12 49 DF         [24] 1726 	lcall	__gptrget
      002726 FA               [12] 1727 	mov	r2,a
      002727 49               [12] 1728 	orl	a,r1
      002728 70 03            [24] 1729 	jnz	00229$
      00272A 02 27 AC         [24] 1730 	ljmp	00127$
      00272D                       1731 00229$:
                                   1732 ;	src/main.c:221: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, curr->buffer, curr->buffer + curr->size, curr->size);
      00272D 74 04            [12] 1733 	mov	a,#0x04
      00272F 2B               [12] 1734 	add	a,r3
      002730 FB               [12] 1735 	mov	r3,a
      002731 E4               [12] 1736 	clr	a
      002732 3C               [12] 1737 	addc	a,r4
      002733 FC               [12] 1738 	mov	r4,a
      002734 8B 82            [24] 1739 	mov	dpl,r3
      002736 8C 83            [24] 1740 	mov	dph,r4
      002738 8D F0            [24] 1741 	mov	b,r5
      00273A 12 49 DF         [24] 1742 	lcall	__gptrget
      00273D F5 27            [12] 1743 	mov	_initialize_buffers_sloc3_1_0,a
      00273F A3               [24] 1744 	inc	dptr
      002740 12 49 DF         [24] 1745 	lcall	__gptrget
      002743 F5 28            [12] 1746 	mov	(_initialize_buffers_sloc3_1_0 + 1),a
      002745 E5 27            [12] 1747 	mov	a,_initialize_buffers_sloc3_1_0
      002747 29               [12] 1748 	add	a,r1
      002748 FE               [12] 1749 	mov	r6,a
      002749 E5 28            [12] 1750 	mov	a,(_initialize_buffers_sloc3_1_0 + 1)
      00274B 3A               [12] 1751 	addc	a,r2
      00274C FF               [12] 1752 	mov	r7,a
      00274D 8E 2D            [24] 1753 	mov	_initialize_buffers_sloc5_1_0,r6
      00274F 8F 2E            [24] 1754 	mov	(_initialize_buffers_sloc5_1_0 + 1),r7
      002751 75 2F 00         [24] 1755 	mov	(_initialize_buffers_sloc5_1_0 + 2),#0x00
      002754 7F 00            [12] 1756 	mov	r7,#0x00
      002756 C0 05            [24] 1757 	push	ar5
      002758 C0 04            [24] 1758 	push	ar4
      00275A C0 03            [24] 1759 	push	ar3
      00275C C0 27            [24] 1760 	push	_initialize_buffers_sloc3_1_0
      00275E C0 28            [24] 1761 	push	(_initialize_buffers_sloc3_1_0 + 1)
      002760 C0 2D            [24] 1762 	push	_initialize_buffers_sloc5_1_0
      002762 C0 2E            [24] 1763 	push	(_initialize_buffers_sloc5_1_0 + 1)
      002764 C0 2F            [24] 1764 	push	(_initialize_buffers_sloc5_1_0 + 2)
      002766 C0 01            [24] 1765 	push	ar1
      002768 C0 02            [24] 1766 	push	ar2
      00276A C0 07            [24] 1767 	push	ar7
      00276C C0 2A            [24] 1768 	push	_initialize_buffers_sloc4_1_0
      00276E C0 2B            [24] 1769 	push	(_initialize_buffers_sloc4_1_0 + 1)
      002770 74 B0            [12] 1770 	mov	a,#___str_5
      002772 C0 E0            [24] 1771 	push	acc
      002774 74 4A            [12] 1772 	mov	a,#(___str_5 >> 8)
      002776 C0 E0            [24] 1773 	push	acc
      002778 74 80            [12] 1774 	mov	a,#0x80
      00277A C0 E0            [24] 1775 	push	acc
      00277C 12 3F B3         [24] 1776 	lcall	_printf
      00277F E5 81            [12] 1777 	mov	a,sp
      002781 24 F3            [12] 1778 	add	a,#0xf3
      002783 F5 81            [12] 1779 	mov	sp,a
      002785 D0 03            [24] 1780 	pop	ar3
      002787 D0 04            [24] 1781 	pop	ar4
      002789 D0 05            [24] 1782 	pop	ar5
                                   1783 ;	src/main.c:222: total_heap_sz += curr->size; 
      00278B 8B 82            [24] 1784 	mov	dpl,r3
      00278D 8C 83            [24] 1785 	mov	dph,r4
      00278F 8D F0            [24] 1786 	mov	b,r5
      002791 12 49 DF         [24] 1787 	lcall	__gptrget
      002794 FB               [12] 1788 	mov	r3,a
      002795 A3               [24] 1789 	inc	dptr
      002796 12 49 DF         [24] 1790 	lcall	__gptrget
      002799 FC               [12] 1791 	mov	r4,a
      00279A 90 00 1F         [24] 1792 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_106
      00279D E0               [24] 1793 	movx	a,@dptr
      00279E FE               [12] 1794 	mov	r6,a
      00279F A3               [24] 1795 	inc	dptr
      0027A0 E0               [24] 1796 	movx	a,@dptr
      0027A1 FF               [12] 1797 	mov	r7,a
      0027A2 90 00 1F         [24] 1798 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_106
      0027A5 EB               [12] 1799 	mov	a,r3
      0027A6 2E               [12] 1800 	add	a,r6
      0027A7 F0               [24] 1801 	movx	@dptr,a
      0027A8 EC               [12] 1802 	mov	a,r4
      0027A9 3F               [12] 1803 	addc	a,r7
      0027AA A3               [24] 1804 	inc	dptr
      0027AB F0               [24] 1805 	movx	@dptr,a
      0027AC                       1806 00127$:
                                   1807 ;	src/main.c:224: i++; 
      0027AC 05 2A            [12] 1808 	inc	_initialize_buffers_sloc4_1_0
      0027AE E4               [12] 1809 	clr	a
      0027AF B5 2A 02         [24] 1810 	cjne	a,_initialize_buffers_sloc4_1_0,00230$
      0027B2 05 2B            [12] 1811 	inc	(_initialize_buffers_sloc4_1_0 + 1)
      0027B4                       1812 00230$:
                                   1813 ;	src/main.c:225: curr = curr->next;
      0027B4 90 00 21         [24] 1814 	mov	dptr,#_initialize_buffers_curr_65540_110
      0027B7 E0               [24] 1815 	movx	a,@dptr
      0027B8 FD               [12] 1816 	mov	r5,a
      0027B9 A3               [24] 1817 	inc	dptr
      0027BA E0               [24] 1818 	movx	a,@dptr
      0027BB FE               [12] 1819 	mov	r6,a
      0027BC A3               [24] 1820 	inc	dptr
      0027BD E0               [24] 1821 	movx	a,@dptr
      0027BE FF               [12] 1822 	mov	r7,a
      0027BF 74 08            [12] 1823 	mov	a,#0x08
      0027C1 2D               [12] 1824 	add	a,r5
      0027C2 FD               [12] 1825 	mov	r5,a
      0027C3 E4               [12] 1826 	clr	a
      0027C4 3E               [12] 1827 	addc	a,r6
      0027C5 FE               [12] 1828 	mov	r6,a
      0027C6 8D 82            [24] 1829 	mov	dpl,r5
      0027C8 8E 83            [24] 1830 	mov	dph,r6
      0027CA 8F F0            [24] 1831 	mov	b,r7
      0027CC 12 49 DF         [24] 1832 	lcall	__gptrget
      0027CF FD               [12] 1833 	mov	r5,a
      0027D0 A3               [24] 1834 	inc	dptr
      0027D1 12 49 DF         [24] 1835 	lcall	__gptrget
      0027D4 FE               [12] 1836 	mov	r6,a
      0027D5 A3               [24] 1837 	inc	dptr
      0027D6 12 49 DF         [24] 1838 	lcall	__gptrget
      0027D9 FF               [12] 1839 	mov	r7,a
      0027DA 90 00 21         [24] 1840 	mov	dptr,#_initialize_buffers_curr_65540_110
      0027DD ED               [12] 1841 	mov	a,r5
      0027DE F0               [24] 1842 	movx	@dptr,a
      0027DF EE               [12] 1843 	mov	a,r6
      0027E0 A3               [24] 1844 	inc	dptr
      0027E1 F0               [24] 1845 	movx	@dptr,a
      0027E2 EF               [12] 1846 	mov	a,r7
      0027E3 A3               [24] 1847 	inc	dptr
      0027E4 F0               [24] 1848 	movx	@dptr,a
      0027E5 02 27 06         [24] 1849 	ljmp	00128$
      0027E8                       1850 00130$:
                                   1851 ;	src/main.c:227: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      0027E8 90 00 1F         [24] 1852 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_106
      0027EB E0               [24] 1853 	movx	a,@dptr
      0027EC C0 E0            [24] 1854 	push	acc
      0027EE A3               [24] 1855 	inc	dptr
      0027EF E0               [24] 1856 	movx	a,@dptr
      0027F0 C0 E0            [24] 1857 	push	acc
      0027F2 74 34            [12] 1858 	mov	a,#(___sdcc_heap + 0x2000)
      0027F4 C0 E0            [24] 1859 	push	acc
      0027F6 74 20            [12] 1860 	mov	a,#((___sdcc_heap + 0x2000) >> 8)
      0027F8 C0 E0            [24] 1861 	push	acc
      0027FA E4               [12] 1862 	clr	a
      0027FB C0 E0            [24] 1863 	push	acc
      0027FD 74 34            [12] 1864 	mov	a,#___sdcc_heap
      0027FF C0 E0            [24] 1865 	push	acc
      002801 74 00            [12] 1866 	mov	a,#(___sdcc_heap >> 8)
      002803 C0 E0            [24] 1867 	push	acc
      002805 E4               [12] 1868 	clr	a
      002806 C0 E0            [24] 1869 	push	acc
      002808 74 DC            [12] 1870 	mov	a,#___str_6
      00280A C0 E0            [24] 1871 	push	acc
      00280C 74 4A            [12] 1872 	mov	a,#(___str_6 >> 8)
      00280E C0 E0            [24] 1873 	push	acc
      002810 74 80            [12] 1874 	mov	a,#0x80
      002812 C0 E0            [24] 1875 	push	acc
      002814 12 3F B3         [24] 1876 	lcall	_printf
      002817 E5 81            [12] 1877 	mov	a,sp
      002819 24 F5            [12] 1878 	add	a,#0xf5
      00281B F5 81            [12] 1879 	mov	sp,a
                                   1880 ;	src/main.c:228: }
      00281D 22               [24] 1881 	ret
                                   1882 ;------------------------------------------------------------
                                   1883 ;Allocation info for local variables in function 'store_in_buffer'
                                   1884 ;------------------------------------------------------------
                                   1885 ;sloc0                     Allocated with name '_store_in_buffer_sloc0_1_0'
                                   1886 ;sloc1                     Allocated with name '_store_in_buffer_sloc1_1_0'
                                   1887 ;c                         Allocated with name '_store_in_buffer_PARM_2'
                                   1888 ;buffer                    Allocated with name '_store_in_buffer_buffer_65536_113'
                                   1889 ;------------------------------------------------------------
                                   1890 ;	src/main.c:230: void store_in_buffer(buffer_t *buffer, char c)
                                   1891 ;	-----------------------------------------
                                   1892 ;	 function store_in_buffer
                                   1893 ;	-----------------------------------------
      00281E                       1894 _store_in_buffer:
      00281E AF F0            [24] 1895 	mov	r7,b
      002820 AE 83            [24] 1896 	mov	r6,dph
      002822 E5 82            [12] 1897 	mov	a,dpl
      002824 90 00 25         [24] 1898 	mov	dptr,#_store_in_buffer_buffer_65536_113
      002827 F0               [24] 1899 	movx	@dptr,a
      002828 EE               [12] 1900 	mov	a,r6
      002829 A3               [24] 1901 	inc	dptr
      00282A F0               [24] 1902 	movx	@dptr,a
      00282B EF               [12] 1903 	mov	a,r7
      00282C A3               [24] 1904 	inc	dptr
      00282D F0               [24] 1905 	movx	@dptr,a
                                   1906 ;	src/main.c:232: if (buffer->curr_available_char < buffer->size)
      00282E 90 00 25         [24] 1907 	mov	dptr,#_store_in_buffer_buffer_65536_113
      002831 E0               [24] 1908 	movx	a,@dptr
      002832 FD               [12] 1909 	mov	r5,a
      002833 A3               [24] 1910 	inc	dptr
      002834 E0               [24] 1911 	movx	a,@dptr
      002835 FE               [12] 1912 	mov	r6,a
      002836 A3               [24] 1913 	inc	dptr
      002837 E0               [24] 1914 	movx	a,@dptr
      002838 FF               [12] 1915 	mov	r7,a
      002839 74 06            [12] 1916 	mov	a,#0x06
      00283B 2D               [12] 1917 	add	a,r5
      00283C F5 32            [12] 1918 	mov	_store_in_buffer_sloc1_1_0,a
      00283E E4               [12] 1919 	clr	a
      00283F 3E               [12] 1920 	addc	a,r6
      002840 F5 33            [12] 1921 	mov	(_store_in_buffer_sloc1_1_0 + 1),a
      002842 8F 34            [24] 1922 	mov	(_store_in_buffer_sloc1_1_0 + 2),r7
      002844 85 32 82         [24] 1923 	mov	dpl,_store_in_buffer_sloc1_1_0
      002847 85 33 83         [24] 1924 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      00284A 85 34 F0         [24] 1925 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      00284D 12 49 DF         [24] 1926 	lcall	__gptrget
      002850 F5 30            [12] 1927 	mov	_store_in_buffer_sloc0_1_0,a
      002852 A3               [24] 1928 	inc	dptr
      002853 12 49 DF         [24] 1929 	lcall	__gptrget
      002856 F5 31            [12] 1930 	mov	(_store_in_buffer_sloc0_1_0 + 1),a
      002858 74 04            [12] 1931 	mov	a,#0x04
      00285A 2D               [12] 1932 	add	a,r5
      00285B F8               [12] 1933 	mov	r0,a
      00285C E4               [12] 1934 	clr	a
      00285D 3E               [12] 1935 	addc	a,r6
      00285E F9               [12] 1936 	mov	r1,a
      00285F 8F 04            [24] 1937 	mov	ar4,r7
      002861 88 82            [24] 1938 	mov	dpl,r0
      002863 89 83            [24] 1939 	mov	dph,r1
      002865 8C F0            [24] 1940 	mov	b,r4
      002867 12 49 DF         [24] 1941 	lcall	__gptrget
      00286A F8               [12] 1942 	mov	r0,a
      00286B A3               [24] 1943 	inc	dptr
      00286C 12 49 DF         [24] 1944 	lcall	__gptrget
      00286F F9               [12] 1945 	mov	r1,a
      002870 C3               [12] 1946 	clr	c
      002871 E5 30            [12] 1947 	mov	a,_store_in_buffer_sloc0_1_0
      002873 98               [12] 1948 	subb	a,r0
      002874 E5 31            [12] 1949 	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
      002876 99               [12] 1950 	subb	a,r1
      002877 40 01            [24] 1951 	jc	00115$
      002879 22               [24] 1952 	ret
      00287A                       1953 00115$:
                                   1954 ;	src/main.c:234: buffer->buffer[buffer->curr_available_char] = c;
      00287A 8D 82            [24] 1955 	mov	dpl,r5
      00287C 8E 83            [24] 1956 	mov	dph,r6
      00287E 8F F0            [24] 1957 	mov	b,r7
      002880 12 49 DF         [24] 1958 	lcall	__gptrget
      002883 FB               [12] 1959 	mov	r3,a
      002884 A3               [24] 1960 	inc	dptr
      002885 12 49 DF         [24] 1961 	lcall	__gptrget
      002888 FC               [12] 1962 	mov	r4,a
      002889 E5 30            [12] 1963 	mov	a,_store_in_buffer_sloc0_1_0
      00288B 2B               [12] 1964 	add	a,r3
      00288C FB               [12] 1965 	mov	r3,a
      00288D E5 31            [12] 1966 	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
      00288F 3C               [12] 1967 	addc	a,r4
      002890 FC               [12] 1968 	mov	r4,a
      002891 90 00 24         [24] 1969 	mov	dptr,#_store_in_buffer_PARM_2
      002894 E0               [24] 1970 	movx	a,@dptr
      002895 FA               [12] 1971 	mov	r2,a
      002896 8B 82            [24] 1972 	mov	dpl,r3
      002898 8C 83            [24] 1973 	mov	dph,r4
      00289A F0               [24] 1974 	movx	@dptr,a
                                   1975 ;	src/main.c:235: buffer->curr_available_char++;
      00289B 85 32 82         [24] 1976 	mov	dpl,_store_in_buffer_sloc1_1_0
      00289E 85 33 83         [24] 1977 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      0028A1 85 34 F0         [24] 1978 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      0028A4 12 49 DF         [24] 1979 	lcall	__gptrget
      0028A7 FC               [12] 1980 	mov	r4,a
      0028A8 A3               [24] 1981 	inc	dptr
      0028A9 12 49 DF         [24] 1982 	lcall	__gptrget
      0028AC FB               [12] 1983 	mov	r3,a
      0028AD 0C               [12] 1984 	inc	r4
      0028AE BC 00 01         [24] 1985 	cjne	r4,#0x00,00116$
      0028B1 0B               [12] 1986 	inc	r3
      0028B2                       1987 00116$:
      0028B2 85 32 82         [24] 1988 	mov	dpl,_store_in_buffer_sloc1_1_0
      0028B5 85 33 83         [24] 1989 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      0028B8 85 34 F0         [24] 1990 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      0028BB EC               [12] 1991 	mov	a,r4
      0028BC 12 3D 85         [24] 1992 	lcall	__gptrput
      0028BF A3               [24] 1993 	inc	dptr
      0028C0 EB               [12] 1994 	mov	a,r3
      0028C1 12 3D 85         [24] 1995 	lcall	__gptrput
                                   1996 ;	src/main.c:236: if (is_alphabet_char(c))
      0028C4 8A 82            [24] 1997 	mov	dpl,r2
      0028C6 C0 07            [24] 1998 	push	ar7
      0028C8 C0 06            [24] 1999 	push	ar6
      0028CA C0 05            [24] 2000 	push	ar5
      0028CC 12 20 94         [24] 2001 	lcall	_is_alphabet_char
      0028CF E5 82            [12] 2002 	mov	a,dpl
      0028D1 D0 05            [24] 2003 	pop	ar5
      0028D3 D0 06            [24] 2004 	pop	ar6
      0028D5 D0 07            [24] 2005 	pop	ar7
      0028D7 60 2A            [24] 2006 	jz	00105$
                                   2007 ;	src/main.c:238: buffer->alphabet_chars++;
      0028D9 74 02            [12] 2008 	mov	a,#0x02
      0028DB 2D               [12] 2009 	add	a,r5
      0028DC FD               [12] 2010 	mov	r5,a
      0028DD E4               [12] 2011 	clr	a
      0028DE 3E               [12] 2012 	addc	a,r6
      0028DF FE               [12] 2013 	mov	r6,a
      0028E0 8D 82            [24] 2014 	mov	dpl,r5
      0028E2 8E 83            [24] 2015 	mov	dph,r6
      0028E4 8F F0            [24] 2016 	mov	b,r7
      0028E6 12 49 DF         [24] 2017 	lcall	__gptrget
      0028E9 FB               [12] 2018 	mov	r3,a
      0028EA A3               [24] 2019 	inc	dptr
      0028EB 12 49 DF         [24] 2020 	lcall	__gptrget
      0028EE FC               [12] 2021 	mov	r4,a
      0028EF 0B               [12] 2022 	inc	r3
      0028F0 BB 00 01         [24] 2023 	cjne	r3,#0x00,00118$
      0028F3 0C               [12] 2024 	inc	r4
      0028F4                       2025 00118$:
      0028F4 8D 82            [24] 2026 	mov	dpl,r5
      0028F6 8E 83            [24] 2027 	mov	dph,r6
      0028F8 8F F0            [24] 2028 	mov	b,r7
      0028FA EB               [12] 2029 	mov	a,r3
      0028FB 12 3D 85         [24] 2030 	lcall	__gptrput
      0028FE A3               [24] 2031 	inc	dptr
      0028FF EC               [12] 2032 	mov	a,r4
                                   2033 ;	src/main.c:241: }
      002900 02 3D 85         [24] 2034 	ljmp	__gptrput
      002903                       2035 00105$:
      002903 22               [24] 2036 	ret
                                   2037 ;------------------------------------------------------------
                                   2038 ;Allocation info for local variables in function 'command_header'
                                   2039 ;------------------------------------------------------------
                                   2040 ;command_string            Allocated with name '_command_header_command_string_65536_117'
                                   2041 ;------------------------------------------------------------
                                   2042 ;	src/main.c:243: void command_header(char *command_string)
                                   2043 ;	-----------------------------------------
                                   2044 ;	 function command_header
                                   2045 ;	-----------------------------------------
      002904                       2046 _command_header:
      002904 AF F0            [24] 2047 	mov	r7,b
      002906 AE 83            [24] 2048 	mov	r6,dph
      002908 E5 82            [12] 2049 	mov	a,dpl
      00290A 90 00 28         [24] 2050 	mov	dptr,#_command_header_command_string_65536_117
      00290D F0               [24] 2051 	movx	@dptr,a
      00290E EE               [12] 2052 	mov	a,r6
      00290F A3               [24] 2053 	inc	dptr
      002910 F0               [24] 2054 	movx	@dptr,a
      002911 EF               [12] 2055 	mov	a,r7
      002912 A3               [24] 2056 	inc	dptr
      002913 F0               [24] 2057 	movx	@dptr,a
                                   2058 ;	src/main.c:245: printf("\r\n        %s", command_string);
      002914 90 00 28         [24] 2059 	mov	dptr,#_command_header_command_string_65536_117
      002917 E0               [24] 2060 	movx	a,@dptr
      002918 C0 E0            [24] 2061 	push	acc
      00291A A3               [24] 2062 	inc	dptr
      00291B E0               [24] 2063 	movx	a,@dptr
      00291C C0 E0            [24] 2064 	push	acc
      00291E A3               [24] 2065 	inc	dptr
      00291F E0               [24] 2066 	movx	a,@dptr
      002920 C0 E0            [24] 2067 	push	acc
      002922 74 05            [12] 2068 	mov	a,#___str_7
      002924 C0 E0            [24] 2069 	push	acc
      002926 74 4B            [12] 2070 	mov	a,#(___str_7 >> 8)
      002928 C0 E0            [24] 2071 	push	acc
      00292A 74 80            [12] 2072 	mov	a,#0x80
      00292C C0 E0            [24] 2073 	push	acc
      00292E 12 3F B3         [24] 2074 	lcall	_printf
      002931 E5 81            [12] 2075 	mov	a,sp
      002933 24 FA            [12] 2076 	add	a,#0xfa
      002935 F5 81            [12] 2077 	mov	sp,a
                                   2078 ;	src/main.c:246: printf("\r\n------------------------------");   
      002937 74 12            [12] 2079 	mov	a,#___str_8
      002939 C0 E0            [24] 2080 	push	acc
      00293B 74 4B            [12] 2081 	mov	a,#(___str_8 >> 8)
      00293D C0 E0            [24] 2082 	push	acc
      00293F 74 80            [12] 2083 	mov	a,#0x80
      002941 C0 E0            [24] 2084 	push	acc
      002943 12 3F B3         [24] 2085 	lcall	_printf
      002946 15 81            [12] 2086 	dec	sp
      002948 15 81            [12] 2087 	dec	sp
      00294A 15 81            [12] 2088 	dec	sp
                                   2089 ;	src/main.c:247: }
      00294C 22               [24] 2090 	ret
                                   2091 ;------------------------------------------------------------
                                   2092 ;Allocation info for local variables in function 'heap_report'
                                   2093 ;------------------------------------------------------------
                                   2094 ;sloc0                     Allocated with name '_heap_report_sloc0_1_0'
                                   2095 ;sloc1                     Allocated with name '_heap_report_sloc1_1_0'
                                   2096 ;sloc2                     Allocated with name '_heap_report_sloc2_1_0'
                                   2097 ;sloc3                     Allocated with name '_heap_report_sloc3_1_0'
                                   2098 ;sloc4                     Allocated with name '_heap_report_sloc4_1_0'
                                   2099 ;sloc5                     Allocated with name '_heap_report_sloc5_1_0'
                                   2100 ;total_heap_sz             Allocated with name '_heap_report_total_heap_sz_65537_120'
                                   2101 ;i                         Allocated with name '_heap_report_i_65537_120'
                                   2102 ;curr                      Allocated with name '_heap_report_curr_65538_124'
                                   2103 ;------------------------------------------------------------
                                   2104 ;	src/main.c:251: void heap_report()
                                   2105 ;	-----------------------------------------
                                   2106 ;	 function heap_report
                                   2107 ;	-----------------------------------------
      00294D                       2108 _heap_report:
                                   2109 ;	src/main.c:253: command_header("HEAP REPORT");
      00294D 90 4B 33         [24] 2110 	mov	dptr,#___str_9
      002950 75 F0 80         [24] 2111 	mov	b,#0x80
      002953 12 29 04         [24] 2112 	lcall	_command_header
                                   2113 ;	src/main.c:254: size_t total_heap_sz = 0;
      002956 90 00 2B         [24] 2114 	mov	dptr,#_heap_report_total_heap_sz_65537_120
      002959 E4               [12] 2115 	clr	a
      00295A F0               [24] 2116 	movx	@dptr,a
      00295B A3               [24] 2117 	inc	dptr
      00295C F0               [24] 2118 	movx	@dptr,a
                                   2119 ;	src/main.c:256: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00295D 7E 00            [12] 2120 	mov	r6,#0x00
      00295F 7F 00            [12] 2121 	mov	r7,#0x00
      002961                       2122 00109$:
                                   2123 ;	src/main.c:258: if(static_buffers[i].buffer != NULL) {
      002961 90 20 81         [24] 2124 	mov	dptr,#__mulint_PARM_2
      002964 EE               [12] 2125 	mov	a,r6
      002965 F0               [24] 2126 	movx	@dptr,a
      002966 EF               [12] 2127 	mov	a,r7
      002967 A3               [24] 2128 	inc	dptr
      002968 F0               [24] 2129 	movx	@dptr,a
      002969 90 00 0B         [24] 2130 	mov	dptr,#0x000b
      00296C C0 07            [24] 2131 	push	ar7
      00296E C0 06            [24] 2132 	push	ar6
      002970 12 3F 45         [24] 2133 	lcall	__mulint
      002973 AC 82            [24] 2134 	mov	r4,dpl
      002975 AD 83            [24] 2135 	mov	r5,dph
      002977 D0 06            [24] 2136 	pop	ar6
      002979 D0 07            [24] 2137 	pop	ar7
      00297B EC               [12] 2138 	mov	a,r4
      00297C 24 01            [12] 2139 	add	a,#_static_buffers
      00297E F5 82            [12] 2140 	mov	dpl,a
      002980 ED               [12] 2141 	mov	a,r5
      002981 34 00            [12] 2142 	addc	a,#(_static_buffers >> 8)
      002983 F5 83            [12] 2143 	mov	dph,a
      002985 E0               [24] 2144 	movx	a,@dptr
      002986 FA               [12] 2145 	mov	r2,a
      002987 A3               [24] 2146 	inc	dptr
      002988 E0               [24] 2147 	movx	a,@dptr
      002989 FB               [12] 2148 	mov	r3,a
      00298A 4A               [12] 2149 	orl	a,r2
      00298B 70 03            [24] 2150 	jnz	00139$
      00298D 02 2A 46         [24] 2151 	ljmp	00110$
      002990                       2152 00139$:
                                   2153 ;	src/main.c:265: static_buffers[i].size - static_buffers[i].curr_available_char);
      002990 EC               [12] 2154 	mov	a,r4
      002991 24 01            [12] 2155 	add	a,#_static_buffers
      002993 FC               [12] 2156 	mov	r4,a
      002994 ED               [12] 2157 	mov	a,r5
      002995 34 00            [12] 2158 	addc	a,#(_static_buffers >> 8)
      002997 FD               [12] 2159 	mov	r5,a
      002998 74 04            [12] 2160 	mov	a,#0x04
      00299A 2C               [12] 2161 	add	a,r4
      00299B F5 35            [12] 2162 	mov	_heap_report_sloc0_1_0,a
      00299D E4               [12] 2163 	clr	a
      00299E 3D               [12] 2164 	addc	a,r5
      00299F F5 36            [12] 2165 	mov	(_heap_report_sloc0_1_0 + 1),a
      0029A1 85 35 82         [24] 2166 	mov	dpl,_heap_report_sloc0_1_0
      0029A4 85 36 83         [24] 2167 	mov	dph,(_heap_report_sloc0_1_0 + 1)
      0029A7 E0               [24] 2168 	movx	a,@dptr
      0029A8 F8               [12] 2169 	mov	r0,a
      0029A9 A3               [24] 2170 	inc	dptr
      0029AA E0               [24] 2171 	movx	a,@dptr
      0029AB F9               [12] 2172 	mov	r1,a
      0029AC 74 06            [12] 2173 	mov	a,#0x06
      0029AE 2C               [12] 2174 	add	a,r4
      0029AF F5 82            [12] 2175 	mov	dpl,a
      0029B1 E4               [12] 2176 	clr	a
      0029B2 3D               [12] 2177 	addc	a,r5
      0029B3 F5 83            [12] 2178 	mov	dph,a
      0029B5 E0               [24] 2179 	movx	a,@dptr
      0029B6 FA               [12] 2180 	mov	r2,a
      0029B7 A3               [24] 2181 	inc	dptr
      0029B8 E0               [24] 2182 	movx	a,@dptr
      0029B9 FB               [12] 2183 	mov	r3,a
      0029BA E8               [12] 2184 	mov	a,r0
      0029BB C3               [12] 2185 	clr	c
      0029BC 9A               [12] 2186 	subb	a,r2
      0029BD F5 37            [12] 2187 	mov	_heap_report_sloc1_1_0,a
      0029BF E9               [12] 2188 	mov	a,r1
      0029C0 9B               [12] 2189 	subb	a,r3
      0029C1 F5 38            [12] 2190 	mov	(_heap_report_sloc1_1_0 + 1),a
                                   2191 ;	src/main.c:264: static_buffers[i].alphabet_chars,
      0029C3 8C 82            [24] 2192 	mov	dpl,r4
      0029C5 8D 83            [24] 2193 	mov	dph,r5
      0029C7 A3               [24] 2194 	inc	dptr
      0029C8 A3               [24] 2195 	inc	dptr
      0029C9 E0               [24] 2196 	movx	a,@dptr
      0029CA F5 39            [12] 2197 	mov	_heap_report_sloc2_1_0,a
      0029CC A3               [24] 2198 	inc	dptr
      0029CD E0               [24] 2199 	movx	a,@dptr
      0029CE F5 3A            [12] 2200 	mov	(_heap_report_sloc2_1_0 + 1),a
                                   2201 ;	src/main.c:262: static_buffers[i].buffer + static_buffers[i].size, 
      0029D0 8C 82            [24] 2202 	mov	dpl,r4
      0029D2 8D 83            [24] 2203 	mov	dph,r5
      0029D4 E0               [24] 2204 	movx	a,@dptr
      0029D5 F5 3B            [12] 2205 	mov	_heap_report_sloc3_1_0,a
      0029D7 A3               [24] 2206 	inc	dptr
      0029D8 E0               [24] 2207 	movx	a,@dptr
      0029D9 F5 3C            [12] 2208 	mov	(_heap_report_sloc3_1_0 + 1),a
      0029DB E8               [12] 2209 	mov	a,r0
      0029DC 25 3B            [12] 2210 	add	a,_heap_report_sloc3_1_0
      0029DE FA               [12] 2211 	mov	r2,a
      0029DF E9               [12] 2212 	mov	a,r1
      0029E0 35 3C            [12] 2213 	addc	a,(_heap_report_sloc3_1_0 + 1)
      0029E2 FB               [12] 2214 	mov	r3,a
      0029E3 8A 3D            [24] 2215 	mov	_heap_report_sloc4_1_0,r2
      0029E5 8B 3E            [24] 2216 	mov	(_heap_report_sloc4_1_0 + 1),r3
      0029E7 75 3F 00         [24] 2217 	mov	(_heap_report_sloc4_1_0 + 2),#0x00
                                   2218 ;	src/main.c:261: static_buffers[i].buffer, 
      0029EA AC 3B            [24] 2219 	mov	r4,_heap_report_sloc3_1_0
      0029EC AD 3C            [24] 2220 	mov	r5,(_heap_report_sloc3_1_0 + 1)
      0029EE 7B 00            [12] 2221 	mov	r3,#0x00
                                   2222 ;	src/main.c:259: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
      0029F0 C0 07            [24] 2223 	push	ar7
      0029F2 C0 06            [24] 2224 	push	ar6
      0029F4 C0 37            [24] 2225 	push	_heap_report_sloc1_1_0
      0029F6 C0 38            [24] 2226 	push	(_heap_report_sloc1_1_0 + 1)
      0029F8 C0 39            [24] 2227 	push	_heap_report_sloc2_1_0
      0029FA C0 3A            [24] 2228 	push	(_heap_report_sloc2_1_0 + 1)
      0029FC C0 00            [24] 2229 	push	ar0
      0029FE C0 01            [24] 2230 	push	ar1
      002A00 C0 3D            [24] 2231 	push	_heap_report_sloc4_1_0
      002A02 C0 3E            [24] 2232 	push	(_heap_report_sloc4_1_0 + 1)
      002A04 C0 3F            [24] 2233 	push	(_heap_report_sloc4_1_0 + 2)
      002A06 C0 04            [24] 2234 	push	ar4
      002A08 C0 05            [24] 2235 	push	ar5
      002A0A C0 03            [24] 2236 	push	ar3
      002A0C C0 06            [24] 2237 	push	ar6
      002A0E C0 07            [24] 2238 	push	ar7
      002A10 74 3F            [12] 2239 	mov	a,#___str_10
      002A12 C0 E0            [24] 2240 	push	acc
      002A14 74 4B            [12] 2241 	mov	a,#(___str_10 >> 8)
      002A16 C0 E0            [24] 2242 	push	acc
      002A18 74 80            [12] 2243 	mov	a,#0x80
      002A1A C0 E0            [24] 2244 	push	acc
      002A1C 12 3F B3         [24] 2245 	lcall	_printf
      002A1F E5 81            [12] 2246 	mov	a,sp
      002A21 24 EF            [12] 2247 	add	a,#0xef
      002A23 F5 81            [12] 2248 	mov	sp,a
      002A25 D0 06            [24] 2249 	pop	ar6
      002A27 D0 07            [24] 2250 	pop	ar7
                                   2251 ;	src/main.c:266: total_heap_sz += static_buffers[i].size; 
      002A29 85 35 82         [24] 2252 	mov	dpl,_heap_report_sloc0_1_0
      002A2C 85 36 83         [24] 2253 	mov	dph,(_heap_report_sloc0_1_0 + 1)
      002A2F E0               [24] 2254 	movx	a,@dptr
      002A30 FC               [12] 2255 	mov	r4,a
      002A31 A3               [24] 2256 	inc	dptr
      002A32 E0               [24] 2257 	movx	a,@dptr
      002A33 FD               [12] 2258 	mov	r5,a
      002A34 90 00 2B         [24] 2259 	mov	dptr,#_heap_report_total_heap_sz_65537_120
      002A37 E0               [24] 2260 	movx	a,@dptr
      002A38 FA               [12] 2261 	mov	r2,a
      002A39 A3               [24] 2262 	inc	dptr
      002A3A E0               [24] 2263 	movx	a,@dptr
      002A3B FB               [12] 2264 	mov	r3,a
      002A3C 90 00 2B         [24] 2265 	mov	dptr,#_heap_report_total_heap_sz_65537_120
      002A3F EC               [12] 2266 	mov	a,r4
      002A40 2A               [12] 2267 	add	a,r2
      002A41 F0               [24] 2268 	movx	@dptr,a
      002A42 ED               [12] 2269 	mov	a,r5
      002A43 3B               [12] 2270 	addc	a,r3
      002A44 A3               [24] 2271 	inc	dptr
      002A45 F0               [24] 2272 	movx	@dptr,a
      002A46                       2273 00110$:
                                   2274 ;	src/main.c:256: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002A46 0E               [12] 2275 	inc	r6
      002A47 BE 00 01         [24] 2276 	cjne	r6,#0x00,00140$
      002A4A 0F               [12] 2277 	inc	r7
      002A4B                       2278 00140$:
      002A4B C3               [12] 2279 	clr	c
      002A4C EE               [12] 2280 	mov	a,r6
      002A4D 94 02            [12] 2281 	subb	a,#0x02
      002A4F EF               [12] 2282 	mov	a,r7
      002A50 64 80            [12] 2283 	xrl	a,#0x80
      002A52 94 80            [12] 2284 	subb	a,#0x80
      002A54 50 03            [24] 2285 	jnc	00141$
      002A56 02 29 61         [24] 2286 	ljmp	00109$
      002A59                       2287 00141$:
                                   2288 ;	src/main.c:270: buffer_t *curr = dynamic_buffers_list.head;
      002A59 90 20 BA         [24] 2289 	mov	dptr,#_dynamic_buffers_list
      002A5C E0               [24] 2290 	movx	a,@dptr
      002A5D FB               [12] 2291 	mov	r3,a
      002A5E A3               [24] 2292 	inc	dptr
      002A5F E0               [24] 2293 	movx	a,@dptr
      002A60 FC               [12] 2294 	mov	r4,a
      002A61 A3               [24] 2295 	inc	dptr
      002A62 E0               [24] 2296 	movx	a,@dptr
      002A63 FD               [12] 2297 	mov	r5,a
                                   2298 ;	src/main.c:271: while(curr != NULL) {
      002A64 74 04            [12] 2299 	mov	a,#0x04
      002A66 2B               [12] 2300 	add	a,r3
      002A67 F8               [12] 2301 	mov	r0,a
      002A68 E4               [12] 2302 	clr	a
      002A69 3C               [12] 2303 	addc	a,r4
      002A6A F9               [12] 2304 	mov	r1,a
      002A6B 8D 02            [24] 2305 	mov	ar2,r5
      002A6D 74 02            [12] 2306 	mov	a,#0x02
      002A6F 2B               [12] 2307 	add	a,r3
      002A70 F5 3D            [12] 2308 	mov	_heap_report_sloc4_1_0,a
      002A72 E4               [12] 2309 	clr	a
      002A73 3C               [12] 2310 	addc	a,r4
      002A74 F5 3E            [12] 2311 	mov	(_heap_report_sloc4_1_0 + 1),a
      002A76 8D 3F            [24] 2312 	mov	(_heap_report_sloc4_1_0 + 2),r5
      002A78 8E 39            [24] 2313 	mov	_heap_report_sloc2_1_0,r6
      002A7A 8F 3A            [24] 2314 	mov	(_heap_report_sloc2_1_0 + 1),r7
      002A7C                       2315 00106$:
      002A7C EB               [12] 2316 	mov	a,r3
      002A7D 4C               [12] 2317 	orl	a,r4
      002A7E 70 03            [24] 2318 	jnz	00142$
      002A80 02 2B 61         [24] 2319 	ljmp	00108$
      002A83                       2320 00142$:
                                   2321 ;	src/main.c:272: if(curr->buffer != NULL) {
      002A83 8B 82            [24] 2322 	mov	dpl,r3
      002A85 8C 83            [24] 2323 	mov	dph,r4
      002A87 8D F0            [24] 2324 	mov	b,r5
      002A89 12 49 DF         [24] 2325 	lcall	__gptrget
      002A8C F5 3B            [12] 2326 	mov	_heap_report_sloc3_1_0,a
      002A8E A3               [24] 2327 	inc	dptr
      002A8F 12 49 DF         [24] 2328 	lcall	__gptrget
      002A92 F5 3C            [12] 2329 	mov	(_heap_report_sloc3_1_0 + 1),a
      002A94 E5 3B            [12] 2330 	mov	a,_heap_report_sloc3_1_0
      002A96 45 3C            [12] 2331 	orl	a,(_heap_report_sloc3_1_0 + 1)
      002A98 70 03            [24] 2332 	jnz	00143$
      002A9A 02 2B 56         [24] 2333 	ljmp	00105$
      002A9D                       2334 00143$:
                                   2335 ;	src/main.c:279: curr->size - curr->alphabet_chars);
      002A9D C0 03            [24] 2336 	push	ar3
      002A9F C0 04            [24] 2337 	push	ar4
      002AA1 C0 05            [24] 2338 	push	ar5
      002AA3 88 82            [24] 2339 	mov	dpl,r0
      002AA5 89 83            [24] 2340 	mov	dph,r1
      002AA7 8A F0            [24] 2341 	mov	b,r2
      002AA9 12 49 DF         [24] 2342 	lcall	__gptrget
      002AAC FC               [12] 2343 	mov	r4,a
      002AAD A3               [24] 2344 	inc	dptr
      002AAE 12 49 DF         [24] 2345 	lcall	__gptrget
      002AB1 FD               [12] 2346 	mov	r5,a
      002AB2 85 3D 82         [24] 2347 	mov	dpl,_heap_report_sloc4_1_0
      002AB5 85 3E 83         [24] 2348 	mov	dph,(_heap_report_sloc4_1_0 + 1)
      002AB8 85 3F F0         [24] 2349 	mov	b,(_heap_report_sloc4_1_0 + 2)
      002ABB 12 49 DF         [24] 2350 	lcall	__gptrget
      002ABE F5 37            [12] 2351 	mov	_heap_report_sloc1_1_0,a
      002AC0 A3               [24] 2352 	inc	dptr
      002AC1 12 49 DF         [24] 2353 	lcall	__gptrget
      002AC4 F5 38            [12] 2354 	mov	(_heap_report_sloc1_1_0 + 1),a
      002AC6 EC               [12] 2355 	mov	a,r4
      002AC7 C3               [12] 2356 	clr	c
      002AC8 95 37            [12] 2357 	subb	a,_heap_report_sloc1_1_0
      002ACA F5 35            [12] 2358 	mov	_heap_report_sloc0_1_0,a
      002ACC ED               [12] 2359 	mov	a,r5
      002ACD 95 38            [12] 2360 	subb	a,(_heap_report_sloc1_1_0 + 1)
      002ACF F5 36            [12] 2361 	mov	(_heap_report_sloc0_1_0 + 1),a
                                   2362 ;	src/main.c:276: curr->buffer + curr->size, 
      002AD1 EC               [12] 2363 	mov	a,r4
      002AD2 25 3B            [12] 2364 	add	a,_heap_report_sloc3_1_0
      002AD4 FB               [12] 2365 	mov	r3,a
      002AD5 ED               [12] 2366 	mov	a,r5
      002AD6 35 3C            [12] 2367 	addc	a,(_heap_report_sloc3_1_0 + 1)
      002AD8 FF               [12] 2368 	mov	r7,a
      002AD9 8B 40            [24] 2369 	mov	_heap_report_sloc5_1_0,r3
      002ADB 8F 41            [24] 2370 	mov	(_heap_report_sloc5_1_0 + 1),r7
      002ADD 75 42 00         [24] 2371 	mov	(_heap_report_sloc5_1_0 + 2),#0x00
                                   2372 ;	src/main.c:275: curr->buffer, 
      002AE0 AE 3B            [24] 2373 	mov	r6,_heap_report_sloc3_1_0
      002AE2 AF 3C            [24] 2374 	mov	r7,(_heap_report_sloc3_1_0 + 1)
      002AE4 7B 00            [12] 2375 	mov	r3,#0x00
                                   2376 ;	src/main.c:273: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
      002AE6 C0 05            [24] 2377 	push	ar5
      002AE8 C0 04            [24] 2378 	push	ar4
      002AEA C0 03            [24] 2379 	push	ar3
      002AEC C0 02            [24] 2380 	push	ar2
      002AEE C0 01            [24] 2381 	push	ar1
      002AF0 C0 00            [24] 2382 	push	ar0
      002AF2 C0 35            [24] 2383 	push	_heap_report_sloc0_1_0
      002AF4 C0 36            [24] 2384 	push	(_heap_report_sloc0_1_0 + 1)
      002AF6 C0 37            [24] 2385 	push	_heap_report_sloc1_1_0
      002AF8 C0 38            [24] 2386 	push	(_heap_report_sloc1_1_0 + 1)
      002AFA C0 04            [24] 2387 	push	ar4
      002AFC C0 05            [24] 2388 	push	ar5
      002AFE C0 40            [24] 2389 	push	_heap_report_sloc5_1_0
      002B00 C0 41            [24] 2390 	push	(_heap_report_sloc5_1_0 + 1)
      002B02 C0 42            [24] 2391 	push	(_heap_report_sloc5_1_0 + 2)
      002B04 C0 06            [24] 2392 	push	ar6
      002B06 C0 07            [24] 2393 	push	ar7
      002B08 C0 03            [24] 2394 	push	ar3
      002B0A C0 39            [24] 2395 	push	_heap_report_sloc2_1_0
      002B0C C0 3A            [24] 2396 	push	(_heap_report_sloc2_1_0 + 1)
      002B0E 74 3F            [12] 2397 	mov	a,#___str_10
      002B10 C0 E0            [24] 2398 	push	acc
      002B12 74 4B            [12] 2399 	mov	a,#(___str_10 >> 8)
      002B14 C0 E0            [24] 2400 	push	acc
      002B16 74 80            [12] 2401 	mov	a,#0x80
      002B18 C0 E0            [24] 2402 	push	acc
      002B1A 12 3F B3         [24] 2403 	lcall	_printf
      002B1D E5 81            [12] 2404 	mov	a,sp
      002B1F 24 EF            [12] 2405 	add	a,#0xef
      002B21 F5 81            [12] 2406 	mov	sp,a
      002B23 D0 00            [24] 2407 	pop	ar0
      002B25 D0 01            [24] 2408 	pop	ar1
      002B27 D0 02            [24] 2409 	pop	ar2
      002B29 D0 03            [24] 2410 	pop	ar3
      002B2B D0 04            [24] 2411 	pop	ar4
      002B2D D0 05            [24] 2412 	pop	ar5
                                   2413 ;	src/main.c:280: total_heap_sz += curr->size; 
      002B2F 88 82            [24] 2414 	mov	dpl,r0
      002B31 89 83            [24] 2415 	mov	dph,r1
      002B33 8A F0            [24] 2416 	mov	b,r2
      002B35 12 49 DF         [24] 2417 	lcall	__gptrget
      002B38 FE               [12] 2418 	mov	r6,a
      002B39 A3               [24] 2419 	inc	dptr
      002B3A 12 49 DF         [24] 2420 	lcall	__gptrget
      002B3D FF               [12] 2421 	mov	r7,a
      002B3E 90 00 2B         [24] 2422 	mov	dptr,#_heap_report_total_heap_sz_65537_120
      002B41 E0               [24] 2423 	movx	a,@dptr
      002B42 FC               [12] 2424 	mov	r4,a
      002B43 A3               [24] 2425 	inc	dptr
      002B44 E0               [24] 2426 	movx	a,@dptr
      002B45 FD               [12] 2427 	mov	r5,a
      002B46 90 00 2B         [24] 2428 	mov	dptr,#_heap_report_total_heap_sz_65537_120
      002B49 EE               [12] 2429 	mov	a,r6
      002B4A 2C               [12] 2430 	add	a,r4
      002B4B F0               [24] 2431 	movx	@dptr,a
      002B4C EF               [12] 2432 	mov	a,r7
      002B4D 3D               [12] 2433 	addc	a,r5
      002B4E A3               [24] 2434 	inc	dptr
      002B4F F0               [24] 2435 	movx	@dptr,a
                                   2436 ;	src/main.c:286: printf("\r\n");
      002B50 D0 05            [24] 2437 	pop	ar5
      002B52 D0 04            [24] 2438 	pop	ar4
      002B54 D0 03            [24] 2439 	pop	ar3
                                   2440 ;	src/main.c:280: total_heap_sz += curr->size; 
      002B56                       2441 00105$:
                                   2442 ;	src/main.c:282: i++;
      002B56 05 39            [12] 2443 	inc	_heap_report_sloc2_1_0
      002B58 E4               [12] 2444 	clr	a
      002B59 B5 39 02         [24] 2445 	cjne	a,_heap_report_sloc2_1_0,00144$
      002B5C 05 3A            [12] 2446 	inc	(_heap_report_sloc2_1_0 + 1)
      002B5E                       2447 00144$:
                                   2448 ;	src/main.c:283: curr->next;
      002B5E 02 2A 7C         [24] 2449 	ljmp	00106$
      002B61                       2450 00108$:
                                   2451 ;	src/main.c:285: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      002B61 90 00 2B         [24] 2452 	mov	dptr,#_heap_report_total_heap_sz_65537_120
      002B64 E0               [24] 2453 	movx	a,@dptr
      002B65 C0 E0            [24] 2454 	push	acc
      002B67 A3               [24] 2455 	inc	dptr
      002B68 E0               [24] 2456 	movx	a,@dptr
      002B69 C0 E0            [24] 2457 	push	acc
      002B6B 74 34            [12] 2458 	mov	a,#(___sdcc_heap + 0x2000)
      002B6D C0 E0            [24] 2459 	push	acc
      002B6F 74 20            [12] 2460 	mov	a,#((___sdcc_heap + 0x2000) >> 8)
      002B71 C0 E0            [24] 2461 	push	acc
      002B73 E4               [12] 2462 	clr	a
      002B74 C0 E0            [24] 2463 	push	acc
      002B76 74 34            [12] 2464 	mov	a,#___sdcc_heap
      002B78 C0 E0            [24] 2465 	push	acc
      002B7A 74 00            [12] 2466 	mov	a,#(___sdcc_heap >> 8)
      002B7C C0 E0            [24] 2467 	push	acc
      002B7E E4               [12] 2468 	clr	a
      002B7F C0 E0            [24] 2469 	push	acc
      002B81 74 DC            [12] 2470 	mov	a,#___str_6
      002B83 C0 E0            [24] 2471 	push	acc
      002B85 74 4A            [12] 2472 	mov	a,#(___str_6 >> 8)
      002B87 C0 E0            [24] 2473 	push	acc
      002B89 74 80            [12] 2474 	mov	a,#0x80
      002B8B C0 E0            [24] 2475 	push	acc
      002B8D 12 3F B3         [24] 2476 	lcall	_printf
      002B90 E5 81            [12] 2477 	mov	a,sp
      002B92 24 F5            [12] 2478 	add	a,#0xf5
      002B94 F5 81            [12] 2479 	mov	sp,a
                                   2480 ;	src/main.c:286: printf("\r\n");
      002B96 74 A1            [12] 2481 	mov	a,#___str_11
      002B98 C0 E0            [24] 2482 	push	acc
      002B9A 74 4B            [12] 2483 	mov	a,#(___str_11 >> 8)
      002B9C C0 E0            [24] 2484 	push	acc
      002B9E 74 80            [12] 2485 	mov	a,#0x80
      002BA0 C0 E0            [24] 2486 	push	acc
      002BA2 12 3F B3         [24] 2487 	lcall	_printf
      002BA5 15 81            [12] 2488 	dec	sp
      002BA7 15 81            [12] 2489 	dec	sp
      002BA9 15 81            [12] 2490 	dec	sp
                                   2491 ;	src/main.c:287: }
      002BAB 22               [24] 2492 	ret
                                   2493 ;------------------------------------------------------------
                                   2494 ;Allocation info for local variables in function 'get_user_buffer_sz'
                                   2495 ;------------------------------------------------------------
                                   2496 ;maximum_sz                Allocated with name '_get_user_buffer_sz_maximum_sz_65536_127'
                                   2497 ;user_buffer_size          Allocated with name '_get_user_buffer_sz_user_buffer_size_65536_128'
                                   2498 ;------------------------------------------------------------
                                   2499 ;	src/main.c:291: size_t get_user_buffer_sz(size_t maximum_sz)
                                   2500 ;	-----------------------------------------
                                   2501 ;	 function get_user_buffer_sz
                                   2502 ;	-----------------------------------------
      002BAC                       2503 _get_user_buffer_sz:
      002BAC AF 83            [24] 2504 	mov	r7,dph
      002BAE E5 82            [12] 2505 	mov	a,dpl
      002BB0 90 00 2D         [24] 2506 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_127
      002BB3 F0               [24] 2507 	movx	@dptr,a
      002BB4 EF               [12] 2508 	mov	a,r7
      002BB5 A3               [24] 2509 	inc	dptr
      002BB6 F0               [24] 2510 	movx	@dptr,a
                                   2511 ;	src/main.c:294: do {
      002BB7 90 00 2D         [24] 2512 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_127
      002BBA E0               [24] 2513 	movx	a,@dptr
      002BBB FE               [12] 2514 	mov	r6,a
      002BBC A3               [24] 2515 	inc	dptr
      002BBD E0               [24] 2516 	movx	a,@dptr
      002BBE FF               [12] 2517 	mov	r7,a
      002BBF                       2518 00103$:
                                   2519 ;	src/main.c:295: printf("\r\nPlease enter a valid buffer size that is divisible by 32 [64,%zu]: ", maximum_sz);
      002BBF C0 07            [24] 2520 	push	ar7
      002BC1 C0 06            [24] 2521 	push	ar6
      002BC3 C0 06            [24] 2522 	push	ar6
      002BC5 C0 07            [24] 2523 	push	ar7
      002BC7 74 A4            [12] 2524 	mov	a,#___str_12
      002BC9 C0 E0            [24] 2525 	push	acc
      002BCB 74 4B            [12] 2526 	mov	a,#(___str_12 >> 8)
      002BCD C0 E0            [24] 2527 	push	acc
      002BCF 74 80            [12] 2528 	mov	a,#0x80
      002BD1 C0 E0            [24] 2529 	push	acc
      002BD3 12 3F B3         [24] 2530 	lcall	_printf
      002BD6 E5 81            [12] 2531 	mov	a,sp
      002BD8 24 FB            [12] 2532 	add	a,#0xfb
      002BDA F5 81            [12] 2533 	mov	sp,a
                                   2534 ;	src/main.c:296: get_string();
      002BDC 12 35 53         [24] 2535 	lcall	_get_string
                                   2536 ;	src/main.c:297: user_buffer_size = (size_t) atoi(get_input_buffer()); //TODO: replace with own implementation of atoi that respects the size_t
      002BDF 12 35 4C         [24] 2537 	lcall	_get_input_buffer
      002BE2 12 3C 61         [24] 2538 	lcall	_atoi
      002BE5 AC 82            [24] 2539 	mov	r4,dpl
      002BE7 AD 83            [24] 2540 	mov	r5,dph
      002BE9 D0 06            [24] 2541 	pop	ar6
      002BEB D0 07            [24] 2542 	pop	ar7
                                   2543 ;	src/main.c:298: } while ((user_buffer_size > maximum_sz)
      002BED C3               [12] 2544 	clr	c
      002BEE EE               [12] 2545 	mov	a,r6
      002BEF 9C               [12] 2546 	subb	a,r4
      002BF0 EF               [12] 2547 	mov	a,r7
      002BF1 9D               [12] 2548 	subb	a,r5
                                   2549 ;	src/main.c:299: || (user_buffer_size < USER_BUFFER_MIN)
      002BF2 40 CB            [24] 2550 	jc	00103$
      002BF4 EC               [12] 2551 	mov	a,r4
      002BF5 94 40            [12] 2552 	subb	a,#0x40
      002BF7 ED               [12] 2553 	mov	a,r5
      002BF8 94 00            [12] 2554 	subb	a,#0x00
      002BFA 40 C3            [24] 2555 	jc	00103$
                                   2556 ;	src/main.c:300: || (MODULE_32(user_buffer_size) != 0));
      002BFC EC               [12] 2557 	mov	a,r4
      002BFD 54 1F            [12] 2558 	anl	a,#0x1f
      002BFF 70 BE            [24] 2559 	jnz	00103$
                                   2560 ;	src/main.c:301: return user_buffer_size;
      002C01 8C 82            [24] 2561 	mov	dpl,r4
      002C03 8D 83            [24] 2562 	mov	dph,r5
                                   2563 ;	src/main.c:302: }
      002C05 22               [24] 2564 	ret
                                   2565 ;------------------------------------------------------------
                                   2566 ;Allocation info for local variables in function 'free_all_buffers'
                                   2567 ;------------------------------------------------------------
                                   2568 ;i                         Allocated with name '_free_all_buffers_i_131072_131'
                                   2569 ;------------------------------------------------------------
                                   2570 ;	src/main.c:305: void free_all_buffers()
                                   2571 ;	-----------------------------------------
                                   2572 ;	 function free_all_buffers
                                   2573 ;	-----------------------------------------
      002C06                       2574 _free_all_buffers:
                                   2575 ;	src/main.c:307: printf("\r\n Freeing ALL BUFFERS");
      002C06 74 EA            [12] 2576 	mov	a,#___str_13
      002C08 C0 E0            [24] 2577 	push	acc
      002C0A 74 4B            [12] 2578 	mov	a,#(___str_13 >> 8)
      002C0C C0 E0            [24] 2579 	push	acc
      002C0E 74 80            [12] 2580 	mov	a,#0x80
      002C10 C0 E0            [24] 2581 	push	acc
      002C12 12 3F B3         [24] 2582 	lcall	_printf
      002C15 15 81            [12] 2583 	dec	sp
      002C17 15 81            [12] 2584 	dec	sp
      002C19 15 81            [12] 2585 	dec	sp
                                   2586 ;	src/main.c:308: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002C1B 7E 00            [12] 2587 	mov	r6,#0x00
      002C1D 7F 00            [12] 2588 	mov	r7,#0x00
      002C1F                       2589 00105$:
      002C1F C3               [12] 2590 	clr	c
      002C20 EE               [12] 2591 	mov	a,r6
      002C21 94 02            [12] 2592 	subb	a,#0x02
      002C23 EF               [12] 2593 	mov	a,r7
      002C24 64 80            [12] 2594 	xrl	a,#0x80
      002C26 94 80            [12] 2595 	subb	a,#0x80
      002C28 40 03            [24] 2596 	jc	00122$
      002C2A 02 2C B0         [24] 2597 	ljmp	00103$
      002C2D                       2598 00122$:
                                   2599 ;	src/main.c:310: if(static_buffers[i].buffer != NULL)
      002C2D 90 20 81         [24] 2600 	mov	dptr,#__mulint_PARM_2
      002C30 EE               [12] 2601 	mov	a,r6
      002C31 F0               [24] 2602 	movx	@dptr,a
      002C32 EF               [12] 2603 	mov	a,r7
      002C33 A3               [24] 2604 	inc	dptr
      002C34 F0               [24] 2605 	movx	@dptr,a
      002C35 90 00 0B         [24] 2606 	mov	dptr,#0x000b
      002C38 C0 07            [24] 2607 	push	ar7
      002C3A C0 06            [24] 2608 	push	ar6
      002C3C 12 3F 45         [24] 2609 	lcall	__mulint
      002C3F AC 82            [24] 2610 	mov	r4,dpl
      002C41 AD 83            [24] 2611 	mov	r5,dph
      002C43 D0 06            [24] 2612 	pop	ar6
      002C45 D0 07            [24] 2613 	pop	ar7
      002C47 EC               [12] 2614 	mov	a,r4
      002C48 24 01            [12] 2615 	add	a,#_static_buffers
      002C4A F5 82            [12] 2616 	mov	dpl,a
      002C4C ED               [12] 2617 	mov	a,r5
      002C4D 34 00            [12] 2618 	addc	a,#(_static_buffers >> 8)
      002C4F F5 83            [12] 2619 	mov	dph,a
      002C51 E0               [24] 2620 	movx	a,@dptr
      002C52 FC               [12] 2621 	mov	r4,a
      002C53 A3               [24] 2622 	inc	dptr
      002C54 E0               [24] 2623 	movx	a,@dptr
      002C55 FD               [12] 2624 	mov	r5,a
      002C56 4C               [12] 2625 	orl	a,r4
      002C57 60 13            [24] 2626 	jz	00102$
                                   2627 ;	src/main.c:312: free(static_buffers[i].buffer);
      002C59 7B 00            [12] 2628 	mov	r3,#0x00
      002C5B 8C 82            [24] 2629 	mov	dpl,r4
      002C5D 8D 83            [24] 2630 	mov	dph,r5
      002C5F 8B F0            [24] 2631 	mov	b,r3
      002C61 C0 07            [24] 2632 	push	ar7
      002C63 C0 06            [24] 2633 	push	ar6
      002C65 12 3A 6E         [24] 2634 	lcall	_free
      002C68 D0 06            [24] 2635 	pop	ar6
      002C6A D0 07            [24] 2636 	pop	ar7
      002C6C                       2637 00102$:
                                   2638 ;	src/main.c:314: static_buffers[i].buffer = NULL;
      002C6C 90 20 81         [24] 2639 	mov	dptr,#__mulint_PARM_2
      002C6F EE               [12] 2640 	mov	a,r6
      002C70 F0               [24] 2641 	movx	@dptr,a
      002C71 EF               [12] 2642 	mov	a,r7
      002C72 A3               [24] 2643 	inc	dptr
      002C73 F0               [24] 2644 	movx	@dptr,a
      002C74 90 00 0B         [24] 2645 	mov	dptr,#0x000b
      002C77 C0 07            [24] 2646 	push	ar7
      002C79 C0 06            [24] 2647 	push	ar6
      002C7B 12 3F 45         [24] 2648 	lcall	__mulint
      002C7E AC 82            [24] 2649 	mov	r4,dpl
      002C80 AD 83            [24] 2650 	mov	r5,dph
      002C82 D0 06            [24] 2651 	pop	ar6
      002C84 D0 07            [24] 2652 	pop	ar7
      002C86 EC               [12] 2653 	mov	a,r4
      002C87 24 01            [12] 2654 	add	a,#_static_buffers
      002C89 F5 82            [12] 2655 	mov	dpl,a
      002C8B ED               [12] 2656 	mov	a,r5
      002C8C 34 00            [12] 2657 	addc	a,#(_static_buffers >> 8)
      002C8E F5 83            [12] 2658 	mov	dph,a
      002C90 E4               [12] 2659 	clr	a
      002C91 F0               [24] 2660 	movx	@dptr,a
      002C92 A3               [24] 2661 	inc	dptr
      002C93 F0               [24] 2662 	movx	@dptr,a
                                   2663 ;	src/main.c:315: static_buffers[i].size = 0; 
      002C94 EC               [12] 2664 	mov	a,r4
      002C95 24 01            [12] 2665 	add	a,#_static_buffers
      002C97 FC               [12] 2666 	mov	r4,a
      002C98 ED               [12] 2667 	mov	a,r5
      002C99 34 00            [12] 2668 	addc	a,#(_static_buffers >> 8)
      002C9B FD               [12] 2669 	mov	r5,a
      002C9C 8C 82            [24] 2670 	mov	dpl,r4
      002C9E 8D 83            [24] 2671 	mov	dph,r5
      002CA0 A3               [24] 2672 	inc	dptr
      002CA1 A3               [24] 2673 	inc	dptr
      002CA2 A3               [24] 2674 	inc	dptr
      002CA3 A3               [24] 2675 	inc	dptr
      002CA4 E4               [12] 2676 	clr	a
      002CA5 F0               [24] 2677 	movx	@dptr,a
      002CA6 A3               [24] 2678 	inc	dptr
      002CA7 F0               [24] 2679 	movx	@dptr,a
                                   2680 ;	src/main.c:308: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002CA8 0E               [12] 2681 	inc	r6
      002CA9 BE 00 01         [24] 2682 	cjne	r6,#0x00,00124$
      002CAC 0F               [12] 2683 	inc	r7
      002CAD                       2684 00124$:
      002CAD 02 2C 1F         [24] 2685 	ljmp	00105$
      002CB0                       2686 00103$:
                                   2687 ;	src/main.c:317: free_all_elems_from_list(&dynamic_buffers_list); 
      002CB0 90 20 BA         [24] 2688 	mov	dptr,#_dynamic_buffers_list
      002CB3 75 F0 00         [24] 2689 	mov	b,#0x00
                                   2690 ;	src/main.c:318: }
      002CB6 02 39 30         [24] 2691 	ljmp	_free_all_elems_from_list
                                   2692 ;------------------------------------------------------------
                                   2693 ;Allocation info for local variables in function 'qmark_command_handler'
                                   2694 ;------------------------------------------------------------
                                   2695 ;sloc0                     Allocated with name '_qmark_command_handler_sloc0_1_0'
                                   2696 ;chars_received_since_last_qmark Allocated with name '_qmark_command_handler_chars_received_since_last_qmark_65537_135'
                                   2697 ;curr_output_char          Allocated with name '_qmark_command_handler_curr_output_char_65538_136'
                                   2698 ;i                         Allocated with name '_qmark_command_handler_i_131074_137'
                                   2699 ;curr_buffer_char          Allocated with name '_qmark_command_handler_curr_buffer_char_196610_138'
                                   2700 ;curr_char                 Allocated with name '_qmark_command_handler_curr_char_196610_138'
                                   2701 ;------------------------------------------------------------
                                   2702 ;	src/main.c:322: void qmark_command_handler()
                                   2703 ;	-----------------------------------------
                                   2704 ;	 function qmark_command_handler
                                   2705 ;	-----------------------------------------
      002CB9                       2706 _qmark_command_handler:
                                   2707 ;	src/main.c:324: heap_report();
      002CB9 12 29 4D         [24] 2708 	lcall	_heap_report
                                   2709 ;	src/main.c:325: size_t chars_received_since_last_qmark = get_char_count();
      002CBC 12 36 84         [24] 2710 	lcall	_get_char_count
      002CBF AE 82            [24] 2711 	mov	r6,dpl
      002CC1 AF 83            [24] 2712 	mov	r7,dph
                                   2713 ;	src/main.c:326: reset_char_count();
      002CC3 C0 07            [24] 2714 	push	ar7
      002CC5 C0 06            [24] 2715 	push	ar6
      002CC7 12 36 90         [24] 2716 	lcall	_reset_char_count
      002CCA D0 06            [24] 2717 	pop	ar6
      002CCC D0 07            [24] 2718 	pop	ar7
                                   2719 ;	src/main.c:327: printf("\r\n Received %zu chars since last invocation of ?", chars_received_since_last_qmark);
      002CCE C0 06            [24] 2720 	push	ar6
      002CD0 C0 07            [24] 2721 	push	ar7
      002CD2 74 01            [12] 2722 	mov	a,#___str_14
      002CD4 C0 E0            [24] 2723 	push	acc
      002CD6 74 4C            [12] 2724 	mov	a,#(___str_14 >> 8)
      002CD8 C0 E0            [24] 2725 	push	acc
      002CDA 74 80            [12] 2726 	mov	a,#0x80
      002CDC C0 E0            [24] 2727 	push	acc
      002CDE 12 3F B3         [24] 2728 	lcall	_printf
      002CE1 E5 81            [12] 2729 	mov	a,sp
      002CE3 24 FB            [12] 2730 	add	a,#0xfb
      002CE5 F5 81            [12] 2731 	mov	sp,a
                                   2732 ;	src/main.c:328: size_t curr_output_char = 0;
      002CE7 90 00 2F         [24] 2733 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_136
      002CEA E4               [12] 2734 	clr	a
      002CEB F0               [24] 2735 	movx	@dptr,a
      002CEC A3               [24] 2736 	inc	dptr
      002CED F0               [24] 2737 	movx	@dptr,a
                                   2738 ;	src/main.c:330: for(int i = 0; i < 2; i++)
      002CEE 7E 00            [12] 2739 	mov	r6,#0x00
      002CF0 7F 00            [12] 2740 	mov	r7,#0x00
      002CF2                       2741 00108$:
      002CF2 C3               [12] 2742 	clr	c
      002CF3 EE               [12] 2743 	mov	a,r6
      002CF4 94 02            [12] 2744 	subb	a,#0x02
      002CF6 EF               [12] 2745 	mov	a,r7
      002CF7 64 80            [12] 2746 	xrl	a,#0x80
      002CF9 94 80            [12] 2747 	subb	a,#0x80
      002CFB 40 03            [24] 2748 	jc	00134$
      002CFD 02 2E 7B         [24] 2749 	ljmp	00106$
      002D00                       2750 00134$:
                                   2751 ;	src/main.c:333: char curr_char = static_buffers[i].buffer[0];
      002D00 90 20 81         [24] 2752 	mov	dptr,#__mulint_PARM_2
      002D03 EE               [12] 2753 	mov	a,r6
      002D04 F0               [24] 2754 	movx	@dptr,a
      002D05 EF               [12] 2755 	mov	a,r7
      002D06 A3               [24] 2756 	inc	dptr
      002D07 F0               [24] 2757 	movx	@dptr,a
      002D08 90 00 0B         [24] 2758 	mov	dptr,#0x000b
      002D0B C0 07            [24] 2759 	push	ar7
      002D0D C0 06            [24] 2760 	push	ar6
      002D0F 12 3F 45         [24] 2761 	lcall	__mulint
      002D12 AC 82            [24] 2762 	mov	r4,dpl
      002D14 AD 83            [24] 2763 	mov	r5,dph
      002D16 D0 06            [24] 2764 	pop	ar6
      002D18 D0 07            [24] 2765 	pop	ar7
      002D1A EC               [12] 2766 	mov	a,r4
      002D1B 24 01            [12] 2767 	add	a,#_static_buffers
      002D1D FC               [12] 2768 	mov	r4,a
      002D1E ED               [12] 2769 	mov	a,r5
      002D1F 34 00            [12] 2770 	addc	a,#(_static_buffers >> 8)
      002D21 FD               [12] 2771 	mov	r5,a
      002D22 8C 82            [24] 2772 	mov	dpl,r4
      002D24 8D 83            [24] 2773 	mov	dph,r5
      002D26 E0               [24] 2774 	movx	a,@dptr
      002D27 FA               [12] 2775 	mov	r2,a
      002D28 A3               [24] 2776 	inc	dptr
      002D29 E0               [24] 2777 	movx	a,@dptr
      002D2A FB               [12] 2778 	mov	r3,a
      002D2B 8A 82            [24] 2779 	mov	dpl,r2
      002D2D 8B 83            [24] 2780 	mov	dph,r3
      002D2F E0               [24] 2781 	movx	a,@dptr
      002D30 90 00 31         [24] 2782 	mov	dptr,#_qmark_command_handler_curr_char_196610_138
      002D33 F0               [24] 2783 	movx	@dptr,a
                                   2784 ;	src/main.c:334: while(curr_char != '\0')
      002D34 90 00 2F         [24] 2785 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_136
      002D37 E0               [24] 2786 	movx	a,@dptr
      002D38 FA               [12] 2787 	mov	r2,a
      002D39 A3               [24] 2788 	inc	dptr
      002D3A E0               [24] 2789 	movx	a,@dptr
      002D3B FB               [12] 2790 	mov	r3,a
      002D3C 78 00            [12] 2791 	mov	r0,#0x00
      002D3E 79 00            [12] 2792 	mov	r1,#0x00
      002D40                       2793 00103$:
      002D40 90 00 31         [24] 2794 	mov	dptr,#_qmark_command_handler_curr_char_196610_138
      002D43 E0               [24] 2795 	movx	a,@dptr
      002D44 70 03            [24] 2796 	jnz	00135$
      002D46 02 2D EE         [24] 2797 	ljmp	00117$
      002D49                       2798 00135$:
                                   2799 ;	src/main.c:336: if (MODULE_32(curr_output_char) == 0)
      002D49 EA               [12] 2800 	mov	a,r2
      002D4A 54 1F            [12] 2801 	anl	a,#0x1f
      002D4C 70 35            [24] 2802 	jnz	00102$
                                   2803 ;	src/main.c:338: printf("\r\n");
      002D4E C0 07            [24] 2804 	push	ar7
      002D50 C0 06            [24] 2805 	push	ar6
      002D52 C0 05            [24] 2806 	push	ar5
      002D54 C0 04            [24] 2807 	push	ar4
      002D56 C0 03            [24] 2808 	push	ar3
      002D58 C0 02            [24] 2809 	push	ar2
      002D5A C0 01            [24] 2810 	push	ar1
      002D5C C0 00            [24] 2811 	push	ar0
      002D5E 74 A1            [12] 2812 	mov	a,#___str_11
      002D60 C0 E0            [24] 2813 	push	acc
      002D62 74 4B            [12] 2814 	mov	a,#(___str_11 >> 8)
      002D64 C0 E0            [24] 2815 	push	acc
      002D66 74 80            [12] 2816 	mov	a,#0x80
      002D68 C0 E0            [24] 2817 	push	acc
      002D6A 12 3F B3         [24] 2818 	lcall	_printf
      002D6D 15 81            [12] 2819 	dec	sp
      002D6F 15 81            [12] 2820 	dec	sp
      002D71 15 81            [12] 2821 	dec	sp
      002D73 D0 00            [24] 2822 	pop	ar0
      002D75 D0 01            [24] 2823 	pop	ar1
      002D77 D0 02            [24] 2824 	pop	ar2
      002D79 D0 03            [24] 2825 	pop	ar3
      002D7B D0 04            [24] 2826 	pop	ar4
      002D7D D0 05            [24] 2827 	pop	ar5
      002D7F D0 06            [24] 2828 	pop	ar6
      002D81 D0 07            [24] 2829 	pop	ar7
      002D83                       2830 00102$:
                                   2831 ;	src/main.c:340: printf("%c", curr_char);
      002D83 C0 06            [24] 2832 	push	ar6
      002D85 C0 07            [24] 2833 	push	ar7
      002D87 90 00 31         [24] 2834 	mov	dptr,#_qmark_command_handler_curr_char_196610_138
      002D8A E0               [24] 2835 	movx	a,@dptr
      002D8B FF               [12] 2836 	mov	r7,a
      002D8C 7E 00            [12] 2837 	mov	r6,#0x00
      002D8E C0 07            [24] 2838 	push	ar7
      002D90 C0 06            [24] 2839 	push	ar6
      002D92 C0 05            [24] 2840 	push	ar5
      002D94 C0 04            [24] 2841 	push	ar4
      002D96 C0 03            [24] 2842 	push	ar3
      002D98 C0 02            [24] 2843 	push	ar2
      002D9A C0 01            [24] 2844 	push	ar1
      002D9C C0 00            [24] 2845 	push	ar0
      002D9E C0 07            [24] 2846 	push	ar7
      002DA0 C0 06            [24] 2847 	push	ar6
      002DA2 74 32            [12] 2848 	mov	a,#___str_15
      002DA4 C0 E0            [24] 2849 	push	acc
      002DA6 74 4C            [12] 2850 	mov	a,#(___str_15 >> 8)
      002DA8 C0 E0            [24] 2851 	push	acc
      002DAA 74 80            [12] 2852 	mov	a,#0x80
      002DAC C0 E0            [24] 2853 	push	acc
      002DAE 12 3F B3         [24] 2854 	lcall	_printf
      002DB1 E5 81            [12] 2855 	mov	a,sp
      002DB3 24 FB            [12] 2856 	add	a,#0xfb
      002DB5 F5 81            [12] 2857 	mov	sp,a
      002DB7 D0 00            [24] 2858 	pop	ar0
      002DB9 D0 01            [24] 2859 	pop	ar1
      002DBB D0 02            [24] 2860 	pop	ar2
      002DBD D0 03            [24] 2861 	pop	ar3
      002DBF D0 04            [24] 2862 	pop	ar4
      002DC1 D0 05            [24] 2863 	pop	ar5
      002DC3 D0 06            [24] 2864 	pop	ar6
      002DC5 D0 07            [24] 2865 	pop	ar7
                                   2866 ;	src/main.c:341: curr_output_char++;
      002DC7 0A               [12] 2867 	inc	r2
      002DC8 BA 00 01         [24] 2868 	cjne	r2,#0x00,00138$
      002DCB 0B               [12] 2869 	inc	r3
      002DCC                       2870 00138$:
                                   2871 ;	src/main.c:342: curr_buffer_char++;
      002DCC 08               [12] 2872 	inc	r0
      002DCD B8 00 01         [24] 2873 	cjne	r0,#0x00,00139$
      002DD0 09               [12] 2874 	inc	r1
      002DD1                       2875 00139$:
                                   2876 ;	src/main.c:343: curr_char = static_buffers[i].buffer[curr_buffer_char];
      002DD1 8C 82            [24] 2877 	mov	dpl,r4
      002DD3 8D 83            [24] 2878 	mov	dph,r5
      002DD5 E0               [24] 2879 	movx	a,@dptr
      002DD6 FE               [12] 2880 	mov	r6,a
      002DD7 A3               [24] 2881 	inc	dptr
      002DD8 E0               [24] 2882 	movx	a,@dptr
      002DD9 FF               [12] 2883 	mov	r7,a
      002DDA E8               [12] 2884 	mov	a,r0
      002DDB 2E               [12] 2885 	add	a,r6
      002DDC F5 82            [12] 2886 	mov	dpl,a
      002DDE E9               [12] 2887 	mov	a,r1
      002DDF 3F               [12] 2888 	addc	a,r7
      002DE0 F5 83            [12] 2889 	mov	dph,a
      002DE2 E0               [24] 2890 	movx	a,@dptr
      002DE3 90 00 31         [24] 2891 	mov	dptr,#_qmark_command_handler_curr_char_196610_138
      002DE6 F0               [24] 2892 	movx	@dptr,a
      002DE7 D0 07            [24] 2893 	pop	ar7
      002DE9 D0 06            [24] 2894 	pop	ar6
      002DEB 02 2D 40         [24] 2895 	ljmp	00103$
      002DEE                       2896 00117$:
      002DEE 90 00 2F         [24] 2897 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_136
      002DF1 EA               [12] 2898 	mov	a,r2
      002DF2 F0               [24] 2899 	movx	@dptr,a
      002DF3 EB               [12] 2900 	mov	a,r3
      002DF4 A3               [24] 2901 	inc	dptr
      002DF5 F0               [24] 2902 	movx	@dptr,a
                                   2903 ;	src/main.c:346: memset(static_buffers[i].buffer, '\0', static_buffers[i].size);
      002DF6 90 20 81         [24] 2904 	mov	dptr,#__mulint_PARM_2
      002DF9 EE               [12] 2905 	mov	a,r6
      002DFA F0               [24] 2906 	movx	@dptr,a
      002DFB EF               [12] 2907 	mov	a,r7
      002DFC A3               [24] 2908 	inc	dptr
      002DFD F0               [24] 2909 	movx	@dptr,a
      002DFE 90 00 0B         [24] 2910 	mov	dptr,#0x000b
      002E01 C0 07            [24] 2911 	push	ar7
      002E03 C0 06            [24] 2912 	push	ar6
      002E05 12 3F 45         [24] 2913 	lcall	__mulint
      002E08 AC 82            [24] 2914 	mov	r4,dpl
      002E0A AD 83            [24] 2915 	mov	r5,dph
      002E0C EC               [12] 2916 	mov	a,r4
      002E0D 24 01            [12] 2917 	add	a,#_static_buffers
      002E0F F5 82            [12] 2918 	mov	dpl,a
      002E11 ED               [12] 2919 	mov	a,r5
      002E12 34 00            [12] 2920 	addc	a,#(_static_buffers >> 8)
      002E14 F5 83            [12] 2921 	mov	dph,a
      002E16 E0               [24] 2922 	movx	a,@dptr
      002E17 FA               [12] 2923 	mov	r2,a
      002E18 A3               [24] 2924 	inc	dptr
      002E19 E0               [24] 2925 	movx	a,@dptr
      002E1A FB               [12] 2926 	mov	r3,a
      002E1B 8A 43            [24] 2927 	mov	_qmark_command_handler_sloc0_1_0,r2
      002E1D 8B 44            [24] 2928 	mov	(_qmark_command_handler_sloc0_1_0 + 1),r3
      002E1F 75 45 00         [24] 2929 	mov	(_qmark_command_handler_sloc0_1_0 + 2),#0x00
      002E22 EC               [12] 2930 	mov	a,r4
      002E23 24 01            [12] 2931 	add	a,#_static_buffers
      002E25 FC               [12] 2932 	mov	r4,a
      002E26 ED               [12] 2933 	mov	a,r5
      002E27 34 00            [12] 2934 	addc	a,#(_static_buffers >> 8)
      002E29 FD               [12] 2935 	mov	r5,a
      002E2A 8C 82            [24] 2936 	mov	dpl,r4
      002E2C 8D 83            [24] 2937 	mov	dph,r5
      002E2E A3               [24] 2938 	inc	dptr
      002E2F A3               [24] 2939 	inc	dptr
      002E30 A3               [24] 2940 	inc	dptr
      002E31 A3               [24] 2941 	inc	dptr
      002E32 E0               [24] 2942 	movx	a,@dptr
      002E33 F8               [12] 2943 	mov	r0,a
      002E34 A3               [24] 2944 	inc	dptr
      002E35 E0               [24] 2945 	movx	a,@dptr
      002E36 FB               [12] 2946 	mov	r3,a
      002E37 90 20 6F         [24] 2947 	mov	dptr,#_memset_PARM_2
      002E3A E4               [12] 2948 	clr	a
      002E3B F0               [24] 2949 	movx	@dptr,a
      002E3C 90 20 70         [24] 2950 	mov	dptr,#_memset_PARM_3
      002E3F E8               [12] 2951 	mov	a,r0
      002E40 F0               [24] 2952 	movx	@dptr,a
      002E41 EB               [12] 2953 	mov	a,r3
      002E42 A3               [24] 2954 	inc	dptr
      002E43 F0               [24] 2955 	movx	@dptr,a
      002E44 85 43 82         [24] 2956 	mov	dpl,_qmark_command_handler_sloc0_1_0
      002E47 85 44 83         [24] 2957 	mov	dph,(_qmark_command_handler_sloc0_1_0 + 1)
      002E4A 85 45 F0         [24] 2958 	mov	b,(_qmark_command_handler_sloc0_1_0 + 2)
      002E4D C0 05            [24] 2959 	push	ar5
      002E4F C0 04            [24] 2960 	push	ar4
      002E51 12 3C 39         [24] 2961 	lcall	_memset
      002E54 D0 04            [24] 2962 	pop	ar4
      002E56 D0 05            [24] 2963 	pop	ar5
      002E58 D0 06            [24] 2964 	pop	ar6
      002E5A D0 07            [24] 2965 	pop	ar7
                                   2966 ;	src/main.c:347: static_buffers[i].alphabet_chars = 0;
      002E5C 8C 82            [24] 2967 	mov	dpl,r4
      002E5E 8D 83            [24] 2968 	mov	dph,r5
      002E60 A3               [24] 2969 	inc	dptr
      002E61 A3               [24] 2970 	inc	dptr
      002E62 E4               [12] 2971 	clr	a
      002E63 F0               [24] 2972 	movx	@dptr,a
      002E64 A3               [24] 2973 	inc	dptr
      002E65 F0               [24] 2974 	movx	@dptr,a
                                   2975 ;	src/main.c:348: static_buffers[i].curr_available_char = 0;
      002E66 74 06            [12] 2976 	mov	a,#0x06
      002E68 2C               [12] 2977 	add	a,r4
      002E69 F5 82            [12] 2978 	mov	dpl,a
      002E6B E4               [12] 2979 	clr	a
      002E6C 3D               [12] 2980 	addc	a,r5
      002E6D F5 83            [12] 2981 	mov	dph,a
      002E6F E4               [12] 2982 	clr	a
      002E70 F0               [24] 2983 	movx	@dptr,a
      002E71 A3               [24] 2984 	inc	dptr
      002E72 F0               [24] 2985 	movx	@dptr,a
                                   2986 ;	src/main.c:330: for(int i = 0; i < 2; i++)
      002E73 0E               [12] 2987 	inc	r6
      002E74 BE 00 01         [24] 2988 	cjne	r6,#0x00,00140$
      002E77 0F               [12] 2989 	inc	r7
      002E78                       2990 00140$:
      002E78 02 2C F2         [24] 2991 	ljmp	00108$
      002E7B                       2992 00106$:
                                   2993 ;	src/main.c:351: printf("\r\n");
      002E7B 74 A1            [12] 2994 	mov	a,#___str_11
      002E7D C0 E0            [24] 2995 	push	acc
      002E7F 74 4B            [12] 2996 	mov	a,#(___str_11 >> 8)
      002E81 C0 E0            [24] 2997 	push	acc
      002E83 74 80            [12] 2998 	mov	a,#0x80
      002E85 C0 E0            [24] 2999 	push	acc
      002E87 12 3F B3         [24] 3000 	lcall	_printf
      002E8A 15 81            [12] 3001 	dec	sp
      002E8C 15 81            [12] 3002 	dec	sp
      002E8E 15 81            [12] 3003 	dec	sp
                                   3004 ;	src/main.c:352: printf("\r\n");
      002E90 74 A1            [12] 3005 	mov	a,#___str_11
      002E92 C0 E0            [24] 3006 	push	acc
      002E94 74 4B            [12] 3007 	mov	a,#(___str_11 >> 8)
      002E96 C0 E0            [24] 3008 	push	acc
      002E98 74 80            [12] 3009 	mov	a,#0x80
      002E9A C0 E0            [24] 3010 	push	acc
      002E9C 12 3F B3         [24] 3011 	lcall	_printf
      002E9F 15 81            [12] 3012 	dec	sp
      002EA1 15 81            [12] 3013 	dec	sp
      002EA3 15 81            [12] 3014 	dec	sp
                                   3015 ;	src/main.c:353: }
      002EA5 22               [24] 3016 	ret
                                   3017 ;------------------------------------------------------------
                                   3018 ;Allocation info for local variables in function 'enter_command_handler'
                                   3019 ;------------------------------------------------------------
                                   3020 ;sloc0                     Allocated with name '_enter_command_handler_sloc0_1_0'
                                   3021 ;sloc1                     Allocated with name '_enter_command_handler_sloc1_1_0'
                                   3022 ;sloc2                     Allocated with name '_enter_command_handler_sloc2_1_0'
                                   3023 ;sloc3                     Allocated with name '_enter_command_handler_sloc3_1_0'
                                   3024 ;i                         Allocated with name '_enter_command_handler_i_131072_142'
                                   3025 ;address                   Allocated with name '_enter_command_handler_address_262144_144'
                                   3026 ;j                         Allocated with name '_enter_command_handler_j_393216_146'
                                   3027 ;------------------------------------------------------------
                                   3028 ;	src/main.c:355: void enter_command_handler()
                                   3029 ;	-----------------------------------------
                                   3030 ;	 function enter_command_handler
                                   3031 ;	-----------------------------------------
      002EA6                       3032 _enter_command_handler:
                                   3033 ;	src/main.c:357: command_header("Dump Admin Buffers");
      002EA6 90 4C 35         [24] 3034 	mov	dptr,#___str_16
      002EA9 75 F0 80         [24] 3035 	mov	b,#0x80
      002EAC 12 29 04         [24] 3036 	lcall	_command_header
                                   3037 ;	src/main.c:358: for(int i = 0; i < 2; i++)
      002EAF 7E 00            [12] 3038 	mov	r6,#0x00
      002EB1 7F 00            [12] 3039 	mov	r7,#0x00
      002EB3                       3040 00111$:
      002EB3 C3               [12] 3041 	clr	c
      002EB4 EE               [12] 3042 	mov	a,r6
      002EB5 94 02            [12] 3043 	subb	a,#0x02
      002EB7 EF               [12] 3044 	mov	a,r7
      002EB8 64 80            [12] 3045 	xrl	a,#0x80
      002EBA 94 80            [12] 3046 	subb	a,#0x80
      002EBC 40 01            [24] 3047 	jc	00142$
      002EBE 22               [24] 3048 	ret
      002EBF                       3049 00142$:
                                   3050 ;	src/main.c:360: printf("\r\n Buffer %d ", i);
      002EBF C0 07            [24] 3051 	push	ar7
      002EC1 C0 06            [24] 3052 	push	ar6
      002EC3 C0 06            [24] 3053 	push	ar6
      002EC5 C0 07            [24] 3054 	push	ar7
      002EC7 74 48            [12] 3055 	mov	a,#___str_17
      002EC9 C0 E0            [24] 3056 	push	acc
      002ECB 74 4C            [12] 3057 	mov	a,#(___str_17 >> 8)
      002ECD C0 E0            [24] 3058 	push	acc
      002ECF 74 80            [12] 3059 	mov	a,#0x80
      002ED1 C0 E0            [24] 3060 	push	acc
      002ED3 12 3F B3         [24] 3061 	lcall	_printf
      002ED6 E5 81            [12] 3062 	mov	a,sp
      002ED8 24 FB            [12] 3063 	add	a,#0xfb
      002EDA F5 81            [12] 3064 	mov	sp,a
                                   3065 ;	src/main.c:361: printf("\r\n----------");
      002EDC 74 56            [12] 3066 	mov	a,#___str_18
      002EDE C0 E0            [24] 3067 	push	acc
      002EE0 74 4C            [12] 3068 	mov	a,#(___str_18 >> 8)
      002EE2 C0 E0            [24] 3069 	push	acc
      002EE4 74 80            [12] 3070 	mov	a,#0x80
      002EE6 C0 E0            [24] 3071 	push	acc
      002EE8 12 3F B3         [24] 3072 	lcall	_printf
      002EEB 15 81            [12] 3073 	dec	sp
      002EED 15 81            [12] 3074 	dec	sp
      002EEF 15 81            [12] 3075 	dec	sp
      002EF1 D0 06            [24] 3076 	pop	ar6
      002EF3 D0 07            [24] 3077 	pop	ar7
                                   3078 ;	src/main.c:362: for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
      002EF5 90 20 81         [24] 3079 	mov	dptr,#__mulint_PARM_2
      002EF8 EE               [12] 3080 	mov	a,r6
      002EF9 F0               [24] 3081 	movx	@dptr,a
      002EFA EF               [12] 3082 	mov	a,r7
      002EFB A3               [24] 3083 	inc	dptr
      002EFC F0               [24] 3084 	movx	@dptr,a
      002EFD 90 00 0B         [24] 3085 	mov	dptr,#0x000b
      002F00 C0 07            [24] 3086 	push	ar7
      002F02 C0 06            [24] 3087 	push	ar6
      002F04 12 3F 45         [24] 3088 	lcall	__mulint
      002F07 AC 82            [24] 3089 	mov	r4,dpl
      002F09 AD 83            [24] 3090 	mov	r5,dph
      002F0B D0 06            [24] 3091 	pop	ar6
      002F0D D0 07            [24] 3092 	pop	ar7
      002F0F EC               [12] 3093 	mov	a,r4
      002F10 24 01            [12] 3094 	add	a,#_static_buffers
      002F12 FA               [12] 3095 	mov	r2,a
      002F13 ED               [12] 3096 	mov	a,r5
      002F14 34 00            [12] 3097 	addc	a,#(_static_buffers >> 8)
      002F16 FB               [12] 3098 	mov	r3,a
      002F17 8A 82            [24] 3099 	mov	dpl,r2
      002F19 8B 83            [24] 3100 	mov	dph,r3
      002F1B E0               [24] 3101 	movx	a,@dptr
      002F1C F8               [12] 3102 	mov	r0,a
      002F1D A3               [24] 3103 	inc	dptr
      002F1E E0               [24] 3104 	movx	a,@dptr
      002F1F F9               [12] 3105 	mov	r1,a
      002F20 88 46            [24] 3106 	mov	_enter_command_handler_sloc0_1_0,r0
      002F22 89 47            [24] 3107 	mov	(_enter_command_handler_sloc0_1_0 + 1),r1
      002F24 75 48 00         [24] 3108 	mov	(_enter_command_handler_sloc0_1_0 + 2),#0x00
      002F27 8E 00            [24] 3109 	mov	ar0,r6
      002F29 8F 01            [24] 3110 	mov	ar1,r7
      002F2B 8A 4D            [24] 3111 	mov	_enter_command_handler_sloc3_1_0,r2
      002F2D 8B 4E            [24] 3112 	mov	(_enter_command_handler_sloc3_1_0 + 1),r3
      002F2F EC               [12] 3113 	mov	a,r4
      002F30 24 01            [12] 3114 	add	a,#_static_buffers
      002F32 FC               [12] 3115 	mov	r4,a
      002F33 ED               [12] 3116 	mov	a,r5
      002F34 34 00            [12] 3117 	addc	a,#(_static_buffers >> 8)
      002F36 FD               [12] 3118 	mov	r5,a
      002F37 74 04            [12] 3119 	mov	a,#0x04
      002F39 2C               [12] 3120 	add	a,r4
      002F3A F5 49            [12] 3121 	mov	_enter_command_handler_sloc1_1_0,a
      002F3C E4               [12] 3122 	clr	a
      002F3D 3D               [12] 3123 	addc	a,r5
      002F3E F5 4A            [12] 3124 	mov	(_enter_command_handler_sloc1_1_0 + 1),a
      002F40                       3125 00108$:
      002F40 C0 00            [24] 3126 	push	ar0
      002F42 C0 01            [24] 3127 	push	ar1
      002F44 85 4D 82         [24] 3128 	mov	dpl,_enter_command_handler_sloc3_1_0
      002F47 85 4E 83         [24] 3129 	mov	dph,(_enter_command_handler_sloc3_1_0 + 1)
      002F4A E0               [24] 3130 	movx	a,@dptr
      002F4B F8               [12] 3131 	mov	r0,a
      002F4C A3               [24] 3132 	inc	dptr
      002F4D E0               [24] 3133 	movx	a,@dptr
      002F4E F9               [12] 3134 	mov	r1,a
      002F4F 85 49 82         [24] 3135 	mov	dpl,_enter_command_handler_sloc1_1_0
      002F52 85 4A 83         [24] 3136 	mov	dph,(_enter_command_handler_sloc1_1_0 + 1)
      002F55 E0               [24] 3137 	movx	a,@dptr
      002F56 FC               [12] 3138 	mov	r4,a
      002F57 A3               [24] 3139 	inc	dptr
      002F58 E0               [24] 3140 	movx	a,@dptr
      002F59 FD               [12] 3141 	mov	r5,a
      002F5A EC               [12] 3142 	mov	a,r4
      002F5B 28               [12] 3143 	add	a,r0
      002F5C F5 4B            [12] 3144 	mov	_enter_command_handler_sloc2_1_0,a
      002F5E ED               [12] 3145 	mov	a,r5
      002F5F 39               [12] 3146 	addc	a,r1
      002F60 F5 4C            [12] 3147 	mov	(_enter_command_handler_sloc2_1_0 + 1),a
      002F62 A9 46            [24] 3148 	mov	r1,_enter_command_handler_sloc0_1_0
      002F64 AC 47            [24] 3149 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      002F66 AD 48            [24] 3150 	mov	r5,(_enter_command_handler_sloc0_1_0 + 2)
      002F68 A8 4B            [24] 3151 	mov	r0,_enter_command_handler_sloc2_1_0
      002F6A AA 4C            [24] 3152 	mov	r2,(_enter_command_handler_sloc2_1_0 + 1)
      002F6C 7B 00            [12] 3153 	mov	r3,#0x00
      002F6E C0 00            [24] 3154 	push	ar0
      002F70 C0 02            [24] 3155 	push	ar2
      002F72 C0 03            [24] 3156 	push	ar3
      002F74 89 82            [24] 3157 	mov	dpl,r1
      002F76 8C 83            [24] 3158 	mov	dph,r4
      002F78 8D F0            [24] 3159 	mov	b,r5
      002F7A 12 20 06         [24] 3160 	lcall	___gptr_cmp
      002F7D 15 81            [12] 3161 	dec	sp
      002F7F 15 81            [12] 3162 	dec	sp
      002F81 15 81            [12] 3163 	dec	sp
      002F83 D0 01            [24] 3164 	pop	ar1
      002F85 D0 00            [24] 3165 	pop	ar0
      002F87 40 03            [24] 3166 	jc	00143$
      002F89 02 30 2C         [24] 3167 	ljmp	00102$
      002F8C                       3168 00143$:
                                   3169 ;	src/main.c:364: printf("\r\n%04X:", (unsigned int) address);
      002F8C AB 46            [24] 3170 	mov	r3,_enter_command_handler_sloc0_1_0
      002F8E AC 47            [24] 3171 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      002F90 C0 01            [24] 3172 	push	ar1
      002F92 C0 00            [24] 3173 	push	ar0
      002F94 C0 03            [24] 3174 	push	ar3
      002F96 C0 04            [24] 3175 	push	ar4
      002F98 74 63            [12] 3176 	mov	a,#___str_19
      002F9A C0 E0            [24] 3177 	push	acc
      002F9C 74 4C            [12] 3178 	mov	a,#(___str_19 >> 8)
      002F9E C0 E0            [24] 3179 	push	acc
      002FA0 74 80            [12] 3180 	mov	a,#0x80
      002FA2 C0 E0            [24] 3181 	push	acc
      002FA4 12 3F B3         [24] 3182 	lcall	_printf
      002FA7 E5 81            [12] 3183 	mov	a,sp
      002FA9 24 FB            [12] 3184 	add	a,#0xfb
      002FAB F5 81            [12] 3185 	mov	sp,a
      002FAD D0 00            [24] 3186 	pop	ar0
      002FAF D0 01            [24] 3187 	pop	ar1
                                   3188 ;	src/main.c:365: for(int j = 0; j < 16; j++)
      002FB1 AB 46            [24] 3189 	mov	r3,_enter_command_handler_sloc0_1_0
      002FB3 AC 47            [24] 3190 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      002FB5 AD 48            [24] 3191 	mov	r5,(_enter_command_handler_sloc0_1_0 + 2)
      002FB7 E4               [12] 3192 	clr	a
      002FB8 F5 4B            [12] 3193 	mov	_enter_command_handler_sloc2_1_0,a
      002FBA F5 4C            [12] 3194 	mov	(_enter_command_handler_sloc2_1_0 + 1),a
      002FBC                       3195 00105$:
      002FBC C3               [12] 3196 	clr	c
      002FBD E5 4B            [12] 3197 	mov	a,_enter_command_handler_sloc2_1_0
      002FBF 94 10            [12] 3198 	subb	a,#0x10
      002FC1 E5 4C            [12] 3199 	mov	a,(_enter_command_handler_sloc2_1_0 + 1)
      002FC3 64 80            [12] 3200 	xrl	a,#0x80
      002FC5 94 80            [12] 3201 	subb	a,#0x80
      002FC7 50 55            [24] 3202 	jnc	00109$
                                   3203 ;	src/main.c:367: printf(" %02hhX", (unsigned char) *(address+j));
      002FC9 C0 00            [24] 3204 	push	ar0
      002FCB C0 01            [24] 3205 	push	ar1
      002FCD E5 4B            [12] 3206 	mov	a,_enter_command_handler_sloc2_1_0
      002FCF 2B               [12] 3207 	add	a,r3
      002FD0 F8               [12] 3208 	mov	r0,a
      002FD1 E5 4C            [12] 3209 	mov	a,(_enter_command_handler_sloc2_1_0 + 1)
      002FD3 3C               [12] 3210 	addc	a,r4
      002FD4 F9               [12] 3211 	mov	r1,a
      002FD5 8D 02            [24] 3212 	mov	ar2,r5
      002FD7 88 82            [24] 3213 	mov	dpl,r0
      002FD9 89 83            [24] 3214 	mov	dph,r1
      002FDB 8A F0            [24] 3215 	mov	b,r2
      002FDD 12 49 DF         [24] 3216 	lcall	__gptrget
      002FE0 F8               [12] 3217 	mov	r0,a
      002FE1 7A 00            [12] 3218 	mov	r2,#0x00
      002FE3 C0 05            [24] 3219 	push	ar5
      002FE5 C0 04            [24] 3220 	push	ar4
      002FE7 C0 03            [24] 3221 	push	ar3
      002FE9 C0 01            [24] 3222 	push	ar1
      002FEB C0 00            [24] 3223 	push	ar0
      002FED C0 00            [24] 3224 	push	ar0
      002FEF C0 02            [24] 3225 	push	ar2
      002FF1 74 6B            [12] 3226 	mov	a,#___str_20
      002FF3 C0 E0            [24] 3227 	push	acc
      002FF5 74 4C            [12] 3228 	mov	a,#(___str_20 >> 8)
      002FF7 C0 E0            [24] 3229 	push	acc
      002FF9 74 80            [12] 3230 	mov	a,#0x80
      002FFB C0 E0            [24] 3231 	push	acc
      002FFD 12 3F B3         [24] 3232 	lcall	_printf
      003000 E5 81            [12] 3233 	mov	a,sp
      003002 24 FB            [12] 3234 	add	a,#0xfb
      003004 F5 81            [12] 3235 	mov	sp,a
      003006 D0 00            [24] 3236 	pop	ar0
      003008 D0 01            [24] 3237 	pop	ar1
      00300A D0 03            [24] 3238 	pop	ar3
      00300C D0 04            [24] 3239 	pop	ar4
      00300E D0 05            [24] 3240 	pop	ar5
                                   3241 ;	src/main.c:365: for(int j = 0; j < 16; j++)
      003010 05 4B            [12] 3242 	inc	_enter_command_handler_sloc2_1_0
      003012 E4               [12] 3243 	clr	a
      003013 B5 4B 02         [24] 3244 	cjne	a,_enter_command_handler_sloc2_1_0,00145$
      003016 05 4C            [12] 3245 	inc	(_enter_command_handler_sloc2_1_0 + 1)
      003018                       3246 00145$:
      003018 D0 01            [24] 3247 	pop	ar1
      00301A D0 00            [24] 3248 	pop	ar0
      00301C 80 9E            [24] 3249 	sjmp	00105$
      00301E                       3250 00109$:
                                   3251 ;	src/main.c:362: for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
      00301E 74 10            [12] 3252 	mov	a,#0x10
      003020 25 46            [12] 3253 	add	a,_enter_command_handler_sloc0_1_0
      003022 F5 46            [12] 3254 	mov	_enter_command_handler_sloc0_1_0,a
      003024 E4               [12] 3255 	clr	a
      003025 35 47            [12] 3256 	addc	a,(_enter_command_handler_sloc0_1_0 + 1)
      003027 F5 47            [12] 3257 	mov	(_enter_command_handler_sloc0_1_0 + 1),a
      003029 02 2F 40         [24] 3258 	ljmp	00108$
      00302C                       3259 00102$:
                                   3260 ;	src/main.c:370: printf("\r\n");
      00302C C0 01            [24] 3261 	push	ar1
      00302E C0 00            [24] 3262 	push	ar0
      003030 74 A1            [12] 3263 	mov	a,#___str_11
      003032 C0 E0            [24] 3264 	push	acc
      003034 74 4B            [12] 3265 	mov	a,#(___str_11 >> 8)
      003036 C0 E0            [24] 3266 	push	acc
      003038 74 80            [12] 3267 	mov	a,#0x80
      00303A C0 E0            [24] 3268 	push	acc
      00303C 12 3F B3         [24] 3269 	lcall	_printf
      00303F 15 81            [12] 3270 	dec	sp
      003041 15 81            [12] 3271 	dec	sp
      003043 15 81            [12] 3272 	dec	sp
      003045 D0 00            [24] 3273 	pop	ar0
      003047 D0 01            [24] 3274 	pop	ar1
                                   3275 ;	src/main.c:358: for(int i = 0; i < 2; i++)
      003049 74 01            [12] 3276 	mov	a,#0x01
      00304B 28               [12] 3277 	add	a,r0
      00304C FE               [12] 3278 	mov	r6,a
      00304D E4               [12] 3279 	clr	a
      00304E 39               [12] 3280 	addc	a,r1
      00304F FF               [12] 3281 	mov	r7,a
                                   3282 ;	src/main.c:372: }
      003050 02 2E B3         [24] 3283 	ljmp	00111$
                                   3284 ;------------------------------------------------------------
                                   3285 ;Allocation info for local variables in function 'percent_command_handler'
                                   3286 ;------------------------------------------------------------
                                   3287 ;sloc0                     Allocated with name '_percent_command_handler_sloc0_1_0'
                                   3288 ;i                         Allocated with name '_percent_command_handler_i_131072_149'
                                   3289 ;curr                      Allocated with name '_percent_command_handler_curr_65537_152'
                                   3290 ;------------------------------------------------------------
                                   3291 ;	src/main.c:374: void percent_command_handler()
                                   3292 ;	-----------------------------------------
                                   3293 ;	 function percent_command_handler
                                   3294 ;	-----------------------------------------
      003053                       3295 _percent_command_handler:
                                   3296 ;	src/main.c:376: command_header("Clear Buffers");
      003053 90 4C 73         [24] 3297 	mov	dptr,#___str_21
      003056 75 F0 80         [24] 3298 	mov	b,#0x80
      003059 12 29 04         [24] 3299 	lcall	_command_header
                                   3300 ;	src/main.c:377: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00305C 7E 00            [12] 3301 	mov	r6,#0x00
      00305E 7F 00            [12] 3302 	mov	r7,#0x00
      003060                       3303 00107$:
      003060 C3               [12] 3304 	clr	c
      003061 EE               [12] 3305 	mov	a,r6
      003062 94 02            [12] 3306 	subb	a,#0x02
      003064 EF               [12] 3307 	mov	a,r7
      003065 64 80            [12] 3308 	xrl	a,#0x80
      003067 94 80            [12] 3309 	subb	a,#0x80
      003069 40 03            [24] 3310 	jc	00128$
      00306B 02 30 FF         [24] 3311 	ljmp	00103$
      00306E                       3312 00128$:
                                   3313 ;	src/main.c:379: if (static_buffers[i].buffer != NULL) 
      00306E 90 20 81         [24] 3314 	mov	dptr,#__mulint_PARM_2
      003071 EE               [12] 3315 	mov	a,r6
      003072 F0               [24] 3316 	movx	@dptr,a
      003073 EF               [12] 3317 	mov	a,r7
      003074 A3               [24] 3318 	inc	dptr
      003075 F0               [24] 3319 	movx	@dptr,a
      003076 90 00 0B         [24] 3320 	mov	dptr,#0x000b
      003079 C0 07            [24] 3321 	push	ar7
      00307B C0 06            [24] 3322 	push	ar6
      00307D 12 3F 45         [24] 3323 	lcall	__mulint
      003080 AC 82            [24] 3324 	mov	r4,dpl
      003082 AD 83            [24] 3325 	mov	r5,dph
      003084 D0 06            [24] 3326 	pop	ar6
      003086 D0 07            [24] 3327 	pop	ar7
      003088 EC               [12] 3328 	mov	a,r4
      003089 24 01            [12] 3329 	add	a,#_static_buffers
      00308B F5 82            [12] 3330 	mov	dpl,a
      00308D ED               [12] 3331 	mov	a,r5
      00308E 34 00            [12] 3332 	addc	a,#(_static_buffers >> 8)
      003090 F5 83            [12] 3333 	mov	dph,a
      003092 E0               [24] 3334 	movx	a,@dptr
      003093 FA               [12] 3335 	mov	r2,a
      003094 A3               [24] 3336 	inc	dptr
      003095 E0               [24] 3337 	movx	a,@dptr
      003096 FB               [12] 3338 	mov	r3,a
      003097 4A               [12] 3339 	orl	a,r2
      003098 60 5D            [24] 3340 	jz	00108$
                                   3341 ;	src/main.c:381: memset(static_buffers[i].buffer, 0x00, static_buffers[i].size);
      00309A C0 06            [24] 3342 	push	ar6
      00309C C0 07            [24] 3343 	push	ar7
      00309E 8B 01            [24] 3344 	mov	ar1,r3
      0030A0 7B 00            [12] 3345 	mov	r3,#0x00
      0030A2 EC               [12] 3346 	mov	a,r4
      0030A3 24 01            [12] 3347 	add	a,#_static_buffers
      0030A5 FC               [12] 3348 	mov	r4,a
      0030A6 ED               [12] 3349 	mov	a,r5
      0030A7 34 00            [12] 3350 	addc	a,#(_static_buffers >> 8)
      0030A9 FD               [12] 3351 	mov	r5,a
      0030AA 8C 82            [24] 3352 	mov	dpl,r4
      0030AC 8D 83            [24] 3353 	mov	dph,r5
      0030AE A3               [24] 3354 	inc	dptr
      0030AF A3               [24] 3355 	inc	dptr
      0030B0 A3               [24] 3356 	inc	dptr
      0030B1 A3               [24] 3357 	inc	dptr
      0030B2 E0               [24] 3358 	movx	a,@dptr
      0030B3 F8               [12] 3359 	mov	r0,a
      0030B4 A3               [24] 3360 	inc	dptr
      0030B5 E0               [24] 3361 	movx	a,@dptr
      0030B6 FF               [12] 3362 	mov	r7,a
      0030B7 90 20 6F         [24] 3363 	mov	dptr,#_memset_PARM_2
      0030BA E4               [12] 3364 	clr	a
      0030BB F0               [24] 3365 	movx	@dptr,a
      0030BC 90 20 70         [24] 3366 	mov	dptr,#_memset_PARM_3
      0030BF E8               [12] 3367 	mov	a,r0
      0030C0 F0               [24] 3368 	movx	@dptr,a
      0030C1 EF               [12] 3369 	mov	a,r7
      0030C2 A3               [24] 3370 	inc	dptr
      0030C3 F0               [24] 3371 	movx	@dptr,a
      0030C4 8A 82            [24] 3372 	mov	dpl,r2
      0030C6 89 83            [24] 3373 	mov	dph,r1
      0030C8 8B F0            [24] 3374 	mov	b,r3
      0030CA C0 07            [24] 3375 	push	ar7
      0030CC C0 06            [24] 3376 	push	ar6
      0030CE C0 05            [24] 3377 	push	ar5
      0030D0 C0 04            [24] 3378 	push	ar4
      0030D2 12 3C 39         [24] 3379 	lcall	_memset
      0030D5 D0 04            [24] 3380 	pop	ar4
      0030D7 D0 05            [24] 3381 	pop	ar5
      0030D9 D0 06            [24] 3382 	pop	ar6
      0030DB D0 07            [24] 3383 	pop	ar7
                                   3384 ;	src/main.c:382: static_buffers[i].curr_available_char = 0;
      0030DD 74 06            [12] 3385 	mov	a,#0x06
      0030DF 2C               [12] 3386 	add	a,r4
      0030E0 F5 82            [12] 3387 	mov	dpl,a
      0030E2 E4               [12] 3388 	clr	a
      0030E3 3D               [12] 3389 	addc	a,r5
      0030E4 F5 83            [12] 3390 	mov	dph,a
      0030E6 E4               [12] 3391 	clr	a
      0030E7 F0               [24] 3392 	movx	@dptr,a
      0030E8 A3               [24] 3393 	inc	dptr
      0030E9 F0               [24] 3394 	movx	@dptr,a
                                   3395 ;	src/main.c:383: static_buffers[i].alphabet_chars = 0; 
      0030EA 8C 82            [24] 3396 	mov	dpl,r4
      0030EC 8D 83            [24] 3397 	mov	dph,r5
      0030EE A3               [24] 3398 	inc	dptr
      0030EF A3               [24] 3399 	inc	dptr
      0030F0 F0               [24] 3400 	movx	@dptr,a
      0030F1 A3               [24] 3401 	inc	dptr
      0030F2 F0               [24] 3402 	movx	@dptr,a
                                   3403 ;	src/main.c:392: curr->alphabet_chars = 0; 
      0030F3 D0 07            [24] 3404 	pop	ar7
      0030F5 D0 06            [24] 3405 	pop	ar6
                                   3406 ;	src/main.c:383: static_buffers[i].alphabet_chars = 0; 
      0030F7                       3407 00108$:
                                   3408 ;	src/main.c:377: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      0030F7 0E               [12] 3409 	inc	r6
      0030F8 BE 00 01         [24] 3410 	cjne	r6,#0x00,00130$
      0030FB 0F               [12] 3411 	inc	r7
      0030FC                       3412 00130$:
      0030FC 02 30 60         [24] 3413 	ljmp	00107$
      0030FF                       3414 00103$:
                                   3415 ;	src/main.c:387: buffer_t *curr = dynamic_buffers_list.head;
      0030FF 90 20 BA         [24] 3416 	mov	dptr,#_dynamic_buffers_list
      003102 E0               [24] 3417 	movx	a,@dptr
      003103 FD               [12] 3418 	mov	r5,a
      003104 A3               [24] 3419 	inc	dptr
      003105 E0               [24] 3420 	movx	a,@dptr
      003106 FE               [12] 3421 	mov	r6,a
      003107 A3               [24] 3422 	inc	dptr
      003108 E0               [24] 3423 	movx	a,@dptr
      003109 FF               [12] 3424 	mov	r7,a
                                   3425 ;	src/main.c:388: if (curr != NULL)
      00310A ED               [12] 3426 	mov	a,r5
      00310B 4E               [12] 3427 	orl	a,r6
      00310C 70 01            [24] 3428 	jnz	00131$
      00310E 22               [24] 3429 	ret
      00310F                       3430 00131$:
                                   3431 ;	src/main.c:390: memset(curr->buffer, 0x00, curr->size);
      00310F 8D 82            [24] 3432 	mov	dpl,r5
      003111 8E 83            [24] 3433 	mov	dph,r6
      003113 8F F0            [24] 3434 	mov	b,r7
      003115 12 49 DF         [24] 3435 	lcall	__gptrget
      003118 FB               [12] 3436 	mov	r3,a
      003119 A3               [24] 3437 	inc	dptr
      00311A 12 49 DF         [24] 3438 	lcall	__gptrget
      00311D FC               [12] 3439 	mov	r4,a
      00311E 8B 4F            [24] 3440 	mov	_percent_command_handler_sloc0_1_0,r3
      003120 8C 50            [24] 3441 	mov	(_percent_command_handler_sloc0_1_0 + 1),r4
      003122 75 51 00         [24] 3442 	mov	(_percent_command_handler_sloc0_1_0 + 2),#0x00
      003125 74 04            [12] 3443 	mov	a,#0x04
      003127 2D               [12] 3444 	add	a,r5
      003128 F8               [12] 3445 	mov	r0,a
      003129 E4               [12] 3446 	clr	a
      00312A 3E               [12] 3447 	addc	a,r6
      00312B F9               [12] 3448 	mov	r1,a
      00312C 8F 04            [24] 3449 	mov	ar4,r7
      00312E 88 82            [24] 3450 	mov	dpl,r0
      003130 89 83            [24] 3451 	mov	dph,r1
      003132 8C F0            [24] 3452 	mov	b,r4
      003134 12 49 DF         [24] 3453 	lcall	__gptrget
      003137 F8               [12] 3454 	mov	r0,a
      003138 A3               [24] 3455 	inc	dptr
      003139 12 49 DF         [24] 3456 	lcall	__gptrget
      00313C F9               [12] 3457 	mov	r1,a
      00313D 90 20 6F         [24] 3458 	mov	dptr,#_memset_PARM_2
      003140 E4               [12] 3459 	clr	a
      003141 F0               [24] 3460 	movx	@dptr,a
      003142 90 20 70         [24] 3461 	mov	dptr,#_memset_PARM_3
      003145 E8               [12] 3462 	mov	a,r0
      003146 F0               [24] 3463 	movx	@dptr,a
      003147 E9               [12] 3464 	mov	a,r1
      003148 A3               [24] 3465 	inc	dptr
      003149 F0               [24] 3466 	movx	@dptr,a
      00314A 85 4F 82         [24] 3467 	mov	dpl,_percent_command_handler_sloc0_1_0
      00314D 85 50 83         [24] 3468 	mov	dph,(_percent_command_handler_sloc0_1_0 + 1)
      003150 85 51 F0         [24] 3469 	mov	b,(_percent_command_handler_sloc0_1_0 + 2)
      003153 C0 07            [24] 3470 	push	ar7
      003155 C0 06            [24] 3471 	push	ar6
      003157 C0 05            [24] 3472 	push	ar5
      003159 12 3C 39         [24] 3473 	lcall	_memset
      00315C D0 05            [24] 3474 	pop	ar5
      00315E D0 06            [24] 3475 	pop	ar6
      003160 D0 07            [24] 3476 	pop	ar7
                                   3477 ;	src/main.c:391: curr->curr_available_char = 0;
      003162 74 06            [12] 3478 	mov	a,#0x06
      003164 2D               [12] 3479 	add	a,r5
      003165 FA               [12] 3480 	mov	r2,a
      003166 E4               [12] 3481 	clr	a
      003167 3E               [12] 3482 	addc	a,r6
      003168 FB               [12] 3483 	mov	r3,a
      003169 8F 04            [24] 3484 	mov	ar4,r7
      00316B 8A 82            [24] 3485 	mov	dpl,r2
      00316D 8B 83            [24] 3486 	mov	dph,r3
      00316F 8C F0            [24] 3487 	mov	b,r4
      003171 E4               [12] 3488 	clr	a
      003172 12 3D 85         [24] 3489 	lcall	__gptrput
      003175 A3               [24] 3490 	inc	dptr
      003176 12 3D 85         [24] 3491 	lcall	__gptrput
                                   3492 ;	src/main.c:392: curr->alphabet_chars = 0; 
      003179 74 02            [12] 3493 	mov	a,#0x02
      00317B 2D               [12] 3494 	add	a,r5
      00317C FD               [12] 3495 	mov	r5,a
      00317D E4               [12] 3496 	clr	a
      00317E 3E               [12] 3497 	addc	a,r6
      00317F FE               [12] 3498 	mov	r6,a
      003180 8D 82            [24] 3499 	mov	dpl,r5
      003182 8E 83            [24] 3500 	mov	dph,r6
      003184 8F F0            [24] 3501 	mov	b,r7
      003186 E4               [12] 3502 	clr	a
      003187 12 3D 85         [24] 3503 	lcall	__gptrput
      00318A A3               [24] 3504 	inc	dptr
                                   3505 ;	src/main.c:394: }
      00318B 02 3D 85         [24] 3506 	ljmp	__gptrput
                                   3507 ;------------------------------------------------------------
                                   3508 ;Allocation info for local variables in function 'dollar_sign_command_handler'
                                   3509 ;------------------------------------------------------------
                                   3510 ;sloc0                     Allocated with name '_dollar_sign_command_handler_sloc0_1_0'
                                   3511 ;buffer_3                  Allocated with name '_dollar_sign_command_handler_buffer_3_65537_156'
                                   3512 ;------------------------------------------------------------
                                   3513 ;	src/main.c:396: void dollar_sign_command_handler()
                                   3514 ;	-----------------------------------------
                                   3515 ;	 function dollar_sign_command_handler
                                   3516 ;	-----------------------------------------
      00318E                       3517 _dollar_sign_command_handler:
                                   3518 ;	src/main.c:398: P1_0 = ON;
                                   3519 ;	assignBit
      00318E D2 90            [12] 3520 	setb	_P1_0
                                   3521 ;	src/main.c:399: if (dynamic_buffers_list.head == NULL
      003190 90 20 BA         [24] 3522 	mov	dptr,#_dynamic_buffers_list
      003193 E0               [24] 3523 	movx	a,@dptr
      003194 FD               [12] 3524 	mov	r5,a
      003195 A3               [24] 3525 	inc	dptr
      003196 E0               [24] 3526 	movx	a,@dptr
      003197 FE               [12] 3527 	mov	r6,a
      003198 A3               [24] 3528 	inc	dptr
      003199 E0               [24] 3529 	movx	a,@dptr
      00319A FF               [12] 3530 	mov	r7,a
      00319B ED               [12] 3531 	mov	a,r5
      00319C 4E               [12] 3532 	orl	a,r6
      00319D 60 1F            [24] 3533 	jz	00101$
                                   3534 ;	src/main.c:400: || dynamic_buffers_list.head->next == NULL) 
      00319F 74 08            [12] 3535 	mov	a,#0x08
      0031A1 2D               [12] 3536 	add	a,r5
      0031A2 FD               [12] 3537 	mov	r5,a
      0031A3 E4               [12] 3538 	clr	a
      0031A4 3E               [12] 3539 	addc	a,r6
      0031A5 FE               [12] 3540 	mov	r6,a
      0031A6 8D 82            [24] 3541 	mov	dpl,r5
      0031A8 8E 83            [24] 3542 	mov	dph,r6
      0031AA 8F F0            [24] 3543 	mov	b,r7
      0031AC 12 49 DF         [24] 3544 	lcall	__gptrget
      0031AF FD               [12] 3545 	mov	r5,a
      0031B0 A3               [24] 3546 	inc	dptr
      0031B1 12 49 DF         [24] 3547 	lcall	__gptrget
      0031B4 FE               [12] 3548 	mov	r6,a
      0031B5 A3               [24] 3549 	inc	dptr
      0031B6 12 49 DF         [24] 3550 	lcall	__gptrget
      0031B9 FF               [12] 3551 	mov	r7,a
      0031BA ED               [12] 3552 	mov	a,r5
      0031BB 4E               [12] 3553 	orl	a,r6
      0031BC 70 03            [24] 3554 	jnz	00102$
      0031BE                       3555 00101$:
                                   3556 ;	src/main.c:402: P1_0 = OFF;
                                   3557 ;	assignBit
      0031BE C2 90            [12] 3558 	clr	_P1_0
                                   3559 ;	src/main.c:403: return; 
      0031C0 22               [24] 3560 	ret
      0031C1                       3561 00102$:
                                   3562 ;	src/main.c:406: memcpy(buffer_3->buffer, static_buffers[0].buffer, static_buffers[0].size);
      0031C1 8D 82            [24] 3563 	mov	dpl,r5
      0031C3 8E 83            [24] 3564 	mov	dph,r6
      0031C5 8F F0            [24] 3565 	mov	b,r7
      0031C7 12 49 DF         [24] 3566 	lcall	__gptrget
      0031CA FB               [12] 3567 	mov	r3,a
      0031CB A3               [24] 3568 	inc	dptr
      0031CC 12 49 DF         [24] 3569 	lcall	__gptrget
      0031CF FC               [12] 3570 	mov	r4,a
      0031D0 8B 52            [24] 3571 	mov	_dollar_sign_command_handler_sloc0_1_0,r3
      0031D2 8C 53            [24] 3572 	mov	(_dollar_sign_command_handler_sloc0_1_0 + 1),r4
      0031D4 75 54 00         [24] 3573 	mov	(_dollar_sign_command_handler_sloc0_1_0 + 2),#0x00
      0031D7 90 00 01         [24] 3574 	mov	dptr,#_static_buffers
      0031DA E0               [24] 3575 	movx	a,@dptr
      0031DB F8               [12] 3576 	mov	r0,a
      0031DC A3               [24] 3577 	inc	dptr
      0031DD E0               [24] 3578 	movx	a,@dptr
      0031DE F9               [12] 3579 	mov	r1,a
      0031DF 7C 00            [12] 3580 	mov	r4,#0x00
      0031E1 90 00 05         [24] 3581 	mov	dptr,#(_static_buffers + 0x0004)
      0031E4 E0               [24] 3582 	movx	a,@dptr
      0031E5 FA               [12] 3583 	mov	r2,a
      0031E6 A3               [24] 3584 	inc	dptr
      0031E7 E0               [24] 3585 	movx	a,@dptr
      0031E8 FB               [12] 3586 	mov	r3,a
      0031E9 90 20 67         [24] 3587 	mov	dptr,#___memcpy_PARM_2
      0031EC E8               [12] 3588 	mov	a,r0
      0031ED F0               [24] 3589 	movx	@dptr,a
      0031EE E9               [12] 3590 	mov	a,r1
      0031EF A3               [24] 3591 	inc	dptr
      0031F0 F0               [24] 3592 	movx	@dptr,a
      0031F1 EC               [12] 3593 	mov	a,r4
      0031F2 A3               [24] 3594 	inc	dptr
      0031F3 F0               [24] 3595 	movx	@dptr,a
      0031F4 90 20 6A         [24] 3596 	mov	dptr,#___memcpy_PARM_3
      0031F7 EA               [12] 3597 	mov	a,r2
      0031F8 F0               [24] 3598 	movx	@dptr,a
      0031F9 EB               [12] 3599 	mov	a,r3
      0031FA A3               [24] 3600 	inc	dptr
      0031FB F0               [24] 3601 	movx	@dptr,a
      0031FC 85 52 82         [24] 3602 	mov	dpl,_dollar_sign_command_handler_sloc0_1_0
      0031FF 85 53 83         [24] 3603 	mov	dph,(_dollar_sign_command_handler_sloc0_1_0 + 1)
      003202 85 54 F0         [24] 3604 	mov	b,(_dollar_sign_command_handler_sloc0_1_0 + 2)
      003205 C0 07            [24] 3605 	push	ar7
      003207 C0 06            [24] 3606 	push	ar6
      003209 C0 05            [24] 3607 	push	ar5
      00320B 12 3B C5         [24] 3608 	lcall	___memcpy
      00320E D0 05            [24] 3609 	pop	ar5
      003210 D0 06            [24] 3610 	pop	ar6
      003212 D0 07            [24] 3611 	pop	ar7
                                   3612 ;	src/main.c:407: buffer_3->alphabet_chars = static_buffers[0].alphabet_chars;
      003214 74 02            [12] 3613 	mov	a,#0x02
      003216 2D               [12] 3614 	add	a,r5
      003217 FA               [12] 3615 	mov	r2,a
      003218 E4               [12] 3616 	clr	a
      003219 3E               [12] 3617 	addc	a,r6
      00321A FB               [12] 3618 	mov	r3,a
      00321B 8F 04            [24] 3619 	mov	ar4,r7
      00321D 90 00 03         [24] 3620 	mov	dptr,#(_static_buffers + 0x0002)
      003220 E0               [24] 3621 	movx	a,@dptr
      003221 F8               [12] 3622 	mov	r0,a
      003222 A3               [24] 3623 	inc	dptr
      003223 E0               [24] 3624 	movx	a,@dptr
      003224 F9               [12] 3625 	mov	r1,a
      003225 8A 82            [24] 3626 	mov	dpl,r2
      003227 8B 83            [24] 3627 	mov	dph,r3
      003229 8C F0            [24] 3628 	mov	b,r4
      00322B E8               [12] 3629 	mov	a,r0
      00322C 12 3D 85         [24] 3630 	lcall	__gptrput
      00322F A3               [24] 3631 	inc	dptr
      003230 E9               [12] 3632 	mov	a,r1
      003231 12 3D 85         [24] 3633 	lcall	__gptrput
                                   3634 ;	src/main.c:408: buffer_3->curr_available_char = static_buffers[0].curr_available_char;
      003234 74 06            [12] 3635 	mov	a,#0x06
      003236 2D               [12] 3636 	add	a,r5
      003237 FD               [12] 3637 	mov	r5,a
      003238 E4               [12] 3638 	clr	a
      003239 3E               [12] 3639 	addc	a,r6
      00323A FE               [12] 3640 	mov	r6,a
      00323B 90 00 07         [24] 3641 	mov	dptr,#(_static_buffers + 0x0006)
      00323E E0               [24] 3642 	movx	a,@dptr
      00323F FB               [12] 3643 	mov	r3,a
      003240 A3               [24] 3644 	inc	dptr
      003241 E0               [24] 3645 	movx	a,@dptr
      003242 FC               [12] 3646 	mov	r4,a
      003243 8D 82            [24] 3647 	mov	dpl,r5
      003245 8E 83            [24] 3648 	mov	dph,r6
      003247 8F F0            [24] 3649 	mov	b,r7
      003249 EB               [12] 3650 	mov	a,r3
      00324A 12 3D 85         [24] 3651 	lcall	__gptrput
      00324D A3               [24] 3652 	inc	dptr
      00324E EC               [12] 3653 	mov	a,r4
      00324F 12 3D 85         [24] 3654 	lcall	__gptrput
                                   3655 ;	src/main.c:409: P1_0 = OFF; 
                                   3656 ;	assignBit
      003252 C2 90            [12] 3657 	clr	_P1_0
                                   3658 ;	src/main.c:410: }
      003254 22               [24] 3659 	ret
                                   3660 ;------------------------------------------------------------
                                   3661 ;Allocation info for local variables in function 'hashtag_command_handler'
                                   3662 ;------------------------------------------------------------
                                   3663 ;buffer_3                  Allocated with name '_hashtag_command_handler_buffer_3_65537_159'
                                   3664 ;i                         Allocated with name '_hashtag_command_handler_i_131073_160'
                                   3665 ;c                         Allocated with name '_hashtag_command_handler_c_196609_161'
                                   3666 ;------------------------------------------------------------
                                   3667 ;	src/main.c:412: void hashtag_command_handler()
                                   3668 ;	-----------------------------------------
                                   3669 ;	 function hashtag_command_handler
                                   3670 ;	-----------------------------------------
      003255                       3671 _hashtag_command_handler:
                                   3672 ;	src/main.c:414: P1_0 = ON;
                                   3673 ;	assignBit
      003255 D2 90            [12] 3674 	setb	_P1_0
                                   3675 ;	src/main.c:415: if (dynamic_buffers_list.head == NULL
      003257 90 20 BA         [24] 3676 	mov	dptr,#_dynamic_buffers_list
      00325A E0               [24] 3677 	movx	a,@dptr
      00325B FD               [12] 3678 	mov	r5,a
      00325C A3               [24] 3679 	inc	dptr
      00325D E0               [24] 3680 	movx	a,@dptr
      00325E FE               [12] 3681 	mov	r6,a
      00325F A3               [24] 3682 	inc	dptr
      003260 E0               [24] 3683 	movx	a,@dptr
      003261 FF               [12] 3684 	mov	r7,a
      003262 ED               [12] 3685 	mov	a,r5
      003263 4E               [12] 3686 	orl	a,r6
      003264 60 1F            [24] 3687 	jz	00101$
                                   3688 ;	src/main.c:416: || dynamic_buffers_list.head->next == NULL) 
      003266 74 08            [12] 3689 	mov	a,#0x08
      003268 2D               [12] 3690 	add	a,r5
      003269 FD               [12] 3691 	mov	r5,a
      00326A E4               [12] 3692 	clr	a
      00326B 3E               [12] 3693 	addc	a,r6
      00326C FE               [12] 3694 	mov	r6,a
      00326D 8D 82            [24] 3695 	mov	dpl,r5
      00326F 8E 83            [24] 3696 	mov	dph,r6
      003271 8F F0            [24] 3697 	mov	b,r7
      003273 12 49 DF         [24] 3698 	lcall	__gptrget
      003276 FD               [12] 3699 	mov	r5,a
      003277 A3               [24] 3700 	inc	dptr
      003278 12 49 DF         [24] 3701 	lcall	__gptrget
      00327B FE               [12] 3702 	mov	r6,a
      00327C A3               [24] 3703 	inc	dptr
      00327D 12 49 DF         [24] 3704 	lcall	__gptrget
      003280 FF               [12] 3705 	mov	r7,a
      003281 ED               [12] 3706 	mov	a,r5
      003282 4E               [12] 3707 	orl	a,r6
      003283 70 03            [24] 3708 	jnz	00102$
      003285                       3709 00101$:
                                   3710 ;	src/main.c:418: P1_0 = OFF;
                                   3711 ;	assignBit
      003285 C2 90            [12] 3712 	clr	_P1_0
                                   3713 ;	src/main.c:419: return; 
      003287 22               [24] 3714 	ret
      003288                       3715 00102$:
                                   3716 ;	src/main.c:422: buffer_t *buffer_3 = dynamic_buffers_list.head->next;
      003288 8D 02            [24] 3717 	mov	ar2,r5
      00328A 8E 03            [24] 3718 	mov	ar3,r6
      00328C 8F 04            [24] 3719 	mov	ar4,r7
                                   3720 ;	src/main.c:423: for(size_t i = 0; i < buffer_3->curr_available_char; i++)
      00328E 74 06            [12] 3721 	mov	a,#0x06
      003290 2D               [12] 3722 	add	a,r5
      003291 FD               [12] 3723 	mov	r5,a
      003292 E4               [12] 3724 	clr	a
      003293 3E               [12] 3725 	addc	a,r6
      003294 FE               [12] 3726 	mov	r6,a
      003295 78 00            [12] 3727 	mov	r0,#0x00
      003297 79 00            [12] 3728 	mov	r1,#0x00
      003299                       3729 00109$:
      003299 C0 02            [24] 3730 	push	ar2
      00329B C0 03            [24] 3731 	push	ar3
      00329D C0 04            [24] 3732 	push	ar4
      00329F 8D 82            [24] 3733 	mov	dpl,r5
      0032A1 8E 83            [24] 3734 	mov	dph,r6
      0032A3 8F F0            [24] 3735 	mov	b,r7
      0032A5 12 49 DF         [24] 3736 	lcall	__gptrget
      0032A8 FB               [12] 3737 	mov	r3,a
      0032A9 A3               [24] 3738 	inc	dptr
      0032AA 12 49 DF         [24] 3739 	lcall	__gptrget
      0032AD FC               [12] 3740 	mov	r4,a
      0032AE C3               [12] 3741 	clr	c
      0032AF E8               [12] 3742 	mov	a,r0
      0032B0 9B               [12] 3743 	subb	a,r3
      0032B1 E9               [12] 3744 	mov	a,r1
      0032B2 9C               [12] 3745 	subb	a,r4
      0032B3 D0 04            [24] 3746 	pop	ar4
      0032B5 D0 03            [24] 3747 	pop	ar3
      0032B7 D0 02            [24] 3748 	pop	ar2
      0032B9 50 6B            [24] 3749 	jnc	00107$
                                   3750 ;	src/main.c:425: register char c = buffer_3->buffer[i];
      0032BB C0 05            [24] 3751 	push	ar5
      0032BD C0 06            [24] 3752 	push	ar6
      0032BF C0 07            [24] 3753 	push	ar7
      0032C1 8A 82            [24] 3754 	mov	dpl,r2
      0032C3 8B 83            [24] 3755 	mov	dph,r3
      0032C5 8C F0            [24] 3756 	mov	b,r4
      0032C7 12 49 DF         [24] 3757 	lcall	__gptrget
      0032CA FE               [12] 3758 	mov	r6,a
      0032CB A3               [24] 3759 	inc	dptr
      0032CC 12 49 DF         [24] 3760 	lcall	__gptrget
      0032CF FF               [12] 3761 	mov	r7,a
      0032D0 E8               [12] 3762 	mov	a,r0
      0032D1 2E               [12] 3763 	add	a,r6
      0032D2 F5 82            [12] 3764 	mov	dpl,a
      0032D4 E9               [12] 3765 	mov	a,r1
      0032D5 3F               [12] 3766 	addc	a,r7
      0032D6 F5 83            [12] 3767 	mov	dph,a
      0032D8 E0               [24] 3768 	movx	a,@dptr
      0032D9 F5 1B            [12] 3769 	mov	_hashtag_command_handler_c_196609_161,a
                                   3770 ;	src/main.c:426: if (c <= 'Z' || c >= 'A')
      0032DB C3               [12] 3771 	clr	c
      0032DC 74 5A            [12] 3772 	mov	a,#0x5a
      0032DE 95 1B            [12] 3773 	subb	a,_hashtag_command_handler_c_196609_161
      0032E0 D0 07            [24] 3774 	pop	ar7
      0032E2 D0 06            [24] 3775 	pop	ar6
      0032E4 D0 05            [24] 3776 	pop	ar5
      0032E6 50 06            [24] 3777 	jnc	00104$
      0032E8 74 BF            [12] 3778 	mov	a,#0x100 - 0x41
      0032EA 25 1B            [12] 3779 	add	a,_hashtag_command_handler_c_196609_161
      0032EC 50 30            [24] 3780 	jnc	00110$
      0032EE                       3781 00104$:
                                   3782 ;	src/main.c:428: buffer_3->buffer[i] |= LOWER_CASE_MASK;
      0032EE C0 05            [24] 3783 	push	ar5
      0032F0 C0 06            [24] 3784 	push	ar6
      0032F2 C0 07            [24] 3785 	push	ar7
      0032F4 8A 82            [24] 3786 	mov	dpl,r2
      0032F6 8B 83            [24] 3787 	mov	dph,r3
      0032F8 8C F0            [24] 3788 	mov	b,r4
      0032FA 12 49 DF         [24] 3789 	lcall	__gptrget
      0032FD FE               [12] 3790 	mov	r6,a
      0032FE A3               [24] 3791 	inc	dptr
      0032FF 12 49 DF         [24] 3792 	lcall	__gptrget
      003302 FF               [12] 3793 	mov	r7,a
      003303 E8               [12] 3794 	mov	a,r0
      003304 2E               [12] 3795 	add	a,r6
      003305 FE               [12] 3796 	mov	r6,a
      003306 E9               [12] 3797 	mov	a,r1
      003307 3F               [12] 3798 	addc	a,r7
      003308 FF               [12] 3799 	mov	r7,a
      003309 8E 82            [24] 3800 	mov	dpl,r6
      00330B 8F 83            [24] 3801 	mov	dph,r7
      00330D E0               [24] 3802 	movx	a,@dptr
      00330E FD               [12] 3803 	mov	r5,a
      00330F 43 05 20         [24] 3804 	orl	ar5,#0x20
      003312 8E 82            [24] 3805 	mov	dpl,r6
      003314 8F 83            [24] 3806 	mov	dph,r7
      003316 ED               [12] 3807 	mov	a,r5
      003317 F0               [24] 3808 	movx	@dptr,a
                                   3809 ;	src/main.c:431: P1_0 = OFF;
      003318 D0 07            [24] 3810 	pop	ar7
      00331A D0 06            [24] 3811 	pop	ar6
      00331C D0 05            [24] 3812 	pop	ar5
                                   3813 ;	src/main.c:428: buffer_3->buffer[i] |= LOWER_CASE_MASK;
      00331E                       3814 00110$:
                                   3815 ;	src/main.c:423: for(size_t i = 0; i < buffer_3->curr_available_char; i++)
      00331E 08               [12] 3816 	inc	r0
      00331F B8 00 01         [24] 3817 	cjne	r0,#0x00,00135$
      003322 09               [12] 3818 	inc	r1
      003323                       3819 00135$:
      003323 02 32 99         [24] 3820 	ljmp	00109$
      003326                       3821 00107$:
                                   3822 ;	src/main.c:431: P1_0 = OFF;
                                   3823 ;	assignBit
      003326 C2 90            [12] 3824 	clr	_P1_0
                                   3825 ;	src/main.c:432: }
      003328 22               [24] 3826 	ret
                                   3827 ;------------------------------------------------------------
                                   3828 ;Allocation info for local variables in function 'plus_command_handler'
                                   3829 ;------------------------------------------------------------
                                   3830 ;size                      Allocated with name '_plus_command_handler_size_65536_163'
                                   3831 ;new_buffer                Allocated with name '_plus_command_handler_new_buffer_65537_165'
                                   3832 ;------------------------------------------------------------
                                   3833 ;	src/main.c:435: void plus_command_handler() 
                                   3834 ;	-----------------------------------------
                                   3835 ;	 function plus_command_handler
                                   3836 ;	-----------------------------------------
      003329                       3837 _plus_command_handler:
                                   3838 ;	src/main.c:438: while (true) {
      003329                       3839 00105$:
                                   3840 ;	src/main.c:439: printf("\r\nPlease enter a size for the new buffer, [200,600]: ");
      003329 74 81            [12] 3841 	mov	a,#___str_22
      00332B C0 E0            [24] 3842 	push	acc
      00332D 74 4C            [12] 3843 	mov	a,#(___str_22 >> 8)
      00332F C0 E0            [24] 3844 	push	acc
      003331 74 80            [12] 3845 	mov	a,#0x80
      003333 C0 E0            [24] 3846 	push	acc
      003335 12 3F B3         [24] 3847 	lcall	_printf
      003338 15 81            [12] 3848 	dec	sp
      00333A 15 81            [12] 3849 	dec	sp
      00333C 15 81            [12] 3850 	dec	sp
                                   3851 ;	src/main.c:440: get_string();
      00333E 12 35 53         [24] 3852 	lcall	_get_string
                                   3853 ;	src/main.c:441: size = atoi(get_input_buffer());
      003341 12 35 4C         [24] 3854 	lcall	_get_input_buffer
      003344 12 3C 61         [24] 3855 	lcall	_atoi
      003347 AE 82            [24] 3856 	mov	r6,dpl
      003349 AF 83            [24] 3857 	mov	r7,dph
                                   3858 ;	src/main.c:442: if (size <= MAX_USER_DETERMINED_BUFFER_SZ && size >= MIN_USER_DETERMINED_BUFFER_SZ) break;
      00334B C3               [12] 3859 	clr	c
      00334C 74 58            [12] 3860 	mov	a,#0x58
      00334E 9E               [12] 3861 	subb	a,r6
      00334F 74 82            [12] 3862 	mov	a,#(0x02 ^ 0x80)
      003351 8F F0            [24] 3863 	mov	b,r7
      003353 63 F0 80         [24] 3864 	xrl	b,#0x80
      003356 95 F0            [12] 3865 	subb	a,b
      003358 40 0A            [24] 3866 	jc	00102$
      00335A EE               [12] 3867 	mov	a,r6
      00335B 94 C8            [12] 3868 	subb	a,#0xc8
      00335D EF               [12] 3869 	mov	a,r7
      00335E 64 80            [12] 3870 	xrl	a,#0x80
      003360 94 80            [12] 3871 	subb	a,#0x80
      003362 50 17            [24] 3872 	jnc	00106$
      003364                       3873 00102$:
                                   3874 ;	src/main.c:443: printf("\r\nBuffer size invalid!! Please try again");
      003364 74 B7            [12] 3875 	mov	a,#___str_23
      003366 C0 E0            [24] 3876 	push	acc
      003368 74 4C            [12] 3877 	mov	a,#(___str_23 >> 8)
      00336A C0 E0            [24] 3878 	push	acc
      00336C 74 80            [12] 3879 	mov	a,#0x80
      00336E C0 E0            [24] 3880 	push	acc
      003370 12 3F B3         [24] 3881 	lcall	_printf
      003373 15 81            [12] 3882 	dec	sp
      003375 15 81            [12] 3883 	dec	sp
      003377 15 81            [12] 3884 	dec	sp
      003379 80 AE            [24] 3885 	sjmp	00105$
      00337B                       3886 00106$:
                                   3887 ;	src/main.c:446: buffer_t *new_buffer = alloc_new_buffer((size_t) size);
      00337B 8E 82            [24] 3888 	mov	dpl,r6
      00337D 8F 83            [24] 3889 	mov	dph,r7
      00337F 12 21 69         [24] 3890 	lcall	_alloc_new_buffer
      003382 AD 82            [24] 3891 	mov	r5,dpl
      003384 AE 83            [24] 3892 	mov	r6,dph
      003386 AF F0            [24] 3893 	mov	r7,b
                                   3894 ;	src/main.c:448: if (new_buffer == NULL)
      003388 ED               [12] 3895 	mov	a,r5
      003389 4E               [12] 3896 	orl	a,r6
      00338A 70 16            [24] 3897 	jnz	00108$
                                   3898 ;	src/main.c:450: printf("\r\n Allocation failed; able to allocate header but not buffer");
      00338C 74 E0            [12] 3899 	mov	a,#___str_24
      00338E C0 E0            [24] 3900 	push	acc
      003390 74 4C            [12] 3901 	mov	a,#(___str_24 >> 8)
      003392 C0 E0            [24] 3902 	push	acc
      003394 74 80            [12] 3903 	mov	a,#0x80
      003396 C0 E0            [24] 3904 	push	acc
      003398 12 3F B3         [24] 3905 	lcall	_printf
      00339B 15 81            [12] 3906 	dec	sp
      00339D 15 81            [12] 3907 	dec	sp
      00339F 15 81            [12] 3908 	dec	sp
                                   3909 ;	src/main.c:451: return;
      0033A1 22               [24] 3910 	ret
      0033A2                       3911 00108$:
                                   3912 ;	src/main.c:454: append_to_buffer_list(&dynamic_buffers_list, new_buffer);
      0033A2 90 20 41         [24] 3913 	mov	dptr,#_append_to_buffer_list_PARM_2
      0033A5 ED               [12] 3914 	mov	a,r5
      0033A6 F0               [24] 3915 	movx	@dptr,a
      0033A7 EE               [12] 3916 	mov	a,r6
      0033A8 A3               [24] 3917 	inc	dptr
      0033A9 F0               [24] 3918 	movx	@dptr,a
      0033AA EF               [12] 3919 	mov	a,r7
      0033AB A3               [24] 3920 	inc	dptr
      0033AC F0               [24] 3921 	movx	@dptr,a
      0033AD 90 20 BA         [24] 3922 	mov	dptr,#_dynamic_buffers_list
      0033B0 75 F0 00         [24] 3923 	mov	b,#0x00
      0033B3 12 36 98         [24] 3924 	lcall	_append_to_buffer_list
                                   3925 ;	src/main.c:456: printf("\r\n Allocation successful!! New buffer added");
      0033B6 74 1D            [12] 3926 	mov	a,#___str_25
      0033B8 C0 E0            [24] 3927 	push	acc
      0033BA 74 4D            [12] 3928 	mov	a,#(___str_25 >> 8)
      0033BC C0 E0            [24] 3929 	push	acc
      0033BE 74 80            [12] 3930 	mov	a,#0x80
      0033C0 C0 E0            [24] 3931 	push	acc
      0033C2 12 3F B3         [24] 3932 	lcall	_printf
      0033C5 15 81            [12] 3933 	dec	sp
      0033C7 15 81            [12] 3934 	dec	sp
      0033C9 15 81            [12] 3935 	dec	sp
                                   3936 ;	src/main.c:458: }
      0033CB 22               [24] 3937 	ret
                                   3938 ;------------------------------------------------------------
                                   3939 ;Allocation info for local variables in function 'minus_command_handler'
                                   3940 ;------------------------------------------------------------
                                   3941 ;buffer_num                Allocated with name '_minus_command_handler_buffer_num_65537_168'
                                   3942 ;freed                     Allocated with name '_minus_command_handler_freed_131073_171'
                                   3943 ;------------------------------------------------------------
                                   3944 ;	src/main.c:460: void minus_command_handler() 
                                   3945 ;	-----------------------------------------
                                   3946 ;	 function minus_command_handler
                                   3947 ;	-----------------------------------------
      0033CC                       3948 _minus_command_handler:
                                   3949 ;	src/main.c:462: printf("\r\nPlease enter the number of the buffer you would like to free: ");
      0033CC 74 49            [12] 3950 	mov	a,#___str_26
      0033CE C0 E0            [24] 3951 	push	acc
      0033D0 74 4D            [12] 3952 	mov	a,#(___str_26 >> 8)
      0033D2 C0 E0            [24] 3953 	push	acc
      0033D4 74 80            [12] 3954 	mov	a,#0x80
      0033D6 C0 E0            [24] 3955 	push	acc
      0033D8 12 3F B3         [24] 3956 	lcall	_printf
      0033DB 15 81            [12] 3957 	dec	sp
      0033DD 15 81            [12] 3958 	dec	sp
      0033DF 15 81            [12] 3959 	dec	sp
                                   3960 ;	src/main.c:463: get_string(); 
      0033E1 12 35 53         [24] 3961 	lcall	_get_string
                                   3962 ;	src/main.c:464: int buffer_num = atoi(get_input_buffer()); 
      0033E4 12 35 4C         [24] 3963 	lcall	_get_input_buffer
      0033E7 12 3C 61         [24] 3964 	lcall	_atoi
      0033EA AE 82            [24] 3965 	mov	r6,dpl
                                   3966 ;	src/main.c:465: if (buffer_num < 0)
      0033EC E5 83            [12] 3967 	mov	a,dph
      0033EE FF               [12] 3968 	mov	r7,a
      0033EF 30 E7 16         [24] 3969 	jnb	acc.7,00108$
                                   3970 ;	src/main.c:467: printf("\r\n Invalid buffer number, negatives not valid");
      0033F2 74 8A            [12] 3971 	mov	a,#___str_27
      0033F4 C0 E0            [24] 3972 	push	acc
      0033F6 74 4D            [12] 3973 	mov	a,#(___str_27 >> 8)
      0033F8 C0 E0            [24] 3974 	push	acc
      0033FA 74 80            [12] 3975 	mov	a,#0x80
      0033FC C0 E0            [24] 3976 	push	acc
      0033FE 12 3F B3         [24] 3977 	lcall	_printf
      003401 15 81            [12] 3978 	dec	sp
      003403 15 81            [12] 3979 	dec	sp
      003405 15 81            [12] 3980 	dec	sp
                                   3981 ;	src/main.c:468: return;
      003407 22               [24] 3982 	ret
      003408                       3983 00108$:
                                   3984 ;	src/main.c:470: else if (buffer_num <= 1) 
      003408 C3               [12] 3985 	clr	c
      003409 74 01            [12] 3986 	mov	a,#0x01
      00340B 9E               [12] 3987 	subb	a,r6
      00340C 74 80            [12] 3988 	mov	a,#(0x00 ^ 0x80)
      00340E 8F F0            [24] 3989 	mov	b,r7
      003410 63 F0 80         [24] 3990 	xrl	b,#0x80
      003413 95 F0            [12] 3991 	subb	a,b
      003415 40 16            [24] 3992 	jc	00105$
                                   3993 ;	src/main.c:472: printf("\r\n Invalid buffer number, buffers 0 & 1 are protected");
      003417 74 B8            [12] 3994 	mov	a,#___str_28
      003419 C0 E0            [24] 3995 	push	acc
      00341B 74 4D            [12] 3996 	mov	a,#(___str_28 >> 8)
      00341D C0 E0            [24] 3997 	push	acc
      00341F 74 80            [12] 3998 	mov	a,#0x80
      003421 C0 E0            [24] 3999 	push	acc
      003423 12 3F B3         [24] 4000 	lcall	_printf
      003426 15 81            [12] 4001 	dec	sp
      003428 15 81            [12] 4002 	dec	sp
      00342A 15 81            [12] 4003 	dec	sp
                                   4004 ;	src/main.c:473: return; 
      00342C 22               [24] 4005 	ret
      00342D                       4006 00105$:
                                   4007 ;	src/main.c:477: bool freed = remove_from_buffer_list(&dynamic_buffers_list, (size_t)(buffer_num-2));
      00342D EE               [12] 4008 	mov	a,r6
      00342E 24 FE            [12] 4009 	add	a,#0xfe
      003430 FE               [12] 4010 	mov	r6,a
      003431 EF               [12] 4011 	mov	a,r7
      003432 34 FF            [12] 4012 	addc	a,#0xff
      003434 FF               [12] 4013 	mov	r7,a
      003435 90 20 4A         [24] 4014 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003438 EE               [12] 4015 	mov	a,r6
      003439 F0               [24] 4016 	movx	@dptr,a
      00343A EF               [12] 4017 	mov	a,r7
      00343B A3               [24] 4018 	inc	dptr
      00343C F0               [24] 4019 	movx	@dptr,a
      00343D 90 20 BA         [24] 4020 	mov	dptr,#_dynamic_buffers_list
      003440 75 F0 00         [24] 4021 	mov	b,#0x00
      003443 12 37 7E         [24] 4022 	lcall	_remove_from_buffer_list
      003446 E5 82            [12] 4023 	mov	a,dpl
                                   4024 ;	src/main.c:478: if (freed)
      003448 60 16            [24] 4025 	jz	00102$
                                   4026 ;	src/main.c:480: printf("\r\n Successfully removed buffer");
      00344A 74 EE            [12] 4027 	mov	a,#___str_29
      00344C C0 E0            [24] 4028 	push	acc
      00344E 74 4D            [12] 4029 	mov	a,#(___str_29 >> 8)
      003450 C0 E0            [24] 4030 	push	acc
      003452 74 80            [12] 4031 	mov	a,#0x80
      003454 C0 E0            [24] 4032 	push	acc
      003456 12 3F B3         [24] 4033 	lcall	_printf
      003459 15 81            [12] 4034 	dec	sp
      00345B 15 81            [12] 4035 	dec	sp
      00345D 15 81            [12] 4036 	dec	sp
      00345F 22               [24] 4037 	ret
      003460                       4038 00102$:
                                   4039 ;	src/main.c:484: printf("\r\n Failed to remove buffer, idx too big");
      003460 74 0D            [12] 4040 	mov	a,#___str_30
      003462 C0 E0            [24] 4041 	push	acc
      003464 74 4E            [12] 4042 	mov	a,#(___str_30 >> 8)
      003466 C0 E0            [24] 4043 	push	acc
      003468 74 80            [12] 4044 	mov	a,#0x80
      00346A C0 E0            [24] 4045 	push	acc
      00346C 12 3F B3         [24] 4046 	lcall	_printf
      00346F 15 81            [12] 4047 	dec	sp
      003471 15 81            [12] 4048 	dec	sp
      003473 15 81            [12] 4049 	dec	sp
                                   4050 ;	src/main.c:488: }
      003475 22               [24] 4051 	ret
                                   4052 ;------------------------------------------------------------
                                   4053 ;Allocation info for local variables in function 'main'
                                   4054 ;------------------------------------------------------------
                                   4055 ;c                         Allocated with name '_main_c_65537_175'
                                   4056 ;received_char             Allocated with name '_main_received_char_196610_178'
                                   4057 ;------------------------------------------------------------
                                   4058 ;	src/main.c:490: void main()
                                   4059 ;	-----------------------------------------
                                   4060 ;	 function main
                                   4061 ;	-----------------------------------------
      003476                       4062 _main:
                                   4063 ;	src/main.c:492: initialize_buffers();
      003476 12 22 06         [24] 4064 	lcall	_initialize_buffers
                                   4065 ;	src/main.c:493: unsigned char c = 0;
      003479                       4066 00114$:
                                   4067 ;	src/main.c:498: printf("\r\nEnter a char: ");
      003479 74 35            [12] 4068 	mov	a,#___str_31
      00347B C0 E0            [24] 4069 	push	acc
      00347D 74 4E            [12] 4070 	mov	a,#(___str_31 >> 8)
      00347F C0 E0            [24] 4071 	push	acc
      003481 74 80            [12] 4072 	mov	a,#0x80
      003483 C0 E0            [24] 4073 	push	acc
      003485 12 3F B3         [24] 4074 	lcall	_printf
      003488 15 81            [12] 4075 	dec	sp
      00348A 15 81            [12] 4076 	dec	sp
      00348C 15 81            [12] 4077 	dec	sp
                                   4078 ;	src/main.c:499: char received_char = get_next_input_char();
      00348E 12 36 61         [24] 4079 	lcall	_get_next_input_char
                                   4080 ;	src/main.c:500: if (is_alphabet_char(received_char))
      003491 AF 82            [24] 4081 	mov  r7,dpl
      003493 C0 07            [24] 4082 	push	ar7
      003495 12 20 94         [24] 4083 	lcall	_is_alphabet_char
      003498 E5 82            [12] 4084 	mov	a,dpl
      00349A D0 07            [24] 4085 	pop	ar7
      00349C 60 14            [24] 4086 	jz	00102$
                                   4087 ;	src/main.c:502: store_in_buffer(&static_buffers[0], received_char);
      00349E 90 00 24         [24] 4088 	mov	dptr,#_store_in_buffer_PARM_2
      0034A1 EF               [12] 4089 	mov	a,r7
      0034A2 F0               [24] 4090 	movx	@dptr,a
      0034A3 90 00 01         [24] 4091 	mov	dptr,#_static_buffers
      0034A6 75 F0 00         [24] 4092 	mov	b,#0x00
      0034A9 C0 07            [24] 4093 	push	ar7
      0034AB 12 28 1E         [24] 4094 	lcall	_store_in_buffer
      0034AE D0 07            [24] 4095 	pop	ar7
      0034B0 80 12            [24] 4096 	sjmp	00103$
      0034B2                       4097 00102$:
                                   4098 ;	src/main.c:506: store_in_buffer(&static_buffers[1], received_char);
      0034B2 90 00 24         [24] 4099 	mov	dptr,#_store_in_buffer_PARM_2
      0034B5 EF               [12] 4100 	mov	a,r7
      0034B6 F0               [24] 4101 	movx	@dptr,a
      0034B7 90 00 0C         [24] 4102 	mov	dptr,#(_static_buffers + 0x000b)
      0034BA 75 F0 00         [24] 4103 	mov	b,#0x00
      0034BD C0 07            [24] 4104 	push	ar7
      0034BF 12 28 1E         [24] 4105 	lcall	_store_in_buffer
      0034C2 D0 07            [24] 4106 	pop	ar7
      0034C4                       4107 00103$:
                                   4108 ;	src/main.c:509: switch(received_char)
      0034C4 BF 23 02         [24] 4109 	cjne	r7,#0x23,00159$
      0034C7 80 44            [24] 4110 	sjmp	00109$
      0034C9                       4111 00159$:
      0034C9 BF 24 02         [24] 4112 	cjne	r7,#0x24,00160$
      0034CC 80 39            [24] 4113 	sjmp	00108$
      0034CE                       4114 00160$:
      0034CE BF 25 02         [24] 4115 	cjne	r7,#0x25,00161$
      0034D1 80 25            [24] 4116 	sjmp	00106$
      0034D3                       4117 00161$:
      0034D3 BF 2B 02         [24] 4118 	cjne	r7,#0x2b,00162$
      0034D6 80 3B            [24] 4119 	sjmp	00110$
      0034D8                       4120 00162$:
      0034D8 BF 2D 02         [24] 4121 	cjne	r7,#0x2d,00163$
      0034DB 80 3C            [24] 4122 	sjmp	00111$
      0034DD                       4123 00163$:
      0034DD BF 3D 02         [24] 4124 	cjne	r7,#0x3d,00164$
      0034E0 80 10            [24] 4125 	sjmp	00105$
      0034E2                       4126 00164$:
      0034E2 BF 3F 02         [24] 4127 	cjne	r7,#0x3f,00165$
      0034E5 80 05            [24] 4128 	sjmp	00104$
      0034E7                       4129 00165$:
                                   4130 ;	src/main.c:511: case '?':
      0034E7 BF 40 8F         [24] 4131 	cjne	r7,#0x40,00114$
      0034EA 80 12            [24] 4132 	sjmp	00107$
      0034EC                       4133 00104$:
                                   4134 ;	src/main.c:512: qmark_command_handler();
      0034EC 12 2C B9         [24] 4135 	lcall	_qmark_command_handler
                                   4136 ;	src/main.c:513: break;
      0034EF 02 34 79         [24] 4137 	ljmp	00114$
                                   4138 ;	src/main.c:514: case '=':
      0034F2                       4139 00105$:
                                   4140 ;	src/main.c:515: enter_command_handler();
      0034F2 12 2E A6         [24] 4141 	lcall	_enter_command_handler
                                   4142 ;	src/main.c:516: break;
      0034F5 02 34 79         [24] 4143 	ljmp	00114$
                                   4144 ;	src/main.c:517: case '%':
      0034F8                       4145 00106$:
                                   4146 ;	src/main.c:518: percent_command_handler();
      0034F8 12 30 53         [24] 4147 	lcall	_percent_command_handler
                                   4148 ;	src/main.c:519: break;
      0034FB 02 34 79         [24] 4149 	ljmp	00114$
                                   4150 ;	src/main.c:520: case '@':
      0034FE                       4151 00107$:
                                   4152 ;	src/main.c:521: free_all_buffers();
      0034FE 12 2C 06         [24] 4153 	lcall	_free_all_buffers
                                   4154 ;	src/main.c:522: initialize_buffers();
      003501 12 22 06         [24] 4155 	lcall	_initialize_buffers
                                   4156 ;	src/main.c:523: break;
      003504 02 34 79         [24] 4157 	ljmp	00114$
                                   4158 ;	src/main.c:524: case '$':
      003507                       4159 00108$:
                                   4160 ;	src/main.c:525: dollar_sign_command_handler();
      003507 12 31 8E         [24] 4161 	lcall	_dollar_sign_command_handler
                                   4162 ;	src/main.c:526: break;
      00350A 02 34 79         [24] 4163 	ljmp	00114$
                                   4164 ;	src/main.c:527: case '#':
      00350D                       4165 00109$:
                                   4166 ;	src/main.c:528: hashtag_command_handler();
      00350D 12 32 55         [24] 4167 	lcall	_hashtag_command_handler
                                   4168 ;	src/main.c:529: break;
      003510 02 34 79         [24] 4169 	ljmp	00114$
                                   4170 ;	src/main.c:530: case '+':
      003513                       4171 00110$:
                                   4172 ;	src/main.c:531: plus_command_handler();
      003513 12 33 29         [24] 4173 	lcall	_plus_command_handler
                                   4174 ;	src/main.c:532: break;
      003516 02 34 79         [24] 4175 	ljmp	00114$
                                   4176 ;	src/main.c:533: case '-':
      003519                       4177 00111$:
                                   4178 ;	src/main.c:534: minus_command_handler();
      003519 12 33 CC         [24] 4179 	lcall	_minus_command_handler
                                   4180 ;	src/main.c:536: }
                                   4181 ;	src/main.c:538: }
      00351C 02 34 79         [24] 4182 	ljmp	00114$
                                   4183 	.area CSEG    (CODE)
                                   4184 	.area CONST   (CODE)
                                   4185 	.area CONST   (CODE)
      0049FB                       4186 ___str_0:
      0049FB 0D                    4187 	.db 0x0d
      0049FC 0A                    4188 	.db 0x0a
      0049FD 50 6C 65 61 73 65 20  4189 	.ascii "Please enter the last two digits of your ID:"
             65 6E 74 65 72 20 74
             68 65 20 6C 61 73 74
             20 74 77 6F 20 64 69
             67 69 74 73 20 6F 66
             20 79 6F 75 72 20 49
             44 3A
      004A29 00                    4190 	.db 0x00
                                   4191 	.area CSEG    (CODE)
                                   4192 	.area CONST   (CODE)
      004A2A                       4193 ___str_1:
      004A2A 0D                    4194 	.db 0x0d
      004A2B 0A                    4195 	.db 0x0a
      004A2C 20 73 74 61 74 69 63  4196 	.ascii " static_buffers[%d].buffer %p"
             5F 62 75 66 66 65 72
             73 5B 25 64 5D 2E 62
             75 66 66 65 72 20 25
             70
      004A49 00                    4197 	.db 0x00
                                   4198 	.area CSEG    (CODE)
                                   4199 	.area CONST   (CODE)
      004A4A                       4200 ___str_2:
      004A4A 0D                    4201 	.db 0x0d
      004A4B 0A                    4202 	.db 0x0a
      004A4C 42 75 66 66 65 72 20  4203 	.ascii "Buffer Size too big, please pick a smaller buffer size"
             53 69 7A 65 20 74 6F
             6F 20 62 69 67 2C 20
             70 6C 65 61 73 65 20
             70 69 63 6B 20 61 20
             73 6D 61 6C 6C 65 72
             20 62 75 66 66 65 72
             20 73 69 7A 65
      004A82 00                    4204 	.db 0x00
                                   4205 	.area CSEG    (CODE)
                                   4206 	.area CONST   (CODE)
      004A83                       4207 ___str_3:
      004A83 0D                    4208 	.db 0x0d
      004A84 0A                    4209 	.db 0x0a
      004A85 73 74 75 64 65 6E 74  4210 	.ascii "student_number: %d"
             5F 6E 75 6D 62 65 72
             3A 20 25 64
      004A97 00                    4211 	.db 0x00
                                   4212 	.area CSEG    (CODE)
                                   4213 	.area CONST   (CODE)
      004A98                       4214 ___str_4:
      004A98 0D                    4215 	.db 0x0d
      004A99 0A                    4216 	.db 0x0a
      004A9A 75 73 65 72 5F 62 75  4217 	.ascii "user_buffer_size: %zu"
             66 66 65 72 5F 73 69
             7A 65 3A 20 25 7A 75
      004AAF 00                    4218 	.db 0x00
                                   4219 	.area CSEG    (CODE)
                                   4220 	.area CONST   (CODE)
      004AB0                       4221 ___str_5:
      004AB0 0D                    4222 	.db 0x0d
      004AB1 0A                    4223 	.db 0x0a
      004AB2 62 75 66 66 65 72 5F  4224 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75
      004ADB 00                    4225 	.db 0x00
                                   4226 	.area CSEG    (CODE)
                                   4227 	.area CONST   (CODE)
      004ADC                       4228 ___str_6:
      004ADC 0D                    4229 	.db 0x0d
      004ADD 0A                    4230 	.db 0x0a
      004ADE 48 65 61 70 20 73 74  4231 	.ascii "Heap starts @ %p, ends @ %p, size: %zu"
             61 72 74 73 20 40 20
             25 70 2C 20 65 6E 64
             73 20 40 20 25 70 2C
             20 73 69 7A 65 3A 20
             25 7A 75
      004B04 00                    4232 	.db 0x00
                                   4233 	.area CSEG    (CODE)
                                   4234 	.area CONST   (CODE)
      004B05                       4235 ___str_7:
      004B05 0D                    4236 	.db 0x0d
      004B06 0A                    4237 	.db 0x0a
      004B07 20 20 20 20 20 20 20  4238 	.ascii "        %s"
             20 25 73
      004B11 00                    4239 	.db 0x00
                                   4240 	.area CSEG    (CODE)
                                   4241 	.area CONST   (CODE)
      004B12                       4242 ___str_8:
      004B12 0D                    4243 	.db 0x0d
      004B13 0A                    4244 	.db 0x0a
      004B14 2D 2D 2D 2D 2D 2D 2D  4245 	.ascii "------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D
      004B32 00                    4246 	.db 0x00
                                   4247 	.area CSEG    (CODE)
                                   4248 	.area CONST   (CODE)
      004B33                       4249 ___str_9:
      004B33 48 45 41 50 20 52 45  4250 	.ascii "HEAP REPORT"
             50 4F 52 54
      004B3E 00                    4251 	.db 0x00
                                   4252 	.area CSEG    (CODE)
                                   4253 	.area CONST   (CODE)
      004B3F                       4254 ___str_10:
      004B3F 0D                    4255 	.db 0x0d
      004B40 0A                    4256 	.db 0x0a
      004B41 62 75 66 66 65 72 5F  4257 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu, contains %zu alph"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75 2C
             20 63 6F 6E 74 61 69
             6E 73 20 25 7A 75 20
             61 6C 70 68
      004B7D 61 62 65 74 20 63 68  4258 	.ascii "abet chars, has %zu chars remaining"
             61 72 73 2C 20 68 61
             73 20 25 7A 75 20 63
             68 61 72 73 20 72 65
             6D 61 69 6E 69 6E 67
      004BA0 00                    4259 	.db 0x00
                                   4260 	.area CSEG    (CODE)
                                   4261 	.area CONST   (CODE)
      004BA1                       4262 ___str_11:
      004BA1 0D                    4263 	.db 0x0d
      004BA2 0A                    4264 	.db 0x0a
      004BA3 00                    4265 	.db 0x00
                                   4266 	.area CSEG    (CODE)
                                   4267 	.area CONST   (CODE)
      004BA4                       4268 ___str_12:
      004BA4 0D                    4269 	.db 0x0d
      004BA5 0A                    4270 	.db 0x0a
      004BA6 50 6C 65 61 73 65 20  4271 	.ascii "Please enter a valid buffer size that is divisible by 32 [64"
             65 6E 74 65 72 20 61
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             73 69 7A 65 20 74 68
             61 74 20 69 73 20 64
             69 76 69 73 69 62 6C
             65 20 62 79 20 33 32
             20 5B 36 34
      004BE2 2C 25 7A 75 5D 3A 20  4272 	.ascii ",%zu]: "
      004BE9 00                    4273 	.db 0x00
                                   4274 	.area CSEG    (CODE)
                                   4275 	.area CONST   (CODE)
      004BEA                       4276 ___str_13:
      004BEA 0D                    4277 	.db 0x0d
      004BEB 0A                    4278 	.db 0x0a
      004BEC 20 46 72 65 65 69 6E  4279 	.ascii " Freeing ALL BUFFERS"
             67 20 41 4C 4C 20 42
             55 46 46 45 52 53
      004C00 00                    4280 	.db 0x00
                                   4281 	.area CSEG    (CODE)
                                   4282 	.area CONST   (CODE)
      004C01                       4283 ___str_14:
      004C01 0D                    4284 	.db 0x0d
      004C02 0A                    4285 	.db 0x0a
      004C03 20 52 65 63 65 69 76  4286 	.ascii " Received %zu chars since last invocation of ?"
             65 64 20 25 7A 75 20
             63 68 61 72 73 20 73
             69 6E 63 65 20 6C 61
             73 74 20 69 6E 76 6F
             63 61 74 69 6F 6E 20
             6F 66 20 3F
      004C31 00                    4287 	.db 0x00
                                   4288 	.area CSEG    (CODE)
                                   4289 	.area CONST   (CODE)
      004C32                       4290 ___str_15:
      004C32 25 63                 4291 	.ascii "%c"
      004C34 00                    4292 	.db 0x00
                                   4293 	.area CSEG    (CODE)
                                   4294 	.area CONST   (CODE)
      004C35                       4295 ___str_16:
      004C35 44 75 6D 70 20 41 64  4296 	.ascii "Dump Admin Buffers"
             6D 69 6E 20 42 75 66
             66 65 72 73
      004C47 00                    4297 	.db 0x00
                                   4298 	.area CSEG    (CODE)
                                   4299 	.area CONST   (CODE)
      004C48                       4300 ___str_17:
      004C48 0D                    4301 	.db 0x0d
      004C49 0A                    4302 	.db 0x0a
      004C4A 20 42 75 66 66 65 72  4303 	.ascii " Buffer %d "
             20 25 64 20
      004C55 00                    4304 	.db 0x00
                                   4305 	.area CSEG    (CODE)
                                   4306 	.area CONST   (CODE)
      004C56                       4307 ___str_18:
      004C56 0D                    4308 	.db 0x0d
      004C57 0A                    4309 	.db 0x0a
      004C58 2D 2D 2D 2D 2D 2D 2D  4310 	.ascii "----------"
             2D 2D 2D
      004C62 00                    4311 	.db 0x00
                                   4312 	.area CSEG    (CODE)
                                   4313 	.area CONST   (CODE)
      004C63                       4314 ___str_19:
      004C63 0D                    4315 	.db 0x0d
      004C64 0A                    4316 	.db 0x0a
      004C65 25 30 34 58 3A        4317 	.ascii "%04X:"
      004C6A 00                    4318 	.db 0x00
                                   4319 	.area CSEG    (CODE)
                                   4320 	.area CONST   (CODE)
      004C6B                       4321 ___str_20:
      004C6B 20 25 30 32 68 68 58  4322 	.ascii " %02hhX"
      004C72 00                    4323 	.db 0x00
                                   4324 	.area CSEG    (CODE)
                                   4325 	.area CONST   (CODE)
      004C73                       4326 ___str_21:
      004C73 43 6C 65 61 72 20 42  4327 	.ascii "Clear Buffers"
             75 66 66 65 72 73
      004C80 00                    4328 	.db 0x00
                                   4329 	.area CSEG    (CODE)
                                   4330 	.area CONST   (CODE)
      004C81                       4331 ___str_22:
      004C81 0D                    4332 	.db 0x0d
      004C82 0A                    4333 	.db 0x0a
      004C83 50 6C 65 61 73 65 20  4334 	.ascii "Please enter a size for the new buffer, [200,600]: "
             65 6E 74 65 72 20 61
             20 73 69 7A 65 20 66
             6F 72 20 74 68 65 20
             6E 65 77 20 62 75 66
             66 65 72 2C 20 5B 32
             30 30 2C 36 30 30 5D
             3A 20
      004CB6 00                    4335 	.db 0x00
                                   4336 	.area CSEG    (CODE)
                                   4337 	.area CONST   (CODE)
      004CB7                       4338 ___str_23:
      004CB7 0D                    4339 	.db 0x0d
      004CB8 0A                    4340 	.db 0x0a
      004CB9 42 75 66 66 65 72 20  4341 	.ascii "Buffer size invalid!! Please try again"
             73 69 7A 65 20 69 6E
             76 61 6C 69 64 21 21
             20 50 6C 65 61 73 65
             20 74 72 79 20 61 67
             61 69 6E
      004CDF 00                    4342 	.db 0x00
                                   4343 	.area CSEG    (CODE)
                                   4344 	.area CONST   (CODE)
      004CE0                       4345 ___str_24:
      004CE0 0D                    4346 	.db 0x0d
      004CE1 0A                    4347 	.db 0x0a
      004CE2 20 41 6C 6C 6F 63 61  4348 	.ascii " Allocation failed; able to allocate header but not buffer"
             74 69 6F 6E 20 66 61
             69 6C 65 64 3B 20 61
             62 6C 65 20 74 6F 20
             61 6C 6C 6F 63 61 74
             65 20 68 65 61 64 65
             72 20 62 75 74 20 6E
             6F 74 20 62 75 66 66
             65 72
      004D1C 00                    4349 	.db 0x00
                                   4350 	.area CSEG    (CODE)
                                   4351 	.area CONST   (CODE)
      004D1D                       4352 ___str_25:
      004D1D 0D                    4353 	.db 0x0d
      004D1E 0A                    4354 	.db 0x0a
      004D1F 20 41 6C 6C 6F 63 61  4355 	.ascii " Allocation successful!! New buffer added"
             74 69 6F 6E 20 73 75
             63 63 65 73 73 66 75
             6C 21 21 20 4E 65 77
             20 62 75 66 66 65 72
             20 61 64 64 65 64
      004D48 00                    4356 	.db 0x00
                                   4357 	.area CSEG    (CODE)
                                   4358 	.area CONST   (CODE)
      004D49                       4359 ___str_26:
      004D49 0D                    4360 	.db 0x0d
      004D4A 0A                    4361 	.db 0x0a
      004D4B 50 6C 65 61 73 65 20  4362 	.ascii "Please enter the number of the buffer you would like to free"
             65 6E 74 65 72 20 74
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 74
             68 65 20 62 75 66 66
             65 72 20 79 6F 75 20
             77 6F 75 6C 64 20 6C
             69 6B 65 20 74 6F 20
             66 72 65 65
      004D87 3A 20                 4363 	.ascii ": "
      004D89 00                    4364 	.db 0x00
                                   4365 	.area CSEG    (CODE)
                                   4366 	.area CONST   (CODE)
      004D8A                       4367 ___str_27:
      004D8A 0D                    4368 	.db 0x0d
      004D8B 0A                    4369 	.db 0x0a
      004D8C 20 49 6E 76 61 6C 69  4370 	.ascii " Invalid buffer number, negatives not valid"
             64 20 62 75 66 66 65
             72 20 6E 75 6D 62 65
             72 2C 20 6E 65 67 61
             74 69 76 65 73 20 6E
             6F 74 20 76 61 6C 69
             64
      004DB7 00                    4371 	.db 0x00
                                   4372 	.area CSEG    (CODE)
                                   4373 	.area CONST   (CODE)
      004DB8                       4374 ___str_28:
      004DB8 0D                    4375 	.db 0x0d
      004DB9 0A                    4376 	.db 0x0a
      004DBA 20 49 6E 76 61 6C 69  4377 	.ascii " Invalid buffer number, buffers 0 & 1 are protected"
             64 20 62 75 66 66 65
             72 20 6E 75 6D 62 65
             72 2C 20 62 75 66 66
             65 72 73 20 30 20 26
             20 31 20 61 72 65 20
             70 72 6F 74 65 63 74
             65 64
      004DED 00                    4378 	.db 0x00
                                   4379 	.area CSEG    (CODE)
                                   4380 	.area CONST   (CODE)
      004DEE                       4381 ___str_29:
      004DEE 0D                    4382 	.db 0x0d
      004DEF 0A                    4383 	.db 0x0a
      004DF0 20 53 75 63 63 65 73  4384 	.ascii " Successfully removed buffer"
             73 66 75 6C 6C 79 20
             72 65 6D 6F 76 65 64
             20 62 75 66 66 65 72
      004E0C 00                    4385 	.db 0x00
                                   4386 	.area CSEG    (CODE)
                                   4387 	.area CONST   (CODE)
      004E0D                       4388 ___str_30:
      004E0D 0D                    4389 	.db 0x0d
      004E0E 0A                    4390 	.db 0x0a
      004E0F 20 46 61 69 6C 65 64  4391 	.ascii " Failed to remove buffer, idx too big"
             20 74 6F 20 72 65 6D
             6F 76 65 20 62 75 66
             66 65 72 2C 20 69 64
             78 20 74 6F 6F 20 62
             69 67
      004E34 00                    4392 	.db 0x00
                                   4393 	.area CSEG    (CODE)
                                   4394 	.area CONST   (CODE)
      004E35                       4395 ___str_31:
      004E35 0D                    4396 	.db 0x0d
      004E36 0A                    4397 	.db 0x0a
      004E37 45 6E 74 65 72 20 61  4398 	.ascii "Enter a char: "
             20 63 68 61 72 3A 20
      004E45 00                    4399 	.db 0x00
                                   4400 	.area CSEG    (CODE)
                                   4401 	.area XINIT   (CODE)
      004E53                       4402 __xinit__dynamic_buffers_list:
                                   4403 ; generic printIvalPtr
      004E53 00 00 00              4404 	.byte #0x00,#0x00,#0x00
                                   4405 	.area CABS    (ABS,CODE)
