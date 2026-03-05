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
                                     12 	.globl _hashtag_command_handler
                                     13 	.globl _dollar_sign_command_handler
                                     14 	.globl _percent_command_handler
                                     15 	.globl _enter_command_handler
                                     16 	.globl _qmark_command_handler
                                     17 	.globl _heap_report
                                     18 	.globl _command_header
                                     19 	.globl _store_in_buffer
                                     20 	.globl _initialize_buffers
                                     21 	.globl _is_alphabet_char
                                     22 	.globl __sdcc_external_startup
                                     23 	.globl ___memcpy
                                     24 	.globl _memset
                                     25 	.globl _reset_char_count
                                     26 	.globl _get_char_count
                                     27 	.globl _get_next_input_char
                                     28 	.globl _get_input_buffer
                                     29 	.globl _get_string
                                     30 	.globl _free
                                     31 	.globl _malloc
                                     32 	.globl _atoi
                                     33 	.globl _printf
                                     34 	.globl _CY
                                     35 	.globl _AC
                                     36 	.globl _F0
                                     37 	.globl _RS1
                                     38 	.globl _RS0
                                     39 	.globl _OV
                                     40 	.globl _F1
                                     41 	.globl _P
                                     42 	.globl _PS
                                     43 	.globl _PT1
                                     44 	.globl _PX1
                                     45 	.globl _PT0
                                     46 	.globl _PX0
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD
                                     54 	.globl _RXD
                                     55 	.globl _P3_7
                                     56 	.globl _P3_6
                                     57 	.globl _P3_5
                                     58 	.globl _P3_4
                                     59 	.globl _P3_3
                                     60 	.globl _P3_2
                                     61 	.globl _P3_1
                                     62 	.globl _P3_0
                                     63 	.globl _EA
                                     64 	.globl _ES
                                     65 	.globl _ET1
                                     66 	.globl _EX1
                                     67 	.globl _ET0
                                     68 	.globl _EX0
                                     69 	.globl _P2_7
                                     70 	.globl _P2_6
                                     71 	.globl _P2_5
                                     72 	.globl _P2_4
                                     73 	.globl _P2_3
                                     74 	.globl _P2_2
                                     75 	.globl _P2_1
                                     76 	.globl _P2_0
                                     77 	.globl _SM0
                                     78 	.globl _SM1
                                     79 	.globl _SM2
                                     80 	.globl _REN
                                     81 	.globl _TB8
                                     82 	.globl _RB8
                                     83 	.globl _TI
                                     84 	.globl _RI
                                     85 	.globl _P1_7
                                     86 	.globl _P1_6
                                     87 	.globl _P1_5
                                     88 	.globl _P1_4
                                     89 	.globl _P1_3
                                     90 	.globl _P1_2
                                     91 	.globl _P1_1
                                     92 	.globl _P1_0
                                     93 	.globl _TF1
                                     94 	.globl _TR1
                                     95 	.globl _TF0
                                     96 	.globl _TR0
                                     97 	.globl _IE1
                                     98 	.globl _IT1
                                     99 	.globl _IE0
                                    100 	.globl _IT0
                                    101 	.globl _P0_7
                                    102 	.globl _P0_6
                                    103 	.globl _P0_5
                                    104 	.globl _P0_4
                                    105 	.globl _P0_3
                                    106 	.globl _P0_2
                                    107 	.globl _P0_1
                                    108 	.globl _P0_0
                                    109 	.globl _P5_7
                                    110 	.globl _P5_6
                                    111 	.globl _P5_5
                                    112 	.globl _P5_4
                                    113 	.globl _P5_3
                                    114 	.globl _P5_2
                                    115 	.globl _P5_1
                                    116 	.globl _P5_0
                                    117 	.globl _P4_7
                                    118 	.globl _P4_6
                                    119 	.globl _P4_5
                                    120 	.globl _P4_4
                                    121 	.globl _P4_3
                                    122 	.globl _P4_2
                                    123 	.globl _P4_1
                                    124 	.globl _P4_0
                                    125 	.globl _PX0L
                                    126 	.globl _PT0L
                                    127 	.globl _PX1L
                                    128 	.globl _PT1L
                                    129 	.globl _PSL
                                    130 	.globl _PT2L
                                    131 	.globl _PPCL
                                    132 	.globl _EC
                                    133 	.globl _CCF0
                                    134 	.globl _CCF1
                                    135 	.globl _CCF2
                                    136 	.globl _CCF3
                                    137 	.globl _CCF4
                                    138 	.globl _CR
                                    139 	.globl _CF
                                    140 	.globl _TF2
                                    141 	.globl _EXF2
                                    142 	.globl _RCLK
                                    143 	.globl _TCLK
                                    144 	.globl _EXEN2
                                    145 	.globl _TR2
                                    146 	.globl _C_T2
                                    147 	.globl _CP_RL2
                                    148 	.globl _T2CON_7
                                    149 	.globl _T2CON_6
                                    150 	.globl _T2CON_5
                                    151 	.globl _T2CON_4
                                    152 	.globl _T2CON_3
                                    153 	.globl _T2CON_2
                                    154 	.globl _T2CON_1
                                    155 	.globl _T2CON_0
                                    156 	.globl _PT2
                                    157 	.globl _ET2
                                    158 	.globl _B
                                    159 	.globl _ACC
                                    160 	.globl _PSW
                                    161 	.globl _IP
                                    162 	.globl _P3
                                    163 	.globl _IE
                                    164 	.globl _P2
                                    165 	.globl _SBUF
                                    166 	.globl _SCON
                                    167 	.globl _P1
                                    168 	.globl _TH1
                                    169 	.globl _TH0
                                    170 	.globl _TL1
                                    171 	.globl _TL0
                                    172 	.globl _TMOD
                                    173 	.globl _TCON
                                    174 	.globl _PCON
                                    175 	.globl _DPH
                                    176 	.globl _DPL
                                    177 	.globl _SP
                                    178 	.globl _P0
                                    179 	.globl _EECON
                                    180 	.globl _KBF
                                    181 	.globl _KBE
                                    182 	.globl _KBLS
                                    183 	.globl _BRL
                                    184 	.globl _BDRCON
                                    185 	.globl _T2MOD
                                    186 	.globl _SPDAT
                                    187 	.globl _SPSTA
                                    188 	.globl _SPCON
                                    189 	.globl _SADEN
                                    190 	.globl _SADDR
                                    191 	.globl _WDTPRG
                                    192 	.globl _WDTRST
                                    193 	.globl _P5
                                    194 	.globl _P4
                                    195 	.globl _IPH1
                                    196 	.globl _IPL1
                                    197 	.globl _IPH0
                                    198 	.globl _IPL0
                                    199 	.globl _IEN1
                                    200 	.globl _IEN0
                                    201 	.globl _CMOD
                                    202 	.globl _CL
                                    203 	.globl _CH
                                    204 	.globl _CCON
                                    205 	.globl _CCAPM4
                                    206 	.globl _CCAPM3
                                    207 	.globl _CCAPM2
                                    208 	.globl _CCAPM1
                                    209 	.globl _CCAPM0
                                    210 	.globl _CCAP4L
                                    211 	.globl _CCAP3L
                                    212 	.globl _CCAP2L
                                    213 	.globl _CCAP1L
                                    214 	.globl _CCAP0L
                                    215 	.globl _CCAP4H
                                    216 	.globl _CCAP3H
                                    217 	.globl _CCAP2H
                                    218 	.globl _CCAP1H
                                    219 	.globl _CCAP0H
                                    220 	.globl _CKCON1
                                    221 	.globl _CKCON0
                                    222 	.globl _CKRL
                                    223 	.globl _AUXR1
                                    224 	.globl _AUXR
                                    225 	.globl _TH2
                                    226 	.globl _TL2
                                    227 	.globl _RCAP2H
                                    228 	.globl _RCAP2L
                                    229 	.globl _T2CON
                                    230 	.globl _store_in_buffer_PARM_2
                                    231 	.globl _buffers
                                    232 	.globl _get_user_buffer_sz
                                    233 	.globl _free_all_buffers
                                    234 ;--------------------------------------------------------
                                    235 ; special function registers
                                    236 ;--------------------------------------------------------
                                    237 	.area RSEG    (ABS,DATA)
      000000                        238 	.org 0x0000
                           0000C8   239 _T2CON	=	0x00c8
                           0000CA   240 _RCAP2L	=	0x00ca
                           0000CB   241 _RCAP2H	=	0x00cb
                           0000CC   242 _TL2	=	0x00cc
                           0000CD   243 _TH2	=	0x00cd
                           00008E   244 _AUXR	=	0x008e
                           0000A2   245 _AUXR1	=	0x00a2
                           000097   246 _CKRL	=	0x0097
                           00008F   247 _CKCON0	=	0x008f
                           0000AF   248 _CKCON1	=	0x00af
                           0000FA   249 _CCAP0H	=	0x00fa
                           0000FB   250 _CCAP1H	=	0x00fb
                           0000FC   251 _CCAP2H	=	0x00fc
                           0000FD   252 _CCAP3H	=	0x00fd
                           0000FE   253 _CCAP4H	=	0x00fe
                           0000EA   254 _CCAP0L	=	0x00ea
                           0000EB   255 _CCAP1L	=	0x00eb
                           0000EC   256 _CCAP2L	=	0x00ec
                           0000ED   257 _CCAP3L	=	0x00ed
                           0000EE   258 _CCAP4L	=	0x00ee
                           0000DA   259 _CCAPM0	=	0x00da
                           0000DB   260 _CCAPM1	=	0x00db
                           0000DC   261 _CCAPM2	=	0x00dc
                           0000DD   262 _CCAPM3	=	0x00dd
                           0000DE   263 _CCAPM4	=	0x00de
                           0000D8   264 _CCON	=	0x00d8
                           0000F9   265 _CH	=	0x00f9
                           0000E9   266 _CL	=	0x00e9
                           0000D9   267 _CMOD	=	0x00d9
                           0000A8   268 _IEN0	=	0x00a8
                           0000B1   269 _IEN1	=	0x00b1
                           0000B8   270 _IPL0	=	0x00b8
                           0000B7   271 _IPH0	=	0x00b7
                           0000B2   272 _IPL1	=	0x00b2
                           0000B3   273 _IPH1	=	0x00b3
                           0000C0   274 _P4	=	0x00c0
                           0000E8   275 _P5	=	0x00e8
                           0000A6   276 _WDTRST	=	0x00a6
                           0000A7   277 _WDTPRG	=	0x00a7
                           0000A9   278 _SADDR	=	0x00a9
                           0000B9   279 _SADEN	=	0x00b9
                           0000C3   280 _SPCON	=	0x00c3
                           0000C4   281 _SPSTA	=	0x00c4
                           0000C5   282 _SPDAT	=	0x00c5
                           0000C9   283 _T2MOD	=	0x00c9
                           00009B   284 _BDRCON	=	0x009b
                           00009A   285 _BRL	=	0x009a
                           00009C   286 _KBLS	=	0x009c
                           00009D   287 _KBE	=	0x009d
                           00009E   288 _KBF	=	0x009e
                           0000D2   289 _EECON	=	0x00d2
                           000080   290 _P0	=	0x0080
                           000081   291 _SP	=	0x0081
                           000082   292 _DPL	=	0x0082
                           000083   293 _DPH	=	0x0083
                           000087   294 _PCON	=	0x0087
                           000088   295 _TCON	=	0x0088
                           000089   296 _TMOD	=	0x0089
                           00008A   297 _TL0	=	0x008a
                           00008B   298 _TL1	=	0x008b
                           00008C   299 _TH0	=	0x008c
                           00008D   300 _TH1	=	0x008d
                           000090   301 _P1	=	0x0090
                           000098   302 _SCON	=	0x0098
                           000099   303 _SBUF	=	0x0099
                           0000A0   304 _P2	=	0x00a0
                           0000A8   305 _IE	=	0x00a8
                           0000B0   306 _P3	=	0x00b0
                           0000B8   307 _IP	=	0x00b8
                           0000D0   308 _PSW	=	0x00d0
                           0000E0   309 _ACC	=	0x00e0
                           0000F0   310 _B	=	0x00f0
                                    311 ;--------------------------------------------------------
                                    312 ; special function bits
                                    313 ;--------------------------------------------------------
                                    314 	.area RSEG    (ABS,DATA)
      000000                        315 	.org 0x0000
                           0000AD   316 _ET2	=	0x00ad
                           0000BD   317 _PT2	=	0x00bd
                           0000C8   318 _T2CON_0	=	0x00c8
                           0000C9   319 _T2CON_1	=	0x00c9
                           0000CA   320 _T2CON_2	=	0x00ca
                           0000CB   321 _T2CON_3	=	0x00cb
                           0000CC   322 _T2CON_4	=	0x00cc
                           0000CD   323 _T2CON_5	=	0x00cd
                           0000CE   324 _T2CON_6	=	0x00ce
                           0000CF   325 _T2CON_7	=	0x00cf
                           0000C8   326 _CP_RL2	=	0x00c8
                           0000C9   327 _C_T2	=	0x00c9
                           0000CA   328 _TR2	=	0x00ca
                           0000CB   329 _EXEN2	=	0x00cb
                           0000CC   330 _TCLK	=	0x00cc
                           0000CD   331 _RCLK	=	0x00cd
                           0000CE   332 _EXF2	=	0x00ce
                           0000CF   333 _TF2	=	0x00cf
                           0000DF   334 _CF	=	0x00df
                           0000DE   335 _CR	=	0x00de
                           0000DC   336 _CCF4	=	0x00dc
                           0000DB   337 _CCF3	=	0x00db
                           0000DA   338 _CCF2	=	0x00da
                           0000D9   339 _CCF1	=	0x00d9
                           0000D8   340 _CCF0	=	0x00d8
                           0000AE   341 _EC	=	0x00ae
                           0000BE   342 _PPCL	=	0x00be
                           0000BD   343 _PT2L	=	0x00bd
                           0000BC   344 _PSL	=	0x00bc
                           0000BB   345 _PT1L	=	0x00bb
                           0000BA   346 _PX1L	=	0x00ba
                           0000B9   347 _PT0L	=	0x00b9
                           0000B8   348 _PX0L	=	0x00b8
                           0000C0   349 _P4_0	=	0x00c0
                           0000C1   350 _P4_1	=	0x00c1
                           0000C2   351 _P4_2	=	0x00c2
                           0000C3   352 _P4_3	=	0x00c3
                           0000C4   353 _P4_4	=	0x00c4
                           0000C5   354 _P4_5	=	0x00c5
                           0000C6   355 _P4_6	=	0x00c6
                           0000C7   356 _P4_7	=	0x00c7
                           0000E8   357 _P5_0	=	0x00e8
                           0000E9   358 _P5_1	=	0x00e9
                           0000EA   359 _P5_2	=	0x00ea
                           0000EB   360 _P5_3	=	0x00eb
                           0000EC   361 _P5_4	=	0x00ec
                           0000ED   362 _P5_5	=	0x00ed
                           0000EE   363 _P5_6	=	0x00ee
                           0000EF   364 _P5_7	=	0x00ef
                           000080   365 _P0_0	=	0x0080
                           000081   366 _P0_1	=	0x0081
                           000082   367 _P0_2	=	0x0082
                           000083   368 _P0_3	=	0x0083
                           000084   369 _P0_4	=	0x0084
                           000085   370 _P0_5	=	0x0085
                           000086   371 _P0_6	=	0x0086
                           000087   372 _P0_7	=	0x0087
                           000088   373 _IT0	=	0x0088
                           000089   374 _IE0	=	0x0089
                           00008A   375 _IT1	=	0x008a
                           00008B   376 _IE1	=	0x008b
                           00008C   377 _TR0	=	0x008c
                           00008D   378 _TF0	=	0x008d
                           00008E   379 _TR1	=	0x008e
                           00008F   380 _TF1	=	0x008f
                           000090   381 _P1_0	=	0x0090
                           000091   382 _P1_1	=	0x0091
                           000092   383 _P1_2	=	0x0092
                           000093   384 _P1_3	=	0x0093
                           000094   385 _P1_4	=	0x0094
                           000095   386 _P1_5	=	0x0095
                           000096   387 _P1_6	=	0x0096
                           000097   388 _P1_7	=	0x0097
                           000098   389 _RI	=	0x0098
                           000099   390 _TI	=	0x0099
                           00009A   391 _RB8	=	0x009a
                           00009B   392 _TB8	=	0x009b
                           00009C   393 _REN	=	0x009c
                           00009D   394 _SM2	=	0x009d
                           00009E   395 _SM1	=	0x009e
                           00009F   396 _SM0	=	0x009f
                           0000A0   397 _P2_0	=	0x00a0
                           0000A1   398 _P2_1	=	0x00a1
                           0000A2   399 _P2_2	=	0x00a2
                           0000A3   400 _P2_3	=	0x00a3
                           0000A4   401 _P2_4	=	0x00a4
                           0000A5   402 _P2_5	=	0x00a5
                           0000A6   403 _P2_6	=	0x00a6
                           0000A7   404 _P2_7	=	0x00a7
                           0000A8   405 _EX0	=	0x00a8
                           0000A9   406 _ET0	=	0x00a9
                           0000AA   407 _EX1	=	0x00aa
                           0000AB   408 _ET1	=	0x00ab
                           0000AC   409 _ES	=	0x00ac
                           0000AF   410 _EA	=	0x00af
                           0000B0   411 _P3_0	=	0x00b0
                           0000B1   412 _P3_1	=	0x00b1
                           0000B2   413 _P3_2	=	0x00b2
                           0000B3   414 _P3_3	=	0x00b3
                           0000B4   415 _P3_4	=	0x00b4
                           0000B5   416 _P3_5	=	0x00b5
                           0000B6   417 _P3_6	=	0x00b6
                           0000B7   418 _P3_7	=	0x00b7
                           0000B0   419 _RXD	=	0x00b0
                           0000B1   420 _TXD	=	0x00b1
                           0000B2   421 _INT0	=	0x00b2
                           0000B3   422 _INT1	=	0x00b3
                           0000B4   423 _T0	=	0x00b4
                           0000B5   424 _T1	=	0x00b5
                           0000B6   425 _WR	=	0x00b6
                           0000B7   426 _RD	=	0x00b7
                           0000B8   427 _PX0	=	0x00b8
                           0000B9   428 _PT0	=	0x00b9
                           0000BA   429 _PX1	=	0x00ba
                           0000BB   430 _PT1	=	0x00bb
                           0000BC   431 _PS	=	0x00bc
                           0000D0   432 _P	=	0x00d0
                           0000D1   433 _F1	=	0x00d1
                           0000D2   434 _OV	=	0x00d2
                           0000D3   435 _RS0	=	0x00d3
                           0000D4   436 _RS1	=	0x00d4
                           0000D5   437 _F0	=	0x00d5
                           0000D6   438 _AC	=	0x00d6
                           0000D7   439 _CY	=	0x00d7
                                    440 ;--------------------------------------------------------
                                    441 ; overlayable register banks
                                    442 ;--------------------------------------------------------
                                    443 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        444 	.ds 8
                                    445 ;--------------------------------------------------------
                                    446 ; internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area DSEG    (DATA)
      000021                        449 _initialize_buffers_sloc0_1_0:
      000021                        450 	.ds 2
      000023                        451 _initialize_buffers_sloc1_1_0:
      000023                        452 	.ds 2
      000025                        453 _initialize_buffers_sloc2_1_0:
      000025                        454 	.ds 3
      000028                        455 _store_in_buffer_sloc0_1_0:
      000028                        456 	.ds 2
      00002A                        457 _store_in_buffer_sloc1_1_0:
      00002A                        458 	.ds 3
      00002D                        459 _heap_report_sloc0_1_0:
      00002D                        460 	.ds 2
      00002F                        461 _heap_report_sloc1_1_0:
      00002F                        462 	.ds 2
      000031                        463 _heap_report_sloc2_1_0:
      000031                        464 	.ds 2
      000033                        465 _heap_report_sloc3_1_0:
      000033                        466 	.ds 2
      000035                        467 _heap_report_sloc4_1_0:
      000035                        468 	.ds 3
      000038                        469 _qmark_command_handler_sloc0_1_0:
      000038                        470 	.ds 3
      00003B                        471 _enter_command_handler_sloc0_1_0:
      00003B                        472 	.ds 3
      00003E                        473 _enter_command_handler_sloc1_1_0:
      00003E                        474 	.ds 2
      000040                        475 _enter_command_handler_sloc2_1_0:
      000040                        476 	.ds 2
      000042                        477 _enter_command_handler_sloc3_1_0:
      000042                        478 	.ds 2
      000044                        479 _percent_command_handler_sloc0_1_0:
      000044                        480 	.ds 3
                                    481 ;--------------------------------------------------------
                                    482 ; overlayable items in internal ram
                                    483 ;--------------------------------------------------------
                                    484 ;--------------------------------------------------------
                                    485 ; Stack segment in internal ram
                                    486 ;--------------------------------------------------------
                                    487 	.area	SSEG
      000047                        488 __start__stack:
      000047                        489 	.ds	1
                                    490 
                                    491 ;--------------------------------------------------------
                                    492 ; indirectly addressable internal ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area ISEG    (DATA)
                                    495 ;--------------------------------------------------------
                                    496 ; absolute internal ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area IABS    (ABS,DATA)
                                    499 	.area IABS    (ABS,DATA)
                                    500 ;--------------------------------------------------------
                                    501 ; bit data
                                    502 ;--------------------------------------------------------
                                    503 	.area BSEG    (BIT)
      000000                        504 _is_alphabet_char_sloc0_1_0:
      000000                        505 	.ds 1
                                    506 ;--------------------------------------------------------
                                    507 ; paged external ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area PSEG    (PAG,XDATA)
                                    510 ;--------------------------------------------------------
                                    511 ; external ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area XSEG    (XDATA)
      000001                        514 _buffers::
      000001                        515 	.ds 48
      000031                        516 _is_alphabet_char_c_65536_76:
      000031                        517 	.ds 1
      000032                        518 _initialize_buffers_max_user_input_65537_81:
      000032                        519 	.ds 2
      000034                        520 _initialize_buffers_total_heap_sz_65538_89:
      000034                        521 	.ds 2
      000036                        522 _store_in_buffer_PARM_2:
      000036                        523 	.ds 1
      000037                        524 _store_in_buffer_buffer_65536_93:
      000037                        525 	.ds 3
      00003A                        526 _command_header_command_string_65536_97:
      00003A                        527 	.ds 3
      00003D                        528 _heap_report_total_heap_sz_65537_100:
      00003D                        529 	.ds 2
      00003F                        530 _get_user_buffer_sz_maximum_sz_65536_104:
      00003F                        531 	.ds 2
      000041                        532 _qmark_command_handler_curr_output_char_65538_113:
      000041                        533 	.ds 2
      000043                        534 _qmark_command_handler_curr_char_196610_115:
      000043                        535 	.ds 1
                                    536 ;--------------------------------------------------------
                                    537 ; absolute external ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area XABS    (ABS,XDATA)
                                    540 ;--------------------------------------------------------
                                    541 ; external initialized ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area XISEG   (XDATA)
                                    544 	.area HOME    (CODE)
                                    545 	.area GSINIT0 (CODE)
                                    546 	.area GSINIT1 (CODE)
                                    547 	.area GSINIT2 (CODE)
                                    548 	.area GSINIT3 (CODE)
                                    549 	.area GSINIT4 (CODE)
                                    550 	.area GSINIT5 (CODE)
                                    551 	.area GSINIT  (CODE)
                                    552 	.area GSFINAL (CODE)
                                    553 	.area CSEG    (CODE)
                                    554 ;--------------------------------------------------------
                                    555 ; interrupt vector
                                    556 ;--------------------------------------------------------
                                    557 	.area HOME    (CODE)
      002000                        558 __interrupt_vect:
      002000 02 20 34         [24]  559 	ljmp	__sdcc_gsinit_startup
                                    560 ;--------------------------------------------------------
                                    561 ; global & static initialisations
                                    562 ;--------------------------------------------------------
                                    563 	.area HOME    (CODE)
                                    564 	.area GSINIT  (CODE)
                                    565 	.area GSFINAL (CODE)
                                    566 	.area GSINIT  (CODE)
                                    567 	.globl __sdcc_gsinit_startup
                                    568 	.globl __sdcc_program_startup
                                    569 	.globl __start__stack
                                    570 	.globl __mcs51_genXINIT
                                    571 	.globl __mcs51_genXRAMCLEAR
                                    572 	.globl __mcs51_genRAMCLEAR
                                    573 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  574 	ljmp	__sdcc_program_startup
                                    575 ;--------------------------------------------------------
                                    576 ; Home
                                    577 ;--------------------------------------------------------
                                    578 	.area HOME    (CODE)
                                    579 	.area HOME    (CODE)
      002003                        580 __sdcc_program_startup:
      002003 02 2C E8         [24]  581 	ljmp	_main
                                    582 ;	return from main will return to caller
                                    583 ;--------------------------------------------------------
                                    584 ; code
                                    585 ;--------------------------------------------------------
                                    586 	.area CSEG    (CODE)
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    589 ;------------------------------------------------------------
                                    590 ;	src/main.c:51: int _sdcc_external_startup()
                                    591 ;	-----------------------------------------
                                    592 ;	 function _sdcc_external_startup
                                    593 ;	-----------------------------------------
      002090                        594 __sdcc_external_startup:
                           000007   595 	ar7 = 0x07
                           000006   596 	ar6 = 0x06
                           000005   597 	ar5 = 0x05
                           000004   598 	ar4 = 0x04
                           000003   599 	ar3 = 0x03
                           000002   600 	ar2 = 0x02
                           000001   601 	ar1 = 0x01
                           000000   602 	ar0 = 0x00
                                    603 ;	src/main.c:54: return 0;
      002090 90 00 00         [24]  604 	mov	dptr,#0x0000
                                    605 ;	src/main.c:55: }
      002093 22               [24]  606 	ret
                                    607 ;------------------------------------------------------------
                                    608 ;Allocation info for local variables in function 'is_alphabet_char'
                                    609 ;------------------------------------------------------------
                                    610 ;c                         Allocated with name '_is_alphabet_char_c_65536_76'
                                    611 ;------------------------------------------------------------
                                    612 ;	src/main.c:81: bool is_alphabet_char(char c)
                                    613 ;	-----------------------------------------
                                    614 ;	 function is_alphabet_char
                                    615 ;	-----------------------------------------
      002094                        616 _is_alphabet_char:
      002094 E5 82            [12]  617 	mov	a,dpl
      002096 90 00 31         [24]  618 	mov	dptr,#_is_alphabet_char_c_65536_76
      002099 F0               [24]  619 	movx	@dptr,a
                                    620 ;	src/main.c:83: return (c <= 'Z' && c >= 'A')
      00209A E0               [24]  621 	movx	a,@dptr
      00209B FF               [12]  622 	mov  r7,a
      00209C 24 A5            [12]  623 	add	a,#0xff - 0x5a
      00209E 92 00            [24]  624 	mov	_is_alphabet_char_sloc0_1_0,c
      0020A0 40 07            [24]  625 	jc	00108$
      0020A2 BF 41 00         [24]  626 	cjne	r7,#0x41,00121$
      0020A5                        627 00121$:
      0020A5 92 00            [24]  628 	mov	_is_alphabet_char_sloc0_1_0,c
      0020A7 50 16            [24]  629 	jnc	00104$
      0020A9                        630 00108$:
                                    631 ;	src/main.c:84: || (c <= 'z' && c >= 'a');
      0020A9 90 00 31         [24]  632 	mov	dptr,#_is_alphabet_char_c_65536_76
      0020AC E0               [24]  633 	movx	a,@dptr
      0020AD FF               [12]  634 	mov  r7,a
      0020AE 24 85            [12]  635 	add	a,#0xff - 0x7a
      0020B0 92 00            [24]  636 	mov	_is_alphabet_char_sloc0_1_0,c
      0020B2 40 07            [24]  637 	jc	00103$
      0020B4 BF 61 00         [24]  638 	cjne	r7,#0x61,00124$
      0020B7                        639 00124$:
      0020B7 92 00            [24]  640 	mov	_is_alphabet_char_sloc0_1_0,c
      0020B9 50 04            [24]  641 	jnc	00104$
      0020BB                        642 00103$:
                                    643 ;	assignBit
      0020BB C2 00            [12]  644 	clr	_is_alphabet_char_sloc0_1_0
      0020BD 80 02            [24]  645 	sjmp	00105$
      0020BF                        646 00104$:
                                    647 ;	assignBit
      0020BF D2 00            [12]  648 	setb	_is_alphabet_char_sloc0_1_0
      0020C1                        649 00105$:
      0020C1 A2 00            [12]  650 	mov	c,_is_alphabet_char_sloc0_1_0
      0020C3 E4               [12]  651 	clr	a
      0020C4 33               [12]  652 	rlc	a
      0020C5 F5 82            [12]  653 	mov	dpl,a
                                    654 ;	src/main.c:85: }
      0020C7 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'initialize_buffers'
                                    658 ;------------------------------------------------------------
                                    659 ;sloc0                     Allocated with name '_initialize_buffers_sloc0_1_0'
                                    660 ;sloc1                     Allocated with name '_initialize_buffers_sloc1_1_0'
                                    661 ;sloc2                     Allocated with name '_initialize_buffers_sloc2_1_0'
                                    662 ;student_number            Allocated with name '_initialize_buffers_student_number_65536_78'
                                    663 ;max_user_input            Allocated with name '_initialize_buffers_max_user_input_65537_81'
                                    664 ;user_buffer_size          Allocated with name '_initialize_buffers_user_buffer_size_65537_81'
                                    665 ;i                         Allocated with name '_initialize_buffers_i_196609_83'
                                    666 ;total_heap_sz             Allocated with name '_initialize_buffers_total_heap_sz_65538_89'
                                    667 ;i                         Allocated with name '_initialize_buffers_i_131074_90'
                                    668 ;------------------------------------------------------------
                                    669 ;	src/main.c:87: void initialize_buffers()
                                    670 ;	-----------------------------------------
                                    671 ;	 function initialize_buffers
                                    672 ;	-----------------------------------------
      0020C8                        673 _initialize_buffers:
                                    674 ;	src/main.c:90: while (true) 
      0020C8                        675 00105$:
                                    676 ;	src/main.c:92: printf("\r\nPlease enter the last two digits of your ID:");
      0020C8 74 04            [12]  677 	mov	a,#___str_0
      0020CA C0 E0            [24]  678 	push	acc
      0020CC 74 3E            [12]  679 	mov	a,#(___str_0 >> 8)
      0020CE C0 E0            [24]  680 	push	acc
      0020D0 74 80            [12]  681 	mov	a,#0x80
      0020D2 C0 E0            [24]  682 	push	acc
      0020D4 12 33 BC         [24]  683 	lcall	_printf
      0020D7 15 81            [12]  684 	dec	sp
      0020D9 15 81            [12]  685 	dec	sp
      0020DB 15 81            [12]  686 	dec	sp
                                    687 ;	src/main.c:93: get_string();
      0020DD 12 2D AD         [24]  688 	lcall	_get_string
                                    689 ;	src/main.c:94: student_number = atoi(get_input_buffer());
      0020E0 12 2D A6         [24]  690 	lcall	_get_input_buffer
      0020E3 12 30 6A         [24]  691 	lcall	_atoi
      0020E6 AE 82            [24]  692 	mov	r6,dpl
                                    693 ;	src/main.c:95: if (!(student_number < 0 || student_number > MAX_STUDENT_NUMBER))
      0020E8 E5 83            [12]  694 	mov	a,dph
      0020EA FF               [12]  695 	mov	r7,a
      0020EB 20 E7 DA         [24]  696 	jb	acc.7,00105$
      0020EE C3               [12]  697 	clr	c
      0020EF 74 63            [12]  698 	mov	a,#0x63
      0020F1 9E               [12]  699 	subb	a,r6
      0020F2 74 80            [12]  700 	mov	a,#(0x00 ^ 0x80)
      0020F4 8F F0            [24]  701 	mov	b,r7
      0020F6 63 F0 80         [24]  702 	xrl	b,#0x80
      0020F9 95 F0            [12]  703 	subb	a,b
      0020FB 40 CB            [24]  704 	jc	00105$
                                    705 ;	src/main.c:101: size_t max_user_input = USER_BUFFER_MAX;
      0020FD 90 00 32         [24]  706 	mov	dptr,#_initialize_buffers_max_user_input_65537_81
      002100 E4               [12]  707 	clr	a
      002101 F0               [24]  708 	movx	@dptr,a
      002102 74 04            [12]  709 	mov	a,#0x04
      002104 A3               [24]  710 	inc	dptr
      002105 F0               [24]  711 	movx	@dptr,a
                                    712 ;	src/main.c:105: memset(buffers, 0, BUFFER_COUNT * sizeof(char *));
      002106 90 04 61         [24]  713 	mov	dptr,#_memset_PARM_2
      002109 E4               [12]  714 	clr	a
      00210A F0               [24]  715 	movx	@dptr,a
      00210B 90 04 62         [24]  716 	mov	dptr,#_memset_PARM_3
      00210E 74 12            [12]  717 	mov	a,#0x12
      002110 F0               [24]  718 	movx	@dptr,a
      002111 E4               [12]  719 	clr	a
      002112 A3               [24]  720 	inc	dptr
      002113 F0               [24]  721 	movx	@dptr,a
      002114 90 00 01         [24]  722 	mov	dptr,#_buffers
      002117 75 F0 00         [24]  723 	mov	b,#0x00
      00211A C0 07            [24]  724 	push	ar7
      00211C C0 06            [24]  725 	push	ar6
      00211E 12 30 42         [24]  726 	lcall	_memset
      002121 D0 06            [24]  727 	pop	ar6
      002123 D0 07            [24]  728 	pop	ar7
                                    729 ;	src/main.c:107: while(true)
      002125 74 02            [12]  730 	mov	a,#0x02
      002127 2E               [12]  731 	add	a,r6
      002128 FC               [12]  732 	mov	r4,a
      002129 E4               [12]  733 	clr	a
      00212A 3F               [12]  734 	addc	a,r7
      00212B FD               [12]  735 	mov	r5,a
      00212C                        736 00117$:
                                    737 ;	src/main.c:109: user_buffer_size = get_user_buffer_sz(max_user_input);
      00212C 90 00 32         [24]  738 	mov	dptr,#_initialize_buffers_max_user_input_65537_81
      00212F E0               [24]  739 	movx	a,@dptr
      002130 FA               [12]  740 	mov	r2,a
      002131 A3               [24]  741 	inc	dptr
      002132 E0               [24]  742 	movx	a,@dptr
      002133 FB               [12]  743 	mov	r3,a
      002134 8A 82            [24]  744 	mov	dpl,r2
      002136 8B 83            [24]  745 	mov	dph,r3
      002138 C0 07            [24]  746 	push	ar7
      00213A C0 06            [24]  747 	push	ar6
      00213C C0 05            [24]  748 	push	ar5
      00213E C0 04            [24]  749 	push	ar4
      002140 12 27 49         [24]  750 	lcall	_get_user_buffer_sz
      002143 AA 82            [24]  751 	mov	r2,dpl
      002145 AB 83            [24]  752 	mov	r3,dph
      002147 D0 04            [24]  753 	pop	ar4
      002149 D0 05            [24]  754 	pop	ar5
      00214B D0 06            [24]  755 	pop	ar6
      00214D D0 07            [24]  756 	pop	ar7
                                    757 ;	src/main.c:110: for(int i = 0; i < NUM_BUFFERS_TO_BE_ALLOCATED_TO_USER_SZ; i++)
      00214F 78 00            [12]  758 	mov	r0,#0x00
      002151 79 00            [12]  759 	mov	r1,#0x00
      002153                        760 00123$:
      002153 C3               [12]  761 	clr	c
      002154 E8               [12]  762 	mov	a,r0
      002155 94 04            [12]  763 	subb	a,#0x04
      002157 E9               [12]  764 	mov	a,r1
      002158 64 80            [12]  765 	xrl	a,#0x80
      00215A 94 80            [12]  766 	subb	a,#0x80
      00215C 40 03            [24]  767 	jc	00181$
      00215E 02 22 3C         [24]  768 	ljmp	00111$
      002161                        769 00181$:
                                    770 ;	src/main.c:113: buffers[i].buffer = malloc(user_buffer_size);
      002161 C0 04            [24]  771 	push	ar4
      002163 C0 05            [24]  772 	push	ar5
      002165 88 21            [24]  773 	mov	_initialize_buffers_sloc0_1_0,r0
      002167 E9               [12]  774 	mov	a,r1
      002168 C4               [12]  775 	swap	a
      002169 03               [12]  776 	rr	a
      00216A 54 F8            [12]  777 	anl	a,#0xf8
      00216C C5 21            [12]  778 	xch	a,_initialize_buffers_sloc0_1_0
      00216E C4               [12]  779 	swap	a
      00216F 03               [12]  780 	rr	a
      002170 C5 21            [12]  781 	xch	a,_initialize_buffers_sloc0_1_0
      002172 65 21            [12]  782 	xrl	a,_initialize_buffers_sloc0_1_0
      002174 C5 21            [12]  783 	xch	a,_initialize_buffers_sloc0_1_0
      002176 54 F8            [12]  784 	anl	a,#0xf8
      002178 C5 21            [12]  785 	xch	a,_initialize_buffers_sloc0_1_0
      00217A 65 21            [12]  786 	xrl	a,_initialize_buffers_sloc0_1_0
      00217C F5 22            [12]  787 	mov	(_initialize_buffers_sloc0_1_0 + 1),a
      00217E E5 21            [12]  788 	mov	a,_initialize_buffers_sloc0_1_0
      002180 24 01            [12]  789 	add	a,#_buffers
      002182 F5 23            [12]  790 	mov	_initialize_buffers_sloc1_1_0,a
      002184 E5 22            [12]  791 	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
      002186 34 00            [12]  792 	addc	a,#(_buffers >> 8)
      002188 F5 24            [12]  793 	mov	(_initialize_buffers_sloc1_1_0 + 1),a
      00218A 8A 82            [24]  794 	mov	dpl,r2
      00218C 8B 83            [24]  795 	mov	dph,r3
      00218E C0 07            [24]  796 	push	ar7
      002190 C0 06            [24]  797 	push	ar6
      002192 C0 03            [24]  798 	push	ar3
      002194 C0 02            [24]  799 	push	ar2
      002196 C0 01            [24]  800 	push	ar1
      002198 C0 00            [24]  801 	push	ar0
      00219A 12 31 E5         [24]  802 	lcall	_malloc
      00219D AC 82            [24]  803 	mov	r4,dpl
      00219F AD 83            [24]  804 	mov	r5,dph
      0021A1 D0 00            [24]  805 	pop	ar0
      0021A3 D0 01            [24]  806 	pop	ar1
      0021A5 D0 02            [24]  807 	pop	ar2
      0021A7 D0 03            [24]  808 	pop	ar3
      0021A9 D0 06            [24]  809 	pop	ar6
      0021AB D0 07            [24]  810 	pop	ar7
      0021AD 85 23 82         [24]  811 	mov	dpl,_initialize_buffers_sloc1_1_0
      0021B0 85 24 83         [24]  812 	mov	dph,(_initialize_buffers_sloc1_1_0 + 1)
      0021B3 EC               [12]  813 	mov	a,r4
      0021B4 F0               [24]  814 	movx	@dptr,a
      0021B5 ED               [12]  815 	mov	a,r5
      0021B6 A3               [24]  816 	inc	dptr
      0021B7 F0               [24]  817 	movx	@dptr,a
                                    818 ;	src/main.c:115: if(buffers[i].buffer == NULL)
      0021B8 EC               [12]  819 	mov	a,r4
      0021B9 4D               [12]  820 	orl	a,r5
      0021BA D0 05            [24]  821 	pop	ar5
      0021BC D0 04            [24]  822 	pop	ar4
      0021BE 70 4B            [24]  823 	jnz	00109$
                                    824 ;	src/main.c:117: free_all_buffers();
      0021C0 C0 04            [24]  825 	push	ar4
      0021C2 C0 05            [24]  826 	push	ar5
      0021C4 C0 07            [24]  827 	push	ar7
      0021C6 C0 06            [24]  828 	push	ar6
      0021C8 C0 05            [24]  829 	push	ar5
      0021CA C0 04            [24]  830 	push	ar4
      0021CC C0 03            [24]  831 	push	ar3
      0021CE C0 02            [24]  832 	push	ar2
      0021D0 12 27 A3         [24]  833 	lcall	_free_all_buffers
                                    834 ;	src/main.c:118: printf(BUFFER_SZ_TOO_BIG);
      0021D3 74 33            [12]  835 	mov	a,#___str_1
      0021D5 C0 E0            [24]  836 	push	acc
      0021D7 74 3E            [12]  837 	mov	a,#(___str_1 >> 8)
      0021D9 C0 E0            [24]  838 	push	acc
      0021DB 74 80            [12]  839 	mov	a,#0x80
      0021DD C0 E0            [24]  840 	push	acc
      0021DF 12 33 BC         [24]  841 	lcall	_printf
      0021E2 15 81            [12]  842 	dec	sp
      0021E4 15 81            [12]  843 	dec	sp
      0021E6 15 81            [12]  844 	dec	sp
      0021E8 D0 02            [24]  845 	pop	ar2
      0021EA D0 03            [24]  846 	pop	ar3
      0021EC D0 04            [24]  847 	pop	ar4
      0021EE D0 05            [24]  848 	pop	ar5
      0021F0 D0 06            [24]  849 	pop	ar6
      0021F2 D0 07            [24]  850 	pop	ar7
                                    851 ;	src/main.c:119: max_user_input = user_buffer_size-1;
      0021F4 EA               [12]  852 	mov	a,r2
      0021F5 24 FF            [12]  853 	add	a,#0xff
      0021F7 FC               [12]  854 	mov	r4,a
      0021F8 EB               [12]  855 	mov	a,r3
      0021F9 34 FF            [12]  856 	addc	a,#0xff
      0021FB FD               [12]  857 	mov	r5,a
      0021FC 90 00 32         [24]  858 	mov	dptr,#_initialize_buffers_max_user_input_65537_81
      0021FF EC               [12]  859 	mov	a,r4
      002200 F0               [24]  860 	movx	@dptr,a
      002201 ED               [12]  861 	mov	a,r5
      002202 A3               [24]  862 	inc	dptr
      002203 F0               [24]  863 	movx	@dptr,a
                                    864 ;	src/main.c:120: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
      002204 D0 05            [24]  865 	pop	ar5
      002206 D0 04            [24]  866 	pop	ar4
      002208 02 21 2C         [24]  867 	ljmp	00117$
      00220B                        868 00109$:
                                    869 ;	src/main.c:122: buffers[i].size = (size_t) user_buffer_size;
      00220B C0 04            [24]  870 	push	ar4
      00220D C0 05            [24]  871 	push	ar5
      00220F E5 21            [12]  872 	mov	a,_initialize_buffers_sloc0_1_0
      002211 24 01            [12]  873 	add	a,#_buffers
      002213 FC               [12]  874 	mov	r4,a
      002214 E5 22            [12]  875 	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
      002216 34 00            [12]  876 	addc	a,#(_buffers >> 8)
      002218 FD               [12]  877 	mov	r5,a
      002219 8C 82            [24]  878 	mov	dpl,r4
      00221B 8D 83            [24]  879 	mov	dph,r5
      00221D A3               [24]  880 	inc	dptr
      00221E A3               [24]  881 	inc	dptr
      00221F A3               [24]  882 	inc	dptr
      002220 A3               [24]  883 	inc	dptr
      002221 EA               [12]  884 	mov	a,r2
      002222 F0               [24]  885 	movx	@dptr,a
      002223 EB               [12]  886 	mov	a,r3
      002224 A3               [24]  887 	inc	dptr
      002225 F0               [24]  888 	movx	@dptr,a
                                    889 ;	src/main.c:123: buffers[i].alphabet_chars = 0; 
      002226 8C 82            [24]  890 	mov	dpl,r4
      002228 8D 83            [24]  891 	mov	dph,r5
      00222A A3               [24]  892 	inc	dptr
      00222B A3               [24]  893 	inc	dptr
      00222C E4               [12]  894 	clr	a
      00222D F0               [24]  895 	movx	@dptr,a
      00222E A3               [24]  896 	inc	dptr
      00222F F0               [24]  897 	movx	@dptr,a
                                    898 ;	src/main.c:110: for(int i = 0; i < NUM_BUFFERS_TO_BE_ALLOCATED_TO_USER_SZ; i++)
      002230 08               [12]  899 	inc	r0
      002231 B8 00 01         [24]  900 	cjne	r0,#0x00,00183$
      002234 09               [12]  901 	inc	r1
      002235                        902 00183$:
      002235 D0 05            [24]  903 	pop	ar5
      002237 D0 04            [24]  904 	pop	ar4
      002239 02 21 53         [24]  905 	ljmp	00123$
      00223C                        906 00111$:
                                    907 ;	src/main.c:127: free(buffers[2].buffer);
      00223C C0 06            [24]  908 	push	ar6
      00223E C0 07            [24]  909 	push	ar7
      002240 90 00 11         [24]  910 	mov	dptr,#(_buffers + 0x0010)
      002243 E0               [24]  911 	movx	a,@dptr
      002244 F8               [12]  912 	mov	r0,a
      002245 A3               [24]  913 	inc	dptr
      002246 E0               [24]  914 	movx	a,@dptr
      002247 F9               [12]  915 	mov	r1,a
      002248 7F 00            [12]  916 	mov	r7,#0x00
      00224A 88 82            [24]  917 	mov	dpl,r0
      00224C 89 83            [24]  918 	mov	dph,r1
      00224E 8F F0            [24]  919 	mov	b,r7
      002250 C0 07            [24]  920 	push	ar7
      002252 C0 06            [24]  921 	push	ar6
      002254 C0 05            [24]  922 	push	ar5
      002256 C0 04            [24]  923 	push	ar4
      002258 C0 03            [24]  924 	push	ar3
      00225A C0 02            [24]  925 	push	ar2
      00225C 12 2E 77         [24]  926 	lcall	_free
      00225F D0 02            [24]  927 	pop	ar2
      002261 D0 03            [24]  928 	pop	ar3
      002263 D0 04            [24]  929 	pop	ar4
      002265 D0 05            [24]  930 	pop	ar5
      002267 D0 06            [24]  931 	pop	ar6
      002269 D0 07            [24]  932 	pop	ar7
                                    933 ;	src/main.c:128: buffers[2].buffer = NULL; //make sure we don't accidentally double free
      00226B 90 00 11         [24]  934 	mov	dptr,#(_buffers + 0x0010)
      00226E E4               [12]  935 	clr	a
      00226F F0               [24]  936 	movx	@dptr,a
      002270 A3               [24]  937 	inc	dptr
      002271 F0               [24]  938 	movx	@dptr,a
                                    939 ;	src/main.c:129: buffers[2].size = 0; 
      002272 90 00 15         [24]  940 	mov	dptr,#(_buffers + 0x0014)
      002275 F0               [24]  941 	movx	@dptr,a
      002276 A3               [24]  942 	inc	dptr
      002277 F0               [24]  943 	movx	@dptr,a
                                    944 ;	src/main.c:132: buffers[4].size = (size_t) 10 * (student_number + 2);
      002278 90 04 73         [24]  945 	mov	dptr,#__mulint_PARM_2
      00227B EC               [12]  946 	mov	a,r4
      00227C F0               [24]  947 	movx	@dptr,a
      00227D ED               [12]  948 	mov	a,r5
      00227E A3               [24]  949 	inc	dptr
      00227F F0               [24]  950 	movx	@dptr,a
      002280 90 00 0A         [24]  951 	mov	dptr,#0x000a
      002283 C0 05            [24]  952 	push	ar5
      002285 C0 04            [24]  953 	push	ar4
      002287 C0 03            [24]  954 	push	ar3
      002289 C0 02            [24]  955 	push	ar2
      00228B 12 33 4E         [24]  956 	lcall	__mulint
      00228E AE 82            [24]  957 	mov	r6,dpl
      002290 AF 83            [24]  958 	mov	r7,dph
      002292 90 00 25         [24]  959 	mov	dptr,#(_buffers + 0x0024)
      002295 EE               [12]  960 	mov	a,r6
      002296 F0               [24]  961 	movx	@dptr,a
      002297 EF               [12]  962 	mov	a,r7
      002298 A3               [24]  963 	inc	dptr
      002299 F0               [24]  964 	movx	@dptr,a
                                    965 ;	src/main.c:133: buffers[4].buffer = malloc(buffers[4].size);
      00229A 8E 82            [24]  966 	mov	dpl,r6
      00229C 8F 83            [24]  967 	mov	dph,r7
      00229E 12 31 E5         [24]  968 	lcall	_malloc
      0022A1 AE 82            [24]  969 	mov	r6,dpl
      0022A3 AF 83            [24]  970 	mov	r7,dph
      0022A5 D0 02            [24]  971 	pop	ar2
      0022A7 D0 03            [24]  972 	pop	ar3
      0022A9 D0 04            [24]  973 	pop	ar4
      0022AB D0 05            [24]  974 	pop	ar5
      0022AD 90 00 21         [24]  975 	mov	dptr,#(_buffers + 0x0020)
      0022B0 EE               [12]  976 	mov	a,r6
      0022B1 F0               [24]  977 	movx	@dptr,a
      0022B2 EF               [12]  978 	mov	a,r7
      0022B3 A3               [24]  979 	inc	dptr
      0022B4 F0               [24]  980 	movx	@dptr,a
                                    981 ;	src/main.c:135: if (buffers[4].buffer == NULL)
      0022B5 EE               [12]  982 	mov	a,r6
      0022B6 4F               [12]  983 	orl	a,r7
      0022B7 D0 07            [24]  984 	pop	ar7
      0022B9 D0 06            [24]  985 	pop	ar6
      0022BB 70 43            [24]  986 	jnz	00113$
                                    987 ;	src/main.c:137: free_all_buffers();
      0022BD C0 07            [24]  988 	push	ar7
      0022BF C0 06            [24]  989 	push	ar6
      0022C1 C0 05            [24]  990 	push	ar5
      0022C3 C0 04            [24]  991 	push	ar4
      0022C5 C0 03            [24]  992 	push	ar3
      0022C7 C0 02            [24]  993 	push	ar2
      0022C9 12 27 A3         [24]  994 	lcall	_free_all_buffers
                                    995 ;	src/main.c:138: printf(BUFFER_SZ_TOO_BIG);
      0022CC 74 33            [12]  996 	mov	a,#___str_1
      0022CE C0 E0            [24]  997 	push	acc
      0022D0 74 3E            [12]  998 	mov	a,#(___str_1 >> 8)
      0022D2 C0 E0            [24]  999 	push	acc
      0022D4 74 80            [12] 1000 	mov	a,#0x80
      0022D6 C0 E0            [24] 1001 	push	acc
      0022D8 12 33 BC         [24] 1002 	lcall	_printf
      0022DB 15 81            [12] 1003 	dec	sp
      0022DD 15 81            [12] 1004 	dec	sp
      0022DF 15 81            [12] 1005 	dec	sp
      0022E1 D0 02            [24] 1006 	pop	ar2
      0022E3 D0 03            [24] 1007 	pop	ar3
      0022E5 D0 04            [24] 1008 	pop	ar4
      0022E7 D0 05            [24] 1009 	pop	ar5
      0022E9 D0 06            [24] 1010 	pop	ar6
      0022EB D0 07            [24] 1011 	pop	ar7
                                   1012 ;	src/main.c:139: max_user_input = user_buffer_size-1;
      0022ED EA               [12] 1013 	mov	a,r2
      0022EE 24 FF            [12] 1014 	add	a,#0xff
      0022F0 F8               [12] 1015 	mov	r0,a
      0022F1 EB               [12] 1016 	mov	a,r3
      0022F2 34 FF            [12] 1017 	addc	a,#0xff
      0022F4 F9               [12] 1018 	mov	r1,a
      0022F5 90 00 32         [24] 1019 	mov	dptr,#_initialize_buffers_max_user_input_65537_81
      0022F8 E8               [12] 1020 	mov	a,r0
      0022F9 F0               [24] 1021 	movx	@dptr,a
      0022FA E9               [12] 1022 	mov	a,r1
      0022FB A3               [24] 1023 	inc	dptr
      0022FC F0               [24] 1024 	movx	@dptr,a
                                   1025 ;	src/main.c:140: continue;
      0022FD 02 21 2C         [24] 1026 	ljmp	00117$
      002300                       1027 00113$:
                                   1028 ;	src/main.c:143: buffers[5].size = (size_t) 2 * user_buffer_size; 
      002300 EA               [12] 1029 	mov	a,r2
      002301 2A               [12] 1030 	add	a,r2
      002302 F8               [12] 1031 	mov	r0,a
      002303 EB               [12] 1032 	mov	a,r3
      002304 33               [12] 1033 	rlc	a
      002305 F9               [12] 1034 	mov	r1,a
      002306 90 00 2D         [24] 1035 	mov	dptr,#(_buffers + 0x002c)
      002309 E8               [12] 1036 	mov	a,r0
      00230A F0               [24] 1037 	movx	@dptr,a
      00230B E9               [12] 1038 	mov	a,r1
      00230C A3               [24] 1039 	inc	dptr
      00230D F0               [24] 1040 	movx	@dptr,a
                                   1041 ;	src/main.c:144: buffers[5].buffer = malloc(buffers[5].size);
      00230E 88 82            [24] 1042 	mov	dpl,r0
      002310 89 83            [24] 1043 	mov	dph,r1
      002312 C0 07            [24] 1044 	push	ar7
      002314 C0 06            [24] 1045 	push	ar6
      002316 C0 05            [24] 1046 	push	ar5
      002318 C0 04            [24] 1047 	push	ar4
      00231A C0 03            [24] 1048 	push	ar3
      00231C C0 02            [24] 1049 	push	ar2
      00231E 12 31 E5         [24] 1050 	lcall	_malloc
      002321 A8 82            [24] 1051 	mov	r0,dpl
      002323 A9 83            [24] 1052 	mov	r1,dph
      002325 D0 02            [24] 1053 	pop	ar2
      002327 D0 03            [24] 1054 	pop	ar3
      002329 D0 04            [24] 1055 	pop	ar4
      00232B D0 05            [24] 1056 	pop	ar5
      00232D D0 06            [24] 1057 	pop	ar6
      00232F D0 07            [24] 1058 	pop	ar7
      002331 90 00 29         [24] 1059 	mov	dptr,#(_buffers + 0x0028)
      002334 E8               [12] 1060 	mov	a,r0
      002335 F0               [24] 1061 	movx	@dptr,a
      002336 E9               [12] 1062 	mov	a,r1
      002337 A3               [24] 1063 	inc	dptr
      002338 F0               [24] 1064 	movx	@dptr,a
                                   1065 ;	src/main.c:145: if (buffers[5].buffer == NULL)
      002339 E8               [12] 1066 	mov	a,r0
      00233A 49               [12] 1067 	orl	a,r1
      00233B 70 43            [24] 1068 	jnz	00118$
                                   1069 ;	src/main.c:147: free_all_buffers();
      00233D C0 07            [24] 1070 	push	ar7
      00233F C0 06            [24] 1071 	push	ar6
      002341 C0 05            [24] 1072 	push	ar5
      002343 C0 04            [24] 1073 	push	ar4
      002345 C0 03            [24] 1074 	push	ar3
      002347 C0 02            [24] 1075 	push	ar2
      002349 12 27 A3         [24] 1076 	lcall	_free_all_buffers
                                   1077 ;	src/main.c:148: printf(BUFFER_SZ_TOO_BIG);
      00234C 74 33            [12] 1078 	mov	a,#___str_1
      00234E C0 E0            [24] 1079 	push	acc
      002350 74 3E            [12] 1080 	mov	a,#(___str_1 >> 8)
      002352 C0 E0            [24] 1081 	push	acc
      002354 74 80            [12] 1082 	mov	a,#0x80
      002356 C0 E0            [24] 1083 	push	acc
      002358 12 33 BC         [24] 1084 	lcall	_printf
      00235B 15 81            [12] 1085 	dec	sp
      00235D 15 81            [12] 1086 	dec	sp
      00235F 15 81            [12] 1087 	dec	sp
      002361 D0 02            [24] 1088 	pop	ar2
      002363 D0 03            [24] 1089 	pop	ar3
      002365 D0 04            [24] 1090 	pop	ar4
      002367 D0 05            [24] 1091 	pop	ar5
      002369 D0 06            [24] 1092 	pop	ar6
      00236B D0 07            [24] 1093 	pop	ar7
                                   1094 ;	src/main.c:149: max_user_input = user_buffer_size-1;
      00236D EA               [12] 1095 	mov	a,r2
      00236E 24 FF            [12] 1096 	add	a,#0xff
      002370 F8               [12] 1097 	mov	r0,a
      002371 EB               [12] 1098 	mov	a,r3
      002372 34 FF            [12] 1099 	addc	a,#0xff
      002374 F9               [12] 1100 	mov	r1,a
      002375 90 00 32         [24] 1101 	mov	dptr,#_initialize_buffers_max_user_input_65537_81
      002378 E8               [12] 1102 	mov	a,r0
      002379 F0               [24] 1103 	movx	@dptr,a
      00237A E9               [12] 1104 	mov	a,r1
      00237B A3               [24] 1105 	inc	dptr
      00237C F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	src/main.c:150: continue;
      00237D 02 21 2C         [24] 1108 	ljmp	00117$
                                   1109 ;	src/main.c:152: break;
      002380                       1110 00118$:
                                   1111 ;	src/main.c:155: printf("\r\nstudent_number: %d", student_number);
      002380 C0 03            [24] 1112 	push	ar3
      002382 C0 02            [24] 1113 	push	ar2
      002384 C0 06            [24] 1114 	push	ar6
      002386 C0 07            [24] 1115 	push	ar7
      002388 74 6C            [12] 1116 	mov	a,#___str_2
      00238A C0 E0            [24] 1117 	push	acc
      00238C 74 3E            [12] 1118 	mov	a,#(___str_2 >> 8)
      00238E C0 E0            [24] 1119 	push	acc
      002390 74 80            [12] 1120 	mov	a,#0x80
      002392 C0 E0            [24] 1121 	push	acc
      002394 12 33 BC         [24] 1122 	lcall	_printf
      002397 E5 81            [12] 1123 	mov	a,sp
      002399 24 FB            [12] 1124 	add	a,#0xfb
      00239B F5 81            [12] 1125 	mov	sp,a
      00239D D0 02            [24] 1126 	pop	ar2
      00239F D0 03            [24] 1127 	pop	ar3
                                   1128 ;	src/main.c:156: printf("\r\nuser_buffer_size: %zu", user_buffer_size);
      0023A1 C0 02            [24] 1129 	push	ar2
      0023A3 C0 03            [24] 1130 	push	ar3
      0023A5 74 81            [12] 1131 	mov	a,#___str_3
      0023A7 C0 E0            [24] 1132 	push	acc
      0023A9 74 3E            [12] 1133 	mov	a,#(___str_3 >> 8)
      0023AB C0 E0            [24] 1134 	push	acc
      0023AD 74 80            [12] 1135 	mov	a,#0x80
      0023AF C0 E0            [24] 1136 	push	acc
      0023B1 12 33 BC         [24] 1137 	lcall	_printf
      0023B4 E5 81            [12] 1138 	mov	a,sp
      0023B6 24 FB            [12] 1139 	add	a,#0xfb
      0023B8 F5 81            [12] 1140 	mov	sp,a
                                   1141 ;	src/main.c:158: size_t total_heap_sz = 0;
      0023BA 90 00 34         [24] 1142 	mov	dptr,#_initialize_buffers_total_heap_sz_65538_89
      0023BD E4               [12] 1143 	clr	a
      0023BE F0               [24] 1144 	movx	@dptr,a
      0023BF A3               [24] 1145 	inc	dptr
      0023C0 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	src/main.c:159: for(int i = 0; i < BUFFER_COUNT; i++)
      0023C1 7E 00            [12] 1148 	mov	r6,#0x00
      0023C3 7F 00            [12] 1149 	mov	r7,#0x00
      0023C5                       1150 00126$:
      0023C5 C3               [12] 1151 	clr	c
      0023C6 EE               [12] 1152 	mov	a,r6
      0023C7 94 06            [12] 1153 	subb	a,#0x06
      0023C9 EF               [12] 1154 	mov	a,r7
      0023CA 64 80            [12] 1155 	xrl	a,#0x80
      0023CC 94 80            [12] 1156 	subb	a,#0x80
      0023CE 40 03            [24] 1157 	jc	00186$
      0023D0 02 24 92         [24] 1158 	ljmp	00121$
      0023D3                       1159 00186$:
                                   1160 ;	src/main.c:161: if(buffers[i].buffer != NULL) {
      0023D3 8E 04            [24] 1161 	mov	ar4,r6
      0023D5 EF               [12] 1162 	mov	a,r7
      0023D6 C4               [12] 1163 	swap	a
      0023D7 03               [12] 1164 	rr	a
      0023D8 54 F8            [12] 1165 	anl	a,#0xf8
      0023DA CC               [12] 1166 	xch	a,r4
      0023DB C4               [12] 1167 	swap	a
      0023DC 03               [12] 1168 	rr	a
      0023DD CC               [12] 1169 	xch	a,r4
      0023DE 6C               [12] 1170 	xrl	a,r4
      0023DF CC               [12] 1171 	xch	a,r4
      0023E0 54 F8            [12] 1172 	anl	a,#0xf8
      0023E2 CC               [12] 1173 	xch	a,r4
      0023E3 6C               [12] 1174 	xrl	a,r4
      0023E4 FD               [12] 1175 	mov	r5,a
      0023E5 EC               [12] 1176 	mov	a,r4
      0023E6 24 01            [12] 1177 	add	a,#_buffers
      0023E8 F5 82            [12] 1178 	mov	dpl,a
      0023EA ED               [12] 1179 	mov	a,r5
      0023EB 34 00            [12] 1180 	addc	a,#(_buffers >> 8)
      0023ED F5 83            [12] 1181 	mov	dph,a
      0023EF E0               [24] 1182 	movx	a,@dptr
      0023F0 FA               [12] 1183 	mov	r2,a
      0023F1 A3               [24] 1184 	inc	dptr
      0023F2 E0               [24] 1185 	movx	a,@dptr
      0023F3 FB               [12] 1186 	mov	r3,a
      0023F4 4A               [12] 1187 	orl	a,r2
      0023F5 70 03            [24] 1188 	jnz	00187$
      0023F7 02 24 8A         [24] 1189 	ljmp	00127$
      0023FA                       1190 00187$:
                                   1191 ;	src/main.c:162: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, buffers[i].buffer, buffers[i].buffer + buffers[i].size, buffers[i].size);
      0023FA EC               [12] 1192 	mov	a,r4
      0023FB 24 01            [12] 1193 	add	a,#_buffers
      0023FD FC               [12] 1194 	mov	r4,a
      0023FE ED               [12] 1195 	mov	a,r5
      0023FF 34 00            [12] 1196 	addc	a,#(_buffers >> 8)
      002401 FD               [12] 1197 	mov	r5,a
      002402 74 04            [12] 1198 	mov	a,#0x04
      002404 2C               [12] 1199 	add	a,r4
      002405 FA               [12] 1200 	mov	r2,a
      002406 E4               [12] 1201 	clr	a
      002407 3D               [12] 1202 	addc	a,r5
      002408 FB               [12] 1203 	mov	r3,a
      002409 8A 82            [24] 1204 	mov	dpl,r2
      00240B 8B 83            [24] 1205 	mov	dph,r3
      00240D E0               [24] 1206 	movx	a,@dptr
      00240E F5 21            [12] 1207 	mov	_initialize_buffers_sloc0_1_0,a
      002410 A3               [24] 1208 	inc	dptr
      002411 E0               [24] 1209 	movx	a,@dptr
      002412 F5 22            [12] 1210 	mov	(_initialize_buffers_sloc0_1_0 + 1),a
      002414 8C 82            [24] 1211 	mov	dpl,r4
      002416 8D 83            [24] 1212 	mov	dph,r5
      002418 E0               [24] 1213 	movx	a,@dptr
      002419 F5 23            [12] 1214 	mov	_initialize_buffers_sloc1_1_0,a
      00241B A3               [24] 1215 	inc	dptr
      00241C E0               [24] 1216 	movx	a,@dptr
      00241D F5 24            [12] 1217 	mov	(_initialize_buffers_sloc1_1_0 + 1),a
      00241F E5 21            [12] 1218 	mov	a,_initialize_buffers_sloc0_1_0
      002421 25 23            [12] 1219 	add	a,_initialize_buffers_sloc1_1_0
      002423 FC               [12] 1220 	mov	r4,a
      002424 E5 22            [12] 1221 	mov	a,(_initialize_buffers_sloc0_1_0 + 1)
      002426 35 24            [12] 1222 	addc	a,(_initialize_buffers_sloc1_1_0 + 1)
      002428 FD               [12] 1223 	mov	r5,a
      002429 8C 25            [24] 1224 	mov	_initialize_buffers_sloc2_1_0,r4
      00242B 8D 26            [24] 1225 	mov	(_initialize_buffers_sloc2_1_0 + 1),r5
      00242D 75 27 00         [24] 1226 	mov	(_initialize_buffers_sloc2_1_0 + 2),#0x00
      002430 A8 23            [24] 1227 	mov	r0,_initialize_buffers_sloc1_1_0
      002432 AD 24            [24] 1228 	mov	r5,(_initialize_buffers_sloc1_1_0 + 1)
      002434 7C 00            [12] 1229 	mov	r4,#0x00
      002436 C0 07            [24] 1230 	push	ar7
      002438 C0 06            [24] 1231 	push	ar6
      00243A C0 03            [24] 1232 	push	ar3
      00243C C0 02            [24] 1233 	push	ar2
      00243E C0 21            [24] 1234 	push	_initialize_buffers_sloc0_1_0
      002440 C0 22            [24] 1235 	push	(_initialize_buffers_sloc0_1_0 + 1)
      002442 C0 25            [24] 1236 	push	_initialize_buffers_sloc2_1_0
      002444 C0 26            [24] 1237 	push	(_initialize_buffers_sloc2_1_0 + 1)
      002446 C0 27            [24] 1238 	push	(_initialize_buffers_sloc2_1_0 + 2)
      002448 C0 00            [24] 1239 	push	ar0
      00244A C0 05            [24] 1240 	push	ar5
      00244C C0 04            [24] 1241 	push	ar4
      00244E C0 06            [24] 1242 	push	ar6
      002450 C0 07            [24] 1243 	push	ar7
      002452 74 99            [12] 1244 	mov	a,#___str_4
      002454 C0 E0            [24] 1245 	push	acc
      002456 74 3E            [12] 1246 	mov	a,#(___str_4 >> 8)
      002458 C0 E0            [24] 1247 	push	acc
      00245A 74 80            [12] 1248 	mov	a,#0x80
      00245C C0 E0            [24] 1249 	push	acc
      00245E 12 33 BC         [24] 1250 	lcall	_printf
      002461 E5 81            [12] 1251 	mov	a,sp
      002463 24 F3            [12] 1252 	add	a,#0xf3
      002465 F5 81            [12] 1253 	mov	sp,a
      002467 D0 02            [24] 1254 	pop	ar2
      002469 D0 03            [24] 1255 	pop	ar3
      00246B D0 06            [24] 1256 	pop	ar6
      00246D D0 07            [24] 1257 	pop	ar7
                                   1258 ;	src/main.c:163: total_heap_sz += buffers[i].size; 
      00246F 8A 82            [24] 1259 	mov	dpl,r2
      002471 8B 83            [24] 1260 	mov	dph,r3
      002473 E0               [24] 1261 	movx	a,@dptr
      002474 FA               [12] 1262 	mov	r2,a
      002475 A3               [24] 1263 	inc	dptr
      002476 E0               [24] 1264 	movx	a,@dptr
      002477 FB               [12] 1265 	mov	r3,a
      002478 90 00 34         [24] 1266 	mov	dptr,#_initialize_buffers_total_heap_sz_65538_89
      00247B E0               [24] 1267 	movx	a,@dptr
      00247C FC               [12] 1268 	mov	r4,a
      00247D A3               [24] 1269 	inc	dptr
      00247E E0               [24] 1270 	movx	a,@dptr
      00247F FD               [12] 1271 	mov	r5,a
      002480 90 00 34         [24] 1272 	mov	dptr,#_initialize_buffers_total_heap_sz_65538_89
      002483 EA               [12] 1273 	mov	a,r2
      002484 2C               [12] 1274 	add	a,r4
      002485 F0               [24] 1275 	movx	@dptr,a
      002486 EB               [12] 1276 	mov	a,r3
      002487 3D               [12] 1277 	addc	a,r5
      002488 A3               [24] 1278 	inc	dptr
      002489 F0               [24] 1279 	movx	@dptr,a
      00248A                       1280 00127$:
                                   1281 ;	src/main.c:159: for(int i = 0; i < BUFFER_COUNT; i++)
      00248A 0E               [12] 1282 	inc	r6
      00248B BE 00 01         [24] 1283 	cjne	r6,#0x00,00188$
      00248E 0F               [12] 1284 	inc	r7
      00248F                       1285 00188$:
      00248F 02 23 C5         [24] 1286 	ljmp	00126$
      002492                       1287 00121$:
                                   1288 ;	src/main.c:166: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      002492 90 00 34         [24] 1289 	mov	dptr,#_initialize_buffers_total_heap_sz_65538_89
      002495 E0               [24] 1290 	movx	a,@dptr
      002496 C0 E0            [24] 1291 	push	acc
      002498 A3               [24] 1292 	inc	dptr
      002499 E0               [24] 1293 	movx	a,@dptr
      00249A C0 E0            [24] 1294 	push	acc
      00249C 74 46            [12] 1295 	mov	a,#(___sdcc_heap + 0x0400)
      00249E C0 E0            [24] 1296 	push	acc
      0024A0 74 04            [12] 1297 	mov	a,#((___sdcc_heap + 0x0400) >> 8)
      0024A2 C0 E0            [24] 1298 	push	acc
      0024A4 E4               [12] 1299 	clr	a
      0024A5 C0 E0            [24] 1300 	push	acc
      0024A7 74 46            [12] 1301 	mov	a,#___sdcc_heap
      0024A9 C0 E0            [24] 1302 	push	acc
      0024AB 74 00            [12] 1303 	mov	a,#(___sdcc_heap >> 8)
      0024AD C0 E0            [24] 1304 	push	acc
      0024AF E4               [12] 1305 	clr	a
      0024B0 C0 E0            [24] 1306 	push	acc
      0024B2 74 C5            [12] 1307 	mov	a,#___str_5
      0024B4 C0 E0            [24] 1308 	push	acc
      0024B6 74 3E            [12] 1309 	mov	a,#(___str_5 >> 8)
      0024B8 C0 E0            [24] 1310 	push	acc
      0024BA 74 80            [12] 1311 	mov	a,#0x80
      0024BC C0 E0            [24] 1312 	push	acc
      0024BE 12 33 BC         [24] 1313 	lcall	_printf
      0024C1 E5 81            [12] 1314 	mov	a,sp
      0024C3 24 F5            [12] 1315 	add	a,#0xf5
      0024C5 F5 81            [12] 1316 	mov	sp,a
                                   1317 ;	src/main.c:167: }
      0024C7 22               [24] 1318 	ret
                                   1319 ;------------------------------------------------------------
                                   1320 ;Allocation info for local variables in function 'store_in_buffer'
                                   1321 ;------------------------------------------------------------
                                   1322 ;sloc0                     Allocated with name '_store_in_buffer_sloc0_1_0'
                                   1323 ;sloc1                     Allocated with name '_store_in_buffer_sloc1_1_0'
                                   1324 ;c                         Allocated with name '_store_in_buffer_PARM_2'
                                   1325 ;buffer                    Allocated with name '_store_in_buffer_buffer_65536_93'
                                   1326 ;------------------------------------------------------------
                                   1327 ;	src/main.c:169: void store_in_buffer(buffer_t *buffer, char c)
                                   1328 ;	-----------------------------------------
                                   1329 ;	 function store_in_buffer
                                   1330 ;	-----------------------------------------
      0024C8                       1331 _store_in_buffer:
      0024C8 AF F0            [24] 1332 	mov	r7,b
      0024CA AE 83            [24] 1333 	mov	r6,dph
      0024CC E5 82            [12] 1334 	mov	a,dpl
      0024CE 90 00 37         [24] 1335 	mov	dptr,#_store_in_buffer_buffer_65536_93
      0024D1 F0               [24] 1336 	movx	@dptr,a
      0024D2 EE               [12] 1337 	mov	a,r6
      0024D3 A3               [24] 1338 	inc	dptr
      0024D4 F0               [24] 1339 	movx	@dptr,a
      0024D5 EF               [12] 1340 	mov	a,r7
      0024D6 A3               [24] 1341 	inc	dptr
      0024D7 F0               [24] 1342 	movx	@dptr,a
                                   1343 ;	src/main.c:171: if (buffer->curr_available_char < buffer->size)
      0024D8 90 00 37         [24] 1344 	mov	dptr,#_store_in_buffer_buffer_65536_93
      0024DB E0               [24] 1345 	movx	a,@dptr
      0024DC FD               [12] 1346 	mov	r5,a
      0024DD A3               [24] 1347 	inc	dptr
      0024DE E0               [24] 1348 	movx	a,@dptr
      0024DF FE               [12] 1349 	mov	r6,a
      0024E0 A3               [24] 1350 	inc	dptr
      0024E1 E0               [24] 1351 	movx	a,@dptr
      0024E2 FF               [12] 1352 	mov	r7,a
      0024E3 74 06            [12] 1353 	mov	a,#0x06
      0024E5 2D               [12] 1354 	add	a,r5
      0024E6 F5 2A            [12] 1355 	mov	_store_in_buffer_sloc1_1_0,a
      0024E8 E4               [12] 1356 	clr	a
      0024E9 3E               [12] 1357 	addc	a,r6
      0024EA F5 2B            [12] 1358 	mov	(_store_in_buffer_sloc1_1_0 + 1),a
      0024EC 8F 2C            [24] 1359 	mov	(_store_in_buffer_sloc1_1_0 + 2),r7
      0024EE 85 2A 82         [24] 1360 	mov	dpl,_store_in_buffer_sloc1_1_0
      0024F1 85 2B 83         [24] 1361 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      0024F4 85 2C F0         [24] 1362 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      0024F7 12 3D E8         [24] 1363 	lcall	__gptrget
      0024FA F5 28            [12] 1364 	mov	_store_in_buffer_sloc0_1_0,a
      0024FC A3               [24] 1365 	inc	dptr
      0024FD 12 3D E8         [24] 1366 	lcall	__gptrget
      002500 F5 29            [12] 1367 	mov	(_store_in_buffer_sloc0_1_0 + 1),a
      002502 74 04            [12] 1368 	mov	a,#0x04
      002504 2D               [12] 1369 	add	a,r5
      002505 F8               [12] 1370 	mov	r0,a
      002506 E4               [12] 1371 	clr	a
      002507 3E               [12] 1372 	addc	a,r6
      002508 F9               [12] 1373 	mov	r1,a
      002509 8F 04            [24] 1374 	mov	ar4,r7
      00250B 88 82            [24] 1375 	mov	dpl,r0
      00250D 89 83            [24] 1376 	mov	dph,r1
      00250F 8C F0            [24] 1377 	mov	b,r4
      002511 12 3D E8         [24] 1378 	lcall	__gptrget
      002514 F8               [12] 1379 	mov	r0,a
      002515 A3               [24] 1380 	inc	dptr
      002516 12 3D E8         [24] 1381 	lcall	__gptrget
      002519 F9               [12] 1382 	mov	r1,a
      00251A C3               [12] 1383 	clr	c
      00251B E5 28            [12] 1384 	mov	a,_store_in_buffer_sloc0_1_0
      00251D 98               [12] 1385 	subb	a,r0
      00251E E5 29            [12] 1386 	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
      002520 99               [12] 1387 	subb	a,r1
      002521 40 01            [24] 1388 	jc	00115$
      002523 22               [24] 1389 	ret
      002524                       1390 00115$:
                                   1391 ;	src/main.c:173: buffer->buffer[buffer->curr_available_char] = c;
      002524 8D 82            [24] 1392 	mov	dpl,r5
      002526 8E 83            [24] 1393 	mov	dph,r6
      002528 8F F0            [24] 1394 	mov	b,r7
      00252A 12 3D E8         [24] 1395 	lcall	__gptrget
      00252D FB               [12] 1396 	mov	r3,a
      00252E A3               [24] 1397 	inc	dptr
      00252F 12 3D E8         [24] 1398 	lcall	__gptrget
      002532 FC               [12] 1399 	mov	r4,a
      002533 E5 28            [12] 1400 	mov	a,_store_in_buffer_sloc0_1_0
      002535 2B               [12] 1401 	add	a,r3
      002536 FB               [12] 1402 	mov	r3,a
      002537 E5 29            [12] 1403 	mov	a,(_store_in_buffer_sloc0_1_0 + 1)
      002539 3C               [12] 1404 	addc	a,r4
      00253A FC               [12] 1405 	mov	r4,a
      00253B 90 00 36         [24] 1406 	mov	dptr,#_store_in_buffer_PARM_2
      00253E E0               [24] 1407 	movx	a,@dptr
      00253F FA               [12] 1408 	mov	r2,a
      002540 8B 82            [24] 1409 	mov	dpl,r3
      002542 8C 83            [24] 1410 	mov	dph,r4
      002544 F0               [24] 1411 	movx	@dptr,a
                                   1412 ;	src/main.c:174: buffer->curr_available_char++;
      002545 85 2A 82         [24] 1413 	mov	dpl,_store_in_buffer_sloc1_1_0
      002548 85 2B 83         [24] 1414 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      00254B 85 2C F0         [24] 1415 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      00254E 12 3D E8         [24] 1416 	lcall	__gptrget
      002551 FC               [12] 1417 	mov	r4,a
      002552 A3               [24] 1418 	inc	dptr
      002553 12 3D E8         [24] 1419 	lcall	__gptrget
      002556 FB               [12] 1420 	mov	r3,a
      002557 0C               [12] 1421 	inc	r4
      002558 BC 00 01         [24] 1422 	cjne	r4,#0x00,00116$
      00255B 0B               [12] 1423 	inc	r3
      00255C                       1424 00116$:
      00255C 85 2A 82         [24] 1425 	mov	dpl,_store_in_buffer_sloc1_1_0
      00255F 85 2B 83         [24] 1426 	mov	dph,(_store_in_buffer_sloc1_1_0 + 1)
      002562 85 2C F0         [24] 1427 	mov	b,(_store_in_buffer_sloc1_1_0 + 2)
      002565 EC               [12] 1428 	mov	a,r4
      002566 12 31 8E         [24] 1429 	lcall	__gptrput
      002569 A3               [24] 1430 	inc	dptr
      00256A EB               [12] 1431 	mov	a,r3
      00256B 12 31 8E         [24] 1432 	lcall	__gptrput
                                   1433 ;	src/main.c:175: if (is_alphabet_char(c))
      00256E 8A 82            [24] 1434 	mov	dpl,r2
      002570 C0 07            [24] 1435 	push	ar7
      002572 C0 06            [24] 1436 	push	ar6
      002574 C0 05            [24] 1437 	push	ar5
      002576 12 20 94         [24] 1438 	lcall	_is_alphabet_char
      002579 E5 82            [12] 1439 	mov	a,dpl
      00257B D0 05            [24] 1440 	pop	ar5
      00257D D0 06            [24] 1441 	pop	ar6
      00257F D0 07            [24] 1442 	pop	ar7
      002581 60 2A            [24] 1443 	jz	00105$
                                   1444 ;	src/main.c:177: buffer->alphabet_chars++;
      002583 74 02            [12] 1445 	mov	a,#0x02
      002585 2D               [12] 1446 	add	a,r5
      002586 FD               [12] 1447 	mov	r5,a
      002587 E4               [12] 1448 	clr	a
      002588 3E               [12] 1449 	addc	a,r6
      002589 FE               [12] 1450 	mov	r6,a
      00258A 8D 82            [24] 1451 	mov	dpl,r5
      00258C 8E 83            [24] 1452 	mov	dph,r6
      00258E 8F F0            [24] 1453 	mov	b,r7
      002590 12 3D E8         [24] 1454 	lcall	__gptrget
      002593 FB               [12] 1455 	mov	r3,a
      002594 A3               [24] 1456 	inc	dptr
      002595 12 3D E8         [24] 1457 	lcall	__gptrget
      002598 FC               [12] 1458 	mov	r4,a
      002599 0B               [12] 1459 	inc	r3
      00259A BB 00 01         [24] 1460 	cjne	r3,#0x00,00118$
      00259D 0C               [12] 1461 	inc	r4
      00259E                       1462 00118$:
      00259E 8D 82            [24] 1463 	mov	dpl,r5
      0025A0 8E 83            [24] 1464 	mov	dph,r6
      0025A2 8F F0            [24] 1465 	mov	b,r7
      0025A4 EB               [12] 1466 	mov	a,r3
      0025A5 12 31 8E         [24] 1467 	lcall	__gptrput
      0025A8 A3               [24] 1468 	inc	dptr
      0025A9 EC               [12] 1469 	mov	a,r4
                                   1470 ;	src/main.c:180: }
      0025AA 02 31 8E         [24] 1471 	ljmp	__gptrput
      0025AD                       1472 00105$:
      0025AD 22               [24] 1473 	ret
                                   1474 ;------------------------------------------------------------
                                   1475 ;Allocation info for local variables in function 'command_header'
                                   1476 ;------------------------------------------------------------
                                   1477 ;command_string            Allocated with name '_command_header_command_string_65536_97'
                                   1478 ;------------------------------------------------------------
                                   1479 ;	src/main.c:182: void command_header(char *command_string)
                                   1480 ;	-----------------------------------------
                                   1481 ;	 function command_header
                                   1482 ;	-----------------------------------------
      0025AE                       1483 _command_header:
      0025AE AF F0            [24] 1484 	mov	r7,b
      0025B0 AE 83            [24] 1485 	mov	r6,dph
      0025B2 E5 82            [12] 1486 	mov	a,dpl
      0025B4 90 00 3A         [24] 1487 	mov	dptr,#_command_header_command_string_65536_97
      0025B7 F0               [24] 1488 	movx	@dptr,a
      0025B8 EE               [12] 1489 	mov	a,r6
      0025B9 A3               [24] 1490 	inc	dptr
      0025BA F0               [24] 1491 	movx	@dptr,a
      0025BB EF               [12] 1492 	mov	a,r7
      0025BC A3               [24] 1493 	inc	dptr
      0025BD F0               [24] 1494 	movx	@dptr,a
                                   1495 ;	src/main.c:184: printf("\r\n        %s", command_string);
      0025BE 90 00 3A         [24] 1496 	mov	dptr,#_command_header_command_string_65536_97
      0025C1 E0               [24] 1497 	movx	a,@dptr
      0025C2 C0 E0            [24] 1498 	push	acc
      0025C4 A3               [24] 1499 	inc	dptr
      0025C5 E0               [24] 1500 	movx	a,@dptr
      0025C6 C0 E0            [24] 1501 	push	acc
      0025C8 A3               [24] 1502 	inc	dptr
      0025C9 E0               [24] 1503 	movx	a,@dptr
      0025CA C0 E0            [24] 1504 	push	acc
      0025CC 74 EE            [12] 1505 	mov	a,#___str_6
      0025CE C0 E0            [24] 1506 	push	acc
      0025D0 74 3E            [12] 1507 	mov	a,#(___str_6 >> 8)
      0025D2 C0 E0            [24] 1508 	push	acc
      0025D4 74 80            [12] 1509 	mov	a,#0x80
      0025D6 C0 E0            [24] 1510 	push	acc
      0025D8 12 33 BC         [24] 1511 	lcall	_printf
      0025DB E5 81            [12] 1512 	mov	a,sp
      0025DD 24 FA            [12] 1513 	add	a,#0xfa
      0025DF F5 81            [12] 1514 	mov	sp,a
                                   1515 ;	src/main.c:185: printf("\r\n------------------------------");   
      0025E1 74 FB            [12] 1516 	mov	a,#___str_7
      0025E3 C0 E0            [24] 1517 	push	acc
      0025E5 74 3E            [12] 1518 	mov	a,#(___str_7 >> 8)
      0025E7 C0 E0            [24] 1519 	push	acc
      0025E9 74 80            [12] 1520 	mov	a,#0x80
      0025EB C0 E0            [24] 1521 	push	acc
      0025ED 12 33 BC         [24] 1522 	lcall	_printf
      0025F0 15 81            [12] 1523 	dec	sp
      0025F2 15 81            [12] 1524 	dec	sp
      0025F4 15 81            [12] 1525 	dec	sp
                                   1526 ;	src/main.c:186: }
      0025F6 22               [24] 1527 	ret
                                   1528 ;------------------------------------------------------------
                                   1529 ;Allocation info for local variables in function 'heap_report'
                                   1530 ;------------------------------------------------------------
                                   1531 ;sloc0                     Allocated with name '_heap_report_sloc0_1_0'
                                   1532 ;sloc1                     Allocated with name '_heap_report_sloc1_1_0'
                                   1533 ;sloc2                     Allocated with name '_heap_report_sloc2_1_0'
                                   1534 ;sloc3                     Allocated with name '_heap_report_sloc3_1_0'
                                   1535 ;sloc4                     Allocated with name '_heap_report_sloc4_1_0'
                                   1536 ;total_heap_sz             Allocated with name '_heap_report_total_heap_sz_65537_100'
                                   1537 ;i                         Allocated with name '_heap_report_i_131073_101'
                                   1538 ;------------------------------------------------------------
                                   1539 ;	src/main.c:190: void heap_report()
                                   1540 ;	-----------------------------------------
                                   1541 ;	 function heap_report
                                   1542 ;	-----------------------------------------
      0025F7                       1543 _heap_report:
                                   1544 ;	src/main.c:192: command_header("HEAP REPORT");
      0025F7 90 3F 1C         [24] 1545 	mov	dptr,#___str_8
      0025FA 75 F0 80         [24] 1546 	mov	b,#0x80
      0025FD 12 25 AE         [24] 1547 	lcall	_command_header
                                   1548 ;	src/main.c:193: size_t total_heap_sz = 0;
      002600 90 00 3D         [24] 1549 	mov	dptr,#_heap_report_total_heap_sz_65537_100
      002603 E4               [12] 1550 	clr	a
      002604 F0               [24] 1551 	movx	@dptr,a
      002605 A3               [24] 1552 	inc	dptr
      002606 F0               [24] 1553 	movx	@dptr,a
                                   1554 ;	src/main.c:194: for(int i = 0; i < BUFFER_COUNT; i++)
      002607 7E 00            [12] 1555 	mov	r6,#0x00
      002609 7F 00            [12] 1556 	mov	r7,#0x00
      00260B                       1557 00105$:
      00260B C3               [12] 1558 	clr	c
      00260C EE               [12] 1559 	mov	a,r6
      00260D 94 06            [12] 1560 	subb	a,#0x06
      00260F EF               [12] 1561 	mov	a,r7
      002610 64 80            [12] 1562 	xrl	a,#0x80
      002612 94 80            [12] 1563 	subb	a,#0x80
      002614 40 03            [24] 1564 	jc	00122$
      002616 02 26 FE         [24] 1565 	ljmp	00103$
      002619                       1566 00122$:
                                   1567 ;	src/main.c:196: if(buffers[i].buffer != NULL) {
      002619 8E 04            [24] 1568 	mov	ar4,r6
      00261B EF               [12] 1569 	mov	a,r7
      00261C C4               [12] 1570 	swap	a
      00261D 03               [12] 1571 	rr	a
      00261E 54 F8            [12] 1572 	anl	a,#0xf8
      002620 CC               [12] 1573 	xch	a,r4
      002621 C4               [12] 1574 	swap	a
      002622 03               [12] 1575 	rr	a
      002623 CC               [12] 1576 	xch	a,r4
      002624 6C               [12] 1577 	xrl	a,r4
      002625 CC               [12] 1578 	xch	a,r4
      002626 54 F8            [12] 1579 	anl	a,#0xf8
      002628 CC               [12] 1580 	xch	a,r4
      002629 6C               [12] 1581 	xrl	a,r4
      00262A FD               [12] 1582 	mov	r5,a
      00262B EC               [12] 1583 	mov	a,r4
      00262C 24 01            [12] 1584 	add	a,#_buffers
      00262E F5 82            [12] 1585 	mov	dpl,a
      002630 ED               [12] 1586 	mov	a,r5
      002631 34 00            [12] 1587 	addc	a,#(_buffers >> 8)
      002633 F5 83            [12] 1588 	mov	dph,a
      002635 E0               [24] 1589 	movx	a,@dptr
      002636 FA               [12] 1590 	mov	r2,a
      002637 A3               [24] 1591 	inc	dptr
      002638 E0               [24] 1592 	movx	a,@dptr
      002639 FB               [12] 1593 	mov	r3,a
      00263A 4A               [12] 1594 	orl	a,r2
      00263B 70 03            [24] 1595 	jnz	00123$
      00263D 02 26 F6         [24] 1596 	ljmp	00106$
      002640                       1597 00123$:
                                   1598 ;	src/main.c:203: buffers[i].size - buffers[i].curr_available_char);
      002640 EC               [12] 1599 	mov	a,r4
      002641 24 01            [12] 1600 	add	a,#_buffers
      002643 FC               [12] 1601 	mov	r4,a
      002644 ED               [12] 1602 	mov	a,r5
      002645 34 00            [12] 1603 	addc	a,#(_buffers >> 8)
      002647 FD               [12] 1604 	mov	r5,a
      002648 74 04            [12] 1605 	mov	a,#0x04
      00264A 2C               [12] 1606 	add	a,r4
      00264B F5 2D            [12] 1607 	mov	_heap_report_sloc0_1_0,a
      00264D E4               [12] 1608 	clr	a
      00264E 3D               [12] 1609 	addc	a,r5
      00264F F5 2E            [12] 1610 	mov	(_heap_report_sloc0_1_0 + 1),a
      002651 85 2D 82         [24] 1611 	mov	dpl,_heap_report_sloc0_1_0
      002654 85 2E 83         [24] 1612 	mov	dph,(_heap_report_sloc0_1_0 + 1)
      002657 E0               [24] 1613 	movx	a,@dptr
      002658 F8               [12] 1614 	mov	r0,a
      002659 A3               [24] 1615 	inc	dptr
      00265A E0               [24] 1616 	movx	a,@dptr
      00265B F9               [12] 1617 	mov	r1,a
      00265C 74 06            [12] 1618 	mov	a,#0x06
      00265E 2C               [12] 1619 	add	a,r4
      00265F F5 82            [12] 1620 	mov	dpl,a
      002661 E4               [12] 1621 	clr	a
      002662 3D               [12] 1622 	addc	a,r5
      002663 F5 83            [12] 1623 	mov	dph,a
      002665 E0               [24] 1624 	movx	a,@dptr
      002666 FA               [12] 1625 	mov	r2,a
      002667 A3               [24] 1626 	inc	dptr
      002668 E0               [24] 1627 	movx	a,@dptr
      002669 FB               [12] 1628 	mov	r3,a
      00266A E8               [12] 1629 	mov	a,r0
      00266B C3               [12] 1630 	clr	c
      00266C 9A               [12] 1631 	subb	a,r2
      00266D F5 2F            [12] 1632 	mov	_heap_report_sloc1_1_0,a
      00266F E9               [12] 1633 	mov	a,r1
      002670 9B               [12] 1634 	subb	a,r3
      002671 F5 30            [12] 1635 	mov	(_heap_report_sloc1_1_0 + 1),a
                                   1636 ;	src/main.c:202: buffers[i].alphabet_chars,
      002673 8C 82            [24] 1637 	mov	dpl,r4
      002675 8D 83            [24] 1638 	mov	dph,r5
      002677 A3               [24] 1639 	inc	dptr
      002678 A3               [24] 1640 	inc	dptr
      002679 E0               [24] 1641 	movx	a,@dptr
      00267A F5 31            [12] 1642 	mov	_heap_report_sloc2_1_0,a
      00267C A3               [24] 1643 	inc	dptr
      00267D E0               [24] 1644 	movx	a,@dptr
      00267E F5 32            [12] 1645 	mov	(_heap_report_sloc2_1_0 + 1),a
                                   1646 ;	src/main.c:200: buffers[i].buffer + buffers[i].size, 
      002680 8C 82            [24] 1647 	mov	dpl,r4
      002682 8D 83            [24] 1648 	mov	dph,r5
      002684 E0               [24] 1649 	movx	a,@dptr
      002685 F5 33            [12] 1650 	mov	_heap_report_sloc3_1_0,a
      002687 A3               [24] 1651 	inc	dptr
      002688 E0               [24] 1652 	movx	a,@dptr
      002689 F5 34            [12] 1653 	mov	(_heap_report_sloc3_1_0 + 1),a
      00268B E8               [12] 1654 	mov	a,r0
      00268C 25 33            [12] 1655 	add	a,_heap_report_sloc3_1_0
      00268E FA               [12] 1656 	mov	r2,a
      00268F E9               [12] 1657 	mov	a,r1
      002690 35 34            [12] 1658 	addc	a,(_heap_report_sloc3_1_0 + 1)
      002692 FB               [12] 1659 	mov	r3,a
      002693 8A 35            [24] 1660 	mov	_heap_report_sloc4_1_0,r2
      002695 8B 36            [24] 1661 	mov	(_heap_report_sloc4_1_0 + 1),r3
      002697 75 37 00         [24] 1662 	mov	(_heap_report_sloc4_1_0 + 2),#0x00
                                   1663 ;	src/main.c:199: buffers[i].buffer, 
      00269A AC 33            [24] 1664 	mov	r4,_heap_report_sloc3_1_0
      00269C AD 34            [24] 1665 	mov	r5,(_heap_report_sloc3_1_0 + 1)
      00269E 7B 00            [12] 1666 	mov	r3,#0x00
                                   1667 ;	src/main.c:197: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
      0026A0 C0 07            [24] 1668 	push	ar7
      0026A2 C0 06            [24] 1669 	push	ar6
      0026A4 C0 2F            [24] 1670 	push	_heap_report_sloc1_1_0
      0026A6 C0 30            [24] 1671 	push	(_heap_report_sloc1_1_0 + 1)
      0026A8 C0 31            [24] 1672 	push	_heap_report_sloc2_1_0
      0026AA C0 32            [24] 1673 	push	(_heap_report_sloc2_1_0 + 1)
      0026AC C0 00            [24] 1674 	push	ar0
      0026AE C0 01            [24] 1675 	push	ar1
      0026B0 C0 35            [24] 1676 	push	_heap_report_sloc4_1_0
      0026B2 C0 36            [24] 1677 	push	(_heap_report_sloc4_1_0 + 1)
      0026B4 C0 37            [24] 1678 	push	(_heap_report_sloc4_1_0 + 2)
      0026B6 C0 04            [24] 1679 	push	ar4
      0026B8 C0 05            [24] 1680 	push	ar5
      0026BA C0 03            [24] 1681 	push	ar3
      0026BC C0 06            [24] 1682 	push	ar6
      0026BE C0 07            [24] 1683 	push	ar7
      0026C0 74 28            [12] 1684 	mov	a,#___str_9
      0026C2 C0 E0            [24] 1685 	push	acc
      0026C4 74 3F            [12] 1686 	mov	a,#(___str_9 >> 8)
      0026C6 C0 E0            [24] 1687 	push	acc
      0026C8 74 80            [12] 1688 	mov	a,#0x80
      0026CA C0 E0            [24] 1689 	push	acc
      0026CC 12 33 BC         [24] 1690 	lcall	_printf
      0026CF E5 81            [12] 1691 	mov	a,sp
      0026D1 24 EF            [12] 1692 	add	a,#0xef
      0026D3 F5 81            [12] 1693 	mov	sp,a
      0026D5 D0 06            [24] 1694 	pop	ar6
      0026D7 D0 07            [24] 1695 	pop	ar7
                                   1696 ;	src/main.c:204: total_heap_sz += buffers[i].size; 
      0026D9 85 2D 82         [24] 1697 	mov	dpl,_heap_report_sloc0_1_0
      0026DC 85 2E 83         [24] 1698 	mov	dph,(_heap_report_sloc0_1_0 + 1)
      0026DF E0               [24] 1699 	movx	a,@dptr
      0026E0 FC               [12] 1700 	mov	r4,a
      0026E1 A3               [24] 1701 	inc	dptr
      0026E2 E0               [24] 1702 	movx	a,@dptr
      0026E3 FD               [12] 1703 	mov	r5,a
      0026E4 90 00 3D         [24] 1704 	mov	dptr,#_heap_report_total_heap_sz_65537_100
      0026E7 E0               [24] 1705 	movx	a,@dptr
      0026E8 FA               [12] 1706 	mov	r2,a
      0026E9 A3               [24] 1707 	inc	dptr
      0026EA E0               [24] 1708 	movx	a,@dptr
      0026EB FB               [12] 1709 	mov	r3,a
      0026EC 90 00 3D         [24] 1710 	mov	dptr,#_heap_report_total_heap_sz_65537_100
      0026EF EC               [12] 1711 	mov	a,r4
      0026F0 2A               [12] 1712 	add	a,r2
      0026F1 F0               [24] 1713 	movx	@dptr,a
      0026F2 ED               [12] 1714 	mov	a,r5
      0026F3 3B               [12] 1715 	addc	a,r3
      0026F4 A3               [24] 1716 	inc	dptr
      0026F5 F0               [24] 1717 	movx	@dptr,a
      0026F6                       1718 00106$:
                                   1719 ;	src/main.c:194: for(int i = 0; i < BUFFER_COUNT; i++)
      0026F6 0E               [12] 1720 	inc	r6
      0026F7 BE 00 01         [24] 1721 	cjne	r6,#0x00,00124$
      0026FA 0F               [12] 1722 	inc	r7
      0026FB                       1723 00124$:
      0026FB 02 26 0B         [24] 1724 	ljmp	00105$
      0026FE                       1725 00103$:
                                   1726 ;	src/main.c:207: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      0026FE 90 00 3D         [24] 1727 	mov	dptr,#_heap_report_total_heap_sz_65537_100
      002701 E0               [24] 1728 	movx	a,@dptr
      002702 C0 E0            [24] 1729 	push	acc
      002704 A3               [24] 1730 	inc	dptr
      002705 E0               [24] 1731 	movx	a,@dptr
      002706 C0 E0            [24] 1732 	push	acc
      002708 74 46            [12] 1733 	mov	a,#(___sdcc_heap + 0x0400)
      00270A C0 E0            [24] 1734 	push	acc
      00270C 74 04            [12] 1735 	mov	a,#((___sdcc_heap + 0x0400) >> 8)
      00270E C0 E0            [24] 1736 	push	acc
      002710 E4               [12] 1737 	clr	a
      002711 C0 E0            [24] 1738 	push	acc
      002713 74 46            [12] 1739 	mov	a,#___sdcc_heap
      002715 C0 E0            [24] 1740 	push	acc
      002717 74 00            [12] 1741 	mov	a,#(___sdcc_heap >> 8)
      002719 C0 E0            [24] 1742 	push	acc
      00271B E4               [12] 1743 	clr	a
      00271C C0 E0            [24] 1744 	push	acc
      00271E 74 C5            [12] 1745 	mov	a,#___str_5
      002720 C0 E0            [24] 1746 	push	acc
      002722 74 3E            [12] 1747 	mov	a,#(___str_5 >> 8)
      002724 C0 E0            [24] 1748 	push	acc
      002726 74 80            [12] 1749 	mov	a,#0x80
      002728 C0 E0            [24] 1750 	push	acc
      00272A 12 33 BC         [24] 1751 	lcall	_printf
      00272D E5 81            [12] 1752 	mov	a,sp
      00272F 24 F5            [12] 1753 	add	a,#0xf5
      002731 F5 81            [12] 1754 	mov	sp,a
                                   1755 ;	src/main.c:208: printf("\r\n");
      002733 74 8A            [12] 1756 	mov	a,#___str_10
      002735 C0 E0            [24] 1757 	push	acc
      002737 74 3F            [12] 1758 	mov	a,#(___str_10 >> 8)
      002739 C0 E0            [24] 1759 	push	acc
      00273B 74 80            [12] 1760 	mov	a,#0x80
      00273D C0 E0            [24] 1761 	push	acc
      00273F 12 33 BC         [24] 1762 	lcall	_printf
      002742 15 81            [12] 1763 	dec	sp
      002744 15 81            [12] 1764 	dec	sp
      002746 15 81            [12] 1765 	dec	sp
                                   1766 ;	src/main.c:209: }
      002748 22               [24] 1767 	ret
                                   1768 ;------------------------------------------------------------
                                   1769 ;Allocation info for local variables in function 'get_user_buffer_sz'
                                   1770 ;------------------------------------------------------------
                                   1771 ;maximum_sz                Allocated with name '_get_user_buffer_sz_maximum_sz_65536_104'
                                   1772 ;user_buffer_size          Allocated with name '_get_user_buffer_sz_user_buffer_size_65536_105'
                                   1773 ;------------------------------------------------------------
                                   1774 ;	src/main.c:213: size_t get_user_buffer_sz(size_t maximum_sz)
                                   1775 ;	-----------------------------------------
                                   1776 ;	 function get_user_buffer_sz
                                   1777 ;	-----------------------------------------
      002749                       1778 _get_user_buffer_sz:
      002749 AF 83            [24] 1779 	mov	r7,dph
      00274B E5 82            [12] 1780 	mov	a,dpl
      00274D 90 00 3F         [24] 1781 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_104
      002750 F0               [24] 1782 	movx	@dptr,a
      002751 EF               [12] 1783 	mov	a,r7
      002752 A3               [24] 1784 	inc	dptr
      002753 F0               [24] 1785 	movx	@dptr,a
                                   1786 ;	src/main.c:216: do {
      002754 90 00 3F         [24] 1787 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_104
      002757 E0               [24] 1788 	movx	a,@dptr
      002758 FE               [12] 1789 	mov	r6,a
      002759 A3               [24] 1790 	inc	dptr
      00275A E0               [24] 1791 	movx	a,@dptr
      00275B FF               [12] 1792 	mov	r7,a
      00275C                       1793 00103$:
                                   1794 ;	src/main.c:217: printf("\r\nPlease enter a valid buffer size that is divisible by 32 [64,%zu]: ", maximum_sz);
      00275C C0 07            [24] 1795 	push	ar7
      00275E C0 06            [24] 1796 	push	ar6
      002760 C0 06            [24] 1797 	push	ar6
      002762 C0 07            [24] 1798 	push	ar7
      002764 74 8D            [12] 1799 	mov	a,#___str_11
      002766 C0 E0            [24] 1800 	push	acc
      002768 74 3F            [12] 1801 	mov	a,#(___str_11 >> 8)
      00276A C0 E0            [24] 1802 	push	acc
      00276C 74 80            [12] 1803 	mov	a,#0x80
      00276E C0 E0            [24] 1804 	push	acc
      002770 12 33 BC         [24] 1805 	lcall	_printf
      002773 E5 81            [12] 1806 	mov	a,sp
      002775 24 FB            [12] 1807 	add	a,#0xfb
      002777 F5 81            [12] 1808 	mov	sp,a
                                   1809 ;	src/main.c:218: get_string();
      002779 12 2D AD         [24] 1810 	lcall	_get_string
                                   1811 ;	src/main.c:219: user_buffer_size = (size_t) atoi(get_input_buffer()); //TODO: replace with own implementation of atoi that respects the size_t
      00277C 12 2D A6         [24] 1812 	lcall	_get_input_buffer
      00277F 12 30 6A         [24] 1813 	lcall	_atoi
      002782 AC 82            [24] 1814 	mov	r4,dpl
      002784 AD 83            [24] 1815 	mov	r5,dph
      002786 D0 06            [24] 1816 	pop	ar6
      002788 D0 07            [24] 1817 	pop	ar7
                                   1818 ;	src/main.c:220: } while ((user_buffer_size > maximum_sz)
      00278A C3               [12] 1819 	clr	c
      00278B EE               [12] 1820 	mov	a,r6
      00278C 9C               [12] 1821 	subb	a,r4
      00278D EF               [12] 1822 	mov	a,r7
      00278E 9D               [12] 1823 	subb	a,r5
                                   1824 ;	src/main.c:221: || (user_buffer_size < USER_BUFFER_MIN)
      00278F 40 CB            [24] 1825 	jc	00103$
      002791 EC               [12] 1826 	mov	a,r4
      002792 94 40            [12] 1827 	subb	a,#0x40
      002794 ED               [12] 1828 	mov	a,r5
      002795 94 00            [12] 1829 	subb	a,#0x00
      002797 40 C3            [24] 1830 	jc	00103$
                                   1831 ;	src/main.c:222: || (MODULE_32(user_buffer_size) != 0));
      002799 EC               [12] 1832 	mov	a,r4
      00279A 54 1F            [12] 1833 	anl	a,#0x1f
      00279C 70 BE            [24] 1834 	jnz	00103$
                                   1835 ;	src/main.c:223: return user_buffer_size;
      00279E 8C 82            [24] 1836 	mov	dpl,r4
      0027A0 8D 83            [24] 1837 	mov	dph,r5
                                   1838 ;	src/main.c:224: }
      0027A2 22               [24] 1839 	ret
                                   1840 ;------------------------------------------------------------
                                   1841 ;Allocation info for local variables in function 'free_all_buffers'
                                   1842 ;------------------------------------------------------------
                                   1843 ;i                         Allocated with name '_free_all_buffers_i_131072_108'
                                   1844 ;------------------------------------------------------------
                                   1845 ;	src/main.c:227: void free_all_buffers()
                                   1846 ;	-----------------------------------------
                                   1847 ;	 function free_all_buffers
                                   1848 ;	-----------------------------------------
      0027A3                       1849 _free_all_buffers:
                                   1850 ;	src/main.c:229: for(int i = 0; i < BUFFER_COUNT; i++)
      0027A3 7E 00            [12] 1851 	mov	r6,#0x00
      0027A5 7F 00            [12] 1852 	mov	r7,#0x00
      0027A7                       1853 00105$:
      0027A7 C3               [12] 1854 	clr	c
      0027A8 EE               [12] 1855 	mov	a,r6
      0027A9 94 06            [12] 1856 	subb	a,#0x06
      0027AB EF               [12] 1857 	mov	a,r7
      0027AC 64 80            [12] 1858 	xrl	a,#0x80
      0027AE 94 80            [12] 1859 	subb	a,#0x80
      0027B0 50 73            [24] 1860 	jnc	00107$
                                   1861 ;	src/main.c:231: if (buffers[i].buffer != NULL)
      0027B2 8E 04            [24] 1862 	mov	ar4,r6
      0027B4 EF               [12] 1863 	mov	a,r7
      0027B5 C4               [12] 1864 	swap	a
      0027B6 03               [12] 1865 	rr	a
      0027B7 54 F8            [12] 1866 	anl	a,#0xf8
      0027B9 CC               [12] 1867 	xch	a,r4
      0027BA C4               [12] 1868 	swap	a
      0027BB 03               [12] 1869 	rr	a
      0027BC CC               [12] 1870 	xch	a,r4
      0027BD 6C               [12] 1871 	xrl	a,r4
      0027BE CC               [12] 1872 	xch	a,r4
      0027BF 54 F8            [12] 1873 	anl	a,#0xf8
      0027C1 CC               [12] 1874 	xch	a,r4
      0027C2 6C               [12] 1875 	xrl	a,r4
      0027C3 FD               [12] 1876 	mov	r5,a
      0027C4 EC               [12] 1877 	mov	a,r4
      0027C5 24 01            [12] 1878 	add	a,#_buffers
      0027C7 F5 82            [12] 1879 	mov	dpl,a
      0027C9 ED               [12] 1880 	mov	a,r5
      0027CA 34 00            [12] 1881 	addc	a,#(_buffers >> 8)
      0027CC F5 83            [12] 1882 	mov	dph,a
      0027CE E0               [24] 1883 	movx	a,@dptr
      0027CF FC               [12] 1884 	mov	r4,a
      0027D0 A3               [24] 1885 	inc	dptr
      0027D1 E0               [24] 1886 	movx	a,@dptr
      0027D2 FD               [12] 1887 	mov	r5,a
      0027D3 4C               [12] 1888 	orl	a,r4
      0027D4 60 13            [24] 1889 	jz	00102$
                                   1890 ;	src/main.c:233: free(buffers[i].buffer);
      0027D6 7B 00            [12] 1891 	mov	r3,#0x00
      0027D8 8C 82            [24] 1892 	mov	dpl,r4
      0027DA 8D 83            [24] 1893 	mov	dph,r5
      0027DC 8B F0            [24] 1894 	mov	b,r3
      0027DE C0 07            [24] 1895 	push	ar7
      0027E0 C0 06            [24] 1896 	push	ar6
      0027E2 12 2E 77         [24] 1897 	lcall	_free
      0027E5 D0 06            [24] 1898 	pop	ar6
      0027E7 D0 07            [24] 1899 	pop	ar7
      0027E9                       1900 00102$:
                                   1901 ;	src/main.c:235: buffers[i].buffer = NULL;
      0027E9 8E 04            [24] 1902 	mov	ar4,r6
      0027EB EF               [12] 1903 	mov	a,r7
      0027EC C4               [12] 1904 	swap	a
      0027ED 03               [12] 1905 	rr	a
      0027EE 54 F8            [12] 1906 	anl	a,#0xf8
      0027F0 CC               [12] 1907 	xch	a,r4
      0027F1 C4               [12] 1908 	swap	a
      0027F2 03               [12] 1909 	rr	a
      0027F3 CC               [12] 1910 	xch	a,r4
      0027F4 6C               [12] 1911 	xrl	a,r4
      0027F5 CC               [12] 1912 	xch	a,r4
      0027F6 54 F8            [12] 1913 	anl	a,#0xf8
      0027F8 CC               [12] 1914 	xch	a,r4
      0027F9 6C               [12] 1915 	xrl	a,r4
      0027FA FD               [12] 1916 	mov	r5,a
      0027FB EC               [12] 1917 	mov	a,r4
      0027FC 24 01            [12] 1918 	add	a,#_buffers
      0027FE F5 82            [12] 1919 	mov	dpl,a
      002800 ED               [12] 1920 	mov	a,r5
      002801 34 00            [12] 1921 	addc	a,#(_buffers >> 8)
      002803 F5 83            [12] 1922 	mov	dph,a
      002805 E4               [12] 1923 	clr	a
      002806 F0               [24] 1924 	movx	@dptr,a
      002807 A3               [24] 1925 	inc	dptr
      002808 F0               [24] 1926 	movx	@dptr,a
                                   1927 ;	src/main.c:236: buffers[i].size = 0; 
      002809 EC               [12] 1928 	mov	a,r4
      00280A 24 01            [12] 1929 	add	a,#_buffers
      00280C FC               [12] 1930 	mov	r4,a
      00280D ED               [12] 1931 	mov	a,r5
      00280E 34 00            [12] 1932 	addc	a,#(_buffers >> 8)
      002810 FD               [12] 1933 	mov	r5,a
      002811 8C 82            [24] 1934 	mov	dpl,r4
      002813 8D 83            [24] 1935 	mov	dph,r5
      002815 A3               [24] 1936 	inc	dptr
      002816 A3               [24] 1937 	inc	dptr
      002817 A3               [24] 1938 	inc	dptr
      002818 A3               [24] 1939 	inc	dptr
      002819 E4               [12] 1940 	clr	a
      00281A F0               [24] 1941 	movx	@dptr,a
      00281B A3               [24] 1942 	inc	dptr
      00281C F0               [24] 1943 	movx	@dptr,a
                                   1944 ;	src/main.c:229: for(int i = 0; i < BUFFER_COUNT; i++)
      00281D 0E               [12] 1945 	inc	r6
      00281E BE 00 01         [24] 1946 	cjne	r6,#0x00,00124$
      002821 0F               [12] 1947 	inc	r7
      002822                       1948 00124$:
      002822 02 27 A7         [24] 1949 	ljmp	00105$
      002825                       1950 00107$:
                                   1951 ;	src/main.c:238: }
      002825 22               [24] 1952 	ret
                                   1953 ;------------------------------------------------------------
                                   1954 ;Allocation info for local variables in function 'qmark_command_handler'
                                   1955 ;------------------------------------------------------------
                                   1956 ;sloc0                     Allocated with name '_qmark_command_handler_sloc0_1_0'
                                   1957 ;chars_received_since_last_qmark Allocated with name '_qmark_command_handler_chars_received_since_last_qmark_65537_112'
                                   1958 ;curr_output_char          Allocated with name '_qmark_command_handler_curr_output_char_65538_113'
                                   1959 ;i                         Allocated with name '_qmark_command_handler_i_131074_114'
                                   1960 ;curr_buffer_char          Allocated with name '_qmark_command_handler_curr_buffer_char_196610_115'
                                   1961 ;curr_char                 Allocated with name '_qmark_command_handler_curr_char_196610_115'
                                   1962 ;------------------------------------------------------------
                                   1963 ;	src/main.c:242: void qmark_command_handler()
                                   1964 ;	-----------------------------------------
                                   1965 ;	 function qmark_command_handler
                                   1966 ;	-----------------------------------------
      002826                       1967 _qmark_command_handler:
                                   1968 ;	src/main.c:244: heap_report();
      002826 12 25 F7         [24] 1969 	lcall	_heap_report
                                   1970 ;	src/main.c:245: size_t chars_received_since_last_qmark = get_char_count();
      002829 12 2E 63         [24] 1971 	lcall	_get_char_count
      00282C AE 82            [24] 1972 	mov	r6,dpl
      00282E AF 83            [24] 1973 	mov	r7,dph
                                   1974 ;	src/main.c:246: reset_char_count();
      002830 C0 07            [24] 1975 	push	ar7
      002832 C0 06            [24] 1976 	push	ar6
      002834 12 2E 6F         [24] 1977 	lcall	_reset_char_count
      002837 D0 06            [24] 1978 	pop	ar6
      002839 D0 07            [24] 1979 	pop	ar7
                                   1980 ;	src/main.c:247: printf("\r\n Received %zu chars since last invocation of ?", chars_received_since_last_qmark);
      00283B C0 06            [24] 1981 	push	ar6
      00283D C0 07            [24] 1982 	push	ar7
      00283F 74 D3            [12] 1983 	mov	a,#___str_12
      002841 C0 E0            [24] 1984 	push	acc
      002843 74 3F            [12] 1985 	mov	a,#(___str_12 >> 8)
      002845 C0 E0            [24] 1986 	push	acc
      002847 74 80            [12] 1987 	mov	a,#0x80
      002849 C0 E0            [24] 1988 	push	acc
      00284B 12 33 BC         [24] 1989 	lcall	_printf
      00284E E5 81            [12] 1990 	mov	a,sp
      002850 24 FB            [12] 1991 	add	a,#0xfb
      002852 F5 81            [12] 1992 	mov	sp,a
                                   1993 ;	src/main.c:248: size_t curr_output_char = 0;
      002854 90 00 41         [24] 1994 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_113
      002857 E4               [12] 1995 	clr	a
      002858 F0               [24] 1996 	movx	@dptr,a
      002859 A3               [24] 1997 	inc	dptr
      00285A F0               [24] 1998 	movx	@dptr,a
                                   1999 ;	src/main.c:250: for(int i = 0; i < 2; i++)
      00285B 7E 00            [12] 2000 	mov	r6,#0x00
      00285D 7F 00            [12] 2001 	mov	r7,#0x00
      00285F                       2002 00108$:
      00285F C3               [12] 2003 	clr	c
      002860 EE               [12] 2004 	mov	a,r6
      002861 94 02            [12] 2005 	subb	a,#0x02
      002863 EF               [12] 2006 	mov	a,r7
      002864 64 80            [12] 2007 	xrl	a,#0x80
      002866 94 80            [12] 2008 	subb	a,#0x80
      002868 40 03            [24] 2009 	jc	00134$
      00286A 02 29 E2         [24] 2010 	ljmp	00106$
      00286D                       2011 00134$:
                                   2012 ;	src/main.c:253: char curr_char = buffers[i].buffer[0];
      00286D 8E 04            [24] 2013 	mov	ar4,r6
      00286F EF               [12] 2014 	mov	a,r7
      002870 C4               [12] 2015 	swap	a
      002871 03               [12] 2016 	rr	a
      002872 54 F8            [12] 2017 	anl	a,#0xf8
      002874 CC               [12] 2018 	xch	a,r4
      002875 C4               [12] 2019 	swap	a
      002876 03               [12] 2020 	rr	a
      002877 CC               [12] 2021 	xch	a,r4
      002878 6C               [12] 2022 	xrl	a,r4
      002879 CC               [12] 2023 	xch	a,r4
      00287A 54 F8            [12] 2024 	anl	a,#0xf8
      00287C CC               [12] 2025 	xch	a,r4
      00287D 6C               [12] 2026 	xrl	a,r4
      00287E FD               [12] 2027 	mov	r5,a
      00287F EC               [12] 2028 	mov	a,r4
      002880 24 01            [12] 2029 	add	a,#_buffers
      002882 FC               [12] 2030 	mov	r4,a
      002883 ED               [12] 2031 	mov	a,r5
      002884 34 00            [12] 2032 	addc	a,#(_buffers >> 8)
      002886 FD               [12] 2033 	mov	r5,a
      002887 8C 82            [24] 2034 	mov	dpl,r4
      002889 8D 83            [24] 2035 	mov	dph,r5
      00288B E0               [24] 2036 	movx	a,@dptr
      00288C FA               [12] 2037 	mov	r2,a
      00288D A3               [24] 2038 	inc	dptr
      00288E E0               [24] 2039 	movx	a,@dptr
      00288F FB               [12] 2040 	mov	r3,a
      002890 8A 82            [24] 2041 	mov	dpl,r2
      002892 8B 83            [24] 2042 	mov	dph,r3
      002894 E0               [24] 2043 	movx	a,@dptr
      002895 90 00 43         [24] 2044 	mov	dptr,#_qmark_command_handler_curr_char_196610_115
      002898 F0               [24] 2045 	movx	@dptr,a
                                   2046 ;	src/main.c:254: while(curr_char != '\0')
      002899 90 00 41         [24] 2047 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_113
      00289C E0               [24] 2048 	movx	a,@dptr
      00289D FA               [12] 2049 	mov	r2,a
      00289E A3               [24] 2050 	inc	dptr
      00289F E0               [24] 2051 	movx	a,@dptr
      0028A0 FB               [12] 2052 	mov	r3,a
      0028A1 78 00            [12] 2053 	mov	r0,#0x00
      0028A3 79 00            [12] 2054 	mov	r1,#0x00
      0028A5                       2055 00103$:
      0028A5 90 00 43         [24] 2056 	mov	dptr,#_qmark_command_handler_curr_char_196610_115
      0028A8 E0               [24] 2057 	movx	a,@dptr
      0028A9 70 03            [24] 2058 	jnz	00135$
      0028AB 02 29 55         [24] 2059 	ljmp	00117$
      0028AE                       2060 00135$:
                                   2061 ;	src/main.c:256: if (MODULE_32(curr_output_char) == 0)
      0028AE EA               [12] 2062 	mov	a,r2
      0028AF 54 1F            [12] 2063 	anl	a,#0x1f
      0028B1 60 02            [24] 2064 	jz	00137$
      0028B3 80 35            [24] 2065 	sjmp	00102$
      0028B5                       2066 00137$:
                                   2067 ;	src/main.c:258: printf("\r\n");
      0028B5 C0 07            [24] 2068 	push	ar7
      0028B7 C0 06            [24] 2069 	push	ar6
      0028B9 C0 05            [24] 2070 	push	ar5
      0028BB C0 04            [24] 2071 	push	ar4
      0028BD C0 03            [24] 2072 	push	ar3
      0028BF C0 02            [24] 2073 	push	ar2
      0028C1 C0 01            [24] 2074 	push	ar1
      0028C3 C0 00            [24] 2075 	push	ar0
      0028C5 74 8A            [12] 2076 	mov	a,#___str_10
      0028C7 C0 E0            [24] 2077 	push	acc
      0028C9 74 3F            [12] 2078 	mov	a,#(___str_10 >> 8)
      0028CB C0 E0            [24] 2079 	push	acc
      0028CD 74 80            [12] 2080 	mov	a,#0x80
      0028CF C0 E0            [24] 2081 	push	acc
      0028D1 12 33 BC         [24] 2082 	lcall	_printf
      0028D4 15 81            [12] 2083 	dec	sp
      0028D6 15 81            [12] 2084 	dec	sp
      0028D8 15 81            [12] 2085 	dec	sp
      0028DA D0 00            [24] 2086 	pop	ar0
      0028DC D0 01            [24] 2087 	pop	ar1
      0028DE D0 02            [24] 2088 	pop	ar2
      0028E0 D0 03            [24] 2089 	pop	ar3
      0028E2 D0 04            [24] 2090 	pop	ar4
      0028E4 D0 05            [24] 2091 	pop	ar5
      0028E6 D0 06            [24] 2092 	pop	ar6
      0028E8 D0 07            [24] 2093 	pop	ar7
      0028EA                       2094 00102$:
                                   2095 ;	src/main.c:260: printf("%c", curr_char);
      0028EA C0 06            [24] 2096 	push	ar6
      0028EC C0 07            [24] 2097 	push	ar7
      0028EE 90 00 43         [24] 2098 	mov	dptr,#_qmark_command_handler_curr_char_196610_115
      0028F1 E0               [24] 2099 	movx	a,@dptr
      0028F2 FF               [12] 2100 	mov	r7,a
      0028F3 7E 00            [12] 2101 	mov	r6,#0x00
      0028F5 C0 07            [24] 2102 	push	ar7
      0028F7 C0 06            [24] 2103 	push	ar6
      0028F9 C0 05            [24] 2104 	push	ar5
      0028FB C0 04            [24] 2105 	push	ar4
      0028FD C0 03            [24] 2106 	push	ar3
      0028FF C0 02            [24] 2107 	push	ar2
      002901 C0 01            [24] 2108 	push	ar1
      002903 C0 00            [24] 2109 	push	ar0
      002905 C0 07            [24] 2110 	push	ar7
      002907 C0 06            [24] 2111 	push	ar6
      002909 74 04            [12] 2112 	mov	a,#___str_13
      00290B C0 E0            [24] 2113 	push	acc
      00290D 74 40            [12] 2114 	mov	a,#(___str_13 >> 8)
      00290F C0 E0            [24] 2115 	push	acc
      002911 74 80            [12] 2116 	mov	a,#0x80
      002913 C0 E0            [24] 2117 	push	acc
      002915 12 33 BC         [24] 2118 	lcall	_printf
      002918 E5 81            [12] 2119 	mov	a,sp
      00291A 24 FB            [12] 2120 	add	a,#0xfb
      00291C F5 81            [12] 2121 	mov	sp,a
      00291E D0 00            [24] 2122 	pop	ar0
      002920 D0 01            [24] 2123 	pop	ar1
      002922 D0 02            [24] 2124 	pop	ar2
      002924 D0 03            [24] 2125 	pop	ar3
      002926 D0 04            [24] 2126 	pop	ar4
      002928 D0 05            [24] 2127 	pop	ar5
      00292A D0 06            [24] 2128 	pop	ar6
      00292C D0 07            [24] 2129 	pop	ar7
                                   2130 ;	src/main.c:261: curr_output_char++;
      00292E 0A               [12] 2131 	inc	r2
      00292F BA 00 01         [24] 2132 	cjne	r2,#0x00,00138$
      002932 0B               [12] 2133 	inc	r3
      002933                       2134 00138$:
                                   2135 ;	src/main.c:262: curr_buffer_char++;
      002933 08               [12] 2136 	inc	r0
      002934 B8 00 01         [24] 2137 	cjne	r0,#0x00,00139$
      002937 09               [12] 2138 	inc	r1
      002938                       2139 00139$:
                                   2140 ;	src/main.c:263: curr_char = buffers[i].buffer[curr_buffer_char];
      002938 8C 82            [24] 2141 	mov	dpl,r4
      00293A 8D 83            [24] 2142 	mov	dph,r5
      00293C E0               [24] 2143 	movx	a,@dptr
      00293D FE               [12] 2144 	mov	r6,a
      00293E A3               [24] 2145 	inc	dptr
      00293F E0               [24] 2146 	movx	a,@dptr
      002940 FF               [12] 2147 	mov	r7,a
      002941 E8               [12] 2148 	mov	a,r0
      002942 2E               [12] 2149 	add	a,r6
      002943 F5 82            [12] 2150 	mov	dpl,a
      002945 E9               [12] 2151 	mov	a,r1
      002946 3F               [12] 2152 	addc	a,r7
      002947 F5 83            [12] 2153 	mov	dph,a
      002949 E0               [24] 2154 	movx	a,@dptr
      00294A 90 00 43         [24] 2155 	mov	dptr,#_qmark_command_handler_curr_char_196610_115
      00294D F0               [24] 2156 	movx	@dptr,a
      00294E D0 07            [24] 2157 	pop	ar7
      002950 D0 06            [24] 2158 	pop	ar6
      002952 02 28 A5         [24] 2159 	ljmp	00103$
      002955                       2160 00117$:
      002955 90 00 41         [24] 2161 	mov	dptr,#_qmark_command_handler_curr_output_char_65538_113
      002958 EA               [12] 2162 	mov	a,r2
      002959 F0               [24] 2163 	movx	@dptr,a
      00295A EB               [12] 2164 	mov	a,r3
      00295B A3               [24] 2165 	inc	dptr
      00295C F0               [24] 2166 	movx	@dptr,a
                                   2167 ;	src/main.c:266: memset(buffers[i].buffer, '\0', buffers[i].size);
      00295D 8E 04            [24] 2168 	mov	ar4,r6
      00295F EF               [12] 2169 	mov	a,r7
      002960 C4               [12] 2170 	swap	a
      002961 03               [12] 2171 	rr	a
      002962 54 F8            [12] 2172 	anl	a,#0xf8
      002964 CC               [12] 2173 	xch	a,r4
      002965 C4               [12] 2174 	swap	a
      002966 03               [12] 2175 	rr	a
      002967 CC               [12] 2176 	xch	a,r4
      002968 6C               [12] 2177 	xrl	a,r4
      002969 CC               [12] 2178 	xch	a,r4
      00296A 54 F8            [12] 2179 	anl	a,#0xf8
      00296C CC               [12] 2180 	xch	a,r4
      00296D 6C               [12] 2181 	xrl	a,r4
      00296E FD               [12] 2182 	mov	r5,a
      00296F EC               [12] 2183 	mov	a,r4
      002970 24 01            [12] 2184 	add	a,#_buffers
      002972 F5 82            [12] 2185 	mov	dpl,a
      002974 ED               [12] 2186 	mov	a,r5
      002975 34 00            [12] 2187 	addc	a,#(_buffers >> 8)
      002977 F5 83            [12] 2188 	mov	dph,a
      002979 E0               [24] 2189 	movx	a,@dptr
      00297A FA               [12] 2190 	mov	r2,a
      00297B A3               [24] 2191 	inc	dptr
      00297C E0               [24] 2192 	movx	a,@dptr
      00297D FB               [12] 2193 	mov	r3,a
      00297E 8A 38            [24] 2194 	mov	_qmark_command_handler_sloc0_1_0,r2
      002980 8B 39            [24] 2195 	mov	(_qmark_command_handler_sloc0_1_0 + 1),r3
      002982 75 3A 00         [24] 2196 	mov	(_qmark_command_handler_sloc0_1_0 + 2),#0x00
      002985 EC               [12] 2197 	mov	a,r4
      002986 24 01            [12] 2198 	add	a,#_buffers
      002988 FC               [12] 2199 	mov	r4,a
      002989 ED               [12] 2200 	mov	a,r5
      00298A 34 00            [12] 2201 	addc	a,#(_buffers >> 8)
      00298C FD               [12] 2202 	mov	r5,a
      00298D 8C 82            [24] 2203 	mov	dpl,r4
      00298F 8D 83            [24] 2204 	mov	dph,r5
      002991 A3               [24] 2205 	inc	dptr
      002992 A3               [24] 2206 	inc	dptr
      002993 A3               [24] 2207 	inc	dptr
      002994 A3               [24] 2208 	inc	dptr
      002995 E0               [24] 2209 	movx	a,@dptr
      002996 F8               [12] 2210 	mov	r0,a
      002997 A3               [24] 2211 	inc	dptr
      002998 E0               [24] 2212 	movx	a,@dptr
      002999 FB               [12] 2213 	mov	r3,a
      00299A 90 04 61         [24] 2214 	mov	dptr,#_memset_PARM_2
      00299D E4               [12] 2215 	clr	a
      00299E F0               [24] 2216 	movx	@dptr,a
      00299F 90 04 62         [24] 2217 	mov	dptr,#_memset_PARM_3
      0029A2 E8               [12] 2218 	mov	a,r0
      0029A3 F0               [24] 2219 	movx	@dptr,a
      0029A4 EB               [12] 2220 	mov	a,r3
      0029A5 A3               [24] 2221 	inc	dptr
      0029A6 F0               [24] 2222 	movx	@dptr,a
      0029A7 85 38 82         [24] 2223 	mov	dpl,_qmark_command_handler_sloc0_1_0
      0029AA 85 39 83         [24] 2224 	mov	dph,(_qmark_command_handler_sloc0_1_0 + 1)
      0029AD 85 3A F0         [24] 2225 	mov	b,(_qmark_command_handler_sloc0_1_0 + 2)
      0029B0 C0 07            [24] 2226 	push	ar7
      0029B2 C0 06            [24] 2227 	push	ar6
      0029B4 C0 05            [24] 2228 	push	ar5
      0029B6 C0 04            [24] 2229 	push	ar4
      0029B8 12 30 42         [24] 2230 	lcall	_memset
      0029BB D0 04            [24] 2231 	pop	ar4
      0029BD D0 05            [24] 2232 	pop	ar5
      0029BF D0 06            [24] 2233 	pop	ar6
      0029C1 D0 07            [24] 2234 	pop	ar7
                                   2235 ;	src/main.c:267: buffers[i].alphabet_chars = 0;
      0029C3 8C 82            [24] 2236 	mov	dpl,r4
      0029C5 8D 83            [24] 2237 	mov	dph,r5
      0029C7 A3               [24] 2238 	inc	dptr
      0029C8 A3               [24] 2239 	inc	dptr
      0029C9 E4               [12] 2240 	clr	a
      0029CA F0               [24] 2241 	movx	@dptr,a
      0029CB A3               [24] 2242 	inc	dptr
      0029CC F0               [24] 2243 	movx	@dptr,a
                                   2244 ;	src/main.c:268: buffers[i].curr_available_char = 0;
      0029CD 74 06            [12] 2245 	mov	a,#0x06
      0029CF 2C               [12] 2246 	add	a,r4
      0029D0 F5 82            [12] 2247 	mov	dpl,a
      0029D2 E4               [12] 2248 	clr	a
      0029D3 3D               [12] 2249 	addc	a,r5
      0029D4 F5 83            [12] 2250 	mov	dph,a
      0029D6 E4               [12] 2251 	clr	a
      0029D7 F0               [24] 2252 	movx	@dptr,a
      0029D8 A3               [24] 2253 	inc	dptr
      0029D9 F0               [24] 2254 	movx	@dptr,a
                                   2255 ;	src/main.c:250: for(int i = 0; i < 2; i++)
      0029DA 0E               [12] 2256 	inc	r6
      0029DB BE 00 01         [24] 2257 	cjne	r6,#0x00,00140$
      0029DE 0F               [12] 2258 	inc	r7
      0029DF                       2259 00140$:
      0029DF 02 28 5F         [24] 2260 	ljmp	00108$
      0029E2                       2261 00106$:
                                   2262 ;	src/main.c:271: printf("\r\n");
      0029E2 74 8A            [12] 2263 	mov	a,#___str_10
      0029E4 C0 E0            [24] 2264 	push	acc
      0029E6 74 3F            [12] 2265 	mov	a,#(___str_10 >> 8)
      0029E8 C0 E0            [24] 2266 	push	acc
      0029EA 74 80            [12] 2267 	mov	a,#0x80
      0029EC C0 E0            [24] 2268 	push	acc
      0029EE 12 33 BC         [24] 2269 	lcall	_printf
      0029F1 15 81            [12] 2270 	dec	sp
      0029F3 15 81            [12] 2271 	dec	sp
      0029F5 15 81            [12] 2272 	dec	sp
                                   2273 ;	src/main.c:272: printf("\r\n");
      0029F7 74 8A            [12] 2274 	mov	a,#___str_10
      0029F9 C0 E0            [24] 2275 	push	acc
      0029FB 74 3F            [12] 2276 	mov	a,#(___str_10 >> 8)
      0029FD C0 E0            [24] 2277 	push	acc
      0029FF 74 80            [12] 2278 	mov	a,#0x80
      002A01 C0 E0            [24] 2279 	push	acc
      002A03 12 33 BC         [24] 2280 	lcall	_printf
      002A06 15 81            [12] 2281 	dec	sp
      002A08 15 81            [12] 2282 	dec	sp
      002A0A 15 81            [12] 2283 	dec	sp
                                   2284 ;	src/main.c:273: }
      002A0C 22               [24] 2285 	ret
                                   2286 ;------------------------------------------------------------
                                   2287 ;Allocation info for local variables in function 'enter_command_handler'
                                   2288 ;------------------------------------------------------------
                                   2289 ;sloc0                     Allocated with name '_enter_command_handler_sloc0_1_0'
                                   2290 ;sloc1                     Allocated with name '_enter_command_handler_sloc1_1_0'
                                   2291 ;sloc2                     Allocated with name '_enter_command_handler_sloc2_1_0'
                                   2292 ;sloc3                     Allocated with name '_enter_command_handler_sloc3_1_0'
                                   2293 ;i                         Allocated with name '_enter_command_handler_i_131072_119'
                                   2294 ;address                   Allocated with name '_enter_command_handler_address_262144_121'
                                   2295 ;j                         Allocated with name '_enter_command_handler_j_393216_123'
                                   2296 ;------------------------------------------------------------
                                   2297 ;	src/main.c:275: void enter_command_handler()
                                   2298 ;	-----------------------------------------
                                   2299 ;	 function enter_command_handler
                                   2300 ;	-----------------------------------------
      002A0D                       2301 _enter_command_handler:
                                   2302 ;	src/main.c:277: command_header("Dump Buffer");
      002A0D 90 40 07         [24] 2303 	mov	dptr,#___str_14
      002A10 75 F0 80         [24] 2304 	mov	b,#0x80
      002A13 12 25 AE         [24] 2305 	lcall	_command_header
                                   2306 ;	src/main.c:278: for(int i = 0; i < 2; i++)
      002A16 7E 00            [12] 2307 	mov	r6,#0x00
      002A18 7F 00            [12] 2308 	mov	r7,#0x00
      002A1A                       2309 00111$:
      002A1A C3               [12] 2310 	clr	c
      002A1B EE               [12] 2311 	mov	a,r6
      002A1C 94 02            [12] 2312 	subb	a,#0x02
      002A1E EF               [12] 2313 	mov	a,r7
      002A1F 64 80            [12] 2314 	xrl	a,#0x80
      002A21 94 80            [12] 2315 	subb	a,#0x80
      002A23 40 01            [24] 2316 	jc	00142$
      002A25 22               [24] 2317 	ret
      002A26                       2318 00142$:
                                   2319 ;	src/main.c:280: printf("\r\n Buffer %d ", i);
      002A26 C0 07            [24] 2320 	push	ar7
      002A28 C0 06            [24] 2321 	push	ar6
      002A2A C0 06            [24] 2322 	push	ar6
      002A2C C0 07            [24] 2323 	push	ar7
      002A2E 74 13            [12] 2324 	mov	a,#___str_15
      002A30 C0 E0            [24] 2325 	push	acc
      002A32 74 40            [12] 2326 	mov	a,#(___str_15 >> 8)
      002A34 C0 E0            [24] 2327 	push	acc
      002A36 74 80            [12] 2328 	mov	a,#0x80
      002A38 C0 E0            [24] 2329 	push	acc
      002A3A 12 33 BC         [24] 2330 	lcall	_printf
      002A3D E5 81            [12] 2331 	mov	a,sp
      002A3F 24 FB            [12] 2332 	add	a,#0xfb
      002A41 F5 81            [12] 2333 	mov	sp,a
                                   2334 ;	src/main.c:281: printf("\r\n----------");
      002A43 74 21            [12] 2335 	mov	a,#___str_16
      002A45 C0 E0            [24] 2336 	push	acc
      002A47 74 40            [12] 2337 	mov	a,#(___str_16 >> 8)
      002A49 C0 E0            [24] 2338 	push	acc
      002A4B 74 80            [12] 2339 	mov	a,#0x80
      002A4D C0 E0            [24] 2340 	push	acc
      002A4F 12 33 BC         [24] 2341 	lcall	_printf
      002A52 15 81            [12] 2342 	dec	sp
      002A54 15 81            [12] 2343 	dec	sp
      002A56 15 81            [12] 2344 	dec	sp
      002A58 D0 06            [24] 2345 	pop	ar6
      002A5A D0 07            [24] 2346 	pop	ar7
                                   2347 ;	src/main.c:282: for(char *address = buffers[i].buffer; address < (buffers[i].buffer + buffers[i].size); address += 16)
      002A5C 8E 04            [24] 2348 	mov	ar4,r6
      002A5E EF               [12] 2349 	mov	a,r7
      002A5F C4               [12] 2350 	swap	a
      002A60 03               [12] 2351 	rr	a
      002A61 54 F8            [12] 2352 	anl	a,#0xf8
      002A63 CC               [12] 2353 	xch	a,r4
      002A64 C4               [12] 2354 	swap	a
      002A65 03               [12] 2355 	rr	a
      002A66 CC               [12] 2356 	xch	a,r4
      002A67 6C               [12] 2357 	xrl	a,r4
      002A68 CC               [12] 2358 	xch	a,r4
      002A69 54 F8            [12] 2359 	anl	a,#0xf8
      002A6B CC               [12] 2360 	xch	a,r4
      002A6C 6C               [12] 2361 	xrl	a,r4
      002A6D FD               [12] 2362 	mov	r5,a
      002A6E EC               [12] 2363 	mov	a,r4
      002A6F 24 01            [12] 2364 	add	a,#_buffers
      002A71 FA               [12] 2365 	mov	r2,a
      002A72 ED               [12] 2366 	mov	a,r5
      002A73 34 00            [12] 2367 	addc	a,#(_buffers >> 8)
      002A75 FB               [12] 2368 	mov	r3,a
      002A76 8A 82            [24] 2369 	mov	dpl,r2
      002A78 8B 83            [24] 2370 	mov	dph,r3
      002A7A E0               [24] 2371 	movx	a,@dptr
      002A7B F8               [12] 2372 	mov	r0,a
      002A7C A3               [24] 2373 	inc	dptr
      002A7D E0               [24] 2374 	movx	a,@dptr
      002A7E F9               [12] 2375 	mov	r1,a
      002A7F 88 3B            [24] 2376 	mov	_enter_command_handler_sloc0_1_0,r0
      002A81 89 3C            [24] 2377 	mov	(_enter_command_handler_sloc0_1_0 + 1),r1
      002A83 75 3D 00         [24] 2378 	mov	(_enter_command_handler_sloc0_1_0 + 2),#0x00
      002A86 8E 00            [24] 2379 	mov	ar0,r6
      002A88 8F 01            [24] 2380 	mov	ar1,r7
      002A8A 8A 42            [24] 2381 	mov	_enter_command_handler_sloc3_1_0,r2
      002A8C 8B 43            [24] 2382 	mov	(_enter_command_handler_sloc3_1_0 + 1),r3
      002A8E EC               [12] 2383 	mov	a,r4
      002A8F 24 01            [12] 2384 	add	a,#_buffers
      002A91 FC               [12] 2385 	mov	r4,a
      002A92 ED               [12] 2386 	mov	a,r5
      002A93 34 00            [12] 2387 	addc	a,#(_buffers >> 8)
      002A95 FD               [12] 2388 	mov	r5,a
      002A96 74 04            [12] 2389 	mov	a,#0x04
      002A98 2C               [12] 2390 	add	a,r4
      002A99 F5 3E            [12] 2391 	mov	_enter_command_handler_sloc1_1_0,a
      002A9B E4               [12] 2392 	clr	a
      002A9C 3D               [12] 2393 	addc	a,r5
      002A9D F5 3F            [12] 2394 	mov	(_enter_command_handler_sloc1_1_0 + 1),a
      002A9F                       2395 00108$:
      002A9F C0 00            [24] 2396 	push	ar0
      002AA1 C0 01            [24] 2397 	push	ar1
      002AA3 85 42 82         [24] 2398 	mov	dpl,_enter_command_handler_sloc3_1_0
      002AA6 85 43 83         [24] 2399 	mov	dph,(_enter_command_handler_sloc3_1_0 + 1)
      002AA9 E0               [24] 2400 	movx	a,@dptr
      002AAA F8               [12] 2401 	mov	r0,a
      002AAB A3               [24] 2402 	inc	dptr
      002AAC E0               [24] 2403 	movx	a,@dptr
      002AAD F9               [12] 2404 	mov	r1,a
      002AAE 85 3E 82         [24] 2405 	mov	dpl,_enter_command_handler_sloc1_1_0
      002AB1 85 3F 83         [24] 2406 	mov	dph,(_enter_command_handler_sloc1_1_0 + 1)
      002AB4 E0               [24] 2407 	movx	a,@dptr
      002AB5 FC               [12] 2408 	mov	r4,a
      002AB6 A3               [24] 2409 	inc	dptr
      002AB7 E0               [24] 2410 	movx	a,@dptr
      002AB8 FD               [12] 2411 	mov	r5,a
      002AB9 EC               [12] 2412 	mov	a,r4
      002ABA 28               [12] 2413 	add	a,r0
      002ABB F5 40            [12] 2414 	mov	_enter_command_handler_sloc2_1_0,a
      002ABD ED               [12] 2415 	mov	a,r5
      002ABE 39               [12] 2416 	addc	a,r1
      002ABF F5 41            [12] 2417 	mov	(_enter_command_handler_sloc2_1_0 + 1),a
      002AC1 A9 3B            [24] 2418 	mov	r1,_enter_command_handler_sloc0_1_0
      002AC3 AC 3C            [24] 2419 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      002AC5 AD 3D            [24] 2420 	mov	r5,(_enter_command_handler_sloc0_1_0 + 2)
      002AC7 A8 40            [24] 2421 	mov	r0,_enter_command_handler_sloc2_1_0
      002AC9 AA 41            [24] 2422 	mov	r2,(_enter_command_handler_sloc2_1_0 + 1)
      002ACB 7B 00            [12] 2423 	mov	r3,#0x00
      002ACD C0 00            [24] 2424 	push	ar0
      002ACF C0 02            [24] 2425 	push	ar2
      002AD1 C0 03            [24] 2426 	push	ar3
      002AD3 89 82            [24] 2427 	mov	dpl,r1
      002AD5 8C 83            [24] 2428 	mov	dph,r4
      002AD7 8D F0            [24] 2429 	mov	b,r5
      002AD9 12 20 06         [24] 2430 	lcall	___gptr_cmp
      002ADC 15 81            [12] 2431 	dec	sp
      002ADE 15 81            [12] 2432 	dec	sp
      002AE0 15 81            [12] 2433 	dec	sp
      002AE2 D0 01            [24] 2434 	pop	ar1
      002AE4 D0 00            [24] 2435 	pop	ar0
      002AE6 40 03            [24] 2436 	jc	00143$
      002AE8 02 2B 8B         [24] 2437 	ljmp	00102$
      002AEB                       2438 00143$:
                                   2439 ;	src/main.c:284: printf("\r\n%04X:", (unsigned int) address);
      002AEB AB 3B            [24] 2440 	mov	r3,_enter_command_handler_sloc0_1_0
      002AED AC 3C            [24] 2441 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      002AEF C0 01            [24] 2442 	push	ar1
      002AF1 C0 00            [24] 2443 	push	ar0
      002AF3 C0 03            [24] 2444 	push	ar3
      002AF5 C0 04            [24] 2445 	push	ar4
      002AF7 74 2E            [12] 2446 	mov	a,#___str_17
      002AF9 C0 E0            [24] 2447 	push	acc
      002AFB 74 40            [12] 2448 	mov	a,#(___str_17 >> 8)
      002AFD C0 E0            [24] 2449 	push	acc
      002AFF 74 80            [12] 2450 	mov	a,#0x80
      002B01 C0 E0            [24] 2451 	push	acc
      002B03 12 33 BC         [24] 2452 	lcall	_printf
      002B06 E5 81            [12] 2453 	mov	a,sp
      002B08 24 FB            [12] 2454 	add	a,#0xfb
      002B0A F5 81            [12] 2455 	mov	sp,a
      002B0C D0 00            [24] 2456 	pop	ar0
      002B0E D0 01            [24] 2457 	pop	ar1
                                   2458 ;	src/main.c:285: for(int j = 0; j < 16; j++)
      002B10 AB 3B            [24] 2459 	mov	r3,_enter_command_handler_sloc0_1_0
      002B12 AC 3C            [24] 2460 	mov	r4,(_enter_command_handler_sloc0_1_0 + 1)
      002B14 AD 3D            [24] 2461 	mov	r5,(_enter_command_handler_sloc0_1_0 + 2)
      002B16 E4               [12] 2462 	clr	a
      002B17 F5 40            [12] 2463 	mov	_enter_command_handler_sloc2_1_0,a
      002B19 F5 41            [12] 2464 	mov	(_enter_command_handler_sloc2_1_0 + 1),a
      002B1B                       2465 00105$:
      002B1B C3               [12] 2466 	clr	c
      002B1C E5 40            [12] 2467 	mov	a,_enter_command_handler_sloc2_1_0
      002B1E 94 10            [12] 2468 	subb	a,#0x10
      002B20 E5 41            [12] 2469 	mov	a,(_enter_command_handler_sloc2_1_0 + 1)
      002B22 64 80            [12] 2470 	xrl	a,#0x80
      002B24 94 80            [12] 2471 	subb	a,#0x80
      002B26 50 55            [24] 2472 	jnc	00109$
                                   2473 ;	src/main.c:287: printf(" %02hhX", (unsigned char) *(address+j));
      002B28 C0 00            [24] 2474 	push	ar0
      002B2A C0 01            [24] 2475 	push	ar1
      002B2C E5 40            [12] 2476 	mov	a,_enter_command_handler_sloc2_1_0
      002B2E 2B               [12] 2477 	add	a,r3
      002B2F F8               [12] 2478 	mov	r0,a
      002B30 E5 41            [12] 2479 	mov	a,(_enter_command_handler_sloc2_1_0 + 1)
      002B32 3C               [12] 2480 	addc	a,r4
      002B33 F9               [12] 2481 	mov	r1,a
      002B34 8D 02            [24] 2482 	mov	ar2,r5
      002B36 88 82            [24] 2483 	mov	dpl,r0
      002B38 89 83            [24] 2484 	mov	dph,r1
      002B3A 8A F0            [24] 2485 	mov	b,r2
      002B3C 12 3D E8         [24] 2486 	lcall	__gptrget
      002B3F F8               [12] 2487 	mov	r0,a
      002B40 7A 00            [12] 2488 	mov	r2,#0x00
      002B42 C0 05            [24] 2489 	push	ar5
      002B44 C0 04            [24] 2490 	push	ar4
      002B46 C0 03            [24] 2491 	push	ar3
      002B48 C0 01            [24] 2492 	push	ar1
      002B4A C0 00            [24] 2493 	push	ar0
      002B4C C0 00            [24] 2494 	push	ar0
      002B4E C0 02            [24] 2495 	push	ar2
      002B50 74 36            [12] 2496 	mov	a,#___str_18
      002B52 C0 E0            [24] 2497 	push	acc
      002B54 74 40            [12] 2498 	mov	a,#(___str_18 >> 8)
      002B56 C0 E0            [24] 2499 	push	acc
      002B58 74 80            [12] 2500 	mov	a,#0x80
      002B5A C0 E0            [24] 2501 	push	acc
      002B5C 12 33 BC         [24] 2502 	lcall	_printf
      002B5F E5 81            [12] 2503 	mov	a,sp
      002B61 24 FB            [12] 2504 	add	a,#0xfb
      002B63 F5 81            [12] 2505 	mov	sp,a
      002B65 D0 00            [24] 2506 	pop	ar0
      002B67 D0 01            [24] 2507 	pop	ar1
      002B69 D0 03            [24] 2508 	pop	ar3
      002B6B D0 04            [24] 2509 	pop	ar4
      002B6D D0 05            [24] 2510 	pop	ar5
                                   2511 ;	src/main.c:285: for(int j = 0; j < 16; j++)
      002B6F 05 40            [12] 2512 	inc	_enter_command_handler_sloc2_1_0
      002B71 E4               [12] 2513 	clr	a
      002B72 B5 40 02         [24] 2514 	cjne	a,_enter_command_handler_sloc2_1_0,00145$
      002B75 05 41            [12] 2515 	inc	(_enter_command_handler_sloc2_1_0 + 1)
      002B77                       2516 00145$:
      002B77 D0 01            [24] 2517 	pop	ar1
      002B79 D0 00            [24] 2518 	pop	ar0
      002B7B 80 9E            [24] 2519 	sjmp	00105$
      002B7D                       2520 00109$:
                                   2521 ;	src/main.c:282: for(char *address = buffers[i].buffer; address < (buffers[i].buffer + buffers[i].size); address += 16)
      002B7D 74 10            [12] 2522 	mov	a,#0x10
      002B7F 25 3B            [12] 2523 	add	a,_enter_command_handler_sloc0_1_0
      002B81 F5 3B            [12] 2524 	mov	_enter_command_handler_sloc0_1_0,a
      002B83 E4               [12] 2525 	clr	a
      002B84 35 3C            [12] 2526 	addc	a,(_enter_command_handler_sloc0_1_0 + 1)
      002B86 F5 3C            [12] 2527 	mov	(_enter_command_handler_sloc0_1_0 + 1),a
      002B88 02 2A 9F         [24] 2528 	ljmp	00108$
      002B8B                       2529 00102$:
                                   2530 ;	src/main.c:290: printf("\r\n");
      002B8B C0 01            [24] 2531 	push	ar1
      002B8D C0 00            [24] 2532 	push	ar0
      002B8F 74 8A            [12] 2533 	mov	a,#___str_10
      002B91 C0 E0            [24] 2534 	push	acc
      002B93 74 3F            [12] 2535 	mov	a,#(___str_10 >> 8)
      002B95 C0 E0            [24] 2536 	push	acc
      002B97 74 80            [12] 2537 	mov	a,#0x80
      002B99 C0 E0            [24] 2538 	push	acc
      002B9B 12 33 BC         [24] 2539 	lcall	_printf
      002B9E 15 81            [12] 2540 	dec	sp
      002BA0 15 81            [12] 2541 	dec	sp
      002BA2 15 81            [12] 2542 	dec	sp
      002BA4 D0 00            [24] 2543 	pop	ar0
      002BA6 D0 01            [24] 2544 	pop	ar1
                                   2545 ;	src/main.c:278: for(int i = 0; i < 2; i++)
      002BA8 74 01            [12] 2546 	mov	a,#0x01
      002BAA 28               [12] 2547 	add	a,r0
      002BAB FE               [12] 2548 	mov	r6,a
      002BAC E4               [12] 2549 	clr	a
      002BAD 39               [12] 2550 	addc	a,r1
      002BAE FF               [12] 2551 	mov	r7,a
                                   2552 ;	src/main.c:292: }
      002BAF 02 2A 1A         [24] 2553 	ljmp	00111$
                                   2554 ;------------------------------------------------------------
                                   2555 ;Allocation info for local variables in function 'percent_command_handler'
                                   2556 ;------------------------------------------------------------
                                   2557 ;sloc0                     Allocated with name '_percent_command_handler_sloc0_1_0'
                                   2558 ;i                         Allocated with name '_percent_command_handler_i_131072_126'
                                   2559 ;------------------------------------------------------------
                                   2560 ;	src/main.c:294: void percent_command_handler()
                                   2561 ;	-----------------------------------------
                                   2562 ;	 function percent_command_handler
                                   2563 ;	-----------------------------------------
      002BB2                       2564 _percent_command_handler:
                                   2565 ;	src/main.c:296: command_header("Clear Buffers");
      002BB2 90 40 3E         [24] 2566 	mov	dptr,#___str_19
      002BB5 75 F0 80         [24] 2567 	mov	b,#0x80
      002BB8 12 25 AE         [24] 2568 	lcall	_command_header
                                   2569 ;	src/main.c:297: for(int i = 0; i < BUFFER_COUNT; i++)
      002BBB 7E 00            [12] 2570 	mov	r6,#0x00
      002BBD 7F 00            [12] 2571 	mov	r7,#0x00
      002BBF                       2572 00103$:
      002BBF C3               [12] 2573 	clr	c
      002BC0 EE               [12] 2574 	mov	a,r6
      002BC1 94 06            [12] 2575 	subb	a,#0x06
      002BC3 EF               [12] 2576 	mov	a,r7
      002BC4 64 80            [12] 2577 	xrl	a,#0x80
      002BC6 94 80            [12] 2578 	subb	a,#0x80
      002BC8 40 01            [24] 2579 	jc	00116$
      002BCA 22               [24] 2580 	ret
      002BCB                       2581 00116$:
                                   2582 ;	src/main.c:299: memset(buffers[i].buffer, 0x00, buffers[i].size);
      002BCB 8E 04            [24] 2583 	mov	ar4,r6
      002BCD EF               [12] 2584 	mov	a,r7
      002BCE C4               [12] 2585 	swap	a
      002BCF 03               [12] 2586 	rr	a
      002BD0 54 F8            [12] 2587 	anl	a,#0xf8
      002BD2 CC               [12] 2588 	xch	a,r4
      002BD3 C4               [12] 2589 	swap	a
      002BD4 03               [12] 2590 	rr	a
      002BD5 CC               [12] 2591 	xch	a,r4
      002BD6 6C               [12] 2592 	xrl	a,r4
      002BD7 CC               [12] 2593 	xch	a,r4
      002BD8 54 F8            [12] 2594 	anl	a,#0xf8
      002BDA CC               [12] 2595 	xch	a,r4
      002BDB 6C               [12] 2596 	xrl	a,r4
      002BDC FD               [12] 2597 	mov	r5,a
      002BDD EC               [12] 2598 	mov	a,r4
      002BDE 24 01            [12] 2599 	add	a,#_buffers
      002BE0 F5 82            [12] 2600 	mov	dpl,a
      002BE2 ED               [12] 2601 	mov	a,r5
      002BE3 34 00            [12] 2602 	addc	a,#(_buffers >> 8)
      002BE5 F5 83            [12] 2603 	mov	dph,a
      002BE7 E0               [24] 2604 	movx	a,@dptr
      002BE8 FA               [12] 2605 	mov	r2,a
      002BE9 A3               [24] 2606 	inc	dptr
      002BEA E0               [24] 2607 	movx	a,@dptr
      002BEB FB               [12] 2608 	mov	r3,a
      002BEC 8A 44            [24] 2609 	mov	_percent_command_handler_sloc0_1_0,r2
      002BEE 8B 45            [24] 2610 	mov	(_percent_command_handler_sloc0_1_0 + 1),r3
      002BF0 75 46 00         [24] 2611 	mov	(_percent_command_handler_sloc0_1_0 + 2),#0x00
      002BF3 EC               [12] 2612 	mov	a,r4
      002BF4 24 01            [12] 2613 	add	a,#_buffers
      002BF6 FC               [12] 2614 	mov	r4,a
      002BF7 ED               [12] 2615 	mov	a,r5
      002BF8 34 00            [12] 2616 	addc	a,#(_buffers >> 8)
      002BFA FD               [12] 2617 	mov	r5,a
      002BFB 8C 82            [24] 2618 	mov	dpl,r4
      002BFD 8D 83            [24] 2619 	mov	dph,r5
      002BFF A3               [24] 2620 	inc	dptr
      002C00 A3               [24] 2621 	inc	dptr
      002C01 A3               [24] 2622 	inc	dptr
      002C02 A3               [24] 2623 	inc	dptr
      002C03 E0               [24] 2624 	movx	a,@dptr
      002C04 F8               [12] 2625 	mov	r0,a
      002C05 A3               [24] 2626 	inc	dptr
      002C06 E0               [24] 2627 	movx	a,@dptr
      002C07 FB               [12] 2628 	mov	r3,a
      002C08 90 04 61         [24] 2629 	mov	dptr,#_memset_PARM_2
      002C0B E4               [12] 2630 	clr	a
      002C0C F0               [24] 2631 	movx	@dptr,a
      002C0D 90 04 62         [24] 2632 	mov	dptr,#_memset_PARM_3
      002C10 E8               [12] 2633 	mov	a,r0
      002C11 F0               [24] 2634 	movx	@dptr,a
      002C12 EB               [12] 2635 	mov	a,r3
      002C13 A3               [24] 2636 	inc	dptr
      002C14 F0               [24] 2637 	movx	@dptr,a
      002C15 85 44 82         [24] 2638 	mov	dpl,_percent_command_handler_sloc0_1_0
      002C18 85 45 83         [24] 2639 	mov	dph,(_percent_command_handler_sloc0_1_0 + 1)
      002C1B 85 46 F0         [24] 2640 	mov	b,(_percent_command_handler_sloc0_1_0 + 2)
      002C1E C0 07            [24] 2641 	push	ar7
      002C20 C0 06            [24] 2642 	push	ar6
      002C22 C0 05            [24] 2643 	push	ar5
      002C24 C0 04            [24] 2644 	push	ar4
      002C26 12 30 42         [24] 2645 	lcall	_memset
      002C29 D0 04            [24] 2646 	pop	ar4
      002C2B D0 05            [24] 2647 	pop	ar5
      002C2D D0 06            [24] 2648 	pop	ar6
      002C2F D0 07            [24] 2649 	pop	ar7
                                   2650 ;	src/main.c:300: buffers[i].curr_available_char = 0;
      002C31 74 06            [12] 2651 	mov	a,#0x06
      002C33 2C               [12] 2652 	add	a,r4
      002C34 F5 82            [12] 2653 	mov	dpl,a
      002C36 E4               [12] 2654 	clr	a
      002C37 3D               [12] 2655 	addc	a,r5
      002C38 F5 83            [12] 2656 	mov	dph,a
      002C3A E4               [12] 2657 	clr	a
      002C3B F0               [24] 2658 	movx	@dptr,a
      002C3C A3               [24] 2659 	inc	dptr
      002C3D F0               [24] 2660 	movx	@dptr,a
                                   2661 ;	src/main.c:301: buffers[i].alphabet_chars = 0; 
      002C3E 8C 82            [24] 2662 	mov	dpl,r4
      002C40 8D 83            [24] 2663 	mov	dph,r5
      002C42 A3               [24] 2664 	inc	dptr
      002C43 A3               [24] 2665 	inc	dptr
      002C44 F0               [24] 2666 	movx	@dptr,a
      002C45 A3               [24] 2667 	inc	dptr
      002C46 F0               [24] 2668 	movx	@dptr,a
                                   2669 ;	src/main.c:297: for(int i = 0; i < BUFFER_COUNT; i++)
      002C47 0E               [12] 2670 	inc	r6
      002C48 BE 00 01         [24] 2671 	cjne	r6,#0x00,00117$
      002C4B 0F               [12] 2672 	inc	r7
      002C4C                       2673 00117$:
                                   2674 ;	src/main.c:303: }
      002C4C 02 2B BF         [24] 2675 	ljmp	00103$
                                   2676 ;------------------------------------------------------------
                                   2677 ;Allocation info for local variables in function 'dollar_sign_command_handler'
                                   2678 ;------------------------------------------------------------
                                   2679 ;	src/main.c:305: void dollar_sign_command_handler()
                                   2680 ;	-----------------------------------------
                                   2681 ;	 function dollar_sign_command_handler
                                   2682 ;	-----------------------------------------
      002C4F                       2683 _dollar_sign_command_handler:
                                   2684 ;	src/main.c:307: P1_0 = true;
                                   2685 ;	assignBit
      002C4F D2 90            [12] 2686 	setb	_P1_0
                                   2687 ;	src/main.c:308: memcpy(buffers[3].buffer, buffers[0].buffer, buffers[0].size);
      002C51 90 00 19         [24] 2688 	mov	dptr,#(_buffers + 0x0018)
      002C54 E0               [24] 2689 	movx	a,@dptr
      002C55 FE               [12] 2690 	mov	r6,a
      002C56 A3               [24] 2691 	inc	dptr
      002C57 E0               [24] 2692 	movx	a,@dptr
      002C58 FF               [12] 2693 	mov	r7,a
      002C59 7D 00            [12] 2694 	mov	r5,#0x00
      002C5B 90 00 01         [24] 2695 	mov	dptr,#_buffers
      002C5E E0               [24] 2696 	movx	a,@dptr
      002C5F FB               [12] 2697 	mov	r3,a
      002C60 A3               [24] 2698 	inc	dptr
      002C61 E0               [24] 2699 	movx	a,@dptr
      002C62 FC               [12] 2700 	mov	r4,a
      002C63 7A 00            [12] 2701 	mov	r2,#0x00
      002C65 90 00 05         [24] 2702 	mov	dptr,#(_buffers + 0x0004)
      002C68 E0               [24] 2703 	movx	a,@dptr
      002C69 F8               [12] 2704 	mov	r0,a
      002C6A A3               [24] 2705 	inc	dptr
      002C6B E0               [24] 2706 	movx	a,@dptr
      002C6C F9               [12] 2707 	mov	r1,a
      002C6D 90 04 59         [24] 2708 	mov	dptr,#___memcpy_PARM_2
      002C70 EB               [12] 2709 	mov	a,r3
      002C71 F0               [24] 2710 	movx	@dptr,a
      002C72 EC               [12] 2711 	mov	a,r4
      002C73 A3               [24] 2712 	inc	dptr
      002C74 F0               [24] 2713 	movx	@dptr,a
      002C75 EA               [12] 2714 	mov	a,r2
      002C76 A3               [24] 2715 	inc	dptr
      002C77 F0               [24] 2716 	movx	@dptr,a
      002C78 90 04 5C         [24] 2717 	mov	dptr,#___memcpy_PARM_3
      002C7B E8               [12] 2718 	mov	a,r0
      002C7C F0               [24] 2719 	movx	@dptr,a
      002C7D E9               [12] 2720 	mov	a,r1
      002C7E A3               [24] 2721 	inc	dptr
      002C7F F0               [24] 2722 	movx	@dptr,a
      002C80 8E 82            [24] 2723 	mov	dpl,r6
      002C82 8F 83            [24] 2724 	mov	dph,r7
      002C84 8D F0            [24] 2725 	mov	b,r5
      002C86 12 2F CE         [24] 2726 	lcall	___memcpy
                                   2727 ;	src/main.c:309: buffers[3].alphabet_chars = buffers[0].alphabet_chars;
      002C89 90 00 03         [24] 2728 	mov	dptr,#(_buffers + 0x0002)
      002C8C E0               [24] 2729 	movx	a,@dptr
      002C8D FE               [12] 2730 	mov	r6,a
      002C8E A3               [24] 2731 	inc	dptr
      002C8F E0               [24] 2732 	movx	a,@dptr
      002C90 FF               [12] 2733 	mov	r7,a
      002C91 90 00 1B         [24] 2734 	mov	dptr,#(_buffers + 0x001a)
      002C94 EE               [12] 2735 	mov	a,r6
      002C95 F0               [24] 2736 	movx	@dptr,a
      002C96 EF               [12] 2737 	mov	a,r7
      002C97 A3               [24] 2738 	inc	dptr
      002C98 F0               [24] 2739 	movx	@dptr,a
                                   2740 ;	src/main.c:310: buffers[3].curr_available_char = buffers[0].curr_available_char;
      002C99 90 00 07         [24] 2741 	mov	dptr,#(_buffers + 0x0006)
      002C9C E0               [24] 2742 	movx	a,@dptr
      002C9D FE               [12] 2743 	mov	r6,a
      002C9E A3               [24] 2744 	inc	dptr
      002C9F E0               [24] 2745 	movx	a,@dptr
      002CA0 FF               [12] 2746 	mov	r7,a
      002CA1 90 00 1F         [24] 2747 	mov	dptr,#(_buffers + 0x001e)
      002CA4 EE               [12] 2748 	mov	a,r6
      002CA5 F0               [24] 2749 	movx	@dptr,a
      002CA6 EF               [12] 2750 	mov	a,r7
      002CA7 A3               [24] 2751 	inc	dptr
      002CA8 F0               [24] 2752 	movx	@dptr,a
                                   2753 ;	src/main.c:311: P1_0 = false; 
                                   2754 ;	assignBit
      002CA9 C2 90            [12] 2755 	clr	_P1_0
                                   2756 ;	src/main.c:312: }
      002CAB 22               [24] 2757 	ret
                                   2758 ;------------------------------------------------------------
                                   2759 ;Allocation info for local variables in function 'hashtag_command_handler'
                                   2760 ;------------------------------------------------------------
                                   2761 ;i                         Allocated with name '_hashtag_command_handler_i_131072_130'
                                   2762 ;------------------------------------------------------------
                                   2763 ;	src/main.c:314: void hashtag_command_handler()
                                   2764 ;	-----------------------------------------
                                   2765 ;	 function hashtag_command_handler
                                   2766 ;	-----------------------------------------
      002CAC                       2767 _hashtag_command_handler:
                                   2768 ;	src/main.c:316: P1_0 = true;
                                   2769 ;	assignBit
      002CAC D2 90            [12] 2770 	setb	_P1_0
                                   2771 ;	src/main.c:317: for(size_t i = 0; i < buffers[3].curr_available_char; i++)
      002CAE 7E 00            [12] 2772 	mov	r6,#0x00
      002CB0 7F 00            [12] 2773 	mov	r7,#0x00
      002CB2                       2774 00103$:
      002CB2 90 00 1F         [24] 2775 	mov	dptr,#(_buffers + 0x001e)
      002CB5 E0               [24] 2776 	movx	a,@dptr
      002CB6 FC               [12] 2777 	mov	r4,a
      002CB7 A3               [24] 2778 	inc	dptr
      002CB8 E0               [24] 2779 	movx	a,@dptr
      002CB9 FD               [12] 2780 	mov	r5,a
      002CBA C3               [12] 2781 	clr	c
      002CBB EE               [12] 2782 	mov	a,r6
      002CBC 9C               [12] 2783 	subb	a,r4
      002CBD EF               [12] 2784 	mov	a,r7
      002CBE 9D               [12] 2785 	subb	a,r5
      002CBF 50 24            [24] 2786 	jnc	00101$
                                   2787 ;	src/main.c:319: buffers[3].buffer[i] |= LOWER_CASE_MASK;
      002CC1 90 00 19         [24] 2788 	mov	dptr,#(_buffers + 0x0018)
      002CC4 E0               [24] 2789 	movx	a,@dptr
      002CC5 FC               [12] 2790 	mov	r4,a
      002CC6 A3               [24] 2791 	inc	dptr
      002CC7 E0               [24] 2792 	movx	a,@dptr
      002CC8 FD               [12] 2793 	mov	r5,a
      002CC9 EE               [12] 2794 	mov	a,r6
      002CCA 2C               [12] 2795 	add	a,r4
      002CCB FC               [12] 2796 	mov	r4,a
      002CCC EF               [12] 2797 	mov	a,r7
      002CCD 3D               [12] 2798 	addc	a,r5
      002CCE FD               [12] 2799 	mov	r5,a
      002CCF 8C 82            [24] 2800 	mov	dpl,r4
      002CD1 8D 83            [24] 2801 	mov	dph,r5
      002CD3 E0               [24] 2802 	movx	a,@dptr
      002CD4 FB               [12] 2803 	mov	r3,a
      002CD5 43 03 20         [24] 2804 	orl	ar3,#0x20
      002CD8 8C 82            [24] 2805 	mov	dpl,r4
      002CDA 8D 83            [24] 2806 	mov	dph,r5
      002CDC EB               [12] 2807 	mov	a,r3
      002CDD F0               [24] 2808 	movx	@dptr,a
                                   2809 ;	src/main.c:317: for(size_t i = 0; i < buffers[3].curr_available_char; i++)
      002CDE 0E               [12] 2810 	inc	r6
      002CDF BE 00 D0         [24] 2811 	cjne	r6,#0x00,00103$
      002CE2 0F               [12] 2812 	inc	r7
      002CE3 80 CD            [24] 2813 	sjmp	00103$
      002CE5                       2814 00101$:
                                   2815 ;	src/main.c:321: P1_0 = false;
                                   2816 ;	assignBit
      002CE5 C2 90            [12] 2817 	clr	_P1_0
                                   2818 ;	src/main.c:322: }
      002CE7 22               [24] 2819 	ret
                                   2820 ;------------------------------------------------------------
                                   2821 ;Allocation info for local variables in function 'main'
                                   2822 ;------------------------------------------------------------
                                   2823 ;received_char             Allocated with name '_main_received_char_196609_135'
                                   2824 ;------------------------------------------------------------
                                   2825 ;	src/main.c:325: void main()
                                   2826 ;	-----------------------------------------
                                   2827 ;	 function main
                                   2828 ;	-----------------------------------------
      002CE8                       2829 _main:
                                   2830 ;	src/main.c:327: initialize_buffers();
      002CE8 12 20 C8         [24] 2831 	lcall	_initialize_buffers
      002CEB                       2832 00112$:
                                   2833 ;	src/main.c:331: printf("\r\nEnter a char: ");
      002CEB 74 4C            [12] 2834 	mov	a,#___str_20
      002CED C0 E0            [24] 2835 	push	acc
      002CEF 74 40            [12] 2836 	mov	a,#(___str_20 >> 8)
      002CF1 C0 E0            [24] 2837 	push	acc
      002CF3 74 80            [12] 2838 	mov	a,#0x80
      002CF5 C0 E0            [24] 2839 	push	acc
      002CF7 12 33 BC         [24] 2840 	lcall	_printf
      002CFA 15 81            [12] 2841 	dec	sp
      002CFC 15 81            [12] 2842 	dec	sp
      002CFE 15 81            [12] 2843 	dec	sp
                                   2844 ;	src/main.c:332: char received_char = get_next_input_char();
      002D00 12 2E 40         [24] 2845 	lcall	_get_next_input_char
                                   2846 ;	src/main.c:333: if (is_alphabet_char(received_char))
      002D03 AF 82            [24] 2847 	mov  r7,dpl
      002D05 C0 07            [24] 2848 	push	ar7
      002D07 12 20 94         [24] 2849 	lcall	_is_alphabet_char
      002D0A E5 82            [12] 2850 	mov	a,dpl
      002D0C D0 07            [24] 2851 	pop	ar7
      002D0E 60 14            [24] 2852 	jz	00102$
                                   2853 ;	src/main.c:335: store_in_buffer(&buffers[0], received_char);
      002D10 90 00 36         [24] 2854 	mov	dptr,#_store_in_buffer_PARM_2
      002D13 EF               [12] 2855 	mov	a,r7
      002D14 F0               [24] 2856 	movx	@dptr,a
      002D15 90 00 01         [24] 2857 	mov	dptr,#_buffers
      002D18 75 F0 00         [24] 2858 	mov	b,#0x00
      002D1B C0 07            [24] 2859 	push	ar7
      002D1D 12 24 C8         [24] 2860 	lcall	_store_in_buffer
      002D20 D0 07            [24] 2861 	pop	ar7
      002D22 80 12            [24] 2862 	sjmp	00103$
      002D24                       2863 00102$:
                                   2864 ;	src/main.c:339: store_in_buffer(&buffers[1], received_char);
      002D24 90 00 36         [24] 2865 	mov	dptr,#_store_in_buffer_PARM_2
      002D27 EF               [12] 2866 	mov	a,r7
      002D28 F0               [24] 2867 	movx	@dptr,a
      002D29 90 00 09         [24] 2868 	mov	dptr,#(_buffers + 0x0008)
      002D2C 75 F0 00         [24] 2869 	mov	b,#0x00
      002D2F C0 07            [24] 2870 	push	ar7
      002D31 12 24 C8         [24] 2871 	lcall	_store_in_buffer
      002D34 D0 07            [24] 2872 	pop	ar7
      002D36                       2873 00103$:
                                   2874 ;	src/main.c:342: switch(received_char)
      002D36 BF 23 02         [24] 2875 	cjne	r7,#0x23,00149$
      002D39 80 38            [24] 2876 	sjmp	00109$
      002D3B                       2877 00149$:
      002D3B BF 24 02         [24] 2878 	cjne	r7,#0x24,00150$
      002D3E 80 2D            [24] 2879 	sjmp	00108$
      002D40                       2880 00150$:
      002D40 BF 25 02         [24] 2881 	cjne	r7,#0x25,00151$
      002D43 80 19            [24] 2882 	sjmp	00106$
      002D45                       2883 00151$:
      002D45 BF 3D 02         [24] 2884 	cjne	r7,#0x3d,00152$
      002D48 80 0F            [24] 2885 	sjmp	00105$
      002D4A                       2886 00152$:
      002D4A BF 3F 02         [24] 2887 	cjne	r7,#0x3f,00153$
      002D4D 80 05            [24] 2888 	sjmp	00104$
      002D4F                       2889 00153$:
                                   2890 ;	src/main.c:344: case '?':
      002D4F BF 40 99         [24] 2891 	cjne	r7,#0x40,00112$
      002D52 80 10            [24] 2892 	sjmp	00107$
      002D54                       2893 00104$:
                                   2894 ;	src/main.c:345: qmark_command_handler();
      002D54 12 28 26         [24] 2895 	lcall	_qmark_command_handler
                                   2896 ;	src/main.c:346: break;
                                   2897 ;	src/main.c:347: case '=':
      002D57 80 92            [24] 2898 	sjmp	00112$
      002D59                       2899 00105$:
                                   2900 ;	src/main.c:348: enter_command_handler();
      002D59 12 2A 0D         [24] 2901 	lcall	_enter_command_handler
                                   2902 ;	src/main.c:349: break;
                                   2903 ;	src/main.c:350: case '%':
      002D5C 80 8D            [24] 2904 	sjmp	00112$
      002D5E                       2905 00106$:
                                   2906 ;	src/main.c:351: percent_command_handler();
      002D5E 12 2B B2         [24] 2907 	lcall	_percent_command_handler
                                   2908 ;	src/main.c:352: break;
      002D61 02 2C EB         [24] 2909 	ljmp	00112$
                                   2910 ;	src/main.c:353: case '@':
      002D64                       2911 00107$:
                                   2912 ;	src/main.c:354: free_all_buffers();
      002D64 12 27 A3         [24] 2913 	lcall	_free_all_buffers
                                   2914 ;	src/main.c:355: initialize_buffers();
      002D67 12 20 C8         [24] 2915 	lcall	_initialize_buffers
                                   2916 ;	src/main.c:356: break;
      002D6A 02 2C EB         [24] 2917 	ljmp	00112$
                                   2918 ;	src/main.c:357: case '$':
      002D6D                       2919 00108$:
                                   2920 ;	src/main.c:358: dollar_sign_command_handler();
      002D6D 12 2C 4F         [24] 2921 	lcall	_dollar_sign_command_handler
                                   2922 ;	src/main.c:359: break;
      002D70 02 2C EB         [24] 2923 	ljmp	00112$
                                   2924 ;	src/main.c:360: case '#':
      002D73                       2925 00109$:
                                   2926 ;	src/main.c:361: hashtag_command_handler();
      002D73 12 2C AC         [24] 2927 	lcall	_hashtag_command_handler
                                   2928 ;	src/main.c:363: }
                                   2929 ;	src/main.c:365: }
      002D76 02 2C EB         [24] 2930 	ljmp	00112$
                                   2931 	.area CSEG    (CODE)
                                   2932 	.area CONST   (CODE)
                                   2933 	.area CONST   (CODE)
      003E04                       2934 ___str_0:
      003E04 0D                    2935 	.db 0x0d
      003E05 0A                    2936 	.db 0x0a
      003E06 50 6C 65 61 73 65 20  2937 	.ascii "Please enter the last two digits of your ID:"
             65 6E 74 65 72 20 74
             68 65 20 6C 61 73 74
             20 74 77 6F 20 64 69
             67 69 74 73 20 6F 66
             20 79 6F 75 72 20 49
             44 3A
      003E32 00                    2938 	.db 0x00
                                   2939 	.area CSEG    (CODE)
                                   2940 	.area CONST   (CODE)
      003E33                       2941 ___str_1:
      003E33 0D                    2942 	.db 0x0d
      003E34 0A                    2943 	.db 0x0a
      003E35 42 75 66 66 65 72 20  2944 	.ascii "Buffer Size too big, please pick a smaller buffer size"
             53 69 7A 65 20 74 6F
             6F 20 62 69 67 2C 20
             70 6C 65 61 73 65 20
             70 69 63 6B 20 61 20
             73 6D 61 6C 6C 65 72
             20 62 75 66 66 65 72
             20 73 69 7A 65
      003E6B 00                    2945 	.db 0x00
                                   2946 	.area CSEG    (CODE)
                                   2947 	.area CONST   (CODE)
      003E6C                       2948 ___str_2:
      003E6C 0D                    2949 	.db 0x0d
      003E6D 0A                    2950 	.db 0x0a
      003E6E 73 74 75 64 65 6E 74  2951 	.ascii "student_number: %d"
             5F 6E 75 6D 62 65 72
             3A 20 25 64
      003E80 00                    2952 	.db 0x00
                                   2953 	.area CSEG    (CODE)
                                   2954 	.area CONST   (CODE)
      003E81                       2955 ___str_3:
      003E81 0D                    2956 	.db 0x0d
      003E82 0A                    2957 	.db 0x0a
      003E83 75 73 65 72 5F 62 75  2958 	.ascii "user_buffer_size: %zu"
             66 66 65 72 5F 73 69
             7A 65 3A 20 25 7A 75
      003E98 00                    2959 	.db 0x00
                                   2960 	.area CSEG    (CODE)
                                   2961 	.area CONST   (CODE)
      003E99                       2962 ___str_4:
      003E99 0D                    2963 	.db 0x0d
      003E9A 0A                    2964 	.db 0x0a
      003E9B 62 75 66 66 65 72 5F  2965 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75
      003EC4 00                    2966 	.db 0x00
                                   2967 	.area CSEG    (CODE)
                                   2968 	.area CONST   (CODE)
      003EC5                       2969 ___str_5:
      003EC5 0D                    2970 	.db 0x0d
      003EC6 0A                    2971 	.db 0x0a
      003EC7 48 65 61 70 20 73 74  2972 	.ascii "Heap starts @ %p, ends @ %p, size: %zu"
             61 72 74 73 20 40 20
             25 70 2C 20 65 6E 64
             73 20 40 20 25 70 2C
             20 73 69 7A 65 3A 20
             25 7A 75
      003EED 00                    2973 	.db 0x00
                                   2974 	.area CSEG    (CODE)
                                   2975 	.area CONST   (CODE)
      003EEE                       2976 ___str_6:
      003EEE 0D                    2977 	.db 0x0d
      003EEF 0A                    2978 	.db 0x0a
      003EF0 20 20 20 20 20 20 20  2979 	.ascii "        %s"
             20 25 73
      003EFA 00                    2980 	.db 0x00
                                   2981 	.area CSEG    (CODE)
                                   2982 	.area CONST   (CODE)
      003EFB                       2983 ___str_7:
      003EFB 0D                    2984 	.db 0x0d
      003EFC 0A                    2985 	.db 0x0a
      003EFD 2D 2D 2D 2D 2D 2D 2D  2986 	.ascii "------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D
      003F1B 00                    2987 	.db 0x00
                                   2988 	.area CSEG    (CODE)
                                   2989 	.area CONST   (CODE)
      003F1C                       2990 ___str_8:
      003F1C 48 45 41 50 20 52 45  2991 	.ascii "HEAP REPORT"
             50 4F 52 54
      003F27 00                    2992 	.db 0x00
                                   2993 	.area CSEG    (CODE)
                                   2994 	.area CONST   (CODE)
      003F28                       2995 ___str_9:
      003F28 0D                    2996 	.db 0x0d
      003F29 0A                    2997 	.db 0x0a
      003F2A 62 75 66 66 65 72 5F  2998 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu, contains %zu alph"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75 2C
             20 63 6F 6E 74 61 69
             6E 73 20 25 7A 75 20
             61 6C 70 68
      003F66 61 62 65 74 20 63 68  2999 	.ascii "abet chars, has %zu chars remaining"
             61 72 73 2C 20 68 61
             73 20 25 7A 75 20 63
             68 61 72 73 20 72 65
             6D 61 69 6E 69 6E 67
      003F89 00                    3000 	.db 0x00
                                   3001 	.area CSEG    (CODE)
                                   3002 	.area CONST   (CODE)
      003F8A                       3003 ___str_10:
      003F8A 0D                    3004 	.db 0x0d
      003F8B 0A                    3005 	.db 0x0a
      003F8C 00                    3006 	.db 0x00
                                   3007 	.area CSEG    (CODE)
                                   3008 	.area CONST   (CODE)
      003F8D                       3009 ___str_11:
      003F8D 0D                    3010 	.db 0x0d
      003F8E 0A                    3011 	.db 0x0a
      003F8F 50 6C 65 61 73 65 20  3012 	.ascii "Please enter a valid buffer size that is divisible by 32 [64"
             65 6E 74 65 72 20 61
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             73 69 7A 65 20 74 68
             61 74 20 69 73 20 64
             69 76 69 73 69 62 6C
             65 20 62 79 20 33 32
             20 5B 36 34
      003FCB 2C 25 7A 75 5D 3A 20  3013 	.ascii ",%zu]: "
      003FD2 00                    3014 	.db 0x00
                                   3015 	.area CSEG    (CODE)
                                   3016 	.area CONST   (CODE)
      003FD3                       3017 ___str_12:
      003FD3 0D                    3018 	.db 0x0d
      003FD4 0A                    3019 	.db 0x0a
      003FD5 20 52 65 63 65 69 76  3020 	.ascii " Received %zu chars since last invocation of ?"
             65 64 20 25 7A 75 20
             63 68 61 72 73 20 73
             69 6E 63 65 20 6C 61
             73 74 20 69 6E 76 6F
             63 61 74 69 6F 6E 20
             6F 66 20 3F
      004003 00                    3021 	.db 0x00
                                   3022 	.area CSEG    (CODE)
                                   3023 	.area CONST   (CODE)
      004004                       3024 ___str_13:
      004004 25 63                 3025 	.ascii "%c"
      004006 00                    3026 	.db 0x00
                                   3027 	.area CSEG    (CODE)
                                   3028 	.area CONST   (CODE)
      004007                       3029 ___str_14:
      004007 44 75 6D 70 20 42 75  3030 	.ascii "Dump Buffer"
             66 66 65 72
      004012 00                    3031 	.db 0x00
                                   3032 	.area CSEG    (CODE)
                                   3033 	.area CONST   (CODE)
      004013                       3034 ___str_15:
      004013 0D                    3035 	.db 0x0d
      004014 0A                    3036 	.db 0x0a
      004015 20 42 75 66 66 65 72  3037 	.ascii " Buffer %d "
             20 25 64 20
      004020 00                    3038 	.db 0x00
                                   3039 	.area CSEG    (CODE)
                                   3040 	.area CONST   (CODE)
      004021                       3041 ___str_16:
      004021 0D                    3042 	.db 0x0d
      004022 0A                    3043 	.db 0x0a
      004023 2D 2D 2D 2D 2D 2D 2D  3044 	.ascii "----------"
             2D 2D 2D
      00402D 00                    3045 	.db 0x00
                                   3046 	.area CSEG    (CODE)
                                   3047 	.area CONST   (CODE)
      00402E                       3048 ___str_17:
      00402E 0D                    3049 	.db 0x0d
      00402F 0A                    3050 	.db 0x0a
      004030 25 30 34 58 3A        3051 	.ascii "%04X:"
      004035 00                    3052 	.db 0x00
                                   3053 	.area CSEG    (CODE)
                                   3054 	.area CONST   (CODE)
      004036                       3055 ___str_18:
      004036 20 25 30 32 68 68 58  3056 	.ascii " %02hhX"
      00403D 00                    3057 	.db 0x00
                                   3058 	.area CSEG    (CODE)
                                   3059 	.area CONST   (CODE)
      00403E                       3060 ___str_19:
      00403E 43 6C 65 61 72 20 42  3061 	.ascii "Clear Buffers"
             75 66 66 65 72 73
      00404B 00                    3062 	.db 0x00
                                   3063 	.area CSEG    (CODE)
                                   3064 	.area CONST   (CODE)
      00404C                       3065 ___str_20:
      00404C 0D                    3066 	.db 0x0d
      00404D 0A                    3067 	.db 0x0a
      00404E 45 6E 74 65 72 20 61  3068 	.ascii "Enter a char: "
             20 63 68 61 72 3A 20
      00405C 00                    3069 	.db 0x00
                                   3070 	.area CSEG    (CODE)
                                   3071 	.area XINIT   (CODE)
                                   3072 	.area CABS    (ABS,CODE)
