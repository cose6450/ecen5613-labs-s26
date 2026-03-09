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
                                     23 	.globl _store_in_buffer
                                     24 	.globl _initialize_buffers
                                     25 	.globl _is_number
                                     26 	.globl _alloc_new_buffer
                                     27 	.globl _is_alphabet_char
                                     28 	.globl __sdcc_external_startup
                                     29 	.globl _ll_get_elem
                                     30 	.globl _ll_length
                                     31 	.globl _free_all_elems_from_list
                                     32 	.globl _remove_from_buffer_list
                                     33 	.globl _append_to_buffer_list
                                     34 	.globl ___memcpy
                                     35 	.globl _strlen
                                     36 	.globl _memset
                                     37 	.globl _reset_char_count
                                     38 	.globl _get_char_count
                                     39 	.globl _get_next_input_char
                                     40 	.globl _get_input_buffer
                                     41 	.globl _get_string
                                     42 	.globl _free
                                     43 	.globl _malloc
                                     44 	.globl _atoi
                                     45 	.globl _printf
                                     46 	.globl _CY
                                     47 	.globl _AC
                                     48 	.globl _F0
                                     49 	.globl _RS1
                                     50 	.globl _RS0
                                     51 	.globl _OV
                                     52 	.globl _F1
                                     53 	.globl _P
                                     54 	.globl _PS
                                     55 	.globl _PT1
                                     56 	.globl _PX1
                                     57 	.globl _PT0
                                     58 	.globl _PX0
                                     59 	.globl _RD
                                     60 	.globl _WR
                                     61 	.globl _T1
                                     62 	.globl _T0
                                     63 	.globl _INT1
                                     64 	.globl _INT0
                                     65 	.globl _TXD
                                     66 	.globl _RXD
                                     67 	.globl _P3_7
                                     68 	.globl _P3_6
                                     69 	.globl _P3_5
                                     70 	.globl _P3_4
                                     71 	.globl _P3_3
                                     72 	.globl _P3_2
                                     73 	.globl _P3_1
                                     74 	.globl _P3_0
                                     75 	.globl _EA
                                     76 	.globl _ES
                                     77 	.globl _ET1
                                     78 	.globl _EX1
                                     79 	.globl _ET0
                                     80 	.globl _EX0
                                     81 	.globl _P2_7
                                     82 	.globl _P2_6
                                     83 	.globl _P2_5
                                     84 	.globl _P2_4
                                     85 	.globl _P2_3
                                     86 	.globl _P2_2
                                     87 	.globl _P2_1
                                     88 	.globl _P2_0
                                     89 	.globl _SM0
                                     90 	.globl _SM1
                                     91 	.globl _SM2
                                     92 	.globl _REN
                                     93 	.globl _TB8
                                     94 	.globl _RB8
                                     95 	.globl _TI
                                     96 	.globl _RI
                                     97 	.globl _P1_7
                                     98 	.globl _P1_6
                                     99 	.globl _P1_5
                                    100 	.globl _P1_4
                                    101 	.globl _P1_3
                                    102 	.globl _P1_2
                                    103 	.globl _P1_1
                                    104 	.globl _P1_0
                                    105 	.globl _TF1
                                    106 	.globl _TR1
                                    107 	.globl _TF0
                                    108 	.globl _TR0
                                    109 	.globl _IE1
                                    110 	.globl _IT1
                                    111 	.globl _IE0
                                    112 	.globl _IT0
                                    113 	.globl _P0_7
                                    114 	.globl _P0_6
                                    115 	.globl _P0_5
                                    116 	.globl _P0_4
                                    117 	.globl _P0_3
                                    118 	.globl _P0_2
                                    119 	.globl _P0_1
                                    120 	.globl _P0_0
                                    121 	.globl _P5_7
                                    122 	.globl _P5_6
                                    123 	.globl _P5_5
                                    124 	.globl _P5_4
                                    125 	.globl _P5_3
                                    126 	.globl _P5_2
                                    127 	.globl _P5_1
                                    128 	.globl _P5_0
                                    129 	.globl _P4_7
                                    130 	.globl _P4_6
                                    131 	.globl _P4_5
                                    132 	.globl _P4_4
                                    133 	.globl _P4_3
                                    134 	.globl _P4_2
                                    135 	.globl _P4_1
                                    136 	.globl _P4_0
                                    137 	.globl _PX0L
                                    138 	.globl _PT0L
                                    139 	.globl _PX1L
                                    140 	.globl _PT1L
                                    141 	.globl _PSL
                                    142 	.globl _PT2L
                                    143 	.globl _PPCL
                                    144 	.globl _EC
                                    145 	.globl _CCF0
                                    146 	.globl _CCF1
                                    147 	.globl _CCF2
                                    148 	.globl _CCF3
                                    149 	.globl _CCF4
                                    150 	.globl _CR
                                    151 	.globl _CF
                                    152 	.globl _TF2
                                    153 	.globl _EXF2
                                    154 	.globl _RCLK
                                    155 	.globl _TCLK
                                    156 	.globl _EXEN2
                                    157 	.globl _TR2
                                    158 	.globl _C_T2
                                    159 	.globl _CP_RL2
                                    160 	.globl _T2CON_7
                                    161 	.globl _T2CON_6
                                    162 	.globl _T2CON_5
                                    163 	.globl _T2CON_4
                                    164 	.globl _T2CON_3
                                    165 	.globl _T2CON_2
                                    166 	.globl _T2CON_1
                                    167 	.globl _T2CON_0
                                    168 	.globl _PT2
                                    169 	.globl _ET2
                                    170 	.globl _B
                                    171 	.globl _ACC
                                    172 	.globl _PSW
                                    173 	.globl _IP
                                    174 	.globl _P3
                                    175 	.globl _IE
                                    176 	.globl _P2
                                    177 	.globl _SBUF
                                    178 	.globl _SCON
                                    179 	.globl _P1
                                    180 	.globl _TH1
                                    181 	.globl _TH0
                                    182 	.globl _TL1
                                    183 	.globl _TL0
                                    184 	.globl _TMOD
                                    185 	.globl _TCON
                                    186 	.globl _PCON
                                    187 	.globl _DPH
                                    188 	.globl _DPL
                                    189 	.globl _SP
                                    190 	.globl _P0
                                    191 	.globl _EECON
                                    192 	.globl _KBF
                                    193 	.globl _KBE
                                    194 	.globl _KBLS
                                    195 	.globl _BRL
                                    196 	.globl _BDRCON
                                    197 	.globl _T2MOD
                                    198 	.globl _SPDAT
                                    199 	.globl _SPSTA
                                    200 	.globl _SPCON
                                    201 	.globl _SADEN
                                    202 	.globl _SADDR
                                    203 	.globl _WDTPRG
                                    204 	.globl _WDTRST
                                    205 	.globl _P5
                                    206 	.globl _P4
                                    207 	.globl _IPH1
                                    208 	.globl _IPL1
                                    209 	.globl _IPH0
                                    210 	.globl _IPL0
                                    211 	.globl _IEN1
                                    212 	.globl _IEN0
                                    213 	.globl _CMOD
                                    214 	.globl _CL
                                    215 	.globl _CH
                                    216 	.globl _CCON
                                    217 	.globl _CCAPM4
                                    218 	.globl _CCAPM3
                                    219 	.globl _CCAPM2
                                    220 	.globl _CCAPM1
                                    221 	.globl _CCAPM0
                                    222 	.globl _CCAP4L
                                    223 	.globl _CCAP3L
                                    224 	.globl _CCAP2L
                                    225 	.globl _CCAP1L
                                    226 	.globl _CCAP0L
                                    227 	.globl _CCAP4H
                                    228 	.globl _CCAP3H
                                    229 	.globl _CCAP2H
                                    230 	.globl _CCAP1H
                                    231 	.globl _CCAP0H
                                    232 	.globl _CKCON1
                                    233 	.globl _CKCON0
                                    234 	.globl _CKRL
                                    235 	.globl _AUXR1
                                    236 	.globl _AUXR
                                    237 	.globl _TH2
                                    238 	.globl _TL2
                                    239 	.globl _RCAP2H
                                    240 	.globl _RCAP2L
                                    241 	.globl _T2CON
                                    242 	.globl _dynamic_buffers_list
                                    243 	.globl _store_in_buffer_PARM_2
                                    244 	.globl _static_buffers
                                    245 	.globl _get_user_buffer_sz
                                    246 	.globl _free_all_buffers
                                    247 ;--------------------------------------------------------
                                    248 ; special function registers
                                    249 ;--------------------------------------------------------
                                    250 	.area RSEG    (ABS,DATA)
      000000                        251 	.org 0x0000
                           0000C8   252 _T2CON	=	0x00c8
                           0000CA   253 _RCAP2L	=	0x00ca
                           0000CB   254 _RCAP2H	=	0x00cb
                           0000CC   255 _TL2	=	0x00cc
                           0000CD   256 _TH2	=	0x00cd
                           00008E   257 _AUXR	=	0x008e
                           0000A2   258 _AUXR1	=	0x00a2
                           000097   259 _CKRL	=	0x0097
                           00008F   260 _CKCON0	=	0x008f
                           0000AF   261 _CKCON1	=	0x00af
                           0000FA   262 _CCAP0H	=	0x00fa
                           0000FB   263 _CCAP1H	=	0x00fb
                           0000FC   264 _CCAP2H	=	0x00fc
                           0000FD   265 _CCAP3H	=	0x00fd
                           0000FE   266 _CCAP4H	=	0x00fe
                           0000EA   267 _CCAP0L	=	0x00ea
                           0000EB   268 _CCAP1L	=	0x00eb
                           0000EC   269 _CCAP2L	=	0x00ec
                           0000ED   270 _CCAP3L	=	0x00ed
                           0000EE   271 _CCAP4L	=	0x00ee
                           0000DA   272 _CCAPM0	=	0x00da
                           0000DB   273 _CCAPM1	=	0x00db
                           0000DC   274 _CCAPM2	=	0x00dc
                           0000DD   275 _CCAPM3	=	0x00dd
                           0000DE   276 _CCAPM4	=	0x00de
                           0000D8   277 _CCON	=	0x00d8
                           0000F9   278 _CH	=	0x00f9
                           0000E9   279 _CL	=	0x00e9
                           0000D9   280 _CMOD	=	0x00d9
                           0000A8   281 _IEN0	=	0x00a8
                           0000B1   282 _IEN1	=	0x00b1
                           0000B8   283 _IPL0	=	0x00b8
                           0000B7   284 _IPH0	=	0x00b7
                           0000B2   285 _IPL1	=	0x00b2
                           0000B3   286 _IPH1	=	0x00b3
                           0000C0   287 _P4	=	0x00c0
                           0000E8   288 _P5	=	0x00e8
                           0000A6   289 _WDTRST	=	0x00a6
                           0000A7   290 _WDTPRG	=	0x00a7
                           0000A9   291 _SADDR	=	0x00a9
                           0000B9   292 _SADEN	=	0x00b9
                           0000C3   293 _SPCON	=	0x00c3
                           0000C4   294 _SPSTA	=	0x00c4
                           0000C5   295 _SPDAT	=	0x00c5
                           0000C9   296 _T2MOD	=	0x00c9
                           00009B   297 _BDRCON	=	0x009b
                           00009A   298 _BRL	=	0x009a
                           00009C   299 _KBLS	=	0x009c
                           00009D   300 _KBE	=	0x009d
                           00009E   301 _KBF	=	0x009e
                           0000D2   302 _EECON	=	0x00d2
                           000080   303 _P0	=	0x0080
                           000081   304 _SP	=	0x0081
                           000082   305 _DPL	=	0x0082
                           000083   306 _DPH	=	0x0083
                           000087   307 _PCON	=	0x0087
                           000088   308 _TCON	=	0x0088
                           000089   309 _TMOD	=	0x0089
                           00008A   310 _TL0	=	0x008a
                           00008B   311 _TL1	=	0x008b
                           00008C   312 _TH0	=	0x008c
                           00008D   313 _TH1	=	0x008d
                           000090   314 _P1	=	0x0090
                           000098   315 _SCON	=	0x0098
                           000099   316 _SBUF	=	0x0099
                           0000A0   317 _P2	=	0x00a0
                           0000A8   318 _IE	=	0x00a8
                           0000B0   319 _P3	=	0x00b0
                           0000B8   320 _IP	=	0x00b8
                           0000D0   321 _PSW	=	0x00d0
                           0000E0   322 _ACC	=	0x00e0
                           0000F0   323 _B	=	0x00f0
                                    324 ;--------------------------------------------------------
                                    325 ; special function bits
                                    326 ;--------------------------------------------------------
                                    327 	.area RSEG    (ABS,DATA)
      000000                        328 	.org 0x0000
                           0000AD   329 _ET2	=	0x00ad
                           0000BD   330 _PT2	=	0x00bd
                           0000C8   331 _T2CON_0	=	0x00c8
                           0000C9   332 _T2CON_1	=	0x00c9
                           0000CA   333 _T2CON_2	=	0x00ca
                           0000CB   334 _T2CON_3	=	0x00cb
                           0000CC   335 _T2CON_4	=	0x00cc
                           0000CD   336 _T2CON_5	=	0x00cd
                           0000CE   337 _T2CON_6	=	0x00ce
                           0000CF   338 _T2CON_7	=	0x00cf
                           0000C8   339 _CP_RL2	=	0x00c8
                           0000C9   340 _C_T2	=	0x00c9
                           0000CA   341 _TR2	=	0x00ca
                           0000CB   342 _EXEN2	=	0x00cb
                           0000CC   343 _TCLK	=	0x00cc
                           0000CD   344 _RCLK	=	0x00cd
                           0000CE   345 _EXF2	=	0x00ce
                           0000CF   346 _TF2	=	0x00cf
                           0000DF   347 _CF	=	0x00df
                           0000DE   348 _CR	=	0x00de
                           0000DC   349 _CCF4	=	0x00dc
                           0000DB   350 _CCF3	=	0x00db
                           0000DA   351 _CCF2	=	0x00da
                           0000D9   352 _CCF1	=	0x00d9
                           0000D8   353 _CCF0	=	0x00d8
                           0000AE   354 _EC	=	0x00ae
                           0000BE   355 _PPCL	=	0x00be
                           0000BD   356 _PT2L	=	0x00bd
                           0000BC   357 _PSL	=	0x00bc
                           0000BB   358 _PT1L	=	0x00bb
                           0000BA   359 _PX1L	=	0x00ba
                           0000B9   360 _PT0L	=	0x00b9
                           0000B8   361 _PX0L	=	0x00b8
                           0000C0   362 _P4_0	=	0x00c0
                           0000C1   363 _P4_1	=	0x00c1
                           0000C2   364 _P4_2	=	0x00c2
                           0000C3   365 _P4_3	=	0x00c3
                           0000C4   366 _P4_4	=	0x00c4
                           0000C5   367 _P4_5	=	0x00c5
                           0000C6   368 _P4_6	=	0x00c6
                           0000C7   369 _P4_7	=	0x00c7
                           0000E8   370 _P5_0	=	0x00e8
                           0000E9   371 _P5_1	=	0x00e9
                           0000EA   372 _P5_2	=	0x00ea
                           0000EB   373 _P5_3	=	0x00eb
                           0000EC   374 _P5_4	=	0x00ec
                           0000ED   375 _P5_5	=	0x00ed
                           0000EE   376 _P5_6	=	0x00ee
                           0000EF   377 _P5_7	=	0x00ef
                           000080   378 _P0_0	=	0x0080
                           000081   379 _P0_1	=	0x0081
                           000082   380 _P0_2	=	0x0082
                           000083   381 _P0_3	=	0x0083
                           000084   382 _P0_4	=	0x0084
                           000085   383 _P0_5	=	0x0085
                           000086   384 _P0_6	=	0x0086
                           000087   385 _P0_7	=	0x0087
                           000088   386 _IT0	=	0x0088
                           000089   387 _IE0	=	0x0089
                           00008A   388 _IT1	=	0x008a
                           00008B   389 _IE1	=	0x008b
                           00008C   390 _TR0	=	0x008c
                           00008D   391 _TF0	=	0x008d
                           00008E   392 _TR1	=	0x008e
                           00008F   393 _TF1	=	0x008f
                           000090   394 _P1_0	=	0x0090
                           000091   395 _P1_1	=	0x0091
                           000092   396 _P1_2	=	0x0092
                           000093   397 _P1_3	=	0x0093
                           000094   398 _P1_4	=	0x0094
                           000095   399 _P1_5	=	0x0095
                           000096   400 _P1_6	=	0x0096
                           000097   401 _P1_7	=	0x0097
                           000098   402 _RI	=	0x0098
                           000099   403 _TI	=	0x0099
                           00009A   404 _RB8	=	0x009a
                           00009B   405 _TB8	=	0x009b
                           00009C   406 _REN	=	0x009c
                           00009D   407 _SM2	=	0x009d
                           00009E   408 _SM1	=	0x009e
                           00009F   409 _SM0	=	0x009f
                           0000A0   410 _P2_0	=	0x00a0
                           0000A1   411 _P2_1	=	0x00a1
                           0000A2   412 _P2_2	=	0x00a2
                           0000A3   413 _P2_3	=	0x00a3
                           0000A4   414 _P2_4	=	0x00a4
                           0000A5   415 _P2_5	=	0x00a5
                           0000A6   416 _P2_6	=	0x00a6
                           0000A7   417 _P2_7	=	0x00a7
                           0000A8   418 _EX0	=	0x00a8
                           0000A9   419 _ET0	=	0x00a9
                           0000AA   420 _EX1	=	0x00aa
                           0000AB   421 _ET1	=	0x00ab
                           0000AC   422 _ES	=	0x00ac
                           0000AF   423 _EA	=	0x00af
                           0000B0   424 _P3_0	=	0x00b0
                           0000B1   425 _P3_1	=	0x00b1
                           0000B2   426 _P3_2	=	0x00b2
                           0000B3   427 _P3_3	=	0x00b3
                           0000B4   428 _P3_4	=	0x00b4
                           0000B5   429 _P3_5	=	0x00b5
                           0000B6   430 _P3_6	=	0x00b6
                           0000B7   431 _P3_7	=	0x00b7
                           0000B0   432 _RXD	=	0x00b0
                           0000B1   433 _TXD	=	0x00b1
                           0000B2   434 _INT0	=	0x00b2
                           0000B3   435 _INT1	=	0x00b3
                           0000B4   436 _T0	=	0x00b4
                           0000B5   437 _T1	=	0x00b5
                           0000B6   438 _WR	=	0x00b6
                           0000B7   439 _RD	=	0x00b7
                           0000B8   440 _PX0	=	0x00b8
                           0000B9   441 _PT0	=	0x00b9
                           0000BA   442 _PX1	=	0x00ba
                           0000BB   443 _PT1	=	0x00bb
                           0000BC   444 _PS	=	0x00bc
                           0000D0   445 _P	=	0x00d0
                           0000D1   446 _F1	=	0x00d1
                           0000D2   447 _OV	=	0x00d2
                           0000D3   448 _RS0	=	0x00d3
                           0000D4   449 _RS1	=	0x00d4
                           0000D5   450 _F0	=	0x00d5
                           0000D6   451 _AC	=	0x00d6
                           0000D7   452 _CY	=	0x00d7
                                    453 ;--------------------------------------------------------
                                    454 ; overlayable register banks
                                    455 ;--------------------------------------------------------
                                    456 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        457 	.ds 8
                                    458 ;--------------------------------------------------------
                                    459 ; internal ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area DSEG    (DATA)
      000021                        462 _initialize_buffers_sloc0_1_0:
      000021                        463 	.ds 2
      000023                        464 _initialize_buffers_sloc1_1_0:
      000023                        465 	.ds 2
      000025                        466 _initialize_buffers_sloc2_1_0:
      000025                        467 	.ds 2
      000027                        468 _initialize_buffers_sloc3_1_0:
      000027                        469 	.ds 3
      00002A                        470 _initialize_buffers_sloc4_1_0:
      00002A                        471 	.ds 3
      00002D                        472 _initialize_buffers_sloc5_1_0:
      00002D                        473 	.ds 3
      000030                        474 _store_in_buffer_sloc0_1_0:
      000030                        475 	.ds 2
      000032                        476 _store_in_buffer_sloc1_1_0:
      000032                        477 	.ds 3
      000035                        478 _heap_report_sloc0_1_0:
      000035                        479 	.ds 2
      000037                        480 _heap_report_sloc1_1_0:
      000037                        481 	.ds 2
      000039                        482 _heap_report_sloc2_1_0:
      000039                        483 	.ds 2
      00003B                        484 _heap_report_sloc3_1_0:
      00003B                        485 	.ds 2
      00003D                        486 _heap_report_sloc4_1_0:
      00003D                        487 	.ds 3
      000040                        488 _heap_report_sloc5_1_0:
      000040                        489 	.ds 3
      000043                        490 _qmark_command_handler_sloc0_1_0:
      000043                        491 	.ds 2
      000045                        492 _qmark_command_handler_sloc1_1_0:
      000045                        493 	.ds 3
      000048                        494 _enter_command_handler_sloc0_1_0:
      000048                        495 	.ds 3
      00004B                        496 _enter_command_handler_sloc1_1_0:
      00004B                        497 	.ds 2
      00004D                        498 _enter_command_handler_sloc2_1_0:
      00004D                        499 	.ds 2
      00004F                        500 _enter_command_handler_sloc3_1_0:
      00004F                        501 	.ds 2
      000051                        502 _percent_command_handler_sloc0_1_0:
      000051                        503 	.ds 3
      000054                        504 _dollar_sign_command_handler_sloc0_1_0:
      000054                        505 	.ds 2
      000056                        506 _hashtag_command_handler_c_196609_174:
      000056                        507 	.ds 1
      000057                        508 _ampersand_command_handler_sloc0_1_0:
      000057                        509 	.ds 3
      00005A                        510 _ampersand_command_handler_sloc1_1_0:
      00005A                        511 	.ds 2
      00005C                        512 _ampersand_command_handler_sloc2_1_0:
      00005C                        513 	.ds 3
                                    514 ;--------------------------------------------------------
                                    515 ; overlayable items in internal ram
                                    516 ;--------------------------------------------------------
                                    517 ;--------------------------------------------------------
                                    518 ; Stack segment in internal ram
                                    519 ;--------------------------------------------------------
                                    520 	.area	SSEG
      00005F                        521 __start__stack:
      00005F                        522 	.ds	1
                                    523 
                                    524 ;--------------------------------------------------------
                                    525 ; indirectly addressable internal ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area ISEG    (DATA)
                                    528 ;--------------------------------------------------------
                                    529 ; absolute internal ram data
                                    530 ;--------------------------------------------------------
                                    531 	.area IABS    (ABS,DATA)
                                    532 	.area IABS    (ABS,DATA)
                                    533 ;--------------------------------------------------------
                                    534 ; bit data
                                    535 ;--------------------------------------------------------
                                    536 	.area BSEG    (BIT)
      000000                        537 _is_alphabet_char_sloc0_1_0:
      000000                        538 	.ds 1
      000001                        539 _is_number_sloc0_1_0:
      000001                        540 	.ds 1
                                    541 ;--------------------------------------------------------
                                    542 ; paged external ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area PSEG    (PAG,XDATA)
                                    545 ;--------------------------------------------------------
                                    546 ; external ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area XSEG    (XDATA)
      000001                        549 _static_buffers::
      000001                        550 	.ds 22
      000017                        551 _is_alphabet_char_c_65536_82:
      000017                        552 	.ds 1
      000018                        553 _initialize_default_elements_buffer_65536_84:
      000018                        554 	.ds 3
      00001B                        555 _alloc_new_buffer_size_65536_86:
      00001B                        556 	.ds 2
      00001D                        557 _is_number_c_65536_90:
      00001D                        558 	.ds 1
      00001E                        559 _initialize_buffers_max_user_input_65538_98:
      00001E                        560 	.ds 2
      000020                        561 _initialize_buffers_total_heap_sz_65539_114:
      000020                        562 	.ds 2
      000022                        563 _initialize_buffers_curr_65540_118:
      000022                        564 	.ds 3
      000025                        565 _store_in_buffer_PARM_2:
      000025                        566 	.ds 1
      000026                        567 _store_in_buffer_buffer_65536_121:
      000026                        568 	.ds 3
      000029                        569 _command_header_command_string_65536_126:
      000029                        570 	.ds 3
      00002C                        571 _heap_report_total_heap_sz_65537_129:
      00002C                        572 	.ds 2
      00002E                        573 _heap_report_curr_65538_133:
      00002E                        574 	.ds 3
      000031                        575 _get_user_buffer_sz_maximum_sz_65536_136:
      000031                        576 	.ds 2
      000033                        577 _qmark_command_handler_curr_output_char_65538_149:
      000033                        578 	.ds 2
      000035                        579 _qmark_command_handler_curr_char_196610_151:
      000035                        580 	.ds 1
      000036                        581 _percent_command_handler_curr_65537_165:
      000036                        582 	.ds 3
                                    583 ;--------------------------------------------------------
                                    584 ; absolute external ram data
                                    585 ;--------------------------------------------------------
                                    586 	.area XABS    (ABS,XDATA)
                                    587 ;--------------------------------------------------------
                                    588 ; external initialized ram data
                                    589 ;--------------------------------------------------------
                                    590 	.area XISEG   (XDATA)
      0020D3                        591 _dynamic_buffers_list::
      0020D3                        592 	.ds 3
                                    593 	.area HOME    (CODE)
                                    594 	.area GSINIT0 (CODE)
                                    595 	.area GSINIT1 (CODE)
                                    596 	.area GSINIT2 (CODE)
                                    597 	.area GSINIT3 (CODE)
                                    598 	.area GSINIT4 (CODE)
                                    599 	.area GSINIT5 (CODE)
                                    600 	.area GSINIT  (CODE)
                                    601 	.area GSFINAL (CODE)
                                    602 	.area CSEG    (CODE)
                                    603 ;--------------------------------------------------------
                                    604 ; interrupt vector
                                    605 ;--------------------------------------------------------
                                    606 	.area HOME    (CODE)
      002000                        607 __interrupt_vect:
      002000 02 20 34         [24]  608 	ljmp	__sdcc_gsinit_startup
                                    609 ;--------------------------------------------------------
                                    610 ; global & static initialisations
                                    611 ;--------------------------------------------------------
                                    612 	.area HOME    (CODE)
                                    613 	.area GSINIT  (CODE)
                                    614 	.area GSFINAL (CODE)
                                    615 	.area GSINIT  (CODE)
                                    616 	.globl __sdcc_gsinit_startup
                                    617 	.globl __sdcc_program_startup
                                    618 	.globl __start__stack
                                    619 	.globl __mcs51_genXINIT
                                    620 	.globl __mcs51_genXRAMCLEAR
                                    621 	.globl __mcs51_genRAMCLEAR
                                    622 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  623 	ljmp	__sdcc_program_startup
                                    624 ;--------------------------------------------------------
                                    625 ; Home
                                    626 ;--------------------------------------------------------
                                    627 	.area HOME    (CODE)
                                    628 	.area HOME    (CODE)
      002003                        629 __sdcc_program_startup:
      002003 02 38 BE         [24]  630 	ljmp	_main
                                    631 ;	return from main will return to caller
                                    632 ;--------------------------------------------------------
                                    633 ; code
                                    634 ;--------------------------------------------------------
                                    635 	.area CSEG    (CODE)
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    638 ;------------------------------------------------------------
                                    639 ;	src/main.c:27: int _sdcc_external_startup()
                                    640 ;	-----------------------------------------
                                    641 ;	 function _sdcc_external_startup
                                    642 ;	-----------------------------------------
      002090                        643 __sdcc_external_startup:
                           000007   644 	ar7 = 0x07
                           000006   645 	ar6 = 0x06
                           000005   646 	ar5 = 0x05
                           000004   647 	ar4 = 0x04
                           000003   648 	ar3 = 0x03
                           000002   649 	ar2 = 0x02
                           000001   650 	ar1 = 0x01
                           000000   651 	ar0 = 0x00
                                    652 ;	src/main.c:30: return 0;
      002090 90 00 00         [24]  653 	mov	dptr,#0x0000
                                    654 ;	src/main.c:31: }
      002093 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'is_alphabet_char'
                                    658 ;------------------------------------------------------------
                                    659 ;c                         Allocated with name '_is_alphabet_char_c_65536_82'
                                    660 ;------------------------------------------------------------
                                    661 ;	src/main.c:65: bool is_alphabet_char(char c)
                                    662 ;	-----------------------------------------
                                    663 ;	 function is_alphabet_char
                                    664 ;	-----------------------------------------
      002094                        665 _is_alphabet_char:
      002094 E5 82            [12]  666 	mov	a,dpl
      002096 90 00 17         [24]  667 	mov	dptr,#_is_alphabet_char_c_65536_82
      002099 F0               [24]  668 	movx	@dptr,a
                                    669 ;	src/main.c:67: return (c <= 'Z' && c >= 'A')
      00209A E0               [24]  670 	movx	a,@dptr
      00209B FF               [12]  671 	mov  r7,a
      00209C 24 A5            [12]  672 	add	a,#0xff - 0x5a
      00209E 92 00            [24]  673 	mov	_is_alphabet_char_sloc0_1_0,c
      0020A0 40 07            [24]  674 	jc	00108$
      0020A2 BF 41 00         [24]  675 	cjne	r7,#0x41,00121$
      0020A5                        676 00121$:
      0020A5 92 00            [24]  677 	mov	_is_alphabet_char_sloc0_1_0,c
      0020A7 50 16            [24]  678 	jnc	00104$
      0020A9                        679 00108$:
                                    680 ;	src/main.c:68: || (c <= 'z' && c >= 'a');
      0020A9 90 00 17         [24]  681 	mov	dptr,#_is_alphabet_char_c_65536_82
      0020AC E0               [24]  682 	movx	a,@dptr
      0020AD FF               [12]  683 	mov  r7,a
      0020AE 24 85            [12]  684 	add	a,#0xff - 0x7a
      0020B0 92 00            [24]  685 	mov	_is_alphabet_char_sloc0_1_0,c
      0020B2 40 07            [24]  686 	jc	00103$
      0020B4 BF 61 00         [24]  687 	cjne	r7,#0x61,00124$
      0020B7                        688 00124$:
      0020B7 92 00            [24]  689 	mov	_is_alphabet_char_sloc0_1_0,c
      0020B9 50 04            [24]  690 	jnc	00104$
      0020BB                        691 00103$:
                                    692 ;	assignBit
      0020BB C2 00            [12]  693 	clr	_is_alphabet_char_sloc0_1_0
      0020BD 80 02            [24]  694 	sjmp	00105$
      0020BF                        695 00104$:
                                    696 ;	assignBit
      0020BF D2 00            [12]  697 	setb	_is_alphabet_char_sloc0_1_0
      0020C1                        698 00105$:
      0020C1 A2 00            [12]  699 	mov	c,_is_alphabet_char_sloc0_1_0
      0020C3 E4               [12]  700 	clr	a
      0020C4 33               [12]  701 	rlc	a
      0020C5 F5 82            [12]  702 	mov	dpl,a
                                    703 ;	src/main.c:69: }
      0020C7 22               [24]  704 	ret
                                    705 ;------------------------------------------------------------
                                    706 ;Allocation info for local variables in function 'initialize_default_elements'
                                    707 ;------------------------------------------------------------
                                    708 ;buffer                    Allocated with name '_initialize_default_elements_buffer_65536_84'
                                    709 ;------------------------------------------------------------
                                    710 ;	src/main.c:71: static void initialize_default_elements(buffer_t *buffer)
                                    711 ;	-----------------------------------------
                                    712 ;	 function initialize_default_elements
                                    713 ;	-----------------------------------------
      0020C8                        714 _initialize_default_elements:
      0020C8 AF F0            [24]  715 	mov	r7,b
      0020CA AE 83            [24]  716 	mov	r6,dph
      0020CC E5 82            [12]  717 	mov	a,dpl
      0020CE 90 00 18         [24]  718 	mov	dptr,#_initialize_default_elements_buffer_65536_84
      0020D1 F0               [24]  719 	movx	@dptr,a
      0020D2 EE               [12]  720 	mov	a,r6
      0020D3 A3               [24]  721 	inc	dptr
      0020D4 F0               [24]  722 	movx	@dptr,a
      0020D5 EF               [12]  723 	mov	a,r7
      0020D6 A3               [24]  724 	inc	dptr
      0020D7 F0               [24]  725 	movx	@dptr,a
                                    726 ;	src/main.c:73: buffer->alphabet_chars = 0;
      0020D8 90 00 18         [24]  727 	mov	dptr,#_initialize_default_elements_buffer_65536_84
      0020DB E0               [24]  728 	movx	a,@dptr
      0020DC FD               [12]  729 	mov	r5,a
      0020DD A3               [24]  730 	inc	dptr
      0020DE E0               [24]  731 	movx	a,@dptr
      0020DF FE               [12]  732 	mov	r6,a
      0020E0 A3               [24]  733 	inc	dptr
      0020E1 E0               [24]  734 	movx	a,@dptr
      0020E2 FF               [12]  735 	mov	r7,a
      0020E3 74 02            [12]  736 	mov	a,#0x02
      0020E5 2D               [12]  737 	add	a,r5
      0020E6 FA               [12]  738 	mov	r2,a
      0020E7 E4               [12]  739 	clr	a
      0020E8 3E               [12]  740 	addc	a,r6
      0020E9 FB               [12]  741 	mov	r3,a
      0020EA 8F 04            [24]  742 	mov	ar4,r7
      0020EC 8A 82            [24]  743 	mov	dpl,r2
      0020EE 8B 83            [24]  744 	mov	dph,r3
      0020F0 8C F0            [24]  745 	mov	b,r4
      0020F2 E4               [12]  746 	clr	a
      0020F3 12 43 42         [24]  747 	lcall	__gptrput
      0020F6 A3               [24]  748 	inc	dptr
      0020F7 12 43 42         [24]  749 	lcall	__gptrput
                                    750 ;	src/main.c:74: buffer->curr_available_char = 0;
      0020FA 74 06            [12]  751 	mov	a,#0x06
      0020FC 2D               [12]  752 	add	a,r5
      0020FD FA               [12]  753 	mov	r2,a
      0020FE E4               [12]  754 	clr	a
      0020FF 3E               [12]  755 	addc	a,r6
      002100 FB               [12]  756 	mov	r3,a
      002101 8F 04            [24]  757 	mov	ar4,r7
      002103 8A 82            [24]  758 	mov	dpl,r2
      002105 8B 83            [24]  759 	mov	dph,r3
      002107 8C F0            [24]  760 	mov	b,r4
      002109 E4               [12]  761 	clr	a
      00210A 12 43 42         [24]  762 	lcall	__gptrput
      00210D A3               [24]  763 	inc	dptr
      00210E 12 43 42         [24]  764 	lcall	__gptrput
                                    765 ;	src/main.c:75: buffer->next = NULL;
      002111 74 08            [12]  766 	mov	a,#0x08
      002113 2D               [12]  767 	add	a,r5
      002114 FA               [12]  768 	mov	r2,a
      002115 E4               [12]  769 	clr	a
      002116 3E               [12]  770 	addc	a,r6
      002117 FB               [12]  771 	mov	r3,a
      002118 8F 04            [24]  772 	mov	ar4,r7
      00211A 8A 82            [24]  773 	mov	dpl,r2
      00211C 8B 83            [24]  774 	mov	dph,r3
      00211E 8C F0            [24]  775 	mov	b,r4
      002120 E4               [12]  776 	clr	a
      002121 12 43 42         [24]  777 	lcall	__gptrput
      002124 A3               [24]  778 	inc	dptr
      002125 12 43 42         [24]  779 	lcall	__gptrput
      002128 A3               [24]  780 	inc	dptr
      002129 12 43 42         [24]  781 	lcall	__gptrput
                                    782 ;	src/main.c:77: memset(buffer->buffer, 0x00, buffer->size);
      00212C 8D 82            [24]  783 	mov	dpl,r5
      00212E 8E 83            [24]  784 	mov	dph,r6
      002130 8F F0            [24]  785 	mov	b,r7
      002132 12 4F 9C         [24]  786 	lcall	__gptrget
      002135 FB               [12]  787 	mov	r3,a
      002136 A3               [24]  788 	inc	dptr
      002137 12 4F 9C         [24]  789 	lcall	__gptrget
      00213A FC               [12]  790 	mov	r4,a
      00213B 7A 00            [12]  791 	mov	r2,#0x00
      00213D 74 04            [12]  792 	mov	a,#0x04
      00213F 2D               [12]  793 	add	a,r5
      002140 FD               [12]  794 	mov	r5,a
      002141 E4               [12]  795 	clr	a
      002142 3E               [12]  796 	addc	a,r6
      002143 FE               [12]  797 	mov	r6,a
      002144 8D 82            [24]  798 	mov	dpl,r5
      002146 8E 83            [24]  799 	mov	dph,r6
      002148 8F F0            [24]  800 	mov	b,r7
      00214A 12 4F 9C         [24]  801 	lcall	__gptrget
      00214D FD               [12]  802 	mov	r5,a
      00214E A3               [24]  803 	inc	dptr
      00214F 12 4F 9C         [24]  804 	lcall	__gptrget
      002152 FE               [12]  805 	mov	r6,a
      002153 90 20 88         [24]  806 	mov	dptr,#_memset_PARM_2
      002156 E4               [12]  807 	clr	a
      002157 F0               [24]  808 	movx	@dptr,a
      002158 90 20 89         [24]  809 	mov	dptr,#_memset_PARM_3
      00215B ED               [12]  810 	mov	a,r5
      00215C F0               [24]  811 	movx	@dptr,a
      00215D EE               [12]  812 	mov	a,r6
      00215E A3               [24]  813 	inc	dptr
      00215F F0               [24]  814 	movx	@dptr,a
      002160 8B 82            [24]  815 	mov	dpl,r3
      002162 8C 83            [24]  816 	mov	dph,r4
      002164 8A F0            [24]  817 	mov	b,r2
                                    818 ;	src/main.c:78: }
      002166 02 41 F6         [24]  819 	ljmp	_memset
                                    820 ;------------------------------------------------------------
                                    821 ;Allocation info for local variables in function 'alloc_new_buffer'
                                    822 ;------------------------------------------------------------
                                    823 ;size                      Allocated with name '_alloc_new_buffer_size_65536_86'
                                    824 ;header                    Allocated with name '_alloc_new_buffer_header_65536_87'
                                    825 ;------------------------------------------------------------
                                    826 ;	src/main.c:83: buffer_t *alloc_new_buffer(size_t size)
                                    827 ;	-----------------------------------------
                                    828 ;	 function alloc_new_buffer
                                    829 ;	-----------------------------------------
      002169                        830 _alloc_new_buffer:
      002169 AF 83            [24]  831 	mov	r7,dph
      00216B E5 82            [12]  832 	mov	a,dpl
      00216D 90 00 1B         [24]  833 	mov	dptr,#_alloc_new_buffer_size_65536_86
      002170 F0               [24]  834 	movx	@dptr,a
      002171 EF               [12]  835 	mov	a,r7
      002172 A3               [24]  836 	inc	dptr
      002173 F0               [24]  837 	movx	@dptr,a
                                    838 ;	src/main.c:85: buffer_t *header = malloc(sizeof(buffer_t));
      002174 90 00 0B         [24]  839 	mov	dptr,#0x000b
      002177 12 43 99         [24]  840 	lcall	_malloc
      00217A AE 82            [24]  841 	mov	r6,dpl
      00217C AD 83            [24]  842 	mov	r5,dph
      00217E 7F 00            [12]  843 	mov	r7,#0x00
                                    844 ;	src/main.c:86: if (header == NULL)
      002180 EE               [12]  845 	mov	a,r6
      002181 4D               [12]  846 	orl	a,r5
                                    847 ;	src/main.c:88: return NULL;
      002182 70 06            [24]  848 	jnz	00102$
      002184 90 00 00         [24]  849 	mov	dptr,#0x0000
      002187 F5 F0            [12]  850 	mov	b,a
      002189 22               [24]  851 	ret
      00218A                        852 00102$:
                                    853 ;	src/main.c:90: header->size = size;
      00218A 74 04            [12]  854 	mov	a,#0x04
      00218C 2E               [12]  855 	add	a,r6
      00218D FA               [12]  856 	mov	r2,a
      00218E E4               [12]  857 	clr	a
      00218F 3D               [12]  858 	addc	a,r5
      002190 FB               [12]  859 	mov	r3,a
      002191 8F 04            [24]  860 	mov	ar4,r7
      002193 90 00 1B         [24]  861 	mov	dptr,#_alloc_new_buffer_size_65536_86
      002196 E0               [24]  862 	movx	a,@dptr
      002197 F8               [12]  863 	mov	r0,a
      002198 A3               [24]  864 	inc	dptr
      002199 E0               [24]  865 	movx	a,@dptr
      00219A F9               [12]  866 	mov	r1,a
      00219B 8A 82            [24]  867 	mov	dpl,r2
      00219D 8B 83            [24]  868 	mov	dph,r3
      00219F 8C F0            [24]  869 	mov	b,r4
      0021A1 E8               [12]  870 	mov	a,r0
      0021A2 12 43 42         [24]  871 	lcall	__gptrput
      0021A5 A3               [24]  872 	inc	dptr
      0021A6 E9               [12]  873 	mov	a,r1
      0021A7 12 43 42         [24]  874 	lcall	__gptrput
                                    875 ;	src/main.c:91: header->buffer = malloc(size);
      0021AA 88 82            [24]  876 	mov	dpl,r0
      0021AC 89 83            [24]  877 	mov	dph,r1
      0021AE C0 07            [24]  878 	push	ar7
      0021B0 C0 06            [24]  879 	push	ar6
      0021B2 C0 05            [24]  880 	push	ar5
      0021B4 12 43 99         [24]  881 	lcall	_malloc
      0021B7 AB 82            [24]  882 	mov	r3,dpl
      0021B9 AC 83            [24]  883 	mov	r4,dph
      0021BB D0 05            [24]  884 	pop	ar5
      0021BD D0 06            [24]  885 	pop	ar6
      0021BF D0 07            [24]  886 	pop	ar7
      0021C1 8E 82            [24]  887 	mov	dpl,r6
      0021C3 8D 83            [24]  888 	mov	dph,r5
      0021C5 8F F0            [24]  889 	mov	b,r7
      0021C7 EB               [12]  890 	mov	a,r3
      0021C8 12 43 42         [24]  891 	lcall	__gptrput
      0021CB A3               [24]  892 	inc	dptr
      0021CC EC               [12]  893 	mov	a,r4
      0021CD 12 43 42         [24]  894 	lcall	__gptrput
                                    895 ;	src/main.c:92: if (header->buffer == NULL)
      0021D0 EB               [12]  896 	mov	a,r3
      0021D1 4C               [12]  897 	orl	a,r4
      0021D2 70 16            [24]  898 	jnz	00104$
                                    899 ;	src/main.c:94: free(header);
      0021D4 8E 02            [24]  900 	mov	ar2,r6
      0021D6 8D 03            [24]  901 	mov	ar3,r5
      0021D8 8F 04            [24]  902 	mov	ar4,r7
      0021DA 8A 82            [24]  903 	mov	dpl,r2
      0021DC 8B 83            [24]  904 	mov	dph,r3
      0021DE 8C F0            [24]  905 	mov	b,r4
      0021E0 12 40 2B         [24]  906 	lcall	_free
                                    907 ;	src/main.c:95: return NULL;
      0021E3 90 00 00         [24]  908 	mov	dptr,#0x0000
      0021E6 75 F0 00         [24]  909 	mov	b,#0x00
      0021E9 22               [24]  910 	ret
      0021EA                        911 00104$:
                                    912 ;	src/main.c:97: initialize_default_elements(header);
      0021EA 8E 82            [24]  913 	mov	dpl,r6
      0021EC 8D 83            [24]  914 	mov	dph,r5
      0021EE 8F F0            [24]  915 	mov	b,r7
      0021F0 C0 07            [24]  916 	push	ar7
      0021F2 C0 06            [24]  917 	push	ar6
      0021F4 C0 05            [24]  918 	push	ar5
      0021F6 12 20 C8         [24]  919 	lcall	_initialize_default_elements
      0021F9 D0 05            [24]  920 	pop	ar5
      0021FB D0 06            [24]  921 	pop	ar6
      0021FD D0 07            [24]  922 	pop	ar7
                                    923 ;	src/main.c:98: return header; 
      0021FF 8E 82            [24]  924 	mov	dpl,r6
      002201 8D 83            [24]  925 	mov	dph,r5
      002203 8F F0            [24]  926 	mov	b,r7
                                    927 ;	src/main.c:99: }
      002205 22               [24]  928 	ret
                                    929 ;------------------------------------------------------------
                                    930 ;Allocation info for local variables in function 'is_number'
                                    931 ;------------------------------------------------------------
                                    932 ;c                         Allocated with name '_is_number_c_65536_90'
                                    933 ;------------------------------------------------------------
                                    934 ;	src/main.c:104: bool is_number(char c)
                                    935 ;	-----------------------------------------
                                    936 ;	 function is_number
                                    937 ;	-----------------------------------------
      002206                        938 _is_number:
      002206 E5 82            [12]  939 	mov	a,dpl
      002208 90 00 1D         [24]  940 	mov	dptr,#_is_number_c_65536_90
      00220B F0               [24]  941 	movx	@dptr,a
                                    942 ;	src/main.c:106: return c >= '0' && c <= '9';
      00220C E0               [24]  943 	movx	a,@dptr
      00220D FF               [12]  944 	mov	r7,a
      00220E BF 30 00         [24]  945 	cjne	r7,#0x30,00110$
      002211                        946 00110$:
      002211 92 01            [24]  947 	mov	_is_number_sloc0_1_0,c
      002213 40 07            [24]  948 	jc	00103$
      002215 EF               [12]  949 	mov	a,r7
      002216 24 C6            [12]  950 	add	a,#0xff - 0x39
      002218 92 01            [24]  951 	mov	_is_number_sloc0_1_0,c
      00221A 50 04            [24]  952 	jnc	00104$
      00221C                        953 00103$:
                                    954 ;	assignBit
      00221C C2 01            [12]  955 	clr	_is_number_sloc0_1_0
      00221E 80 02            [24]  956 	sjmp	00105$
      002220                        957 00104$:
                                    958 ;	assignBit
      002220 D2 01            [12]  959 	setb	_is_number_sloc0_1_0
      002222                        960 00105$:
      002222 A2 01            [12]  961 	mov	c,_is_number_sloc0_1_0
      002224 E4               [12]  962 	clr	a
      002225 33               [12]  963 	rlc	a
      002226 F5 82            [12]  964 	mov	dpl,a
                                    965 ;	src/main.c:107: }
      002228 22               [24]  966 	ret
                                    967 ;------------------------------------------------------------
                                    968 ;Allocation info for local variables in function 'initialize_buffers'
                                    969 ;------------------------------------------------------------
                                    970 ;sloc0                     Allocated with name '_initialize_buffers_sloc0_1_0'
                                    971 ;sloc1                     Allocated with name '_initialize_buffers_sloc1_1_0'
                                    972 ;sloc2                     Allocated with name '_initialize_buffers_sloc2_1_0'
                                    973 ;sloc3                     Allocated with name '_initialize_buffers_sloc3_1_0'
                                    974 ;sloc4                     Allocated with name '_initialize_buffers_sloc4_1_0'
                                    975 ;sloc5                     Allocated with name '_initialize_buffers_sloc5_1_0'
                                    976 ;student_number            Allocated with name '_initialize_buffers_student_number_65537_93'
                                    977 ;max_user_input            Allocated with name '_initialize_buffers_max_user_input_65538_98'
                                    978 ;user_buffer_size          Allocated with name '_initialize_buffers_user_buffer_size_65538_98'
                                    979 ;i                         Allocated with name '_initialize_buffers_i_196610_100'
                                    980 ;i                         Allocated with name '_initialize_buffers_i_196610_104'
                                    981 ;new_buffer                Allocated with name '_initialize_buffers_new_buffer_262146_105'
                                    982 ;buffer_4                  Allocated with name '_initialize_buffers_buffer_4_131075_108'
                                    983 ;buffer_5                  Allocated with name '_initialize_buffers_buffer_5_131076_111'
                                    984 ;total_heap_sz             Allocated with name '_initialize_buffers_total_heap_sz_65539_114'
                                    985 ;i                         Allocated with name '_initialize_buffers_i_65539_114'
                                    986 ;curr                      Allocated with name '_initialize_buffers_curr_65540_118'
                                    987 ;------------------------------------------------------------
                                    988 ;	src/main.c:112: void initialize_buffers()
                                    989 ;	-----------------------------------------
                                    990 ;	 function initialize_buffers
                                    991 ;	-----------------------------------------
      002229                        992 _initialize_buffers:
                                    993 ;	src/main.c:114: dynamic_buffers_list.head = NULL;
      002229 90 20 D3         [24]  994 	mov	dptr,#_dynamic_buffers_list
      00222C E4               [12]  995 	clr	a
      00222D F0               [24]  996 	movx	@dptr,a
      00222E A3               [24]  997 	inc	dptr
      00222F F0               [24]  998 	movx	@dptr,a
      002230 A3               [24]  999 	inc	dptr
      002231 F0               [24] 1000 	movx	@dptr,a
                                   1001 ;	src/main.c:116: while (true) 
      002232                       1002 00110$:
                                   1003 ;	src/main.c:118: printf("\r\nPlease enter the last two digits of your ID:");
      002232 74 B8            [12] 1004 	mov	a,#___str_0
      002234 C0 E0            [24] 1005 	push	acc
      002236 74 4F            [12] 1006 	mov	a,#(___str_0 >> 8)
      002238 C0 E0            [24] 1007 	push	acc
      00223A 74 80            [12] 1008 	mov	a,#0x80
      00223C C0 E0            [24] 1009 	push	acc
      00223E 12 45 70         [24] 1010 	lcall	_printf
      002241 15 81            [12] 1011 	dec	sp
      002243 15 81            [12] 1012 	dec	sp
      002245 15 81            [12] 1013 	dec	sp
                                   1014 ;	src/main.c:119: get_string();
      002247 12 39 C3         [24] 1015 	lcall	_get_string
                                   1016 ;	src/main.c:120: if (strlen(get_input_buffer()) != TWO_DIGIT_LEN 
      00224A 12 39 BC         [24] 1017 	lcall	_get_input_buffer
      00224D 12 4F 84         [24] 1018 	lcall	_strlen
      002250 AE 82            [24] 1019 	mov	r6,dpl
      002252 AF 83            [24] 1020 	mov	r7,dph
      002254 BE 02 32         [24] 1021 	cjne	r6,#0x02,00101$
      002257 BF 00 2F         [24] 1022 	cjne	r7,#0x00,00101$
                                   1023 ;	src/main.c:121: || !is_number(*get_input_buffer())
      00225A 12 39 BC         [24] 1024 	lcall	_get_input_buffer
      00225D 12 4F 9C         [24] 1025 	lcall	__gptrget
      002260 F5 82            [12] 1026 	mov	dpl,a
      002262 12 22 06         [24] 1027 	lcall	_is_number
      002265 E5 82            [12] 1028 	mov	a,dpl
      002267 60 20            [24] 1029 	jz	00101$
                                   1030 ;	src/main.c:122: || !is_number(*(get_input_buffer()+1)))
      002269 12 39 BC         [24] 1031 	lcall	_get_input_buffer
      00226C AD 82            [24] 1032 	mov	r5,dpl
      00226E AE 83            [24] 1033 	mov	r6,dph
      002270 AF F0            [24] 1034 	mov	r7,b
      002272 0D               [12] 1035 	inc	r5
      002273 BD 00 01         [24] 1036 	cjne	r5,#0x00,00229$
      002276 0E               [12] 1037 	inc	r6
      002277                       1038 00229$:
      002277 8D 82            [24] 1039 	mov	dpl,r5
      002279 8E 83            [24] 1040 	mov	dph,r6
      00227B 8F F0            [24] 1041 	mov	b,r7
      00227D 12 4F 9C         [24] 1042 	lcall	__gptrget
      002280 F5 82            [12] 1043 	mov	dpl,a
      002282 12 22 06         [24] 1044 	lcall	_is_number
      002285 E5 82            [12] 1045 	mov	a,dpl
      002287 70 17            [24] 1046 	jnz	00102$
      002289                       1047 00101$:
                                   1048 ;	src/main.c:124: printf("\r\n Did not enter valid two digit number, please try again");
      002289 74 E7            [12] 1049 	mov	a,#___str_1
      00228B C0 E0            [24] 1050 	push	acc
      00228D 74 4F            [12] 1051 	mov	a,#(___str_1 >> 8)
      00228F C0 E0            [24] 1052 	push	acc
      002291 74 80            [12] 1053 	mov	a,#0x80
      002293 C0 E0            [24] 1054 	push	acc
      002295 12 45 70         [24] 1055 	lcall	_printf
      002298 15 81            [12] 1056 	dec	sp
      00229A 15 81            [12] 1057 	dec	sp
      00229C 15 81            [12] 1058 	dec	sp
                                   1059 ;	src/main.c:125: continue;
      00229E 80 92            [24] 1060 	sjmp	00110$
      0022A0                       1061 00102$:
                                   1062 ;	src/main.c:127: student_number = atoi(get_input_buffer());
      0022A0 12 39 BC         [24] 1063 	lcall	_get_input_buffer
      0022A3 12 42 1E         [24] 1064 	lcall	_atoi
      0022A6 85 82 25         [24] 1065 	mov	_initialize_buffers_sloc2_1_0,dpl
                                   1066 ;	src/main.c:128: if (!(student_number < 0 || student_number > MAX_STUDENT_NUMBER))
      0022A9 E5 83            [12] 1067 	mov	a,dph
      0022AB F5 26            [12] 1068 	mov	(_initialize_buffers_sloc2_1_0 + 1),a
      0022AD 20 E7 11         [24] 1069 	jb	acc.7,00106$
      0022B0 C3               [12] 1070 	clr	c
      0022B1 74 63            [12] 1071 	mov	a,#0x63
      0022B3 95 25            [12] 1072 	subb	a,_initialize_buffers_sloc2_1_0
      0022B5 74 80            [12] 1073 	mov	a,#(0x00 ^ 0x80)
      0022B7 85 26 F0         [24] 1074 	mov	b,(_initialize_buffers_sloc2_1_0 + 1)
      0022BA 63 F0 80         [24] 1075 	xrl	b,#0x80
      0022BD 95 F0            [12] 1076 	subb	a,b
      0022BF 50 18            [24] 1077 	jnc	00111$
                                   1078 ;	src/main.c:130: break;
      0022C1                       1079 00106$:
                                   1080 ;	src/main.c:134: printf("\r\nAtoi error: number invalid or out of range, please try again");
      0022C1 74 21            [12] 1081 	mov	a,#___str_2
      0022C3 C0 E0            [24] 1082 	push	acc
      0022C5 74 50            [12] 1083 	mov	a,#(___str_2 >> 8)
      0022C7 C0 E0            [24] 1084 	push	acc
      0022C9 74 80            [12] 1085 	mov	a,#0x80
      0022CB C0 E0            [24] 1086 	push	acc
      0022CD 12 45 70         [24] 1087 	lcall	_printf
      0022D0 15 81            [12] 1088 	dec	sp
      0022D2 15 81            [12] 1089 	dec	sp
      0022D4 15 81            [12] 1090 	dec	sp
      0022D6 02 22 32         [24] 1091 	ljmp	00110$
      0022D9                       1092 00111$:
                                   1093 ;	src/main.c:138: size_t max_user_input = USER_BUFFER_MAX;
      0022D9 90 00 1E         [24] 1094 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      0022DC E4               [12] 1095 	clr	a
      0022DD F0               [24] 1096 	movx	@dptr,a
      0022DE 74 04            [12] 1097 	mov	a,#0x04
      0022E0 A3               [24] 1098 	inc	dptr
      0022E1 F0               [24] 1099 	movx	@dptr,a
                                   1100 ;	src/main.c:142: memset(static_buffers, 0, BUFFER_ALWAYS_HELD_COUNT * sizeof(buffer_t));
      0022E2 90 20 88         [24] 1101 	mov	dptr,#_memset_PARM_2
      0022E5 E4               [12] 1102 	clr	a
      0022E6 F0               [24] 1103 	movx	@dptr,a
      0022E7 90 20 89         [24] 1104 	mov	dptr,#_memset_PARM_3
      0022EA 74 16            [12] 1105 	mov	a,#0x16
      0022EC F0               [24] 1106 	movx	@dptr,a
      0022ED E4               [12] 1107 	clr	a
      0022EE A3               [24] 1108 	inc	dptr
      0022EF F0               [24] 1109 	movx	@dptr,a
      0022F0 90 00 01         [24] 1110 	mov	dptr,#_static_buffers
      0022F3 75 F0 00         [24] 1111 	mov	b,#0x00
      0022F6 12 41 F6         [24] 1112 	lcall	_memset
                                   1113 ;	src/main.c:143: while(true)
      0022F9 90 20 9A         [24] 1114 	mov	dptr,#__mulint_PARM_2
      0022FC 74 02            [12] 1115 	mov	a,#0x02
      0022FE 25 25            [12] 1116 	add	a,_initialize_buffers_sloc2_1_0
      002300 F0               [24] 1117 	movx	@dptr,a
      002301 E4               [12] 1118 	clr	a
      002302 35 26            [12] 1119 	addc	a,(_initialize_buffers_sloc2_1_0 + 1)
      002304 A3               [24] 1120 	inc	dptr
      002305 F0               [24] 1121 	movx	@dptr,a
      002306 90 00 0A         [24] 1122 	mov	dptr,#0x000a
      002309 12 45 02         [24] 1123 	lcall	__mulint
      00230C AC 82            [24] 1124 	mov	r4,dpl
      00230E AD 83            [24] 1125 	mov	r5,dph
      002310                       1126 00128$:
                                   1127 ;	src/main.c:145: user_buffer_size = get_user_buffer_sz(max_user_input);
      002310 90 00 1E         [24] 1128 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      002313 E0               [24] 1129 	movx	a,@dptr
      002314 FA               [12] 1130 	mov	r2,a
      002315 A3               [24] 1131 	inc	dptr
      002316 E0               [24] 1132 	movx	a,@dptr
      002317 FB               [12] 1133 	mov	r3,a
      002318 8A 82            [24] 1134 	mov	dpl,r2
      00231A 8B 83            [24] 1135 	mov	dph,r3
      00231C C0 05            [24] 1136 	push	ar5
      00231E C0 04            [24] 1137 	push	ar4
      002320 12 2B FD         [24] 1138 	lcall	_get_user_buffer_sz
      002323 AA 82            [24] 1139 	mov	r2,dpl
      002325 AB 83            [24] 1140 	mov	r3,dph
      002327 D0 04            [24] 1141 	pop	ar4
      002329 D0 05            [24] 1142 	pop	ar5
                                   1143 ;	src/main.c:146: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00232B 78 00            [12] 1144 	mov	r0,#0x00
      00232D 79 00            [12] 1145 	mov	r1,#0x00
      00232F                       1146 00139$:
      00232F C3               [12] 1147 	clr	c
      002330 E8               [12] 1148 	mov	a,r0
      002331 94 02            [12] 1149 	subb	a,#0x02
      002333 E9               [12] 1150 	mov	a,r1
      002334 64 80            [12] 1151 	xrl	a,#0x80
      002336 94 80            [12] 1152 	subb	a,#0x80
      002338 40 03            [24] 1153 	jc	00233$
      00233A 02 24 34         [24] 1154 	ljmp	00158$
      00233D                       1155 00233$:
                                   1156 ;	src/main.c:149: static_buffers[i].buffer = malloc(user_buffer_size);
      00233D C0 04            [24] 1157 	push	ar4
      00233F C0 05            [24] 1158 	push	ar5
      002341 90 20 9A         [24] 1159 	mov	dptr,#__mulint_PARM_2
      002344 E8               [12] 1160 	mov	a,r0
      002345 F0               [24] 1161 	movx	@dptr,a
      002346 E9               [12] 1162 	mov	a,r1
      002347 A3               [24] 1163 	inc	dptr
      002348 F0               [24] 1164 	movx	@dptr,a
      002349 90 00 0B         [24] 1165 	mov	dptr,#0x000b
      00234C C0 05            [24] 1166 	push	ar5
      00234E C0 04            [24] 1167 	push	ar4
      002350 C0 03            [24] 1168 	push	ar3
      002352 C0 02            [24] 1169 	push	ar2
      002354 C0 01            [24] 1170 	push	ar1
      002356 C0 00            [24] 1171 	push	ar0
      002358 12 45 02         [24] 1172 	lcall	__mulint
      00235B 85 82 21         [24] 1173 	mov	_initialize_buffers_sloc0_1_0,dpl
      00235E 85 83 22         [24] 1174 	mov	(_initialize_buffers_sloc0_1_0 + 1),dph
      002361 D0 00            [24] 1175 	pop	ar0
      002363 D0 01            [24] 1176 	pop	ar1
      002365 D0 02            [24] 1177 	pop	ar2
      002367 D0 03            [24] 1178 	pop	ar3
      002369 D0 04            [24] 1179 	pop	ar4
      00236B D0 05            [24] 1180 	pop	ar5
      00236D E5 21            [12] 1181 	mov	a,_initialize_buffers_sloc0_1_0
      00236F 24 01            [12] 1182 	add	a,#_static_buffers
      002371 F5 23            [12] 1183 	mov	_initialize_buffers_sloc1_1_0,a
      002373 E5 22            [12] 1184 	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
      002375 34 00            [12] 1185 	addc	a,#(_static_buffers >> 8)
      002377 F5 24            [12] 1186 	mov	(_initialize_buffers_sloc1_1_0 + 1),a
      002379 8A 82            [24] 1187 	mov	dpl,r2
      00237B 8B 83            [24] 1188 	mov	dph,r3
      00237D C0 03            [24] 1189 	push	ar3
      00237F C0 02            [24] 1190 	push	ar2
      002381 C0 01            [24] 1191 	push	ar1
      002383 C0 00            [24] 1192 	push	ar0
      002385 12 43 99         [24] 1193 	lcall	_malloc
      002388 AC 82            [24] 1194 	mov	r4,dpl
      00238A AD 83            [24] 1195 	mov	r5,dph
      00238C D0 00            [24] 1196 	pop	ar0
      00238E D0 01            [24] 1197 	pop	ar1
      002390 D0 02            [24] 1198 	pop	ar2
      002392 D0 03            [24] 1199 	pop	ar3
      002394 85 23 82         [24] 1200 	mov	dpl,_initialize_buffers_sloc1_1_0
      002397 85 24 83         [24] 1201 	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
      00239A EC               [12] 1202 	mov	a,r4
      00239B F0               [24] 1203 	movx	@dptr,a
      00239C ED               [12] 1204 	mov	a,r5
      00239D A3               [24] 1205 	inc	dptr
      00239E F0               [24] 1206 	movx	@dptr,a
                                   1207 ;	src/main.c:150: if(static_buffers[i].buffer == NULL)
      00239F EC               [12] 1208 	mov	a,r4
      0023A0 4D               [12] 1209 	orl	a,r5
      0023A1 D0 05            [24] 1210 	pop	ar5
      0023A3 D0 04            [24] 1211 	pop	ar4
      0023A5 70 43            [24] 1212 	jnz	00113$
                                   1213 ;	src/main.c:152: free_all_buffers();
      0023A7 C0 04            [24] 1214 	push	ar4
      0023A9 C0 05            [24] 1215 	push	ar5
      0023AB C0 05            [24] 1216 	push	ar5
      0023AD C0 04            [24] 1217 	push	ar4
      0023AF C0 03            [24] 1218 	push	ar3
      0023B1 C0 02            [24] 1219 	push	ar2
      0023B3 12 2C B7         [24] 1220 	lcall	_free_all_buffers
                                   1221 ;	src/main.c:153: printf(BUFFER_SZ_TOO_BIG);
      0023B6 74 60            [12] 1222 	mov	a,#___str_3
      0023B8 C0 E0            [24] 1223 	push	acc
      0023BA 74 50            [12] 1224 	mov	a,#(___str_3 >> 8)
      0023BC C0 E0            [24] 1225 	push	acc
      0023BE 74 80            [12] 1226 	mov	a,#0x80
      0023C0 C0 E0            [24] 1227 	push	acc
      0023C2 12 45 70         [24] 1228 	lcall	_printf
      0023C5 15 81            [12] 1229 	dec	sp
      0023C7 15 81            [12] 1230 	dec	sp
      0023C9 15 81            [12] 1231 	dec	sp
      0023CB D0 02            [24] 1232 	pop	ar2
      0023CD D0 03            [24] 1233 	pop	ar3
      0023CF D0 04            [24] 1234 	pop	ar4
      0023D1 D0 05            [24] 1235 	pop	ar5
                                   1236 ;	src/main.c:154: max_user_input = user_buffer_size-1;
      0023D3 EA               [12] 1237 	mov	a,r2
      0023D4 24 FF            [12] 1238 	add	a,#0xff
      0023D6 FC               [12] 1239 	mov	r4,a
      0023D7 EB               [12] 1240 	mov	a,r3
      0023D8 34 FF            [12] 1241 	addc	a,#0xff
      0023DA FD               [12] 1242 	mov	r5,a
      0023DB 90 00 1E         [24] 1243 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      0023DE EC               [12] 1244 	mov	a,r4
      0023DF F0               [24] 1245 	movx	@dptr,a
      0023E0 ED               [12] 1246 	mov	a,r5
      0023E1 A3               [24] 1247 	inc	dptr
      0023E2 F0               [24] 1248 	movx	@dptr,a
                                   1249 ;	src/main.c:155: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
      0023E3 D0 05            [24] 1250 	pop	ar5
      0023E5 D0 04            [24] 1251 	pop	ar4
      0023E7 02 23 10         [24] 1252 	ljmp	00128$
      0023EA                       1253 00113$:
                                   1254 ;	src/main.c:157: static_buffers[i].size = (size_t) user_buffer_size;
      0023EA C0 04            [24] 1255 	push	ar4
      0023EC C0 05            [24] 1256 	push	ar5
      0023EE E5 21            [12] 1257 	mov	a,_initialize_buffers_sloc0_1_0
      0023F0 24 01            [12] 1258 	add	a,#_static_buffers
      0023F2 FC               [12] 1259 	mov	r4,a
      0023F3 E5 22            [12] 1260 	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
      0023F5 34 00            [12] 1261 	addc	a,#(_static_buffers >> 8)
      0023F7 FD               [12] 1262 	mov	r5,a
      0023F8 8C 82            [24] 1263 	mov	dpl,r4
      0023FA 8D 83            [24] 1264 	mov	dph,r5
      0023FC A3               [24] 1265 	inc	dptr
      0023FD A3               [24] 1266 	inc	dptr
      0023FE A3               [24] 1267 	inc	dptr
      0023FF A3               [24] 1268 	inc	dptr
      002400 EA               [12] 1269 	mov	a,r2
      002401 F0               [24] 1270 	movx	@dptr,a
      002402 EB               [12] 1271 	mov	a,r3
      002403 A3               [24] 1272 	inc	dptr
      002404 F0               [24] 1273 	movx	@dptr,a
                                   1274 ;	src/main.c:158: initialize_default_elements(&static_buffers[i]);
      002405 7F 00            [12] 1275 	mov	r7,#0x00
      002407 8C 82            [24] 1276 	mov	dpl,r4
      002409 8D 83            [24] 1277 	mov	dph,r5
      00240B 8F F0            [24] 1278 	mov	b,r7
      00240D C0 05            [24] 1279 	push	ar5
      00240F C0 04            [24] 1280 	push	ar4
      002411 C0 03            [24] 1281 	push	ar3
      002413 C0 02            [24] 1282 	push	ar2
      002415 C0 01            [24] 1283 	push	ar1
      002417 C0 00            [24] 1284 	push	ar0
      002419 12 20 C8         [24] 1285 	lcall	_initialize_default_elements
      00241C D0 00            [24] 1286 	pop	ar0
      00241E D0 01            [24] 1287 	pop	ar1
      002420 D0 02            [24] 1288 	pop	ar2
      002422 D0 03            [24] 1289 	pop	ar3
      002424 D0 04            [24] 1290 	pop	ar4
      002426 D0 05            [24] 1291 	pop	ar5
                                   1292 ;	src/main.c:146: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002428 08               [12] 1293 	inc	r0
      002429 B8 00 01         [24] 1294 	cjne	r0,#0x00,00235$
      00242C 09               [12] 1295 	inc	r1
      00242D                       1296 00235$:
      00242D D0 05            [24] 1297 	pop	ar5
      00242F D0 04            [24] 1298 	pop	ar4
      002431 02 23 2F         [24] 1299 	ljmp	00139$
                                   1300 ;	src/main.c:163: for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
      002434                       1301 00158$:
      002434 7E 00            [12] 1302 	mov	r6,#0x00
      002436 7F 00            [12] 1303 	mov	r7,#0x00
      002438                       1304 00142$:
      002438 C3               [12] 1305 	clr	c
      002439 EE               [12] 1306 	mov	a,r6
      00243A 94 02            [12] 1307 	subb	a,#0x02
      00243C EF               [12] 1308 	mov	a,r7
      00243D 64 80            [12] 1309 	xrl	a,#0x80
      00243F 94 80            [12] 1310 	subb	a,#0x80
      002441 40 03            [24] 1311 	jc	00236$
      002443 02 24 E6         [24] 1312 	ljmp	00119$
      002446                       1313 00236$:
                                   1314 ;	src/main.c:165: buffer_t *new_buffer = alloc_new_buffer(user_buffer_size);
      002446 8A 82            [24] 1315 	mov	dpl,r2
      002448 8B 83            [24] 1316 	mov	dph,r3
      00244A C0 07            [24] 1317 	push	ar7
      00244C C0 06            [24] 1318 	push	ar6
      00244E C0 05            [24] 1319 	push	ar5
      002450 C0 04            [24] 1320 	push	ar4
      002452 C0 03            [24] 1321 	push	ar3
      002454 C0 02            [24] 1322 	push	ar2
      002456 12 21 69         [24] 1323 	lcall	_alloc_new_buffer
      002459 85 82 27         [24] 1324 	mov	_initialize_buffers_sloc3_1_0,dpl
      00245C 85 83 28         [24] 1325 	mov	(_initialize_buffers_sloc3_1_0 + 1),dph
      00245F 85 F0 29         [24] 1326 	mov	(_initialize_buffers_sloc3_1_0 + 2),b
      002462 D0 02            [24] 1327 	pop	ar2
      002464 D0 03            [24] 1328 	pop	ar3
      002466 D0 04            [24] 1329 	pop	ar4
      002468 D0 05            [24] 1330 	pop	ar5
      00246A D0 06            [24] 1331 	pop	ar6
      00246C D0 07            [24] 1332 	pop	ar7
                                   1333 ;	src/main.c:166: if (new_buffer == NULL)
      00246E E5 27            [12] 1334 	mov	a,_initialize_buffers_sloc3_1_0
      002470 45 28            [12] 1335 	orl	a,(_initialize_buffers_sloc3_1_0 + 1)
      002472 70 3B            [24] 1336 	jnz	00117$
                                   1337 ;	src/main.c:168: free_all_buffers();
      002474 C0 05            [24] 1338 	push	ar5
      002476 C0 04            [24] 1339 	push	ar4
      002478 C0 03            [24] 1340 	push	ar3
      00247A C0 02            [24] 1341 	push	ar2
      00247C 12 2C B7         [24] 1342 	lcall	_free_all_buffers
                                   1343 ;	src/main.c:169: printf(BUFFER_SZ_TOO_BIG);
      00247F 74 60            [12] 1344 	mov	a,#___str_3
      002481 C0 E0            [24] 1345 	push	acc
      002483 74 50            [12] 1346 	mov	a,#(___str_3 >> 8)
      002485 C0 E0            [24] 1347 	push	acc
      002487 74 80            [12] 1348 	mov	a,#0x80
      002489 C0 E0            [24] 1349 	push	acc
      00248B 12 45 70         [24] 1350 	lcall	_printf
      00248E 15 81            [12] 1351 	dec	sp
      002490 15 81            [12] 1352 	dec	sp
      002492 15 81            [12] 1353 	dec	sp
      002494 D0 02            [24] 1354 	pop	ar2
      002496 D0 03            [24] 1355 	pop	ar3
      002498 D0 04            [24] 1356 	pop	ar4
      00249A D0 05            [24] 1357 	pop	ar5
                                   1358 ;	src/main.c:170: max_user_input = user_buffer_size-1;
      00249C EA               [12] 1359 	mov	a,r2
      00249D 24 FF            [12] 1360 	add	a,#0xff
      00249F F8               [12] 1361 	mov	r0,a
      0024A0 EB               [12] 1362 	mov	a,r3
      0024A1 34 FF            [12] 1363 	addc	a,#0xff
      0024A3 F9               [12] 1364 	mov	r1,a
      0024A4 90 00 1E         [24] 1365 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      0024A7 E8               [12] 1366 	mov	a,r0
      0024A8 F0               [24] 1367 	movx	@dptr,a
      0024A9 E9               [12] 1368 	mov	a,r1
      0024AA A3               [24] 1369 	inc	dptr
      0024AB F0               [24] 1370 	movx	@dptr,a
                                   1371 ;	src/main.c:171: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
      0024AC 02 23 10         [24] 1372 	ljmp	00128$
      0024AF                       1373 00117$:
                                   1374 ;	src/main.c:175: append_to_buffer_list(&dynamic_buffers_list, new_buffer);
      0024AF 90 20 4A         [24] 1375 	mov	dptr,#_append_to_buffer_list_PARM_2
      0024B2 E5 27            [12] 1376 	mov	a,_initialize_buffers_sloc3_1_0
      0024B4 F0               [24] 1377 	movx	@dptr,a
      0024B5 E5 28            [12] 1378 	mov	a,(_initialize_buffers_sloc3_1_0 + 1)
      0024B7 A3               [24] 1379 	inc	dptr
      0024B8 F0               [24] 1380 	movx	@dptr,a
      0024B9 E5 29            [12] 1381 	mov	a,(_initialize_buffers_sloc3_1_0 + 2)
      0024BB A3               [24] 1382 	inc	dptr
      0024BC F0               [24] 1383 	movx	@dptr,a
      0024BD 90 20 D3         [24] 1384 	mov	dptr,#_dynamic_buffers_list
      0024C0 75 F0 00         [24] 1385 	mov	b,#0x00
      0024C3 C0 07            [24] 1386 	push	ar7
      0024C5 C0 06            [24] 1387 	push	ar6
      0024C7 C0 05            [24] 1388 	push	ar5
      0024C9 C0 04            [24] 1389 	push	ar4
      0024CB C0 03            [24] 1390 	push	ar3
      0024CD C0 02            [24] 1391 	push	ar2
      0024CF 12 3B 2E         [24] 1392 	lcall	_append_to_buffer_list
      0024D2 D0 02            [24] 1393 	pop	ar2
      0024D4 D0 03            [24] 1394 	pop	ar3
      0024D6 D0 04            [24] 1395 	pop	ar4
      0024D8 D0 05            [24] 1396 	pop	ar5
      0024DA D0 06            [24] 1397 	pop	ar6
      0024DC D0 07            [24] 1398 	pop	ar7
                                   1399 ;	src/main.c:163: for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
      0024DE 0E               [12] 1400 	inc	r6
      0024DF BE 00 01         [24] 1401 	cjne	r6,#0x00,00238$
      0024E2 0F               [12] 1402 	inc	r7
      0024E3                       1403 00238$:
      0024E3 02 24 38         [24] 1404 	ljmp	00142$
      0024E6                       1405 00119$:
                                   1406 ;	src/main.c:179: remove_from_buffer_list(&dynamic_buffers_list, 2); 
      0024E6 90 20 53         [24] 1407 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0024E9 74 02            [12] 1408 	mov	a,#0x02
      0024EB F0               [24] 1409 	movx	@dptr,a
      0024EC E4               [12] 1410 	clr	a
      0024ED A3               [24] 1411 	inc	dptr
      0024EE F0               [24] 1412 	movx	@dptr,a
      0024EF 90 20 D3         [24] 1413 	mov	dptr,#_dynamic_buffers_list
      0024F2 75 F0 00         [24] 1414 	mov	b,#0x00
      0024F5 C0 05            [24] 1415 	push	ar5
      0024F7 C0 04            [24] 1416 	push	ar4
      0024F9 C0 03            [24] 1417 	push	ar3
      0024FB C0 02            [24] 1418 	push	ar2
      0024FD 12 3C 14         [24] 1419 	lcall	_remove_from_buffer_list
      002500 D0 02            [24] 1420 	pop	ar2
      002502 D0 03            [24] 1421 	pop	ar3
      002504 D0 04            [24] 1422 	pop	ar4
      002506 D0 05            [24] 1423 	pop	ar5
                                   1424 ;	src/main.c:181: buffer_t *buffer_4 = alloc_new_buffer((size_t) (10 * (student_number + 2)));
      002508 8C 06            [24] 1425 	mov	ar6,r4
      00250A 8D 07            [24] 1426 	mov	ar7,r5
      00250C 8E 82            [24] 1427 	mov	dpl,r6
      00250E 8F 83            [24] 1428 	mov	dph,r7
      002510 C0 05            [24] 1429 	push	ar5
      002512 C0 04            [24] 1430 	push	ar4
      002514 C0 03            [24] 1431 	push	ar3
      002516 C0 02            [24] 1432 	push	ar2
      002518 12 21 69         [24] 1433 	lcall	_alloc_new_buffer
      00251B A9 82            [24] 1434 	mov	r1,dpl
      00251D AE 83            [24] 1435 	mov	r6,dph
      00251F AF F0            [24] 1436 	mov	r7,b
      002521 D0 02            [24] 1437 	pop	ar2
      002523 D0 03            [24] 1438 	pop	ar3
      002525 D0 04            [24] 1439 	pop	ar4
      002527 D0 05            [24] 1440 	pop	ar5
                                   1441 ;	src/main.c:183: if (buffer_4 == NULL)
      002529 E9               [12] 1442 	mov	a,r1
      00252A 4E               [12] 1443 	orl	a,r6
      00252B 70 43            [24] 1444 	jnz	00121$
                                   1445 ;	src/main.c:185: free_all_buffers();
      00252D C0 04            [24] 1446 	push	ar4
      00252F C0 05            [24] 1447 	push	ar5
      002531 C0 05            [24] 1448 	push	ar5
      002533 C0 04            [24] 1449 	push	ar4
      002535 C0 03            [24] 1450 	push	ar3
      002537 C0 02            [24] 1451 	push	ar2
      002539 12 2C B7         [24] 1452 	lcall	_free_all_buffers
                                   1453 ;	src/main.c:186: printf(BUFFER_SZ_TOO_BIG);
      00253C 74 60            [12] 1454 	mov	a,#___str_3
      00253E C0 E0            [24] 1455 	push	acc
      002540 74 50            [12] 1456 	mov	a,#(___str_3 >> 8)
      002542 C0 E0            [24] 1457 	push	acc
      002544 74 80            [12] 1458 	mov	a,#0x80
      002546 C0 E0            [24] 1459 	push	acc
      002548 12 45 70         [24] 1460 	lcall	_printf
      00254B 15 81            [12] 1461 	dec	sp
      00254D 15 81            [12] 1462 	dec	sp
      00254F 15 81            [12] 1463 	dec	sp
      002551 D0 02            [24] 1464 	pop	ar2
      002553 D0 03            [24] 1465 	pop	ar3
      002555 D0 04            [24] 1466 	pop	ar4
      002557 D0 05            [24] 1467 	pop	ar5
                                   1468 ;	src/main.c:187: max_user_input = user_buffer_size-1;
      002559 EA               [12] 1469 	mov	a,r2
      00255A 24 FF            [12] 1470 	add	a,#0xff
      00255C F8               [12] 1471 	mov	r0,a
      00255D EB               [12] 1472 	mov	a,r3
      00255E 34 FF            [12] 1473 	addc	a,#0xff
      002560 FD               [12] 1474 	mov	r5,a
      002561 90 00 1E         [24] 1475 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      002564 E8               [12] 1476 	mov	a,r0
      002565 F0               [24] 1477 	movx	@dptr,a
      002566 ED               [12] 1478 	mov	a,r5
      002567 A3               [24] 1479 	inc	dptr
      002568 F0               [24] 1480 	movx	@dptr,a
                                   1481 ;	src/main.c:188: continue;
      002569 D0 05            [24] 1482 	pop	ar5
      00256B D0 04            [24] 1483 	pop	ar4
      00256D 02 23 10         [24] 1484 	ljmp	00128$
      002570                       1485 00121$:
                                   1486 ;	src/main.c:192: append_to_buffer_list(&dynamic_buffers_list, buffer_4);
      002570 90 20 4A         [24] 1487 	mov	dptr,#_append_to_buffer_list_PARM_2
      002573 E9               [12] 1488 	mov	a,r1
      002574 F0               [24] 1489 	movx	@dptr,a
      002575 EE               [12] 1490 	mov	a,r6
      002576 A3               [24] 1491 	inc	dptr
      002577 F0               [24] 1492 	movx	@dptr,a
      002578 EF               [12] 1493 	mov	a,r7
      002579 A3               [24] 1494 	inc	dptr
      00257A F0               [24] 1495 	movx	@dptr,a
      00257B 90 20 D3         [24] 1496 	mov	dptr,#_dynamic_buffers_list
      00257E 75 F0 00         [24] 1497 	mov	b,#0x00
      002581 C0 05            [24] 1498 	push	ar5
      002583 C0 04            [24] 1499 	push	ar4
      002585 C0 03            [24] 1500 	push	ar3
      002587 C0 02            [24] 1501 	push	ar2
      002589 12 3B 2E         [24] 1502 	lcall	_append_to_buffer_list
      00258C D0 02            [24] 1503 	pop	ar2
      00258E D0 03            [24] 1504 	pop	ar3
                                   1505 ;	src/main.c:195: buffer_t *buffer_5 = alloc_new_buffer((size_t) 2 * user_buffer_size);
      002590 EA               [12] 1506 	mov	a,r2
      002591 2A               [12] 1507 	add	a,r2
      002592 FE               [12] 1508 	mov	r6,a
      002593 EB               [12] 1509 	mov	a,r3
      002594 33               [12] 1510 	rlc	a
      002595 FF               [12] 1511 	mov	r7,a
      002596 8E 82            [24] 1512 	mov	dpl,r6
      002598 8F 83            [24] 1513 	mov	dph,r7
      00259A C0 03            [24] 1514 	push	ar3
      00259C C0 02            [24] 1515 	push	ar2
      00259E 12 21 69         [24] 1516 	lcall	_alloc_new_buffer
      0025A1 A9 82            [24] 1517 	mov	r1,dpl
      0025A3 AE 83            [24] 1518 	mov	r6,dph
      0025A5 AF F0            [24] 1519 	mov	r7,b
      0025A7 D0 02            [24] 1520 	pop	ar2
      0025A9 D0 03            [24] 1521 	pop	ar3
      0025AB D0 04            [24] 1522 	pop	ar4
      0025AD D0 05            [24] 1523 	pop	ar5
                                   1524 ;	src/main.c:196: if (buffer_5 == NULL)
      0025AF E9               [12] 1525 	mov	a,r1
      0025B0 4E               [12] 1526 	orl	a,r6
      0025B1 70 43            [24] 1527 	jnz	00124$
                                   1528 ;	src/main.c:198: free_all_buffers();
      0025B3 C0 04            [24] 1529 	push	ar4
      0025B5 C0 05            [24] 1530 	push	ar5
      0025B7 C0 05            [24] 1531 	push	ar5
      0025B9 C0 04            [24] 1532 	push	ar4
      0025BB C0 03            [24] 1533 	push	ar3
      0025BD C0 02            [24] 1534 	push	ar2
      0025BF 12 2C B7         [24] 1535 	lcall	_free_all_buffers
                                   1536 ;	src/main.c:199: printf(BUFFER_SZ_TOO_BIG);
      0025C2 74 60            [12] 1537 	mov	a,#___str_3
      0025C4 C0 E0            [24] 1538 	push	acc
      0025C6 74 50            [12] 1539 	mov	a,#(___str_3 >> 8)
      0025C8 C0 E0            [24] 1540 	push	acc
      0025CA 74 80            [12] 1541 	mov	a,#0x80
      0025CC C0 E0            [24] 1542 	push	acc
      0025CE 12 45 70         [24] 1543 	lcall	_printf
      0025D1 15 81            [12] 1544 	dec	sp
      0025D3 15 81            [12] 1545 	dec	sp
      0025D5 15 81            [12] 1546 	dec	sp
      0025D7 D0 02            [24] 1547 	pop	ar2
      0025D9 D0 03            [24] 1548 	pop	ar3
      0025DB D0 04            [24] 1549 	pop	ar4
      0025DD D0 05            [24] 1550 	pop	ar5
                                   1551 ;	src/main.c:200: max_user_input = user_buffer_size-1;
      0025DF EA               [12] 1552 	mov	a,r2
      0025E0 24 FF            [12] 1553 	add	a,#0xff
      0025E2 F8               [12] 1554 	mov	r0,a
      0025E3 EB               [12] 1555 	mov	a,r3
      0025E4 34 FF            [12] 1556 	addc	a,#0xff
      0025E6 FD               [12] 1557 	mov	r5,a
      0025E7 90 00 1E         [24] 1558 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      0025EA E8               [12] 1559 	mov	a,r0
      0025EB F0               [24] 1560 	movx	@dptr,a
      0025EC ED               [12] 1561 	mov	a,r5
      0025ED A3               [24] 1562 	inc	dptr
      0025EE F0               [24] 1563 	movx	@dptr,a
                                   1564 ;	src/main.c:201: continue;
      0025EF D0 05            [24] 1565 	pop	ar5
      0025F1 D0 04            [24] 1566 	pop	ar4
      0025F3 02 23 10         [24] 1567 	ljmp	00128$
      0025F6                       1568 00124$:
                                   1569 ;	src/main.c:205: append_to_buffer_list(&dynamic_buffers_list, buffer_5); 
      0025F6 90 20 4A         [24] 1570 	mov	dptr,#_append_to_buffer_list_PARM_2
      0025F9 E9               [12] 1571 	mov	a,r1
      0025FA F0               [24] 1572 	movx	@dptr,a
      0025FB EE               [12] 1573 	mov	a,r6
      0025FC A3               [24] 1574 	inc	dptr
      0025FD F0               [24] 1575 	movx	@dptr,a
      0025FE EF               [12] 1576 	mov	a,r7
      0025FF A3               [24] 1577 	inc	dptr
      002600 F0               [24] 1578 	movx	@dptr,a
      002601 90 20 D3         [24] 1579 	mov	dptr,#_dynamic_buffers_list
      002604 75 F0 00         [24] 1580 	mov	b,#0x00
      002607 C0 03            [24] 1581 	push	ar3
      002609 C0 02            [24] 1582 	push	ar2
      00260B 12 3B 2E         [24] 1583 	lcall	_append_to_buffer_list
                                   1584 ;	src/main.c:211: printf("\r\nstudent_number: %d", student_number);
      00260E C0 25            [24] 1585 	push	_initialize_buffers_sloc2_1_0
      002610 C0 26            [24] 1586 	push	(_initialize_buffers_sloc2_1_0 + 1)
      002612 74 99            [12] 1587 	mov	a,#___str_4
      002614 C0 E0            [24] 1588 	push	acc
      002616 74 50            [12] 1589 	mov	a,#(___str_4 >> 8)
      002618 C0 E0            [24] 1590 	push	acc
      00261A 74 80            [12] 1591 	mov	a,#0x80
      00261C C0 E0            [24] 1592 	push	acc
      00261E 12 45 70         [24] 1593 	lcall	_printf
      002621 E5 81            [12] 1594 	mov	a,sp
      002623 24 FB            [12] 1595 	add	a,#0xfb
      002625 F5 81            [12] 1596 	mov	sp,a
      002627 D0 02            [24] 1597 	pop	ar2
      002629 D0 03            [24] 1598 	pop	ar3
                                   1599 ;	src/main.c:212: printf("\r\nuser_buffer_size: %zu", user_buffer_size);
      00262B C0 02            [24] 1600 	push	ar2
      00262D C0 03            [24] 1601 	push	ar3
      00262F 74 AE            [12] 1602 	mov	a,#___str_5
      002631 C0 E0            [24] 1603 	push	acc
      002633 74 50            [12] 1604 	mov	a,#(___str_5 >> 8)
      002635 C0 E0            [24] 1605 	push	acc
      002637 74 80            [12] 1606 	mov	a,#0x80
      002639 C0 E0            [24] 1607 	push	acc
      00263B 12 45 70         [24] 1608 	lcall	_printf
      00263E E5 81            [12] 1609 	mov	a,sp
      002640 24 FB            [12] 1610 	add	a,#0xfb
      002642 F5 81            [12] 1611 	mov	sp,a
                                   1612 ;	src/main.c:214: size_t total_heap_sz = 0;
      002644 90 00 20         [24] 1613 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      002647 E4               [12] 1614 	clr	a
      002648 F0               [24] 1615 	movx	@dptr,a
      002649 A3               [24] 1616 	inc	dptr
      00264A F0               [24] 1617 	movx	@dptr,a
                                   1618 ;	src/main.c:216: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00264B 7E 00            [12] 1619 	mov	r6,#0x00
      00264D 7F 00            [12] 1620 	mov	r7,#0x00
      00264F                       1621 00144$:
                                   1622 ;	src/main.c:218: if(static_buffers[i].buffer != NULL) {
      00264F 90 20 9A         [24] 1623 	mov	dptr,#__mulint_PARM_2
      002652 EE               [12] 1624 	mov	a,r6
      002653 F0               [24] 1625 	movx	@dptr,a
      002654 EF               [12] 1626 	mov	a,r7
      002655 A3               [24] 1627 	inc	dptr
      002656 F0               [24] 1628 	movx	@dptr,a
      002657 90 00 0B         [24] 1629 	mov	dptr,#0x000b
      00265A C0 07            [24] 1630 	push	ar7
      00265C C0 06            [24] 1631 	push	ar6
      00265E 12 45 02         [24] 1632 	lcall	__mulint
      002661 AC 82            [24] 1633 	mov	r4,dpl
      002663 AD 83            [24] 1634 	mov	r5,dph
      002665 D0 06            [24] 1635 	pop	ar6
      002667 D0 07            [24] 1636 	pop	ar7
      002669 EC               [12] 1637 	mov	a,r4
      00266A 24 01            [12] 1638 	add	a,#_static_buffers
      00266C F5 82            [12] 1639 	mov	dpl,a
      00266E ED               [12] 1640 	mov	a,r5
      00266F 34 00            [12] 1641 	addc	a,#(_static_buffers >> 8)
      002671 F5 83            [12] 1642 	mov	dph,a
      002673 E0               [24] 1643 	movx	a,@dptr
      002674 FA               [12] 1644 	mov	r2,a
      002675 A3               [24] 1645 	inc	dptr
      002676 E0               [24] 1646 	movx	a,@dptr
      002677 FB               [12] 1647 	mov	r3,a
      002678 4A               [12] 1648 	orl	a,r2
      002679 70 03            [24] 1649 	jnz	00241$
      00267B 02 27 0E         [24] 1650 	ljmp	00145$
      00267E                       1651 00241$:
                                   1652 ;	src/main.c:219: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, static_buffers[i].buffer, static_buffers[i].buffer + static_buffers[i].size, static_buffers[i].size);
      00267E EC               [12] 1653 	mov	a,r4
      00267F 24 01            [12] 1654 	add	a,#_static_buffers
      002681 FC               [12] 1655 	mov	r4,a
      002682 ED               [12] 1656 	mov	a,r5
      002683 34 00            [12] 1657 	addc	a,#(_static_buffers >> 8)
      002685 FD               [12] 1658 	mov	r5,a
      002686 74 04            [12] 1659 	mov	a,#0x04
      002688 2C               [12] 1660 	add	a,r4
      002689 FA               [12] 1661 	mov	r2,a
      00268A E4               [12] 1662 	clr	a
      00268B 3D               [12] 1663 	addc	a,r5
      00268C FB               [12] 1664 	mov	r3,a
      00268D 8A 82            [24] 1665 	mov	dpl,r2
      00268F 8B 83            [24] 1666 	mov	dph,r3
      002691 E0               [24] 1667 	movx	a,@dptr
      002692 F5 25            [12] 1668 	mov	_initialize_buffers_sloc2_1_0,a
      002694 A3               [24] 1669 	inc	dptr
      002695 E0               [24] 1670 	movx	a,@dptr
      002696 F5 26            [12] 1671 	mov	(_initialize_buffers_sloc2_1_0 + 1),a
      002698 8C 82            [24] 1672 	mov	dpl,r4
      00269A 8D 83            [24] 1673 	mov	dph,r5
      00269C E0               [24] 1674 	movx	a,@dptr
      00269D F5 27            [12] 1675 	mov	_initialize_buffers_sloc3_1_0,a
      00269F A3               [24] 1676 	inc	dptr
      0026A0 E0               [24] 1677 	movx	a,@dptr
      0026A1 F5 28            [12] 1678 	mov	(_initialize_buffers_sloc3_1_0 + 1),a
      0026A3 E5 25            [12] 1679 	mov	a,_initialize_buffers_sloc2_1_0
      0026A5 25 27            [12] 1680 	add	a,_initialize_buffers_sloc3_1_0
      0026A7 FC               [12] 1681 	mov	r4,a
      0026A8 E5 26            [12] 1682 	mov	a,(_initialize_buffers_sloc2_1_0 + 1)
      0026AA 35 28            [12] 1683 	addc	a,(_initialize_buffers_sloc3_1_0 + 1)
      0026AC FD               [12] 1684 	mov	r5,a
      0026AD 8C 2A            [24] 1685 	mov	_initialize_buffers_sloc4_1_0,r4
      0026AF 8D 2B            [24] 1686 	mov	(_initialize_buffers_sloc4_1_0 + 1),r5
      0026B1 75 2C 00         [24] 1687 	mov	(_initialize_buffers_sloc4_1_0 + 2),#0x00
      0026B4 A8 27            [24] 1688 	mov	r0,_initialize_buffers_sloc3_1_0
      0026B6 AD 28            [24] 1689 	mov	r5,(_initialize_buffers_sloc3_1_0 + 1)
      0026B8 7C 00            [12] 1690 	mov	r4,#0x00
      0026BA C0 07            [24] 1691 	push	ar7
      0026BC C0 06            [24] 1692 	push	ar6
      0026BE C0 03            [24] 1693 	push	ar3
      0026C0 C0 02            [24] 1694 	push	ar2
      0026C2 C0 25            [24] 1695 	push	_initialize_buffers_sloc2_1_0
      0026C4 C0 26            [24] 1696 	push	(_initialize_buffers_sloc2_1_0 + 1)
      0026C6 C0 2A            [24] 1697 	push	_initialize_buffers_sloc4_1_0
      0026C8 C0 2B            [24] 1698 	push	(_initialize_buffers_sloc4_1_0 + 1)
      0026CA C0 2C            [24] 1699 	push	(_initialize_buffers_sloc4_1_0 + 2)
      0026CC C0 00            [24] 1700 	push	ar0
      0026CE C0 05            [24] 1701 	push	ar5
      0026D0 C0 04            [24] 1702 	push	ar4
      0026D2 C0 06            [24] 1703 	push	ar6
      0026D4 C0 07            [24] 1704 	push	ar7
      0026D6 74 C6            [12] 1705 	mov	a,#___str_6
      0026D8 C0 E0            [24] 1706 	push	acc
      0026DA 74 50            [12] 1707 	mov	a,#(___str_6 >> 8)
      0026DC C0 E0            [24] 1708 	push	acc
      0026DE 74 80            [12] 1709 	mov	a,#0x80
      0026E0 C0 E0            [24] 1710 	push	acc
      0026E2 12 45 70         [24] 1711 	lcall	_printf
      0026E5 E5 81            [12] 1712 	mov	a,sp
      0026E7 24 F3            [12] 1713 	add	a,#0xf3
      0026E9 F5 81            [12] 1714 	mov	sp,a
      0026EB D0 02            [24] 1715 	pop	ar2
      0026ED D0 03            [24] 1716 	pop	ar3
      0026EF D0 06            [24] 1717 	pop	ar6
      0026F1 D0 07            [24] 1718 	pop	ar7
                                   1719 ;	src/main.c:220: total_heap_sz += static_buffers[i].size; 
      0026F3 8A 82            [24] 1720 	mov	dpl,r2
      0026F5 8B 83            [24] 1721 	mov	dph,r3
      0026F7 E0               [24] 1722 	movx	a,@dptr
      0026F8 FA               [12] 1723 	mov	r2,a
      0026F9 A3               [24] 1724 	inc	dptr
      0026FA E0               [24] 1725 	movx	a,@dptr
      0026FB FB               [12] 1726 	mov	r3,a
      0026FC 90 00 20         [24] 1727 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      0026FF E0               [24] 1728 	movx	a,@dptr
      002700 FC               [12] 1729 	mov	r4,a
      002701 A3               [24] 1730 	inc	dptr
      002702 E0               [24] 1731 	movx	a,@dptr
      002703 FD               [12] 1732 	mov	r5,a
      002704 90 00 20         [24] 1733 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      002707 EA               [12] 1734 	mov	a,r2
      002708 2C               [12] 1735 	add	a,r4
      002709 F0               [24] 1736 	movx	@dptr,a
      00270A EB               [12] 1737 	mov	a,r3
      00270B 3D               [12] 1738 	addc	a,r5
      00270C A3               [24] 1739 	inc	dptr
      00270D F0               [24] 1740 	movx	@dptr,a
      00270E                       1741 00145$:
                                   1742 ;	src/main.c:216: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00270E 0E               [12] 1743 	inc	r6
      00270F BE 00 01         [24] 1744 	cjne	r6,#0x00,00242$
      002712 0F               [12] 1745 	inc	r7
      002713                       1746 00242$:
      002713 C3               [12] 1747 	clr	c
      002714 EE               [12] 1748 	mov	a,r6
      002715 94 02            [12] 1749 	subb	a,#0x02
      002717 EF               [12] 1750 	mov	a,r7
      002718 64 80            [12] 1751 	xrl	a,#0x80
      00271A 94 80            [12] 1752 	subb	a,#0x80
      00271C 50 03            [24] 1753 	jnc	00243$
      00271E 02 26 4F         [24] 1754 	ljmp	00144$
      002721                       1755 00243$:
                                   1756 ;	src/main.c:224: buffer_t *curr = dynamic_buffers_list.head;
      002721 90 20 D3         [24] 1757 	mov	dptr,#_dynamic_buffers_list
      002724 E0               [24] 1758 	movx	a,@dptr
      002725 FB               [12] 1759 	mov	r3,a
      002726 A3               [24] 1760 	inc	dptr
      002727 E0               [24] 1761 	movx	a,@dptr
      002728 FC               [12] 1762 	mov	r4,a
      002729 A3               [24] 1763 	inc	dptr
      00272A E0               [24] 1764 	movx	a,@dptr
      00272B FD               [12] 1765 	mov	r5,a
      00272C 90 00 22         [24] 1766 	mov	dptr,#_initialize_buffers_curr_65540_118
      00272F EB               [12] 1767 	mov	a,r3
      002730 F0               [24] 1768 	movx	@dptr,a
      002731 EC               [12] 1769 	mov	a,r4
      002732 A3               [24] 1770 	inc	dptr
      002733 F0               [24] 1771 	movx	@dptr,a
      002734 ED               [12] 1772 	mov	a,r5
      002735 A3               [24] 1773 	inc	dptr
      002736 F0               [24] 1774 	movx	@dptr,a
                                   1775 ;	src/main.c:226: while(curr != NULL) {
      002737 8E 2A            [24] 1776 	mov	_initialize_buffers_sloc4_1_0,r6
      002739 8F 2B            [24] 1777 	mov	(_initialize_buffers_sloc4_1_0 + 1),r7
      00273B                       1778 00135$:
      00273B 90 00 22         [24] 1779 	mov	dptr,#_initialize_buffers_curr_65540_118
      00273E E0               [24] 1780 	movx	a,@dptr
      00273F FB               [12] 1781 	mov	r3,a
      002740 A3               [24] 1782 	inc	dptr
      002741 E0               [24] 1783 	movx	a,@dptr
      002742 FC               [12] 1784 	mov	r4,a
      002743 A3               [24] 1785 	inc	dptr
      002744 E0               [24] 1786 	movx	a,@dptr
      002745 FD               [12] 1787 	mov	r5,a
      002746 EB               [12] 1788 	mov	a,r3
      002747 4C               [12] 1789 	orl	a,r4
      002748 70 03            [24] 1790 	jnz	00244$
      00274A 02 28 1D         [24] 1791 	ljmp	00137$
      00274D                       1792 00244$:
                                   1793 ;	src/main.c:227: if(curr->buffer != NULL) {
      00274D 8B 82            [24] 1794 	mov	dpl,r3
      00274F 8C 83            [24] 1795 	mov	dph,r4
      002751 8D F0            [24] 1796 	mov	b,r5
      002753 12 4F 9C         [24] 1797 	lcall	__gptrget
      002756 F9               [12] 1798 	mov	r1,a
      002757 A3               [24] 1799 	inc	dptr
      002758 12 4F 9C         [24] 1800 	lcall	__gptrget
      00275B FA               [12] 1801 	mov	r2,a
      00275C 49               [12] 1802 	orl	a,r1
      00275D 70 03            [24] 1803 	jnz	00245$
      00275F 02 27 E1         [24] 1804 	ljmp	00134$
      002762                       1805 00245$:
                                   1806 ;	src/main.c:228: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, curr->buffer, curr->buffer + curr->size, curr->size);
      002762 74 04            [12] 1807 	mov	a,#0x04
      002764 2B               [12] 1808 	add	a,r3
      002765 FB               [12] 1809 	mov	r3,a
      002766 E4               [12] 1810 	clr	a
      002767 3C               [12] 1811 	addc	a,r4
      002768 FC               [12] 1812 	mov	r4,a
      002769 8B 82            [24] 1813 	mov	dpl,r3
      00276B 8C 83            [24] 1814 	mov	dph,r4
      00276D 8D F0            [24] 1815 	mov	b,r5
      00276F 12 4F 9C         [24] 1816 	lcall	__gptrget
      002772 F5 27            [12] 1817 	mov	_initialize_buffers_sloc3_1_0,a
      002774 A3               [24] 1818 	inc	dptr
      002775 12 4F 9C         [24] 1819 	lcall	__gptrget
      002778 F5 28            [12] 1820 	mov	(_initialize_buffers_sloc3_1_0 + 1),a
      00277A E5 27            [12] 1821 	mov	a,_initialize_buffers_sloc3_1_0
      00277C 29               [12] 1822 	add	a,r1
      00277D FE               [12] 1823 	mov	r6,a
      00277E E5 28            [12] 1824 	mov	a,(_initialize_buffers_sloc3_1_0 + 1)
      002780 3A               [12] 1825 	addc	a,r2
      002781 FF               [12] 1826 	mov	r7,a
      002782 8E 2D            [24] 1827 	mov	_initialize_buffers_sloc5_1_0,r6
      002784 8F 2E            [24] 1828 	mov	(_initialize_buffers_sloc5_1_0 + 1),r7
      002786 75 2F 00         [24] 1829 	mov	(_initialize_buffers_sloc5_1_0 + 2),#0x00
      002789 7F 00            [12] 1830 	mov	r7,#0x00
      00278B C0 05            [24] 1831 	push	ar5
      00278D C0 04            [24] 1832 	push	ar4
      00278F C0 03            [24] 1833 	push	ar3
      002791 C0 27            [24] 1834 	push	_initialize_buffers_sloc3_1_0
      002793 C0 28            [24] 1835 	push	(_initialize_buffers_sloc3_1_0 + 1)
      002795 C0 2D            [24] 1836 	push	_initialize_buffers_sloc5_1_0
      002797 C0 2E            [24] 1837 	push	(_initialize_buffers_sloc5_1_0 + 1)
      002799 C0 2F            [24] 1838 	push	(_initialize_buffers_sloc5_1_0 + 2)
      00279B C0 01            [24] 1839 	push	ar1
      00279D C0 02            [24] 1840 	push	ar2
      00279F C0 07            [24] 1841 	push	ar7
      0027A1 C0 2A            [24] 1842 	push	_initialize_buffers_sloc4_1_0
      0027A3 C0 2B            [24] 1843 	push	(_initialize_buffers_sloc4_1_0 + 1)
      0027A5 74 C6            [12] 1844 	mov	a,#___str_6
      0027A7 C0 E0            [24] 1845 	push	acc
      0027A9 74 50            [12] 1846 	mov	a,#(___str_6 >> 8)
      0027AB C0 E0            [24] 1847 	push	acc
      0027AD 74 80            [12] 1848 	mov	a,#0x80
      0027AF C0 E0            [24] 1849 	push	acc
      0027B1 12 45 70         [24] 1850 	lcall	_printf
      0027B4 E5 81            [12] 1851 	mov	a,sp
      0027B6 24 F3            [12] 1852 	add	a,#0xf3
      0027B8 F5 81            [12] 1853 	mov	sp,a
      0027BA D0 03            [24] 1854 	pop	ar3
      0027BC D0 04            [24] 1855 	pop	ar4
      0027BE D0 05            [24] 1856 	pop	ar5
                                   1857 ;	src/main.c:229: total_heap_sz += curr->size; 
      0027C0 8B 82            [24] 1858 	mov	dpl,r3
      0027C2 8C 83            [24] 1859 	mov	dph,r4
      0027C4 8D F0            [24] 1860 	mov	b,r5
      0027C6 12 4F 9C         [24] 1861 	lcall	__gptrget
      0027C9 FB               [12] 1862 	mov	r3,a
      0027CA A3               [24] 1863 	inc	dptr
      0027CB 12 4F 9C         [24] 1864 	lcall	__gptrget
      0027CE FC               [12] 1865 	mov	r4,a
      0027CF 90 00 20         [24] 1866 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      0027D2 E0               [24] 1867 	movx	a,@dptr
      0027D3 FE               [12] 1868 	mov	r6,a
      0027D4 A3               [24] 1869 	inc	dptr
      0027D5 E0               [24] 1870 	movx	a,@dptr
      0027D6 FF               [12] 1871 	mov	r7,a
      0027D7 90 00 20         [24] 1872 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      0027DA EB               [12] 1873 	mov	a,r3
      0027DB 2E               [12] 1874 	add	a,r6
      0027DC F0               [24] 1875 	movx	@dptr,a
      0027DD EC               [12] 1876 	mov	a,r4
      0027DE 3F               [12] 1877 	addc	a,r7
      0027DF A3               [24] 1878 	inc	dptr
      0027E0 F0               [24] 1879 	movx	@dptr,a
      0027E1                       1880 00134$:
                                   1881 ;	src/main.c:231: i++; 
      0027E1 05 2A            [12] 1882 	inc	_initialize_buffers_sloc4_1_0
      0027E3 E4               [12] 1883 	clr	a
      0027E4 B5 2A 02         [24] 1884 	cjne	a,_initialize_buffers_sloc4_1_0,00246$
      0027E7 05 2B            [12] 1885 	inc	(_initialize_buffers_sloc4_1_0 + 1)
      0027E9                       1886 00246$:
                                   1887 ;	src/main.c:232: curr = curr->next;
      0027E9 90 00 22         [24] 1888 	mov	dptr,#_initialize_buffers_curr_65540_118
      0027EC E0               [24] 1889 	movx	a,@dptr
      0027ED FD               [12] 1890 	mov	r5,a
      0027EE A3               [24] 1891 	inc	dptr
      0027EF E0               [24] 1892 	movx	a,@dptr
      0027F0 FE               [12] 1893 	mov	r6,a
      0027F1 A3               [24] 1894 	inc	dptr
      0027F2 E0               [24] 1895 	movx	a,@dptr
      0027F3 FF               [12] 1896 	mov	r7,a
      0027F4 74 08            [12] 1897 	mov	a,#0x08
      0027F6 2D               [12] 1898 	add	a,r5
      0027F7 FD               [12] 1899 	mov	r5,a
      0027F8 E4               [12] 1900 	clr	a
      0027F9 3E               [12] 1901 	addc	a,r6
      0027FA FE               [12] 1902 	mov	r6,a
      0027FB 8D 82            [24] 1903 	mov	dpl,r5
      0027FD 8E 83            [24] 1904 	mov	dph,r6
      0027FF 8F F0            [24] 1905 	mov	b,r7
      002801 12 4F 9C         [24] 1906 	lcall	__gptrget
      002804 FD               [12] 1907 	mov	r5,a
      002805 A3               [24] 1908 	inc	dptr
      002806 12 4F 9C         [24] 1909 	lcall	__gptrget
      002809 FE               [12] 1910 	mov	r6,a
      00280A A3               [24] 1911 	inc	dptr
      00280B 12 4F 9C         [24] 1912 	lcall	__gptrget
      00280E FF               [12] 1913 	mov	r7,a
      00280F 90 00 22         [24] 1914 	mov	dptr,#_initialize_buffers_curr_65540_118
      002812 ED               [12] 1915 	mov	a,r5
      002813 F0               [24] 1916 	movx	@dptr,a
      002814 EE               [12] 1917 	mov	a,r6
      002815 A3               [24] 1918 	inc	dptr
      002816 F0               [24] 1919 	movx	@dptr,a
      002817 EF               [12] 1920 	mov	a,r7
      002818 A3               [24] 1921 	inc	dptr
      002819 F0               [24] 1922 	movx	@dptr,a
      00281A 02 27 3B         [24] 1923 	ljmp	00135$
      00281D                       1924 00137$:
                                   1925 ;	src/main.c:234: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      00281D 90 00 20         [24] 1926 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      002820 E0               [24] 1927 	movx	a,@dptr
      002821 C0 E0            [24] 1928 	push	acc
      002823 A3               [24] 1929 	inc	dptr
      002824 E0               [24] 1930 	movx	a,@dptr
      002825 C0 E0            [24] 1931 	push	acc
      002827 74 3B            [12] 1932 	mov	a,#(___sdcc_heap + 0x2000)
      002829 C0 E0            [24] 1933 	push	acc
      00282B 74 20            [12] 1934 	mov	a,#((___sdcc_heap + 0x2000) >> 8)
      00282D C0 E0            [24] 1935 	push	acc
      00282F E4               [12] 1936 	clr	a
      002830 C0 E0            [24] 1937 	push	acc
      002832 74 3B            [12] 1938 	mov	a,#___sdcc_heap
      002834 C0 E0            [24] 1939 	push	acc
      002836 74 00            [12] 1940 	mov	a,#(___sdcc_heap >> 8)
      002838 C0 E0            [24] 1941 	push	acc
      00283A E4               [12] 1942 	clr	a
      00283B C0 E0            [24] 1943 	push	acc
      00283D 74 F2            [12] 1944 	mov	a,#___str_7
      00283F C0 E0            [24] 1945 	push	acc
      002841 74 50            [12] 1946 	mov	a,#(___str_7 >> 8)
      002843 C0 E0            [24] 1947 	push	acc
      002845 74 80            [12] 1948 	mov	a,#0x80
      002847 C0 E0            [24] 1949 	push	acc
      002849 12 45 70         [24] 1950 	lcall	_printf
      00284C E5 81            [12] 1951 	mov	a,sp
      00284E 24 F5            [12] 1952 	add	a,#0xf5
      002850 F5 81            [12] 1953 	mov	sp,a
                                   1954 ;	src/main.c:235: reset_char_count();
                                   1955 ;	src/main.c:236: }
      002852 02 3B 26         [24] 1956 	ljmp	_reset_char_count
                                   1957 ;------------------------------------------------------------
                                   1958 ;Allocation info for local variables in function 'store_in_buffer'
                                   1959 ;------------------------------------------------------------
                                   1960 ;sloc0                     Allocated with name '_store_in_buffer_sloc0_1_0'
                                   1961 ;sloc1                     Allocated with name '_store_in_buffer_sloc1_1_0'
                                   1962 ;c                         Allocated with name '_store_in_buffer_PARM_2'
                                   1963 ;buffer                    Allocated with name '_store_in_buffer_buffer_65536_121'
                                   1964 ;------------------------------------------------------------
                                   1965 ;	src/main.c:240: void store_in_buffer(buffer_t *buffer, char c)
                                   1966 ;	-----------------------------------------
                                   1967 ;	 function store_in_buffer
                                   1968 ;	-----------------------------------------
      002855                       1969 _store_in_buffer:
      002855 AF F0            [24] 1970 	mov	r7,b
      002857 AE 83            [24] 1971 	mov	r6,dph
      002859 E5 82            [12] 1972 	mov	a,dpl
      00285B 90 00 26         [24] 1973 	mov	dptr,#_store_in_buffer_buffer_65536_121
      00285E F0               [24] 1974 	movx	@dptr,a
      00285F EE               [12] 1975 	mov	a,r6
      002860 A3               [24] 1976 	inc	dptr
      002861 F0               [24] 1977 	movx	@dptr,a
      002862 EF               [12] 1978 	mov	a,r7
      002863 A3               [24] 1979 	inc	dptr
      002864 F0               [24] 1980 	movx	@dptr,a
                                   1981 ;	src/main.c:242: if (buffer->curr_available_char < buffer->size)
      002865 90 00 26         [24] 1982 	mov	dptr,#_store_in_buffer_buffer_65536_121
      002868 E0               [24] 1983 	movx	a,@dptr
      002869 FD               [12] 1984 	mov	r5,a
      00286A A3               [24] 1985 	inc	dptr
      00286B E0               [24] 1986 	movx	a,@dptr
      00286C FE               [12] 1987 	mov	r6,a
      00286D A3               [24] 1988 	inc	dptr
      00286E E0               [24] 1989 	movx	a,@dptr
      00286F FF               [12] 1990 	mov	r7,a
      002870 74 06            [12] 1991 	mov	a,#0x06
      002872 2D               [12] 1992 	add	a,r5
      002873 F5 32            [12] 1993 	mov	_store_in_buffer_sloc1_1_0,a
      002875 E4               [12] 1994 	clr	a
      002876 3E               [12] 1995 	addc	a,r6
      002877 F5 33            [12] 1996 	mov	(_store_in_buffer_sloc1_1_0 + 1),a
      002879 8F 34            [24] 1997 	mov	(_store_in_buffer_sloc1_1_0 + 2),r7
      00287B 85 32 82         [24] 1998 	mov	dpl,_store_in_buffer_sloc1_1_0
      00287E 85 33 83         [24] 1999 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      002881 85 34 F0         [24] 2000 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      002884 12 4F 9C         [24] 2001 	lcall	__gptrget
      002887 F5 30            [12] 2002 	mov	_store_in_buffer_sloc0_1_0,a
      002889 A3               [24] 2003 	inc	dptr
      00288A 12 4F 9C         [24] 2004 	lcall	__gptrget
      00288D F5 31            [12] 2005 	mov	(_store_in_buffer_sloc0_1_0 + 1),a
      00288F 74 04            [12] 2006 	mov	a,#0x04
      002891 2D               [12] 2007 	add	a,r5
      002892 F8               [12] 2008 	mov	r0,a
      002893 E4               [12] 2009 	clr	a
      002894 3E               [12] 2010 	addc	a,r6
      002895 F9               [12] 2011 	mov	r1,a
      002896 8F 04            [24] 2012 	mov	ar4,r7
      002898 88 82            [24] 2013 	mov	dpl,r0
      00289A 89 83            [24] 2014 	mov	dph,r1
      00289C 8C F0            [24] 2015 	mov	b,r4
      00289E 12 4F 9C         [24] 2016 	lcall	__gptrget
      0028A1 F8               [12] 2017 	mov	r0,a
      0028A2 A3               [24] 2018 	inc	dptr
      0028A3 12 4F 9C         [24] 2019 	lcall	__gptrget
      0028A6 F9               [12] 2020 	mov	r1,a
      0028A7 C3               [12] 2021 	clr	c
      0028A8 E5 30            [12] 2022 	mov	a,_store_in_buffer_sloc0_1_0
      0028AA 98               [12] 2023 	subb	a,r0
      0028AB E5 31            [12] 2024 	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
      0028AD 99               [12] 2025 	subb	a,r1
      0028AE 40 01            [24] 2026 	jc	00115$
      0028B0 22               [24] 2027 	ret
      0028B1                       2028 00115$:
                                   2029 ;	src/main.c:244: buffer->buffer[buffer->curr_available_char] = c;
      0028B1 8D 82            [24] 2030 	mov	dpl,r5
      0028B3 8E 83            [24] 2031 	mov	dph,r6
      0028B5 8F F0            [24] 2032 	mov	b,r7
      0028B7 12 4F 9C         [24] 2033 	lcall	__gptrget
      0028BA FB               [12] 2034 	mov	r3,a
      0028BB A3               [24] 2035 	inc	dptr
      0028BC 12 4F 9C         [24] 2036 	lcall	__gptrget
      0028BF FC               [12] 2037 	mov	r4,a
      0028C0 E5 30            [12] 2038 	mov	a,_store_in_buffer_sloc0_1_0
      0028C2 2B               [12] 2039 	add	a,r3
      0028C3 FB               [12] 2040 	mov	r3,a
      0028C4 E5 31            [12] 2041 	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
      0028C6 3C               [12] 2042 	addc	a,r4
      0028C7 FC               [12] 2043 	mov	r4,a
      0028C8 90 00 25         [24] 2044 	mov	dptr,#_store_in_buffer_PARM_2
      0028CB E0               [24] 2045 	movx	a,@dptr
      0028CC FA               [12] 2046 	mov	r2,a
      0028CD 8B 82            [24] 2047 	mov	dpl,r3
      0028CF 8C 83            [24] 2048 	mov	dph,r4
      0028D1 F0               [24] 2049 	movx	@dptr,a
                                   2050 ;	src/main.c:245: buffer->curr_available_char++;
      0028D2 85 32 82         [24] 2051 	mov	dpl,_store_in_buffer_sloc1_1_0
      0028D5 85 33 83         [24] 2052 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      0028D8 85 34 F0         [24] 2053 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      0028DB 12 4F 9C         [24] 2054 	lcall	__gptrget
      0028DE FC               [12] 2055 	mov	r4,a
      0028DF A3               [24] 2056 	inc	dptr
      0028E0 12 4F 9C         [24] 2057 	lcall	__gptrget
      0028E3 FB               [12] 2058 	mov	r3,a
      0028E4 0C               [12] 2059 	inc	r4
      0028E5 BC 00 01         [24] 2060 	cjne	r4,#0x00,00116$
      0028E8 0B               [12] 2061 	inc	r3
      0028E9                       2062 00116$:
      0028E9 85 32 82         [24] 2063 	mov	dpl,_store_in_buffer_sloc1_1_0
      0028EC 85 33 83         [24] 2064 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      0028EF 85 34 F0         [24] 2065 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      0028F2 EC               [12] 2066 	mov	a,r4
      0028F3 12 43 42         [24] 2067 	lcall	__gptrput
      0028F6 A3               [24] 2068 	inc	dptr
      0028F7 EB               [12] 2069 	mov	a,r3
      0028F8 12 43 42         [24] 2070 	lcall	__gptrput
                                   2071 ;	src/main.c:246: if (is_alphabet_char(c))
      0028FB 8A 82            [24] 2072 	mov	dpl,r2
      0028FD C0 07            [24] 2073 	push	ar7
      0028FF C0 06            [24] 2074 	push	ar6
      002901 C0 05            [24] 2075 	push	ar5
      002903 12 20 94         [24] 2076 	lcall	_is_alphabet_char
      002906 E5 82            [12] 2077 	mov	a,dpl
      002908 D0 05            [24] 2078 	pop	ar5
      00290A D0 06            [24] 2079 	pop	ar6
      00290C D0 07            [24] 2080 	pop	ar7
      00290E 60 2A            [24] 2081 	jz	00105$
                                   2082 ;	src/main.c:248: buffer->alphabet_chars++;
      002910 74 02            [12] 2083 	mov	a,#0x02
      002912 2D               [12] 2084 	add	a,r5
      002913 FD               [12] 2085 	mov	r5,a
      002914 E4               [12] 2086 	clr	a
      002915 3E               [12] 2087 	addc	a,r6
      002916 FE               [12] 2088 	mov	r6,a
      002917 8D 82            [24] 2089 	mov	dpl,r5
      002919 8E 83            [24] 2090 	mov	dph,r6
      00291B 8F F0            [24] 2091 	mov	b,r7
      00291D 12 4F 9C         [24] 2092 	lcall	__gptrget
      002920 FB               [12] 2093 	mov	r3,a
      002921 A3               [24] 2094 	inc	dptr
      002922 12 4F 9C         [24] 2095 	lcall	__gptrget
      002925 FC               [12] 2096 	mov	r4,a
      002926 0B               [12] 2097 	inc	r3
      002927 BB 00 01         [24] 2098 	cjne	r3,#0x00,00118$
      00292A 0C               [12] 2099 	inc	r4
      00292B                       2100 00118$:
      00292B 8D 82            [24] 2101 	mov	dpl,r5
      00292D 8E 83            [24] 2102 	mov	dph,r6
      00292F 8F F0            [24] 2103 	mov	b,r7
      002931 EB               [12] 2104 	mov	a,r3
      002932 12 43 42         [24] 2105 	lcall	__gptrput
      002935 A3               [24] 2106 	inc	dptr
      002936 EC               [12] 2107 	mov	a,r4
                                   2108 ;	src/main.c:251: }
      002937 02 43 42         [24] 2109 	ljmp	__gptrput
      00293A                       2110 00105$:
      00293A 22               [24] 2111 	ret
                                   2112 ;------------------------------------------------------------
                                   2113 ;Allocation info for local variables in function 'print_dashed_line'
                                   2114 ;------------------------------------------------------------
                                   2115 ;	src/main.c:253: static void print_dashed_line()
                                   2116 ;	-----------------------------------------
                                   2117 ;	 function print_dashed_line
                                   2118 ;	-----------------------------------------
      00293B                       2119 _print_dashed_line:
                                   2120 ;	src/main.c:255: printf("\r\n------------------------------------------------");
      00293B 74 1B            [12] 2121 	mov	a,#___str_8
      00293D C0 E0            [24] 2122 	push	acc
      00293F 74 51            [12] 2123 	mov	a,#(___str_8 >> 8)
      002941 C0 E0            [24] 2124 	push	acc
      002943 74 80            [12] 2125 	mov	a,#0x80
      002945 C0 E0            [24] 2126 	push	acc
      002947 12 45 70         [24] 2127 	lcall	_printf
      00294A 15 81            [12] 2128 	dec	sp
      00294C 15 81            [12] 2129 	dec	sp
      00294E 15 81            [12] 2130 	dec	sp
                                   2131 ;	src/main.c:256: }
      002950 22               [24] 2132 	ret
                                   2133 ;------------------------------------------------------------
                                   2134 ;Allocation info for local variables in function 'command_header'
                                   2135 ;------------------------------------------------------------
                                   2136 ;command_string            Allocated with name '_command_header_command_string_65536_126'
                                   2137 ;------------------------------------------------------------
                                   2138 ;	src/main.c:260: void command_header(char *command_string)
                                   2139 ;	-----------------------------------------
                                   2140 ;	 function command_header
                                   2141 ;	-----------------------------------------
      002951                       2142 _command_header:
      002951 AF F0            [24] 2143 	mov	r7,b
      002953 AE 83            [24] 2144 	mov	r6,dph
      002955 E5 82            [12] 2145 	mov	a,dpl
      002957 90 00 29         [24] 2146 	mov	dptr,#_command_header_command_string_65536_126
      00295A F0               [24] 2147 	movx	@dptr,a
      00295B EE               [12] 2148 	mov	a,r6
      00295C A3               [24] 2149 	inc	dptr
      00295D F0               [24] 2150 	movx	@dptr,a
      00295E EF               [12] 2151 	mov	a,r7
      00295F A3               [24] 2152 	inc	dptr
      002960 F0               [24] 2153 	movx	@dptr,a
                                   2154 ;	src/main.c:262: print_dashed_line();
      002961 12 29 3B         [24] 2155 	lcall	_print_dashed_line
                                   2156 ;	src/main.c:263: printf("\r\n%s", command_string);
      002964 90 00 29         [24] 2157 	mov	dptr,#_command_header_command_string_65536_126
      002967 E0               [24] 2158 	movx	a,@dptr
      002968 C0 E0            [24] 2159 	push	acc
      00296A A3               [24] 2160 	inc	dptr
      00296B E0               [24] 2161 	movx	a,@dptr
      00296C C0 E0            [24] 2162 	push	acc
      00296E A3               [24] 2163 	inc	dptr
      00296F E0               [24] 2164 	movx	a,@dptr
      002970 C0 E0            [24] 2165 	push	acc
      002972 74 4E            [12] 2166 	mov	a,#___str_9
      002974 C0 E0            [24] 2167 	push	acc
      002976 74 51            [12] 2168 	mov	a,#(___str_9 >> 8)
      002978 C0 E0            [24] 2169 	push	acc
      00297A 74 80            [12] 2170 	mov	a,#0x80
      00297C C0 E0            [24] 2171 	push	acc
      00297E 12 45 70         [24] 2172 	lcall	_printf
      002981 E5 81            [12] 2173 	mov	a,sp
      002983 24 FA            [12] 2174 	add	a,#0xfa
      002985 F5 81            [12] 2175 	mov	sp,a
                                   2176 ;	src/main.c:264: print_dashed_line();
                                   2177 ;	src/main.c:265: }
      002987 02 29 3B         [24] 2178 	ljmp	_print_dashed_line
                                   2179 ;------------------------------------------------------------
                                   2180 ;Allocation info for local variables in function 'heap_report'
                                   2181 ;------------------------------------------------------------
                                   2182 ;sloc0                     Allocated with name '_heap_report_sloc0_1_0'
                                   2183 ;sloc1                     Allocated with name '_heap_report_sloc1_1_0'
                                   2184 ;sloc2                     Allocated with name '_heap_report_sloc2_1_0'
                                   2185 ;sloc3                     Allocated with name '_heap_report_sloc3_1_0'
                                   2186 ;sloc4                     Allocated with name '_heap_report_sloc4_1_0'
                                   2187 ;sloc5                     Allocated with name '_heap_report_sloc5_1_0'
                                   2188 ;total_heap_sz             Allocated with name '_heap_report_total_heap_sz_65537_129'
                                   2189 ;i                         Allocated with name '_heap_report_i_65537_129'
                                   2190 ;curr                      Allocated with name '_heap_report_curr_65538_133'
                                   2191 ;------------------------------------------------------------
                                   2192 ;	src/main.c:271: void heap_report()
                                   2193 ;	-----------------------------------------
                                   2194 ;	 function heap_report
                                   2195 ;	-----------------------------------------
      00298A                       2196 _heap_report:
                                   2197 ;	src/main.c:273: command_header("Heap Report");
      00298A 90 51 53         [24] 2198 	mov	dptr,#___str_10
      00298D 75 F0 80         [24] 2199 	mov	b,#0x80
      002990 12 29 51         [24] 2200 	lcall	_command_header
                                   2201 ;	src/main.c:274: size_t total_heap_sz = 0;
      002993 90 00 2C         [24] 2202 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002996 E4               [12] 2203 	clr	a
      002997 F0               [24] 2204 	movx	@dptr,a
      002998 A3               [24] 2205 	inc	dptr
      002999 F0               [24] 2206 	movx	@dptr,a
                                   2207 ;	src/main.c:276: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00299A 7E 00            [12] 2208 	mov	r6,#0x00
      00299C 7F 00            [12] 2209 	mov	r7,#0x00
      00299E                       2210 00109$:
                                   2211 ;	src/main.c:278: if(static_buffers[i].buffer != NULL) {
      00299E 90 20 9A         [24] 2212 	mov	dptr,#__mulint_PARM_2
      0029A1 EE               [12] 2213 	mov	a,r6
      0029A2 F0               [24] 2214 	movx	@dptr,a
      0029A3 EF               [12] 2215 	mov	a,r7
      0029A4 A3               [24] 2216 	inc	dptr
      0029A5 F0               [24] 2217 	movx	@dptr,a
      0029A6 90 00 0B         [24] 2218 	mov	dptr,#0x000b
      0029A9 C0 07            [24] 2219 	push	ar7
      0029AB C0 06            [24] 2220 	push	ar6
      0029AD 12 45 02         [24] 2221 	lcall	__mulint
      0029B0 AC 82            [24] 2222 	mov	r4,dpl
      0029B2 AD 83            [24] 2223 	mov	r5,dph
      0029B4 D0 06            [24] 2224 	pop	ar6
      0029B6 D0 07            [24] 2225 	pop	ar7
      0029B8 EC               [12] 2226 	mov	a,r4
      0029B9 24 01            [12] 2227 	add	a,#_static_buffers
      0029BB F5 82            [12] 2228 	mov	dpl,a
      0029BD ED               [12] 2229 	mov	a,r5
      0029BE 34 00            [12] 2230 	addc	a,#(_static_buffers >> 8)
      0029C0 F5 83            [12] 2231 	mov	dph,a
      0029C2 E0               [24] 2232 	movx	a,@dptr
      0029C3 FA               [12] 2233 	mov	r2,a
      0029C4 A3               [24] 2234 	inc	dptr
      0029C5 E0               [24] 2235 	movx	a,@dptr
      0029C6 FB               [12] 2236 	mov	r3,a
      0029C7 4A               [12] 2237 	orl	a,r2
      0029C8 70 03            [24] 2238 	jnz	00139$
      0029CA 02 2A 83         [24] 2239 	ljmp	00110$
      0029CD                       2240 00139$:
                                   2241 ;	src/main.c:285: static_buffers[i].size - static_buffers[i].curr_available_char);
      0029CD EC               [12] 2242 	mov	a,r4
      0029CE 24 01            [12] 2243 	add	a,#_static_buffers
      0029D0 FC               [12] 2244 	mov	r4,a
      0029D1 ED               [12] 2245 	mov	a,r5
      0029D2 34 00            [12] 2246 	addc	a,#(_static_buffers >> 8)
      0029D4 FD               [12] 2247 	mov	r5,a
      0029D5 74 04            [12] 2248 	mov	a,#0x04
      0029D7 2C               [12] 2249 	add	a,r4
      0029D8 F5 35            [12] 2250 	mov	_heap_report_sloc0_1_0,a
      0029DA E4               [12] 2251 	clr	a
      0029DB 3D               [12] 2252 	addc	a,r5
      0029DC F5 36            [12] 2253 	mov	(_heap_report_sloc0_1_0 + 1),a
      0029DE 85 35 82         [24] 2254 	mov	dpl,_heap_report_sloc0_1_0
      0029E1 85 36 83         [24] 2255 	mov	dph,(_heap_report_sloc0_1_0 + 1)
      0029E4 E0               [24] 2256 	movx	a,@dptr
      0029E5 F8               [12] 2257 	mov	r0,a
      0029E6 A3               [24] 2258 	inc	dptr
      0029E7 E0               [24] 2259 	movx	a,@dptr
      0029E8 F9               [12] 2260 	mov	r1,a
      0029E9 74 06            [12] 2261 	mov	a,#0x06
      0029EB 2C               [12] 2262 	add	a,r4
      0029EC F5 82            [12] 2263 	mov	dpl,a
      0029EE E4               [12] 2264 	clr	a
      0029EF 3D               [12] 2265 	addc	a,r5
      0029F0 F5 83            [12] 2266 	mov	dph,a
      0029F2 E0               [24] 2267 	movx	a,@dptr
      0029F3 FA               [12] 2268 	mov	r2,a
      0029F4 A3               [24] 2269 	inc	dptr
      0029F5 E0               [24] 2270 	movx	a,@dptr
      0029F6 FB               [12] 2271 	mov	r3,a
      0029F7 E8               [12] 2272 	mov	a,r0
      0029F8 C3               [12] 2273 	clr	c
      0029F9 9A               [12] 2274 	subb	a,r2
      0029FA F5 37            [12] 2275 	mov	_heap_report_sloc1_1_0,a
      0029FC E9               [12] 2276 	mov	a,r1
      0029FD 9B               [12] 2277 	subb	a,r3
      0029FE F5 38            [12] 2278 	mov	(_heap_report_sloc1_1_0 + 1),a
                                   2279 ;	src/main.c:284: static_buffers[i].alphabet_chars,
      002A00 8C 82            [24] 2280 	mov	dpl,r4
      002A02 8D 83            [24] 2281 	mov	dph,r5
      002A04 A3               [24] 2282 	inc	dptr
      002A05 A3               [24] 2283 	inc	dptr
      002A06 E0               [24] 2284 	movx	a,@dptr
      002A07 F5 39            [12] 2285 	mov	_heap_report_sloc2_1_0,a
      002A09 A3               [24] 2286 	inc	dptr
      002A0A E0               [24] 2287 	movx	a,@dptr
      002A0B F5 3A            [12] 2288 	mov	(_heap_report_sloc2_1_0 + 1),a
                                   2289 ;	src/main.c:282: static_buffers[i].buffer + static_buffers[i].size, 
      002A0D 8C 82            [24] 2290 	mov	dpl,r4
      002A0F 8D 83            [24] 2291 	mov	dph,r5
      002A11 E0               [24] 2292 	movx	a,@dptr
      002A12 F5 3B            [12] 2293 	mov	_heap_report_sloc3_1_0,a
      002A14 A3               [24] 2294 	inc	dptr
      002A15 E0               [24] 2295 	movx	a,@dptr
      002A16 F5 3C            [12] 2296 	mov	(_heap_report_sloc3_1_0 + 1),a
      002A18 E8               [12] 2297 	mov	a,r0
      002A19 25 3B            [12] 2298 	add	a,_heap_report_sloc3_1_0
      002A1B FA               [12] 2299 	mov	r2,a
      002A1C E9               [12] 2300 	mov	a,r1
      002A1D 35 3C            [12] 2301 	addc	a,(_heap_report_sloc3_1_0 + 1)
      002A1F FB               [12] 2302 	mov	r3,a
      002A20 8A 3D            [24] 2303 	mov	_heap_report_sloc4_1_0,r2
      002A22 8B 3E            [24] 2304 	mov	(_heap_report_sloc4_1_0 + 1),r3
      002A24 75 3F 00         [24] 2305 	mov	(_heap_report_sloc4_1_0 + 2),#0x00
                                   2306 ;	src/main.c:281: static_buffers[i].buffer, 
      002A27 AC 3B            [24] 2307 	mov	r4,_heap_report_sloc3_1_0
      002A29 AD 3C            [24] 2308 	mov	r5,(_heap_report_sloc3_1_0 + 1)
      002A2B 7B 00            [12] 2309 	mov	r3,#0x00
                                   2310 ;	src/main.c:279: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
      002A2D C0 07            [24] 2311 	push	ar7
      002A2F C0 06            [24] 2312 	push	ar6
      002A31 C0 37            [24] 2313 	push	_heap_report_sloc1_1_0
      002A33 C0 38            [24] 2314 	push	(_heap_report_sloc1_1_0 + 1)
      002A35 C0 39            [24] 2315 	push	_heap_report_sloc2_1_0
      002A37 C0 3A            [24] 2316 	push	(_heap_report_sloc2_1_0 + 1)
      002A39 C0 00            [24] 2317 	push	ar0
      002A3B C0 01            [24] 2318 	push	ar1
      002A3D C0 3D            [24] 2319 	push	_heap_report_sloc4_1_0
      002A3F C0 3E            [24] 2320 	push	(_heap_report_sloc4_1_0 + 1)
      002A41 C0 3F            [24] 2321 	push	(_heap_report_sloc4_1_0 + 2)
      002A43 C0 04            [24] 2322 	push	ar4
      002A45 C0 05            [24] 2323 	push	ar5
      002A47 C0 03            [24] 2324 	push	ar3
      002A49 C0 06            [24] 2325 	push	ar6
      002A4B C0 07            [24] 2326 	push	ar7
      002A4D 74 5F            [12] 2327 	mov	a,#___str_11
      002A4F C0 E0            [24] 2328 	push	acc
      002A51 74 51            [12] 2329 	mov	a,#(___str_11 >> 8)
      002A53 C0 E0            [24] 2330 	push	acc
      002A55 74 80            [12] 2331 	mov	a,#0x80
      002A57 C0 E0            [24] 2332 	push	acc
      002A59 12 45 70         [24] 2333 	lcall	_printf
      002A5C E5 81            [12] 2334 	mov	a,sp
      002A5E 24 EF            [12] 2335 	add	a,#0xef
      002A60 F5 81            [12] 2336 	mov	sp,a
      002A62 D0 06            [24] 2337 	pop	ar6
      002A64 D0 07            [24] 2338 	pop	ar7
                                   2339 ;	src/main.c:286: total_heap_sz += static_buffers[i].size; 
      002A66 85 35 82         [24] 2340 	mov	dpl,_heap_report_sloc0_1_0
      002A69 85 36 83         [24] 2341 	mov	dph,(_heap_report_sloc0_1_0 + 1)
      002A6C E0               [24] 2342 	movx	a,@dptr
      002A6D FC               [12] 2343 	mov	r4,a
      002A6E A3               [24] 2344 	inc	dptr
      002A6F E0               [24] 2345 	movx	a,@dptr
      002A70 FD               [12] 2346 	mov	r5,a
      002A71 90 00 2C         [24] 2347 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002A74 E0               [24] 2348 	movx	a,@dptr
      002A75 FA               [12] 2349 	mov	r2,a
      002A76 A3               [24] 2350 	inc	dptr
      002A77 E0               [24] 2351 	movx	a,@dptr
      002A78 FB               [12] 2352 	mov	r3,a
      002A79 90 00 2C         [24] 2353 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002A7C EC               [12] 2354 	mov	a,r4
      002A7D 2A               [12] 2355 	add	a,r2
      002A7E F0               [24] 2356 	movx	@dptr,a
      002A7F ED               [12] 2357 	mov	a,r5
      002A80 3B               [12] 2358 	addc	a,r3
      002A81 A3               [24] 2359 	inc	dptr
      002A82 F0               [24] 2360 	movx	@dptr,a
      002A83                       2361 00110$:
                                   2362 ;	src/main.c:276: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002A83 0E               [12] 2363 	inc	r6
      002A84 BE 00 01         [24] 2364 	cjne	r6,#0x00,00140$
      002A87 0F               [12] 2365 	inc	r7
      002A88                       2366 00140$:
      002A88 C3               [12] 2367 	clr	c
      002A89 EE               [12] 2368 	mov	a,r6
      002A8A 94 02            [12] 2369 	subb	a,#0x02
      002A8C EF               [12] 2370 	mov	a,r7
      002A8D 64 80            [12] 2371 	xrl	a,#0x80
      002A8F 94 80            [12] 2372 	subb	a,#0x80
      002A91 50 03            [24] 2373 	jnc	00141$
      002A93 02 29 9E         [24] 2374 	ljmp	00109$
      002A96                       2375 00141$:
                                   2376 ;	src/main.c:290: buffer_t *curr = dynamic_buffers_list.head;
      002A96 90 20 D3         [24] 2377 	mov	dptr,#_dynamic_buffers_list
      002A99 E0               [24] 2378 	movx	a,@dptr
      002A9A FB               [12] 2379 	mov	r3,a
      002A9B A3               [24] 2380 	inc	dptr
      002A9C E0               [24] 2381 	movx	a,@dptr
      002A9D FC               [12] 2382 	mov	r4,a
      002A9E A3               [24] 2383 	inc	dptr
      002A9F E0               [24] 2384 	movx	a,@dptr
      002AA0 FD               [12] 2385 	mov	r5,a
      002AA1 90 00 2E         [24] 2386 	mov	dptr,#_heap_report_curr_65538_133
      002AA4 EB               [12] 2387 	mov	a,r3
      002AA5 F0               [24] 2388 	movx	@dptr,a
      002AA6 EC               [12] 2389 	mov	a,r4
      002AA7 A3               [24] 2390 	inc	dptr
      002AA8 F0               [24] 2391 	movx	@dptr,a
      002AA9 ED               [12] 2392 	mov	a,r5
      002AAA A3               [24] 2393 	inc	dptr
      002AAB F0               [24] 2394 	movx	@dptr,a
                                   2395 ;	src/main.c:291: while(curr != NULL) {
      002AAC 8E 3D            [24] 2396 	mov	_heap_report_sloc4_1_0,r6
      002AAE 8F 3E            [24] 2397 	mov	(_heap_report_sloc4_1_0 + 1),r7
      002AB0                       2398 00106$:
      002AB0 90 00 2E         [24] 2399 	mov	dptr,#_heap_report_curr_65538_133
      002AB3 E0               [24] 2400 	movx	a,@dptr
      002AB4 FB               [12] 2401 	mov	r3,a
      002AB5 A3               [24] 2402 	inc	dptr
      002AB6 E0               [24] 2403 	movx	a,@dptr
      002AB7 FC               [12] 2404 	mov	r4,a
      002AB8 A3               [24] 2405 	inc	dptr
      002AB9 E0               [24] 2406 	movx	a,@dptr
      002ABA FD               [12] 2407 	mov	r5,a
      002ABB EB               [12] 2408 	mov	a,r3
      002ABC 4C               [12] 2409 	orl	a,r4
      002ABD 70 03            [24] 2410 	jnz	00142$
      002ABF 02 2B B2         [24] 2411 	ljmp	00108$
      002AC2                       2412 00142$:
                                   2413 ;	src/main.c:292: if(curr->buffer != NULL) {
      002AC2 8B 82            [24] 2414 	mov	dpl,r3
      002AC4 8C 83            [24] 2415 	mov	dph,r4
      002AC6 8D F0            [24] 2416 	mov	b,r5
      002AC8 12 4F 9C         [24] 2417 	lcall	__gptrget
      002ACB F9               [12] 2418 	mov	r1,a
      002ACC A3               [24] 2419 	inc	dptr
      002ACD 12 4F 9C         [24] 2420 	lcall	__gptrget
      002AD0 FA               [12] 2421 	mov	r2,a
      002AD1 49               [12] 2422 	orl	a,r1
      002AD2 70 03            [24] 2423 	jnz	00143$
      002AD4 02 2B 76         [24] 2424 	ljmp	00105$
      002AD7                       2425 00143$:
                                   2426 ;	src/main.c:299: curr->size - curr->alphabet_chars);
      002AD7 74 04            [12] 2427 	mov	a,#0x04
      002AD9 2B               [12] 2428 	add	a,r3
      002ADA F5 40            [12] 2429 	mov	_heap_report_sloc5_1_0,a
      002ADC E4               [12] 2430 	clr	a
      002ADD 3C               [12] 2431 	addc	a,r4
      002ADE F5 41            [12] 2432 	mov	(_heap_report_sloc5_1_0 + 1),a
      002AE0 8D 42            [24] 2433 	mov	(_heap_report_sloc5_1_0 + 2),r5
      002AE2 85 40 82         [24] 2434 	mov	dpl,_heap_report_sloc5_1_0
      002AE5 85 41 83         [24] 2435 	mov	dph,(_heap_report_sloc5_1_0 + 1)
      002AE8 85 42 F0         [24] 2436 	mov	b,(_heap_report_sloc5_1_0 + 2)
      002AEB 12 4F 9C         [24] 2437 	lcall	__gptrget
      002AEE FE               [12] 2438 	mov	r6,a
      002AEF A3               [24] 2439 	inc	dptr
      002AF0 12 4F 9C         [24] 2440 	lcall	__gptrget
      002AF3 FF               [12] 2441 	mov	r7,a
      002AF4 74 02            [12] 2442 	mov	a,#0x02
      002AF6 2B               [12] 2443 	add	a,r3
      002AF7 FB               [12] 2444 	mov	r3,a
      002AF8 E4               [12] 2445 	clr	a
      002AF9 3C               [12] 2446 	addc	a,r4
      002AFA FC               [12] 2447 	mov	r4,a
      002AFB 8B 82            [24] 2448 	mov	dpl,r3
      002AFD 8C 83            [24] 2449 	mov	dph,r4
      002AFF 8D F0            [24] 2450 	mov	b,r5
      002B01 12 4F 9C         [24] 2451 	lcall	__gptrget
      002B04 F5 39            [12] 2452 	mov	_heap_report_sloc2_1_0,a
      002B06 A3               [24] 2453 	inc	dptr
      002B07 12 4F 9C         [24] 2454 	lcall	__gptrget
      002B0A F5 3A            [12] 2455 	mov	(_heap_report_sloc2_1_0 + 1),a
      002B0C EE               [12] 2456 	mov	a,r6
      002B0D C3               [12] 2457 	clr	c
      002B0E 95 39            [12] 2458 	subb	a,_heap_report_sloc2_1_0
      002B10 F5 3B            [12] 2459 	mov	_heap_report_sloc3_1_0,a
      002B12 EF               [12] 2460 	mov	a,r7
      002B13 95 3A            [12] 2461 	subb	a,(_heap_report_sloc2_1_0 + 1)
      002B15 F5 3C            [12] 2462 	mov	(_heap_report_sloc3_1_0 + 1),a
                                   2463 ;	src/main.c:296: curr->buffer + curr->size, 
      002B17 EE               [12] 2464 	mov	a,r6
      002B18 29               [12] 2465 	add	a,r1
      002B19 F8               [12] 2466 	mov	r0,a
      002B1A EF               [12] 2467 	mov	a,r7
      002B1B 3A               [12] 2468 	addc	a,r2
      002B1C FC               [12] 2469 	mov	r4,a
      002B1D 7D 00            [12] 2470 	mov	r5,#0x00
                                   2471 ;	src/main.c:295: curr->buffer, 
      002B1F 7B 00            [12] 2472 	mov	r3,#0x00
                                   2473 ;	src/main.c:293: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
      002B21 C0 3B            [24] 2474 	push	_heap_report_sloc3_1_0
      002B23 C0 3C            [24] 2475 	push	(_heap_report_sloc3_1_0 + 1)
      002B25 C0 39            [24] 2476 	push	_heap_report_sloc2_1_0
      002B27 C0 3A            [24] 2477 	push	(_heap_report_sloc2_1_0 + 1)
      002B29 C0 06            [24] 2478 	push	ar6
      002B2B C0 07            [24] 2479 	push	ar7
      002B2D C0 00            [24] 2480 	push	ar0
      002B2F C0 04            [24] 2481 	push	ar4
      002B31 C0 05            [24] 2482 	push	ar5
      002B33 C0 01            [24] 2483 	push	ar1
      002B35 C0 02            [24] 2484 	push	ar2
      002B37 C0 03            [24] 2485 	push	ar3
      002B39 C0 3D            [24] 2486 	push	_heap_report_sloc4_1_0
      002B3B C0 3E            [24] 2487 	push	(_heap_report_sloc4_1_0 + 1)
      002B3D 74 5F            [12] 2488 	mov	a,#___str_11
      002B3F C0 E0            [24] 2489 	push	acc
      002B41 74 51            [12] 2490 	mov	a,#(___str_11 >> 8)
      002B43 C0 E0            [24] 2491 	push	acc
      002B45 74 80            [12] 2492 	mov	a,#0x80
      002B47 C0 E0            [24] 2493 	push	acc
      002B49 12 45 70         [24] 2494 	lcall	_printf
      002B4C E5 81            [12] 2495 	mov	a,sp
      002B4E 24 EF            [12] 2496 	add	a,#0xef
      002B50 F5 81            [12] 2497 	mov	sp,a
                                   2498 ;	src/main.c:300: total_heap_sz += curr->size; 
      002B52 85 40 82         [24] 2499 	mov	dpl,_heap_report_sloc5_1_0
      002B55 85 41 83         [24] 2500 	mov	dph,(_heap_report_sloc5_1_0 + 1)
      002B58 85 42 F0         [24] 2501 	mov	b,(_heap_report_sloc5_1_0 + 2)
      002B5B 12 4F 9C         [24] 2502 	lcall	__gptrget
      002B5E FE               [12] 2503 	mov	r6,a
      002B5F A3               [24] 2504 	inc	dptr
      002B60 12 4F 9C         [24] 2505 	lcall	__gptrget
      002B63 FF               [12] 2506 	mov	r7,a
      002B64 90 00 2C         [24] 2507 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002B67 E0               [24] 2508 	movx	a,@dptr
      002B68 FC               [12] 2509 	mov	r4,a
      002B69 A3               [24] 2510 	inc	dptr
      002B6A E0               [24] 2511 	movx	a,@dptr
      002B6B FD               [12] 2512 	mov	r5,a
      002B6C 90 00 2C         [24] 2513 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002B6F EE               [12] 2514 	mov	a,r6
      002B70 2C               [12] 2515 	add	a,r4
      002B71 F0               [24] 2516 	movx	@dptr,a
      002B72 EF               [12] 2517 	mov	a,r7
      002B73 3D               [12] 2518 	addc	a,r5
      002B74 A3               [24] 2519 	inc	dptr
      002B75 F0               [24] 2520 	movx	@dptr,a
      002B76                       2521 00105$:
                                   2522 ;	src/main.c:302: i++;
      002B76 05 3D            [12] 2523 	inc	_heap_report_sloc4_1_0
      002B78 E4               [12] 2524 	clr	a
      002B79 B5 3D 02         [24] 2525 	cjne	a,_heap_report_sloc4_1_0,00144$
      002B7C 05 3E            [12] 2526 	inc	(_heap_report_sloc4_1_0 + 1)
      002B7E                       2527 00144$:
                                   2528 ;	src/main.c:303: curr = curr->next;
      002B7E 90 00 2E         [24] 2529 	mov	dptr,#_heap_report_curr_65538_133
      002B81 E0               [24] 2530 	movx	a,@dptr
      002B82 FD               [12] 2531 	mov	r5,a
      002B83 A3               [24] 2532 	inc	dptr
      002B84 E0               [24] 2533 	movx	a,@dptr
      002B85 FE               [12] 2534 	mov	r6,a
      002B86 A3               [24] 2535 	inc	dptr
      002B87 E0               [24] 2536 	movx	a,@dptr
      002B88 FF               [12] 2537 	mov	r7,a
      002B89 74 08            [12] 2538 	mov	a,#0x08
      002B8B 2D               [12] 2539 	add	a,r5
      002B8C FD               [12] 2540 	mov	r5,a
      002B8D E4               [12] 2541 	clr	a
      002B8E 3E               [12] 2542 	addc	a,r6
      002B8F FE               [12] 2543 	mov	r6,a
      002B90 8D 82            [24] 2544 	mov	dpl,r5
      002B92 8E 83            [24] 2545 	mov	dph,r6
      002B94 8F F0            [24] 2546 	mov	b,r7
      002B96 12 4F 9C         [24] 2547 	lcall	__gptrget
      002B99 FD               [12] 2548 	mov	r5,a
      002B9A A3               [24] 2549 	inc	dptr
      002B9B 12 4F 9C         [24] 2550 	lcall	__gptrget
      002B9E FE               [12] 2551 	mov	r6,a
      002B9F A3               [24] 2552 	inc	dptr
      002BA0 12 4F 9C         [24] 2553 	lcall	__gptrget
      002BA3 FF               [12] 2554 	mov	r7,a
      002BA4 90 00 2E         [24] 2555 	mov	dptr,#_heap_report_curr_65538_133
      002BA7 ED               [12] 2556 	mov	a,r5
      002BA8 F0               [24] 2557 	movx	@dptr,a
      002BA9 EE               [12] 2558 	mov	a,r6
      002BAA A3               [24] 2559 	inc	dptr
      002BAB F0               [24] 2560 	movx	@dptr,a
      002BAC EF               [12] 2561 	mov	a,r7
      002BAD A3               [24] 2562 	inc	dptr
      002BAE F0               [24] 2563 	movx	@dptr,a
      002BAF 02 2A B0         [24] 2564 	ljmp	00106$
      002BB2                       2565 00108$:
                                   2566 ;	src/main.c:305: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      002BB2 90 00 2C         [24] 2567 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002BB5 E0               [24] 2568 	movx	a,@dptr
      002BB6 C0 E0            [24] 2569 	push	acc
      002BB8 A3               [24] 2570 	inc	dptr
      002BB9 E0               [24] 2571 	movx	a,@dptr
      002BBA C0 E0            [24] 2572 	push	acc
      002BBC 74 3B            [12] 2573 	mov	a,#(___sdcc_heap + 0x2000)
      002BBE C0 E0            [24] 2574 	push	acc
      002BC0 74 20            [12] 2575 	mov	a,#((___sdcc_heap + 0x2000) >> 8)
      002BC2 C0 E0            [24] 2576 	push	acc
      002BC4 E4               [12] 2577 	clr	a
      002BC5 C0 E0            [24] 2578 	push	acc
      002BC7 74 3B            [12] 2579 	mov	a,#___sdcc_heap
      002BC9 C0 E0            [24] 2580 	push	acc
      002BCB 74 00            [12] 2581 	mov	a,#(___sdcc_heap >> 8)
      002BCD C0 E0            [24] 2582 	push	acc
      002BCF E4               [12] 2583 	clr	a
      002BD0 C0 E0            [24] 2584 	push	acc
      002BD2 74 F2            [12] 2585 	mov	a,#___str_7
      002BD4 C0 E0            [24] 2586 	push	acc
      002BD6 74 50            [12] 2587 	mov	a,#(___str_7 >> 8)
      002BD8 C0 E0            [24] 2588 	push	acc
      002BDA 74 80            [12] 2589 	mov	a,#0x80
      002BDC C0 E0            [24] 2590 	push	acc
      002BDE 12 45 70         [24] 2591 	lcall	_printf
      002BE1 E5 81            [12] 2592 	mov	a,sp
      002BE3 24 F5            [12] 2593 	add	a,#0xf5
      002BE5 F5 81            [12] 2594 	mov	sp,a
                                   2595 ;	src/main.c:306: printf("\r\n");
      002BE7 74 C1            [12] 2596 	mov	a,#___str_12
      002BE9 C0 E0            [24] 2597 	push	acc
      002BEB 74 51            [12] 2598 	mov	a,#(___str_12 >> 8)
      002BED C0 E0            [24] 2599 	push	acc
      002BEF 74 80            [12] 2600 	mov	a,#0x80
      002BF1 C0 E0            [24] 2601 	push	acc
      002BF3 12 45 70         [24] 2602 	lcall	_printf
      002BF6 15 81            [12] 2603 	dec	sp
      002BF8 15 81            [12] 2604 	dec	sp
      002BFA 15 81            [12] 2605 	dec	sp
                                   2606 ;	src/main.c:307: }
      002BFC 22               [24] 2607 	ret
                                   2608 ;------------------------------------------------------------
                                   2609 ;Allocation info for local variables in function 'get_user_buffer_sz'
                                   2610 ;------------------------------------------------------------
                                   2611 ;maximum_sz                Allocated with name '_get_user_buffer_sz_maximum_sz_65536_136'
                                   2612 ;user_buffer_size          Allocated with name '_get_user_buffer_sz_user_buffer_size_65536_137'
                                   2613 ;------------------------------------------------------------
                                   2614 ;	src/main.c:313: size_t get_user_buffer_sz(size_t maximum_sz)
                                   2615 ;	-----------------------------------------
                                   2616 ;	 function get_user_buffer_sz
                                   2617 ;	-----------------------------------------
      002BFD                       2618 _get_user_buffer_sz:
      002BFD AF 83            [24] 2619 	mov	r7,dph
      002BFF E5 82            [12] 2620 	mov	a,dpl
      002C01 90 00 31         [24] 2621 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_136
      002C04 F0               [24] 2622 	movx	@dptr,a
      002C05 EF               [12] 2623 	mov	a,r7
      002C06 A3               [24] 2624 	inc	dptr
      002C07 F0               [24] 2625 	movx	@dptr,a
                                   2626 ;	src/main.c:316: while(true) {
      002C08 90 00 31         [24] 2627 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_136
      002C0B E0               [24] 2628 	movx	a,@dptr
      002C0C FE               [12] 2629 	mov	r6,a
      002C0D A3               [24] 2630 	inc	dptr
      002C0E E0               [24] 2631 	movx	a,@dptr
      002C0F FF               [12] 2632 	mov	r7,a
      002C10                       2633 00111$:
                                   2634 ;	src/main.c:317: printf("\r\nPlease enter a valid buffer size that is divisible by 32 [64,%zu]: ", maximum_sz);
      002C10 C0 07            [24] 2635 	push	ar7
      002C12 C0 06            [24] 2636 	push	ar6
      002C14 C0 06            [24] 2637 	push	ar6
      002C16 C0 07            [24] 2638 	push	ar7
      002C18 74 C4            [12] 2639 	mov	a,#___str_13
      002C1A C0 E0            [24] 2640 	push	acc
      002C1C 74 51            [12] 2641 	mov	a,#(___str_13 >> 8)
      002C1E C0 E0            [24] 2642 	push	acc
      002C20 74 80            [12] 2643 	mov	a,#0x80
      002C22 C0 E0            [24] 2644 	push	acc
      002C24 12 45 70         [24] 2645 	lcall	_printf
      002C27 E5 81            [12] 2646 	mov	a,sp
      002C29 24 FB            [12] 2647 	add	a,#0xfb
      002C2B F5 81            [12] 2648 	mov	sp,a
                                   2649 ;	src/main.c:318: get_string();
      002C2D 12 39 C3         [24] 2650 	lcall	_get_string
                                   2651 ;	src/main.c:319: user_buffer_size = (size_t) atoi(get_input_buffer()); //TODO: replace with own implementation of atoi that respects the size_t
      002C30 12 39 BC         [24] 2652 	lcall	_get_input_buffer
      002C33 12 42 1E         [24] 2653 	lcall	_atoi
      002C36 AC 82            [24] 2654 	mov	r4,dpl
      002C38 AD 83            [24] 2655 	mov	r5,dph
      002C3A D0 06            [24] 2656 	pop	ar6
      002C3C D0 07            [24] 2657 	pop	ar7
                                   2658 ;	src/main.c:320: if (user_buffer_size > maximum_sz)
      002C3E C3               [12] 2659 	clr	c
      002C3F EE               [12] 2660 	mov	a,r6
      002C40 9C               [12] 2661 	subb	a,r4
      002C41 EF               [12] 2662 	mov	a,r7
      002C42 9D               [12] 2663 	subb	a,r5
      002C43 50 1F            [24] 2664 	jnc	00108$
                                   2665 ;	src/main.c:322: printf("\r\n User buffer size larger than maximum");
      002C45 C0 07            [24] 2666 	push	ar7
      002C47 C0 06            [24] 2667 	push	ar6
      002C49 74 0A            [12] 2668 	mov	a,#___str_14
      002C4B C0 E0            [24] 2669 	push	acc
      002C4D 74 52            [12] 2670 	mov	a,#(___str_14 >> 8)
      002C4F C0 E0            [24] 2671 	push	acc
      002C51 74 80            [12] 2672 	mov	a,#0x80
      002C53 C0 E0            [24] 2673 	push	acc
      002C55 12 45 70         [24] 2674 	lcall	_printf
      002C58 15 81            [12] 2675 	dec	sp
      002C5A 15 81            [12] 2676 	dec	sp
      002C5C 15 81            [12] 2677 	dec	sp
      002C5E D0 06            [24] 2678 	pop	ar6
      002C60 D0 07            [24] 2679 	pop	ar7
      002C62 80 AC            [24] 2680 	sjmp	00111$
      002C64                       2681 00108$:
                                   2682 ;	src/main.c:324: else if (user_buffer_size < USER_BUFFER_MIN)
      002C64 C3               [12] 2683 	clr	c
      002C65 EC               [12] 2684 	mov	a,r4
      002C66 94 40            [12] 2685 	subb	a,#0x40
      002C68 ED               [12] 2686 	mov	a,r5
      002C69 94 00            [12] 2687 	subb	a,#0x00
      002C6B 50 20            [24] 2688 	jnc	00105$
                                   2689 ;	src/main.c:326: printf("\r\n User buffer size too small or error in conversion");
      002C6D C0 07            [24] 2690 	push	ar7
      002C6F C0 06            [24] 2691 	push	ar6
      002C71 74 32            [12] 2692 	mov	a,#___str_15
      002C73 C0 E0            [24] 2693 	push	acc
      002C75 74 52            [12] 2694 	mov	a,#(___str_15 >> 8)
      002C77 C0 E0            [24] 2695 	push	acc
      002C79 74 80            [12] 2696 	mov	a,#0x80
      002C7B C0 E0            [24] 2697 	push	acc
      002C7D 12 45 70         [24] 2698 	lcall	_printf
      002C80 15 81            [12] 2699 	dec	sp
      002C82 15 81            [12] 2700 	dec	sp
      002C84 15 81            [12] 2701 	dec	sp
      002C86 D0 06            [24] 2702 	pop	ar6
      002C88 D0 07            [24] 2703 	pop	ar7
      002C8A 02 2C 10         [24] 2704 	ljmp	00111$
      002C8D                       2705 00105$:
                                   2706 ;	src/main.c:328: else if (MODULE_32(user_buffer_size) != 0)
      002C8D EC               [12] 2707 	mov	a,r4
      002C8E 54 1F            [12] 2708 	anl	a,#0x1f
      002C90 60 20            [24] 2709 	jz	00102$
                                   2710 ;	src/main.c:330: printf("\r\n User buffer size is not divisible by 32");
      002C92 C0 07            [24] 2711 	push	ar7
      002C94 C0 06            [24] 2712 	push	ar6
      002C96 74 67            [12] 2713 	mov	a,#___str_16
      002C98 C0 E0            [24] 2714 	push	acc
      002C9A 74 52            [12] 2715 	mov	a,#(___str_16 >> 8)
      002C9C C0 E0            [24] 2716 	push	acc
      002C9E 74 80            [12] 2717 	mov	a,#0x80
      002CA0 C0 E0            [24] 2718 	push	acc
      002CA2 12 45 70         [24] 2719 	lcall	_printf
      002CA5 15 81            [12] 2720 	dec	sp
      002CA7 15 81            [12] 2721 	dec	sp
      002CA9 15 81            [12] 2722 	dec	sp
      002CAB D0 06            [24] 2723 	pop	ar6
      002CAD D0 07            [24] 2724 	pop	ar7
      002CAF 02 2C 10         [24] 2725 	ljmp	00111$
      002CB2                       2726 00102$:
                                   2727 ;	src/main.c:334: return user_buffer_size;
      002CB2 8C 82            [24] 2728 	mov	dpl,r4
      002CB4 8D 83            [24] 2729 	mov	dph,r5
                                   2730 ;	src/main.c:337: }
      002CB6 22               [24] 2731 	ret
                                   2732 ;------------------------------------------------------------
                                   2733 ;Allocation info for local variables in function 'free_all_buffers'
                                   2734 ;------------------------------------------------------------
                                   2735 ;i                         Allocated with name '_free_all_buffers_i_131072_144'
                                   2736 ;------------------------------------------------------------
                                   2737 ;	src/main.c:342: void free_all_buffers()
                                   2738 ;	-----------------------------------------
                                   2739 ;	 function free_all_buffers
                                   2740 ;	-----------------------------------------
      002CB7                       2741 _free_all_buffers:
                                   2742 ;	src/main.c:344: printf("\r\n Freeing ALL BUFFERS");
      002CB7 74 92            [12] 2743 	mov	a,#___str_17
      002CB9 C0 E0            [24] 2744 	push	acc
      002CBB 74 52            [12] 2745 	mov	a,#(___str_17 >> 8)
      002CBD C0 E0            [24] 2746 	push	acc
      002CBF 74 80            [12] 2747 	mov	a,#0x80
      002CC1 C0 E0            [24] 2748 	push	acc
      002CC3 12 45 70         [24] 2749 	lcall	_printf
      002CC6 15 81            [12] 2750 	dec	sp
      002CC8 15 81            [12] 2751 	dec	sp
      002CCA 15 81            [12] 2752 	dec	sp
                                   2753 ;	src/main.c:345: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002CCC 7E 00            [12] 2754 	mov	r6,#0x00
      002CCE 7F 00            [12] 2755 	mov	r7,#0x00
      002CD0                       2756 00105$:
      002CD0 C3               [12] 2757 	clr	c
      002CD1 EE               [12] 2758 	mov	a,r6
      002CD2 94 02            [12] 2759 	subb	a,#0x02
      002CD4 EF               [12] 2760 	mov	a,r7
      002CD5 64 80            [12] 2761 	xrl	a,#0x80
      002CD7 94 80            [12] 2762 	subb	a,#0x80
      002CD9 40 03            [24] 2763 	jc	00122$
      002CDB 02 2D 61         [24] 2764 	ljmp	00103$
      002CDE                       2765 00122$:
                                   2766 ;	src/main.c:347: if(static_buffers[i].buffer != NULL)
      002CDE 90 20 9A         [24] 2767 	mov	dptr,#__mulint_PARM_2
      002CE1 EE               [12] 2768 	mov	a,r6
      002CE2 F0               [24] 2769 	movx	@dptr,a
      002CE3 EF               [12] 2770 	mov	a,r7
      002CE4 A3               [24] 2771 	inc	dptr
      002CE5 F0               [24] 2772 	movx	@dptr,a
      002CE6 90 00 0B         [24] 2773 	mov	dptr,#0x000b
      002CE9 C0 07            [24] 2774 	push	ar7
      002CEB C0 06            [24] 2775 	push	ar6
      002CED 12 45 02         [24] 2776 	lcall	__mulint
      002CF0 AC 82            [24] 2777 	mov	r4,dpl
      002CF2 AD 83            [24] 2778 	mov	r5,dph
      002CF4 D0 06            [24] 2779 	pop	ar6
      002CF6 D0 07            [24] 2780 	pop	ar7
      002CF8 EC               [12] 2781 	mov	a,r4
      002CF9 24 01            [12] 2782 	add	a,#_static_buffers
      002CFB F5 82            [12] 2783 	mov	dpl,a
      002CFD ED               [12] 2784 	mov	a,r5
      002CFE 34 00            [12] 2785 	addc	a,#(_static_buffers >> 8)
      002D00 F5 83            [12] 2786 	mov	dph,a
      002D02 E0               [24] 2787 	movx	a,@dptr
      002D03 FC               [12] 2788 	mov	r4,a
      002D04 A3               [24] 2789 	inc	dptr
      002D05 E0               [24] 2790 	movx	a,@dptr
      002D06 FD               [12] 2791 	mov	r5,a
      002D07 4C               [12] 2792 	orl	a,r4
      002D08 60 13            [24] 2793 	jz	00102$
                                   2794 ;	src/main.c:349: free(static_buffers[i].buffer);
      002D0A 7B 00            [12] 2795 	mov	r3,#0x00
      002D0C 8C 82            [24] 2796 	mov	dpl,r4
      002D0E 8D 83            [24] 2797 	mov	dph,r5
      002D10 8B F0            [24] 2798 	mov	b,r3
      002D12 C0 07            [24] 2799 	push	ar7
      002D14 C0 06            [24] 2800 	push	ar6
      002D16 12 40 2B         [24] 2801 	lcall	_free
      002D19 D0 06            [24] 2802 	pop	ar6
      002D1B D0 07            [24] 2803 	pop	ar7
      002D1D                       2804 00102$:
                                   2805 ;	src/main.c:351: static_buffers[i].buffer = NULL;
      002D1D 90 20 9A         [24] 2806 	mov	dptr,#__mulint_PARM_2
      002D20 EE               [12] 2807 	mov	a,r6
      002D21 F0               [24] 2808 	movx	@dptr,a
      002D22 EF               [12] 2809 	mov	a,r7
      002D23 A3               [24] 2810 	inc	dptr
      002D24 F0               [24] 2811 	movx	@dptr,a
      002D25 90 00 0B         [24] 2812 	mov	dptr,#0x000b
      002D28 C0 07            [24] 2813 	push	ar7
      002D2A C0 06            [24] 2814 	push	ar6
      002D2C 12 45 02         [24] 2815 	lcall	__mulint
      002D2F AC 82            [24] 2816 	mov	r4,dpl
      002D31 AD 83            [24] 2817 	mov	r5,dph
      002D33 D0 06            [24] 2818 	pop	ar6
      002D35 D0 07            [24] 2819 	pop	ar7
      002D37 EC               [12] 2820 	mov	a,r4
      002D38 24 01            [12] 2821 	add	a,#_static_buffers
      002D3A F5 82            [12] 2822 	mov	dpl,a
      002D3C ED               [12] 2823 	mov	a,r5
      002D3D 34 00            [12] 2824 	addc	a,#(_static_buffers >> 8)
      002D3F F5 83            [12] 2825 	mov	dph,a
      002D41 E4               [12] 2826 	clr	a
      002D42 F0               [24] 2827 	movx	@dptr,a
      002D43 A3               [24] 2828 	inc	dptr
      002D44 F0               [24] 2829 	movx	@dptr,a
                                   2830 ;	src/main.c:352: static_buffers[i].size = 0; 
      002D45 EC               [12] 2831 	mov	a,r4
      002D46 24 01            [12] 2832 	add	a,#_static_buffers
      002D48 FC               [12] 2833 	mov	r4,a
      002D49 ED               [12] 2834 	mov	a,r5
      002D4A 34 00            [12] 2835 	addc	a,#(_static_buffers >> 8)
      002D4C FD               [12] 2836 	mov	r5,a
      002D4D 8C 82            [24] 2837 	mov	dpl,r4
      002D4F 8D 83            [24] 2838 	mov	dph,r5
      002D51 A3               [24] 2839 	inc	dptr
      002D52 A3               [24] 2840 	inc	dptr
      002D53 A3               [24] 2841 	inc	dptr
      002D54 A3               [24] 2842 	inc	dptr
      002D55 E4               [12] 2843 	clr	a
      002D56 F0               [24] 2844 	movx	@dptr,a
      002D57 A3               [24] 2845 	inc	dptr
      002D58 F0               [24] 2846 	movx	@dptr,a
                                   2847 ;	src/main.c:345: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002D59 0E               [12] 2848 	inc	r6
      002D5A BE 00 01         [24] 2849 	cjne	r6,#0x00,00124$
      002D5D 0F               [12] 2850 	inc	r7
      002D5E                       2851 00124$:
      002D5E 02 2C D0         [24] 2852 	ljmp	00105$
      002D61                       2853 00103$:
                                   2854 ;	src/main.c:354: free_all_elems_from_list(&dynamic_buffers_list); 
      002D61 90 20 D3         [24] 2855 	mov	dptr,#_dynamic_buffers_list
      002D64 75 F0 00         [24] 2856 	mov	b,#0x00
                                   2857 ;	src/main.c:355: }
      002D67 02 3D C6         [24] 2858 	ljmp	_free_all_elems_from_list
                                   2859 ;------------------------------------------------------------
                                   2860 ;Allocation info for local variables in function 'qmark_command_handler'
                                   2861 ;------------------------------------------------------------
                                   2862 ;sloc0                     Allocated with name '_qmark_command_handler_sloc0_1_0'
                                   2863 ;sloc1                     Allocated with name '_qmark_command_handler_sloc1_1_0'
                                   2864 ;chars_received_since_last_qmark Allocated with name '_qmark_command_handler_chars_received_since_last_qmark_65537_148'
                                   2865 ;curr_output_char          Allocated with name '_qmark_command_handler_curr_output_char_65538_149'
                                   2866 ;i                         Allocated with name '_qmark_command_handler_i_131074_150'
                                   2867 ;curr_buffer_char          Allocated with name '_qmark_command_handler_curr_buffer_char_196610_151'
                                   2868 ;curr_char                 Allocated with name '_qmark_command_handler_curr_char_196610_151'
                                   2869 ;------------------------------------------------------------
                                   2870 ;	src/main.c:362: void qmark_command_handler()
                                   2871 ;	-----------------------------------------
                                   2872 ;	 function qmark_command_handler
                                   2873 ;	-----------------------------------------
      002D6A                       2874 _qmark_command_handler:
                                   2875 ;	src/main.c:364: heap_report();
      002D6A 12 29 8A         [24] 2876 	lcall	_heap_report
                                   2877 ;	src/main.c:365: size_t chars_received_since_last_qmark = get_char_count();
      002D6D 12 3B 1A         [24] 2878 	lcall	_get_char_count
      002D70 AE 82            [24] 2879 	mov	r6,dpl
      002D72 AF 83            [24] 2880 	mov	r7,dph
                                   2881 ;	src/main.c:366: reset_char_count();
      002D74 C0 07            [24] 2882 	push	ar7
      002D76 C0 06            [24] 2883 	push	ar6
      002D78 12 3B 26         [24] 2884 	lcall	_reset_char_count
      002D7B D0 06            [24] 2885 	pop	ar6
      002D7D D0 07            [24] 2886 	pop	ar7
                                   2887 ;	src/main.c:367: printf("\r\n Received %zu chars since last invocation of ?", chars_received_since_last_qmark);
      002D7F C0 06            [24] 2888 	push	ar6
      002D81 C0 07            [24] 2889 	push	ar7
      002D83 74 A9            [12] 2890 	mov	a,#___str_18
      002D85 C0 E0            [24] 2891 	push	acc
      002D87 74 52            [12] 2892 	mov	a,#(___str_18 >> 8)
      002D89 C0 E0            [24] 2893 	push	acc
      002D8B 74 80            [12] 2894 	mov	a,#0x80
      002D8D C0 E0            [24] 2895 	push	acc
      002D8F 12 45 70         [24] 2896 	lcall	_printf
      002D92 E5 81            [12] 2897 	mov	a,sp
      002D94 24 FB            [12] 2898 	add	a,#0xfb
      002D96 F5 81            [12] 2899 	mov	sp,a
                                   2900 ;	src/main.c:368: size_t curr_output_char = 0;
      002D98 90 00 33         [24] 2901 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_149
      002D9B E4               [12] 2902 	clr	a
      002D9C F0               [24] 2903 	movx	@dptr,a
      002D9D A3               [24] 2904 	inc	dptr
      002D9E F0               [24] 2905 	movx	@dptr,a
                                   2906 ;	src/main.c:370: for(int i = 0; i < 2; i++)
      002D9F 7E 00            [12] 2907 	mov	r6,#0x00
      002DA1 7F 00            [12] 2908 	mov	r7,#0x00
      002DA3                       2909 00109$:
      002DA3 C3               [12] 2910 	clr	c
      002DA4 EE               [12] 2911 	mov	a,r6
      002DA5 94 02            [12] 2912 	subb	a,#0x02
      002DA7 EF               [12] 2913 	mov	a,r7
      002DA8 64 80            [12] 2914 	xrl	a,#0x80
      002DAA 94 80            [12] 2915 	subb	a,#0x80
      002DAC 40 03            [24] 2916 	jc	00139$
      002DAE 02 2F 64         [24] 2917 	ljmp	00107$
      002DB1                       2918 00139$:
                                   2919 ;	src/main.c:373: char curr_char = static_buffers[i].buffer[0];
      002DB1 90 20 9A         [24] 2920 	mov	dptr,#__mulint_PARM_2
      002DB4 EE               [12] 2921 	mov	a,r6
      002DB5 F0               [24] 2922 	movx	@dptr,a
      002DB6 EF               [12] 2923 	mov	a,r7
      002DB7 A3               [24] 2924 	inc	dptr
      002DB8 F0               [24] 2925 	movx	@dptr,a
      002DB9 90 00 0B         [24] 2926 	mov	dptr,#0x000b
      002DBC C0 07            [24] 2927 	push	ar7
      002DBE C0 06            [24] 2928 	push	ar6
      002DC0 12 45 02         [24] 2929 	lcall	__mulint
      002DC3 AC 82            [24] 2930 	mov	r4,dpl
      002DC5 AD 83            [24] 2931 	mov	r5,dph
      002DC7 D0 06            [24] 2932 	pop	ar6
      002DC9 D0 07            [24] 2933 	pop	ar7
      002DCB EC               [12] 2934 	mov	a,r4
      002DCC 24 01            [12] 2935 	add	a,#_static_buffers
      002DCE F5 82            [12] 2936 	mov	dpl,a
      002DD0 ED               [12] 2937 	mov	a,r5
      002DD1 34 00            [12] 2938 	addc	a,#(_static_buffers >> 8)
      002DD3 F5 83            [12] 2939 	mov	dph,a
      002DD5 E0               [24] 2940 	movx	a,@dptr
      002DD6 FA               [12] 2941 	mov	r2,a
      002DD7 A3               [24] 2942 	inc	dptr
      002DD8 E0               [24] 2943 	movx	a,@dptr
      002DD9 FB               [12] 2944 	mov	r3,a
      002DDA 8A 82            [24] 2945 	mov	dpl,r2
      002DDC 8B 83            [24] 2946 	mov	dph,r3
      002DDE E0               [24] 2947 	movx	a,@dptr
      002DDF 90 00 35         [24] 2948 	mov	dptr,#_qmark_command_handler_curr_char_196610_151
      002DE2 F0               [24] 2949 	movx	@dptr,a
                                   2950 ;	src/main.c:374: while(curr_char != '\0' && curr_buffer_char < static_buffers[i].size)
      002DE3 EC               [12] 2951 	mov	a,r4
      002DE4 24 01            [12] 2952 	add	a,#_static_buffers
      002DE6 FA               [12] 2953 	mov	r2,a
      002DE7 ED               [12] 2954 	mov	a,r5
      002DE8 34 00            [12] 2955 	addc	a,#(_static_buffers >> 8)
      002DEA FB               [12] 2956 	mov	r3,a
      002DEB 74 04            [12] 2957 	mov	a,#0x04
      002DED 2A               [12] 2958 	add	a,r2
      002DEE FA               [12] 2959 	mov	r2,a
      002DEF E4               [12] 2960 	clr	a
      002DF0 3B               [12] 2961 	addc	a,r3
      002DF1 FB               [12] 2962 	mov	r3,a
      002DF2 EC               [12] 2963 	mov	a,r4
      002DF3 24 01            [12] 2964 	add	a,#_static_buffers
      002DF5 FC               [12] 2965 	mov	r4,a
      002DF6 ED               [12] 2966 	mov	a,r5
      002DF7 34 00            [12] 2967 	addc	a,#(_static_buffers >> 8)
      002DF9 FD               [12] 2968 	mov	r5,a
      002DFA 90 00 33         [24] 2969 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_149
      002DFD E0               [24] 2970 	movx	a,@dptr
      002DFE F8               [12] 2971 	mov	r0,a
      002DFF A3               [24] 2972 	inc	dptr
      002E00 E0               [24] 2973 	movx	a,@dptr
      002E01 F9               [12] 2974 	mov	r1,a
      002E02 E4               [12] 2975 	clr	a
      002E03 F5 43            [12] 2976 	mov	_qmark_command_handler_sloc0_1_0,a
      002E05 F5 44            [12] 2977 	mov	(_qmark_command_handler_sloc0_1_0 + 1),a
      002E07                       2978 00104$:
      002E07 90 00 35         [24] 2979 	mov	dptr,#_qmark_command_handler_curr_char_196610_151
      002E0A E0               [24] 2980 	movx	a,@dptr
      002E0B 70 03            [24] 2981 	jnz	00140$
      002E0D 02 2E D7         [24] 2982 	ljmp	00119$
      002E10                       2983 00140$:
      002E10 C0 04            [24] 2984 	push	ar4
      002E12 C0 05            [24] 2985 	push	ar5
      002E14 8A 82            [24] 2986 	mov	dpl,r2
      002E16 8B 83            [24] 2987 	mov	dph,r3
      002E18 E0               [24] 2988 	movx	a,@dptr
      002E19 FC               [12] 2989 	mov	r4,a
      002E1A A3               [24] 2990 	inc	dptr
      002E1B E0               [24] 2991 	movx	a,@dptr
      002E1C FD               [12] 2992 	mov	r5,a
      002E1D C3               [12] 2993 	clr	c
      002E1E E5 43            [12] 2994 	mov	a,_qmark_command_handler_sloc0_1_0
      002E20 9C               [12] 2995 	subb	a,r4
      002E21 E5 44            [12] 2996 	mov	a,(_qmark_command_handler_sloc0_1_0 + 1)
      002E23 9D               [12] 2997 	subb	a,r5
      002E24 D0 05            [24] 2998 	pop	ar5
      002E26 D0 04            [24] 2999 	pop	ar4
      002E28 40 03            [24] 3000 	jc	00141$
      002E2A 02 2E D7         [24] 3001 	ljmp	00119$
      002E2D                       3002 00141$:
                                   3003 ;	src/main.c:376: if (MODULE_32(curr_output_char) == 0)
      002E2D E8               [12] 3004 	mov	a,r0
      002E2E 54 1F            [12] 3005 	anl	a,#0x1f
      002E30 70 35            [24] 3006 	jnz	00102$
                                   3007 ;	src/main.c:378: printf("\r\n");
      002E32 C0 07            [24] 3008 	push	ar7
      002E34 C0 06            [24] 3009 	push	ar6
      002E36 C0 05            [24] 3010 	push	ar5
      002E38 C0 04            [24] 3011 	push	ar4
      002E3A C0 03            [24] 3012 	push	ar3
      002E3C C0 02            [24] 3013 	push	ar2
      002E3E C0 01            [24] 3014 	push	ar1
      002E40 C0 00            [24] 3015 	push	ar0
      002E42 74 C1            [12] 3016 	mov	a,#___str_12
      002E44 C0 E0            [24] 3017 	push	acc
      002E46 74 51            [12] 3018 	mov	a,#(___str_12 >> 8)
      002E48 C0 E0            [24] 3019 	push	acc
      002E4A 74 80            [12] 3020 	mov	a,#0x80
      002E4C C0 E0            [24] 3021 	push	acc
      002E4E 12 45 70         [24] 3022 	lcall	_printf
      002E51 15 81            [12] 3023 	dec	sp
      002E53 15 81            [12] 3024 	dec	sp
      002E55 15 81            [12] 3025 	dec	sp
      002E57 D0 00            [24] 3026 	pop	ar0
      002E59 D0 01            [24] 3027 	pop	ar1
      002E5B D0 02            [24] 3028 	pop	ar2
      002E5D D0 03            [24] 3029 	pop	ar3
      002E5F D0 04            [24] 3030 	pop	ar4
      002E61 D0 05            [24] 3031 	pop	ar5
      002E63 D0 06            [24] 3032 	pop	ar6
      002E65 D0 07            [24] 3033 	pop	ar7
      002E67                       3034 00102$:
                                   3035 ;	src/main.c:380: printf("%c", curr_char);
      002E67 C0 02            [24] 3036 	push	ar2
      002E69 C0 03            [24] 3037 	push	ar3
      002E6B 90 00 35         [24] 3038 	mov	dptr,#_qmark_command_handler_curr_char_196610_151
      002E6E E0               [24] 3039 	movx	a,@dptr
      002E6F FB               [12] 3040 	mov	r3,a
      002E70 7A 00            [12] 3041 	mov	r2,#0x00
      002E72 C0 07            [24] 3042 	push	ar7
      002E74 C0 06            [24] 3043 	push	ar6
      002E76 C0 05            [24] 3044 	push	ar5
      002E78 C0 04            [24] 3045 	push	ar4
      002E7A C0 03            [24] 3046 	push	ar3
      002E7C C0 02            [24] 3047 	push	ar2
      002E7E C0 01            [24] 3048 	push	ar1
      002E80 C0 00            [24] 3049 	push	ar0
      002E82 C0 03            [24] 3050 	push	ar3
      002E84 C0 02            [24] 3051 	push	ar2
      002E86 74 DA            [12] 3052 	mov	a,#___str_19
      002E88 C0 E0            [24] 3053 	push	acc
      002E8A 74 52            [12] 3054 	mov	a,#(___str_19 >> 8)
      002E8C C0 E0            [24] 3055 	push	acc
      002E8E 74 80            [12] 3056 	mov	a,#0x80
      002E90 C0 E0            [24] 3057 	push	acc
      002E92 12 45 70         [24] 3058 	lcall	_printf
      002E95 E5 81            [12] 3059 	mov	a,sp
      002E97 24 FB            [12] 3060 	add	a,#0xfb
      002E99 F5 81            [12] 3061 	mov	sp,a
      002E9B D0 00            [24] 3062 	pop	ar0
      002E9D D0 01            [24] 3063 	pop	ar1
      002E9F D0 02            [24] 3064 	pop	ar2
      002EA1 D0 03            [24] 3065 	pop	ar3
      002EA3 D0 04            [24] 3066 	pop	ar4
      002EA5 D0 05            [24] 3067 	pop	ar5
      002EA7 D0 06            [24] 3068 	pop	ar6
      002EA9 D0 07            [24] 3069 	pop	ar7
                                   3070 ;	src/main.c:381: curr_output_char++;
      002EAB 08               [12] 3071 	inc	r0
      002EAC B8 00 01         [24] 3072 	cjne	r0,#0x00,00144$
      002EAF 09               [12] 3073 	inc	r1
      002EB0                       3074 00144$:
                                   3075 ;	src/main.c:382: curr_buffer_char++;
      002EB0 05 43            [12] 3076 	inc	_qmark_command_handler_sloc0_1_0
      002EB2 E4               [12] 3077 	clr	a
      002EB3 B5 43 02         [24] 3078 	cjne	a,_qmark_command_handler_sloc0_1_0,00145$
      002EB6 05 44            [12] 3079 	inc	(_qmark_command_handler_sloc0_1_0 + 1)
      002EB8                       3080 00145$:
                                   3081 ;	src/main.c:383: curr_char = static_buffers[i].buffer[curr_buffer_char];
      002EB8 8C 82            [24] 3082 	mov	dpl,r4
      002EBA 8D 83            [24] 3083 	mov	dph,r5
      002EBC E0               [24] 3084 	movx	a,@dptr
      002EBD FA               [12] 3085 	mov	r2,a
      002EBE A3               [24] 3086 	inc	dptr
      002EBF E0               [24] 3087 	movx	a,@dptr
      002EC0 FB               [12] 3088 	mov	r3,a
      002EC1 E5 43            [12] 3089 	mov	a,_qmark_command_handler_sloc0_1_0
      002EC3 2A               [12] 3090 	add	a,r2
      002EC4 F5 82            [12] 3091 	mov	dpl,a
      002EC6 E5 44            [12] 3092 	mov	a,(_qmark_command_handler_sloc0_1_0 + 1)
      002EC8 3B               [12] 3093 	addc	a,r3
      002EC9 F5 83            [12] 3094 	mov	dph,a
      002ECB E0               [24] 3095 	movx	a,@dptr
      002ECC 90 00 35         [24] 3096 	mov	dptr,#_qmark_command_handler_curr_char_196610_151
      002ECF F0               [24] 3097 	movx	@dptr,a
      002ED0 D0 03            [24] 3098 	pop	ar3
      002ED2 D0 02            [24] 3099 	pop	ar2
      002ED4 02 2E 07         [24] 3100 	ljmp	00104$
      002ED7                       3101 00119$:
      002ED7 90 00 33         [24] 3102 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_149
      002EDA E8               [12] 3103 	mov	a,r0
      002EDB F0               [24] 3104 	movx	@dptr,a
      002EDC E9               [12] 3105 	mov	a,r1
      002EDD A3               [24] 3106 	inc	dptr
      002EDE F0               [24] 3107 	movx	@dptr,a
                                   3108 ;	src/main.c:386: memset(static_buffers[i].buffer, '\0', static_buffers[i].size);
      002EDF 90 20 9A         [24] 3109 	mov	dptr,#__mulint_PARM_2
      002EE2 EE               [12] 3110 	mov	a,r6
      002EE3 F0               [24] 3111 	movx	@dptr,a
      002EE4 EF               [12] 3112 	mov	a,r7
      002EE5 A3               [24] 3113 	inc	dptr
      002EE6 F0               [24] 3114 	movx	@dptr,a
      002EE7 90 00 0B         [24] 3115 	mov	dptr,#0x000b
      002EEA C0 07            [24] 3116 	push	ar7
      002EEC C0 06            [24] 3117 	push	ar6
      002EEE 12 45 02         [24] 3118 	lcall	__mulint
      002EF1 AC 82            [24] 3119 	mov	r4,dpl
      002EF3 AD 83            [24] 3120 	mov	r5,dph
      002EF5 EC               [12] 3121 	mov	a,r4
      002EF6 24 01            [12] 3122 	add	a,#_static_buffers
      002EF8 F5 82            [12] 3123 	mov	dpl,a
      002EFA ED               [12] 3124 	mov	a,r5
      002EFB 34 00            [12] 3125 	addc	a,#(_static_buffers >> 8)
      002EFD F5 83            [12] 3126 	mov	dph,a
      002EFF E0               [24] 3127 	movx	a,@dptr
      002F00 FA               [12] 3128 	mov	r2,a
      002F01 A3               [24] 3129 	inc	dptr
      002F02 E0               [24] 3130 	movx	a,@dptr
      002F03 FB               [12] 3131 	mov	r3,a
      002F04 8A 45            [24] 3132 	mov	_qmark_command_handler_sloc1_1_0,r2
      002F06 8B 46            [24] 3133 	mov	(_qmark_command_handler_sloc1_1_0 + 1),r3
      002F08 75 47 00         [24] 3134 	mov	(_qmark_command_handler_sloc1_1_0 + 2),#0x00
      002F0B EC               [12] 3135 	mov	a,r4
      002F0C 24 01            [12] 3136 	add	a,#_static_buffers
      002F0E FC               [12] 3137 	mov	r4,a
      002F0F ED               [12] 3138 	mov	a,r5
      002F10 34 00            [12] 3139 	addc	a,#(_static_buffers >> 8)
      002F12 FD               [12] 3140 	mov	r5,a
      002F13 8C 82            [24] 3141 	mov	dpl,r4
      002F15 8D 83            [24] 3142 	mov	dph,r5
      002F17 A3               [24] 3143 	inc	dptr
      002F18 A3               [24] 3144 	inc	dptr
      002F19 A3               [24] 3145 	inc	dptr
      002F1A A3               [24] 3146 	inc	dptr
      002F1B E0               [24] 3147 	movx	a,@dptr
      002F1C F8               [12] 3148 	mov	r0,a
      002F1D A3               [24] 3149 	inc	dptr
      002F1E E0               [24] 3150 	movx	a,@dptr
      002F1F FB               [12] 3151 	mov	r3,a
      002F20 90 20 88         [24] 3152 	mov	dptr,#_memset_PARM_2
      002F23 E4               [12] 3153 	clr	a
      002F24 F0               [24] 3154 	movx	@dptr,a
      002F25 90 20 89         [24] 3155 	mov	dptr,#_memset_PARM_3
      002F28 E8               [12] 3156 	mov	a,r0
      002F29 F0               [24] 3157 	movx	@dptr,a
      002F2A EB               [12] 3158 	mov	a,r3
      002F2B A3               [24] 3159 	inc	dptr
      002F2C F0               [24] 3160 	movx	@dptr,a
      002F2D 85 45 82         [24] 3161 	mov	dpl,_qmark_command_handler_sloc1_1_0
      002F30 85 46 83         [24] 3162 	mov	dph,(_qmark_command_handler_sloc1_1_0 + 1)
      002F33 85 47 F0         [24] 3163 	mov	b,(_qmark_command_handler_sloc1_1_0 + 2)
      002F36 C0 05            [24] 3164 	push	ar5
      002F38 C0 04            [24] 3165 	push	ar4
      002F3A 12 41 F6         [24] 3166 	lcall	_memset
      002F3D D0 04            [24] 3167 	pop	ar4
      002F3F D0 05            [24] 3168 	pop	ar5
      002F41 D0 06            [24] 3169 	pop	ar6
      002F43 D0 07            [24] 3170 	pop	ar7
                                   3171 ;	src/main.c:387: static_buffers[i].alphabet_chars = 0;
      002F45 8C 82            [24] 3172 	mov	dpl,r4
      002F47 8D 83            [24] 3173 	mov	dph,r5
      002F49 A3               [24] 3174 	inc	dptr
      002F4A A3               [24] 3175 	inc	dptr
      002F4B E4               [12] 3176 	clr	a
      002F4C F0               [24] 3177 	movx	@dptr,a
      002F4D A3               [24] 3178 	inc	dptr
      002F4E F0               [24] 3179 	movx	@dptr,a
                                   3180 ;	src/main.c:388: static_buffers[i].curr_available_char = 0;
      002F4F 74 06            [12] 3181 	mov	a,#0x06
      002F51 2C               [12] 3182 	add	a,r4
      002F52 F5 82            [12] 3183 	mov	dpl,a
      002F54 E4               [12] 3184 	clr	a
      002F55 3D               [12] 3185 	addc	a,r5
      002F56 F5 83            [12] 3186 	mov	dph,a
      002F58 E4               [12] 3187 	clr	a
      002F59 F0               [24] 3188 	movx	@dptr,a
      002F5A A3               [24] 3189 	inc	dptr
      002F5B F0               [24] 3190 	movx	@dptr,a
                                   3191 ;	src/main.c:370: for(int i = 0; i < 2; i++)
      002F5C 0E               [12] 3192 	inc	r6
      002F5D BE 00 01         [24] 3193 	cjne	r6,#0x00,00146$
      002F60 0F               [12] 3194 	inc	r7
      002F61                       3195 00146$:
      002F61 02 2D A3         [24] 3196 	ljmp	00109$
      002F64                       3197 00107$:
                                   3198 ;	src/main.c:391: printf("\r\n");
      002F64 74 C1            [12] 3199 	mov	a,#___str_12
      002F66 C0 E0            [24] 3200 	push	acc
      002F68 74 51            [12] 3201 	mov	a,#(___str_12 >> 8)
      002F6A C0 E0            [24] 3202 	push	acc
      002F6C 74 80            [12] 3203 	mov	a,#0x80
      002F6E C0 E0            [24] 3204 	push	acc
      002F70 12 45 70         [24] 3205 	lcall	_printf
      002F73 15 81            [12] 3206 	dec	sp
      002F75 15 81            [12] 3207 	dec	sp
      002F77 15 81            [12] 3208 	dec	sp
                                   3209 ;	src/main.c:392: printf("\r\n");
      002F79 74 C1            [12] 3210 	mov	a,#___str_12
      002F7B C0 E0            [24] 3211 	push	acc
      002F7D 74 51            [12] 3212 	mov	a,#(___str_12 >> 8)
      002F7F C0 E0            [24] 3213 	push	acc
      002F81 74 80            [12] 3214 	mov	a,#0x80
      002F83 C0 E0            [24] 3215 	push	acc
      002F85 12 45 70         [24] 3216 	lcall	_printf
      002F88 15 81            [12] 3217 	dec	sp
      002F8A 15 81            [12] 3218 	dec	sp
      002F8C 15 81            [12] 3219 	dec	sp
                                   3220 ;	src/main.c:393: }
      002F8E 22               [24] 3221 	ret
                                   3222 ;------------------------------------------------------------
                                   3223 ;Allocation info for local variables in function 'enter_command_handler'
                                   3224 ;------------------------------------------------------------
                                   3225 ;sloc0                     Allocated with name '_enter_command_handler_sloc0_1_0'
                                   3226 ;sloc1                     Allocated with name '_enter_command_handler_sloc1_1_0'
                                   3227 ;sloc2                     Allocated with name '_enter_command_handler_sloc2_1_0'
                                   3228 ;sloc3                     Allocated with name '_enter_command_handler_sloc3_1_0'
                                   3229 ;i                         Allocated with name '_enter_command_handler_i_131072_155'
                                   3230 ;address                   Allocated with name '_enter_command_handler_address_262144_157'
                                   3231 ;j                         Allocated with name '_enter_command_handler_j_393216_159'
                                   3232 ;------------------------------------------------------------
                                   3233 ;	src/main.c:398: void enter_command_handler()
                                   3234 ;	-----------------------------------------
                                   3235 ;	 function enter_command_handler
                                   3236 ;	-----------------------------------------
      002F8F                       3237 _enter_command_handler:
                                   3238 ;	src/main.c:400: command_header("Dump Admin Buffers");
      002F8F 90 52 DD         [24] 3239 	mov	dptr,#___str_20
      002F92 75 F0 80         [24] 3240 	mov	b,#0x80
      002F95 12 29 51         [24] 3241 	lcall	_command_header
                                   3242 ;	src/main.c:401: for(int i = 0; i < 2; i++)
      002F98 7E 00            [12] 3243 	mov	r6,#0x00
      002F9A 7F 00            [12] 3244 	mov	r7,#0x00
      002F9C                       3245 00111$:
      002F9C C3               [12] 3246 	clr	c
      002F9D EE               [12] 3247 	mov	a,r6
      002F9E 94 02            [12] 3248 	subb	a,#0x02
      002FA0 EF               [12] 3249 	mov	a,r7
      002FA1 64 80            [12] 3250 	xrl	a,#0x80
      002FA3 94 80            [12] 3251 	subb	a,#0x80
      002FA5 40 01            [24] 3252 	jc	00142$
      002FA7 22               [24] 3253 	ret
      002FA8                       3254 00142$:
                                   3255 ;	src/main.c:403: printf("\r\n Buffer %d ", i);
      002FA8 C0 07            [24] 3256 	push	ar7
      002FAA C0 06            [24] 3257 	push	ar6
      002FAC C0 06            [24] 3258 	push	ar6
      002FAE C0 07            [24] 3259 	push	ar7
      002FB0 74 F0            [12] 3260 	mov	a,#___str_21
      002FB2 C0 E0            [24] 3261 	push	acc
      002FB4 74 52            [12] 3262 	mov	a,#(___str_21 >> 8)
      002FB6 C0 E0            [24] 3263 	push	acc
      002FB8 74 80            [12] 3264 	mov	a,#0x80
      002FBA C0 E0            [24] 3265 	push	acc
      002FBC 12 45 70         [24] 3266 	lcall	_printf
      002FBF E5 81            [12] 3267 	mov	a,sp
      002FC1 24 FB            [12] 3268 	add	a,#0xfb
      002FC3 F5 81            [12] 3269 	mov	sp,a
                                   3270 ;	src/main.c:404: printf("\r\n----------");
      002FC5 74 FE            [12] 3271 	mov	a,#___str_22
      002FC7 C0 E0            [24] 3272 	push	acc
      002FC9 74 52            [12] 3273 	mov	a,#(___str_22 >> 8)
      002FCB C0 E0            [24] 3274 	push	acc
      002FCD 74 80            [12] 3275 	mov	a,#0x80
      002FCF C0 E0            [24] 3276 	push	acc
      002FD1 12 45 70         [24] 3277 	lcall	_printf
      002FD4 15 81            [12] 3278 	dec	sp
      002FD6 15 81            [12] 3279 	dec	sp
      002FD8 15 81            [12] 3280 	dec	sp
      002FDA D0 06            [24] 3281 	pop	ar6
      002FDC D0 07            [24] 3282 	pop	ar7
                                   3283 ;	src/main.c:405: for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
      002FDE 90 20 9A         [24] 3284 	mov	dptr,#__mulint_PARM_2
      002FE1 EE               [12] 3285 	mov	a,r6
      002FE2 F0               [24] 3286 	movx	@dptr,a
      002FE3 EF               [12] 3287 	mov	a,r7
      002FE4 A3               [24] 3288 	inc	dptr
      002FE5 F0               [24] 3289 	movx	@dptr,a
      002FE6 90 00 0B         [24] 3290 	mov	dptr,#0x000b
      002FE9 C0 07            [24] 3291 	push	ar7
      002FEB C0 06            [24] 3292 	push	ar6
      002FED 12 45 02         [24] 3293 	lcall	__mulint
      002FF0 AC 82            [24] 3294 	mov	r4,dpl
      002FF2 AD 83            [24] 3295 	mov	r5,dph
      002FF4 D0 06            [24] 3296 	pop	ar6
      002FF6 D0 07            [24] 3297 	pop	ar7
      002FF8 EC               [12] 3298 	mov	a,r4
      002FF9 24 01            [12] 3299 	add	a,#_static_buffers
      002FFB FA               [12] 3300 	mov	r2,a
      002FFC ED               [12] 3301 	mov	a,r5
      002FFD 34 00            [12] 3302 	addc	a,#(_static_buffers >> 8)
      002FFF FB               [12] 3303 	mov	r3,a
      003000 8A 82            [24] 3304 	mov	dpl,r2
      003002 8B 83            [24] 3305 	mov	dph,r3
      003004 E0               [24] 3306 	movx	a,@dptr
      003005 F8               [12] 3307 	mov	r0,a
      003006 A3               [24] 3308 	inc	dptr
      003007 E0               [24] 3309 	movx	a,@dptr
      003008 F9               [12] 3310 	mov	r1,a
      003009 88 48            [24] 3311 	mov	_enter_command_handler_sloc0_1_0,r0
      00300B 89 49            [24] 3312 	mov	(_enter_command_handler_sloc0_1_0 + 1),r1
      00300D 75 4A 00         [24] 3313 	mov	(_enter_command_handler_sloc0_1_0 + 2),#0x00
      003010 8E 00            [24] 3314 	mov	ar0,r6
      003012 8F 01            [24] 3315 	mov	ar1,r7
      003014 8A 4F            [24] 3316 	mov	_enter_command_handler_sloc3_1_0,r2
      003016 8B 50            [24] 3317 	mov	(_enter_command_handler_sloc3_1_0 + 1),r3
      003018 EC               [12] 3318 	mov	a,r4
      003019 24 01            [12] 3319 	add	a,#_static_buffers
      00301B FC               [12] 3320 	mov	r4,a
      00301C ED               [12] 3321 	mov	a,r5
      00301D 34 00            [12] 3322 	addc	a,#(_static_buffers >> 8)
      00301F FD               [12] 3323 	mov	r5,a
      003020 74 04            [12] 3324 	mov	a,#0x04
      003022 2C               [12] 3325 	add	a,r4
      003023 F5 4B            [12] 3326 	mov	_enter_command_handler_sloc1_1_0,a
      003025 E4               [12] 3327 	clr	a
      003026 3D               [12] 3328 	addc	a,r5
      003027 F5 4C            [12] 3329 	mov	(_enter_command_handler_sloc1_1_0 + 1),a
      003029                       3330 00108$:
      003029 C0 00            [24] 3331 	push	ar0
      00302B C0 01            [24] 3332 	push	ar1
      00302D 85 4F 82         [24] 3333 	mov	dpl,_enter_command_handler_sloc3_1_0
      003030 85 50 83         [24] 3334 	mov	dph,(_enter_command_handler_sloc3_1_0 + 1)
      003033 E0               [24] 3335 	movx	a,@dptr
      003034 F8               [12] 3336 	mov	r0,a
      003035 A3               [24] 3337 	inc	dptr
      003036 E0               [24] 3338 	movx	a,@dptr
      003037 F9               [12] 3339 	mov	r1,a
      003038 85 4B 82         [24] 3340 	mov	dpl,_enter_command_handler_sloc1_1_0
      00303B 85 4C 83         [24] 3341 	mov	dph,(_enter_command_handler_sloc1_1_0 + 1)
      00303E E0               [24] 3342 	movx	a,@dptr
      00303F FC               [12] 3343 	mov	r4,a
      003040 A3               [24] 3344 	inc	dptr
      003041 E0               [24] 3345 	movx	a,@dptr
      003042 FD               [12] 3346 	mov	r5,a
      003043 EC               [12] 3347 	mov	a,r4
      003044 28               [12] 3348 	add	a,r0
      003045 F5 4D            [12] 3349 	mov	_enter_command_handler_sloc2_1_0,a
      003047 ED               [12] 3350 	mov	a,r5
      003048 39               [12] 3351 	addc	a,r1
      003049 F5 4E            [12] 3352 	mov	(_enter_command_handler_sloc2_1_0 + 1),a
      00304B A9 48            [24] 3353 	mov	r1,_enter_command_handler_sloc0_1_0
      00304D AC 49            [24] 3354 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      00304F AD 4A            [24] 3355 	mov	r5,(_enter_command_handler_sloc0_1_0 + 2)
      003051 A8 4D            [24] 3356 	mov	r0,_enter_command_handler_sloc2_1_0
      003053 AA 4E            [24] 3357 	mov	r2,(_enter_command_handler_sloc2_1_0 + 1)
      003055 7B 00            [12] 3358 	mov	r3,#0x00
      003057 C0 00            [24] 3359 	push	ar0
      003059 C0 02            [24] 3360 	push	ar2
      00305B C0 03            [24] 3361 	push	ar3
      00305D 89 82            [24] 3362 	mov	dpl,r1
      00305F 8C 83            [24] 3363 	mov	dph,r4
      003061 8D F0            [24] 3364 	mov	b,r5
      003063 12 20 06         [24] 3365 	lcall	___gptr_cmp
      003066 15 81            [12] 3366 	dec	sp
      003068 15 81            [12] 3367 	dec	sp
      00306A 15 81            [12] 3368 	dec	sp
      00306C D0 01            [24] 3369 	pop	ar1
      00306E D0 00            [24] 3370 	pop	ar0
      003070 40 03            [24] 3371 	jc	00143$
      003072 02 31 15         [24] 3372 	ljmp	00102$
      003075                       3373 00143$:
                                   3374 ;	src/main.c:407: printf("\r\n%04X:", (unsigned int) address);
      003075 AB 48            [24] 3375 	mov	r3,_enter_command_handler_sloc0_1_0
      003077 AC 49            [24] 3376 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      003079 C0 01            [24] 3377 	push	ar1
      00307B C0 00            [24] 3378 	push	ar0
      00307D C0 03            [24] 3379 	push	ar3
      00307F C0 04            [24] 3380 	push	ar4
      003081 74 0B            [12] 3381 	mov	a,#___str_23
      003083 C0 E0            [24] 3382 	push	acc
      003085 74 53            [12] 3383 	mov	a,#(___str_23 >> 8)
      003087 C0 E0            [24] 3384 	push	acc
      003089 74 80            [12] 3385 	mov	a,#0x80
      00308B C0 E0            [24] 3386 	push	acc
      00308D 12 45 70         [24] 3387 	lcall	_printf
      003090 E5 81            [12] 3388 	mov	a,sp
      003092 24 FB            [12] 3389 	add	a,#0xfb
      003094 F5 81            [12] 3390 	mov	sp,a
      003096 D0 00            [24] 3391 	pop	ar0
      003098 D0 01            [24] 3392 	pop	ar1
                                   3393 ;	src/main.c:408: for(int j = 0; j < 16; j++)
      00309A AB 48            [24] 3394 	mov	r3,_enter_command_handler_sloc0_1_0
      00309C AC 49            [24] 3395 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      00309E AD 4A            [24] 3396 	mov	r5,(_enter_command_handler_sloc0_1_0 + 2)
      0030A0 E4               [12] 3397 	clr	a
      0030A1 F5 4D            [12] 3398 	mov	_enter_command_handler_sloc2_1_0,a
      0030A3 F5 4E            [12] 3399 	mov	(_enter_command_handler_sloc2_1_0 + 1),a
      0030A5                       3400 00105$:
      0030A5 C3               [12] 3401 	clr	c
      0030A6 E5 4D            [12] 3402 	mov	a,_enter_command_handler_sloc2_1_0
      0030A8 94 10            [12] 3403 	subb	a,#0x10
      0030AA E5 4E            [12] 3404 	mov	a,(_enter_command_handler_sloc2_1_0 + 1)
      0030AC 64 80            [12] 3405 	xrl	a,#0x80
      0030AE 94 80            [12] 3406 	subb	a,#0x80
      0030B0 50 55            [24] 3407 	jnc	00109$
                                   3408 ;	src/main.c:410: printf(" %02hhX", (unsigned char) *(address+j));
      0030B2 C0 00            [24] 3409 	push	ar0
      0030B4 C0 01            [24] 3410 	push	ar1
      0030B6 E5 4D            [12] 3411 	mov	a,_enter_command_handler_sloc2_1_0
      0030B8 2B               [12] 3412 	add	a,r3
      0030B9 F8               [12] 3413 	mov	r0,a
      0030BA E5 4E            [12] 3414 	mov	a,(_enter_command_handler_sloc2_1_0 + 1)
      0030BC 3C               [12] 3415 	addc	a,r4
      0030BD F9               [12] 3416 	mov	r1,a
      0030BE 8D 02            [24] 3417 	mov	ar2,r5
      0030C0 88 82            [24] 3418 	mov	dpl,r0
      0030C2 89 83            [24] 3419 	mov	dph,r1
      0030C4 8A F0            [24] 3420 	mov	b,r2
      0030C6 12 4F 9C         [24] 3421 	lcall	__gptrget
      0030C9 F8               [12] 3422 	mov	r0,a
      0030CA 7A 00            [12] 3423 	mov	r2,#0x00
      0030CC C0 05            [24] 3424 	push	ar5
      0030CE C0 04            [24] 3425 	push	ar4
      0030D0 C0 03            [24] 3426 	push	ar3
      0030D2 C0 01            [24] 3427 	push	ar1
      0030D4 C0 00            [24] 3428 	push	ar0
      0030D6 C0 00            [24] 3429 	push	ar0
      0030D8 C0 02            [24] 3430 	push	ar2
      0030DA 74 13            [12] 3431 	mov	a,#___str_24
      0030DC C0 E0            [24] 3432 	push	acc
      0030DE 74 53            [12] 3433 	mov	a,#(___str_24 >> 8)
      0030E0 C0 E0            [24] 3434 	push	acc
      0030E2 74 80            [12] 3435 	mov	a,#0x80
      0030E4 C0 E0            [24] 3436 	push	acc
      0030E6 12 45 70         [24] 3437 	lcall	_printf
      0030E9 E5 81            [12] 3438 	mov	a,sp
      0030EB 24 FB            [12] 3439 	add	a,#0xfb
      0030ED F5 81            [12] 3440 	mov	sp,a
      0030EF D0 00            [24] 3441 	pop	ar0
      0030F1 D0 01            [24] 3442 	pop	ar1
      0030F3 D0 03            [24] 3443 	pop	ar3
      0030F5 D0 04            [24] 3444 	pop	ar4
      0030F7 D0 05            [24] 3445 	pop	ar5
                                   3446 ;	src/main.c:408: for(int j = 0; j < 16; j++)
      0030F9 05 4D            [12] 3447 	inc	_enter_command_handler_sloc2_1_0
      0030FB E4               [12] 3448 	clr	a
      0030FC B5 4D 02         [24] 3449 	cjne	a,_enter_command_handler_sloc2_1_0,00145$
      0030FF 05 4E            [12] 3450 	inc	(_enter_command_handler_sloc2_1_0 + 1)
      003101                       3451 00145$:
      003101 D0 01            [24] 3452 	pop	ar1
      003103 D0 00            [24] 3453 	pop	ar0
      003105 80 9E            [24] 3454 	sjmp	00105$
      003107                       3455 00109$:
                                   3456 ;	src/main.c:405: for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
      003107 74 10            [12] 3457 	mov	a,#0x10
      003109 25 48            [12] 3458 	add	a,_enter_command_handler_sloc0_1_0
      00310B F5 48            [12] 3459 	mov	_enter_command_handler_sloc0_1_0,a
      00310D E4               [12] 3460 	clr	a
      00310E 35 49            [12] 3461 	addc	a,(_enter_command_handler_sloc0_1_0 + 1)
      003110 F5 49            [12] 3462 	mov	(_enter_command_handler_sloc0_1_0 + 1),a
      003112 02 30 29         [24] 3463 	ljmp	00108$
      003115                       3464 00102$:
                                   3465 ;	src/main.c:413: printf("\r\n");
      003115 C0 01            [24] 3466 	push	ar1
      003117 C0 00            [24] 3467 	push	ar0
      003119 74 C1            [12] 3468 	mov	a,#___str_12
      00311B C0 E0            [24] 3469 	push	acc
      00311D 74 51            [12] 3470 	mov	a,#(___str_12 >> 8)
      00311F C0 E0            [24] 3471 	push	acc
      003121 74 80            [12] 3472 	mov	a,#0x80
      003123 C0 E0            [24] 3473 	push	acc
      003125 12 45 70         [24] 3474 	lcall	_printf
      003128 15 81            [12] 3475 	dec	sp
      00312A 15 81            [12] 3476 	dec	sp
      00312C 15 81            [12] 3477 	dec	sp
      00312E D0 00            [24] 3478 	pop	ar0
      003130 D0 01            [24] 3479 	pop	ar1
                                   3480 ;	src/main.c:401: for(int i = 0; i < 2; i++)
      003132 74 01            [12] 3481 	mov	a,#0x01
      003134 28               [12] 3482 	add	a,r0
      003135 FE               [12] 3483 	mov	r6,a
      003136 E4               [12] 3484 	clr	a
      003137 39               [12] 3485 	addc	a,r1
      003138 FF               [12] 3486 	mov	r7,a
                                   3487 ;	src/main.c:415: }
      003139 02 2F 9C         [24] 3488 	ljmp	00111$
                                   3489 ;------------------------------------------------------------
                                   3490 ;Allocation info for local variables in function 'percent_command_handler'
                                   3491 ;------------------------------------------------------------
                                   3492 ;sloc0                     Allocated with name '_percent_command_handler_sloc0_1_0'
                                   3493 ;i                         Allocated with name '_percent_command_handler_i_131072_162'
                                   3494 ;curr                      Allocated with name '_percent_command_handler_curr_65537_165'
                                   3495 ;------------------------------------------------------------
                                   3496 ;	src/main.c:420: void percent_command_handler()
                                   3497 ;	-----------------------------------------
                                   3498 ;	 function percent_command_handler
                                   3499 ;	-----------------------------------------
      00313C                       3500 _percent_command_handler:
                                   3501 ;	src/main.c:422: command_header("Clear Buffers");
      00313C 90 53 1B         [24] 3502 	mov	dptr,#___str_25
      00313F 75 F0 80         [24] 3503 	mov	b,#0x80
      003142 12 29 51         [24] 3504 	lcall	_command_header
                                   3505 ;	src/main.c:423: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      003145 7E 00            [12] 3506 	mov	r6,#0x00
      003147 7F 00            [12] 3507 	mov	r7,#0x00
      003149                       3508 00108$:
      003149 C3               [12] 3509 	clr	c
      00314A EE               [12] 3510 	mov	a,r6
      00314B 94 02            [12] 3511 	subb	a,#0x02
      00314D EF               [12] 3512 	mov	a,r7
      00314E 64 80            [12] 3513 	xrl	a,#0x80
      003150 94 80            [12] 3514 	subb	a,#0x80
      003152 40 03            [24] 3515 	jc	00133$
      003154 02 31 E8         [24] 3516 	ljmp	00103$
      003157                       3517 00133$:
                                   3518 ;	src/main.c:425: if (static_buffers[i].buffer != NULL) 
      003157 90 20 9A         [24] 3519 	mov	dptr,#__mulint_PARM_2
      00315A EE               [12] 3520 	mov	a,r6
      00315B F0               [24] 3521 	movx	@dptr,a
      00315C EF               [12] 3522 	mov	a,r7
      00315D A3               [24] 3523 	inc	dptr
      00315E F0               [24] 3524 	movx	@dptr,a
      00315F 90 00 0B         [24] 3525 	mov	dptr,#0x000b
      003162 C0 07            [24] 3526 	push	ar7
      003164 C0 06            [24] 3527 	push	ar6
      003166 12 45 02         [24] 3528 	lcall	__mulint
      003169 AC 82            [24] 3529 	mov	r4,dpl
      00316B AD 83            [24] 3530 	mov	r5,dph
      00316D D0 06            [24] 3531 	pop	ar6
      00316F D0 07            [24] 3532 	pop	ar7
      003171 EC               [12] 3533 	mov	a,r4
      003172 24 01            [12] 3534 	add	a,#_static_buffers
      003174 F5 82            [12] 3535 	mov	dpl,a
      003176 ED               [12] 3536 	mov	a,r5
      003177 34 00            [12] 3537 	addc	a,#(_static_buffers >> 8)
      003179 F5 83            [12] 3538 	mov	dph,a
      00317B E0               [24] 3539 	movx	a,@dptr
      00317C FA               [12] 3540 	mov	r2,a
      00317D A3               [24] 3541 	inc	dptr
      00317E E0               [24] 3542 	movx	a,@dptr
      00317F FB               [12] 3543 	mov	r3,a
      003180 4A               [12] 3544 	orl	a,r2
      003181 60 5D            [24] 3545 	jz	00109$
                                   3546 ;	src/main.c:427: memset(static_buffers[i].buffer, 0x00, static_buffers[i].size);
      003183 C0 06            [24] 3547 	push	ar6
      003185 C0 07            [24] 3548 	push	ar7
      003187 8B 01            [24] 3549 	mov	ar1,r3
      003189 7B 00            [12] 3550 	mov	r3,#0x00
      00318B EC               [12] 3551 	mov	a,r4
      00318C 24 01            [12] 3552 	add	a,#_static_buffers
      00318E FC               [12] 3553 	mov	r4,a
      00318F ED               [12] 3554 	mov	a,r5
      003190 34 00            [12] 3555 	addc	a,#(_static_buffers >> 8)
      003192 FD               [12] 3556 	mov	r5,a
      003193 8C 82            [24] 3557 	mov	dpl,r4
      003195 8D 83            [24] 3558 	mov	dph,r5
      003197 A3               [24] 3559 	inc	dptr
      003198 A3               [24] 3560 	inc	dptr
      003199 A3               [24] 3561 	inc	dptr
      00319A A3               [24] 3562 	inc	dptr
      00319B E0               [24] 3563 	movx	a,@dptr
      00319C F8               [12] 3564 	mov	r0,a
      00319D A3               [24] 3565 	inc	dptr
      00319E E0               [24] 3566 	movx	a,@dptr
      00319F FF               [12] 3567 	mov	r7,a
      0031A0 90 20 88         [24] 3568 	mov	dptr,#_memset_PARM_2
      0031A3 E4               [12] 3569 	clr	a
      0031A4 F0               [24] 3570 	movx	@dptr,a
      0031A5 90 20 89         [24] 3571 	mov	dptr,#_memset_PARM_3
      0031A8 E8               [12] 3572 	mov	a,r0
      0031A9 F0               [24] 3573 	movx	@dptr,a
      0031AA EF               [12] 3574 	mov	a,r7
      0031AB A3               [24] 3575 	inc	dptr
      0031AC F0               [24] 3576 	movx	@dptr,a
      0031AD 8A 82            [24] 3577 	mov	dpl,r2
      0031AF 89 83            [24] 3578 	mov	dph,r1
      0031B1 8B F0            [24] 3579 	mov	b,r3
      0031B3 C0 07            [24] 3580 	push	ar7
      0031B5 C0 06            [24] 3581 	push	ar6
      0031B7 C0 05            [24] 3582 	push	ar5
      0031B9 C0 04            [24] 3583 	push	ar4
      0031BB 12 41 F6         [24] 3584 	lcall	_memset
      0031BE D0 04            [24] 3585 	pop	ar4
      0031C0 D0 05            [24] 3586 	pop	ar5
      0031C2 D0 06            [24] 3587 	pop	ar6
      0031C4 D0 07            [24] 3588 	pop	ar7
                                   3589 ;	src/main.c:428: static_buffers[i].curr_available_char = 0;
      0031C6 74 06            [12] 3590 	mov	a,#0x06
      0031C8 2C               [12] 3591 	add	a,r4
      0031C9 F5 82            [12] 3592 	mov	dpl,a
      0031CB E4               [12] 3593 	clr	a
      0031CC 3D               [12] 3594 	addc	a,r5
      0031CD F5 83            [12] 3595 	mov	dph,a
      0031CF E4               [12] 3596 	clr	a
      0031D0 F0               [24] 3597 	movx	@dptr,a
      0031D1 A3               [24] 3598 	inc	dptr
      0031D2 F0               [24] 3599 	movx	@dptr,a
                                   3600 ;	src/main.c:429: static_buffers[i].alphabet_chars = 0; 
      0031D3 8C 82            [24] 3601 	mov	dpl,r4
      0031D5 8D 83            [24] 3602 	mov	dph,r5
      0031D7 A3               [24] 3603 	inc	dptr
      0031D8 A3               [24] 3604 	inc	dptr
      0031D9 F0               [24] 3605 	movx	@dptr,a
      0031DA A3               [24] 3606 	inc	dptr
      0031DB F0               [24] 3607 	movx	@dptr,a
                                   3608 ;	src/main.c:439: curr = curr->next;
      0031DC D0 07            [24] 3609 	pop	ar7
      0031DE D0 06            [24] 3610 	pop	ar6
                                   3611 ;	src/main.c:429: static_buffers[i].alphabet_chars = 0; 
      0031E0                       3612 00109$:
                                   3613 ;	src/main.c:423: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      0031E0 0E               [12] 3614 	inc	r6
      0031E1 BE 00 01         [24] 3615 	cjne	r6,#0x00,00135$
      0031E4 0F               [12] 3616 	inc	r7
      0031E5                       3617 00135$:
      0031E5 02 31 49         [24] 3618 	ljmp	00108$
      0031E8                       3619 00103$:
                                   3620 ;	src/main.c:433: buffer_t *curr = dynamic_buffers_list.head;
      0031E8 90 20 D3         [24] 3621 	mov	dptr,#_dynamic_buffers_list
      0031EB E0               [24] 3622 	movx	a,@dptr
      0031EC FD               [12] 3623 	mov	r5,a
      0031ED A3               [24] 3624 	inc	dptr
      0031EE E0               [24] 3625 	movx	a,@dptr
      0031EF FE               [12] 3626 	mov	r6,a
      0031F0 A3               [24] 3627 	inc	dptr
      0031F1 E0               [24] 3628 	movx	a,@dptr
      0031F2 FF               [12] 3629 	mov	r7,a
      0031F3 90 00 36         [24] 3630 	mov	dptr,#_percent_command_handler_curr_65537_165
      0031F6 ED               [12] 3631 	mov	a,r5
      0031F7 F0               [24] 3632 	movx	@dptr,a
      0031F8 EE               [12] 3633 	mov	a,r6
      0031F9 A3               [24] 3634 	inc	dptr
      0031FA F0               [24] 3635 	movx	@dptr,a
      0031FB EF               [12] 3636 	mov	a,r7
      0031FC A3               [24] 3637 	inc	dptr
      0031FD F0               [24] 3638 	movx	@dptr,a
                                   3639 ;	src/main.c:434: while (curr != NULL)
      0031FE                       3640 00104$:
      0031FE 90 00 36         [24] 3641 	mov	dptr,#_percent_command_handler_curr_65537_165
      003201 E0               [24] 3642 	movx	a,@dptr
      003202 FD               [12] 3643 	mov	r5,a
      003203 A3               [24] 3644 	inc	dptr
      003204 E0               [24] 3645 	movx	a,@dptr
      003205 FE               [12] 3646 	mov	r6,a
      003206 A3               [24] 3647 	inc	dptr
      003207 E0               [24] 3648 	movx	a,@dptr
      003208 FF               [12] 3649 	mov	r7,a
      003209 ED               [12] 3650 	mov	a,r5
      00320A 4E               [12] 3651 	orl	a,r6
      00320B 70 01            [24] 3652 	jnz	00136$
      00320D 22               [24] 3653 	ret
      00320E                       3654 00136$:
                                   3655 ;	src/main.c:436: memset(curr->buffer, 0x00, curr->size);
      00320E 8D 82            [24] 3656 	mov	dpl,r5
      003210 8E 83            [24] 3657 	mov	dph,r6
      003212 8F F0            [24] 3658 	mov	b,r7
      003214 12 4F 9C         [24] 3659 	lcall	__gptrget
      003217 FB               [12] 3660 	mov	r3,a
      003218 A3               [24] 3661 	inc	dptr
      003219 12 4F 9C         [24] 3662 	lcall	__gptrget
      00321C FC               [12] 3663 	mov	r4,a
      00321D 8B 51            [24] 3664 	mov	_percent_command_handler_sloc0_1_0,r3
      00321F 8C 52            [24] 3665 	mov	(_percent_command_handler_sloc0_1_0 + 1),r4
      003221 75 53 00         [24] 3666 	mov	(_percent_command_handler_sloc0_1_0 + 2),#0x00
      003224 74 04            [12] 3667 	mov	a,#0x04
      003226 2D               [12] 3668 	add	a,r5
      003227 F8               [12] 3669 	mov	r0,a
      003228 E4               [12] 3670 	clr	a
      003229 3E               [12] 3671 	addc	a,r6
      00322A F9               [12] 3672 	mov	r1,a
      00322B 8F 04            [24] 3673 	mov	ar4,r7
      00322D 88 82            [24] 3674 	mov	dpl,r0
      00322F 89 83            [24] 3675 	mov	dph,r1
      003231 8C F0            [24] 3676 	mov	b,r4
      003233 12 4F 9C         [24] 3677 	lcall	__gptrget
      003236 F8               [12] 3678 	mov	r0,a
      003237 A3               [24] 3679 	inc	dptr
      003238 12 4F 9C         [24] 3680 	lcall	__gptrget
      00323B F9               [12] 3681 	mov	r1,a
      00323C 90 20 88         [24] 3682 	mov	dptr,#_memset_PARM_2
      00323F E4               [12] 3683 	clr	a
      003240 F0               [24] 3684 	movx	@dptr,a
      003241 90 20 89         [24] 3685 	mov	dptr,#_memset_PARM_3
      003244 E8               [12] 3686 	mov	a,r0
      003245 F0               [24] 3687 	movx	@dptr,a
      003246 E9               [12] 3688 	mov	a,r1
      003247 A3               [24] 3689 	inc	dptr
      003248 F0               [24] 3690 	movx	@dptr,a
      003249 85 51 82         [24] 3691 	mov	dpl,_percent_command_handler_sloc0_1_0
      00324C 85 52 83         [24] 3692 	mov	dph,(_percent_command_handler_sloc0_1_0 + 1)
      00324F 85 53 F0         [24] 3693 	mov	b,(_percent_command_handler_sloc0_1_0 + 2)
      003252 C0 07            [24] 3694 	push	ar7
      003254 C0 06            [24] 3695 	push	ar6
      003256 C0 05            [24] 3696 	push	ar5
      003258 12 41 F6         [24] 3697 	lcall	_memset
      00325B D0 05            [24] 3698 	pop	ar5
      00325D D0 06            [24] 3699 	pop	ar6
      00325F D0 07            [24] 3700 	pop	ar7
                                   3701 ;	src/main.c:437: curr->curr_available_char = 0;
      003261 74 06            [12] 3702 	mov	a,#0x06
      003263 2D               [12] 3703 	add	a,r5
      003264 FA               [12] 3704 	mov	r2,a
      003265 E4               [12] 3705 	clr	a
      003266 3E               [12] 3706 	addc	a,r6
      003267 FB               [12] 3707 	mov	r3,a
      003268 8F 04            [24] 3708 	mov	ar4,r7
      00326A 8A 82            [24] 3709 	mov	dpl,r2
      00326C 8B 83            [24] 3710 	mov	dph,r3
      00326E 8C F0            [24] 3711 	mov	b,r4
      003270 E4               [12] 3712 	clr	a
      003271 12 43 42         [24] 3713 	lcall	__gptrput
      003274 A3               [24] 3714 	inc	dptr
      003275 12 43 42         [24] 3715 	lcall	__gptrput
                                   3716 ;	src/main.c:438: curr->alphabet_chars = 0; 
      003278 74 02            [12] 3717 	mov	a,#0x02
      00327A 2D               [12] 3718 	add	a,r5
      00327B FA               [12] 3719 	mov	r2,a
      00327C E4               [12] 3720 	clr	a
      00327D 3E               [12] 3721 	addc	a,r6
      00327E FB               [12] 3722 	mov	r3,a
      00327F 8F 04            [24] 3723 	mov	ar4,r7
      003281 8A 82            [24] 3724 	mov	dpl,r2
      003283 8B 83            [24] 3725 	mov	dph,r3
      003285 8C F0            [24] 3726 	mov	b,r4
      003287 E4               [12] 3727 	clr	a
      003288 12 43 42         [24] 3728 	lcall	__gptrput
      00328B A3               [24] 3729 	inc	dptr
      00328C 12 43 42         [24] 3730 	lcall	__gptrput
                                   3731 ;	src/main.c:439: curr = curr->next;
      00328F 74 08            [12] 3732 	mov	a,#0x08
      003291 2D               [12] 3733 	add	a,r5
      003292 FD               [12] 3734 	mov	r5,a
      003293 E4               [12] 3735 	clr	a
      003294 3E               [12] 3736 	addc	a,r6
      003295 FE               [12] 3737 	mov	r6,a
      003296 8D 82            [24] 3738 	mov	dpl,r5
      003298 8E 83            [24] 3739 	mov	dph,r6
      00329A 8F F0            [24] 3740 	mov	b,r7
      00329C 12 4F 9C         [24] 3741 	lcall	__gptrget
      00329F FD               [12] 3742 	mov	r5,a
      0032A0 A3               [24] 3743 	inc	dptr
      0032A1 12 4F 9C         [24] 3744 	lcall	__gptrget
      0032A4 FE               [12] 3745 	mov	r6,a
      0032A5 A3               [24] 3746 	inc	dptr
      0032A6 12 4F 9C         [24] 3747 	lcall	__gptrget
      0032A9 FF               [12] 3748 	mov	r7,a
      0032AA 90 00 36         [24] 3749 	mov	dptr,#_percent_command_handler_curr_65537_165
      0032AD ED               [12] 3750 	mov	a,r5
      0032AE F0               [24] 3751 	movx	@dptr,a
      0032AF EE               [12] 3752 	mov	a,r6
      0032B0 A3               [24] 3753 	inc	dptr
      0032B1 F0               [24] 3754 	movx	@dptr,a
      0032B2 EF               [12] 3755 	mov	a,r7
      0032B3 A3               [24] 3756 	inc	dptr
      0032B4 F0               [24] 3757 	movx	@dptr,a
                                   3758 ;	src/main.c:441: }
      0032B5 02 31 FE         [24] 3759 	ljmp	00104$
                                   3760 ;------------------------------------------------------------
                                   3761 ;Allocation info for local variables in function 'dollar_sign_command_handler'
                                   3762 ;------------------------------------------------------------
                                   3763 ;sloc0                     Allocated with name '_dollar_sign_command_handler_sloc0_1_0'
                                   3764 ;buffer_3                  Allocated with name '_dollar_sign_command_handler_buffer_3_65537_169'
                                   3765 ;size                      Allocated with name '_dollar_sign_command_handler_size_65537_169'
                                   3766 ;------------------------------------------------------------
                                   3767 ;	src/main.c:446: void dollar_sign_command_handler()
                                   3768 ;	-----------------------------------------
                                   3769 ;	 function dollar_sign_command_handler
                                   3770 ;	-----------------------------------------
      0032B8                       3771 _dollar_sign_command_handler:
                                   3772 ;	src/main.c:448: command_header("Copy buffer_0 into buffer_3");
      0032B8 90 53 29         [24] 3773 	mov	dptr,#___str_26
      0032BB 75 F0 80         [24] 3774 	mov	b,#0x80
      0032BE 12 29 51         [24] 3775 	lcall	_command_header
                                   3776 ;	src/main.c:449: P1_0 = ON;
                                   3777 ;	assignBit
      0032C1 D2 90            [12] 3778 	setb	_P1_0
                                   3779 ;	src/main.c:450: if (dynamic_buffers_list.head == NULL
      0032C3 90 20 D3         [24] 3780 	mov	dptr,#_dynamic_buffers_list
      0032C6 E0               [24] 3781 	movx	a,@dptr
      0032C7 FE               [12] 3782 	mov	r6,a
      0032C8 A3               [24] 3783 	inc	dptr
      0032C9 E0               [24] 3784 	movx	a,@dptr
      0032CA FD               [12] 3785 	mov	r5,a
      0032CB A3               [24] 3786 	inc	dptr
      0032CC E0               [24] 3787 	movx	a,@dptr
      0032CD FF               [12] 3788 	mov	r7,a
      0032CE EE               [12] 3789 	mov	a,r6
      0032CF 4D               [12] 3790 	orl	a,r5
      0032D0 60 1F            [24] 3791 	jz	00101$
                                   3792 ;	src/main.c:451: || dynamic_buffers_list.head->next == NULL) 
      0032D2 74 08            [12] 3793 	mov	a,#0x08
      0032D4 2E               [12] 3794 	add	a,r6
      0032D5 FE               [12] 3795 	mov	r6,a
      0032D6 E4               [12] 3796 	clr	a
      0032D7 3D               [12] 3797 	addc	a,r5
      0032D8 FD               [12] 3798 	mov	r5,a
      0032D9 8E 82            [24] 3799 	mov	dpl,r6
      0032DB 8D 83            [24] 3800 	mov	dph,r5
      0032DD 8F F0            [24] 3801 	mov	b,r7
      0032DF 12 4F 9C         [24] 3802 	lcall	__gptrget
      0032E2 FE               [12] 3803 	mov	r6,a
      0032E3 A3               [24] 3804 	inc	dptr
      0032E4 12 4F 9C         [24] 3805 	lcall	__gptrget
      0032E7 FD               [12] 3806 	mov	r5,a
      0032E8 A3               [24] 3807 	inc	dptr
      0032E9 12 4F 9C         [24] 3808 	lcall	__gptrget
      0032EC FF               [12] 3809 	mov	r7,a
      0032ED EE               [12] 3810 	mov	a,r6
      0032EE 4D               [12] 3811 	orl	a,r5
      0032EF 70 18            [24] 3812 	jnz	00102$
      0032F1                       3813 00101$:
                                   3814 ;	src/main.c:453: P1_0 = OFF;
                                   3815 ;	assignBit
      0032F1 C2 90            [12] 3816 	clr	_P1_0
                                   3817 ;	src/main.c:454: printf("\r\n buffer_3 not allocated; exiting");
      0032F3 74 45            [12] 3818 	mov	a,#___str_27
      0032F5 C0 E0            [24] 3819 	push	acc
      0032F7 74 53            [12] 3820 	mov	a,#(___str_27 >> 8)
      0032F9 C0 E0            [24] 3821 	push	acc
      0032FB 74 80            [12] 3822 	mov	a,#0x80
      0032FD C0 E0            [24] 3823 	push	acc
      0032FF 12 45 70         [24] 3824 	lcall	_printf
      003302 15 81            [12] 3825 	dec	sp
      003304 15 81            [12] 3826 	dec	sp
      003306 15 81            [12] 3827 	dec	sp
                                   3828 ;	src/main.c:455: return; 
      003308 22               [24] 3829 	ret
      003309                       3830 00102$:
                                   3831 ;	src/main.c:457: buffer_t* buffer_3 = dynamic_buffers_list.head->next;
      003309 8E 02            [24] 3832 	mov	ar2,r6
      00330B 8D 03            [24] 3833 	mov	ar3,r5
      00330D 8F 04            [24] 3834 	mov	ar4,r7
                                   3835 ;	src/main.c:458: size_t size = (buffer_3->size > static_buffers[0].size) ? static_buffers[0].size : buffer_3->size; 
      00330F 74 04            [12] 3836 	mov	a,#0x04
      003311 2E               [12] 3837 	add	a,r6
      003312 FE               [12] 3838 	mov	r6,a
      003313 E4               [12] 3839 	clr	a
      003314 3D               [12] 3840 	addc	a,r5
      003315 FD               [12] 3841 	mov	r5,a
      003316 8E 82            [24] 3842 	mov	dpl,r6
      003318 8D 83            [24] 3843 	mov	dph,r5
      00331A 8F F0            [24] 3844 	mov	b,r7
      00331C 12 4F 9C         [24] 3845 	lcall	__gptrget
      00331F FE               [12] 3846 	mov	r6,a
      003320 A3               [24] 3847 	inc	dptr
      003321 12 4F 9C         [24] 3848 	lcall	__gptrget
      003324 FF               [12] 3849 	mov	r7,a
      003325 90 00 05         [24] 3850 	mov	dptr,#(_static_buffers + 0x0004)
      003328 E0               [24] 3851 	movx	a,@dptr
      003329 F9               [12] 3852 	mov	r1,a
      00332A A3               [24] 3853 	inc	dptr
      00332B E0               [24] 3854 	movx	a,@dptr
      00332C FD               [12] 3855 	mov	r5,a
      00332D C3               [12] 3856 	clr	c
      00332E E9               [12] 3857 	mov	a,r1
      00332F 9E               [12] 3858 	subb	a,r6
      003330 ED               [12] 3859 	mov	a,r5
      003331 9F               [12] 3860 	subb	a,r7
      003332 50 06            [24] 3861 	jnc	00106$
      003334 89 54            [24] 3862 	mov	_dollar_sign_command_handler_sloc0_1_0,r1
      003336 8D 55            [24] 3863 	mov	(_dollar_sign_command_handler_sloc0_1_0 + 1),r5
      003338 80 04            [24] 3864 	sjmp	00107$
      00333A                       3865 00106$:
      00333A 8E 54            [24] 3866 	mov	_dollar_sign_command_handler_sloc0_1_0,r6
      00333C 8F 55            [24] 3867 	mov	(_dollar_sign_command_handler_sloc0_1_0 + 1),r7
      00333E                       3868 00107$:
                                   3869 ;	src/main.c:459: memcpy(buffer_3->buffer, static_buffers[0].buffer, size);
      00333E 8A 82            [24] 3870 	mov	dpl,r2
      003340 8B 83            [24] 3871 	mov	dph,r3
      003342 8C F0            [24] 3872 	mov	b,r4
      003344 12 4F 9C         [24] 3873 	lcall	__gptrget
      003347 FE               [12] 3874 	mov	r6,a
      003348 A3               [24] 3875 	inc	dptr
      003349 12 4F 9C         [24] 3876 	lcall	__gptrget
      00334C F8               [12] 3877 	mov	r0,a
      00334D 7F 00            [12] 3878 	mov	r7,#0x00
      00334F 90 00 01         [24] 3879 	mov	dptr,#_static_buffers
      003352 E0               [24] 3880 	movx	a,@dptr
      003353 F9               [12] 3881 	mov	r1,a
      003354 A3               [24] 3882 	inc	dptr
      003355 E0               [24] 3883 	movx	a,@dptr
      003356 FD               [12] 3884 	mov	r5,a
      003357 90 20 80         [24] 3885 	mov	dptr,#___memcpy_PARM_2
      00335A E9               [12] 3886 	mov	a,r1
      00335B F0               [24] 3887 	movx	@dptr,a
      00335C ED               [12] 3888 	mov	a,r5
      00335D A3               [24] 3889 	inc	dptr
      00335E F0               [24] 3890 	movx	@dptr,a
      00335F E4               [12] 3891 	clr	a
      003360 A3               [24] 3892 	inc	dptr
      003361 F0               [24] 3893 	movx	@dptr,a
      003362 90 20 83         [24] 3894 	mov	dptr,#___memcpy_PARM_3
      003365 E5 54            [12] 3895 	mov	a,_dollar_sign_command_handler_sloc0_1_0
      003367 F0               [24] 3896 	movx	@dptr,a
      003368 E5 55            [12] 3897 	mov	a,(_dollar_sign_command_handler_sloc0_1_0 + 1)
      00336A A3               [24] 3898 	inc	dptr
      00336B F0               [24] 3899 	movx	@dptr,a
      00336C 8E 82            [24] 3900 	mov	dpl,r6
      00336E 88 83            [24] 3901 	mov	dph,r0
      003370 8F F0            [24] 3902 	mov	b,r7
      003372 C0 04            [24] 3903 	push	ar4
      003374 C0 03            [24] 3904 	push	ar3
      003376 C0 02            [24] 3905 	push	ar2
      003378 12 41 82         [24] 3906 	lcall	___memcpy
      00337B D0 02            [24] 3907 	pop	ar2
      00337D D0 03            [24] 3908 	pop	ar3
      00337F D0 04            [24] 3909 	pop	ar4
                                   3910 ;	src/main.c:460: buffer_3->alphabet_chars = static_buffers[0].alphabet_chars;
      003381 74 02            [12] 3911 	mov	a,#0x02
      003383 2A               [12] 3912 	add	a,r2
      003384 FD               [12] 3913 	mov	r5,a
      003385 E4               [12] 3914 	clr	a
      003386 3B               [12] 3915 	addc	a,r3
      003387 FE               [12] 3916 	mov	r6,a
      003388 8C 07            [24] 3917 	mov	ar7,r4
      00338A 90 00 03         [24] 3918 	mov	dptr,#(_static_buffers + 0x0002)
      00338D E0               [24] 3919 	movx	a,@dptr
      00338E F8               [12] 3920 	mov	r0,a
      00338F A3               [24] 3921 	inc	dptr
      003390 E0               [24] 3922 	movx	a,@dptr
      003391 F9               [12] 3923 	mov	r1,a
      003392 8D 82            [24] 3924 	mov	dpl,r5
      003394 8E 83            [24] 3925 	mov	dph,r6
      003396 8F F0            [24] 3926 	mov	b,r7
      003398 E8               [12] 3927 	mov	a,r0
      003399 12 43 42         [24] 3928 	lcall	__gptrput
      00339C A3               [24] 3929 	inc	dptr
      00339D E9               [12] 3930 	mov	a,r1
      00339E 12 43 42         [24] 3931 	lcall	__gptrput
                                   3932 ;	src/main.c:461: buffer_3->curr_available_char = static_buffers[0].curr_available_char;
      0033A1 74 06            [12] 3933 	mov	a,#0x06
      0033A3 2A               [12] 3934 	add	a,r2
      0033A4 FA               [12] 3935 	mov	r2,a
      0033A5 E4               [12] 3936 	clr	a
      0033A6 3B               [12] 3937 	addc	a,r3
      0033A7 FB               [12] 3938 	mov	r3,a
      0033A8 90 00 07         [24] 3939 	mov	dptr,#(_static_buffers + 0x0006)
      0033AB E0               [24] 3940 	movx	a,@dptr
      0033AC FE               [12] 3941 	mov	r6,a
      0033AD A3               [24] 3942 	inc	dptr
      0033AE E0               [24] 3943 	movx	a,@dptr
      0033AF FF               [12] 3944 	mov	r7,a
      0033B0 8A 82            [24] 3945 	mov	dpl,r2
      0033B2 8B 83            [24] 3946 	mov	dph,r3
      0033B4 8C F0            [24] 3947 	mov	b,r4
      0033B6 EE               [12] 3948 	mov	a,r6
      0033B7 12 43 42         [24] 3949 	lcall	__gptrput
      0033BA A3               [24] 3950 	inc	dptr
      0033BB EF               [12] 3951 	mov	a,r7
      0033BC 12 43 42         [24] 3952 	lcall	__gptrput
                                   3953 ;	src/main.c:462: P1_0 = OFF; 
                                   3954 ;	assignBit
      0033BF C2 90            [12] 3955 	clr	_P1_0
                                   3956 ;	src/main.c:463: printf("\r\n Done");
      0033C1 74 68            [12] 3957 	mov	a,#___str_28
      0033C3 C0 E0            [24] 3958 	push	acc
      0033C5 74 53            [12] 3959 	mov	a,#(___str_28 >> 8)
      0033C7 C0 E0            [24] 3960 	push	acc
      0033C9 74 80            [12] 3961 	mov	a,#0x80
      0033CB C0 E0            [24] 3962 	push	acc
      0033CD 12 45 70         [24] 3963 	lcall	_printf
      0033D0 15 81            [12] 3964 	dec	sp
      0033D2 15 81            [12] 3965 	dec	sp
      0033D4 15 81            [12] 3966 	dec	sp
                                   3967 ;	src/main.c:464: }
      0033D6 22               [24] 3968 	ret
                                   3969 ;------------------------------------------------------------
                                   3970 ;Allocation info for local variables in function 'hashtag_command_handler'
                                   3971 ;------------------------------------------------------------
                                   3972 ;c                         Allocated with name '_hashtag_command_handler_c_196609_174'
                                   3973 ;buffer_3                  Allocated with name '_hashtag_command_handler_buffer_3_65537_172'
                                   3974 ;i                         Allocated with name '_hashtag_command_handler_i_131073_173'
                                   3975 ;------------------------------------------------------------
                                   3976 ;	src/main.c:469: void hashtag_command_handler()
                                   3977 ;	-----------------------------------------
                                   3978 ;	 function hashtag_command_handler
                                   3979 ;	-----------------------------------------
      0033D7                       3980 _hashtag_command_handler:
                                   3981 ;	src/main.c:471: command_header("Convert buffer_3 chars to lowercase");
      0033D7 90 53 70         [24] 3982 	mov	dptr,#___str_29
      0033DA 75 F0 80         [24] 3983 	mov	b,#0x80
      0033DD 12 29 51         [24] 3984 	lcall	_command_header
                                   3985 ;	src/main.c:472: P1_0 = ON;
                                   3986 ;	assignBit
      0033E0 D2 90            [12] 3987 	setb	_P1_0
                                   3988 ;	src/main.c:473: if (dynamic_buffers_list.head == NULL
      0033E2 90 20 D3         [24] 3989 	mov	dptr,#_dynamic_buffers_list
      0033E5 E0               [24] 3990 	movx	a,@dptr
      0033E6 FD               [12] 3991 	mov	r5,a
      0033E7 A3               [24] 3992 	inc	dptr
      0033E8 E0               [24] 3993 	movx	a,@dptr
      0033E9 FE               [12] 3994 	mov	r6,a
      0033EA A3               [24] 3995 	inc	dptr
      0033EB E0               [24] 3996 	movx	a,@dptr
      0033EC FF               [12] 3997 	mov	r7,a
      0033ED ED               [12] 3998 	mov	a,r5
      0033EE 4E               [12] 3999 	orl	a,r6
      0033EF 60 1F            [24] 4000 	jz	00101$
                                   4001 ;	src/main.c:474: || dynamic_buffers_list.head->next == NULL) 
      0033F1 74 08            [12] 4002 	mov	a,#0x08
      0033F3 2D               [12] 4003 	add	a,r5
      0033F4 FD               [12] 4004 	mov	r5,a
      0033F5 E4               [12] 4005 	clr	a
      0033F6 3E               [12] 4006 	addc	a,r6
      0033F7 FE               [12] 4007 	mov	r6,a
      0033F8 8D 82            [24] 4008 	mov	dpl,r5
      0033FA 8E 83            [24] 4009 	mov	dph,r6
      0033FC 8F F0            [24] 4010 	mov	b,r7
      0033FE 12 4F 9C         [24] 4011 	lcall	__gptrget
      003401 FD               [12] 4012 	mov	r5,a
      003402 A3               [24] 4013 	inc	dptr
      003403 12 4F 9C         [24] 4014 	lcall	__gptrget
      003406 FE               [12] 4015 	mov	r6,a
      003407 A3               [24] 4016 	inc	dptr
      003408 12 4F 9C         [24] 4017 	lcall	__gptrget
      00340B FF               [12] 4018 	mov	r7,a
      00340C ED               [12] 4019 	mov	a,r5
      00340D 4E               [12] 4020 	orl	a,r6
      00340E 70 03            [24] 4021 	jnz	00102$
      003410                       4022 00101$:
                                   4023 ;	src/main.c:476: P1_0 = OFF;
                                   4024 ;	assignBit
      003410 C2 90            [12] 4025 	clr	_P1_0
                                   4026 ;	src/main.c:477: return; 
      003412 22               [24] 4027 	ret
      003413                       4028 00102$:
                                   4029 ;	src/main.c:480: buffer_t *buffer_3 = dynamic_buffers_list.head->next;
      003413 8D 02            [24] 4030 	mov	ar2,r5
      003415 8E 03            [24] 4031 	mov	ar3,r6
      003417 8F 04            [24] 4032 	mov	ar4,r7
                                   4033 ;	src/main.c:481: for(size_t i = 0; i < buffer_3->curr_available_char; i++)
      003419 74 06            [12] 4034 	mov	a,#0x06
      00341B 2D               [12] 4035 	add	a,r5
      00341C FD               [12] 4036 	mov	r5,a
      00341D E4               [12] 4037 	clr	a
      00341E 3E               [12] 4038 	addc	a,r6
      00341F FE               [12] 4039 	mov	r6,a
      003420 78 00            [12] 4040 	mov	r0,#0x00
      003422 79 00            [12] 4041 	mov	r1,#0x00
      003424                       4042 00109$:
      003424 C0 02            [24] 4043 	push	ar2
      003426 C0 03            [24] 4044 	push	ar3
      003428 C0 04            [24] 4045 	push	ar4
      00342A 8D 82            [24] 4046 	mov	dpl,r5
      00342C 8E 83            [24] 4047 	mov	dph,r6
      00342E 8F F0            [24] 4048 	mov	b,r7
      003430 12 4F 9C         [24] 4049 	lcall	__gptrget
      003433 FB               [12] 4050 	mov	r3,a
      003434 A3               [24] 4051 	inc	dptr
      003435 12 4F 9C         [24] 4052 	lcall	__gptrget
      003438 FC               [12] 4053 	mov	r4,a
      003439 C3               [12] 4054 	clr	c
      00343A E8               [12] 4055 	mov	a,r0
      00343B 9B               [12] 4056 	subb	a,r3
      00343C E9               [12] 4057 	mov	a,r1
      00343D 9C               [12] 4058 	subb	a,r4
      00343E D0 04            [24] 4059 	pop	ar4
      003440 D0 03            [24] 4060 	pop	ar3
      003442 D0 02            [24] 4061 	pop	ar2
      003444 50 6B            [24] 4062 	jnc	00107$
                                   4063 ;	src/main.c:483: register char c = buffer_3->buffer[i];
      003446 C0 05            [24] 4064 	push	ar5
      003448 C0 06            [24] 4065 	push	ar6
      00344A C0 07            [24] 4066 	push	ar7
      00344C 8A 82            [24] 4067 	mov	dpl,r2
      00344E 8B 83            [24] 4068 	mov	dph,r3
      003450 8C F0            [24] 4069 	mov	b,r4
      003452 12 4F 9C         [24] 4070 	lcall	__gptrget
      003455 FE               [12] 4071 	mov	r6,a
      003456 A3               [24] 4072 	inc	dptr
      003457 12 4F 9C         [24] 4073 	lcall	__gptrget
      00345A FF               [12] 4074 	mov	r7,a
      00345B E8               [12] 4075 	mov	a,r0
      00345C 2E               [12] 4076 	add	a,r6
      00345D F5 82            [12] 4077 	mov	dpl,a
      00345F E9               [12] 4078 	mov	a,r1
      003460 3F               [12] 4079 	addc	a,r7
      003461 F5 83            [12] 4080 	mov	dph,a
      003463 E0               [24] 4081 	movx	a,@dptr
      003464 F5 56            [12] 4082 	mov	_hashtag_command_handler_c_196609_174,a
                                   4083 ;	src/main.c:484: if (c <= 'Z' || c >= 'A')
      003466 C3               [12] 4084 	clr	c
      003467 74 5A            [12] 4085 	mov	a,#0x5a
      003469 95 56            [12] 4086 	subb	a,_hashtag_command_handler_c_196609_174
      00346B D0 07            [24] 4087 	pop	ar7
      00346D D0 06            [24] 4088 	pop	ar6
      00346F D0 05            [24] 4089 	pop	ar5
      003471 50 06            [24] 4090 	jnc	00104$
      003473 74 BF            [12] 4091 	mov	a,#0x100 - 0x41
      003475 25 56            [12] 4092 	add	a,_hashtag_command_handler_c_196609_174
      003477 50 30            [24] 4093 	jnc	00110$
      003479                       4094 00104$:
                                   4095 ;	src/main.c:486: buffer_3->buffer[i] |= LOWER_CASE_MASK;
      003479 C0 05            [24] 4096 	push	ar5
      00347B C0 06            [24] 4097 	push	ar6
      00347D C0 07            [24] 4098 	push	ar7
      00347F 8A 82            [24] 4099 	mov	dpl,r2
      003481 8B 83            [24] 4100 	mov	dph,r3
      003483 8C F0            [24] 4101 	mov	b,r4
      003485 12 4F 9C         [24] 4102 	lcall	__gptrget
      003488 FE               [12] 4103 	mov	r6,a
      003489 A3               [24] 4104 	inc	dptr
      00348A 12 4F 9C         [24] 4105 	lcall	__gptrget
      00348D FF               [12] 4106 	mov	r7,a
      00348E E8               [12] 4107 	mov	a,r0
      00348F 2E               [12] 4108 	add	a,r6
      003490 FE               [12] 4109 	mov	r6,a
      003491 E9               [12] 4110 	mov	a,r1
      003492 3F               [12] 4111 	addc	a,r7
      003493 FF               [12] 4112 	mov	r7,a
      003494 8E 82            [24] 4113 	mov	dpl,r6
      003496 8F 83            [24] 4114 	mov	dph,r7
      003498 E0               [24] 4115 	movx	a,@dptr
      003499 FD               [12] 4116 	mov	r5,a
      00349A 43 05 20         [24] 4117 	orl	ar5,#0x20
      00349D 8E 82            [24] 4118 	mov	dpl,r6
      00349F 8F 83            [24] 4119 	mov	dph,r7
      0034A1 ED               [12] 4120 	mov	a,r5
      0034A2 F0               [24] 4121 	movx	@dptr,a
                                   4122 ;	src/main.c:490: printf("\r\n Done");
      0034A3 D0 07            [24] 4123 	pop	ar7
      0034A5 D0 06            [24] 4124 	pop	ar6
      0034A7 D0 05            [24] 4125 	pop	ar5
                                   4126 ;	src/main.c:486: buffer_3->buffer[i] |= LOWER_CASE_MASK;
      0034A9                       4127 00110$:
                                   4128 ;	src/main.c:481: for(size_t i = 0; i < buffer_3->curr_available_char; i++)
      0034A9 08               [12] 4129 	inc	r0
      0034AA B8 00 01         [24] 4130 	cjne	r0,#0x00,00135$
      0034AD 09               [12] 4131 	inc	r1
      0034AE                       4132 00135$:
      0034AE 02 34 24         [24] 4133 	ljmp	00109$
      0034B1                       4134 00107$:
                                   4135 ;	src/main.c:489: P1_0 = OFF;
                                   4136 ;	assignBit
      0034B1 C2 90            [12] 4137 	clr	_P1_0
                                   4138 ;	src/main.c:490: printf("\r\n Done");
      0034B3 74 68            [12] 4139 	mov	a,#___str_28
      0034B5 C0 E0            [24] 4140 	push	acc
      0034B7 74 53            [12] 4141 	mov	a,#(___str_28 >> 8)
      0034B9 C0 E0            [24] 4142 	push	acc
      0034BB 74 80            [12] 4143 	mov	a,#0x80
      0034BD C0 E0            [24] 4144 	push	acc
      0034BF 12 45 70         [24] 4145 	lcall	_printf
      0034C2 15 81            [12] 4146 	dec	sp
      0034C4 15 81            [12] 4147 	dec	sp
      0034C6 15 81            [12] 4148 	dec	sp
                                   4149 ;	src/main.c:491: }
      0034C8 22               [24] 4150 	ret
                                   4151 ;------------------------------------------------------------
                                   4152 ;Allocation info for local variables in function 'plus_command_handler'
                                   4153 ;------------------------------------------------------------
                                   4154 ;size                      Allocated with name '_plus_command_handler_size_65537_177'
                                   4155 ;new_buffer                Allocated with name '_plus_command_handler_new_buffer_65538_179'
                                   4156 ;------------------------------------------------------------
                                   4157 ;	src/main.c:496: void plus_command_handler() 
                                   4158 ;	-----------------------------------------
                                   4159 ;	 function plus_command_handler
                                   4160 ;	-----------------------------------------
      0034C9                       4161 _plus_command_handler:
                                   4162 ;	src/main.c:498: command_header("\r\n Alloc Buffer");
      0034C9 90 53 94         [24] 4163 	mov	dptr,#___str_30
      0034CC 75 F0 80         [24] 4164 	mov	b,#0x80
      0034CF 12 29 51         [24] 4165 	lcall	_command_header
                                   4166 ;	src/main.c:500: while (true) {
      0034D2                       4167 00105$:
                                   4168 ;	src/main.c:501: printf("\r\nPlease enter a size for the new buffer, [200,600]: ");
      0034D2 74 A4            [12] 4169 	mov	a,#___str_31
      0034D4 C0 E0            [24] 4170 	push	acc
      0034D6 74 53            [12] 4171 	mov	a,#(___str_31 >> 8)
      0034D8 C0 E0            [24] 4172 	push	acc
      0034DA 74 80            [12] 4173 	mov	a,#0x80
      0034DC C0 E0            [24] 4174 	push	acc
      0034DE 12 45 70         [24] 4175 	lcall	_printf
      0034E1 15 81            [12] 4176 	dec	sp
      0034E3 15 81            [12] 4177 	dec	sp
      0034E5 15 81            [12] 4178 	dec	sp
                                   4179 ;	src/main.c:502: get_string();
      0034E7 12 39 C3         [24] 4180 	lcall	_get_string
                                   4181 ;	src/main.c:503: size = atoi(get_input_buffer());
      0034EA 12 39 BC         [24] 4182 	lcall	_get_input_buffer
      0034ED 12 42 1E         [24] 4183 	lcall	_atoi
      0034F0 AE 82            [24] 4184 	mov	r6,dpl
      0034F2 AF 83            [24] 4185 	mov	r7,dph
                                   4186 ;	src/main.c:504: if (size <= MAX_USER_DETERMINED_BUFFER_SZ && size >= MIN_USER_DETERMINED_BUFFER_SZ) break;
      0034F4 C3               [12] 4187 	clr	c
      0034F5 74 58            [12] 4188 	mov	a,#0x58
      0034F7 9E               [12] 4189 	subb	a,r6
      0034F8 74 82            [12] 4190 	mov	a,#(0x02 ^ 0x80)
      0034FA 8F F0            [24] 4191 	mov	b,r7
      0034FC 63 F0 80         [24] 4192 	xrl	b,#0x80
      0034FF 95 F0            [12] 4193 	subb	a,b
      003501 40 0A            [24] 4194 	jc	00102$
      003503 EE               [12] 4195 	mov	a,r6
      003504 94 C8            [12] 4196 	subb	a,#0xc8
      003506 EF               [12] 4197 	mov	a,r7
      003507 64 80            [12] 4198 	xrl	a,#0x80
      003509 94 80            [12] 4199 	subb	a,#0x80
      00350B 50 17            [24] 4200 	jnc	00106$
      00350D                       4201 00102$:
                                   4202 ;	src/main.c:505: printf("\r\nBuffer size invalid!! Please try again");
      00350D 74 DA            [12] 4203 	mov	a,#___str_32
      00350F C0 E0            [24] 4204 	push	acc
      003511 74 53            [12] 4205 	mov	a,#(___str_32 >> 8)
      003513 C0 E0            [24] 4206 	push	acc
      003515 74 80            [12] 4207 	mov	a,#0x80
      003517 C0 E0            [24] 4208 	push	acc
      003519 12 45 70         [24] 4209 	lcall	_printf
      00351C 15 81            [12] 4210 	dec	sp
      00351E 15 81            [12] 4211 	dec	sp
      003520 15 81            [12] 4212 	dec	sp
      003522 80 AE            [24] 4213 	sjmp	00105$
      003524                       4214 00106$:
                                   4215 ;	src/main.c:508: buffer_t *new_buffer = alloc_new_buffer((size_t) size);
      003524 8E 82            [24] 4216 	mov	dpl,r6
      003526 8F 83            [24] 4217 	mov	dph,r7
      003528 12 21 69         [24] 4218 	lcall	_alloc_new_buffer
      00352B AD 82            [24] 4219 	mov	r5,dpl
      00352D AE 83            [24] 4220 	mov	r6,dph
      00352F AF F0            [24] 4221 	mov	r7,b
                                   4222 ;	src/main.c:510: if (new_buffer == NULL)
      003531 ED               [12] 4223 	mov	a,r5
      003532 4E               [12] 4224 	orl	a,r6
      003533 70 16            [24] 4225 	jnz	00108$
                                   4226 ;	src/main.c:512: printf("\r\n Allocation failed; unable to allocate buffer");
      003535 74 03            [12] 4227 	mov	a,#___str_33
      003537 C0 E0            [24] 4228 	push	acc
      003539 74 54            [12] 4229 	mov	a,#(___str_33 >> 8)
      00353B C0 E0            [24] 4230 	push	acc
      00353D 74 80            [12] 4231 	mov	a,#0x80
      00353F C0 E0            [24] 4232 	push	acc
      003541 12 45 70         [24] 4233 	lcall	_printf
      003544 15 81            [12] 4234 	dec	sp
      003546 15 81            [12] 4235 	dec	sp
      003548 15 81            [12] 4236 	dec	sp
                                   4237 ;	src/main.c:513: return;
      00354A 22               [24] 4238 	ret
      00354B                       4239 00108$:
                                   4240 ;	src/main.c:516: append_to_buffer_list(&dynamic_buffers_list, new_buffer);
      00354B 90 20 4A         [24] 4241 	mov	dptr,#_append_to_buffer_list_PARM_2
      00354E ED               [12] 4242 	mov	a,r5
      00354F F0               [24] 4243 	movx	@dptr,a
      003550 EE               [12] 4244 	mov	a,r6
      003551 A3               [24] 4245 	inc	dptr
      003552 F0               [24] 4246 	movx	@dptr,a
      003553 EF               [12] 4247 	mov	a,r7
      003554 A3               [24] 4248 	inc	dptr
      003555 F0               [24] 4249 	movx	@dptr,a
      003556 90 20 D3         [24] 4250 	mov	dptr,#_dynamic_buffers_list
      003559 75 F0 00         [24] 4251 	mov	b,#0x00
      00355C 12 3B 2E         [24] 4252 	lcall	_append_to_buffer_list
                                   4253 ;	src/main.c:518: printf("\r\n Allocation successful!! New buffer added");
      00355F 74 33            [12] 4254 	mov	a,#___str_34
      003561 C0 E0            [24] 4255 	push	acc
      003563 74 54            [12] 4256 	mov	a,#(___str_34 >> 8)
      003565 C0 E0            [24] 4257 	push	acc
      003567 74 80            [12] 4258 	mov	a,#0x80
      003569 C0 E0            [24] 4259 	push	acc
      00356B 12 45 70         [24] 4260 	lcall	_printf
      00356E 15 81            [12] 4261 	dec	sp
      003570 15 81            [12] 4262 	dec	sp
      003572 15 81            [12] 4263 	dec	sp
                                   4264 ;	src/main.c:520: }
      003574 22               [24] 4265 	ret
                                   4266 ;------------------------------------------------------------
                                   4267 ;Allocation info for local variables in function 'minus_command_handler'
                                   4268 ;------------------------------------------------------------
                                   4269 ;length                    Allocated with name '_minus_command_handler_length_65537_182'
                                   4270 ;buffer_num                Allocated with name '_minus_command_handler_buffer_num_65538_184'
                                   4271 ;freed                     Allocated with name '_minus_command_handler_freed_131074_188'
                                   4272 ;------------------------------------------------------------
                                   4273 ;	src/main.c:525: void minus_command_handler() 
                                   4274 ;	-----------------------------------------
                                   4275 ;	 function minus_command_handler
                                   4276 ;	-----------------------------------------
      003575                       4277 _minus_command_handler:
                                   4278 ;	src/main.c:527: command_header("Free Buffer");
      003575 90 54 5F         [24] 4279 	mov	dptr,#___str_35
      003578 75 F0 80         [24] 4280 	mov	b,#0x80
      00357B 12 29 51         [24] 4281 	lcall	_command_header
                                   4282 ;	src/main.c:528: size_t length = ll_length(&dynamic_buffers_list);
      00357E 90 20 D3         [24] 4283 	mov	dptr,#_dynamic_buffers_list
      003581 75 F0 00         [24] 4284 	mov	b,#0x00
      003584 12 3E E7         [24] 4285 	lcall	_ll_length
      003587 AE 82            [24] 4286 	mov	r6,dpl
      003589 AF 83            [24] 4287 	mov	r7,dph
                                   4288 ;	src/main.c:529: if (length == 0)
      00358B EE               [12] 4289 	mov	a,r6
      00358C 4F               [12] 4290 	orl	a,r7
      00358D 70 16            [24] 4291 	jnz	00102$
                                   4292 ;	src/main.c:531: printf("\r\n No buffers to free");
      00358F 74 6B            [12] 4293 	mov	a,#___str_36
      003591 C0 E0            [24] 4294 	push	acc
      003593 74 54            [12] 4295 	mov	a,#(___str_36 >> 8)
      003595 C0 E0            [24] 4296 	push	acc
      003597 74 80            [12] 4297 	mov	a,#0x80
      003599 C0 E0            [24] 4298 	push	acc
      00359B 12 45 70         [24] 4299 	lcall	_printf
      00359E 15 81            [12] 4300 	dec	sp
      0035A0 15 81            [12] 4301 	dec	sp
      0035A2 15 81            [12] 4302 	dec	sp
                                   4303 ;	src/main.c:532: return; 
      0035A4 22               [24] 4304 	ret
      0035A5                       4305 00102$:
                                   4306 ;	src/main.c:534: printf("\r\nPlease enter the number of the buffer you would like to free[2-%zu]: ", length + MIN_DYNAMIC_BUFFER_NUM - 1);
      0035A5 74 01            [12] 4307 	mov	a,#0x01
      0035A7 2E               [12] 4308 	add	a,r6
      0035A8 FC               [12] 4309 	mov	r4,a
      0035A9 E4               [12] 4310 	clr	a
      0035AA 3F               [12] 4311 	addc	a,r7
      0035AB FD               [12] 4312 	mov	r5,a
      0035AC C0 07            [24] 4313 	push	ar7
      0035AE C0 06            [24] 4314 	push	ar6
      0035B0 C0 04            [24] 4315 	push	ar4
      0035B2 C0 05            [24] 4316 	push	ar5
      0035B4 74 81            [12] 4317 	mov	a,#___str_37
      0035B6 C0 E0            [24] 4318 	push	acc
      0035B8 74 54            [12] 4319 	mov	a,#(___str_37 >> 8)
      0035BA C0 E0            [24] 4320 	push	acc
      0035BC 74 80            [12] 4321 	mov	a,#0x80
      0035BE C0 E0            [24] 4322 	push	acc
      0035C0 12 45 70         [24] 4323 	lcall	_printf
      0035C3 E5 81            [12] 4324 	mov	a,sp
      0035C5 24 FB            [12] 4325 	add	a,#0xfb
      0035C7 F5 81            [12] 4326 	mov	sp,a
                                   4327 ;	src/main.c:535: get_string(); 
      0035C9 12 39 C3         [24] 4328 	lcall	_get_string
                                   4329 ;	src/main.c:536: int buffer_num = atoi(get_input_buffer()); 
      0035CC 12 39 BC         [24] 4330 	lcall	_get_input_buffer
      0035CF 12 42 1E         [24] 4331 	lcall	_atoi
      0035D2 AC 82            [24] 4332 	mov	r4,dpl
      0035D4 AD 83            [24] 4333 	mov	r5,dph
      0035D6 D0 06            [24] 4334 	pop	ar6
      0035D8 D0 07            [24] 4335 	pop	ar7
                                   4336 ;	src/main.c:537: if (buffer_num < 0)
      0035DA ED               [12] 4337 	mov	a,r5
      0035DB 30 E7 16         [24] 4338 	jnb	acc.7,00113$
                                   4339 ;	src/main.c:539: printf("\r\n Invalid buffer number, negatives not valid");
      0035DE 74 C9            [12] 4340 	mov	a,#___str_38
      0035E0 C0 E0            [24] 4341 	push	acc
      0035E2 74 54            [12] 4342 	mov	a,#(___str_38 >> 8)
      0035E4 C0 E0            [24] 4343 	push	acc
      0035E6 74 80            [12] 4344 	mov	a,#0x80
      0035E8 C0 E0            [24] 4345 	push	acc
      0035EA 12 45 70         [24] 4346 	lcall	_printf
      0035ED 15 81            [12] 4347 	dec	sp
      0035EF 15 81            [12] 4348 	dec	sp
      0035F1 15 81            [12] 4349 	dec	sp
                                   4350 ;	src/main.c:540: return;
      0035F3 22               [24] 4351 	ret
      0035F4                       4352 00113$:
                                   4353 ;	src/main.c:542: else if (buffer_num <= 1) 
      0035F4 C3               [12] 4354 	clr	c
      0035F5 74 01            [12] 4355 	mov	a,#0x01
      0035F7 9C               [12] 4356 	subb	a,r4
      0035F8 74 80            [12] 4357 	mov	a,#(0x00 ^ 0x80)
      0035FA 8D F0            [24] 4358 	mov	b,r5
      0035FC 63 F0 80         [24] 4359 	xrl	b,#0x80
      0035FF 95 F0            [12] 4360 	subb	a,b
      003601 40 16            [24] 4361 	jc	00110$
                                   4362 ;	src/main.c:544: printf("\r\n Invalid buffer number, buffers 0 & 1 are protected");
      003603 74 F7            [12] 4363 	mov	a,#___str_39
      003605 C0 E0            [24] 4364 	push	acc
      003607 74 54            [12] 4365 	mov	a,#(___str_39 >> 8)
      003609 C0 E0            [24] 4366 	push	acc
      00360B 74 80            [12] 4367 	mov	a,#0x80
      00360D C0 E0            [24] 4368 	push	acc
      00360F 12 45 70         [24] 4369 	lcall	_printf
      003612 15 81            [12] 4370 	dec	sp
      003614 15 81            [12] 4371 	dec	sp
      003616 15 81            [12] 4372 	dec	sp
                                   4373 ;	src/main.c:545: return; 
      003618 22               [24] 4374 	ret
      003619                       4375 00110$:
                                   4376 ;	src/main.c:547: else if (buffer_num >= length)
      003619 8C 02            [24] 4377 	mov	ar2,r4
      00361B 8D 03            [24] 4378 	mov	ar3,r5
      00361D C3               [12] 4379 	clr	c
      00361E EA               [12] 4380 	mov	a,r2
      00361F 9E               [12] 4381 	subb	a,r6
      003620 EB               [12] 4382 	mov	a,r3
      003621 9F               [12] 4383 	subb	a,r7
      003622 40 16            [24] 4384 	jc	00107$
                                   4385 ;	src/main.c:549: printf("\r\n Invalid Buffer number; out of range");
      003624 74 2D            [12] 4386 	mov	a,#___str_40
      003626 C0 E0            [24] 4387 	push	acc
      003628 74 55            [12] 4388 	mov	a,#(___str_40 >> 8)
      00362A C0 E0            [24] 4389 	push	acc
      00362C 74 80            [12] 4390 	mov	a,#0x80
      00362E C0 E0            [24] 4391 	push	acc
      003630 12 45 70         [24] 4392 	lcall	_printf
      003633 15 81            [12] 4393 	dec	sp
      003635 15 81            [12] 4394 	dec	sp
      003637 15 81            [12] 4395 	dec	sp
                                   4396 ;	src/main.c:550: return;
      003639 22               [24] 4397 	ret
      00363A                       4398 00107$:
                                   4399 ;	src/main.c:554: bool freed = remove_from_buffer_list(&dynamic_buffers_list, (size_t)(buffer_num-2));
      00363A EC               [12] 4400 	mov	a,r4
      00363B 24 FE            [12] 4401 	add	a,#0xfe
      00363D FC               [12] 4402 	mov	r4,a
      00363E ED               [12] 4403 	mov	a,r5
      00363F 34 FF            [12] 4404 	addc	a,#0xff
      003641 FD               [12] 4405 	mov	r5,a
      003642 90 20 53         [24] 4406 	mov	dptr,#_remove_from_buffer_list_PARM_2
      003645 EC               [12] 4407 	mov	a,r4
      003646 F0               [24] 4408 	movx	@dptr,a
      003647 ED               [12] 4409 	mov	a,r5
      003648 A3               [24] 4410 	inc	dptr
      003649 F0               [24] 4411 	movx	@dptr,a
      00364A 90 20 D3         [24] 4412 	mov	dptr,#_dynamic_buffers_list
      00364D 75 F0 00         [24] 4413 	mov	b,#0x00
      003650 12 3C 14         [24] 4414 	lcall	_remove_from_buffer_list
      003653 E5 82            [12] 4415 	mov	a,dpl
                                   4416 ;	src/main.c:555: if (freed)
      003655 60 16            [24] 4417 	jz	00104$
                                   4418 ;	src/main.c:557: printf("\r\n Successfully removed buffer");
      003657 74 54            [12] 4419 	mov	a,#___str_41
      003659 C0 E0            [24] 4420 	push	acc
      00365B 74 55            [12] 4421 	mov	a,#(___str_41 >> 8)
      00365D C0 E0            [24] 4422 	push	acc
      00365F 74 80            [12] 4423 	mov	a,#0x80
      003661 C0 E0            [24] 4424 	push	acc
      003663 12 45 70         [24] 4425 	lcall	_printf
      003666 15 81            [12] 4426 	dec	sp
      003668 15 81            [12] 4427 	dec	sp
      00366A 15 81            [12] 4428 	dec	sp
      00366C 22               [24] 4429 	ret
      00366D                       4430 00104$:
                                   4431 ;	src/main.c:561: printf("\r\n Failed to remove buffer, ll error");
      00366D 74 73            [12] 4432 	mov	a,#___str_42
      00366F C0 E0            [24] 4433 	push	acc
      003671 74 55            [12] 4434 	mov	a,#(___str_42 >> 8)
      003673 C0 E0            [24] 4435 	push	acc
      003675 74 80            [12] 4436 	mov	a,#0x80
      003677 C0 E0            [24] 4437 	push	acc
      003679 12 45 70         [24] 4438 	lcall	_printf
      00367C 15 81            [12] 4439 	dec	sp
      00367E 15 81            [12] 4440 	dec	sp
      003680 15 81            [12] 4441 	dec	sp
                                   4442 ;	src/main.c:565: }
      003682 22               [24] 4443 	ret
                                   4444 ;------------------------------------------------------------
                                   4445 ;Allocation info for local variables in function 'star_command_handler'
                                   4446 ;------------------------------------------------------------
                                   4447 ;	src/main.c:570: void star_command_handler()
                                   4448 ;	-----------------------------------------
                                   4449 ;	 function star_command_handler
                                   4450 ;	-----------------------------------------
      003683                       4451 _star_command_handler:
                                   4452 ;	src/main.c:572: printf("\r\nResetting device");
      003683 74 98            [12] 4453 	mov	a,#___str_43
      003685 C0 E0            [24] 4454 	push	acc
      003687 74 55            [12] 4455 	mov	a,#(___str_43 >> 8)
      003689 C0 E0            [24] 4456 	push	acc
      00368B 74 80            [12] 4457 	mov	a,#0x80
      00368D C0 E0            [24] 4458 	push	acc
      00368F 12 45 70         [24] 4459 	lcall	_printf
      003692 15 81            [12] 4460 	dec	sp
      003694 15 81            [12] 4461 	dec	sp
      003696 15 81            [12] 4462 	dec	sp
                                   4463 ;	src/main.c:573: WDTRST = WATCH_DOG_FIRST_VALUE;
      003698 75 A6 1E         [24] 4464 	mov	_WDTRST,#0x1e
                                   4465 ;	src/main.c:574: WDTRST = WATCH_DOG_SECOND_VALUE; //start watchdog timer
      00369B 75 A6 E1         [24] 4466 	mov	_WDTRST,#0xe1
      00369E                       4467 00103$:
                                   4468 ;	src/main.c:576: }
      00369E 80 FE            [24] 4469 	sjmp	00103$
                                   4470 ;------------------------------------------------------------
                                   4471 ;Allocation info for local variables in function 'ampersand_command_handler'
                                   4472 ;------------------------------------------------------------
                                   4473 ;sloc0                     Allocated with name '_ampersand_command_handler_sloc0_1_0'
                                   4474 ;sloc1                     Allocated with name '_ampersand_command_handler_sloc1_1_0'
                                   4475 ;sloc2                     Allocated with name '_ampersand_command_handler_sloc2_1_0'
                                   4476 ;length                    Allocated with name '_ampersand_command_handler_length_65537_194'
                                   4477 ;selected_buffer           Allocated with name '_ampersand_command_handler_selected_buffer_65538_195'
                                   4478 ;buffer                    Allocated with name '_ampersand_command_handler_buffer_65539_197'
                                   4479 ;address                   Allocated with name '_ampersand_command_handler_address_131075_199'
                                   4480 ;------------------------------------------------------------
                                   4481 ;	src/main.c:581: void ampersand_command_handler()
                                   4482 ;	-----------------------------------------
                                   4483 ;	 function ampersand_command_handler
                                   4484 ;	-----------------------------------------
      0036A0                       4485 _ampersand_command_handler:
                                   4486 ;	src/main.c:583: command_header("\r\n Dump Buffer");
      0036A0 90 55 AB         [24] 4487 	mov	dptr,#___str_44
      0036A3 75 F0 80         [24] 4488 	mov	b,#0x80
      0036A6 12 29 51         [24] 4489 	lcall	_command_header
                                   4490 ;	src/main.c:584: size_t length = ll_length(&dynamic_buffers_list);
      0036A9 90 20 D3         [24] 4491 	mov	dptr,#_dynamic_buffers_list
      0036AC 75 F0 00         [24] 4492 	mov	b,#0x00
      0036AF 12 3E E7         [24] 4493 	lcall	_ll_length
      0036B2 AE 82            [24] 4494 	mov	r6,dpl
      0036B4 AF 83            [24] 4495 	mov	r7,dph
                                   4496 ;	src/main.c:585: printf("\r\nEnter a valid buffer # [2-%zu]: ", length + MIN_DYNAMIC_BUFFER_NUM - 1);
      0036B6 74 01            [12] 4497 	mov	a,#0x01
      0036B8 2E               [12] 4498 	add	a,r6
      0036B9 FC               [12] 4499 	mov	r4,a
      0036BA E4               [12] 4500 	clr	a
      0036BB 3F               [12] 4501 	addc	a,r7
      0036BC FD               [12] 4502 	mov	r5,a
      0036BD C0 07            [24] 4503 	push	ar7
      0036BF C0 06            [24] 4504 	push	ar6
      0036C1 C0 04            [24] 4505 	push	ar4
      0036C3 C0 05            [24] 4506 	push	ar5
      0036C5 74 BA            [12] 4507 	mov	a,#___str_45
      0036C7 C0 E0            [24] 4508 	push	acc
      0036C9 74 55            [12] 4509 	mov	a,#(___str_45 >> 8)
      0036CB C0 E0            [24] 4510 	push	acc
      0036CD 74 80            [12] 4511 	mov	a,#0x80
      0036CF C0 E0            [24] 4512 	push	acc
      0036D1 12 45 70         [24] 4513 	lcall	_printf
      0036D4 E5 81            [12] 4514 	mov	a,sp
      0036D6 24 FB            [12] 4515 	add	a,#0xfb
      0036D8 F5 81            [12] 4516 	mov	sp,a
                                   4517 ;	src/main.c:586: get_string();
      0036DA 12 39 C3         [24] 4518 	lcall	_get_string
                                   4519 ;	src/main.c:587: int selected_buffer = atoi(get_input_buffer());
      0036DD 12 39 BC         [24] 4520 	lcall	_get_input_buffer
      0036E0 12 42 1E         [24] 4521 	lcall	_atoi
      0036E3 AC 82            [24] 4522 	mov	r4,dpl
      0036E5 AD 83            [24] 4523 	mov	r5,dph
      0036E7 D0 06            [24] 4524 	pop	ar6
      0036E9 D0 07            [24] 4525 	pop	ar7
                                   4526 ;	src/main.c:588: if (selected_buffer < MIN_DYNAMIC_BUFFER_NUM || selected_buffer >= (MIN_DYNAMIC_BUFFER_NUM + length))
      0036EB C3               [12] 4527 	clr	c
      0036EC EC               [12] 4528 	mov	a,r4
      0036ED 94 02            [12] 4529 	subb	a,#0x02
      0036EF ED               [12] 4530 	mov	a,r5
      0036F0 64 80            [12] 4531 	xrl	a,#0x80
      0036F2 94 80            [12] 4532 	subb	a,#0x80
      0036F4 40 12            [24] 4533 	jc	00101$
      0036F6 74 02            [12] 4534 	mov	a,#0x02
      0036F8 2E               [12] 4535 	add	a,r6
      0036F9 FE               [12] 4536 	mov	r6,a
      0036FA E4               [12] 4537 	clr	a
      0036FB 3F               [12] 4538 	addc	a,r7
      0036FC FF               [12] 4539 	mov	r7,a
      0036FD 8C 02            [24] 4540 	mov	ar2,r4
      0036FF 8D 03            [24] 4541 	mov	ar3,r5
      003701 C3               [12] 4542 	clr	c
      003702 EA               [12] 4543 	mov	a,r2
      003703 9E               [12] 4544 	subb	a,r6
      003704 EB               [12] 4545 	mov	a,r3
      003705 9F               [12] 4546 	subb	a,r7
      003706 40 16            [24] 4547 	jc	00102$
      003708                       4548 00101$:
                                   4549 ;	src/main.c:590: printf("\r\nInvalid buffer number; returning to prompt");
      003708 74 DD            [12] 4550 	mov	a,#___str_46
      00370A C0 E0            [24] 4551 	push	acc
      00370C 74 55            [12] 4552 	mov	a,#(___str_46 >> 8)
      00370E C0 E0            [24] 4553 	push	acc
      003710 74 80            [12] 4554 	mov	a,#0x80
      003712 C0 E0            [24] 4555 	push	acc
      003714 12 45 70         [24] 4556 	lcall	_printf
      003717 15 81            [12] 4557 	dec	sp
      003719 15 81            [12] 4558 	dec	sp
      00371B 15 81            [12] 4559 	dec	sp
                                   4560 ;	src/main.c:591: return;
      00371D 22               [24] 4561 	ret
      00371E                       4562 00102$:
                                   4563 ;	src/main.c:594: buffer_t *buffer = ll_get_elem(&dynamic_buffers_list, (size_t) (selected_buffer - 2));
      00371E EC               [12] 4564 	mov	a,r4
      00371F 24 FE            [12] 4565 	add	a,#0xfe
      003721 FE               [12] 4566 	mov	r6,a
      003722 ED               [12] 4567 	mov	a,r5
      003723 34 FF            [12] 4568 	addc	a,#0xff
      003725 FF               [12] 4569 	mov	r7,a
      003726 90 20 6C         [24] 4570 	mov	dptr,#_ll_get_elem_PARM_2
      003729 EE               [12] 4571 	mov	a,r6
      00372A F0               [24] 4572 	movx	@dptr,a
      00372B EF               [12] 4573 	mov	a,r7
      00372C A3               [24] 4574 	inc	dptr
      00372D F0               [24] 4575 	movx	@dptr,a
      00372E 90 20 D3         [24] 4576 	mov	dptr,#_dynamic_buffers_list
      003731 75 F0 00         [24] 4577 	mov	b,#0x00
      003734 C0 05            [24] 4578 	push	ar5
      003736 C0 04            [24] 4579 	push	ar4
      003738 12 3F 72         [24] 4580 	lcall	_ll_get_elem
      00373B AB 82            [24] 4581 	mov	r3,dpl
      00373D AE 83            [24] 4582 	mov	r6,dph
      00373F AF F0            [24] 4583 	mov	r7,b
      003741 D0 04            [24] 4584 	pop	ar4
      003743 D0 05            [24] 4585 	pop	ar5
                                   4586 ;	src/main.c:596: if (buffer == NULL)
      003745 EB               [12] 4587 	mov	a,r3
      003746 4E               [12] 4588 	orl	a,r6
      003747 70 16            [24] 4589 	jnz	00105$
                                   4590 ;	src/main.c:598: printf("\r\nLL error; returning to prompt");
      003749 74 0A            [12] 4591 	mov	a,#___str_47
      00374B C0 E0            [24] 4592 	push	acc
      00374D 74 56            [12] 4593 	mov	a,#(___str_47 >> 8)
      00374F C0 E0            [24] 4594 	push	acc
      003751 74 80            [12] 4595 	mov	a,#0x80
      003753 C0 E0            [24] 4596 	push	acc
      003755 12 45 70         [24] 4597 	lcall	_printf
      003758 15 81            [12] 4598 	dec	sp
      00375A 15 81            [12] 4599 	dec	sp
      00375C 15 81            [12] 4600 	dec	sp
                                   4601 ;	src/main.c:599: return;
      00375E 22               [24] 4602 	ret
      00375F                       4603 00105$:
                                   4604 ;	src/main.c:602: printf("\r\n Buffer %d", selected_buffer);
      00375F C0 07            [24] 4605 	push	ar7
      003761 C0 06            [24] 4606 	push	ar6
      003763 C0 03            [24] 4607 	push	ar3
      003765 C0 04            [24] 4608 	push	ar4
      003767 C0 05            [24] 4609 	push	ar5
      003769 74 2A            [12] 4610 	mov	a,#___str_48
      00376B C0 E0            [24] 4611 	push	acc
      00376D 74 56            [12] 4612 	mov	a,#(___str_48 >> 8)
      00376F C0 E0            [24] 4613 	push	acc
      003771 74 80            [12] 4614 	mov	a,#0x80
      003773 C0 E0            [24] 4615 	push	acc
      003775 12 45 70         [24] 4616 	lcall	_printf
      003778 E5 81            [12] 4617 	mov	a,sp
      00377A 24 FB            [12] 4618 	add	a,#0xfb
      00377C F5 81            [12] 4619 	mov	sp,a
                                   4620 ;	src/main.c:603: printf("\r\n----------");
      00377E 74 FE            [12] 4621 	mov	a,#___str_22
      003780 C0 E0            [24] 4622 	push	acc
      003782 74 52            [12] 4623 	mov	a,#(___str_22 >> 8)
      003784 C0 E0            [24] 4624 	push	acc
      003786 74 80            [12] 4625 	mov	a,#0x80
      003788 C0 E0            [24] 4626 	push	acc
      00378A 12 45 70         [24] 4627 	lcall	_printf
      00378D 15 81            [12] 4628 	dec	sp
      00378F 15 81            [12] 4629 	dec	sp
      003791 15 81            [12] 4630 	dec	sp
      003793 D0 03            [24] 4631 	pop	ar3
      003795 D0 06            [24] 4632 	pop	ar6
      003797 D0 07            [24] 4633 	pop	ar7
                                   4634 ;	src/main.c:604: for(char *address = buffer->buffer; address < (buffer->buffer + buffer->size); address++)
      003799 8B 82            [24] 4635 	mov	dpl,r3
      00379B 8E 83            [24] 4636 	mov	dph,r6
      00379D 8F F0            [24] 4637 	mov	b,r7
      00379F 12 4F 9C         [24] 4638 	lcall	__gptrget
      0037A2 FC               [12] 4639 	mov	r4,a
      0037A3 A3               [24] 4640 	inc	dptr
      0037A4 12 4F 9C         [24] 4641 	lcall	__gptrget
      0037A7 FA               [12] 4642 	mov	r2,a
      0037A8 7D 00            [12] 4643 	mov	r5,#0x00
      0037AA 74 04            [12] 4644 	mov	a,#0x04
      0037AC 2B               [12] 4645 	add	a,r3
      0037AD F5 57            [12] 4646 	mov	_ampersand_command_handler_sloc0_1_0,a
      0037AF E4               [12] 4647 	clr	a
      0037B0 3E               [12] 4648 	addc	a,r6
      0037B1 F5 58            [12] 4649 	mov	(_ampersand_command_handler_sloc0_1_0 + 1),a
      0037B3 8F 59            [24] 4650 	mov	(_ampersand_command_handler_sloc0_1_0 + 2),r7
      0037B5                       4651 00110$:
      0037B5 8B 82            [24] 4652 	mov	dpl,r3
      0037B7 8E 83            [24] 4653 	mov	dph,r6
      0037B9 8F F0            [24] 4654 	mov	b,r7
      0037BB 12 4F 9C         [24] 4655 	lcall	__gptrget
      0037BE F8               [12] 4656 	mov	r0,a
      0037BF A3               [24] 4657 	inc	dptr
      0037C0 12 4F 9C         [24] 4658 	lcall	__gptrget
      0037C3 F9               [12] 4659 	mov	r1,a
      0037C4 C0 03            [24] 4660 	push	ar3
      0037C6 C0 06            [24] 4661 	push	ar6
      0037C8 C0 07            [24] 4662 	push	ar7
      0037CA 85 57 82         [24] 4663 	mov	dpl,_ampersand_command_handler_sloc0_1_0
      0037CD 85 58 83         [24] 4664 	mov	dph,(_ampersand_command_handler_sloc0_1_0 + 1)
      0037D0 85 59 F0         [24] 4665 	mov	b,(_ampersand_command_handler_sloc0_1_0 + 2)
      0037D3 12 4F 9C         [24] 4666 	lcall	__gptrget
      0037D6 FE               [12] 4667 	mov	r6,a
      0037D7 A3               [24] 4668 	inc	dptr
      0037D8 12 4F 9C         [24] 4669 	lcall	__gptrget
      0037DB FF               [12] 4670 	mov	r7,a
      0037DC EE               [12] 4671 	mov	a,r6
      0037DD 28               [12] 4672 	add	a,r0
      0037DE F5 5A            [12] 4673 	mov	_ampersand_command_handler_sloc1_1_0,a
      0037E0 EF               [12] 4674 	mov	a,r7
      0037E1 39               [12] 4675 	addc	a,r1
      0037E2 F5 5B            [12] 4676 	mov	(_ampersand_command_handler_sloc1_1_0 + 1),a
      0037E4 8C 5C            [24] 4677 	mov	_ampersand_command_handler_sloc2_1_0,r4
      0037E6 8A 5D            [24] 4678 	mov	(_ampersand_command_handler_sloc2_1_0 + 1),r2
      0037E8 8D 5E            [24] 4679 	mov	(_ampersand_command_handler_sloc2_1_0 + 2),r5
      0037EA AB 5A            [24] 4680 	mov	r3,_ampersand_command_handler_sloc1_1_0
      0037EC AE 5B            [24] 4681 	mov	r6,(_ampersand_command_handler_sloc1_1_0 + 1)
      0037EE 7F 00            [12] 4682 	mov	r7,#0x00
      0037F0 C0 03            [24] 4683 	push	ar3
      0037F2 C0 06            [24] 4684 	push	ar6
      0037F4 C0 07            [24] 4685 	push	ar7
      0037F6 85 5C 82         [24] 4686 	mov	dpl,_ampersand_command_handler_sloc2_1_0
      0037F9 85 5D 83         [24] 4687 	mov	dph,(_ampersand_command_handler_sloc2_1_0 + 1)
      0037FC 85 5E F0         [24] 4688 	mov	b,(_ampersand_command_handler_sloc2_1_0 + 2)
      0037FF 12 20 06         [24] 4689 	lcall	___gptr_cmp
      003802 15 81            [12] 4690 	dec	sp
      003804 15 81            [12] 4691 	dec	sp
      003806 15 81            [12] 4692 	dec	sp
      003808 D0 07            [24] 4693 	pop	ar7
      00380A D0 06            [24] 4694 	pop	ar6
      00380C D0 03            [24] 4695 	pop	ar3
      00380E 40 03            [24] 4696 	jc	00138$
      003810 02 38 A8         [24] 4697 	ljmp	00108$
      003813                       4698 00138$:
                                   4699 ;	src/main.c:606: if (MODULE_32(address-buffer->buffer) == 0)
      003813 EC               [12] 4700 	mov	a,r4
      003814 C3               [12] 4701 	clr	c
      003815 98               [12] 4702 	subb	a,r0
      003816 F8               [12] 4703 	mov	r0,a
      003817 EA               [12] 4704 	mov	a,r2
      003818 99               [12] 4705 	subb	a,r1
      003819 E8               [12] 4706 	mov	a,r0
      00381A 54 1F            [12] 4707 	anl	a,#0x1f
      00381C 70 43            [24] 4708 	jnz	00107$
                                   4709 ;	src/main.c:608: printf("\r\n%04X:", (unsigned int) address);
      00381E C0 03            [24] 4710 	push	ar3
      003820 C0 06            [24] 4711 	push	ar6
      003822 C0 07            [24] 4712 	push	ar7
      003824 8C 00            [24] 4713 	mov	ar0,r4
      003826 8A 01            [24] 4714 	mov	ar1,r2
      003828 8D 07            [24] 4715 	mov	ar7,r5
      00382A C0 07            [24] 4716 	push	ar7
      00382C C0 06            [24] 4717 	push	ar6
      00382E C0 05            [24] 4718 	push	ar5
      003830 C0 04            [24] 4719 	push	ar4
      003832 C0 03            [24] 4720 	push	ar3
      003834 C0 02            [24] 4721 	push	ar2
      003836 C0 00            [24] 4722 	push	ar0
      003838 C0 01            [24] 4723 	push	ar1
      00383A 74 0B            [12] 4724 	mov	a,#___str_23
      00383C C0 E0            [24] 4725 	push	acc
      00383E 74 53            [12] 4726 	mov	a,#(___str_23 >> 8)
      003840 C0 E0            [24] 4727 	push	acc
      003842 74 80            [12] 4728 	mov	a,#0x80
      003844 C0 E0            [24] 4729 	push	acc
      003846 12 45 70         [24] 4730 	lcall	_printf
      003849 E5 81            [12] 4731 	mov	a,sp
      00384B 24 FB            [12] 4732 	add	a,#0xfb
      00384D F5 81            [12] 4733 	mov	sp,a
      00384F D0 02            [24] 4734 	pop	ar2
      003851 D0 03            [24] 4735 	pop	ar3
      003853 D0 04            [24] 4736 	pop	ar4
      003855 D0 05            [24] 4737 	pop	ar5
      003857 D0 06            [24] 4738 	pop	ar6
      003859 D0 07            [24] 4739 	pop	ar7
                                   4740 ;	src/main.c:613: printf("\r\n");
      00385B D0 07            [24] 4741 	pop	ar7
      00385D D0 06            [24] 4742 	pop	ar6
      00385F D0 03            [24] 4743 	pop	ar3
                                   4744 ;	src/main.c:608: printf("\r\n%04X:", (unsigned int) address);
      003861                       4745 00107$:
                                   4746 ;	src/main.c:610: printf(" %02hhX", (unsigned char) *address);
      003861 8C 82            [24] 4747 	mov	dpl,r4
      003863 8A 83            [24] 4748 	mov	dph,r2
      003865 8D F0            [24] 4749 	mov	b,r5
      003867 12 4F 9C         [24] 4750 	lcall	__gptrget
      00386A F9               [12] 4751 	mov	r1,a
      00386B A3               [24] 4752 	inc	dptr
      00386C AC 82            [24] 4753 	mov	r4,dpl
      00386E AA 83            [24] 4754 	mov	r2,dph
      003870 89 00            [24] 4755 	mov	ar0,r1
      003872 79 00            [12] 4756 	mov	r1,#0x00
      003874 C0 07            [24] 4757 	push	ar7
      003876 C0 06            [24] 4758 	push	ar6
      003878 C0 05            [24] 4759 	push	ar5
      00387A C0 04            [24] 4760 	push	ar4
      00387C C0 03            [24] 4761 	push	ar3
      00387E C0 02            [24] 4762 	push	ar2
      003880 C0 00            [24] 4763 	push	ar0
      003882 C0 01            [24] 4764 	push	ar1
      003884 74 13            [12] 4765 	mov	a,#___str_24
      003886 C0 E0            [24] 4766 	push	acc
      003888 74 53            [12] 4767 	mov	a,#(___str_24 >> 8)
      00388A C0 E0            [24] 4768 	push	acc
      00388C 74 80            [12] 4769 	mov	a,#0x80
      00388E C0 E0            [24] 4770 	push	acc
      003890 12 45 70         [24] 4771 	lcall	_printf
      003893 E5 81            [12] 4772 	mov	a,sp
      003895 24 FB            [12] 4773 	add	a,#0xfb
      003897 F5 81            [12] 4774 	mov	sp,a
      003899 D0 02            [24] 4775 	pop	ar2
      00389B D0 03            [24] 4776 	pop	ar3
      00389D D0 04            [24] 4777 	pop	ar4
      00389F D0 05            [24] 4778 	pop	ar5
      0038A1 D0 06            [24] 4779 	pop	ar6
      0038A3 D0 07            [24] 4780 	pop	ar7
                                   4781 ;	src/main.c:604: for(char *address = buffer->buffer; address < (buffer->buffer + buffer->size); address++)
      0038A5 02 37 B5         [24] 4782 	ljmp	00110$
      0038A8                       4783 00108$:
                                   4784 ;	src/main.c:613: printf("\r\n");
      0038A8 74 C1            [12] 4785 	mov	a,#___str_12
      0038AA C0 E0            [24] 4786 	push	acc
      0038AC 74 51            [12] 4787 	mov	a,#(___str_12 >> 8)
      0038AE C0 E0            [24] 4788 	push	acc
      0038B0 74 80            [12] 4789 	mov	a,#0x80
      0038B2 C0 E0            [24] 4790 	push	acc
      0038B4 12 45 70         [24] 4791 	lcall	_printf
      0038B7 15 81            [12] 4792 	dec	sp
      0038B9 15 81            [12] 4793 	dec	sp
      0038BB 15 81            [12] 4794 	dec	sp
                                   4795 ;	src/main.c:616: }
      0038BD 22               [24] 4796 	ret
                                   4797 ;------------------------------------------------------------
                                   4798 ;Allocation info for local variables in function 'main'
                                   4799 ;------------------------------------------------------------
                                   4800 ;c                         Allocated with name '_main_c_65537_203'
                                   4801 ;received_char             Allocated with name '_main_received_char_196610_206'
                                   4802 ;------------------------------------------------------------
                                   4803 ;	src/main.c:620: void main()
                                   4804 ;	-----------------------------------------
                                   4805 ;	 function main
                                   4806 ;	-----------------------------------------
      0038BE                       4807 _main:
                                   4808 ;	src/main.c:622: initialize_buffers();
      0038BE 12 22 29         [24] 4809 	lcall	_initialize_buffers
                                   4810 ;	src/main.c:623: unsigned char c = 0;
      0038C1                       4811 00118$:
                                   4812 ;	src/main.c:627: printf("\r\nEnter a char: ");
      0038C1 74 37            [12] 4813 	mov	a,#___str_49
      0038C3 C0 E0            [24] 4814 	push	acc
      0038C5 74 56            [12] 4815 	mov	a,#(___str_49 >> 8)
      0038C7 C0 E0            [24] 4816 	push	acc
      0038C9 74 80            [12] 4817 	mov	a,#0x80
      0038CB C0 E0            [24] 4818 	push	acc
      0038CD 12 45 70         [24] 4819 	lcall	_printf
      0038D0 15 81            [12] 4820 	dec	sp
      0038D2 15 81            [12] 4821 	dec	sp
      0038D4 15 81            [12] 4822 	dec	sp
                                   4823 ;	src/main.c:629: char received_char = get_next_input_char();
      0038D6 12 3A F7         [24] 4824 	lcall	_get_next_input_char
                                   4825 ;	src/main.c:630: if (is_alphabet_char(received_char))
      0038D9 AF 82            [24] 4826 	mov  r7,dpl
      0038DB C0 07            [24] 4827 	push	ar7
      0038DD 12 20 94         [24] 4828 	lcall	_is_alphabet_char
      0038E0 E5 82            [12] 4829 	mov	a,dpl
      0038E2 D0 07            [24] 4830 	pop	ar7
      0038E4 60 14            [24] 4831 	jz	00102$
                                   4832 ;	src/main.c:632: store_in_buffer(&static_buffers[0], received_char);
      0038E6 90 00 25         [24] 4833 	mov	dptr,#_store_in_buffer_PARM_2
      0038E9 EF               [12] 4834 	mov	a,r7
      0038EA F0               [24] 4835 	movx	@dptr,a
      0038EB 90 00 01         [24] 4836 	mov	dptr,#_static_buffers
      0038EE 75 F0 00         [24] 4837 	mov	b,#0x00
      0038F1 C0 07            [24] 4838 	push	ar7
      0038F3 12 28 55         [24] 4839 	lcall	_store_in_buffer
      0038F6 D0 07            [24] 4840 	pop	ar7
      0038F8 80 12            [24] 4841 	sjmp	00103$
      0038FA                       4842 00102$:
                                   4843 ;	src/main.c:636: store_in_buffer(&static_buffers[1], received_char);
      0038FA 90 00 25         [24] 4844 	mov	dptr,#_store_in_buffer_PARM_2
      0038FD EF               [12] 4845 	mov	a,r7
      0038FE F0               [24] 4846 	movx	@dptr,a
      0038FF 90 00 0C         [24] 4847 	mov	dptr,#(_static_buffers + 0x000b)
      003902 75 F0 00         [24] 4848 	mov	b,#0x00
      003905 C0 07            [24] 4849 	push	ar7
      003907 12 28 55         [24] 4850 	lcall	_store_in_buffer
      00390A D0 07            [24] 4851 	pop	ar7
      00390C                       4852 00103$:
                                   4853 ;	src/main.c:639: switch(received_char)
      00390C BF 23 02         [24] 4854 	cjne	r7,#0x23,00170$
      00390F 80 4C            [24] 4855 	sjmp	00109$
      003911                       4856 00170$:
      003911 BF 24 02         [24] 4857 	cjne	r7,#0x24,00171$
      003914 80 42            [24] 4858 	sjmp	00108$
      003916                       4859 00171$:
      003916 BF 25 02         [24] 4860 	cjne	r7,#0x25,00172$
      003919 80 30            [24] 4861 	sjmp	00106$
      00391B                       4862 00172$:
      00391B BF 26 02         [24] 4863 	cjne	r7,#0x26,00173$
      00391E 80 51            [24] 4864 	sjmp	00113$
      003920                       4865 00173$:
      003920 BF 2A 02         [24] 4866 	cjne	r7,#0x2a,00174$
      003923 80 47            [24] 4867 	sjmp	00112$
      003925                       4868 00174$:
      003925 BF 2B 02         [24] 4869 	cjne	r7,#0x2b,00175$
      003928 80 38            [24] 4870 	sjmp	00110$
      00392A                       4871 00175$:
      00392A BF 2D 02         [24] 4872 	cjne	r7,#0x2d,00176$
      00392D 80 38            [24] 4873 	sjmp	00111$
      00392F                       4874 00176$:
      00392F BF 3D 02         [24] 4875 	cjne	r7,#0x3d,00177$
      003932 80 12            [24] 4876 	sjmp	00105$
      003934                       4877 00177$:
      003934 BF 3F 02         [24] 4878 	cjne	r7,#0x3f,00178$
      003937 80 08            [24] 4879 	sjmp	00104$
      003939                       4880 00178$:
      003939 BF 40 02         [24] 4881 	cjne	r7,#0x40,00179$
      00393C 80 12            [24] 4882 	sjmp	00107$
      00393E                       4883 00179$:
      00393E 02 38 C1         [24] 4884 	ljmp	00118$
                                   4885 ;	src/main.c:641: case '?':
      003941                       4886 00104$:
                                   4887 ;	src/main.c:642: qmark_command_handler();
      003941 12 2D 6A         [24] 4888 	lcall	_qmark_command_handler
                                   4889 ;	src/main.c:643: break;
                                   4890 ;	src/main.c:644: case '=':
      003944 80 2E            [24] 4891 	sjmp	00115$
      003946                       4892 00105$:
                                   4893 ;	src/main.c:645: enter_command_handler();
      003946 12 2F 8F         [24] 4894 	lcall	_enter_command_handler
                                   4895 ;	src/main.c:646: break;
                                   4896 ;	src/main.c:647: case '%':
      003949 80 29            [24] 4897 	sjmp	00115$
      00394B                       4898 00106$:
                                   4899 ;	src/main.c:648: percent_command_handler();
      00394B 12 31 3C         [24] 4900 	lcall	_percent_command_handler
                                   4901 ;	src/main.c:649: break;
                                   4902 ;	src/main.c:650: case '@':
      00394E 80 24            [24] 4903 	sjmp	00115$
      003950                       4904 00107$:
                                   4905 ;	src/main.c:651: free_all_buffers();
      003950 12 2C B7         [24] 4906 	lcall	_free_all_buffers
                                   4907 ;	src/main.c:652: initialize_buffers();
      003953 12 22 29         [24] 4908 	lcall	_initialize_buffers
                                   4909 ;	src/main.c:653: break;
                                   4910 ;	src/main.c:654: case '$':
      003956 80 1C            [24] 4911 	sjmp	00115$
      003958                       4912 00108$:
                                   4913 ;	src/main.c:655: dollar_sign_command_handler();
      003958 12 32 B8         [24] 4914 	lcall	_dollar_sign_command_handler
                                   4915 ;	src/main.c:656: break;
                                   4916 ;	src/main.c:657: case '#':
      00395B 80 17            [24] 4917 	sjmp	00115$
      00395D                       4918 00109$:
                                   4919 ;	src/main.c:658: hashtag_command_handler();
      00395D 12 33 D7         [24] 4920 	lcall	_hashtag_command_handler
                                   4921 ;	src/main.c:659: break;
                                   4922 ;	src/main.c:660: case '+':
      003960 80 12            [24] 4923 	sjmp	00115$
      003962                       4924 00110$:
                                   4925 ;	src/main.c:661: plus_command_handler();
      003962 12 34 C9         [24] 4926 	lcall	_plus_command_handler
                                   4927 ;	src/main.c:662: break;
                                   4928 ;	src/main.c:663: case '-':
      003965 80 0D            [24] 4929 	sjmp	00115$
      003967                       4930 00111$:
                                   4931 ;	src/main.c:664: minus_command_handler();
      003967 12 35 75         [24] 4932 	lcall	_minus_command_handler
                                   4933 ;	src/main.c:665: break;
                                   4934 ;	src/main.c:666: case '*':
      00396A 80 08            [24] 4935 	sjmp	00115$
      00396C                       4936 00112$:
                                   4937 ;	src/main.c:667: star_command_handler();
      00396C 12 36 83         [24] 4938 	lcall	_star_command_handler
                                   4939 ;	src/main.c:668: break;
                                   4940 ;	src/main.c:669: case '&':
      00396F 80 03            [24] 4941 	sjmp	00115$
      003971                       4942 00113$:
                                   4943 ;	src/main.c:670: ampersand_command_handler();
      003971 12 36 A0         [24] 4944 	lcall	_ampersand_command_handler
                                   4945 ;	src/main.c:674: }
      003974                       4946 00115$:
                                   4947 ;	src/main.c:675: printf("\r\nEND COMMAND");
      003974 74 48            [12] 4948 	mov	a,#___str_50
      003976 C0 E0            [24] 4949 	push	acc
      003978 74 56            [12] 4950 	mov	a,#(___str_50 >> 8)
      00397A C0 E0            [24] 4951 	push	acc
      00397C 74 80            [12] 4952 	mov	a,#0x80
      00397E C0 E0            [24] 4953 	push	acc
      003980 12 45 70         [24] 4954 	lcall	_printf
      003983 15 81            [12] 4955 	dec	sp
      003985 15 81            [12] 4956 	dec	sp
      003987 15 81            [12] 4957 	dec	sp
                                   4958 ;	src/main.c:676: print_dashed_line();
      003989 12 29 3B         [24] 4959 	lcall	_print_dashed_line
                                   4960 ;	src/main.c:678: }
      00398C 02 38 C1         [24] 4961 	ljmp	00118$
                                   4962 	.area CSEG    (CODE)
                                   4963 	.area CONST   (CODE)
                                   4964 	.area CONST   (CODE)
      004FB8                       4965 ___str_0:
      004FB8 0D                    4966 	.db 0x0d
      004FB9 0A                    4967 	.db 0x0a
      004FBA 50 6C 65 61 73 65 20  4968 	.ascii "Please enter the last two digits of your ID:"
             65 6E 74 65 72 20 74
             68 65 20 6C 61 73 74
             20 74 77 6F 20 64 69
             67 69 74 73 20 6F 66
             20 79 6F 75 72 20 49
             44 3A
      004FE6 00                    4969 	.db 0x00
                                   4970 	.area CSEG    (CODE)
                                   4971 	.area CONST   (CODE)
      004FE7                       4972 ___str_1:
      004FE7 0D                    4973 	.db 0x0d
      004FE8 0A                    4974 	.db 0x0a
      004FE9 20 44 69 64 20 6E 6F  4975 	.ascii " Did not enter valid two digit number, please try again"
             74 20 65 6E 74 65 72
             20 76 61 6C 69 64 20
             74 77 6F 20 64 69 67
             69 74 20 6E 75 6D 62
             65 72 2C 20 70 6C 65
             61 73 65 20 74 72 79
             20 61 67 61 69 6E
      005020 00                    4976 	.db 0x00
                                   4977 	.area CSEG    (CODE)
                                   4978 	.area CONST   (CODE)
      005021                       4979 ___str_2:
      005021 0D                    4980 	.db 0x0d
      005022 0A                    4981 	.db 0x0a
      005023 41 74 6F 69 20 65 72  4982 	.ascii "Atoi error: number invalid or out of range, please try again"
             72 6F 72 3A 20 6E 75
             6D 62 65 72 20 69 6E
             76 61 6C 69 64 20 6F
             72 20 6F 75 74 20 6F
             66 20 72 61 6E 67 65
             2C 20 70 6C 65 61 73
             65 20 74 72 79 20 61
             67 61 69 6E
      00505F 00                    4983 	.db 0x00
                                   4984 	.area CSEG    (CODE)
                                   4985 	.area CONST   (CODE)
      005060                       4986 ___str_3:
      005060 0D                    4987 	.db 0x0d
      005061 0A                    4988 	.db 0x0a
      005062 42 75 66 66 65 72 20  4989 	.ascii "Buffer Size too big, please pick a smaller buffer size"
             53 69 7A 65 20 74 6F
             6F 20 62 69 67 2C 20
             70 6C 65 61 73 65 20
             70 69 63 6B 20 61 20
             73 6D 61 6C 6C 65 72
             20 62 75 66 66 65 72
             20 73 69 7A 65
      005098 00                    4990 	.db 0x00
                                   4991 	.area CSEG    (CODE)
                                   4992 	.area CONST   (CODE)
      005099                       4993 ___str_4:
      005099 0D                    4994 	.db 0x0d
      00509A 0A                    4995 	.db 0x0a
      00509B 73 74 75 64 65 6E 74  4996 	.ascii "student_number: %d"
             5F 6E 75 6D 62 65 72
             3A 20 25 64
      0050AD 00                    4997 	.db 0x00
                                   4998 	.area CSEG    (CODE)
                                   4999 	.area CONST   (CODE)
      0050AE                       5000 ___str_5:
      0050AE 0D                    5001 	.db 0x0d
      0050AF 0A                    5002 	.db 0x0a
      0050B0 75 73 65 72 5F 62 75  5003 	.ascii "user_buffer_size: %zu"
             66 66 65 72 5F 73 69
             7A 65 3A 20 25 7A 75
      0050C5 00                    5004 	.db 0x00
                                   5005 	.area CSEG    (CODE)
                                   5006 	.area CONST   (CODE)
      0050C6                       5007 ___str_6:
      0050C6 0D                    5008 	.db 0x0d
      0050C7 0A                    5009 	.db 0x0a
      0050C8 62 75 66 66 65 72 5F  5010 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75
      0050F1 00                    5011 	.db 0x00
                                   5012 	.area CSEG    (CODE)
                                   5013 	.area CONST   (CODE)
      0050F2                       5014 ___str_7:
      0050F2 0D                    5015 	.db 0x0d
      0050F3 0A                    5016 	.db 0x0a
      0050F4 48 65 61 70 20 73 74  5017 	.ascii "Heap starts @ %p, ends @ %p, size: %zu"
             61 72 74 73 20 40 20
             25 70 2C 20 65 6E 64
             73 20 40 20 25 70 2C
             20 73 69 7A 65 3A 20
             25 7A 75
      00511A 00                    5018 	.db 0x00
                                   5019 	.area CSEG    (CODE)
                                   5020 	.area CONST   (CODE)
      00511B                       5021 ___str_8:
      00511B 0D                    5022 	.db 0x0d
      00511C 0A                    5023 	.db 0x0a
      00511D 2D 2D 2D 2D 2D 2D 2D  5024 	.ascii "------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D
      00514D 00                    5025 	.db 0x00
                                   5026 	.area CSEG    (CODE)
                                   5027 	.area CONST   (CODE)
      00514E                       5028 ___str_9:
      00514E 0D                    5029 	.db 0x0d
      00514F 0A                    5030 	.db 0x0a
      005150 25 73                 5031 	.ascii "%s"
      005152 00                    5032 	.db 0x00
                                   5033 	.area CSEG    (CODE)
                                   5034 	.area CONST   (CODE)
      005153                       5035 ___str_10:
      005153 48 65 61 70 20 52 65  5036 	.ascii "Heap Report"
             70 6F 72 74
      00515E 00                    5037 	.db 0x00
                                   5038 	.area CSEG    (CODE)
                                   5039 	.area CONST   (CODE)
      00515F                       5040 ___str_11:
      00515F 0D                    5041 	.db 0x0d
      005160 0A                    5042 	.db 0x0a
      005161 62 75 66 66 65 72 5F  5043 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu, contains %zu alph"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75 2C
             20 63 6F 6E 74 61 69
             6E 73 20 25 7A 75 20
             61 6C 70 68
      00519D 61 62 65 74 20 63 68  5044 	.ascii "abet chars, has %zu chars remaining"
             61 72 73 2C 20 68 61
             73 20 25 7A 75 20 63
             68 61 72 73 20 72 65
             6D 61 69 6E 69 6E 67
      0051C0 00                    5045 	.db 0x00
                                   5046 	.area CSEG    (CODE)
                                   5047 	.area CONST   (CODE)
      0051C1                       5048 ___str_12:
      0051C1 0D                    5049 	.db 0x0d
      0051C2 0A                    5050 	.db 0x0a
      0051C3 00                    5051 	.db 0x00
                                   5052 	.area CSEG    (CODE)
                                   5053 	.area CONST   (CODE)
      0051C4                       5054 ___str_13:
      0051C4 0D                    5055 	.db 0x0d
      0051C5 0A                    5056 	.db 0x0a
      0051C6 50 6C 65 61 73 65 20  5057 	.ascii "Please enter a valid buffer size that is divisible by 32 [64"
             65 6E 74 65 72 20 61
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             73 69 7A 65 20 74 68
             61 74 20 69 73 20 64
             69 76 69 73 69 62 6C
             65 20 62 79 20 33 32
             20 5B 36 34
      005202 2C 25 7A 75 5D 3A 20  5058 	.ascii ",%zu]: "
      005209 00                    5059 	.db 0x00
                                   5060 	.area CSEG    (CODE)
                                   5061 	.area CONST   (CODE)
      00520A                       5062 ___str_14:
      00520A 0D                    5063 	.db 0x0d
      00520B 0A                    5064 	.db 0x0a
      00520C 20 55 73 65 72 20 62  5065 	.ascii " User buffer size larger than maximum"
             75 66 66 65 72 20 73
             69 7A 65 20 6C 61 72
             67 65 72 20 74 68 61
             6E 20 6D 61 78 69 6D
             75 6D
      005231 00                    5066 	.db 0x00
                                   5067 	.area CSEG    (CODE)
                                   5068 	.area CONST   (CODE)
      005232                       5069 ___str_15:
      005232 0D                    5070 	.db 0x0d
      005233 0A                    5071 	.db 0x0a
      005234 20 55 73 65 72 20 62  5072 	.ascii " User buffer size too small or error in conversion"
             75 66 66 65 72 20 73
             69 7A 65 20 74 6F 6F
             20 73 6D 61 6C 6C 20
             6F 72 20 65 72 72 6F
             72 20 69 6E 20 63 6F
             6E 76 65 72 73 69 6F
             6E
      005266 00                    5073 	.db 0x00
                                   5074 	.area CSEG    (CODE)
                                   5075 	.area CONST   (CODE)
      005267                       5076 ___str_16:
      005267 0D                    5077 	.db 0x0d
      005268 0A                    5078 	.db 0x0a
      005269 20 55 73 65 72 20 62  5079 	.ascii " User buffer size is not divisible by 32"
             75 66 66 65 72 20 73
             69 7A 65 20 69 73 20
             6E 6F 74 20 64 69 76
             69 73 69 62 6C 65 20
             62 79 20 33 32
      005291 00                    5080 	.db 0x00
                                   5081 	.area CSEG    (CODE)
                                   5082 	.area CONST   (CODE)
      005292                       5083 ___str_17:
      005292 0D                    5084 	.db 0x0d
      005293 0A                    5085 	.db 0x0a
      005294 20 46 72 65 65 69 6E  5086 	.ascii " Freeing ALL BUFFERS"
             67 20 41 4C 4C 20 42
             55 46 46 45 52 53
      0052A8 00                    5087 	.db 0x00
                                   5088 	.area CSEG    (CODE)
                                   5089 	.area CONST   (CODE)
      0052A9                       5090 ___str_18:
      0052A9 0D                    5091 	.db 0x0d
      0052AA 0A                    5092 	.db 0x0a
      0052AB 20 52 65 63 65 69 76  5093 	.ascii " Received %zu chars since last invocation of ?"
             65 64 20 25 7A 75 20
             63 68 61 72 73 20 73
             69 6E 63 65 20 6C 61
             73 74 20 69 6E 76 6F
             63 61 74 69 6F 6E 20
             6F 66 20 3F
      0052D9 00                    5094 	.db 0x00
                                   5095 	.area CSEG    (CODE)
                                   5096 	.area CONST   (CODE)
      0052DA                       5097 ___str_19:
      0052DA 25 63                 5098 	.ascii "%c"
      0052DC 00                    5099 	.db 0x00
                                   5100 	.area CSEG    (CODE)
                                   5101 	.area CONST   (CODE)
      0052DD                       5102 ___str_20:
      0052DD 44 75 6D 70 20 41 64  5103 	.ascii "Dump Admin Buffers"
             6D 69 6E 20 42 75 66
             66 65 72 73
      0052EF 00                    5104 	.db 0x00
                                   5105 	.area CSEG    (CODE)
                                   5106 	.area CONST   (CODE)
      0052F0                       5107 ___str_21:
      0052F0 0D                    5108 	.db 0x0d
      0052F1 0A                    5109 	.db 0x0a
      0052F2 20 42 75 66 66 65 72  5110 	.ascii " Buffer %d "
             20 25 64 20
      0052FD 00                    5111 	.db 0x00
                                   5112 	.area CSEG    (CODE)
                                   5113 	.area CONST   (CODE)
      0052FE                       5114 ___str_22:
      0052FE 0D                    5115 	.db 0x0d
      0052FF 0A                    5116 	.db 0x0a
      005300 2D 2D 2D 2D 2D 2D 2D  5117 	.ascii "----------"
             2D 2D 2D
      00530A 00                    5118 	.db 0x00
                                   5119 	.area CSEG    (CODE)
                                   5120 	.area CONST   (CODE)
      00530B                       5121 ___str_23:
      00530B 0D                    5122 	.db 0x0d
      00530C 0A                    5123 	.db 0x0a
      00530D 25 30 34 58 3A        5124 	.ascii "%04X:"
      005312 00                    5125 	.db 0x00
                                   5126 	.area CSEG    (CODE)
                                   5127 	.area CONST   (CODE)
      005313                       5128 ___str_24:
      005313 20 25 30 32 68 68 58  5129 	.ascii " %02hhX"
      00531A 00                    5130 	.db 0x00
                                   5131 	.area CSEG    (CODE)
                                   5132 	.area CONST   (CODE)
      00531B                       5133 ___str_25:
      00531B 43 6C 65 61 72 20 42  5134 	.ascii "Clear Buffers"
             75 66 66 65 72 73
      005328 00                    5135 	.db 0x00
                                   5136 	.area CSEG    (CODE)
                                   5137 	.area CONST   (CODE)
      005329                       5138 ___str_26:
      005329 43 6F 70 79 20 62 75  5139 	.ascii "Copy buffer_0 into buffer_3"
             66 66 65 72 5F 30 20
             69 6E 74 6F 20 62 75
             66 66 65 72 5F 33
      005344 00                    5140 	.db 0x00
                                   5141 	.area CSEG    (CODE)
                                   5142 	.area CONST   (CODE)
      005345                       5143 ___str_27:
      005345 0D                    5144 	.db 0x0d
      005346 0A                    5145 	.db 0x0a
      005347 20 62 75 66 66 65 72  5146 	.ascii " buffer_3 not allocated; exiting"
             5F 33 20 6E 6F 74 20
             61 6C 6C 6F 63 61 74
             65 64 3B 20 65 78 69
             74 69 6E 67
      005367 00                    5147 	.db 0x00
                                   5148 	.area CSEG    (CODE)
                                   5149 	.area CONST   (CODE)
      005368                       5150 ___str_28:
      005368 0D                    5151 	.db 0x0d
      005369 0A                    5152 	.db 0x0a
      00536A 20 44 6F 6E 65        5153 	.ascii " Done"
      00536F 00                    5154 	.db 0x00
                                   5155 	.area CSEG    (CODE)
                                   5156 	.area CONST   (CODE)
      005370                       5157 ___str_29:
      005370 43 6F 6E 76 65 72 74  5158 	.ascii "Convert buffer_3 chars to lowercase"
             20 62 75 66 66 65 72
             5F 33 20 63 68 61 72
             73 20 74 6F 20 6C 6F
             77 65 72 63 61 73 65
      005393 00                    5159 	.db 0x00
                                   5160 	.area CSEG    (CODE)
                                   5161 	.area CONST   (CODE)
      005394                       5162 ___str_30:
      005394 0D                    5163 	.db 0x0d
      005395 0A                    5164 	.db 0x0a
      005396 20 41 6C 6C 6F 63 20  5165 	.ascii " Alloc Buffer"
             42 75 66 66 65 72
      0053A3 00                    5166 	.db 0x00
                                   5167 	.area CSEG    (CODE)
                                   5168 	.area CONST   (CODE)
      0053A4                       5169 ___str_31:
      0053A4 0D                    5170 	.db 0x0d
      0053A5 0A                    5171 	.db 0x0a
      0053A6 50 6C 65 61 73 65 20  5172 	.ascii "Please enter a size for the new buffer, [200,600]: "
             65 6E 74 65 72 20 61
             20 73 69 7A 65 20 66
             6F 72 20 74 68 65 20
             6E 65 77 20 62 75 66
             66 65 72 2C 20 5B 32
             30 30 2C 36 30 30 5D
             3A 20
      0053D9 00                    5173 	.db 0x00
                                   5174 	.area CSEG    (CODE)
                                   5175 	.area CONST   (CODE)
      0053DA                       5176 ___str_32:
      0053DA 0D                    5177 	.db 0x0d
      0053DB 0A                    5178 	.db 0x0a
      0053DC 42 75 66 66 65 72 20  5179 	.ascii "Buffer size invalid!! Please try again"
             73 69 7A 65 20 69 6E
             76 61 6C 69 64 21 21
             20 50 6C 65 61 73 65
             20 74 72 79 20 61 67
             61 69 6E
      005402 00                    5180 	.db 0x00
                                   5181 	.area CSEG    (CODE)
                                   5182 	.area CONST   (CODE)
      005403                       5183 ___str_33:
      005403 0D                    5184 	.db 0x0d
      005404 0A                    5185 	.db 0x0a
      005405 20 41 6C 6C 6F 63 61  5186 	.ascii " Allocation failed; unable to allocate buffer"
             74 69 6F 6E 20 66 61
             69 6C 65 64 3B 20 75
             6E 61 62 6C 65 20 74
             6F 20 61 6C 6C 6F 63
             61 74 65 20 62 75 66
             66 65 72
      005432 00                    5187 	.db 0x00
                                   5188 	.area CSEG    (CODE)
                                   5189 	.area CONST   (CODE)
      005433                       5190 ___str_34:
      005433 0D                    5191 	.db 0x0d
      005434 0A                    5192 	.db 0x0a
      005435 20 41 6C 6C 6F 63 61  5193 	.ascii " Allocation successful!! New buffer added"
             74 69 6F 6E 20 73 75
             63 63 65 73 73 66 75
             6C 21 21 20 4E 65 77
             20 62 75 66 66 65 72
             20 61 64 64 65 64
      00545E 00                    5194 	.db 0x00
                                   5195 	.area CSEG    (CODE)
                                   5196 	.area CONST   (CODE)
      00545F                       5197 ___str_35:
      00545F 46 72 65 65 20 42 75  5198 	.ascii "Free Buffer"
             66 66 65 72
      00546A 00                    5199 	.db 0x00
                                   5200 	.area CSEG    (CODE)
                                   5201 	.area CONST   (CODE)
      00546B                       5202 ___str_36:
      00546B 0D                    5203 	.db 0x0d
      00546C 0A                    5204 	.db 0x0a
      00546D 20 4E 6F 20 62 75 66  5205 	.ascii " No buffers to free"
             66 65 72 73 20 74 6F
             20 66 72 65 65
      005480 00                    5206 	.db 0x00
                                   5207 	.area CSEG    (CODE)
                                   5208 	.area CONST   (CODE)
      005481                       5209 ___str_37:
      005481 0D                    5210 	.db 0x0d
      005482 0A                    5211 	.db 0x0a
      005483 50 6C 65 61 73 65 20  5212 	.ascii "Please enter the number of the buffer you would like to free"
             65 6E 74 65 72 20 74
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 74
             68 65 20 62 75 66 66
             65 72 20 79 6F 75 20
             77 6F 75 6C 64 20 6C
             69 6B 65 20 74 6F 20
             66 72 65 65
      0054BF 5B 32 2D 25 7A 75 5D  5213 	.ascii "[2-%zu]: "
             3A 20
      0054C8 00                    5214 	.db 0x00
                                   5215 	.area CSEG    (CODE)
                                   5216 	.area CONST   (CODE)
      0054C9                       5217 ___str_38:
      0054C9 0D                    5218 	.db 0x0d
      0054CA 0A                    5219 	.db 0x0a
      0054CB 20 49 6E 76 61 6C 69  5220 	.ascii " Invalid buffer number, negatives not valid"
             64 20 62 75 66 66 65
             72 20 6E 75 6D 62 65
             72 2C 20 6E 65 67 61
             74 69 76 65 73 20 6E
             6F 74 20 76 61 6C 69
             64
      0054F6 00                    5221 	.db 0x00
                                   5222 	.area CSEG    (CODE)
                                   5223 	.area CONST   (CODE)
      0054F7                       5224 ___str_39:
      0054F7 0D                    5225 	.db 0x0d
      0054F8 0A                    5226 	.db 0x0a
      0054F9 20 49 6E 76 61 6C 69  5227 	.ascii " Invalid buffer number, buffers 0 & 1 are protected"
             64 20 62 75 66 66 65
             72 20 6E 75 6D 62 65
             72 2C 20 62 75 66 66
             65 72 73 20 30 20 26
             20 31 20 61 72 65 20
             70 72 6F 74 65 63 74
             65 64
      00552C 00                    5228 	.db 0x00
                                   5229 	.area CSEG    (CODE)
                                   5230 	.area CONST   (CODE)
      00552D                       5231 ___str_40:
      00552D 0D                    5232 	.db 0x0d
      00552E 0A                    5233 	.db 0x0a
      00552F 20 49 6E 76 61 6C 69  5234 	.ascii " Invalid Buffer number; out of range"
             64 20 42 75 66 66 65
             72 20 6E 75 6D 62 65
             72 3B 20 6F 75 74 20
             6F 66 20 72 61 6E 67
             65
      005553 00                    5235 	.db 0x00
                                   5236 	.area CSEG    (CODE)
                                   5237 	.area CONST   (CODE)
      005554                       5238 ___str_41:
      005554 0D                    5239 	.db 0x0d
      005555 0A                    5240 	.db 0x0a
      005556 20 53 75 63 63 65 73  5241 	.ascii " Successfully removed buffer"
             73 66 75 6C 6C 79 20
             72 65 6D 6F 76 65 64
             20 62 75 66 66 65 72
      005572 00                    5242 	.db 0x00
                                   5243 	.area CSEG    (CODE)
                                   5244 	.area CONST   (CODE)
      005573                       5245 ___str_42:
      005573 0D                    5246 	.db 0x0d
      005574 0A                    5247 	.db 0x0a
      005575 20 46 61 69 6C 65 64  5248 	.ascii " Failed to remove buffer, ll error"
             20 74 6F 20 72 65 6D
             6F 76 65 20 62 75 66
             66 65 72 2C 20 6C 6C
             20 65 72 72 6F 72
      005597 00                    5249 	.db 0x00
                                   5250 	.area CSEG    (CODE)
                                   5251 	.area CONST   (CODE)
      005598                       5252 ___str_43:
      005598 0D                    5253 	.db 0x0d
      005599 0A                    5254 	.db 0x0a
      00559A 52 65 73 65 74 74 69  5255 	.ascii "Resetting device"
             6E 67 20 64 65 76 69
             63 65
      0055AA 00                    5256 	.db 0x00
                                   5257 	.area CSEG    (CODE)
                                   5258 	.area CONST   (CODE)
      0055AB                       5259 ___str_44:
      0055AB 0D                    5260 	.db 0x0d
      0055AC 0A                    5261 	.db 0x0a
      0055AD 20 44 75 6D 70 20 42  5262 	.ascii " Dump Buffer"
             75 66 66 65 72
      0055B9 00                    5263 	.db 0x00
                                   5264 	.area CSEG    (CODE)
                                   5265 	.area CONST   (CODE)
      0055BA                       5266 ___str_45:
      0055BA 0D                    5267 	.db 0x0d
      0055BB 0A                    5268 	.db 0x0a
      0055BC 45 6E 74 65 72 20 61  5269 	.ascii "Enter a valid buffer # [2-%zu]: "
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             23 20 5B 32 2D 25 7A
             75 5D 3A 20
      0055DC 00                    5270 	.db 0x00
                                   5271 	.area CSEG    (CODE)
                                   5272 	.area CONST   (CODE)
      0055DD                       5273 ___str_46:
      0055DD 0D                    5274 	.db 0x0d
      0055DE 0A                    5275 	.db 0x0a
      0055DF 49 6E 76 61 6C 69 64  5276 	.ascii "Invalid buffer number; returning to prompt"
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             3B 20 72 65 74 75 72
             6E 69 6E 67 20 74 6F
             20 70 72 6F 6D 70 74
      005609 00                    5277 	.db 0x00
                                   5278 	.area CSEG    (CODE)
                                   5279 	.area CONST   (CODE)
      00560A                       5280 ___str_47:
      00560A 0D                    5281 	.db 0x0d
      00560B 0A                    5282 	.db 0x0a
      00560C 4C 4C 20 65 72 72 6F  5283 	.ascii "LL error; returning to prompt"
             72 3B 20 72 65 74 75
             72 6E 69 6E 67 20 74
             6F 20 70 72 6F 6D 70
             74
      005629 00                    5284 	.db 0x00
                                   5285 	.area CSEG    (CODE)
                                   5286 	.area CONST   (CODE)
      00562A                       5287 ___str_48:
      00562A 0D                    5288 	.db 0x0d
      00562B 0A                    5289 	.db 0x0a
      00562C 20 42 75 66 66 65 72  5290 	.ascii " Buffer %d"
             20 25 64
      005636 00                    5291 	.db 0x00
                                   5292 	.area CSEG    (CODE)
                                   5293 	.area CONST   (CODE)
      005637                       5294 ___str_49:
      005637 0D                    5295 	.db 0x0d
      005638 0A                    5296 	.db 0x0a
      005639 45 6E 74 65 72 20 61  5297 	.ascii "Enter a char: "
             20 63 68 61 72 3A 20
      005647 00                    5298 	.db 0x00
                                   5299 	.area CSEG    (CODE)
                                   5300 	.area CONST   (CODE)
      005648                       5301 ___str_50:
      005648 0D                    5302 	.db 0x0d
      005649 0A                    5303 	.db 0x0a
      00564A 45 4E 44 20 43 4F 4D  5304 	.ascii "END COMMAND"
             4D 41 4E 44
      005655 00                    5305 	.db 0x00
                                   5306 	.area CSEG    (CODE)
                                   5307 	.area XINIT   (CODE)
      005663                       5308 __xinit__dynamic_buffers_list:
                                   5309 ; generic printIvalPtr
      005663 00 00 00              5310 	.byte #0x00,#0x00,#0x00
                                   5311 	.area CABS    (ABS,CODE)
