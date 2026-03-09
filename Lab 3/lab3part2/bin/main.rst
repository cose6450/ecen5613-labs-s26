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
                                    583 ;--------------------------------------------------------
                                    584 ; absolute external ram data
                                    585 ;--------------------------------------------------------
                                    586 	.area XABS    (ABS,XDATA)
                                    587 ;--------------------------------------------------------
                                    588 ; external initialized ram data
                                    589 ;--------------------------------------------------------
                                    590 	.area XISEG   (XDATA)
      0020D0                        591 _dynamic_buffers_list::
      0020D0                        592 	.ds 3
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
      002003 02 38 24         [24]  630 	ljmp	_main
                                    631 ;	return from main will return to caller
                                    632 ;--------------------------------------------------------
                                    633 ; code
                                    634 ;--------------------------------------------------------
                                    635 	.area CSEG    (CODE)
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    638 ;------------------------------------------------------------
                                    639 ;	src/main.c:54: int _sdcc_external_startup()
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
                                    652 ;	src/main.c:57: return 0;
      002090 90 00 00         [24]  653 	mov	dptr,#0x0000
                                    654 ;	src/main.c:58: }
      002093 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'is_alphabet_char'
                                    658 ;------------------------------------------------------------
                                    659 ;c                         Allocated with name '_is_alphabet_char_c_65536_82'
                                    660 ;------------------------------------------------------------
                                    661 ;	src/main.c:88: bool is_alphabet_char(char c)
                                    662 ;	-----------------------------------------
                                    663 ;	 function is_alphabet_char
                                    664 ;	-----------------------------------------
      002094                        665 _is_alphabet_char:
      002094 E5 82            [12]  666 	mov	a,dpl
      002096 90 00 17         [24]  667 	mov	dptr,#_is_alphabet_char_c_65536_82
      002099 F0               [24]  668 	movx	@dptr,a
                                    669 ;	src/main.c:90: return (c <= 'Z' && c >= 'A')
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
                                    680 ;	src/main.c:91: || (c <= 'z' && c >= 'a');
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
                                    703 ;	src/main.c:92: }
      0020C7 22               [24]  704 	ret
                                    705 ;------------------------------------------------------------
                                    706 ;Allocation info for local variables in function 'initialize_default_elements'
                                    707 ;------------------------------------------------------------
                                    708 ;buffer                    Allocated with name '_initialize_default_elements_buffer_65536_84'
                                    709 ;------------------------------------------------------------
                                    710 ;	src/main.c:94: void initialize_default_elements(buffer_t *buffer)
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
                                    726 ;	src/main.c:96: buffer->alphabet_chars = 0;
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
      0020F3 12 42 A8         [24]  747 	lcall	__gptrput
      0020F6 A3               [24]  748 	inc	dptr
      0020F7 12 42 A8         [24]  749 	lcall	__gptrput
                                    750 ;	src/main.c:97: buffer->curr_available_char = 0;
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
      00210A 12 42 A8         [24]  762 	lcall	__gptrput
      00210D A3               [24]  763 	inc	dptr
      00210E 12 42 A8         [24]  764 	lcall	__gptrput
                                    765 ;	src/main.c:98: buffer->next = NULL;
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
      002121 12 42 A8         [24]  777 	lcall	__gptrput
      002124 A3               [24]  778 	inc	dptr
      002125 12 42 A8         [24]  779 	lcall	__gptrput
      002128 A3               [24]  780 	inc	dptr
      002129 12 42 A8         [24]  781 	lcall	__gptrput
                                    782 ;	src/main.c:100: memset(buffer->buffer, 0x00, buffer->size);
      00212C 8D 82            [24]  783 	mov	dpl,r5
      00212E 8E 83            [24]  784 	mov	dph,r6
      002130 8F F0            [24]  785 	mov	b,r7
      002132 12 4F 02         [24]  786 	lcall	__gptrget
      002135 FB               [12]  787 	mov	r3,a
      002136 A3               [24]  788 	inc	dptr
      002137 12 4F 02         [24]  789 	lcall	__gptrget
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
      00214A 12 4F 02         [24]  801 	lcall	__gptrget
      00214D FD               [12]  802 	mov	r5,a
      00214E A3               [24]  803 	inc	dptr
      00214F 12 4F 02         [24]  804 	lcall	__gptrget
      002152 FE               [12]  805 	mov	r6,a
      002153 90 20 85         [24]  806 	mov	dptr,#_memset_PARM_2
      002156 E4               [12]  807 	clr	a
      002157 F0               [24]  808 	movx	@dptr,a
      002158 90 20 86         [24]  809 	mov	dptr,#_memset_PARM_3
      00215B ED               [12]  810 	mov	a,r5
      00215C F0               [24]  811 	movx	@dptr,a
      00215D EE               [12]  812 	mov	a,r6
      00215E A3               [24]  813 	inc	dptr
      00215F F0               [24]  814 	movx	@dptr,a
      002160 8B 82            [24]  815 	mov	dpl,r3
      002162 8C 83            [24]  816 	mov	dph,r4
      002164 8A F0            [24]  817 	mov	b,r2
                                    818 ;	src/main.c:101: }
      002166 02 41 5C         [24]  819 	ljmp	_memset
                                    820 ;------------------------------------------------------------
                                    821 ;Allocation info for local variables in function 'alloc_new_buffer'
                                    822 ;------------------------------------------------------------
                                    823 ;size                      Allocated with name '_alloc_new_buffer_size_65536_86'
                                    824 ;header                    Allocated with name '_alloc_new_buffer_header_65536_87'
                                    825 ;------------------------------------------------------------
                                    826 ;	src/main.c:103: buffer_t *alloc_new_buffer(size_t size)
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
                                    838 ;	src/main.c:105: buffer_t *header = malloc(sizeof(buffer_t));
      002174 90 00 0B         [24]  839 	mov	dptr,#0x000b
      002177 12 42 FF         [24]  840 	lcall	_malloc
      00217A AE 82            [24]  841 	mov	r6,dpl
      00217C AD 83            [24]  842 	mov	r5,dph
      00217E 7F 00            [12]  843 	mov	r7,#0x00
                                    844 ;	src/main.c:106: if (header == NULL)
      002180 EE               [12]  845 	mov	a,r6
      002181 4D               [12]  846 	orl	a,r5
                                    847 ;	src/main.c:108: return NULL;
      002182 70 06            [24]  848 	jnz	00102$
      002184 90 00 00         [24]  849 	mov	dptr,#0x0000
      002187 F5 F0            [12]  850 	mov	b,a
      002189 22               [24]  851 	ret
      00218A                        852 00102$:
                                    853 ;	src/main.c:110: header->size = size;
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
      0021A2 12 42 A8         [24]  871 	lcall	__gptrput
      0021A5 A3               [24]  872 	inc	dptr
      0021A6 E9               [12]  873 	mov	a,r1
      0021A7 12 42 A8         [24]  874 	lcall	__gptrput
                                    875 ;	src/main.c:111: header->buffer = malloc(size);
      0021AA 88 82            [24]  876 	mov	dpl,r0
      0021AC 89 83            [24]  877 	mov	dph,r1
      0021AE C0 07            [24]  878 	push	ar7
      0021B0 C0 06            [24]  879 	push	ar6
      0021B2 C0 05            [24]  880 	push	ar5
      0021B4 12 42 FF         [24]  881 	lcall	_malloc
      0021B7 AB 82            [24]  882 	mov	r3,dpl
      0021B9 AC 83            [24]  883 	mov	r4,dph
      0021BB D0 05            [24]  884 	pop	ar5
      0021BD D0 06            [24]  885 	pop	ar6
      0021BF D0 07            [24]  886 	pop	ar7
      0021C1 8E 82            [24]  887 	mov	dpl,r6
      0021C3 8D 83            [24]  888 	mov	dph,r5
      0021C5 8F F0            [24]  889 	mov	b,r7
      0021C7 EB               [12]  890 	mov	a,r3
      0021C8 12 42 A8         [24]  891 	lcall	__gptrput
      0021CB A3               [24]  892 	inc	dptr
      0021CC EC               [12]  893 	mov	a,r4
      0021CD 12 42 A8         [24]  894 	lcall	__gptrput
                                    895 ;	src/main.c:112: if (header->buffer == NULL)
      0021D0 EB               [12]  896 	mov	a,r3
      0021D1 4C               [12]  897 	orl	a,r4
      0021D2 70 16            [24]  898 	jnz	00104$
                                    899 ;	src/main.c:114: free(header);
      0021D4 8E 02            [24]  900 	mov	ar2,r6
      0021D6 8D 03            [24]  901 	mov	ar3,r5
      0021D8 8F 04            [24]  902 	mov	ar4,r7
      0021DA 8A 82            [24]  903 	mov	dpl,r2
      0021DC 8B 83            [24]  904 	mov	dph,r3
      0021DE 8C F0            [24]  905 	mov	b,r4
      0021E0 12 3F 91         [24]  906 	lcall	_free
                                    907 ;	src/main.c:115: return NULL;
      0021E3 90 00 00         [24]  908 	mov	dptr,#0x0000
      0021E6 75 F0 00         [24]  909 	mov	b,#0x00
      0021E9 22               [24]  910 	ret
      0021EA                        911 00104$:
                                    912 ;	src/main.c:117: initialize_default_elements(header);
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
                                    923 ;	src/main.c:118: return header; 
      0021FF 8E 82            [24]  924 	mov	dpl,r6
      002201 8D 83            [24]  925 	mov	dph,r5
      002203 8F F0            [24]  926 	mov	b,r7
                                    927 ;	src/main.c:119: }
      002205 22               [24]  928 	ret
                                    929 ;------------------------------------------------------------
                                    930 ;Allocation info for local variables in function 'is_number'
                                    931 ;------------------------------------------------------------
                                    932 ;c                         Allocated with name '_is_number_c_65536_90'
                                    933 ;------------------------------------------------------------
                                    934 ;	src/main.c:121: bool is_number(char c)
                                    935 ;	-----------------------------------------
                                    936 ;	 function is_number
                                    937 ;	-----------------------------------------
      002206                        938 _is_number:
      002206 E5 82            [12]  939 	mov	a,dpl
      002208 90 00 1D         [24]  940 	mov	dptr,#_is_number_c_65536_90
      00220B F0               [24]  941 	movx	@dptr,a
                                    942 ;	src/main.c:123: return c >= '0' && c <= '9';
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
                                    965 ;	src/main.c:124: }
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
                                    988 ;	src/main.c:127: void initialize_buffers()
                                    989 ;	-----------------------------------------
                                    990 ;	 function initialize_buffers
                                    991 ;	-----------------------------------------
      002229                        992 _initialize_buffers:
                                    993 ;	src/main.c:129: dynamic_buffers_list.head = NULL;
      002229 90 20 D0         [24]  994 	mov	dptr,#_dynamic_buffers_list
      00222C E4               [12]  995 	clr	a
      00222D F0               [24]  996 	movx	@dptr,a
      00222E A3               [24]  997 	inc	dptr
      00222F F0               [24]  998 	movx	@dptr,a
      002230 A3               [24]  999 	inc	dptr
      002231 F0               [24] 1000 	movx	@dptr,a
                                   1001 ;	src/main.c:131: while (true) 
      002232                       1002 00110$:
                                   1003 ;	src/main.c:133: printf("\r\nPlease enter the last two digits of your ID:");
      002232 74 1E            [12] 1004 	mov	a,#___str_0
      002234 C0 E0            [24] 1005 	push	acc
      002236 74 4F            [12] 1006 	mov	a,#(___str_0 >> 8)
      002238 C0 E0            [24] 1007 	push	acc
      00223A 74 80            [12] 1008 	mov	a,#0x80
      00223C C0 E0            [24] 1009 	push	acc
      00223E 12 44 D6         [24] 1010 	lcall	_printf
      002241 15 81            [12] 1011 	dec	sp
      002243 15 81            [12] 1012 	dec	sp
      002245 15 81            [12] 1013 	dec	sp
                                   1014 ;	src/main.c:134: get_string();
      002247 12 39 29         [24] 1015 	lcall	_get_string
                                   1016 ;	src/main.c:135: if (strlen(get_input_buffer()) != TWO_DIGIT_LEN 
      00224A 12 39 22         [24] 1017 	lcall	_get_input_buffer
      00224D 12 4E EA         [24] 1018 	lcall	_strlen
      002250 AE 82            [24] 1019 	mov	r6,dpl
      002252 AF 83            [24] 1020 	mov	r7,dph
      002254 BE 02 32         [24] 1021 	cjne	r6,#0x02,00101$
      002257 BF 00 2F         [24] 1022 	cjne	r7,#0x00,00101$
                                   1023 ;	src/main.c:136: || !is_number(*get_input_buffer())
      00225A 12 39 22         [24] 1024 	lcall	_get_input_buffer
      00225D 12 4F 02         [24] 1025 	lcall	__gptrget
      002260 F5 82            [12] 1026 	mov	dpl,a
      002262 12 22 06         [24] 1027 	lcall	_is_number
      002265 E5 82            [12] 1028 	mov	a,dpl
      002267 60 20            [24] 1029 	jz	00101$
                                   1030 ;	src/main.c:137: || !is_number(*(get_input_buffer()+1)))
      002269 12 39 22         [24] 1031 	lcall	_get_input_buffer
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
      00227D 12 4F 02         [24] 1042 	lcall	__gptrget
      002280 F5 82            [12] 1043 	mov	dpl,a
      002282 12 22 06         [24] 1044 	lcall	_is_number
      002285 E5 82            [12] 1045 	mov	a,dpl
      002287 70 17            [24] 1046 	jnz	00102$
      002289                       1047 00101$:
                                   1048 ;	src/main.c:139: printf("\r\n Did not enter valid two digit number, please try again");
      002289 74 4D            [12] 1049 	mov	a,#___str_1
      00228B C0 E0            [24] 1050 	push	acc
      00228D 74 4F            [12] 1051 	mov	a,#(___str_1 >> 8)
      00228F C0 E0            [24] 1052 	push	acc
      002291 74 80            [12] 1053 	mov	a,#0x80
      002293 C0 E0            [24] 1054 	push	acc
      002295 12 44 D6         [24] 1055 	lcall	_printf
      002298 15 81            [12] 1056 	dec	sp
      00229A 15 81            [12] 1057 	dec	sp
      00229C 15 81            [12] 1058 	dec	sp
                                   1059 ;	src/main.c:140: continue;
      00229E 80 92            [24] 1060 	sjmp	00110$
      0022A0                       1061 00102$:
                                   1062 ;	src/main.c:142: student_number = atoi(get_input_buffer());
      0022A0 12 39 22         [24] 1063 	lcall	_get_input_buffer
      0022A3 12 41 84         [24] 1064 	lcall	_atoi
      0022A6 85 82 25         [24] 1065 	mov	_initialize_buffers_sloc2_1_0,dpl
                                   1066 ;	src/main.c:143: if (!(student_number < 0 || student_number > MAX_STUDENT_NUMBER))
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
                                   1078 ;	src/main.c:145: break;
      0022C1                       1079 00106$:
                                   1080 ;	src/main.c:149: printf("\r\nAtoi error: number invalid or out of range, please try again");
      0022C1 74 87            [12] 1081 	mov	a,#___str_2
      0022C3 C0 E0            [24] 1082 	push	acc
      0022C5 74 4F            [12] 1083 	mov	a,#(___str_2 >> 8)
      0022C7 C0 E0            [24] 1084 	push	acc
      0022C9 74 80            [12] 1085 	mov	a,#0x80
      0022CB C0 E0            [24] 1086 	push	acc
      0022CD 12 44 D6         [24] 1087 	lcall	_printf
      0022D0 15 81            [12] 1088 	dec	sp
      0022D2 15 81            [12] 1089 	dec	sp
      0022D4 15 81            [12] 1090 	dec	sp
      0022D6 02 22 32         [24] 1091 	ljmp	00110$
      0022D9                       1092 00111$:
                                   1093 ;	src/main.c:153: size_t max_user_input = USER_BUFFER_MAX;
      0022D9 90 00 1E         [24] 1094 	mov	dptr,#_initialize_buffers_max_user_input_65538_98
      0022DC E4               [12] 1095 	clr	a
      0022DD F0               [24] 1096 	movx	@dptr,a
      0022DE 74 04            [12] 1097 	mov	a,#0x04
      0022E0 A3               [24] 1098 	inc	dptr
      0022E1 F0               [24] 1099 	movx	@dptr,a
                                   1100 ;	src/main.c:157: memset(static_buffers, 0, BUFFER_ALWAYS_HELD_COUNT * sizeof(buffer_t));
      0022E2 90 20 85         [24] 1101 	mov	dptr,#_memset_PARM_2
      0022E5 E4               [12] 1102 	clr	a
      0022E6 F0               [24] 1103 	movx	@dptr,a
      0022E7 90 20 86         [24] 1104 	mov	dptr,#_memset_PARM_3
      0022EA 74 16            [12] 1105 	mov	a,#0x16
      0022EC F0               [24] 1106 	movx	@dptr,a
      0022ED E4               [12] 1107 	clr	a
      0022EE A3               [24] 1108 	inc	dptr
      0022EF F0               [24] 1109 	movx	@dptr,a
      0022F0 90 00 01         [24] 1110 	mov	dptr,#_static_buffers
      0022F3 75 F0 00         [24] 1111 	mov	b,#0x00
      0022F6 12 41 5C         [24] 1112 	lcall	_memset
                                   1113 ;	src/main.c:158: while(true)
      0022F9 90 20 97         [24] 1114 	mov	dptr,#__mulint_PARM_2
      0022FC 74 02            [12] 1115 	mov	a,#0x02
      0022FE 25 25            [12] 1116 	add	a,_initialize_buffers_sloc2_1_0
      002300 F0               [24] 1117 	movx	@dptr,a
      002301 E4               [12] 1118 	clr	a
      002302 35 26            [12] 1119 	addc	a,(_initialize_buffers_sloc2_1_0 + 1)
      002304 A3               [24] 1120 	inc	dptr
      002305 F0               [24] 1121 	movx	@dptr,a
      002306 90 00 0A         [24] 1122 	mov	dptr,#0x000a
      002309 12 44 68         [24] 1123 	lcall	__mulint
      00230C AC 82            [24] 1124 	mov	r4,dpl
      00230E AD 83            [24] 1125 	mov	r5,dph
      002310                       1126 00128$:
                                   1127 ;	src/main.c:160: user_buffer_size = get_user_buffer_sz(max_user_input);
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
                                   1143 ;	src/main.c:161: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
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
                                   1156 ;	src/main.c:164: static_buffers[i].buffer = malloc(user_buffer_size);
      00233D C0 04            [24] 1157 	push	ar4
      00233F C0 05            [24] 1158 	push	ar5
      002341 90 20 97         [24] 1159 	mov	dptr,#__mulint_PARM_2
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
      002358 12 44 68         [24] 1172 	lcall	__mulint
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
      002385 12 42 FF         [24] 1193 	lcall	_malloc
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
                                   1207 ;	src/main.c:165: if(static_buffers[i].buffer == NULL)
      00239F EC               [12] 1208 	mov	a,r4
      0023A0 4D               [12] 1209 	orl	a,r5
      0023A1 D0 05            [24] 1210 	pop	ar5
      0023A3 D0 04            [24] 1211 	pop	ar4
      0023A5 70 43            [24] 1212 	jnz	00113$
                                   1213 ;	src/main.c:167: free_all_buffers();
      0023A7 C0 04            [24] 1214 	push	ar4
      0023A9 C0 05            [24] 1215 	push	ar5
      0023AB C0 05            [24] 1216 	push	ar5
      0023AD C0 04            [24] 1217 	push	ar4
      0023AF C0 03            [24] 1218 	push	ar3
      0023B1 C0 02            [24] 1219 	push	ar2
      0023B3 12 2C B7         [24] 1220 	lcall	_free_all_buffers
                                   1221 ;	src/main.c:168: printf(BUFFER_SZ_TOO_BIG);
      0023B6 74 C6            [12] 1222 	mov	a,#___str_3
      0023B8 C0 E0            [24] 1223 	push	acc
      0023BA 74 4F            [12] 1224 	mov	a,#(___str_3 >> 8)
      0023BC C0 E0            [24] 1225 	push	acc
      0023BE 74 80            [12] 1226 	mov	a,#0x80
      0023C0 C0 E0            [24] 1227 	push	acc
      0023C2 12 44 D6         [24] 1228 	lcall	_printf
      0023C5 15 81            [12] 1229 	dec	sp
      0023C7 15 81            [12] 1230 	dec	sp
      0023C9 15 81            [12] 1231 	dec	sp
      0023CB D0 02            [24] 1232 	pop	ar2
      0023CD D0 03            [24] 1233 	pop	ar3
      0023CF D0 04            [24] 1234 	pop	ar4
      0023D1 D0 05            [24] 1235 	pop	ar5
                                   1236 ;	src/main.c:169: max_user_input = user_buffer_size-1;
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
                                   1249 ;	src/main.c:170: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
      0023E3 D0 05            [24] 1250 	pop	ar5
      0023E5 D0 04            [24] 1251 	pop	ar4
      0023E7 02 23 10         [24] 1252 	ljmp	00128$
      0023EA                       1253 00113$:
                                   1254 ;	src/main.c:172: static_buffers[i].size = (size_t) user_buffer_size;
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
                                   1274 ;	src/main.c:173: initialize_default_elements(&static_buffers[i]);
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
                                   1292 ;	src/main.c:161: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002428 08               [12] 1293 	inc	r0
      002429 B8 00 01         [24] 1294 	cjne	r0,#0x00,00235$
      00242C 09               [12] 1295 	inc	r1
      00242D                       1296 00235$:
      00242D D0 05            [24] 1297 	pop	ar5
      00242F D0 04            [24] 1298 	pop	ar4
      002431 02 23 2F         [24] 1299 	ljmp	00139$
                                   1300 ;	src/main.c:178: for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
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
                                   1314 ;	src/main.c:180: buffer_t *new_buffer = alloc_new_buffer(user_buffer_size);
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
                                   1333 ;	src/main.c:181: if (new_buffer == NULL)
      00246E E5 27            [12] 1334 	mov	a,_initialize_buffers_sloc3_1_0
      002470 45 28            [12] 1335 	orl	a,(_initialize_buffers_sloc3_1_0 + 1)
      002472 70 3B            [24] 1336 	jnz	00117$
                                   1337 ;	src/main.c:183: free_all_buffers();
      002474 C0 05            [24] 1338 	push	ar5
      002476 C0 04            [24] 1339 	push	ar4
      002478 C0 03            [24] 1340 	push	ar3
      00247A C0 02            [24] 1341 	push	ar2
      00247C 12 2C B7         [24] 1342 	lcall	_free_all_buffers
                                   1343 ;	src/main.c:184: printf(BUFFER_SZ_TOO_BIG);
      00247F 74 C6            [12] 1344 	mov	a,#___str_3
      002481 C0 E0            [24] 1345 	push	acc
      002483 74 4F            [12] 1346 	mov	a,#(___str_3 >> 8)
      002485 C0 E0            [24] 1347 	push	acc
      002487 74 80            [12] 1348 	mov	a,#0x80
      002489 C0 E0            [24] 1349 	push	acc
      00248B 12 44 D6         [24] 1350 	lcall	_printf
      00248E 15 81            [12] 1351 	dec	sp
      002490 15 81            [12] 1352 	dec	sp
      002492 15 81            [12] 1353 	dec	sp
      002494 D0 02            [24] 1354 	pop	ar2
      002496 D0 03            [24] 1355 	pop	ar3
      002498 D0 04            [24] 1356 	pop	ar4
      00249A D0 05            [24] 1357 	pop	ar5
                                   1358 ;	src/main.c:185: max_user_input = user_buffer_size-1;
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
                                   1371 ;	src/main.c:186: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
      0024AC 02 23 10         [24] 1372 	ljmp	00128$
      0024AF                       1373 00117$:
                                   1374 ;	src/main.c:190: append_to_buffer_list(&dynamic_buffers_list, new_buffer);
      0024AF 90 20 47         [24] 1375 	mov	dptr,#_append_to_buffer_list_PARM_2
      0024B2 E5 27            [12] 1376 	mov	a,_initialize_buffers_sloc3_1_0
      0024B4 F0               [24] 1377 	movx	@dptr,a
      0024B5 E5 28            [12] 1378 	mov	a,(_initialize_buffers_sloc3_1_0 + 1)
      0024B7 A3               [24] 1379 	inc	dptr
      0024B8 F0               [24] 1380 	movx	@dptr,a
      0024B9 E5 29            [12] 1381 	mov	a,(_initialize_buffers_sloc3_1_0 + 2)
      0024BB A3               [24] 1382 	inc	dptr
      0024BC F0               [24] 1383 	movx	@dptr,a
      0024BD 90 20 D0         [24] 1384 	mov	dptr,#_dynamic_buffers_list
      0024C0 75 F0 00         [24] 1385 	mov	b,#0x00
      0024C3 C0 07            [24] 1386 	push	ar7
      0024C5 C0 06            [24] 1387 	push	ar6
      0024C7 C0 05            [24] 1388 	push	ar5
      0024C9 C0 04            [24] 1389 	push	ar4
      0024CB C0 03            [24] 1390 	push	ar3
      0024CD C0 02            [24] 1391 	push	ar2
      0024CF 12 3A 94         [24] 1392 	lcall	_append_to_buffer_list
      0024D2 D0 02            [24] 1393 	pop	ar2
      0024D4 D0 03            [24] 1394 	pop	ar3
      0024D6 D0 04            [24] 1395 	pop	ar4
      0024D8 D0 05            [24] 1396 	pop	ar5
      0024DA D0 06            [24] 1397 	pop	ar6
      0024DC D0 07            [24] 1398 	pop	ar7
                                   1399 ;	src/main.c:178: for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
      0024DE 0E               [12] 1400 	inc	r6
      0024DF BE 00 01         [24] 1401 	cjne	r6,#0x00,00238$
      0024E2 0F               [12] 1402 	inc	r7
      0024E3                       1403 00238$:
      0024E3 02 24 38         [24] 1404 	ljmp	00142$
      0024E6                       1405 00119$:
                                   1406 ;	src/main.c:194: remove_from_buffer_list(&dynamic_buffers_list, 2); 
      0024E6 90 20 50         [24] 1407 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0024E9 74 02            [12] 1408 	mov	a,#0x02
      0024EB F0               [24] 1409 	movx	@dptr,a
      0024EC E4               [12] 1410 	clr	a
      0024ED A3               [24] 1411 	inc	dptr
      0024EE F0               [24] 1412 	movx	@dptr,a
      0024EF 90 20 D0         [24] 1413 	mov	dptr,#_dynamic_buffers_list
      0024F2 75 F0 00         [24] 1414 	mov	b,#0x00
      0024F5 C0 05            [24] 1415 	push	ar5
      0024F7 C0 04            [24] 1416 	push	ar4
      0024F9 C0 03            [24] 1417 	push	ar3
      0024FB C0 02            [24] 1418 	push	ar2
      0024FD 12 3B 7A         [24] 1419 	lcall	_remove_from_buffer_list
      002500 D0 02            [24] 1420 	pop	ar2
      002502 D0 03            [24] 1421 	pop	ar3
      002504 D0 04            [24] 1422 	pop	ar4
      002506 D0 05            [24] 1423 	pop	ar5
                                   1424 ;	src/main.c:196: buffer_t *buffer_4 = alloc_new_buffer((size_t) (10 * (student_number + 2)));
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
                                   1441 ;	src/main.c:198: if (buffer_4 == NULL)
      002529 E9               [12] 1442 	mov	a,r1
      00252A 4E               [12] 1443 	orl	a,r6
      00252B 70 43            [24] 1444 	jnz	00121$
                                   1445 ;	src/main.c:200: free_all_buffers();
      00252D C0 04            [24] 1446 	push	ar4
      00252F C0 05            [24] 1447 	push	ar5
      002531 C0 05            [24] 1448 	push	ar5
      002533 C0 04            [24] 1449 	push	ar4
      002535 C0 03            [24] 1450 	push	ar3
      002537 C0 02            [24] 1451 	push	ar2
      002539 12 2C B7         [24] 1452 	lcall	_free_all_buffers
                                   1453 ;	src/main.c:201: printf(BUFFER_SZ_TOO_BIG);
      00253C 74 C6            [12] 1454 	mov	a,#___str_3
      00253E C0 E0            [24] 1455 	push	acc
      002540 74 4F            [12] 1456 	mov	a,#(___str_3 >> 8)
      002542 C0 E0            [24] 1457 	push	acc
      002544 74 80            [12] 1458 	mov	a,#0x80
      002546 C0 E0            [24] 1459 	push	acc
      002548 12 44 D6         [24] 1460 	lcall	_printf
      00254B 15 81            [12] 1461 	dec	sp
      00254D 15 81            [12] 1462 	dec	sp
      00254F 15 81            [12] 1463 	dec	sp
      002551 D0 02            [24] 1464 	pop	ar2
      002553 D0 03            [24] 1465 	pop	ar3
      002555 D0 04            [24] 1466 	pop	ar4
      002557 D0 05            [24] 1467 	pop	ar5
                                   1468 ;	src/main.c:202: max_user_input = user_buffer_size-1;
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
                                   1481 ;	src/main.c:203: continue;
      002569 D0 05            [24] 1482 	pop	ar5
      00256B D0 04            [24] 1483 	pop	ar4
      00256D 02 23 10         [24] 1484 	ljmp	00128$
      002570                       1485 00121$:
                                   1486 ;	src/main.c:207: append_to_buffer_list(&dynamic_buffers_list, buffer_4);
      002570 90 20 47         [24] 1487 	mov	dptr,#_append_to_buffer_list_PARM_2
      002573 E9               [12] 1488 	mov	a,r1
      002574 F0               [24] 1489 	movx	@dptr,a
      002575 EE               [12] 1490 	mov	a,r6
      002576 A3               [24] 1491 	inc	dptr
      002577 F0               [24] 1492 	movx	@dptr,a
      002578 EF               [12] 1493 	mov	a,r7
      002579 A3               [24] 1494 	inc	dptr
      00257A F0               [24] 1495 	movx	@dptr,a
      00257B 90 20 D0         [24] 1496 	mov	dptr,#_dynamic_buffers_list
      00257E 75 F0 00         [24] 1497 	mov	b,#0x00
      002581 C0 05            [24] 1498 	push	ar5
      002583 C0 04            [24] 1499 	push	ar4
      002585 C0 03            [24] 1500 	push	ar3
      002587 C0 02            [24] 1501 	push	ar2
      002589 12 3A 94         [24] 1502 	lcall	_append_to_buffer_list
      00258C D0 02            [24] 1503 	pop	ar2
      00258E D0 03            [24] 1504 	pop	ar3
                                   1505 ;	src/main.c:210: buffer_t *buffer_5 = alloc_new_buffer((size_t) 2 * user_buffer_size);
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
                                   1524 ;	src/main.c:211: if (buffer_5 == NULL)
      0025AF E9               [12] 1525 	mov	a,r1
      0025B0 4E               [12] 1526 	orl	a,r6
      0025B1 70 43            [24] 1527 	jnz	00124$
                                   1528 ;	src/main.c:213: free_all_buffers();
      0025B3 C0 04            [24] 1529 	push	ar4
      0025B5 C0 05            [24] 1530 	push	ar5
      0025B7 C0 05            [24] 1531 	push	ar5
      0025B9 C0 04            [24] 1532 	push	ar4
      0025BB C0 03            [24] 1533 	push	ar3
      0025BD C0 02            [24] 1534 	push	ar2
      0025BF 12 2C B7         [24] 1535 	lcall	_free_all_buffers
                                   1536 ;	src/main.c:214: printf(BUFFER_SZ_TOO_BIG);
      0025C2 74 C6            [12] 1537 	mov	a,#___str_3
      0025C4 C0 E0            [24] 1538 	push	acc
      0025C6 74 4F            [12] 1539 	mov	a,#(___str_3 >> 8)
      0025C8 C0 E0            [24] 1540 	push	acc
      0025CA 74 80            [12] 1541 	mov	a,#0x80
      0025CC C0 E0            [24] 1542 	push	acc
      0025CE 12 44 D6         [24] 1543 	lcall	_printf
      0025D1 15 81            [12] 1544 	dec	sp
      0025D3 15 81            [12] 1545 	dec	sp
      0025D5 15 81            [12] 1546 	dec	sp
      0025D7 D0 02            [24] 1547 	pop	ar2
      0025D9 D0 03            [24] 1548 	pop	ar3
      0025DB D0 04            [24] 1549 	pop	ar4
      0025DD D0 05            [24] 1550 	pop	ar5
                                   1551 ;	src/main.c:215: max_user_input = user_buffer_size-1;
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
                                   1564 ;	src/main.c:216: continue;
      0025EF D0 05            [24] 1565 	pop	ar5
      0025F1 D0 04            [24] 1566 	pop	ar4
      0025F3 02 23 10         [24] 1567 	ljmp	00128$
      0025F6                       1568 00124$:
                                   1569 ;	src/main.c:220: append_to_buffer_list(&dynamic_buffers_list, buffer_5); 
      0025F6 90 20 47         [24] 1570 	mov	dptr,#_append_to_buffer_list_PARM_2
      0025F9 E9               [12] 1571 	mov	a,r1
      0025FA F0               [24] 1572 	movx	@dptr,a
      0025FB EE               [12] 1573 	mov	a,r6
      0025FC A3               [24] 1574 	inc	dptr
      0025FD F0               [24] 1575 	movx	@dptr,a
      0025FE EF               [12] 1576 	mov	a,r7
      0025FF A3               [24] 1577 	inc	dptr
      002600 F0               [24] 1578 	movx	@dptr,a
      002601 90 20 D0         [24] 1579 	mov	dptr,#_dynamic_buffers_list
      002604 75 F0 00         [24] 1580 	mov	b,#0x00
      002607 C0 03            [24] 1581 	push	ar3
      002609 C0 02            [24] 1582 	push	ar2
      00260B 12 3A 94         [24] 1583 	lcall	_append_to_buffer_list
                                   1584 ;	src/main.c:226: printf("\r\nstudent_number: %d", student_number);
      00260E C0 25            [24] 1585 	push	_initialize_buffers_sloc2_1_0
      002610 C0 26            [24] 1586 	push	(_initialize_buffers_sloc2_1_0 + 1)
      002612 74 FF            [12] 1587 	mov	a,#___str_4
      002614 C0 E0            [24] 1588 	push	acc
      002616 74 4F            [12] 1589 	mov	a,#(___str_4 >> 8)
      002618 C0 E0            [24] 1590 	push	acc
      00261A 74 80            [12] 1591 	mov	a,#0x80
      00261C C0 E0            [24] 1592 	push	acc
      00261E 12 44 D6         [24] 1593 	lcall	_printf
      002621 E5 81            [12] 1594 	mov	a,sp
      002623 24 FB            [12] 1595 	add	a,#0xfb
      002625 F5 81            [12] 1596 	mov	sp,a
      002627 D0 02            [24] 1597 	pop	ar2
      002629 D0 03            [24] 1598 	pop	ar3
                                   1599 ;	src/main.c:227: printf("\r\nuser_buffer_size: %zu", user_buffer_size);
      00262B C0 02            [24] 1600 	push	ar2
      00262D C0 03            [24] 1601 	push	ar3
      00262F 74 14            [12] 1602 	mov	a,#___str_5
      002631 C0 E0            [24] 1603 	push	acc
      002633 74 50            [12] 1604 	mov	a,#(___str_5 >> 8)
      002635 C0 E0            [24] 1605 	push	acc
      002637 74 80            [12] 1606 	mov	a,#0x80
      002639 C0 E0            [24] 1607 	push	acc
      00263B 12 44 D6         [24] 1608 	lcall	_printf
      00263E E5 81            [12] 1609 	mov	a,sp
      002640 24 FB            [12] 1610 	add	a,#0xfb
      002642 F5 81            [12] 1611 	mov	sp,a
                                   1612 ;	src/main.c:229: size_t total_heap_sz = 0;
      002644 90 00 20         [24] 1613 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      002647 E4               [12] 1614 	clr	a
      002648 F0               [24] 1615 	movx	@dptr,a
      002649 A3               [24] 1616 	inc	dptr
      00264A F0               [24] 1617 	movx	@dptr,a
                                   1618 ;	src/main.c:231: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00264B 7E 00            [12] 1619 	mov	r6,#0x00
      00264D 7F 00            [12] 1620 	mov	r7,#0x00
      00264F                       1621 00144$:
                                   1622 ;	src/main.c:233: if(static_buffers[i].buffer != NULL) {
      00264F 90 20 97         [24] 1623 	mov	dptr,#__mulint_PARM_2
      002652 EE               [12] 1624 	mov	a,r6
      002653 F0               [24] 1625 	movx	@dptr,a
      002654 EF               [12] 1626 	mov	a,r7
      002655 A3               [24] 1627 	inc	dptr
      002656 F0               [24] 1628 	movx	@dptr,a
      002657 90 00 0B         [24] 1629 	mov	dptr,#0x000b
      00265A C0 07            [24] 1630 	push	ar7
      00265C C0 06            [24] 1631 	push	ar6
      00265E 12 44 68         [24] 1632 	lcall	__mulint
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
                                   1652 ;	src/main.c:234: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, static_buffers[i].buffer, static_buffers[i].buffer + static_buffers[i].size, static_buffers[i].size);
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
      0026D6 74 2C            [12] 1705 	mov	a,#___str_6
      0026D8 C0 E0            [24] 1706 	push	acc
      0026DA 74 50            [12] 1707 	mov	a,#(___str_6 >> 8)
      0026DC C0 E0            [24] 1708 	push	acc
      0026DE 74 80            [12] 1709 	mov	a,#0x80
      0026E0 C0 E0            [24] 1710 	push	acc
      0026E2 12 44 D6         [24] 1711 	lcall	_printf
      0026E5 E5 81            [12] 1712 	mov	a,sp
      0026E7 24 F3            [12] 1713 	add	a,#0xf3
      0026E9 F5 81            [12] 1714 	mov	sp,a
      0026EB D0 02            [24] 1715 	pop	ar2
      0026ED D0 03            [24] 1716 	pop	ar3
      0026EF D0 06            [24] 1717 	pop	ar6
      0026F1 D0 07            [24] 1718 	pop	ar7
                                   1719 ;	src/main.c:235: total_heap_sz += static_buffers[i].size; 
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
                                   1742 ;	src/main.c:231: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
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
                                   1756 ;	src/main.c:239: buffer_t *curr = dynamic_buffers_list.head;
      002721 90 20 D0         [24] 1757 	mov	dptr,#_dynamic_buffers_list
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
                                   1775 ;	src/main.c:241: while(curr != NULL) {
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
                                   1793 ;	src/main.c:242: if(curr->buffer != NULL) {
      00274D 8B 82            [24] 1794 	mov	dpl,r3
      00274F 8C 83            [24] 1795 	mov	dph,r4
      002751 8D F0            [24] 1796 	mov	b,r5
      002753 12 4F 02         [24] 1797 	lcall	__gptrget
      002756 F9               [12] 1798 	mov	r1,a
      002757 A3               [24] 1799 	inc	dptr
      002758 12 4F 02         [24] 1800 	lcall	__gptrget
      00275B FA               [12] 1801 	mov	r2,a
      00275C 49               [12] 1802 	orl	a,r1
      00275D 70 03            [24] 1803 	jnz	00245$
      00275F 02 27 E1         [24] 1804 	ljmp	00134$
      002762                       1805 00245$:
                                   1806 ;	src/main.c:243: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, curr->buffer, curr->buffer + curr->size, curr->size);
      002762 74 04            [12] 1807 	mov	a,#0x04
      002764 2B               [12] 1808 	add	a,r3
      002765 FB               [12] 1809 	mov	r3,a
      002766 E4               [12] 1810 	clr	a
      002767 3C               [12] 1811 	addc	a,r4
      002768 FC               [12] 1812 	mov	r4,a
      002769 8B 82            [24] 1813 	mov	dpl,r3
      00276B 8C 83            [24] 1814 	mov	dph,r4
      00276D 8D F0            [24] 1815 	mov	b,r5
      00276F 12 4F 02         [24] 1816 	lcall	__gptrget
      002772 F5 27            [12] 1817 	mov	_initialize_buffers_sloc3_1_0,a
      002774 A3               [24] 1818 	inc	dptr
      002775 12 4F 02         [24] 1819 	lcall	__gptrget
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
      0027A5 74 2C            [12] 1844 	mov	a,#___str_6
      0027A7 C0 E0            [24] 1845 	push	acc
      0027A9 74 50            [12] 1846 	mov	a,#(___str_6 >> 8)
      0027AB C0 E0            [24] 1847 	push	acc
      0027AD 74 80            [12] 1848 	mov	a,#0x80
      0027AF C0 E0            [24] 1849 	push	acc
      0027B1 12 44 D6         [24] 1850 	lcall	_printf
      0027B4 E5 81            [12] 1851 	mov	a,sp
      0027B6 24 F3            [12] 1852 	add	a,#0xf3
      0027B8 F5 81            [12] 1853 	mov	sp,a
      0027BA D0 03            [24] 1854 	pop	ar3
      0027BC D0 04            [24] 1855 	pop	ar4
      0027BE D0 05            [24] 1856 	pop	ar5
                                   1857 ;	src/main.c:244: total_heap_sz += curr->size; 
      0027C0 8B 82            [24] 1858 	mov	dpl,r3
      0027C2 8C 83            [24] 1859 	mov	dph,r4
      0027C4 8D F0            [24] 1860 	mov	b,r5
      0027C6 12 4F 02         [24] 1861 	lcall	__gptrget
      0027C9 FB               [12] 1862 	mov	r3,a
      0027CA A3               [24] 1863 	inc	dptr
      0027CB 12 4F 02         [24] 1864 	lcall	__gptrget
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
                                   1881 ;	src/main.c:246: i++; 
      0027E1 05 2A            [12] 1882 	inc	_initialize_buffers_sloc4_1_0
      0027E3 E4               [12] 1883 	clr	a
      0027E4 B5 2A 02         [24] 1884 	cjne	a,_initialize_buffers_sloc4_1_0,00246$
      0027E7 05 2B            [12] 1885 	inc	(_initialize_buffers_sloc4_1_0 + 1)
      0027E9                       1886 00246$:
                                   1887 ;	src/main.c:247: curr = curr->next;
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
      002801 12 4F 02         [24] 1906 	lcall	__gptrget
      002804 FD               [12] 1907 	mov	r5,a
      002805 A3               [24] 1908 	inc	dptr
      002806 12 4F 02         [24] 1909 	lcall	__gptrget
      002809 FE               [12] 1910 	mov	r6,a
      00280A A3               [24] 1911 	inc	dptr
      00280B 12 4F 02         [24] 1912 	lcall	__gptrget
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
                                   1925 ;	src/main.c:249: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      00281D 90 00 20         [24] 1926 	mov	dptr,#_initialize_buffers_total_heap_sz_65539_114
      002820 E0               [24] 1927 	movx	a,@dptr
      002821 C0 E0            [24] 1928 	push	acc
      002823 A3               [24] 1929 	inc	dptr
      002824 E0               [24] 1930 	movx	a,@dptr
      002825 C0 E0            [24] 1931 	push	acc
      002827 74 38            [12] 1932 	mov	a,#(___sdcc_heap + 0x2000)
      002829 C0 E0            [24] 1933 	push	acc
      00282B 74 20            [12] 1934 	mov	a,#((___sdcc_heap + 0x2000) >> 8)
      00282D C0 E0            [24] 1935 	push	acc
      00282F E4               [12] 1936 	clr	a
      002830 C0 E0            [24] 1937 	push	acc
      002832 74 38            [12] 1938 	mov	a,#___sdcc_heap
      002834 C0 E0            [24] 1939 	push	acc
      002836 74 00            [12] 1940 	mov	a,#(___sdcc_heap >> 8)
      002838 C0 E0            [24] 1941 	push	acc
      00283A E4               [12] 1942 	clr	a
      00283B C0 E0            [24] 1943 	push	acc
      00283D 74 58            [12] 1944 	mov	a,#___str_7
      00283F C0 E0            [24] 1945 	push	acc
      002841 74 50            [12] 1946 	mov	a,#(___str_7 >> 8)
      002843 C0 E0            [24] 1947 	push	acc
      002845 74 80            [12] 1948 	mov	a,#0x80
      002847 C0 E0            [24] 1949 	push	acc
      002849 12 44 D6         [24] 1950 	lcall	_printf
      00284C E5 81            [12] 1951 	mov	a,sp
      00284E 24 F5            [12] 1952 	add	a,#0xf5
      002850 F5 81            [12] 1953 	mov	sp,a
                                   1954 ;	src/main.c:250: reset_char_count();
                                   1955 ;	src/main.c:251: }
      002852 02 3A 8C         [24] 1956 	ljmp	_reset_char_count
                                   1957 ;------------------------------------------------------------
                                   1958 ;Allocation info for local variables in function 'store_in_buffer'
                                   1959 ;------------------------------------------------------------
                                   1960 ;sloc0                     Allocated with name '_store_in_buffer_sloc0_1_0'
                                   1961 ;sloc1                     Allocated with name '_store_in_buffer_sloc1_1_0'
                                   1962 ;c                         Allocated with name '_store_in_buffer_PARM_2'
                                   1963 ;buffer                    Allocated with name '_store_in_buffer_buffer_65536_121'
                                   1964 ;------------------------------------------------------------
                                   1965 ;	src/main.c:253: void store_in_buffer(buffer_t *buffer, char c)
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
                                   1981 ;	src/main.c:255: if (buffer->curr_available_char < buffer->size)
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
      002884 12 4F 02         [24] 2001 	lcall	__gptrget
      002887 F5 30            [12] 2002 	mov	_store_in_buffer_sloc0_1_0,a
      002889 A3               [24] 2003 	inc	dptr
      00288A 12 4F 02         [24] 2004 	lcall	__gptrget
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
      00289E 12 4F 02         [24] 2016 	lcall	__gptrget
      0028A1 F8               [12] 2017 	mov	r0,a
      0028A2 A3               [24] 2018 	inc	dptr
      0028A3 12 4F 02         [24] 2019 	lcall	__gptrget
      0028A6 F9               [12] 2020 	mov	r1,a
      0028A7 C3               [12] 2021 	clr	c
      0028A8 E5 30            [12] 2022 	mov	a,_store_in_buffer_sloc0_1_0
      0028AA 98               [12] 2023 	subb	a,r0
      0028AB E5 31            [12] 2024 	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
      0028AD 99               [12] 2025 	subb	a,r1
      0028AE 40 01            [24] 2026 	jc	00115$
      0028B0 22               [24] 2027 	ret
      0028B1                       2028 00115$:
                                   2029 ;	src/main.c:257: buffer->buffer[buffer->curr_available_char] = c;
      0028B1 8D 82            [24] 2030 	mov	dpl,r5
      0028B3 8E 83            [24] 2031 	mov	dph,r6
      0028B5 8F F0            [24] 2032 	mov	b,r7
      0028B7 12 4F 02         [24] 2033 	lcall	__gptrget
      0028BA FB               [12] 2034 	mov	r3,a
      0028BB A3               [24] 2035 	inc	dptr
      0028BC 12 4F 02         [24] 2036 	lcall	__gptrget
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
                                   2050 ;	src/main.c:258: buffer->curr_available_char++;
      0028D2 85 32 82         [24] 2051 	mov	dpl,_store_in_buffer_sloc1_1_0
      0028D5 85 33 83         [24] 2052 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      0028D8 85 34 F0         [24] 2053 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      0028DB 12 4F 02         [24] 2054 	lcall	__gptrget
      0028DE FC               [12] 2055 	mov	r4,a
      0028DF A3               [24] 2056 	inc	dptr
      0028E0 12 4F 02         [24] 2057 	lcall	__gptrget
      0028E3 FB               [12] 2058 	mov	r3,a
      0028E4 0C               [12] 2059 	inc	r4
      0028E5 BC 00 01         [24] 2060 	cjne	r4,#0x00,00116$
      0028E8 0B               [12] 2061 	inc	r3
      0028E9                       2062 00116$:
      0028E9 85 32 82         [24] 2063 	mov	dpl,_store_in_buffer_sloc1_1_0
      0028EC 85 33 83         [24] 2064 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      0028EF 85 34 F0         [24] 2065 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      0028F2 EC               [12] 2066 	mov	a,r4
      0028F3 12 42 A8         [24] 2067 	lcall	__gptrput
      0028F6 A3               [24] 2068 	inc	dptr
      0028F7 EB               [12] 2069 	mov	a,r3
      0028F8 12 42 A8         [24] 2070 	lcall	__gptrput
                                   2071 ;	src/main.c:259: if (is_alphabet_char(c))
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
                                   2082 ;	src/main.c:261: buffer->alphabet_chars++;
      002910 74 02            [12] 2083 	mov	a,#0x02
      002912 2D               [12] 2084 	add	a,r5
      002913 FD               [12] 2085 	mov	r5,a
      002914 E4               [12] 2086 	clr	a
      002915 3E               [12] 2087 	addc	a,r6
      002916 FE               [12] 2088 	mov	r6,a
      002917 8D 82            [24] 2089 	mov	dpl,r5
      002919 8E 83            [24] 2090 	mov	dph,r6
      00291B 8F F0            [24] 2091 	mov	b,r7
      00291D 12 4F 02         [24] 2092 	lcall	__gptrget
      002920 FB               [12] 2093 	mov	r3,a
      002921 A3               [24] 2094 	inc	dptr
      002922 12 4F 02         [24] 2095 	lcall	__gptrget
      002925 FC               [12] 2096 	mov	r4,a
      002926 0B               [12] 2097 	inc	r3
      002927 BB 00 01         [24] 2098 	cjne	r3,#0x00,00118$
      00292A 0C               [12] 2099 	inc	r4
      00292B                       2100 00118$:
      00292B 8D 82            [24] 2101 	mov	dpl,r5
      00292D 8E 83            [24] 2102 	mov	dph,r6
      00292F 8F F0            [24] 2103 	mov	b,r7
      002931 EB               [12] 2104 	mov	a,r3
      002932 12 42 A8         [24] 2105 	lcall	__gptrput
      002935 A3               [24] 2106 	inc	dptr
      002936 EC               [12] 2107 	mov	a,r4
                                   2108 ;	src/main.c:264: }
      002937 02 42 A8         [24] 2109 	ljmp	__gptrput
      00293A                       2110 00105$:
      00293A 22               [24] 2111 	ret
                                   2112 ;------------------------------------------------------------
                                   2113 ;Allocation info for local variables in function 'print_dashed_line'
                                   2114 ;------------------------------------------------------------
                                   2115 ;	src/main.c:266: void print_dashed_line()
                                   2116 ;	-----------------------------------------
                                   2117 ;	 function print_dashed_line
                                   2118 ;	-----------------------------------------
      00293B                       2119 _print_dashed_line:
                                   2120 ;	src/main.c:268: printf("\r\n------------------------------------------------");
      00293B 74 81            [12] 2121 	mov	a,#___str_8
      00293D C0 E0            [24] 2122 	push	acc
      00293F 74 50            [12] 2123 	mov	a,#(___str_8 >> 8)
      002941 C0 E0            [24] 2124 	push	acc
      002943 74 80            [12] 2125 	mov	a,#0x80
      002945 C0 E0            [24] 2126 	push	acc
      002947 12 44 D6         [24] 2127 	lcall	_printf
      00294A 15 81            [12] 2128 	dec	sp
      00294C 15 81            [12] 2129 	dec	sp
      00294E 15 81            [12] 2130 	dec	sp
                                   2131 ;	src/main.c:269: }
      002950 22               [24] 2132 	ret
                                   2133 ;------------------------------------------------------------
                                   2134 ;Allocation info for local variables in function 'command_header'
                                   2135 ;------------------------------------------------------------
                                   2136 ;command_string            Allocated with name '_command_header_command_string_65536_126'
                                   2137 ;------------------------------------------------------------
                                   2138 ;	src/main.c:271: void command_header(char *command_string)
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
                                   2154 ;	src/main.c:273: print_dashed_line();
      002961 12 29 3B         [24] 2155 	lcall	_print_dashed_line
                                   2156 ;	src/main.c:274: printf("\r\n%s", command_string);
      002964 90 00 29         [24] 2157 	mov	dptr,#_command_header_command_string_65536_126
      002967 E0               [24] 2158 	movx	a,@dptr
      002968 C0 E0            [24] 2159 	push	acc
      00296A A3               [24] 2160 	inc	dptr
      00296B E0               [24] 2161 	movx	a,@dptr
      00296C C0 E0            [24] 2162 	push	acc
      00296E A3               [24] 2163 	inc	dptr
      00296F E0               [24] 2164 	movx	a,@dptr
      002970 C0 E0            [24] 2165 	push	acc
      002972 74 B4            [12] 2166 	mov	a,#___str_9
      002974 C0 E0            [24] 2167 	push	acc
      002976 74 50            [12] 2168 	mov	a,#(___str_9 >> 8)
      002978 C0 E0            [24] 2169 	push	acc
      00297A 74 80            [12] 2170 	mov	a,#0x80
      00297C C0 E0            [24] 2171 	push	acc
      00297E 12 44 D6         [24] 2172 	lcall	_printf
      002981 E5 81            [12] 2173 	mov	a,sp
      002983 24 FA            [12] 2174 	add	a,#0xfa
      002985 F5 81            [12] 2175 	mov	sp,a
                                   2176 ;	src/main.c:275: print_dashed_line();
                                   2177 ;	src/main.c:276: }
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
                                   2192 ;	src/main.c:280: void heap_report()
                                   2193 ;	-----------------------------------------
                                   2194 ;	 function heap_report
                                   2195 ;	-----------------------------------------
      00298A                       2196 _heap_report:
                                   2197 ;	src/main.c:282: command_header("Heap Report");
      00298A 90 50 B9         [24] 2198 	mov	dptr,#___str_10
      00298D 75 F0 80         [24] 2199 	mov	b,#0x80
      002990 12 29 51         [24] 2200 	lcall	_command_header
                                   2201 ;	src/main.c:283: size_t total_heap_sz = 0;
      002993 90 00 2C         [24] 2202 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002996 E4               [12] 2203 	clr	a
      002997 F0               [24] 2204 	movx	@dptr,a
      002998 A3               [24] 2205 	inc	dptr
      002999 F0               [24] 2206 	movx	@dptr,a
                                   2207 ;	src/main.c:285: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      00299A 7E 00            [12] 2208 	mov	r6,#0x00
      00299C 7F 00            [12] 2209 	mov	r7,#0x00
      00299E                       2210 00109$:
                                   2211 ;	src/main.c:287: if(static_buffers[i].buffer != NULL) {
      00299E 90 20 97         [24] 2212 	mov	dptr,#__mulint_PARM_2
      0029A1 EE               [12] 2213 	mov	a,r6
      0029A2 F0               [24] 2214 	movx	@dptr,a
      0029A3 EF               [12] 2215 	mov	a,r7
      0029A4 A3               [24] 2216 	inc	dptr
      0029A5 F0               [24] 2217 	movx	@dptr,a
      0029A6 90 00 0B         [24] 2218 	mov	dptr,#0x000b
      0029A9 C0 07            [24] 2219 	push	ar7
      0029AB C0 06            [24] 2220 	push	ar6
      0029AD 12 44 68         [24] 2221 	lcall	__mulint
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
                                   2241 ;	src/main.c:294: static_buffers[i].size - static_buffers[i].curr_available_char);
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
                                   2279 ;	src/main.c:293: static_buffers[i].alphabet_chars,
      002A00 8C 82            [24] 2280 	mov	dpl,r4
      002A02 8D 83            [24] 2281 	mov	dph,r5
      002A04 A3               [24] 2282 	inc	dptr
      002A05 A3               [24] 2283 	inc	dptr
      002A06 E0               [24] 2284 	movx	a,@dptr
      002A07 F5 39            [12] 2285 	mov	_heap_report_sloc2_1_0,a
      002A09 A3               [24] 2286 	inc	dptr
      002A0A E0               [24] 2287 	movx	a,@dptr
      002A0B F5 3A            [12] 2288 	mov	(_heap_report_sloc2_1_0 + 1),a
                                   2289 ;	src/main.c:291: static_buffers[i].buffer + static_buffers[i].size, 
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
                                   2306 ;	src/main.c:290: static_buffers[i].buffer, 
      002A27 AC 3B            [24] 2307 	mov	r4,_heap_report_sloc3_1_0
      002A29 AD 3C            [24] 2308 	mov	r5,(_heap_report_sloc3_1_0 + 1)
      002A2B 7B 00            [12] 2309 	mov	r3,#0x00
                                   2310 ;	src/main.c:288: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
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
      002A4D 74 C5            [12] 2327 	mov	a,#___str_11
      002A4F C0 E0            [24] 2328 	push	acc
      002A51 74 50            [12] 2329 	mov	a,#(___str_11 >> 8)
      002A53 C0 E0            [24] 2330 	push	acc
      002A55 74 80            [12] 2331 	mov	a,#0x80
      002A57 C0 E0            [24] 2332 	push	acc
      002A59 12 44 D6         [24] 2333 	lcall	_printf
      002A5C E5 81            [12] 2334 	mov	a,sp
      002A5E 24 EF            [12] 2335 	add	a,#0xef
      002A60 F5 81            [12] 2336 	mov	sp,a
      002A62 D0 06            [24] 2337 	pop	ar6
      002A64 D0 07            [24] 2338 	pop	ar7
                                   2339 ;	src/main.c:295: total_heap_sz += static_buffers[i].size; 
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
                                   2362 ;	src/main.c:285: for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
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
                                   2376 ;	src/main.c:299: buffer_t *curr = dynamic_buffers_list.head;
      002A96 90 20 D0         [24] 2377 	mov	dptr,#_dynamic_buffers_list
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
                                   2395 ;	src/main.c:300: while(curr != NULL) {
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
                                   2413 ;	src/main.c:301: if(curr->buffer != NULL) {
      002AC2 8B 82            [24] 2414 	mov	dpl,r3
      002AC4 8C 83            [24] 2415 	mov	dph,r4
      002AC6 8D F0            [24] 2416 	mov	b,r5
      002AC8 12 4F 02         [24] 2417 	lcall	__gptrget
      002ACB F9               [12] 2418 	mov	r1,a
      002ACC A3               [24] 2419 	inc	dptr
      002ACD 12 4F 02         [24] 2420 	lcall	__gptrget
      002AD0 FA               [12] 2421 	mov	r2,a
      002AD1 49               [12] 2422 	orl	a,r1
      002AD2 70 03            [24] 2423 	jnz	00143$
      002AD4 02 2B 76         [24] 2424 	ljmp	00105$
      002AD7                       2425 00143$:
                                   2426 ;	src/main.c:308: curr->size - curr->alphabet_chars);
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
      002AEB 12 4F 02         [24] 2437 	lcall	__gptrget
      002AEE FE               [12] 2438 	mov	r6,a
      002AEF A3               [24] 2439 	inc	dptr
      002AF0 12 4F 02         [24] 2440 	lcall	__gptrget
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
      002B01 12 4F 02         [24] 2451 	lcall	__gptrget
      002B04 F5 39            [12] 2452 	mov	_heap_report_sloc2_1_0,a
      002B06 A3               [24] 2453 	inc	dptr
      002B07 12 4F 02         [24] 2454 	lcall	__gptrget
      002B0A F5 3A            [12] 2455 	mov	(_heap_report_sloc2_1_0 + 1),a
      002B0C EE               [12] 2456 	mov	a,r6
      002B0D C3               [12] 2457 	clr	c
      002B0E 95 39            [12] 2458 	subb	a,_heap_report_sloc2_1_0
      002B10 F5 3B            [12] 2459 	mov	_heap_report_sloc3_1_0,a
      002B12 EF               [12] 2460 	mov	a,r7
      002B13 95 3A            [12] 2461 	subb	a,(_heap_report_sloc2_1_0 + 1)
      002B15 F5 3C            [12] 2462 	mov	(_heap_report_sloc3_1_0 + 1),a
                                   2463 ;	src/main.c:305: curr->buffer + curr->size, 
      002B17 EE               [12] 2464 	mov	a,r6
      002B18 29               [12] 2465 	add	a,r1
      002B19 F8               [12] 2466 	mov	r0,a
      002B1A EF               [12] 2467 	mov	a,r7
      002B1B 3A               [12] 2468 	addc	a,r2
      002B1C FC               [12] 2469 	mov	r4,a
      002B1D 7D 00            [12] 2470 	mov	r5,#0x00
                                   2471 ;	src/main.c:304: curr->buffer, 
      002B1F 7B 00            [12] 2472 	mov	r3,#0x00
                                   2473 ;	src/main.c:302: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
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
      002B3D 74 C5            [12] 2488 	mov	a,#___str_11
      002B3F C0 E0            [24] 2489 	push	acc
      002B41 74 50            [12] 2490 	mov	a,#(___str_11 >> 8)
      002B43 C0 E0            [24] 2491 	push	acc
      002B45 74 80            [12] 2492 	mov	a,#0x80
      002B47 C0 E0            [24] 2493 	push	acc
      002B49 12 44 D6         [24] 2494 	lcall	_printf
      002B4C E5 81            [12] 2495 	mov	a,sp
      002B4E 24 EF            [12] 2496 	add	a,#0xef
      002B50 F5 81            [12] 2497 	mov	sp,a
                                   2498 ;	src/main.c:309: total_heap_sz += curr->size; 
      002B52 85 40 82         [24] 2499 	mov	dpl,_heap_report_sloc5_1_0
      002B55 85 41 83         [24] 2500 	mov	dph,(_heap_report_sloc5_1_0 + 1)
      002B58 85 42 F0         [24] 2501 	mov	b,(_heap_report_sloc5_1_0 + 2)
      002B5B 12 4F 02         [24] 2502 	lcall	__gptrget
      002B5E FE               [12] 2503 	mov	r6,a
      002B5F A3               [24] 2504 	inc	dptr
      002B60 12 4F 02         [24] 2505 	lcall	__gptrget
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
                                   2522 ;	src/main.c:311: i++;
      002B76 05 3D            [12] 2523 	inc	_heap_report_sloc4_1_0
      002B78 E4               [12] 2524 	clr	a
      002B79 B5 3D 02         [24] 2525 	cjne	a,_heap_report_sloc4_1_0,00144$
      002B7C 05 3E            [12] 2526 	inc	(_heap_report_sloc4_1_0 + 1)
      002B7E                       2527 00144$:
                                   2528 ;	src/main.c:312: curr = curr->next;
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
      002B96 12 4F 02         [24] 2547 	lcall	__gptrget
      002B99 FD               [12] 2548 	mov	r5,a
      002B9A A3               [24] 2549 	inc	dptr
      002B9B 12 4F 02         [24] 2550 	lcall	__gptrget
      002B9E FE               [12] 2551 	mov	r6,a
      002B9F A3               [24] 2552 	inc	dptr
      002BA0 12 4F 02         [24] 2553 	lcall	__gptrget
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
                                   2566 ;	src/main.c:314: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      002BB2 90 00 2C         [24] 2567 	mov	dptr,#_heap_report_total_heap_sz_65537_129
      002BB5 E0               [24] 2568 	movx	a,@dptr
      002BB6 C0 E0            [24] 2569 	push	acc
      002BB8 A3               [24] 2570 	inc	dptr
      002BB9 E0               [24] 2571 	movx	a,@dptr
      002BBA C0 E0            [24] 2572 	push	acc
      002BBC 74 38            [12] 2573 	mov	a,#(___sdcc_heap + 0x2000)
      002BBE C0 E0            [24] 2574 	push	acc
      002BC0 74 20            [12] 2575 	mov	a,#((___sdcc_heap + 0x2000) >> 8)
      002BC2 C0 E0            [24] 2576 	push	acc
      002BC4 E4               [12] 2577 	clr	a
      002BC5 C0 E0            [24] 2578 	push	acc
      002BC7 74 38            [12] 2579 	mov	a,#___sdcc_heap
      002BC9 C0 E0            [24] 2580 	push	acc
      002BCB 74 00            [12] 2581 	mov	a,#(___sdcc_heap >> 8)
      002BCD C0 E0            [24] 2582 	push	acc
      002BCF E4               [12] 2583 	clr	a
      002BD0 C0 E0            [24] 2584 	push	acc
      002BD2 74 58            [12] 2585 	mov	a,#___str_7
      002BD4 C0 E0            [24] 2586 	push	acc
      002BD6 74 50            [12] 2587 	mov	a,#(___str_7 >> 8)
      002BD8 C0 E0            [24] 2588 	push	acc
      002BDA 74 80            [12] 2589 	mov	a,#0x80
      002BDC C0 E0            [24] 2590 	push	acc
      002BDE 12 44 D6         [24] 2591 	lcall	_printf
      002BE1 E5 81            [12] 2592 	mov	a,sp
      002BE3 24 F5            [12] 2593 	add	a,#0xf5
      002BE5 F5 81            [12] 2594 	mov	sp,a
                                   2595 ;	src/main.c:315: printf("\r\n");
      002BE7 74 27            [12] 2596 	mov	a,#___str_12
      002BE9 C0 E0            [24] 2597 	push	acc
      002BEB 74 51            [12] 2598 	mov	a,#(___str_12 >> 8)
      002BED C0 E0            [24] 2599 	push	acc
      002BEF 74 80            [12] 2600 	mov	a,#0x80
      002BF1 C0 E0            [24] 2601 	push	acc
      002BF3 12 44 D6         [24] 2602 	lcall	_printf
      002BF6 15 81            [12] 2603 	dec	sp
      002BF8 15 81            [12] 2604 	dec	sp
      002BFA 15 81            [12] 2605 	dec	sp
                                   2606 ;	src/main.c:316: }
      002BFC 22               [24] 2607 	ret
                                   2608 ;------------------------------------------------------------
                                   2609 ;Allocation info for local variables in function 'get_user_buffer_sz'
                                   2610 ;------------------------------------------------------------
                                   2611 ;maximum_sz                Allocated with name '_get_user_buffer_sz_maximum_sz_65536_136'
                                   2612 ;user_buffer_size          Allocated with name '_get_user_buffer_sz_user_buffer_size_65536_137'
                                   2613 ;------------------------------------------------------------
                                   2614 ;	src/main.c:320: size_t get_user_buffer_sz(size_t maximum_sz)
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
                                   2626 ;	src/main.c:323: while(true) {
      002C08 90 00 31         [24] 2627 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_136
      002C0B E0               [24] 2628 	movx	a,@dptr
      002C0C FE               [12] 2629 	mov	r6,a
      002C0D A3               [24] 2630 	inc	dptr
      002C0E E0               [24] 2631 	movx	a,@dptr
      002C0F FF               [12] 2632 	mov	r7,a
      002C10                       2633 00111$:
                                   2634 ;	src/main.c:324: printf("\r\nPlease enter a valid buffer size that is divisible by 32 [64,%zu]: ", maximum_sz);
      002C10 C0 07            [24] 2635 	push	ar7
      002C12 C0 06            [24] 2636 	push	ar6
      002C14 C0 06            [24] 2637 	push	ar6
      002C16 C0 07            [24] 2638 	push	ar7
      002C18 74 2A            [12] 2639 	mov	a,#___str_13
      002C1A C0 E0            [24] 2640 	push	acc
      002C1C 74 51            [12] 2641 	mov	a,#(___str_13 >> 8)
      002C1E C0 E0            [24] 2642 	push	acc
      002C20 74 80            [12] 2643 	mov	a,#0x80
      002C22 C0 E0            [24] 2644 	push	acc
      002C24 12 44 D6         [24] 2645 	lcall	_printf
      002C27 E5 81            [12] 2646 	mov	a,sp
      002C29 24 FB            [12] 2647 	add	a,#0xfb
      002C2B F5 81            [12] 2648 	mov	sp,a
                                   2649 ;	src/main.c:325: get_string();
      002C2D 12 39 29         [24] 2650 	lcall	_get_string
                                   2651 ;	src/main.c:326: user_buffer_size = (size_t) atoi(get_input_buffer()); //TODO: replace with own implementation of atoi that respects the size_t
      002C30 12 39 22         [24] 2652 	lcall	_get_input_buffer
      002C33 12 41 84         [24] 2653 	lcall	_atoi
      002C36 AC 82            [24] 2654 	mov	r4,dpl
      002C38 AD 83            [24] 2655 	mov	r5,dph
      002C3A D0 06            [24] 2656 	pop	ar6
      002C3C D0 07            [24] 2657 	pop	ar7
                                   2658 ;	src/main.c:327: if (user_buffer_size > maximum_sz)
      002C3E C3               [12] 2659 	clr	c
      002C3F EE               [12] 2660 	mov	a,r6
      002C40 9C               [12] 2661 	subb	a,r4
      002C41 EF               [12] 2662 	mov	a,r7
      002C42 9D               [12] 2663 	subb	a,r5
      002C43 50 1F            [24] 2664 	jnc	00108$
                                   2665 ;	src/main.c:329: printf("\r\n User buffer size larger than maximum");
      002C45 C0 07            [24] 2666 	push	ar7
      002C47 C0 06            [24] 2667 	push	ar6
      002C49 74 70            [12] 2668 	mov	a,#___str_14
      002C4B C0 E0            [24] 2669 	push	acc
      002C4D 74 51            [12] 2670 	mov	a,#(___str_14 >> 8)
      002C4F C0 E0            [24] 2671 	push	acc
      002C51 74 80            [12] 2672 	mov	a,#0x80
      002C53 C0 E0            [24] 2673 	push	acc
      002C55 12 44 D6         [24] 2674 	lcall	_printf
      002C58 15 81            [12] 2675 	dec	sp
      002C5A 15 81            [12] 2676 	dec	sp
      002C5C 15 81            [12] 2677 	dec	sp
      002C5E D0 06            [24] 2678 	pop	ar6
      002C60 D0 07            [24] 2679 	pop	ar7
      002C62 80 AC            [24] 2680 	sjmp	00111$
      002C64                       2681 00108$:
                                   2682 ;	src/main.c:331: else if (user_buffer_size < USER_BUFFER_MIN)
      002C64 C3               [12] 2683 	clr	c
      002C65 EC               [12] 2684 	mov	a,r4
      002C66 94 40            [12] 2685 	subb	a,#0x40
      002C68 ED               [12] 2686 	mov	a,r5
      002C69 94 00            [12] 2687 	subb	a,#0x00
      002C6B 50 20            [24] 2688 	jnc	00105$
                                   2689 ;	src/main.c:333: printf("\r\n User buffer size too small or error in conversion");
      002C6D C0 07            [24] 2690 	push	ar7
      002C6F C0 06            [24] 2691 	push	ar6
      002C71 74 98            [12] 2692 	mov	a,#___str_15
      002C73 C0 E0            [24] 2693 	push	acc
      002C75 74 51            [12] 2694 	mov	a,#(___str_15 >> 8)
      002C77 C0 E0            [24] 2695 	push	acc
      002C79 74 80            [12] 2696 	mov	a,#0x80
      002C7B C0 E0            [24] 2697 	push	acc
      002C7D 12 44 D6         [24] 2698 	lcall	_printf
      002C80 15 81            [12] 2699 	dec	sp
      002C82 15 81            [12] 2700 	dec	sp
      002C84 15 81            [12] 2701 	dec	sp
      002C86 D0 06            [24] 2702 	pop	ar6
      002C88 D0 07            [24] 2703 	pop	ar7
      002C8A 02 2C 10         [24] 2704 	ljmp	00111$
      002C8D                       2705 00105$:
                                   2706 ;	src/main.c:335: else if (MODULE_32(user_buffer_size) != 0)
      002C8D EC               [12] 2707 	mov	a,r4
      002C8E 54 1F            [12] 2708 	anl	a,#0x1f
      002C90 60 20            [24] 2709 	jz	00102$
                                   2710 ;	src/main.c:337: printf("\r\n User buffer size is not divisible by 32");
      002C92 C0 07            [24] 2711 	push	ar7
      002C94 C0 06            [24] 2712 	push	ar6
      002C96 74 CD            [12] 2713 	mov	a,#___str_16
      002C98 C0 E0            [24] 2714 	push	acc
      002C9A 74 51            [12] 2715 	mov	a,#(___str_16 >> 8)
      002C9C C0 E0            [24] 2716 	push	acc
      002C9E 74 80            [12] 2717 	mov	a,#0x80
      002CA0 C0 E0            [24] 2718 	push	acc
      002CA2 12 44 D6         [24] 2719 	lcall	_printf
      002CA5 15 81            [12] 2720 	dec	sp
      002CA7 15 81            [12] 2721 	dec	sp
      002CA9 15 81            [12] 2722 	dec	sp
      002CAB D0 06            [24] 2723 	pop	ar6
      002CAD D0 07            [24] 2724 	pop	ar7
      002CAF 02 2C 10         [24] 2725 	ljmp	00111$
      002CB2                       2726 00102$:
                                   2727 ;	src/main.c:341: return user_buffer_size;
      002CB2 8C 82            [24] 2728 	mov	dpl,r4
      002CB4 8D 83            [24] 2729 	mov	dph,r5
                                   2730 ;	src/main.c:344: }
      002CB6 22               [24] 2731 	ret
                                   2732 ;------------------------------------------------------------
                                   2733 ;Allocation info for local variables in function 'free_all_buffers'
                                   2734 ;------------------------------------------------------------
                                   2735 ;i                         Allocated with name '_free_all_buffers_i_131072_144'
                                   2736 ;------------------------------------------------------------
                                   2737 ;	src/main.c:347: void free_all_buffers()
                                   2738 ;	-----------------------------------------
                                   2739 ;	 function free_all_buffers
                                   2740 ;	-----------------------------------------
      002CB7                       2741 _free_all_buffers:
                                   2742 ;	src/main.c:349: printf("\r\n Freeing ALL BUFFERS");
      002CB7 74 F8            [12] 2743 	mov	a,#___str_17
      002CB9 C0 E0            [24] 2744 	push	acc
      002CBB 74 51            [12] 2745 	mov	a,#(___str_17 >> 8)
      002CBD C0 E0            [24] 2746 	push	acc
      002CBF 74 80            [12] 2747 	mov	a,#0x80
      002CC1 C0 E0            [24] 2748 	push	acc
      002CC3 12 44 D6         [24] 2749 	lcall	_printf
      002CC6 15 81            [12] 2750 	dec	sp
      002CC8 15 81            [12] 2751 	dec	sp
      002CCA 15 81            [12] 2752 	dec	sp
                                   2753 ;	src/main.c:350: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
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
                                   2766 ;	src/main.c:352: if(static_buffers[i].buffer != NULL)
      002CDE 90 20 97         [24] 2767 	mov	dptr,#__mulint_PARM_2
      002CE1 EE               [12] 2768 	mov	a,r6
      002CE2 F0               [24] 2769 	movx	@dptr,a
      002CE3 EF               [12] 2770 	mov	a,r7
      002CE4 A3               [24] 2771 	inc	dptr
      002CE5 F0               [24] 2772 	movx	@dptr,a
      002CE6 90 00 0B         [24] 2773 	mov	dptr,#0x000b
      002CE9 C0 07            [24] 2774 	push	ar7
      002CEB C0 06            [24] 2775 	push	ar6
      002CED 12 44 68         [24] 2776 	lcall	__mulint
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
                                   2794 ;	src/main.c:354: free(static_buffers[i].buffer);
      002D0A 7B 00            [12] 2795 	mov	r3,#0x00
      002D0C 8C 82            [24] 2796 	mov	dpl,r4
      002D0E 8D 83            [24] 2797 	mov	dph,r5
      002D10 8B F0            [24] 2798 	mov	b,r3
      002D12 C0 07            [24] 2799 	push	ar7
      002D14 C0 06            [24] 2800 	push	ar6
      002D16 12 3F 91         [24] 2801 	lcall	_free
      002D19 D0 06            [24] 2802 	pop	ar6
      002D1B D0 07            [24] 2803 	pop	ar7
      002D1D                       2804 00102$:
                                   2805 ;	src/main.c:356: static_buffers[i].buffer = NULL;
      002D1D 90 20 97         [24] 2806 	mov	dptr,#__mulint_PARM_2
      002D20 EE               [12] 2807 	mov	a,r6
      002D21 F0               [24] 2808 	movx	@dptr,a
      002D22 EF               [12] 2809 	mov	a,r7
      002D23 A3               [24] 2810 	inc	dptr
      002D24 F0               [24] 2811 	movx	@dptr,a
      002D25 90 00 0B         [24] 2812 	mov	dptr,#0x000b
      002D28 C0 07            [24] 2813 	push	ar7
      002D2A C0 06            [24] 2814 	push	ar6
      002D2C 12 44 68         [24] 2815 	lcall	__mulint
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
                                   2830 ;	src/main.c:357: static_buffers[i].size = 0; 
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
                                   2847 ;	src/main.c:350: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      002D59 0E               [12] 2848 	inc	r6
      002D5A BE 00 01         [24] 2849 	cjne	r6,#0x00,00124$
      002D5D 0F               [12] 2850 	inc	r7
      002D5E                       2851 00124$:
      002D5E 02 2C D0         [24] 2852 	ljmp	00105$
      002D61                       2853 00103$:
                                   2854 ;	src/main.c:359: free_all_elems_from_list(&dynamic_buffers_list); 
      002D61 90 20 D0         [24] 2855 	mov	dptr,#_dynamic_buffers_list
      002D64 75 F0 00         [24] 2856 	mov	b,#0x00
                                   2857 ;	src/main.c:360: }
      002D67 02 3D 2C         [24] 2858 	ljmp	_free_all_elems_from_list
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
                                   2870 ;	src/main.c:364: void qmark_command_handler()
                                   2871 ;	-----------------------------------------
                                   2872 ;	 function qmark_command_handler
                                   2873 ;	-----------------------------------------
      002D6A                       2874 _qmark_command_handler:
                                   2875 ;	src/main.c:366: heap_report();
      002D6A 12 29 8A         [24] 2876 	lcall	_heap_report
                                   2877 ;	src/main.c:367: size_t chars_received_since_last_qmark = get_char_count();
      002D6D 12 3A 80         [24] 2878 	lcall	_get_char_count
      002D70 AE 82            [24] 2879 	mov	r6,dpl
      002D72 AF 83            [24] 2880 	mov	r7,dph
                                   2881 ;	src/main.c:368: reset_char_count();
      002D74 C0 07            [24] 2882 	push	ar7
      002D76 C0 06            [24] 2883 	push	ar6
      002D78 12 3A 8C         [24] 2884 	lcall	_reset_char_count
      002D7B D0 06            [24] 2885 	pop	ar6
      002D7D D0 07            [24] 2886 	pop	ar7
                                   2887 ;	src/main.c:369: printf("\r\n Received %zu chars since last invocation of ?", chars_received_since_last_qmark);
      002D7F C0 06            [24] 2888 	push	ar6
      002D81 C0 07            [24] 2889 	push	ar7
      002D83 74 0F            [12] 2890 	mov	a,#___str_18
      002D85 C0 E0            [24] 2891 	push	acc
      002D87 74 52            [12] 2892 	mov	a,#(___str_18 >> 8)
      002D89 C0 E0            [24] 2893 	push	acc
      002D8B 74 80            [12] 2894 	mov	a,#0x80
      002D8D C0 E0            [24] 2895 	push	acc
      002D8F 12 44 D6         [24] 2896 	lcall	_printf
      002D92 E5 81            [12] 2897 	mov	a,sp
      002D94 24 FB            [12] 2898 	add	a,#0xfb
      002D96 F5 81            [12] 2899 	mov	sp,a
                                   2900 ;	src/main.c:370: size_t curr_output_char = 0;
      002D98 90 00 33         [24] 2901 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_149
      002D9B E4               [12] 2902 	clr	a
      002D9C F0               [24] 2903 	movx	@dptr,a
      002D9D A3               [24] 2904 	inc	dptr
      002D9E F0               [24] 2905 	movx	@dptr,a
                                   2906 ;	src/main.c:372: for(int i = 0; i < 2; i++)
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
                                   2919 ;	src/main.c:375: char curr_char = static_buffers[i].buffer[0];
      002DB1 90 20 97         [24] 2920 	mov	dptr,#__mulint_PARM_2
      002DB4 EE               [12] 2921 	mov	a,r6
      002DB5 F0               [24] 2922 	movx	@dptr,a
      002DB6 EF               [12] 2923 	mov	a,r7
      002DB7 A3               [24] 2924 	inc	dptr
      002DB8 F0               [24] 2925 	movx	@dptr,a
      002DB9 90 00 0B         [24] 2926 	mov	dptr,#0x000b
      002DBC C0 07            [24] 2927 	push	ar7
      002DBE C0 06            [24] 2928 	push	ar6
      002DC0 12 44 68         [24] 2929 	lcall	__mulint
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
                                   2950 ;	src/main.c:376: while(curr_char != '\0' && curr_buffer_char < static_buffers[i].size)
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
                                   3003 ;	src/main.c:378: if (MODULE_32(curr_output_char) == 0)
      002E2D E8               [12] 3004 	mov	a,r0
      002E2E 54 1F            [12] 3005 	anl	a,#0x1f
      002E30 70 35            [24] 3006 	jnz	00102$
                                   3007 ;	src/main.c:380: printf("\r\n");
      002E32 C0 07            [24] 3008 	push	ar7
      002E34 C0 06            [24] 3009 	push	ar6
      002E36 C0 05            [24] 3010 	push	ar5
      002E38 C0 04            [24] 3011 	push	ar4
      002E3A C0 03            [24] 3012 	push	ar3
      002E3C C0 02            [24] 3013 	push	ar2
      002E3E C0 01            [24] 3014 	push	ar1
      002E40 C0 00            [24] 3015 	push	ar0
      002E42 74 27            [12] 3016 	mov	a,#___str_12
      002E44 C0 E0            [24] 3017 	push	acc
      002E46 74 51            [12] 3018 	mov	a,#(___str_12 >> 8)
      002E48 C0 E0            [24] 3019 	push	acc
      002E4A 74 80            [12] 3020 	mov	a,#0x80
      002E4C C0 E0            [24] 3021 	push	acc
      002E4E 12 44 D6         [24] 3022 	lcall	_printf
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
                                   3035 ;	src/main.c:382: printf("%c", curr_char);
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
      002E86 74 40            [12] 3052 	mov	a,#___str_19
      002E88 C0 E0            [24] 3053 	push	acc
      002E8A 74 52            [12] 3054 	mov	a,#(___str_19 >> 8)
      002E8C C0 E0            [24] 3055 	push	acc
      002E8E 74 80            [12] 3056 	mov	a,#0x80
      002E90 C0 E0            [24] 3057 	push	acc
      002E92 12 44 D6         [24] 3058 	lcall	_printf
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
                                   3070 ;	src/main.c:383: curr_output_char++;
      002EAB 08               [12] 3071 	inc	r0
      002EAC B8 00 01         [24] 3072 	cjne	r0,#0x00,00144$
      002EAF 09               [12] 3073 	inc	r1
      002EB0                       3074 00144$:
                                   3075 ;	src/main.c:384: curr_buffer_char++;
      002EB0 05 43            [12] 3076 	inc	_qmark_command_handler_sloc0_1_0
      002EB2 E4               [12] 3077 	clr	a
      002EB3 B5 43 02         [24] 3078 	cjne	a,_qmark_command_handler_sloc0_1_0,00145$
      002EB6 05 44            [12] 3079 	inc	(_qmark_command_handler_sloc0_1_0 + 1)
      002EB8                       3080 00145$:
                                   3081 ;	src/main.c:385: curr_char = static_buffers[i].buffer[curr_buffer_char];
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
                                   3108 ;	src/main.c:388: memset(static_buffers[i].buffer, '\0', static_buffers[i].size);
      002EDF 90 20 97         [24] 3109 	mov	dptr,#__mulint_PARM_2
      002EE2 EE               [12] 3110 	mov	a,r6
      002EE3 F0               [24] 3111 	movx	@dptr,a
      002EE4 EF               [12] 3112 	mov	a,r7
      002EE5 A3               [24] 3113 	inc	dptr
      002EE6 F0               [24] 3114 	movx	@dptr,a
      002EE7 90 00 0B         [24] 3115 	mov	dptr,#0x000b
      002EEA C0 07            [24] 3116 	push	ar7
      002EEC C0 06            [24] 3117 	push	ar6
      002EEE 12 44 68         [24] 3118 	lcall	__mulint
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
      002F20 90 20 85         [24] 3152 	mov	dptr,#_memset_PARM_2
      002F23 E4               [12] 3153 	clr	a
      002F24 F0               [24] 3154 	movx	@dptr,a
      002F25 90 20 86         [24] 3155 	mov	dptr,#_memset_PARM_3
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
      002F3A 12 41 5C         [24] 3166 	lcall	_memset
      002F3D D0 04            [24] 3167 	pop	ar4
      002F3F D0 05            [24] 3168 	pop	ar5
      002F41 D0 06            [24] 3169 	pop	ar6
      002F43 D0 07            [24] 3170 	pop	ar7
                                   3171 ;	src/main.c:389: static_buffers[i].alphabet_chars = 0;
      002F45 8C 82            [24] 3172 	mov	dpl,r4
      002F47 8D 83            [24] 3173 	mov	dph,r5
      002F49 A3               [24] 3174 	inc	dptr
      002F4A A3               [24] 3175 	inc	dptr
      002F4B E4               [12] 3176 	clr	a
      002F4C F0               [24] 3177 	movx	@dptr,a
      002F4D A3               [24] 3178 	inc	dptr
      002F4E F0               [24] 3179 	movx	@dptr,a
                                   3180 ;	src/main.c:390: static_buffers[i].curr_available_char = 0;
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
                                   3191 ;	src/main.c:372: for(int i = 0; i < 2; i++)
      002F5C 0E               [12] 3192 	inc	r6
      002F5D BE 00 01         [24] 3193 	cjne	r6,#0x00,00146$
      002F60 0F               [12] 3194 	inc	r7
      002F61                       3195 00146$:
      002F61 02 2D A3         [24] 3196 	ljmp	00109$
      002F64                       3197 00107$:
                                   3198 ;	src/main.c:393: printf("\r\n");
      002F64 74 27            [12] 3199 	mov	a,#___str_12
      002F66 C0 E0            [24] 3200 	push	acc
      002F68 74 51            [12] 3201 	mov	a,#(___str_12 >> 8)
      002F6A C0 E0            [24] 3202 	push	acc
      002F6C 74 80            [12] 3203 	mov	a,#0x80
      002F6E C0 E0            [24] 3204 	push	acc
      002F70 12 44 D6         [24] 3205 	lcall	_printf
      002F73 15 81            [12] 3206 	dec	sp
      002F75 15 81            [12] 3207 	dec	sp
      002F77 15 81            [12] 3208 	dec	sp
                                   3209 ;	src/main.c:394: printf("\r\n");
      002F79 74 27            [12] 3210 	mov	a,#___str_12
      002F7B C0 E0            [24] 3211 	push	acc
      002F7D 74 51            [12] 3212 	mov	a,#(___str_12 >> 8)
      002F7F C0 E0            [24] 3213 	push	acc
      002F81 74 80            [12] 3214 	mov	a,#0x80
      002F83 C0 E0            [24] 3215 	push	acc
      002F85 12 44 D6         [24] 3216 	lcall	_printf
      002F88 15 81            [12] 3217 	dec	sp
      002F8A 15 81            [12] 3218 	dec	sp
      002F8C 15 81            [12] 3219 	dec	sp
                                   3220 ;	src/main.c:395: }
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
                                   3233 ;	src/main.c:397: void enter_command_handler()
                                   3234 ;	-----------------------------------------
                                   3235 ;	 function enter_command_handler
                                   3236 ;	-----------------------------------------
      002F8F                       3237 _enter_command_handler:
                                   3238 ;	src/main.c:399: command_header("Dump Admin Buffers");
      002F8F 90 52 43         [24] 3239 	mov	dptr,#___str_20
      002F92 75 F0 80         [24] 3240 	mov	b,#0x80
      002F95 12 29 51         [24] 3241 	lcall	_command_header
                                   3242 ;	src/main.c:400: for(int i = 0; i < 2; i++)
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
                                   3255 ;	src/main.c:402: printf("\r\n Buffer %d ", i);
      002FA8 C0 07            [24] 3256 	push	ar7
      002FAA C0 06            [24] 3257 	push	ar6
      002FAC C0 06            [24] 3258 	push	ar6
      002FAE C0 07            [24] 3259 	push	ar7
      002FB0 74 56            [12] 3260 	mov	a,#___str_21
      002FB2 C0 E0            [24] 3261 	push	acc
      002FB4 74 52            [12] 3262 	mov	a,#(___str_21 >> 8)
      002FB6 C0 E0            [24] 3263 	push	acc
      002FB8 74 80            [12] 3264 	mov	a,#0x80
      002FBA C0 E0            [24] 3265 	push	acc
      002FBC 12 44 D6         [24] 3266 	lcall	_printf
      002FBF E5 81            [12] 3267 	mov	a,sp
      002FC1 24 FB            [12] 3268 	add	a,#0xfb
      002FC3 F5 81            [12] 3269 	mov	sp,a
                                   3270 ;	src/main.c:403: printf("\r\n----------");
      002FC5 74 64            [12] 3271 	mov	a,#___str_22
      002FC7 C0 E0            [24] 3272 	push	acc
      002FC9 74 52            [12] 3273 	mov	a,#(___str_22 >> 8)
      002FCB C0 E0            [24] 3274 	push	acc
      002FCD 74 80            [12] 3275 	mov	a,#0x80
      002FCF C0 E0            [24] 3276 	push	acc
      002FD1 12 44 D6         [24] 3277 	lcall	_printf
      002FD4 15 81            [12] 3278 	dec	sp
      002FD6 15 81            [12] 3279 	dec	sp
      002FD8 15 81            [12] 3280 	dec	sp
      002FDA D0 06            [24] 3281 	pop	ar6
      002FDC D0 07            [24] 3282 	pop	ar7
                                   3283 ;	src/main.c:404: for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
      002FDE 90 20 97         [24] 3284 	mov	dptr,#__mulint_PARM_2
      002FE1 EE               [12] 3285 	mov	a,r6
      002FE2 F0               [24] 3286 	movx	@dptr,a
      002FE3 EF               [12] 3287 	mov	a,r7
      002FE4 A3               [24] 3288 	inc	dptr
      002FE5 F0               [24] 3289 	movx	@dptr,a
      002FE6 90 00 0B         [24] 3290 	mov	dptr,#0x000b
      002FE9 C0 07            [24] 3291 	push	ar7
      002FEB C0 06            [24] 3292 	push	ar6
      002FED 12 44 68         [24] 3293 	lcall	__mulint
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
                                   3374 ;	src/main.c:406: printf("\r\n%04X:", (unsigned int) address);
      003075 AB 48            [24] 3375 	mov	r3,_enter_command_handler_sloc0_1_0
      003077 AC 49            [24] 3376 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      003079 C0 01            [24] 3377 	push	ar1
      00307B C0 00            [24] 3378 	push	ar0
      00307D C0 03            [24] 3379 	push	ar3
      00307F C0 04            [24] 3380 	push	ar4
      003081 74 71            [12] 3381 	mov	a,#___str_23
      003083 C0 E0            [24] 3382 	push	acc
      003085 74 52            [12] 3383 	mov	a,#(___str_23 >> 8)
      003087 C0 E0            [24] 3384 	push	acc
      003089 74 80            [12] 3385 	mov	a,#0x80
      00308B C0 E0            [24] 3386 	push	acc
      00308D 12 44 D6         [24] 3387 	lcall	_printf
      003090 E5 81            [12] 3388 	mov	a,sp
      003092 24 FB            [12] 3389 	add	a,#0xfb
      003094 F5 81            [12] 3390 	mov	sp,a
      003096 D0 00            [24] 3391 	pop	ar0
      003098 D0 01            [24] 3392 	pop	ar1
                                   3393 ;	src/main.c:407: for(int j = 0; j < 16; j++)
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
                                   3408 ;	src/main.c:409: printf(" %02hhX", (unsigned char) *(address+j));
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
      0030C6 12 4F 02         [24] 3421 	lcall	__gptrget
      0030C9 F8               [12] 3422 	mov	r0,a
      0030CA 7A 00            [12] 3423 	mov	r2,#0x00
      0030CC C0 05            [24] 3424 	push	ar5
      0030CE C0 04            [24] 3425 	push	ar4
      0030D0 C0 03            [24] 3426 	push	ar3
      0030D2 C0 01            [24] 3427 	push	ar1
      0030D4 C0 00            [24] 3428 	push	ar0
      0030D6 C0 00            [24] 3429 	push	ar0
      0030D8 C0 02            [24] 3430 	push	ar2
      0030DA 74 79            [12] 3431 	mov	a,#___str_24
      0030DC C0 E0            [24] 3432 	push	acc
      0030DE 74 52            [12] 3433 	mov	a,#(___str_24 >> 8)
      0030E0 C0 E0            [24] 3434 	push	acc
      0030E2 74 80            [12] 3435 	mov	a,#0x80
      0030E4 C0 E0            [24] 3436 	push	acc
      0030E6 12 44 D6         [24] 3437 	lcall	_printf
      0030E9 E5 81            [12] 3438 	mov	a,sp
      0030EB 24 FB            [12] 3439 	add	a,#0xfb
      0030ED F5 81            [12] 3440 	mov	sp,a
      0030EF D0 00            [24] 3441 	pop	ar0
      0030F1 D0 01            [24] 3442 	pop	ar1
      0030F3 D0 03            [24] 3443 	pop	ar3
      0030F5 D0 04            [24] 3444 	pop	ar4
      0030F7 D0 05            [24] 3445 	pop	ar5
                                   3446 ;	src/main.c:407: for(int j = 0; j < 16; j++)
      0030F9 05 4D            [12] 3447 	inc	_enter_command_handler_sloc2_1_0
      0030FB E4               [12] 3448 	clr	a
      0030FC B5 4D 02         [24] 3449 	cjne	a,_enter_command_handler_sloc2_1_0,00145$
      0030FF 05 4E            [12] 3450 	inc	(_enter_command_handler_sloc2_1_0 + 1)
      003101                       3451 00145$:
      003101 D0 01            [24] 3452 	pop	ar1
      003103 D0 00            [24] 3453 	pop	ar0
      003105 80 9E            [24] 3454 	sjmp	00105$
      003107                       3455 00109$:
                                   3456 ;	src/main.c:404: for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
      003107 74 10            [12] 3457 	mov	a,#0x10
      003109 25 48            [12] 3458 	add	a,_enter_command_handler_sloc0_1_0
      00310B F5 48            [12] 3459 	mov	_enter_command_handler_sloc0_1_0,a
      00310D E4               [12] 3460 	clr	a
      00310E 35 49            [12] 3461 	addc	a,(_enter_command_handler_sloc0_1_0 + 1)
      003110 F5 49            [12] 3462 	mov	(_enter_command_handler_sloc0_1_0 + 1),a
      003112 02 30 29         [24] 3463 	ljmp	00108$
      003115                       3464 00102$:
                                   3465 ;	src/main.c:412: printf("\r\n");
      003115 C0 01            [24] 3466 	push	ar1
      003117 C0 00            [24] 3467 	push	ar0
      003119 74 27            [12] 3468 	mov	a,#___str_12
      00311B C0 E0            [24] 3469 	push	acc
      00311D 74 51            [12] 3470 	mov	a,#(___str_12 >> 8)
      00311F C0 E0            [24] 3471 	push	acc
      003121 74 80            [12] 3472 	mov	a,#0x80
      003123 C0 E0            [24] 3473 	push	acc
      003125 12 44 D6         [24] 3474 	lcall	_printf
      003128 15 81            [12] 3475 	dec	sp
      00312A 15 81            [12] 3476 	dec	sp
      00312C 15 81            [12] 3477 	dec	sp
      00312E D0 00            [24] 3478 	pop	ar0
      003130 D0 01            [24] 3479 	pop	ar1
                                   3480 ;	src/main.c:400: for(int i = 0; i < 2; i++)
      003132 74 01            [12] 3481 	mov	a,#0x01
      003134 28               [12] 3482 	add	a,r0
      003135 FE               [12] 3483 	mov	r6,a
      003136 E4               [12] 3484 	clr	a
      003137 39               [12] 3485 	addc	a,r1
      003138 FF               [12] 3486 	mov	r7,a
                                   3487 ;	src/main.c:414: }
      003139 02 2F 9C         [24] 3488 	ljmp	00111$
                                   3489 ;------------------------------------------------------------
                                   3490 ;Allocation info for local variables in function 'percent_command_handler'
                                   3491 ;------------------------------------------------------------
                                   3492 ;sloc0                     Allocated with name '_percent_command_handler_sloc0_1_0'
                                   3493 ;i                         Allocated with name '_percent_command_handler_i_131072_162'
                                   3494 ;curr                      Allocated with name '_percent_command_handler_curr_65537_165'
                                   3495 ;------------------------------------------------------------
                                   3496 ;	src/main.c:416: void percent_command_handler()
                                   3497 ;	-----------------------------------------
                                   3498 ;	 function percent_command_handler
                                   3499 ;	-----------------------------------------
      00313C                       3500 _percent_command_handler:
                                   3501 ;	src/main.c:418: command_header("Clear Buffers");
      00313C 90 52 81         [24] 3502 	mov	dptr,#___str_25
      00313F 75 F0 80         [24] 3503 	mov	b,#0x80
      003142 12 29 51         [24] 3504 	lcall	_command_header
                                   3505 ;	src/main.c:419: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      003145 7E 00            [12] 3506 	mov	r6,#0x00
      003147 7F 00            [12] 3507 	mov	r7,#0x00
      003149                       3508 00107$:
      003149 C3               [12] 3509 	clr	c
      00314A EE               [12] 3510 	mov	a,r6
      00314B 94 02            [12] 3511 	subb	a,#0x02
      00314D EF               [12] 3512 	mov	a,r7
      00314E 64 80            [12] 3513 	xrl	a,#0x80
      003150 94 80            [12] 3514 	subb	a,#0x80
      003152 40 03            [24] 3515 	jc	00128$
      003154 02 31 E8         [24] 3516 	ljmp	00103$
      003157                       3517 00128$:
                                   3518 ;	src/main.c:421: if (static_buffers[i].buffer != NULL) 
      003157 90 20 97         [24] 3519 	mov	dptr,#__mulint_PARM_2
      00315A EE               [12] 3520 	mov	a,r6
      00315B F0               [24] 3521 	movx	@dptr,a
      00315C EF               [12] 3522 	mov	a,r7
      00315D A3               [24] 3523 	inc	dptr
      00315E F0               [24] 3524 	movx	@dptr,a
      00315F 90 00 0B         [24] 3525 	mov	dptr,#0x000b
      003162 C0 07            [24] 3526 	push	ar7
      003164 C0 06            [24] 3527 	push	ar6
      003166 12 44 68         [24] 3528 	lcall	__mulint
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
      003181 60 5D            [24] 3545 	jz	00108$
                                   3546 ;	src/main.c:423: memset(static_buffers[i].buffer, 0x00, static_buffers[i].size);
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
      0031A0 90 20 85         [24] 3568 	mov	dptr,#_memset_PARM_2
      0031A3 E4               [12] 3569 	clr	a
      0031A4 F0               [24] 3570 	movx	@dptr,a
      0031A5 90 20 86         [24] 3571 	mov	dptr,#_memset_PARM_3
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
      0031BB 12 41 5C         [24] 3584 	lcall	_memset
      0031BE D0 04            [24] 3585 	pop	ar4
      0031C0 D0 05            [24] 3586 	pop	ar5
      0031C2 D0 06            [24] 3587 	pop	ar6
      0031C4 D0 07            [24] 3588 	pop	ar7
                                   3589 ;	src/main.c:424: static_buffers[i].curr_available_char = 0;
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
                                   3600 ;	src/main.c:425: static_buffers[i].alphabet_chars = 0; 
      0031D3 8C 82            [24] 3601 	mov	dpl,r4
      0031D5 8D 83            [24] 3602 	mov	dph,r5
      0031D7 A3               [24] 3603 	inc	dptr
      0031D8 A3               [24] 3604 	inc	dptr
      0031D9 F0               [24] 3605 	movx	@dptr,a
      0031DA A3               [24] 3606 	inc	dptr
      0031DB F0               [24] 3607 	movx	@dptr,a
                                   3608 ;	src/main.c:434: curr->alphabet_chars = 0; 
      0031DC D0 07            [24] 3609 	pop	ar7
      0031DE D0 06            [24] 3610 	pop	ar6
                                   3611 ;	src/main.c:425: static_buffers[i].alphabet_chars = 0; 
      0031E0                       3612 00108$:
                                   3613 ;	src/main.c:419: for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
      0031E0 0E               [12] 3614 	inc	r6
      0031E1 BE 00 01         [24] 3615 	cjne	r6,#0x00,00130$
      0031E4 0F               [12] 3616 	inc	r7
      0031E5                       3617 00130$:
      0031E5 02 31 49         [24] 3618 	ljmp	00107$
      0031E8                       3619 00103$:
                                   3620 ;	src/main.c:429: buffer_t *curr = dynamic_buffers_list.head;
      0031E8 90 20 D0         [24] 3621 	mov	dptr,#_dynamic_buffers_list
      0031EB E0               [24] 3622 	movx	a,@dptr
      0031EC FD               [12] 3623 	mov	r5,a
      0031ED A3               [24] 3624 	inc	dptr
      0031EE E0               [24] 3625 	movx	a,@dptr
      0031EF FE               [12] 3626 	mov	r6,a
      0031F0 A3               [24] 3627 	inc	dptr
      0031F1 E0               [24] 3628 	movx	a,@dptr
      0031F2 FF               [12] 3629 	mov	r7,a
                                   3630 ;	src/main.c:430: if (curr != NULL)
      0031F3 ED               [12] 3631 	mov	a,r5
      0031F4 4E               [12] 3632 	orl	a,r6
      0031F5 70 01            [24] 3633 	jnz	00131$
      0031F7 22               [24] 3634 	ret
      0031F8                       3635 00131$:
                                   3636 ;	src/main.c:432: memset(curr->buffer, 0x00, curr->size);
      0031F8 8D 82            [24] 3637 	mov	dpl,r5
      0031FA 8E 83            [24] 3638 	mov	dph,r6
      0031FC 8F F0            [24] 3639 	mov	b,r7
      0031FE 12 4F 02         [24] 3640 	lcall	__gptrget
      003201 FB               [12] 3641 	mov	r3,a
      003202 A3               [24] 3642 	inc	dptr
      003203 12 4F 02         [24] 3643 	lcall	__gptrget
      003206 FC               [12] 3644 	mov	r4,a
      003207 8B 51            [24] 3645 	mov	_percent_command_handler_sloc0_1_0,r3
      003209 8C 52            [24] 3646 	mov	(_percent_command_handler_sloc0_1_0 + 1),r4
      00320B 75 53 00         [24] 3647 	mov	(_percent_command_handler_sloc0_1_0 + 2),#0x00
      00320E 74 04            [12] 3648 	mov	a,#0x04
      003210 2D               [12] 3649 	add	a,r5
      003211 F8               [12] 3650 	mov	r0,a
      003212 E4               [12] 3651 	clr	a
      003213 3E               [12] 3652 	addc	a,r6
      003214 F9               [12] 3653 	mov	r1,a
      003215 8F 04            [24] 3654 	mov	ar4,r7
      003217 88 82            [24] 3655 	mov	dpl,r0
      003219 89 83            [24] 3656 	mov	dph,r1
      00321B 8C F0            [24] 3657 	mov	b,r4
      00321D 12 4F 02         [24] 3658 	lcall	__gptrget
      003220 F8               [12] 3659 	mov	r0,a
      003221 A3               [24] 3660 	inc	dptr
      003222 12 4F 02         [24] 3661 	lcall	__gptrget
      003225 F9               [12] 3662 	mov	r1,a
      003226 90 20 85         [24] 3663 	mov	dptr,#_memset_PARM_2
      003229 E4               [12] 3664 	clr	a
      00322A F0               [24] 3665 	movx	@dptr,a
      00322B 90 20 86         [24] 3666 	mov	dptr,#_memset_PARM_3
      00322E E8               [12] 3667 	mov	a,r0
      00322F F0               [24] 3668 	movx	@dptr,a
      003230 E9               [12] 3669 	mov	a,r1
      003231 A3               [24] 3670 	inc	dptr
      003232 F0               [24] 3671 	movx	@dptr,a
      003233 85 51 82         [24] 3672 	mov	dpl,_percent_command_handler_sloc0_1_0
      003236 85 52 83         [24] 3673 	mov	dph,(_percent_command_handler_sloc0_1_0 + 1)
      003239 85 53 F0         [24] 3674 	mov	b,(_percent_command_handler_sloc0_1_0 + 2)
      00323C C0 07            [24] 3675 	push	ar7
      00323E C0 06            [24] 3676 	push	ar6
      003240 C0 05            [24] 3677 	push	ar5
      003242 12 41 5C         [24] 3678 	lcall	_memset
      003245 D0 05            [24] 3679 	pop	ar5
      003247 D0 06            [24] 3680 	pop	ar6
      003249 D0 07            [24] 3681 	pop	ar7
                                   3682 ;	src/main.c:433: curr->curr_available_char = 0;
      00324B 74 06            [12] 3683 	mov	a,#0x06
      00324D 2D               [12] 3684 	add	a,r5
      00324E FA               [12] 3685 	mov	r2,a
      00324F E4               [12] 3686 	clr	a
      003250 3E               [12] 3687 	addc	a,r6
      003251 FB               [12] 3688 	mov	r3,a
      003252 8F 04            [24] 3689 	mov	ar4,r7
      003254 8A 82            [24] 3690 	mov	dpl,r2
      003256 8B 83            [24] 3691 	mov	dph,r3
      003258 8C F0            [24] 3692 	mov	b,r4
      00325A E4               [12] 3693 	clr	a
      00325B 12 42 A8         [24] 3694 	lcall	__gptrput
      00325E A3               [24] 3695 	inc	dptr
      00325F 12 42 A8         [24] 3696 	lcall	__gptrput
                                   3697 ;	src/main.c:434: curr->alphabet_chars = 0; 
      003262 74 02            [12] 3698 	mov	a,#0x02
      003264 2D               [12] 3699 	add	a,r5
      003265 FD               [12] 3700 	mov	r5,a
      003266 E4               [12] 3701 	clr	a
      003267 3E               [12] 3702 	addc	a,r6
      003268 FE               [12] 3703 	mov	r6,a
      003269 8D 82            [24] 3704 	mov	dpl,r5
      00326B 8E 83            [24] 3705 	mov	dph,r6
      00326D 8F F0            [24] 3706 	mov	b,r7
      00326F E4               [12] 3707 	clr	a
      003270 12 42 A8         [24] 3708 	lcall	__gptrput
      003273 A3               [24] 3709 	inc	dptr
                                   3710 ;	src/main.c:436: }
      003274 02 42 A8         [24] 3711 	ljmp	__gptrput
                                   3712 ;------------------------------------------------------------
                                   3713 ;Allocation info for local variables in function 'dollar_sign_command_handler'
                                   3714 ;------------------------------------------------------------
                                   3715 ;sloc0                     Allocated with name '_dollar_sign_command_handler_sloc0_1_0'
                                   3716 ;buffer_3                  Allocated with name '_dollar_sign_command_handler_buffer_3_65537_169'
                                   3717 ;size                      Allocated with name '_dollar_sign_command_handler_size_65537_169'
                                   3718 ;------------------------------------------------------------
                                   3719 ;	src/main.c:438: void dollar_sign_command_handler()
                                   3720 ;	-----------------------------------------
                                   3721 ;	 function dollar_sign_command_handler
                                   3722 ;	-----------------------------------------
      003277                       3723 _dollar_sign_command_handler:
                                   3724 ;	src/main.c:440: command_header("Copy buffer_0 into buffer_3");
      003277 90 52 8F         [24] 3725 	mov	dptr,#___str_26
      00327A 75 F0 80         [24] 3726 	mov	b,#0x80
      00327D 12 29 51         [24] 3727 	lcall	_command_header
                                   3728 ;	src/main.c:441: P1_0 = ON;
                                   3729 ;	assignBit
      003280 D2 90            [12] 3730 	setb	_P1_0
                                   3731 ;	src/main.c:442: if (dynamic_buffers_list.head == NULL
      003282 90 20 D0         [24] 3732 	mov	dptr,#_dynamic_buffers_list
      003285 E0               [24] 3733 	movx	a,@dptr
      003286 FE               [12] 3734 	mov	r6,a
      003287 A3               [24] 3735 	inc	dptr
      003288 E0               [24] 3736 	movx	a,@dptr
      003289 FD               [12] 3737 	mov	r5,a
      00328A A3               [24] 3738 	inc	dptr
      00328B E0               [24] 3739 	movx	a,@dptr
      00328C FF               [12] 3740 	mov	r7,a
      00328D EE               [12] 3741 	mov	a,r6
      00328E 4D               [12] 3742 	orl	a,r5
      00328F 60 1F            [24] 3743 	jz	00101$
                                   3744 ;	src/main.c:443: || dynamic_buffers_list.head->next == NULL) 
      003291 74 08            [12] 3745 	mov	a,#0x08
      003293 2E               [12] 3746 	add	a,r6
      003294 FE               [12] 3747 	mov	r6,a
      003295 E4               [12] 3748 	clr	a
      003296 3D               [12] 3749 	addc	a,r5
      003297 FD               [12] 3750 	mov	r5,a
      003298 8E 82            [24] 3751 	mov	dpl,r6
      00329A 8D 83            [24] 3752 	mov	dph,r5
      00329C 8F F0            [24] 3753 	mov	b,r7
      00329E 12 4F 02         [24] 3754 	lcall	__gptrget
      0032A1 FE               [12] 3755 	mov	r6,a
      0032A2 A3               [24] 3756 	inc	dptr
      0032A3 12 4F 02         [24] 3757 	lcall	__gptrget
      0032A6 FD               [12] 3758 	mov	r5,a
      0032A7 A3               [24] 3759 	inc	dptr
      0032A8 12 4F 02         [24] 3760 	lcall	__gptrget
      0032AB FF               [12] 3761 	mov	r7,a
      0032AC EE               [12] 3762 	mov	a,r6
      0032AD 4D               [12] 3763 	orl	a,r5
      0032AE 70 18            [24] 3764 	jnz	00102$
      0032B0                       3765 00101$:
                                   3766 ;	src/main.c:445: P1_0 = OFF;
                                   3767 ;	assignBit
      0032B0 C2 90            [12] 3768 	clr	_P1_0
                                   3769 ;	src/main.c:446: printf("\r\n buffer_3 not allocated; exiting");
      0032B2 74 AB            [12] 3770 	mov	a,#___str_27
      0032B4 C0 E0            [24] 3771 	push	acc
      0032B6 74 52            [12] 3772 	mov	a,#(___str_27 >> 8)
      0032B8 C0 E0            [24] 3773 	push	acc
      0032BA 74 80            [12] 3774 	mov	a,#0x80
      0032BC C0 E0            [24] 3775 	push	acc
      0032BE 12 44 D6         [24] 3776 	lcall	_printf
      0032C1 15 81            [12] 3777 	dec	sp
      0032C3 15 81            [12] 3778 	dec	sp
      0032C5 15 81            [12] 3779 	dec	sp
                                   3780 ;	src/main.c:447: return; 
      0032C7 22               [24] 3781 	ret
      0032C8                       3782 00102$:
                                   3783 ;	src/main.c:449: buffer_t* buffer_3 = dynamic_buffers_list.head->next;
      0032C8 8E 02            [24] 3784 	mov	ar2,r6
      0032CA 8D 03            [24] 3785 	mov	ar3,r5
      0032CC 8F 04            [24] 3786 	mov	ar4,r7
                                   3787 ;	src/main.c:450: size_t size = (buffer_3->size > static_buffers[0].size) ? static_buffers[0].size : buffer_3->size; 
      0032CE 74 04            [12] 3788 	mov	a,#0x04
      0032D0 2E               [12] 3789 	add	a,r6
      0032D1 FE               [12] 3790 	mov	r6,a
      0032D2 E4               [12] 3791 	clr	a
      0032D3 3D               [12] 3792 	addc	a,r5
      0032D4 FD               [12] 3793 	mov	r5,a
      0032D5 8E 82            [24] 3794 	mov	dpl,r6
      0032D7 8D 83            [24] 3795 	mov	dph,r5
      0032D9 8F F0            [24] 3796 	mov	b,r7
      0032DB 12 4F 02         [24] 3797 	lcall	__gptrget
      0032DE FE               [12] 3798 	mov	r6,a
      0032DF A3               [24] 3799 	inc	dptr
      0032E0 12 4F 02         [24] 3800 	lcall	__gptrget
      0032E3 FF               [12] 3801 	mov	r7,a
      0032E4 90 00 05         [24] 3802 	mov	dptr,#(_static_buffers + 0x0004)
      0032E7 E0               [24] 3803 	movx	a,@dptr
      0032E8 F9               [12] 3804 	mov	r1,a
      0032E9 A3               [24] 3805 	inc	dptr
      0032EA E0               [24] 3806 	movx	a,@dptr
      0032EB FD               [12] 3807 	mov	r5,a
      0032EC C3               [12] 3808 	clr	c
      0032ED E9               [12] 3809 	mov	a,r1
      0032EE 9E               [12] 3810 	subb	a,r6
      0032EF ED               [12] 3811 	mov	a,r5
      0032F0 9F               [12] 3812 	subb	a,r7
      0032F1 50 06            [24] 3813 	jnc	00106$
      0032F3 89 54            [24] 3814 	mov	_dollar_sign_command_handler_sloc0_1_0,r1
      0032F5 8D 55            [24] 3815 	mov	(_dollar_sign_command_handler_sloc0_1_0 + 1),r5
      0032F7 80 04            [24] 3816 	sjmp	00107$
      0032F9                       3817 00106$:
      0032F9 8E 54            [24] 3818 	mov	_dollar_sign_command_handler_sloc0_1_0,r6
      0032FB 8F 55            [24] 3819 	mov	(_dollar_sign_command_handler_sloc0_1_0 + 1),r7
      0032FD                       3820 00107$:
                                   3821 ;	src/main.c:451: memcpy(buffer_3->buffer, static_buffers[0].buffer, size);
      0032FD 8A 82            [24] 3822 	mov	dpl,r2
      0032FF 8B 83            [24] 3823 	mov	dph,r3
      003301 8C F0            [24] 3824 	mov	b,r4
      003303 12 4F 02         [24] 3825 	lcall	__gptrget
      003306 FE               [12] 3826 	mov	r6,a
      003307 A3               [24] 3827 	inc	dptr
      003308 12 4F 02         [24] 3828 	lcall	__gptrget
      00330B F8               [12] 3829 	mov	r0,a
      00330C 7F 00            [12] 3830 	mov	r7,#0x00
      00330E 90 00 01         [24] 3831 	mov	dptr,#_static_buffers
      003311 E0               [24] 3832 	movx	a,@dptr
      003312 F9               [12] 3833 	mov	r1,a
      003313 A3               [24] 3834 	inc	dptr
      003314 E0               [24] 3835 	movx	a,@dptr
      003315 FD               [12] 3836 	mov	r5,a
      003316 90 20 7D         [24] 3837 	mov	dptr,#___memcpy_PARM_2
      003319 E9               [12] 3838 	mov	a,r1
      00331A F0               [24] 3839 	movx	@dptr,a
      00331B ED               [12] 3840 	mov	a,r5
      00331C A3               [24] 3841 	inc	dptr
      00331D F0               [24] 3842 	movx	@dptr,a
      00331E E4               [12] 3843 	clr	a
      00331F A3               [24] 3844 	inc	dptr
      003320 F0               [24] 3845 	movx	@dptr,a
      003321 90 20 80         [24] 3846 	mov	dptr,#___memcpy_PARM_3
      003324 E5 54            [12] 3847 	mov	a,_dollar_sign_command_handler_sloc0_1_0
      003326 F0               [24] 3848 	movx	@dptr,a
      003327 E5 55            [12] 3849 	mov	a,(_dollar_sign_command_handler_sloc0_1_0 + 1)
      003329 A3               [24] 3850 	inc	dptr
      00332A F0               [24] 3851 	movx	@dptr,a
      00332B 8E 82            [24] 3852 	mov	dpl,r6
      00332D 88 83            [24] 3853 	mov	dph,r0
      00332F 8F F0            [24] 3854 	mov	b,r7
      003331 C0 04            [24] 3855 	push	ar4
      003333 C0 03            [24] 3856 	push	ar3
      003335 C0 02            [24] 3857 	push	ar2
      003337 12 40 E8         [24] 3858 	lcall	___memcpy
      00333A D0 02            [24] 3859 	pop	ar2
      00333C D0 03            [24] 3860 	pop	ar3
      00333E D0 04            [24] 3861 	pop	ar4
                                   3862 ;	src/main.c:452: buffer_3->alphabet_chars = static_buffers[0].alphabet_chars;
      003340 74 02            [12] 3863 	mov	a,#0x02
      003342 2A               [12] 3864 	add	a,r2
      003343 FD               [12] 3865 	mov	r5,a
      003344 E4               [12] 3866 	clr	a
      003345 3B               [12] 3867 	addc	a,r3
      003346 FE               [12] 3868 	mov	r6,a
      003347 8C 07            [24] 3869 	mov	ar7,r4
      003349 90 00 03         [24] 3870 	mov	dptr,#(_static_buffers + 0x0002)
      00334C E0               [24] 3871 	movx	a,@dptr
      00334D F8               [12] 3872 	mov	r0,a
      00334E A3               [24] 3873 	inc	dptr
      00334F E0               [24] 3874 	movx	a,@dptr
      003350 F9               [12] 3875 	mov	r1,a
      003351 8D 82            [24] 3876 	mov	dpl,r5
      003353 8E 83            [24] 3877 	mov	dph,r6
      003355 8F F0            [24] 3878 	mov	b,r7
      003357 E8               [12] 3879 	mov	a,r0
      003358 12 42 A8         [24] 3880 	lcall	__gptrput
      00335B A3               [24] 3881 	inc	dptr
      00335C E9               [12] 3882 	mov	a,r1
      00335D 12 42 A8         [24] 3883 	lcall	__gptrput
                                   3884 ;	src/main.c:453: buffer_3->curr_available_char = static_buffers[0].curr_available_char;
      003360 74 06            [12] 3885 	mov	a,#0x06
      003362 2A               [12] 3886 	add	a,r2
      003363 FA               [12] 3887 	mov	r2,a
      003364 E4               [12] 3888 	clr	a
      003365 3B               [12] 3889 	addc	a,r3
      003366 FB               [12] 3890 	mov	r3,a
      003367 90 00 07         [24] 3891 	mov	dptr,#(_static_buffers + 0x0006)
      00336A E0               [24] 3892 	movx	a,@dptr
      00336B FE               [12] 3893 	mov	r6,a
      00336C A3               [24] 3894 	inc	dptr
      00336D E0               [24] 3895 	movx	a,@dptr
      00336E FF               [12] 3896 	mov	r7,a
      00336F 8A 82            [24] 3897 	mov	dpl,r2
      003371 8B 83            [24] 3898 	mov	dph,r3
      003373 8C F0            [24] 3899 	mov	b,r4
      003375 EE               [12] 3900 	mov	a,r6
      003376 12 42 A8         [24] 3901 	lcall	__gptrput
      003379 A3               [24] 3902 	inc	dptr
      00337A EF               [12] 3903 	mov	a,r7
      00337B 12 42 A8         [24] 3904 	lcall	__gptrput
                                   3905 ;	src/main.c:454: P1_0 = OFF; 
                                   3906 ;	assignBit
      00337E C2 90            [12] 3907 	clr	_P1_0
                                   3908 ;	src/main.c:455: printf("\r\n Done");
      003380 74 CE            [12] 3909 	mov	a,#___str_28
      003382 C0 E0            [24] 3910 	push	acc
      003384 74 52            [12] 3911 	mov	a,#(___str_28 >> 8)
      003386 C0 E0            [24] 3912 	push	acc
      003388 74 80            [12] 3913 	mov	a,#0x80
      00338A C0 E0            [24] 3914 	push	acc
      00338C 12 44 D6         [24] 3915 	lcall	_printf
      00338F 15 81            [12] 3916 	dec	sp
      003391 15 81            [12] 3917 	dec	sp
      003393 15 81            [12] 3918 	dec	sp
                                   3919 ;	src/main.c:456: }
      003395 22               [24] 3920 	ret
                                   3921 ;------------------------------------------------------------
                                   3922 ;Allocation info for local variables in function 'hashtag_command_handler'
                                   3923 ;------------------------------------------------------------
                                   3924 ;c                         Allocated with name '_hashtag_command_handler_c_196609_174'
                                   3925 ;buffer_3                  Allocated with name '_hashtag_command_handler_buffer_3_65537_172'
                                   3926 ;i                         Allocated with name '_hashtag_command_handler_i_131073_173'
                                   3927 ;------------------------------------------------------------
                                   3928 ;	src/main.c:458: void hashtag_command_handler()
                                   3929 ;	-----------------------------------------
                                   3930 ;	 function hashtag_command_handler
                                   3931 ;	-----------------------------------------
      003396                       3932 _hashtag_command_handler:
                                   3933 ;	src/main.c:460: command_header("Convert buffer_3 chars to lowercase");
      003396 90 52 D6         [24] 3934 	mov	dptr,#___str_29
      003399 75 F0 80         [24] 3935 	mov	b,#0x80
      00339C 12 29 51         [24] 3936 	lcall	_command_header
                                   3937 ;	src/main.c:461: P1_0 = ON;
                                   3938 ;	assignBit
      00339F D2 90            [12] 3939 	setb	_P1_0
                                   3940 ;	src/main.c:462: if (dynamic_buffers_list.head == NULL
      0033A1 90 20 D0         [24] 3941 	mov	dptr,#_dynamic_buffers_list
      0033A4 E0               [24] 3942 	movx	a,@dptr
      0033A5 FD               [12] 3943 	mov	r5,a
      0033A6 A3               [24] 3944 	inc	dptr
      0033A7 E0               [24] 3945 	movx	a,@dptr
      0033A8 FE               [12] 3946 	mov	r6,a
      0033A9 A3               [24] 3947 	inc	dptr
      0033AA E0               [24] 3948 	movx	a,@dptr
      0033AB FF               [12] 3949 	mov	r7,a
      0033AC ED               [12] 3950 	mov	a,r5
      0033AD 4E               [12] 3951 	orl	a,r6
      0033AE 60 1F            [24] 3952 	jz	00101$
                                   3953 ;	src/main.c:463: || dynamic_buffers_list.head->next == NULL) 
      0033B0 74 08            [12] 3954 	mov	a,#0x08
      0033B2 2D               [12] 3955 	add	a,r5
      0033B3 FD               [12] 3956 	mov	r5,a
      0033B4 E4               [12] 3957 	clr	a
      0033B5 3E               [12] 3958 	addc	a,r6
      0033B6 FE               [12] 3959 	mov	r6,a
      0033B7 8D 82            [24] 3960 	mov	dpl,r5
      0033B9 8E 83            [24] 3961 	mov	dph,r6
      0033BB 8F F0            [24] 3962 	mov	b,r7
      0033BD 12 4F 02         [24] 3963 	lcall	__gptrget
      0033C0 FD               [12] 3964 	mov	r5,a
      0033C1 A3               [24] 3965 	inc	dptr
      0033C2 12 4F 02         [24] 3966 	lcall	__gptrget
      0033C5 FE               [12] 3967 	mov	r6,a
      0033C6 A3               [24] 3968 	inc	dptr
      0033C7 12 4F 02         [24] 3969 	lcall	__gptrget
      0033CA FF               [12] 3970 	mov	r7,a
      0033CB ED               [12] 3971 	mov	a,r5
      0033CC 4E               [12] 3972 	orl	a,r6
      0033CD 70 03            [24] 3973 	jnz	00102$
      0033CF                       3974 00101$:
                                   3975 ;	src/main.c:465: P1_0 = OFF;
                                   3976 ;	assignBit
      0033CF C2 90            [12] 3977 	clr	_P1_0
                                   3978 ;	src/main.c:466: return; 
      0033D1 22               [24] 3979 	ret
      0033D2                       3980 00102$:
                                   3981 ;	src/main.c:469: buffer_t *buffer_3 = dynamic_buffers_list.head->next;
      0033D2 8D 02            [24] 3982 	mov	ar2,r5
      0033D4 8E 03            [24] 3983 	mov	ar3,r6
      0033D6 8F 04            [24] 3984 	mov	ar4,r7
                                   3985 ;	src/main.c:470: for(size_t i = 0; i < buffer_3->curr_available_char; i++)
      0033D8 74 06            [12] 3986 	mov	a,#0x06
      0033DA 2D               [12] 3987 	add	a,r5
      0033DB FD               [12] 3988 	mov	r5,a
      0033DC E4               [12] 3989 	clr	a
      0033DD 3E               [12] 3990 	addc	a,r6
      0033DE FE               [12] 3991 	mov	r6,a
      0033DF 78 00            [12] 3992 	mov	r0,#0x00
      0033E1 79 00            [12] 3993 	mov	r1,#0x00
      0033E3                       3994 00109$:
      0033E3 C0 02            [24] 3995 	push	ar2
      0033E5 C0 03            [24] 3996 	push	ar3
      0033E7 C0 04            [24] 3997 	push	ar4
      0033E9 8D 82            [24] 3998 	mov	dpl,r5
      0033EB 8E 83            [24] 3999 	mov	dph,r6
      0033ED 8F F0            [24] 4000 	mov	b,r7
      0033EF 12 4F 02         [24] 4001 	lcall	__gptrget
      0033F2 FB               [12] 4002 	mov	r3,a
      0033F3 A3               [24] 4003 	inc	dptr
      0033F4 12 4F 02         [24] 4004 	lcall	__gptrget
      0033F7 FC               [12] 4005 	mov	r4,a
      0033F8 C3               [12] 4006 	clr	c
      0033F9 E8               [12] 4007 	mov	a,r0
      0033FA 9B               [12] 4008 	subb	a,r3
      0033FB E9               [12] 4009 	mov	a,r1
      0033FC 9C               [12] 4010 	subb	a,r4
      0033FD D0 04            [24] 4011 	pop	ar4
      0033FF D0 03            [24] 4012 	pop	ar3
      003401 D0 02            [24] 4013 	pop	ar2
      003403 50 6B            [24] 4014 	jnc	00107$
                                   4015 ;	src/main.c:472: register char c = buffer_3->buffer[i];
      003405 C0 05            [24] 4016 	push	ar5
      003407 C0 06            [24] 4017 	push	ar6
      003409 C0 07            [24] 4018 	push	ar7
      00340B 8A 82            [24] 4019 	mov	dpl,r2
      00340D 8B 83            [24] 4020 	mov	dph,r3
      00340F 8C F0            [24] 4021 	mov	b,r4
      003411 12 4F 02         [24] 4022 	lcall	__gptrget
      003414 FE               [12] 4023 	mov	r6,a
      003415 A3               [24] 4024 	inc	dptr
      003416 12 4F 02         [24] 4025 	lcall	__gptrget
      003419 FF               [12] 4026 	mov	r7,a
      00341A E8               [12] 4027 	mov	a,r0
      00341B 2E               [12] 4028 	add	a,r6
      00341C F5 82            [12] 4029 	mov	dpl,a
      00341E E9               [12] 4030 	mov	a,r1
      00341F 3F               [12] 4031 	addc	a,r7
      003420 F5 83            [12] 4032 	mov	dph,a
      003422 E0               [24] 4033 	movx	a,@dptr
      003423 F5 56            [12] 4034 	mov	_hashtag_command_handler_c_196609_174,a
                                   4035 ;	src/main.c:473: if (c <= 'Z' || c >= 'A')
      003425 C3               [12] 4036 	clr	c
      003426 74 5A            [12] 4037 	mov	a,#0x5a
      003428 95 56            [12] 4038 	subb	a,_hashtag_command_handler_c_196609_174
      00342A D0 07            [24] 4039 	pop	ar7
      00342C D0 06            [24] 4040 	pop	ar6
      00342E D0 05            [24] 4041 	pop	ar5
      003430 50 06            [24] 4042 	jnc	00104$
      003432 74 BF            [12] 4043 	mov	a,#0x100 - 0x41
      003434 25 56            [12] 4044 	add	a,_hashtag_command_handler_c_196609_174
      003436 50 30            [24] 4045 	jnc	00110$
      003438                       4046 00104$:
                                   4047 ;	src/main.c:475: buffer_3->buffer[i] |= LOWER_CASE_MASK;
      003438 C0 05            [24] 4048 	push	ar5
      00343A C0 06            [24] 4049 	push	ar6
      00343C C0 07            [24] 4050 	push	ar7
      00343E 8A 82            [24] 4051 	mov	dpl,r2
      003440 8B 83            [24] 4052 	mov	dph,r3
      003442 8C F0            [24] 4053 	mov	b,r4
      003444 12 4F 02         [24] 4054 	lcall	__gptrget
      003447 FE               [12] 4055 	mov	r6,a
      003448 A3               [24] 4056 	inc	dptr
      003449 12 4F 02         [24] 4057 	lcall	__gptrget
      00344C FF               [12] 4058 	mov	r7,a
      00344D E8               [12] 4059 	mov	a,r0
      00344E 2E               [12] 4060 	add	a,r6
      00344F FE               [12] 4061 	mov	r6,a
      003450 E9               [12] 4062 	mov	a,r1
      003451 3F               [12] 4063 	addc	a,r7
      003452 FF               [12] 4064 	mov	r7,a
      003453 8E 82            [24] 4065 	mov	dpl,r6
      003455 8F 83            [24] 4066 	mov	dph,r7
      003457 E0               [24] 4067 	movx	a,@dptr
      003458 FD               [12] 4068 	mov	r5,a
      003459 43 05 20         [24] 4069 	orl	ar5,#0x20
      00345C 8E 82            [24] 4070 	mov	dpl,r6
      00345E 8F 83            [24] 4071 	mov	dph,r7
      003460 ED               [12] 4072 	mov	a,r5
      003461 F0               [24] 4073 	movx	@dptr,a
                                   4074 ;	src/main.c:479: printf("\r\n Done");
      003462 D0 07            [24] 4075 	pop	ar7
      003464 D0 06            [24] 4076 	pop	ar6
      003466 D0 05            [24] 4077 	pop	ar5
                                   4078 ;	src/main.c:475: buffer_3->buffer[i] |= LOWER_CASE_MASK;
      003468                       4079 00110$:
                                   4080 ;	src/main.c:470: for(size_t i = 0; i < buffer_3->curr_available_char; i++)
      003468 08               [12] 4081 	inc	r0
      003469 B8 00 01         [24] 4082 	cjne	r0,#0x00,00135$
      00346C 09               [12] 4083 	inc	r1
      00346D                       4084 00135$:
      00346D 02 33 E3         [24] 4085 	ljmp	00109$
      003470                       4086 00107$:
                                   4087 ;	src/main.c:478: P1_0 = OFF;
                                   4088 ;	assignBit
      003470 C2 90            [12] 4089 	clr	_P1_0
                                   4090 ;	src/main.c:479: printf("\r\n Done");
      003472 74 CE            [12] 4091 	mov	a,#___str_28
      003474 C0 E0            [24] 4092 	push	acc
      003476 74 52            [12] 4093 	mov	a,#(___str_28 >> 8)
      003478 C0 E0            [24] 4094 	push	acc
      00347A 74 80            [12] 4095 	mov	a,#0x80
      00347C C0 E0            [24] 4096 	push	acc
      00347E 12 44 D6         [24] 4097 	lcall	_printf
      003481 15 81            [12] 4098 	dec	sp
      003483 15 81            [12] 4099 	dec	sp
      003485 15 81            [12] 4100 	dec	sp
                                   4101 ;	src/main.c:480: }
      003487 22               [24] 4102 	ret
                                   4103 ;------------------------------------------------------------
                                   4104 ;Allocation info for local variables in function 'plus_command_handler'
                                   4105 ;------------------------------------------------------------
                                   4106 ;size                      Allocated with name '_plus_command_handler_size_65537_177'
                                   4107 ;new_buffer                Allocated with name '_plus_command_handler_new_buffer_65538_179'
                                   4108 ;------------------------------------------------------------
                                   4109 ;	src/main.c:483: void plus_command_handler() 
                                   4110 ;	-----------------------------------------
                                   4111 ;	 function plus_command_handler
                                   4112 ;	-----------------------------------------
      003488                       4113 _plus_command_handler:
                                   4114 ;	src/main.c:485: command_header("\r\n Alloc Buffer");
      003488 90 52 FA         [24] 4115 	mov	dptr,#___str_30
      00348B 75 F0 80         [24] 4116 	mov	b,#0x80
      00348E 12 29 51         [24] 4117 	lcall	_command_header
                                   4118 ;	src/main.c:487: while (true) {
      003491                       4119 00105$:
                                   4120 ;	src/main.c:488: printf("\r\nPlease enter a size for the new buffer, [200,600]: ");
      003491 74 0A            [12] 4121 	mov	a,#___str_31
      003493 C0 E0            [24] 4122 	push	acc
      003495 74 53            [12] 4123 	mov	a,#(___str_31 >> 8)
      003497 C0 E0            [24] 4124 	push	acc
      003499 74 80            [12] 4125 	mov	a,#0x80
      00349B C0 E0            [24] 4126 	push	acc
      00349D 12 44 D6         [24] 4127 	lcall	_printf
      0034A0 15 81            [12] 4128 	dec	sp
      0034A2 15 81            [12] 4129 	dec	sp
      0034A4 15 81            [12] 4130 	dec	sp
                                   4131 ;	src/main.c:489: get_string();
      0034A6 12 39 29         [24] 4132 	lcall	_get_string
                                   4133 ;	src/main.c:490: size = atoi(get_input_buffer());
      0034A9 12 39 22         [24] 4134 	lcall	_get_input_buffer
      0034AC 12 41 84         [24] 4135 	lcall	_atoi
      0034AF AE 82            [24] 4136 	mov	r6,dpl
      0034B1 AF 83            [24] 4137 	mov	r7,dph
                                   4138 ;	src/main.c:491: if (size <= MAX_USER_DETERMINED_BUFFER_SZ && size >= MIN_USER_DETERMINED_BUFFER_SZ) break;
      0034B3 C3               [12] 4139 	clr	c
      0034B4 74 58            [12] 4140 	mov	a,#0x58
      0034B6 9E               [12] 4141 	subb	a,r6
      0034B7 74 82            [12] 4142 	mov	a,#(0x02 ^ 0x80)
      0034B9 8F F0            [24] 4143 	mov	b,r7
      0034BB 63 F0 80         [24] 4144 	xrl	b,#0x80
      0034BE 95 F0            [12] 4145 	subb	a,b
      0034C0 40 0A            [24] 4146 	jc	00102$
      0034C2 EE               [12] 4147 	mov	a,r6
      0034C3 94 C8            [12] 4148 	subb	a,#0xc8
      0034C5 EF               [12] 4149 	mov	a,r7
      0034C6 64 80            [12] 4150 	xrl	a,#0x80
      0034C8 94 80            [12] 4151 	subb	a,#0x80
      0034CA 50 17            [24] 4152 	jnc	00106$
      0034CC                       4153 00102$:
                                   4154 ;	src/main.c:492: printf("\r\nBuffer size invalid!! Please try again");
      0034CC 74 40            [12] 4155 	mov	a,#___str_32
      0034CE C0 E0            [24] 4156 	push	acc
      0034D0 74 53            [12] 4157 	mov	a,#(___str_32 >> 8)
      0034D2 C0 E0            [24] 4158 	push	acc
      0034D4 74 80            [12] 4159 	mov	a,#0x80
      0034D6 C0 E0            [24] 4160 	push	acc
      0034D8 12 44 D6         [24] 4161 	lcall	_printf
      0034DB 15 81            [12] 4162 	dec	sp
      0034DD 15 81            [12] 4163 	dec	sp
      0034DF 15 81            [12] 4164 	dec	sp
      0034E1 80 AE            [24] 4165 	sjmp	00105$
      0034E3                       4166 00106$:
                                   4167 ;	src/main.c:495: buffer_t *new_buffer = alloc_new_buffer((size_t) size);
      0034E3 8E 82            [24] 4168 	mov	dpl,r6
      0034E5 8F 83            [24] 4169 	mov	dph,r7
      0034E7 12 21 69         [24] 4170 	lcall	_alloc_new_buffer
      0034EA AD 82            [24] 4171 	mov	r5,dpl
      0034EC AE 83            [24] 4172 	mov	r6,dph
      0034EE AF F0            [24] 4173 	mov	r7,b
                                   4174 ;	src/main.c:497: if (new_buffer == NULL)
      0034F0 ED               [12] 4175 	mov	a,r5
      0034F1 4E               [12] 4176 	orl	a,r6
      0034F2 70 16            [24] 4177 	jnz	00108$
                                   4178 ;	src/main.c:499: printf("\r\n Allocation failed; able to allocate header but not buffer");
      0034F4 74 69            [12] 4179 	mov	a,#___str_33
      0034F6 C0 E0            [24] 4180 	push	acc
      0034F8 74 53            [12] 4181 	mov	a,#(___str_33 >> 8)
      0034FA C0 E0            [24] 4182 	push	acc
      0034FC 74 80            [12] 4183 	mov	a,#0x80
      0034FE C0 E0            [24] 4184 	push	acc
      003500 12 44 D6         [24] 4185 	lcall	_printf
      003503 15 81            [12] 4186 	dec	sp
      003505 15 81            [12] 4187 	dec	sp
      003507 15 81            [12] 4188 	dec	sp
                                   4189 ;	src/main.c:500: return;
      003509 22               [24] 4190 	ret
      00350A                       4191 00108$:
                                   4192 ;	src/main.c:503: append_to_buffer_list(&dynamic_buffers_list, new_buffer);
      00350A 90 20 47         [24] 4193 	mov	dptr,#_append_to_buffer_list_PARM_2
      00350D ED               [12] 4194 	mov	a,r5
      00350E F0               [24] 4195 	movx	@dptr,a
      00350F EE               [12] 4196 	mov	a,r6
      003510 A3               [24] 4197 	inc	dptr
      003511 F0               [24] 4198 	movx	@dptr,a
      003512 EF               [12] 4199 	mov	a,r7
      003513 A3               [24] 4200 	inc	dptr
      003514 F0               [24] 4201 	movx	@dptr,a
      003515 90 20 D0         [24] 4202 	mov	dptr,#_dynamic_buffers_list
      003518 75 F0 00         [24] 4203 	mov	b,#0x00
      00351B 12 3A 94         [24] 4204 	lcall	_append_to_buffer_list
                                   4205 ;	src/main.c:505: printf("\r\n Allocation successful!! New buffer added");
      00351E 74 A6            [12] 4206 	mov	a,#___str_34
      003520 C0 E0            [24] 4207 	push	acc
      003522 74 53            [12] 4208 	mov	a,#(___str_34 >> 8)
      003524 C0 E0            [24] 4209 	push	acc
      003526 74 80            [12] 4210 	mov	a,#0x80
      003528 C0 E0            [24] 4211 	push	acc
      00352A 12 44 D6         [24] 4212 	lcall	_printf
      00352D 15 81            [12] 4213 	dec	sp
      00352F 15 81            [12] 4214 	dec	sp
      003531 15 81            [12] 4215 	dec	sp
                                   4216 ;	src/main.c:507: }
      003533 22               [24] 4217 	ret
                                   4218 ;------------------------------------------------------------
                                   4219 ;Allocation info for local variables in function 'minus_command_handler'
                                   4220 ;------------------------------------------------------------
                                   4221 ;buffer_num                Allocated with name '_minus_command_handler_buffer_num_65537_182'
                                   4222 ;freed                     Allocated with name '_minus_command_handler_freed_131073_185'
                                   4223 ;------------------------------------------------------------
                                   4224 ;	src/main.c:509: void minus_command_handler() 
                                   4225 ;	-----------------------------------------
                                   4226 ;	 function minus_command_handler
                                   4227 ;	-----------------------------------------
      003534                       4228 _minus_command_handler:
                                   4229 ;	src/main.c:511: command_header("Free Buffer");
      003534 90 53 D2         [24] 4230 	mov	dptr,#___str_35
      003537 75 F0 80         [24] 4231 	mov	b,#0x80
      00353A 12 29 51         [24] 4232 	lcall	_command_header
                                   4233 ;	src/main.c:512: printf("\r\nPlease enter the number of the buffer you would like to free: ");
      00353D 74 DE            [12] 4234 	mov	a,#___str_36
      00353F C0 E0            [24] 4235 	push	acc
      003541 74 53            [12] 4236 	mov	a,#(___str_36 >> 8)
      003543 C0 E0            [24] 4237 	push	acc
      003545 74 80            [12] 4238 	mov	a,#0x80
      003547 C0 E0            [24] 4239 	push	acc
      003549 12 44 D6         [24] 4240 	lcall	_printf
      00354C 15 81            [12] 4241 	dec	sp
      00354E 15 81            [12] 4242 	dec	sp
      003550 15 81            [12] 4243 	dec	sp
                                   4244 ;	src/main.c:513: get_string(); 
      003552 12 39 29         [24] 4245 	lcall	_get_string
                                   4246 ;	src/main.c:514: int buffer_num = atoi(get_input_buffer()); 
      003555 12 39 22         [24] 4247 	lcall	_get_input_buffer
      003558 12 41 84         [24] 4248 	lcall	_atoi
      00355B AE 82            [24] 4249 	mov	r6,dpl
                                   4250 ;	src/main.c:515: if (buffer_num < 0)
      00355D E5 83            [12] 4251 	mov	a,dph
      00355F FF               [12] 4252 	mov	r7,a
      003560 30 E7 16         [24] 4253 	jnb	acc.7,00108$
                                   4254 ;	src/main.c:517: printf("\r\n Invalid buffer number, negatives not valid");
      003563 74 1F            [12] 4255 	mov	a,#___str_37
      003565 C0 E0            [24] 4256 	push	acc
      003567 74 54            [12] 4257 	mov	a,#(___str_37 >> 8)
      003569 C0 E0            [24] 4258 	push	acc
      00356B 74 80            [12] 4259 	mov	a,#0x80
      00356D C0 E0            [24] 4260 	push	acc
      00356F 12 44 D6         [24] 4261 	lcall	_printf
      003572 15 81            [12] 4262 	dec	sp
      003574 15 81            [12] 4263 	dec	sp
      003576 15 81            [12] 4264 	dec	sp
                                   4265 ;	src/main.c:518: return;
      003578 22               [24] 4266 	ret
      003579                       4267 00108$:
                                   4268 ;	src/main.c:520: else if (buffer_num <= 1) 
      003579 C3               [12] 4269 	clr	c
      00357A 74 01            [12] 4270 	mov	a,#0x01
      00357C 9E               [12] 4271 	subb	a,r6
      00357D 74 80            [12] 4272 	mov	a,#(0x00 ^ 0x80)
      00357F 8F F0            [24] 4273 	mov	b,r7
      003581 63 F0 80         [24] 4274 	xrl	b,#0x80
      003584 95 F0            [12] 4275 	subb	a,b
      003586 40 16            [24] 4276 	jc	00105$
                                   4277 ;	src/main.c:522: printf("\r\n Invalid buffer number, buffers 0 & 1 are protected");
      003588 74 4D            [12] 4278 	mov	a,#___str_38
      00358A C0 E0            [24] 4279 	push	acc
      00358C 74 54            [12] 4280 	mov	a,#(___str_38 >> 8)
      00358E C0 E0            [24] 4281 	push	acc
      003590 74 80            [12] 4282 	mov	a,#0x80
      003592 C0 E0            [24] 4283 	push	acc
      003594 12 44 D6         [24] 4284 	lcall	_printf
      003597 15 81            [12] 4285 	dec	sp
      003599 15 81            [12] 4286 	dec	sp
      00359B 15 81            [12] 4287 	dec	sp
                                   4288 ;	src/main.c:523: return; 
      00359D 22               [24] 4289 	ret
      00359E                       4290 00105$:
                                   4291 ;	src/main.c:527: bool freed = remove_from_buffer_list(&dynamic_buffers_list, (size_t)(buffer_num-2));
      00359E EE               [12] 4292 	mov	a,r6
      00359F 24 FE            [12] 4293 	add	a,#0xfe
      0035A1 FE               [12] 4294 	mov	r6,a
      0035A2 EF               [12] 4295 	mov	a,r7
      0035A3 34 FF            [12] 4296 	addc	a,#0xff
      0035A5 FF               [12] 4297 	mov	r7,a
      0035A6 90 20 50         [24] 4298 	mov	dptr,#_remove_from_buffer_list_PARM_2
      0035A9 EE               [12] 4299 	mov	a,r6
      0035AA F0               [24] 4300 	movx	@dptr,a
      0035AB EF               [12] 4301 	mov	a,r7
      0035AC A3               [24] 4302 	inc	dptr
      0035AD F0               [24] 4303 	movx	@dptr,a
      0035AE 90 20 D0         [24] 4304 	mov	dptr,#_dynamic_buffers_list
      0035B1 75 F0 00         [24] 4305 	mov	b,#0x00
      0035B4 12 3B 7A         [24] 4306 	lcall	_remove_from_buffer_list
      0035B7 E5 82            [12] 4307 	mov	a,dpl
                                   4308 ;	src/main.c:528: if (freed)
      0035B9 60 16            [24] 4309 	jz	00102$
                                   4310 ;	src/main.c:530: printf("\r\n Successfully removed buffer");
      0035BB 74 83            [12] 4311 	mov	a,#___str_39
      0035BD C0 E0            [24] 4312 	push	acc
      0035BF 74 54            [12] 4313 	mov	a,#(___str_39 >> 8)
      0035C1 C0 E0            [24] 4314 	push	acc
      0035C3 74 80            [12] 4315 	mov	a,#0x80
      0035C5 C0 E0            [24] 4316 	push	acc
      0035C7 12 44 D6         [24] 4317 	lcall	_printf
      0035CA 15 81            [12] 4318 	dec	sp
      0035CC 15 81            [12] 4319 	dec	sp
      0035CE 15 81            [12] 4320 	dec	sp
      0035D0 22               [24] 4321 	ret
      0035D1                       4322 00102$:
                                   4323 ;	src/main.c:534: printf("\r\n Failed to remove buffer, idx too big");
      0035D1 74 A2            [12] 4324 	mov	a,#___str_40
      0035D3 C0 E0            [24] 4325 	push	acc
      0035D5 74 54            [12] 4326 	mov	a,#(___str_40 >> 8)
      0035D7 C0 E0            [24] 4327 	push	acc
      0035D9 74 80            [12] 4328 	mov	a,#0x80
      0035DB C0 E0            [24] 4329 	push	acc
      0035DD 12 44 D6         [24] 4330 	lcall	_printf
      0035E0 15 81            [12] 4331 	dec	sp
      0035E2 15 81            [12] 4332 	dec	sp
      0035E4 15 81            [12] 4333 	dec	sp
                                   4334 ;	src/main.c:538: }
      0035E6 22               [24] 4335 	ret
                                   4336 ;------------------------------------------------------------
                                   4337 ;Allocation info for local variables in function 'star_command_handler'
                                   4338 ;------------------------------------------------------------
                                   4339 ;	src/main.c:541: void star_command_handler()
                                   4340 ;	-----------------------------------------
                                   4341 ;	 function star_command_handler
                                   4342 ;	-----------------------------------------
      0035E7                       4343 _star_command_handler:
                                   4344 ;	src/main.c:543: printf("\r\nResetting device");
      0035E7 74 CA            [12] 4345 	mov	a,#___str_41
      0035E9 C0 E0            [24] 4346 	push	acc
      0035EB 74 54            [12] 4347 	mov	a,#(___str_41 >> 8)
      0035ED C0 E0            [24] 4348 	push	acc
      0035EF 74 80            [12] 4349 	mov	a,#0x80
      0035F1 C0 E0            [24] 4350 	push	acc
      0035F3 12 44 D6         [24] 4351 	lcall	_printf
      0035F6 15 81            [12] 4352 	dec	sp
      0035F8 15 81            [12] 4353 	dec	sp
      0035FA 15 81            [12] 4354 	dec	sp
                                   4355 ;	src/main.c:544: WDTRST = 0x1E;
      0035FC 75 A6 1E         [24] 4356 	mov	_WDTRST,#0x1e
                                   4357 ;	src/main.c:545: WDTRST = 0xE1; //start watchdog timer
      0035FF 75 A6 E1         [24] 4358 	mov	_WDTRST,#0xe1
      003602                       4359 00103$:
                                   4360 ;	src/main.c:547: }
      003602 80 FE            [24] 4361 	sjmp	00103$
                                   4362 ;------------------------------------------------------------
                                   4363 ;Allocation info for local variables in function 'ampersand_command_handler'
                                   4364 ;------------------------------------------------------------
                                   4365 ;sloc0                     Allocated with name '_ampersand_command_handler_sloc0_1_0'
                                   4366 ;sloc1                     Allocated with name '_ampersand_command_handler_sloc1_1_0'
                                   4367 ;sloc2                     Allocated with name '_ampersand_command_handler_sloc2_1_0'
                                   4368 ;length                    Allocated with name '_ampersand_command_handler_length_65537_191'
                                   4369 ;selected_buffer           Allocated with name '_ampersand_command_handler_selected_buffer_65538_192'
                                   4370 ;buffer                    Allocated with name '_ampersand_command_handler_buffer_65539_194'
                                   4371 ;address                   Allocated with name '_ampersand_command_handler_address_131075_196'
                                   4372 ;------------------------------------------------------------
                                   4373 ;	src/main.c:549: void ampersand_command_handler()
                                   4374 ;	-----------------------------------------
                                   4375 ;	 function ampersand_command_handler
                                   4376 ;	-----------------------------------------
      003604                       4377 _ampersand_command_handler:
                                   4378 ;	src/main.c:551: command_header("\r\n Dump Buffer");
      003604 90 54 DD         [24] 4379 	mov	dptr,#___str_42
      003607 75 F0 80         [24] 4380 	mov	b,#0x80
      00360A 12 29 51         [24] 4381 	lcall	_command_header
                                   4382 ;	src/main.c:552: size_t length = ll_length(&dynamic_buffers_list);
      00360D 90 20 D0         [24] 4383 	mov	dptr,#_dynamic_buffers_list
      003610 75 F0 00         [24] 4384 	mov	b,#0x00
      003613 12 3E 4D         [24] 4385 	lcall	_ll_length
      003616 AE 82            [24] 4386 	mov	r6,dpl
      003618 AF 83            [24] 4387 	mov	r7,dph
                                   4388 ;	src/main.c:553: printf("\r\nEnter a valid buffer # [2-%zu]: ", length + 2);
      00361A 74 02            [12] 4389 	mov	a,#0x02
      00361C 2E               [12] 4390 	add	a,r6
      00361D FC               [12] 4391 	mov	r4,a
      00361E E4               [12] 4392 	clr	a
      00361F 3F               [12] 4393 	addc	a,r7
      003620 FD               [12] 4394 	mov	r5,a
      003621 C0 07            [24] 4395 	push	ar7
      003623 C0 06            [24] 4396 	push	ar6
      003625 C0 04            [24] 4397 	push	ar4
      003627 C0 05            [24] 4398 	push	ar5
      003629 74 EC            [12] 4399 	mov	a,#___str_43
      00362B C0 E0            [24] 4400 	push	acc
      00362D 74 54            [12] 4401 	mov	a,#(___str_43 >> 8)
      00362F C0 E0            [24] 4402 	push	acc
      003631 74 80            [12] 4403 	mov	a,#0x80
      003633 C0 E0            [24] 4404 	push	acc
      003635 12 44 D6         [24] 4405 	lcall	_printf
      003638 E5 81            [12] 4406 	mov	a,sp
      00363A 24 FB            [12] 4407 	add	a,#0xfb
      00363C F5 81            [12] 4408 	mov	sp,a
                                   4409 ;	src/main.c:554: get_string();
      00363E 12 39 29         [24] 4410 	lcall	_get_string
                                   4411 ;	src/main.c:555: int selected_buffer = atoi(get_input_buffer());
      003641 12 39 22         [24] 4412 	lcall	_get_input_buffer
      003644 12 41 84         [24] 4413 	lcall	_atoi
      003647 AC 82            [24] 4414 	mov	r4,dpl
      003649 AD 83            [24] 4415 	mov	r5,dph
      00364B D0 06            [24] 4416 	pop	ar6
      00364D D0 07            [24] 4417 	pop	ar7
                                   4418 ;	src/main.c:556: if (selected_buffer < MIN_DYNAMIC_BUFFER_NUM || selected_buffer > (MIN_DYNAMIC_BUFFER_NUM + length))
      00364F C3               [12] 4419 	clr	c
      003650 EC               [12] 4420 	mov	a,r4
      003651 94 02            [12] 4421 	subb	a,#0x02
      003653 ED               [12] 4422 	mov	a,r5
      003654 64 80            [12] 4423 	xrl	a,#0x80
      003656 94 80            [12] 4424 	subb	a,#0x80
      003658 40 12            [24] 4425 	jc	00101$
      00365A 74 02            [12] 4426 	mov	a,#0x02
      00365C 2E               [12] 4427 	add	a,r6
      00365D FE               [12] 4428 	mov	r6,a
      00365E E4               [12] 4429 	clr	a
      00365F 3F               [12] 4430 	addc	a,r7
      003660 FF               [12] 4431 	mov	r7,a
      003661 8C 02            [24] 4432 	mov	ar2,r4
      003663 8D 03            [24] 4433 	mov	ar3,r5
      003665 C3               [12] 4434 	clr	c
      003666 EE               [12] 4435 	mov	a,r6
      003667 9A               [12] 4436 	subb	a,r2
      003668 EF               [12] 4437 	mov	a,r7
      003669 9B               [12] 4438 	subb	a,r3
      00366A 50 16            [24] 4439 	jnc	00102$
      00366C                       4440 00101$:
                                   4441 ;	src/main.c:558: printf("\r\nInvalid buffer number; returning to prompt");
      00366C 74 0F            [12] 4442 	mov	a,#___str_44
      00366E C0 E0            [24] 4443 	push	acc
      003670 74 55            [12] 4444 	mov	a,#(___str_44 >> 8)
      003672 C0 E0            [24] 4445 	push	acc
      003674 74 80            [12] 4446 	mov	a,#0x80
      003676 C0 E0            [24] 4447 	push	acc
      003678 12 44 D6         [24] 4448 	lcall	_printf
      00367B 15 81            [12] 4449 	dec	sp
      00367D 15 81            [12] 4450 	dec	sp
      00367F 15 81            [12] 4451 	dec	sp
                                   4452 ;	src/main.c:559: return;
      003681 22               [24] 4453 	ret
      003682                       4454 00102$:
                                   4455 ;	src/main.c:562: buffer_t *buffer = ll_get_elem(&dynamic_buffers_list, (size_t) (selected_buffer - 2));
      003682 EC               [12] 4456 	mov	a,r4
      003683 24 FE            [12] 4457 	add	a,#0xfe
      003685 FE               [12] 4458 	mov	r6,a
      003686 ED               [12] 4459 	mov	a,r5
      003687 34 FF            [12] 4460 	addc	a,#0xff
      003689 FF               [12] 4461 	mov	r7,a
      00368A 90 20 69         [24] 4462 	mov	dptr,#_ll_get_elem_PARM_2
      00368D EE               [12] 4463 	mov	a,r6
      00368E F0               [24] 4464 	movx	@dptr,a
      00368F EF               [12] 4465 	mov	a,r7
      003690 A3               [24] 4466 	inc	dptr
      003691 F0               [24] 4467 	movx	@dptr,a
      003692 90 20 D0         [24] 4468 	mov	dptr,#_dynamic_buffers_list
      003695 75 F0 00         [24] 4469 	mov	b,#0x00
      003698 C0 05            [24] 4470 	push	ar5
      00369A C0 04            [24] 4471 	push	ar4
      00369C 12 3E D8         [24] 4472 	lcall	_ll_get_elem
      00369F AE 82            [24] 4473 	mov	r6,dpl
      0036A1 AF 83            [24] 4474 	mov	r7,dph
      0036A3 D0 04            [24] 4475 	pop	ar4
      0036A5 D0 05            [24] 4476 	pop	ar5
      0036A7 8F 03            [24] 4477 	mov	ar3,r7
      0036A9 7F 00            [12] 4478 	mov	r7,#0x00
                                   4479 ;	src/main.c:564: if (buffer == NULL)
      0036AB EE               [12] 4480 	mov	a,r6
      0036AC 4B               [12] 4481 	orl	a,r3
      0036AD 70 16            [24] 4482 	jnz	00105$
                                   4483 ;	src/main.c:566: printf("\r\nLL error; returning to prompt");
      0036AF 74 3C            [12] 4484 	mov	a,#___str_45
      0036B1 C0 E0            [24] 4485 	push	acc
      0036B3 74 55            [12] 4486 	mov	a,#(___str_45 >> 8)
      0036B5 C0 E0            [24] 4487 	push	acc
      0036B7 74 80            [12] 4488 	mov	a,#0x80
      0036B9 C0 E0            [24] 4489 	push	acc
      0036BB 12 44 D6         [24] 4490 	lcall	_printf
      0036BE 15 81            [12] 4491 	dec	sp
      0036C0 15 81            [12] 4492 	dec	sp
      0036C2 15 81            [12] 4493 	dec	sp
                                   4494 ;	src/main.c:567: return;
      0036C4 22               [24] 4495 	ret
      0036C5                       4496 00105$:
                                   4497 ;	src/main.c:570: printf("\r\n Buffer %d", selected_buffer);
      0036C5 C0 07            [24] 4498 	push	ar7
      0036C7 C0 06            [24] 4499 	push	ar6
      0036C9 C0 03            [24] 4500 	push	ar3
      0036CB C0 04            [24] 4501 	push	ar4
      0036CD C0 05            [24] 4502 	push	ar5
      0036CF 74 5C            [12] 4503 	mov	a,#___str_46
      0036D1 C0 E0            [24] 4504 	push	acc
      0036D3 74 55            [12] 4505 	mov	a,#(___str_46 >> 8)
      0036D5 C0 E0            [24] 4506 	push	acc
      0036D7 74 80            [12] 4507 	mov	a,#0x80
      0036D9 C0 E0            [24] 4508 	push	acc
      0036DB 12 44 D6         [24] 4509 	lcall	_printf
      0036DE E5 81            [12] 4510 	mov	a,sp
      0036E0 24 FB            [12] 4511 	add	a,#0xfb
      0036E2 F5 81            [12] 4512 	mov	sp,a
                                   4513 ;	src/main.c:571: printf("\r\n----------");
      0036E4 74 64            [12] 4514 	mov	a,#___str_22
      0036E6 C0 E0            [24] 4515 	push	acc
      0036E8 74 52            [12] 4516 	mov	a,#(___str_22 >> 8)
      0036EA C0 E0            [24] 4517 	push	acc
      0036EC 74 80            [12] 4518 	mov	a,#0x80
      0036EE C0 E0            [24] 4519 	push	acc
      0036F0 12 44 D6         [24] 4520 	lcall	_printf
      0036F3 15 81            [12] 4521 	dec	sp
      0036F5 15 81            [12] 4522 	dec	sp
      0036F7 15 81            [12] 4523 	dec	sp
      0036F9 D0 03            [24] 4524 	pop	ar3
      0036FB D0 06            [24] 4525 	pop	ar6
      0036FD D0 07            [24] 4526 	pop	ar7
                                   4527 ;	src/main.c:572: for(char *address = buffer->buffer; address < (buffer->buffer + buffer->size); address++)
      0036FF 8E 82            [24] 4528 	mov	dpl,r6
      003701 8B 83            [24] 4529 	mov	dph,r3
      003703 8F F0            [24] 4530 	mov	b,r7
      003705 12 4F 02         [24] 4531 	lcall	__gptrget
      003708 FC               [12] 4532 	mov	r4,a
      003709 A3               [24] 4533 	inc	dptr
      00370A 12 4F 02         [24] 4534 	lcall	__gptrget
      00370D FA               [12] 4535 	mov	r2,a
      00370E 7D 00            [12] 4536 	mov	r5,#0x00
      003710 74 04            [12] 4537 	mov	a,#0x04
      003712 2E               [12] 4538 	add	a,r6
      003713 F5 57            [12] 4539 	mov	_ampersand_command_handler_sloc0_1_0,a
      003715 E4               [12] 4540 	clr	a
      003716 3B               [12] 4541 	addc	a,r3
      003717 F5 58            [12] 4542 	mov	(_ampersand_command_handler_sloc0_1_0 + 1),a
      003719 8F 59            [24] 4543 	mov	(_ampersand_command_handler_sloc0_1_0 + 2),r7
      00371B                       4544 00110$:
      00371B 8E 82            [24] 4545 	mov	dpl,r6
      00371D 8B 83            [24] 4546 	mov	dph,r3
      00371F 8F F0            [24] 4547 	mov	b,r7
      003721 12 4F 02         [24] 4548 	lcall	__gptrget
      003724 F8               [12] 4549 	mov	r0,a
      003725 A3               [24] 4550 	inc	dptr
      003726 12 4F 02         [24] 4551 	lcall	__gptrget
      003729 F9               [12] 4552 	mov	r1,a
      00372A C0 06            [24] 4553 	push	ar6
      00372C C0 03            [24] 4554 	push	ar3
      00372E C0 07            [24] 4555 	push	ar7
      003730 85 57 82         [24] 4556 	mov	dpl,_ampersand_command_handler_sloc0_1_0
      003733 85 58 83         [24] 4557 	mov	dph,(_ampersand_command_handler_sloc0_1_0 + 1)
      003736 85 59 F0         [24] 4558 	mov	b,(_ampersand_command_handler_sloc0_1_0 + 2)
      003739 12 4F 02         [24] 4559 	lcall	__gptrget
      00373C FE               [12] 4560 	mov	r6,a
      00373D A3               [24] 4561 	inc	dptr
      00373E 12 4F 02         [24] 4562 	lcall	__gptrget
      003741 FF               [12] 4563 	mov	r7,a
      003742 EE               [12] 4564 	mov	a,r6
      003743 28               [12] 4565 	add	a,r0
      003744 F5 5A            [12] 4566 	mov	_ampersand_command_handler_sloc1_1_0,a
      003746 EF               [12] 4567 	mov	a,r7
      003747 39               [12] 4568 	addc	a,r1
      003748 F5 5B            [12] 4569 	mov	(_ampersand_command_handler_sloc1_1_0 + 1),a
      00374A 8C 5C            [24] 4570 	mov	_ampersand_command_handler_sloc2_1_0,r4
      00374C 8A 5D            [24] 4571 	mov	(_ampersand_command_handler_sloc2_1_0 + 1),r2
      00374E 8D 5E            [24] 4572 	mov	(_ampersand_command_handler_sloc2_1_0 + 2),r5
      003750 AB 5A            [24] 4573 	mov	r3,_ampersand_command_handler_sloc1_1_0
      003752 AE 5B            [24] 4574 	mov	r6,(_ampersand_command_handler_sloc1_1_0 + 1)
      003754 7F 00            [12] 4575 	mov	r7,#0x00
      003756 C0 03            [24] 4576 	push	ar3
      003758 C0 06            [24] 4577 	push	ar6
      00375A C0 07            [24] 4578 	push	ar7
      00375C 85 5C 82         [24] 4579 	mov	dpl,_ampersand_command_handler_sloc2_1_0
      00375F 85 5D 83         [24] 4580 	mov	dph,(_ampersand_command_handler_sloc2_1_0 + 1)
      003762 85 5E F0         [24] 4581 	mov	b,(_ampersand_command_handler_sloc2_1_0 + 2)
      003765 12 20 06         [24] 4582 	lcall	___gptr_cmp
      003768 15 81            [12] 4583 	dec	sp
      00376A 15 81            [12] 4584 	dec	sp
      00376C 15 81            [12] 4585 	dec	sp
      00376E D0 07            [24] 4586 	pop	ar7
      003770 D0 03            [24] 4587 	pop	ar3
      003772 D0 06            [24] 4588 	pop	ar6
      003774 40 03            [24] 4589 	jc	00138$
      003776 02 38 0E         [24] 4590 	ljmp	00108$
      003779                       4591 00138$:
                                   4592 ;	src/main.c:574: if (MODULE_32(address-buffer->buffer) == 0)
      003779 EC               [12] 4593 	mov	a,r4
      00377A C3               [12] 4594 	clr	c
      00377B 98               [12] 4595 	subb	a,r0
      00377C F8               [12] 4596 	mov	r0,a
      00377D EA               [12] 4597 	mov	a,r2
      00377E 99               [12] 4598 	subb	a,r1
      00377F E8               [12] 4599 	mov	a,r0
      003780 54 1F            [12] 4600 	anl	a,#0x1f
      003782 70 43            [24] 4601 	jnz	00107$
                                   4602 ;	src/main.c:576: printf("\r\n%04X:", (unsigned int) address);
      003784 C0 06            [24] 4603 	push	ar6
      003786 C0 03            [24] 4604 	push	ar3
      003788 C0 07            [24] 4605 	push	ar7
      00378A 8C 00            [24] 4606 	mov	ar0,r4
      00378C 8A 01            [24] 4607 	mov	ar1,r2
      00378E 8D 07            [24] 4608 	mov	ar7,r5
      003790 C0 07            [24] 4609 	push	ar7
      003792 C0 06            [24] 4610 	push	ar6
      003794 C0 05            [24] 4611 	push	ar5
      003796 C0 04            [24] 4612 	push	ar4
      003798 C0 03            [24] 4613 	push	ar3
      00379A C0 02            [24] 4614 	push	ar2
      00379C C0 00            [24] 4615 	push	ar0
      00379E C0 01            [24] 4616 	push	ar1
      0037A0 74 71            [12] 4617 	mov	a,#___str_23
      0037A2 C0 E0            [24] 4618 	push	acc
      0037A4 74 52            [12] 4619 	mov	a,#(___str_23 >> 8)
      0037A6 C0 E0            [24] 4620 	push	acc
      0037A8 74 80            [12] 4621 	mov	a,#0x80
      0037AA C0 E0            [24] 4622 	push	acc
      0037AC 12 44 D6         [24] 4623 	lcall	_printf
      0037AF E5 81            [12] 4624 	mov	a,sp
      0037B1 24 FB            [12] 4625 	add	a,#0xfb
      0037B3 F5 81            [12] 4626 	mov	sp,a
      0037B5 D0 02            [24] 4627 	pop	ar2
      0037B7 D0 03            [24] 4628 	pop	ar3
      0037B9 D0 04            [24] 4629 	pop	ar4
      0037BB D0 05            [24] 4630 	pop	ar5
      0037BD D0 06            [24] 4631 	pop	ar6
      0037BF D0 07            [24] 4632 	pop	ar7
                                   4633 ;	src/main.c:581: printf("\r\n");
      0037C1 D0 07            [24] 4634 	pop	ar7
      0037C3 D0 03            [24] 4635 	pop	ar3
      0037C5 D0 06            [24] 4636 	pop	ar6
                                   4637 ;	src/main.c:576: printf("\r\n%04X:", (unsigned int) address);
      0037C7                       4638 00107$:
                                   4639 ;	src/main.c:578: printf(" %02hhX", (unsigned char) *address);
      0037C7 8C 82            [24] 4640 	mov	dpl,r4
      0037C9 8A 83            [24] 4641 	mov	dph,r2
      0037CB 8D F0            [24] 4642 	mov	b,r5
      0037CD 12 4F 02         [24] 4643 	lcall	__gptrget
      0037D0 F9               [12] 4644 	mov	r1,a
      0037D1 A3               [24] 4645 	inc	dptr
      0037D2 AC 82            [24] 4646 	mov	r4,dpl
      0037D4 AA 83            [24] 4647 	mov	r2,dph
      0037D6 89 00            [24] 4648 	mov	ar0,r1
      0037D8 79 00            [12] 4649 	mov	r1,#0x00
      0037DA C0 07            [24] 4650 	push	ar7
      0037DC C0 06            [24] 4651 	push	ar6
      0037DE C0 05            [24] 4652 	push	ar5
      0037E0 C0 04            [24] 4653 	push	ar4
      0037E2 C0 03            [24] 4654 	push	ar3
      0037E4 C0 02            [24] 4655 	push	ar2
      0037E6 C0 00            [24] 4656 	push	ar0
      0037E8 C0 01            [24] 4657 	push	ar1
      0037EA 74 79            [12] 4658 	mov	a,#___str_24
      0037EC C0 E0            [24] 4659 	push	acc
      0037EE 74 52            [12] 4660 	mov	a,#(___str_24 >> 8)
      0037F0 C0 E0            [24] 4661 	push	acc
      0037F2 74 80            [12] 4662 	mov	a,#0x80
      0037F4 C0 E0            [24] 4663 	push	acc
      0037F6 12 44 D6         [24] 4664 	lcall	_printf
      0037F9 E5 81            [12] 4665 	mov	a,sp
      0037FB 24 FB            [12] 4666 	add	a,#0xfb
      0037FD F5 81            [12] 4667 	mov	sp,a
      0037FF D0 02            [24] 4668 	pop	ar2
      003801 D0 03            [24] 4669 	pop	ar3
      003803 D0 04            [24] 4670 	pop	ar4
      003805 D0 05            [24] 4671 	pop	ar5
      003807 D0 06            [24] 4672 	pop	ar6
      003809 D0 07            [24] 4673 	pop	ar7
                                   4674 ;	src/main.c:572: for(char *address = buffer->buffer; address < (buffer->buffer + buffer->size); address++)
      00380B 02 37 1B         [24] 4675 	ljmp	00110$
      00380E                       4676 00108$:
                                   4677 ;	src/main.c:581: printf("\r\n");
      00380E 74 27            [12] 4678 	mov	a,#___str_12
      003810 C0 E0            [24] 4679 	push	acc
      003812 74 51            [12] 4680 	mov	a,#(___str_12 >> 8)
      003814 C0 E0            [24] 4681 	push	acc
      003816 74 80            [12] 4682 	mov	a,#0x80
      003818 C0 E0            [24] 4683 	push	acc
      00381A 12 44 D6         [24] 4684 	lcall	_printf
      00381D 15 81            [12] 4685 	dec	sp
      00381F 15 81            [12] 4686 	dec	sp
      003821 15 81            [12] 4687 	dec	sp
                                   4688 ;	src/main.c:584: }
      003823 22               [24] 4689 	ret
                                   4690 ;------------------------------------------------------------
                                   4691 ;Allocation info for local variables in function 'main'
                                   4692 ;------------------------------------------------------------
                                   4693 ;c                         Allocated with name '_main_c_65537_200'
                                   4694 ;received_char             Allocated with name '_main_received_char_196610_203'
                                   4695 ;------------------------------------------------------------
                                   4696 ;	src/main.c:588: void main()
                                   4697 ;	-----------------------------------------
                                   4698 ;	 function main
                                   4699 ;	-----------------------------------------
      003824                       4700 _main:
                                   4701 ;	src/main.c:590: initialize_buffers();
      003824 12 22 29         [24] 4702 	lcall	_initialize_buffers
                                   4703 ;	src/main.c:591: unsigned char c = 0;
      003827                       4704 00118$:
                                   4705 ;	src/main.c:596: printf("\r\nEnter a char: ");
      003827 74 69            [12] 4706 	mov	a,#___str_47
      003829 C0 E0            [24] 4707 	push	acc
      00382B 74 55            [12] 4708 	mov	a,#(___str_47 >> 8)
      00382D C0 E0            [24] 4709 	push	acc
      00382F 74 80            [12] 4710 	mov	a,#0x80
      003831 C0 E0            [24] 4711 	push	acc
      003833 12 44 D6         [24] 4712 	lcall	_printf
      003836 15 81            [12] 4713 	dec	sp
      003838 15 81            [12] 4714 	dec	sp
      00383A 15 81            [12] 4715 	dec	sp
                                   4716 ;	src/main.c:597: char received_char = get_next_input_char();
      00383C 12 3A 5D         [24] 4717 	lcall	_get_next_input_char
                                   4718 ;	src/main.c:598: if (is_alphabet_char(received_char))
      00383F AF 82            [24] 4719 	mov  r7,dpl
      003841 C0 07            [24] 4720 	push	ar7
      003843 12 20 94         [24] 4721 	lcall	_is_alphabet_char
      003846 E5 82            [12] 4722 	mov	a,dpl
      003848 D0 07            [24] 4723 	pop	ar7
      00384A 60 14            [24] 4724 	jz	00102$
                                   4725 ;	src/main.c:600: store_in_buffer(&static_buffers[0], received_char);
      00384C 90 00 25         [24] 4726 	mov	dptr,#_store_in_buffer_PARM_2
      00384F EF               [12] 4727 	mov	a,r7
      003850 F0               [24] 4728 	movx	@dptr,a
      003851 90 00 01         [24] 4729 	mov	dptr,#_static_buffers
      003854 75 F0 00         [24] 4730 	mov	b,#0x00
      003857 C0 07            [24] 4731 	push	ar7
      003859 12 28 55         [24] 4732 	lcall	_store_in_buffer
      00385C D0 07            [24] 4733 	pop	ar7
      00385E 80 12            [24] 4734 	sjmp	00103$
      003860                       4735 00102$:
                                   4736 ;	src/main.c:604: store_in_buffer(&static_buffers[1], received_char);
      003860 90 00 25         [24] 4737 	mov	dptr,#_store_in_buffer_PARM_2
      003863 EF               [12] 4738 	mov	a,r7
      003864 F0               [24] 4739 	movx	@dptr,a
      003865 90 00 0C         [24] 4740 	mov	dptr,#(_static_buffers + 0x000b)
      003868 75 F0 00         [24] 4741 	mov	b,#0x00
      00386B C0 07            [24] 4742 	push	ar7
      00386D 12 28 55         [24] 4743 	lcall	_store_in_buffer
      003870 D0 07            [24] 4744 	pop	ar7
      003872                       4745 00103$:
                                   4746 ;	src/main.c:607: switch(received_char)
      003872 BF 23 02         [24] 4747 	cjne	r7,#0x23,00170$
      003875 80 4C            [24] 4748 	sjmp	00109$
      003877                       4749 00170$:
      003877 BF 24 02         [24] 4750 	cjne	r7,#0x24,00171$
      00387A 80 42            [24] 4751 	sjmp	00108$
      00387C                       4752 00171$:
      00387C BF 25 02         [24] 4753 	cjne	r7,#0x25,00172$
      00387F 80 30            [24] 4754 	sjmp	00106$
      003881                       4755 00172$:
      003881 BF 26 02         [24] 4756 	cjne	r7,#0x26,00173$
      003884 80 51            [24] 4757 	sjmp	00113$
      003886                       4758 00173$:
      003886 BF 2A 02         [24] 4759 	cjne	r7,#0x2a,00174$
      003889 80 47            [24] 4760 	sjmp	00112$
      00388B                       4761 00174$:
      00388B BF 2B 02         [24] 4762 	cjne	r7,#0x2b,00175$
      00388E 80 38            [24] 4763 	sjmp	00110$
      003890                       4764 00175$:
      003890 BF 2D 02         [24] 4765 	cjne	r7,#0x2d,00176$
      003893 80 38            [24] 4766 	sjmp	00111$
      003895                       4767 00176$:
      003895 BF 3D 02         [24] 4768 	cjne	r7,#0x3d,00177$
      003898 80 12            [24] 4769 	sjmp	00105$
      00389A                       4770 00177$:
      00389A BF 3F 02         [24] 4771 	cjne	r7,#0x3f,00178$
      00389D 80 08            [24] 4772 	sjmp	00104$
      00389F                       4773 00178$:
      00389F BF 40 02         [24] 4774 	cjne	r7,#0x40,00179$
      0038A2 80 12            [24] 4775 	sjmp	00107$
      0038A4                       4776 00179$:
      0038A4 02 38 27         [24] 4777 	ljmp	00118$
                                   4778 ;	src/main.c:609: case '?':
      0038A7                       4779 00104$:
                                   4780 ;	src/main.c:610: qmark_command_handler();
      0038A7 12 2D 6A         [24] 4781 	lcall	_qmark_command_handler
                                   4782 ;	src/main.c:611: break;
                                   4783 ;	src/main.c:612: case '=':
      0038AA 80 2E            [24] 4784 	sjmp	00115$
      0038AC                       4785 00105$:
                                   4786 ;	src/main.c:613: enter_command_handler();
      0038AC 12 2F 8F         [24] 4787 	lcall	_enter_command_handler
                                   4788 ;	src/main.c:614: break;
                                   4789 ;	src/main.c:615: case '%':
      0038AF 80 29            [24] 4790 	sjmp	00115$
      0038B1                       4791 00106$:
                                   4792 ;	src/main.c:616: percent_command_handler();
      0038B1 12 31 3C         [24] 4793 	lcall	_percent_command_handler
                                   4794 ;	src/main.c:617: break;
                                   4795 ;	src/main.c:618: case '@':
      0038B4 80 24            [24] 4796 	sjmp	00115$
      0038B6                       4797 00107$:
                                   4798 ;	src/main.c:619: free_all_buffers();
      0038B6 12 2C B7         [24] 4799 	lcall	_free_all_buffers
                                   4800 ;	src/main.c:620: initialize_buffers();
      0038B9 12 22 29         [24] 4801 	lcall	_initialize_buffers
                                   4802 ;	src/main.c:621: break;
                                   4803 ;	src/main.c:622: case '$':
      0038BC 80 1C            [24] 4804 	sjmp	00115$
      0038BE                       4805 00108$:
                                   4806 ;	src/main.c:623: dollar_sign_command_handler();
      0038BE 12 32 77         [24] 4807 	lcall	_dollar_sign_command_handler
                                   4808 ;	src/main.c:624: break;
                                   4809 ;	src/main.c:625: case '#':
      0038C1 80 17            [24] 4810 	sjmp	00115$
      0038C3                       4811 00109$:
                                   4812 ;	src/main.c:626: hashtag_command_handler();
      0038C3 12 33 96         [24] 4813 	lcall	_hashtag_command_handler
                                   4814 ;	src/main.c:627: break;
                                   4815 ;	src/main.c:628: case '+':
      0038C6 80 12            [24] 4816 	sjmp	00115$
      0038C8                       4817 00110$:
                                   4818 ;	src/main.c:629: plus_command_handler();
      0038C8 12 34 88         [24] 4819 	lcall	_plus_command_handler
                                   4820 ;	src/main.c:630: break;
                                   4821 ;	src/main.c:631: case '-':
      0038CB 80 0D            [24] 4822 	sjmp	00115$
      0038CD                       4823 00111$:
                                   4824 ;	src/main.c:632: minus_command_handler();
      0038CD 12 35 34         [24] 4825 	lcall	_minus_command_handler
                                   4826 ;	src/main.c:633: break;
                                   4827 ;	src/main.c:634: case '*':
      0038D0 80 08            [24] 4828 	sjmp	00115$
      0038D2                       4829 00112$:
                                   4830 ;	src/main.c:635: star_command_handler();
      0038D2 12 35 E7         [24] 4831 	lcall	_star_command_handler
                                   4832 ;	src/main.c:636: break;
                                   4833 ;	src/main.c:637: case '&':
      0038D5 80 03            [24] 4834 	sjmp	00115$
      0038D7                       4835 00113$:
                                   4836 ;	src/main.c:638: ampersand_command_handler();
      0038D7 12 36 04         [24] 4837 	lcall	_ampersand_command_handler
                                   4838 ;	src/main.c:642: }
      0038DA                       4839 00115$:
                                   4840 ;	src/main.c:643: printf("\r\nEND COMMAND");
      0038DA 74 7A            [12] 4841 	mov	a,#___str_48
      0038DC C0 E0            [24] 4842 	push	acc
      0038DE 74 55            [12] 4843 	mov	a,#(___str_48 >> 8)
      0038E0 C0 E0            [24] 4844 	push	acc
      0038E2 74 80            [12] 4845 	mov	a,#0x80
      0038E4 C0 E0            [24] 4846 	push	acc
      0038E6 12 44 D6         [24] 4847 	lcall	_printf
      0038E9 15 81            [12] 4848 	dec	sp
      0038EB 15 81            [12] 4849 	dec	sp
      0038ED 15 81            [12] 4850 	dec	sp
                                   4851 ;	src/main.c:644: print_dashed_line();
      0038EF 12 29 3B         [24] 4852 	lcall	_print_dashed_line
                                   4853 ;	src/main.c:646: }
      0038F2 02 38 27         [24] 4854 	ljmp	00118$
                                   4855 	.area CSEG    (CODE)
                                   4856 	.area CONST   (CODE)
                                   4857 	.area CONST   (CODE)
      004F1E                       4858 ___str_0:
      004F1E 0D                    4859 	.db 0x0d
      004F1F 0A                    4860 	.db 0x0a
      004F20 50 6C 65 61 73 65 20  4861 	.ascii "Please enter the last two digits of your ID:"
             65 6E 74 65 72 20 74
             68 65 20 6C 61 73 74
             20 74 77 6F 20 64 69
             67 69 74 73 20 6F 66
             20 79 6F 75 72 20 49
             44 3A
      004F4C 00                    4862 	.db 0x00
                                   4863 	.area CSEG    (CODE)
                                   4864 	.area CONST   (CODE)
      004F4D                       4865 ___str_1:
      004F4D 0D                    4866 	.db 0x0d
      004F4E 0A                    4867 	.db 0x0a
      004F4F 20 44 69 64 20 6E 6F  4868 	.ascii " Did not enter valid two digit number, please try again"
             74 20 65 6E 74 65 72
             20 76 61 6C 69 64 20
             74 77 6F 20 64 69 67
             69 74 20 6E 75 6D 62
             65 72 2C 20 70 6C 65
             61 73 65 20 74 72 79
             20 61 67 61 69 6E
      004F86 00                    4869 	.db 0x00
                                   4870 	.area CSEG    (CODE)
                                   4871 	.area CONST   (CODE)
      004F87                       4872 ___str_2:
      004F87 0D                    4873 	.db 0x0d
      004F88 0A                    4874 	.db 0x0a
      004F89 41 74 6F 69 20 65 72  4875 	.ascii "Atoi error: number invalid or out of range, please try again"
             72 6F 72 3A 20 6E 75
             6D 62 65 72 20 69 6E
             76 61 6C 69 64 20 6F
             72 20 6F 75 74 20 6F
             66 20 72 61 6E 67 65
             2C 20 70 6C 65 61 73
             65 20 74 72 79 20 61
             67 61 69 6E
      004FC5 00                    4876 	.db 0x00
                                   4877 	.area CSEG    (CODE)
                                   4878 	.area CONST   (CODE)
      004FC6                       4879 ___str_3:
      004FC6 0D                    4880 	.db 0x0d
      004FC7 0A                    4881 	.db 0x0a
      004FC8 42 75 66 66 65 72 20  4882 	.ascii "Buffer Size too big, please pick a smaller buffer size"
             53 69 7A 65 20 74 6F
             6F 20 62 69 67 2C 20
             70 6C 65 61 73 65 20
             70 69 63 6B 20 61 20
             73 6D 61 6C 6C 65 72
             20 62 75 66 66 65 72
             20 73 69 7A 65
      004FFE 00                    4883 	.db 0x00
                                   4884 	.area CSEG    (CODE)
                                   4885 	.area CONST   (CODE)
      004FFF                       4886 ___str_4:
      004FFF 0D                    4887 	.db 0x0d
      005000 0A                    4888 	.db 0x0a
      005001 73 74 75 64 65 6E 74  4889 	.ascii "student_number: %d"
             5F 6E 75 6D 62 65 72
             3A 20 25 64
      005013 00                    4890 	.db 0x00
                                   4891 	.area CSEG    (CODE)
                                   4892 	.area CONST   (CODE)
      005014                       4893 ___str_5:
      005014 0D                    4894 	.db 0x0d
      005015 0A                    4895 	.db 0x0a
      005016 75 73 65 72 5F 62 75  4896 	.ascii "user_buffer_size: %zu"
             66 66 65 72 5F 73 69
             7A 65 3A 20 25 7A 75
      00502B 00                    4897 	.db 0x00
                                   4898 	.area CSEG    (CODE)
                                   4899 	.area CONST   (CODE)
      00502C                       4900 ___str_6:
      00502C 0D                    4901 	.db 0x0d
      00502D 0A                    4902 	.db 0x0a
      00502E 62 75 66 66 65 72 5F  4903 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75
      005057 00                    4904 	.db 0x00
                                   4905 	.area CSEG    (CODE)
                                   4906 	.area CONST   (CODE)
      005058                       4907 ___str_7:
      005058 0D                    4908 	.db 0x0d
      005059 0A                    4909 	.db 0x0a
      00505A 48 65 61 70 20 73 74  4910 	.ascii "Heap starts @ %p, ends @ %p, size: %zu"
             61 72 74 73 20 40 20
             25 70 2C 20 65 6E 64
             73 20 40 20 25 70 2C
             20 73 69 7A 65 3A 20
             25 7A 75
      005080 00                    4911 	.db 0x00
                                   4912 	.area CSEG    (CODE)
                                   4913 	.area CONST   (CODE)
      005081                       4914 ___str_8:
      005081 0D                    4915 	.db 0x0d
      005082 0A                    4916 	.db 0x0a
      005083 2D 2D 2D 2D 2D 2D 2D  4917 	.ascii "------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D
      0050B3 00                    4918 	.db 0x00
                                   4919 	.area CSEG    (CODE)
                                   4920 	.area CONST   (CODE)
      0050B4                       4921 ___str_9:
      0050B4 0D                    4922 	.db 0x0d
      0050B5 0A                    4923 	.db 0x0a
      0050B6 25 73                 4924 	.ascii "%s"
      0050B8 00                    4925 	.db 0x00
                                   4926 	.area CSEG    (CODE)
                                   4927 	.area CONST   (CODE)
      0050B9                       4928 ___str_10:
      0050B9 48 65 61 70 20 52 65  4929 	.ascii "Heap Report"
             70 6F 72 74
      0050C4 00                    4930 	.db 0x00
                                   4931 	.area CSEG    (CODE)
                                   4932 	.area CONST   (CODE)
      0050C5                       4933 ___str_11:
      0050C5 0D                    4934 	.db 0x0d
      0050C6 0A                    4935 	.db 0x0a
      0050C7 62 75 66 66 65 72 5F  4936 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu, contains %zu alph"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75 2C
             20 63 6F 6E 74 61 69
             6E 73 20 25 7A 75 20
             61 6C 70 68
      005103 61 62 65 74 20 63 68  4937 	.ascii "abet chars, has %zu chars remaining"
             61 72 73 2C 20 68 61
             73 20 25 7A 75 20 63
             68 61 72 73 20 72 65
             6D 61 69 6E 69 6E 67
      005126 00                    4938 	.db 0x00
                                   4939 	.area CSEG    (CODE)
                                   4940 	.area CONST   (CODE)
      005127                       4941 ___str_12:
      005127 0D                    4942 	.db 0x0d
      005128 0A                    4943 	.db 0x0a
      005129 00                    4944 	.db 0x00
                                   4945 	.area CSEG    (CODE)
                                   4946 	.area CONST   (CODE)
      00512A                       4947 ___str_13:
      00512A 0D                    4948 	.db 0x0d
      00512B 0A                    4949 	.db 0x0a
      00512C 50 6C 65 61 73 65 20  4950 	.ascii "Please enter a valid buffer size that is divisible by 32 [64"
             65 6E 74 65 72 20 61
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             73 69 7A 65 20 74 68
             61 74 20 69 73 20 64
             69 76 69 73 69 62 6C
             65 20 62 79 20 33 32
             20 5B 36 34
      005168 2C 25 7A 75 5D 3A 20  4951 	.ascii ",%zu]: "
      00516F 00                    4952 	.db 0x00
                                   4953 	.area CSEG    (CODE)
                                   4954 	.area CONST   (CODE)
      005170                       4955 ___str_14:
      005170 0D                    4956 	.db 0x0d
      005171 0A                    4957 	.db 0x0a
      005172 20 55 73 65 72 20 62  4958 	.ascii " User buffer size larger than maximum"
             75 66 66 65 72 20 73
             69 7A 65 20 6C 61 72
             67 65 72 20 74 68 61
             6E 20 6D 61 78 69 6D
             75 6D
      005197 00                    4959 	.db 0x00
                                   4960 	.area CSEG    (CODE)
                                   4961 	.area CONST   (CODE)
      005198                       4962 ___str_15:
      005198 0D                    4963 	.db 0x0d
      005199 0A                    4964 	.db 0x0a
      00519A 20 55 73 65 72 20 62  4965 	.ascii " User buffer size too small or error in conversion"
             75 66 66 65 72 20 73
             69 7A 65 20 74 6F 6F
             20 73 6D 61 6C 6C 20
             6F 72 20 65 72 72 6F
             72 20 69 6E 20 63 6F
             6E 76 65 72 73 69 6F
             6E
      0051CC 00                    4966 	.db 0x00
                                   4967 	.area CSEG    (CODE)
                                   4968 	.area CONST   (CODE)
      0051CD                       4969 ___str_16:
      0051CD 0D                    4970 	.db 0x0d
      0051CE 0A                    4971 	.db 0x0a
      0051CF 20 55 73 65 72 20 62  4972 	.ascii " User buffer size is not divisible by 32"
             75 66 66 65 72 20 73
             69 7A 65 20 69 73 20
             6E 6F 74 20 64 69 76
             69 73 69 62 6C 65 20
             62 79 20 33 32
      0051F7 00                    4973 	.db 0x00
                                   4974 	.area CSEG    (CODE)
                                   4975 	.area CONST   (CODE)
      0051F8                       4976 ___str_17:
      0051F8 0D                    4977 	.db 0x0d
      0051F9 0A                    4978 	.db 0x0a
      0051FA 20 46 72 65 65 69 6E  4979 	.ascii " Freeing ALL BUFFERS"
             67 20 41 4C 4C 20 42
             55 46 46 45 52 53
      00520E 00                    4980 	.db 0x00
                                   4981 	.area CSEG    (CODE)
                                   4982 	.area CONST   (CODE)
      00520F                       4983 ___str_18:
      00520F 0D                    4984 	.db 0x0d
      005210 0A                    4985 	.db 0x0a
      005211 20 52 65 63 65 69 76  4986 	.ascii " Received %zu chars since last invocation of ?"
             65 64 20 25 7A 75 20
             63 68 61 72 73 20 73
             69 6E 63 65 20 6C 61
             73 74 20 69 6E 76 6F
             63 61 74 69 6F 6E 20
             6F 66 20 3F
      00523F 00                    4987 	.db 0x00
                                   4988 	.area CSEG    (CODE)
                                   4989 	.area CONST   (CODE)
      005240                       4990 ___str_19:
      005240 25 63                 4991 	.ascii "%c"
      005242 00                    4992 	.db 0x00
                                   4993 	.area CSEG    (CODE)
                                   4994 	.area CONST   (CODE)
      005243                       4995 ___str_20:
      005243 44 75 6D 70 20 41 64  4996 	.ascii "Dump Admin Buffers"
             6D 69 6E 20 42 75 66
             66 65 72 73
      005255 00                    4997 	.db 0x00
                                   4998 	.area CSEG    (CODE)
                                   4999 	.area CONST   (CODE)
      005256                       5000 ___str_21:
      005256 0D                    5001 	.db 0x0d
      005257 0A                    5002 	.db 0x0a
      005258 20 42 75 66 66 65 72  5003 	.ascii " Buffer %d "
             20 25 64 20
      005263 00                    5004 	.db 0x00
                                   5005 	.area CSEG    (CODE)
                                   5006 	.area CONST   (CODE)
      005264                       5007 ___str_22:
      005264 0D                    5008 	.db 0x0d
      005265 0A                    5009 	.db 0x0a
      005266 2D 2D 2D 2D 2D 2D 2D  5010 	.ascii "----------"
             2D 2D 2D
      005270 00                    5011 	.db 0x00
                                   5012 	.area CSEG    (CODE)
                                   5013 	.area CONST   (CODE)
      005271                       5014 ___str_23:
      005271 0D                    5015 	.db 0x0d
      005272 0A                    5016 	.db 0x0a
      005273 25 30 34 58 3A        5017 	.ascii "%04X:"
      005278 00                    5018 	.db 0x00
                                   5019 	.area CSEG    (CODE)
                                   5020 	.area CONST   (CODE)
      005279                       5021 ___str_24:
      005279 20 25 30 32 68 68 58  5022 	.ascii " %02hhX"
      005280 00                    5023 	.db 0x00
                                   5024 	.area CSEG    (CODE)
                                   5025 	.area CONST   (CODE)
      005281                       5026 ___str_25:
      005281 43 6C 65 61 72 20 42  5027 	.ascii "Clear Buffers"
             75 66 66 65 72 73
      00528E 00                    5028 	.db 0x00
                                   5029 	.area CSEG    (CODE)
                                   5030 	.area CONST   (CODE)
      00528F                       5031 ___str_26:
      00528F 43 6F 70 79 20 62 75  5032 	.ascii "Copy buffer_0 into buffer_3"
             66 66 65 72 5F 30 20
             69 6E 74 6F 20 62 75
             66 66 65 72 5F 33
      0052AA 00                    5033 	.db 0x00
                                   5034 	.area CSEG    (CODE)
                                   5035 	.area CONST   (CODE)
      0052AB                       5036 ___str_27:
      0052AB 0D                    5037 	.db 0x0d
      0052AC 0A                    5038 	.db 0x0a
      0052AD 20 62 75 66 66 65 72  5039 	.ascii " buffer_3 not allocated; exiting"
             5F 33 20 6E 6F 74 20
             61 6C 6C 6F 63 61 74
             65 64 3B 20 65 78 69
             74 69 6E 67
      0052CD 00                    5040 	.db 0x00
                                   5041 	.area CSEG    (CODE)
                                   5042 	.area CONST   (CODE)
      0052CE                       5043 ___str_28:
      0052CE 0D                    5044 	.db 0x0d
      0052CF 0A                    5045 	.db 0x0a
      0052D0 20 44 6F 6E 65        5046 	.ascii " Done"
      0052D5 00                    5047 	.db 0x00
                                   5048 	.area CSEG    (CODE)
                                   5049 	.area CONST   (CODE)
      0052D6                       5050 ___str_29:
      0052D6 43 6F 6E 76 65 72 74  5051 	.ascii "Convert buffer_3 chars to lowercase"
             20 62 75 66 66 65 72
             5F 33 20 63 68 61 72
             73 20 74 6F 20 6C 6F
             77 65 72 63 61 73 65
      0052F9 00                    5052 	.db 0x00
                                   5053 	.area CSEG    (CODE)
                                   5054 	.area CONST   (CODE)
      0052FA                       5055 ___str_30:
      0052FA 0D                    5056 	.db 0x0d
      0052FB 0A                    5057 	.db 0x0a
      0052FC 20 41 6C 6C 6F 63 20  5058 	.ascii " Alloc Buffer"
             42 75 66 66 65 72
      005309 00                    5059 	.db 0x00
                                   5060 	.area CSEG    (CODE)
                                   5061 	.area CONST   (CODE)
      00530A                       5062 ___str_31:
      00530A 0D                    5063 	.db 0x0d
      00530B 0A                    5064 	.db 0x0a
      00530C 50 6C 65 61 73 65 20  5065 	.ascii "Please enter a size for the new buffer, [200,600]: "
             65 6E 74 65 72 20 61
             20 73 69 7A 65 20 66
             6F 72 20 74 68 65 20
             6E 65 77 20 62 75 66
             66 65 72 2C 20 5B 32
             30 30 2C 36 30 30 5D
             3A 20
      00533F 00                    5066 	.db 0x00
                                   5067 	.area CSEG    (CODE)
                                   5068 	.area CONST   (CODE)
      005340                       5069 ___str_32:
      005340 0D                    5070 	.db 0x0d
      005341 0A                    5071 	.db 0x0a
      005342 42 75 66 66 65 72 20  5072 	.ascii "Buffer size invalid!! Please try again"
             73 69 7A 65 20 69 6E
             76 61 6C 69 64 21 21
             20 50 6C 65 61 73 65
             20 74 72 79 20 61 67
             61 69 6E
      005368 00                    5073 	.db 0x00
                                   5074 	.area CSEG    (CODE)
                                   5075 	.area CONST   (CODE)
      005369                       5076 ___str_33:
      005369 0D                    5077 	.db 0x0d
      00536A 0A                    5078 	.db 0x0a
      00536B 20 41 6C 6C 6F 63 61  5079 	.ascii " Allocation failed; able to allocate header but not buffer"
             74 69 6F 6E 20 66 61
             69 6C 65 64 3B 20 61
             62 6C 65 20 74 6F 20
             61 6C 6C 6F 63 61 74
             65 20 68 65 61 64 65
             72 20 62 75 74 20 6E
             6F 74 20 62 75 66 66
             65 72
      0053A5 00                    5080 	.db 0x00
                                   5081 	.area CSEG    (CODE)
                                   5082 	.area CONST   (CODE)
      0053A6                       5083 ___str_34:
      0053A6 0D                    5084 	.db 0x0d
      0053A7 0A                    5085 	.db 0x0a
      0053A8 20 41 6C 6C 6F 63 61  5086 	.ascii " Allocation successful!! New buffer added"
             74 69 6F 6E 20 73 75
             63 63 65 73 73 66 75
             6C 21 21 20 4E 65 77
             20 62 75 66 66 65 72
             20 61 64 64 65 64
      0053D1 00                    5087 	.db 0x00
                                   5088 	.area CSEG    (CODE)
                                   5089 	.area CONST   (CODE)
      0053D2                       5090 ___str_35:
      0053D2 46 72 65 65 20 42 75  5091 	.ascii "Free Buffer"
             66 66 65 72
      0053DD 00                    5092 	.db 0x00
                                   5093 	.area CSEG    (CODE)
                                   5094 	.area CONST   (CODE)
      0053DE                       5095 ___str_36:
      0053DE 0D                    5096 	.db 0x0d
      0053DF 0A                    5097 	.db 0x0a
      0053E0 50 6C 65 61 73 65 20  5098 	.ascii "Please enter the number of the buffer you would like to free"
             65 6E 74 65 72 20 74
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 74
             68 65 20 62 75 66 66
             65 72 20 79 6F 75 20
             77 6F 75 6C 64 20 6C
             69 6B 65 20 74 6F 20
             66 72 65 65
      00541C 3A 20                 5099 	.ascii ": "
      00541E 00                    5100 	.db 0x00
                                   5101 	.area CSEG    (CODE)
                                   5102 	.area CONST   (CODE)
      00541F                       5103 ___str_37:
      00541F 0D                    5104 	.db 0x0d
      005420 0A                    5105 	.db 0x0a
      005421 20 49 6E 76 61 6C 69  5106 	.ascii " Invalid buffer number, negatives not valid"
             64 20 62 75 66 66 65
             72 20 6E 75 6D 62 65
             72 2C 20 6E 65 67 61
             74 69 76 65 73 20 6E
             6F 74 20 76 61 6C 69
             64
      00544C 00                    5107 	.db 0x00
                                   5108 	.area CSEG    (CODE)
                                   5109 	.area CONST   (CODE)
      00544D                       5110 ___str_38:
      00544D 0D                    5111 	.db 0x0d
      00544E 0A                    5112 	.db 0x0a
      00544F 20 49 6E 76 61 6C 69  5113 	.ascii " Invalid buffer number, buffers 0 & 1 are protected"
             64 20 62 75 66 66 65
             72 20 6E 75 6D 62 65
             72 2C 20 62 75 66 66
             65 72 73 20 30 20 26
             20 31 20 61 72 65 20
             70 72 6F 74 65 63 74
             65 64
      005482 00                    5114 	.db 0x00
                                   5115 	.area CSEG    (CODE)
                                   5116 	.area CONST   (CODE)
      005483                       5117 ___str_39:
      005483 0D                    5118 	.db 0x0d
      005484 0A                    5119 	.db 0x0a
      005485 20 53 75 63 63 65 73  5120 	.ascii " Successfully removed buffer"
             73 66 75 6C 6C 79 20
             72 65 6D 6F 76 65 64
             20 62 75 66 66 65 72
      0054A1 00                    5121 	.db 0x00
                                   5122 	.area CSEG    (CODE)
                                   5123 	.area CONST   (CODE)
      0054A2                       5124 ___str_40:
      0054A2 0D                    5125 	.db 0x0d
      0054A3 0A                    5126 	.db 0x0a
      0054A4 20 46 61 69 6C 65 64  5127 	.ascii " Failed to remove buffer, idx too big"
             20 74 6F 20 72 65 6D
             6F 76 65 20 62 75 66
             66 65 72 2C 20 69 64
             78 20 74 6F 6F 20 62
             69 67
      0054C9 00                    5128 	.db 0x00
                                   5129 	.area CSEG    (CODE)
                                   5130 	.area CONST   (CODE)
      0054CA                       5131 ___str_41:
      0054CA 0D                    5132 	.db 0x0d
      0054CB 0A                    5133 	.db 0x0a
      0054CC 52 65 73 65 74 74 69  5134 	.ascii "Resetting device"
             6E 67 20 64 65 76 69
             63 65
      0054DC 00                    5135 	.db 0x00
                                   5136 	.area CSEG    (CODE)
                                   5137 	.area CONST   (CODE)
      0054DD                       5138 ___str_42:
      0054DD 0D                    5139 	.db 0x0d
      0054DE 0A                    5140 	.db 0x0a
      0054DF 20 44 75 6D 70 20 42  5141 	.ascii " Dump Buffer"
             75 66 66 65 72
      0054EB 00                    5142 	.db 0x00
                                   5143 	.area CSEG    (CODE)
                                   5144 	.area CONST   (CODE)
      0054EC                       5145 ___str_43:
      0054EC 0D                    5146 	.db 0x0d
      0054ED 0A                    5147 	.db 0x0a
      0054EE 45 6E 74 65 72 20 61  5148 	.ascii "Enter a valid buffer # [2-%zu]: "
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             23 20 5B 32 2D 25 7A
             75 5D 3A 20
      00550E 00                    5149 	.db 0x00
                                   5150 	.area CSEG    (CODE)
                                   5151 	.area CONST   (CODE)
      00550F                       5152 ___str_44:
      00550F 0D                    5153 	.db 0x0d
      005510 0A                    5154 	.db 0x0a
      005511 49 6E 76 61 6C 69 64  5155 	.ascii "Invalid buffer number; returning to prompt"
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             3B 20 72 65 74 75 72
             6E 69 6E 67 20 74 6F
             20 70 72 6F 6D 70 74
      00553B 00                    5156 	.db 0x00
                                   5157 	.area CSEG    (CODE)
                                   5158 	.area CONST   (CODE)
      00553C                       5159 ___str_45:
      00553C 0D                    5160 	.db 0x0d
      00553D 0A                    5161 	.db 0x0a
      00553E 4C 4C 20 65 72 72 6F  5162 	.ascii "LL error; returning to prompt"
             72 3B 20 72 65 74 75
             72 6E 69 6E 67 20 74
             6F 20 70 72 6F 6D 70
             74
      00555B 00                    5163 	.db 0x00
                                   5164 	.area CSEG    (CODE)
                                   5165 	.area CONST   (CODE)
      00555C                       5166 ___str_46:
      00555C 0D                    5167 	.db 0x0d
      00555D 0A                    5168 	.db 0x0a
      00555E 20 42 75 66 66 65 72  5169 	.ascii " Buffer %d"
             20 25 64
      005568 00                    5170 	.db 0x00
                                   5171 	.area CSEG    (CODE)
                                   5172 	.area CONST   (CODE)
      005569                       5173 ___str_47:
      005569 0D                    5174 	.db 0x0d
      00556A 0A                    5175 	.db 0x0a
      00556B 45 6E 74 65 72 20 61  5176 	.ascii "Enter a char: "
             20 63 68 61 72 3A 20
      005579 00                    5177 	.db 0x00
                                   5178 	.area CSEG    (CODE)
                                   5179 	.area CONST   (CODE)
      00557A                       5180 ___str_48:
      00557A 0D                    5181 	.db 0x0d
      00557B 0A                    5182 	.db 0x0a
      00557C 45 4E 44 20 43 4F 4D  5183 	.ascii "END COMMAND"
             4D 41 4E 44
      005587 00                    5184 	.db 0x00
                                   5185 	.area CSEG    (CODE)
                                   5186 	.area XINIT   (CODE)
      005595                       5187 __xinit__dynamic_buffers_list:
                                   5188 ; generic printIvalPtr
      005595 00 00 00              5189 	.byte #0x00,#0x00,#0x00
                                   5190 	.area CABS    (ABS,CODE)
