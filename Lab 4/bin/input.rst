                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module input
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _putchar
                                     12 	.globl _getchar
                                     13 	.globl _memset
                                     14 	.globl _P5_7
                                     15 	.globl _P5_6
                                     16 	.globl _P5_5
                                     17 	.globl _P5_4
                                     18 	.globl _P5_3
                                     19 	.globl _P5_2
                                     20 	.globl _P5_1
                                     21 	.globl _P5_0
                                     22 	.globl _P4_7
                                     23 	.globl _P4_6
                                     24 	.globl _P4_5
                                     25 	.globl _P4_4
                                     26 	.globl _P4_3
                                     27 	.globl _P4_2
                                     28 	.globl _P4_1
                                     29 	.globl _P4_0
                                     30 	.globl _PX0L
                                     31 	.globl _PT0L
                                     32 	.globl _PX1L
                                     33 	.globl _PT1L
                                     34 	.globl _PSL
                                     35 	.globl _PT2L
                                     36 	.globl _PPCL
                                     37 	.globl _EC
                                     38 	.globl _CCF0
                                     39 	.globl _CCF1
                                     40 	.globl _CCF2
                                     41 	.globl _CCF3
                                     42 	.globl _CCF4
                                     43 	.globl _CR
                                     44 	.globl _CF
                                     45 	.globl _TF2
                                     46 	.globl _EXF2
                                     47 	.globl _RCLK
                                     48 	.globl _TCLK
                                     49 	.globl _EXEN2
                                     50 	.globl _TR2
                                     51 	.globl _C_T2
                                     52 	.globl _CP_RL2
                                     53 	.globl _T2CON_7
                                     54 	.globl _T2CON_6
                                     55 	.globl _T2CON_5
                                     56 	.globl _T2CON_4
                                     57 	.globl _T2CON_3
                                     58 	.globl _T2CON_2
                                     59 	.globl _T2CON_1
                                     60 	.globl _T2CON_0
                                     61 	.globl _PT2
                                     62 	.globl _ET2
                                     63 	.globl _CY
                                     64 	.globl _AC
                                     65 	.globl _F0
                                     66 	.globl _RS1
                                     67 	.globl _RS0
                                     68 	.globl _OV
                                     69 	.globl _F1
                                     70 	.globl _P
                                     71 	.globl _PS
                                     72 	.globl _PT1
                                     73 	.globl _PX1
                                     74 	.globl _PT0
                                     75 	.globl _PX0
                                     76 	.globl _RD
                                     77 	.globl _WR
                                     78 	.globl _T1
                                     79 	.globl _T0
                                     80 	.globl _INT1
                                     81 	.globl _INT0
                                     82 	.globl _TXD
                                     83 	.globl _RXD
                                     84 	.globl _P3_7
                                     85 	.globl _P3_6
                                     86 	.globl _P3_5
                                     87 	.globl _P3_4
                                     88 	.globl _P3_3
                                     89 	.globl _P3_2
                                     90 	.globl _P3_1
                                     91 	.globl _P3_0
                                     92 	.globl _EA
                                     93 	.globl _ES
                                     94 	.globl _ET1
                                     95 	.globl _EX1
                                     96 	.globl _ET0
                                     97 	.globl _EX0
                                     98 	.globl _P2_7
                                     99 	.globl _P2_6
                                    100 	.globl _P2_5
                                    101 	.globl _P2_4
                                    102 	.globl _P2_3
                                    103 	.globl _P2_2
                                    104 	.globl _P2_1
                                    105 	.globl _P2_0
                                    106 	.globl _SM0
                                    107 	.globl _SM1
                                    108 	.globl _SM2
                                    109 	.globl _REN
                                    110 	.globl _TB8
                                    111 	.globl _RB8
                                    112 	.globl _TI
                                    113 	.globl _RI
                                    114 	.globl _P1_7
                                    115 	.globl _P1_6
                                    116 	.globl _P1_5
                                    117 	.globl _P1_4
                                    118 	.globl _P1_3
                                    119 	.globl _P1_2
                                    120 	.globl _P1_1
                                    121 	.globl _P1_0
                                    122 	.globl _TF1
                                    123 	.globl _TR1
                                    124 	.globl _TF0
                                    125 	.globl _TR0
                                    126 	.globl _IE1
                                    127 	.globl _IT1
                                    128 	.globl _IE0
                                    129 	.globl _IT0
                                    130 	.globl _P0_7
                                    131 	.globl _P0_6
                                    132 	.globl _P0_5
                                    133 	.globl _P0_4
                                    134 	.globl _P0_3
                                    135 	.globl _P0_2
                                    136 	.globl _P0_1
                                    137 	.globl _P0_0
                                    138 	.globl _EECON
                                    139 	.globl _KBF
                                    140 	.globl _KBE
                                    141 	.globl _KBLS
                                    142 	.globl _BRL
                                    143 	.globl _BDRCON
                                    144 	.globl _T2MOD
                                    145 	.globl _SPDAT
                                    146 	.globl _SPSTA
                                    147 	.globl _SPCON
                                    148 	.globl _SADEN
                                    149 	.globl _SADDR
                                    150 	.globl _WDTPRG
                                    151 	.globl _WDTRST
                                    152 	.globl _P5
                                    153 	.globl _P4
                                    154 	.globl _IPH1
                                    155 	.globl _IPL1
                                    156 	.globl _IPH0
                                    157 	.globl _IPL0
                                    158 	.globl _IEN1
                                    159 	.globl _IEN0
                                    160 	.globl _CMOD
                                    161 	.globl _CL
                                    162 	.globl _CH
                                    163 	.globl _CCON
                                    164 	.globl _CCAPM4
                                    165 	.globl _CCAPM3
                                    166 	.globl _CCAPM2
                                    167 	.globl _CCAPM1
                                    168 	.globl _CCAPM0
                                    169 	.globl _CCAP4L
                                    170 	.globl _CCAP3L
                                    171 	.globl _CCAP2L
                                    172 	.globl _CCAP1L
                                    173 	.globl _CCAP0L
                                    174 	.globl _CCAP4H
                                    175 	.globl _CCAP3H
                                    176 	.globl _CCAP2H
                                    177 	.globl _CCAP1H
                                    178 	.globl _CCAP0H
                                    179 	.globl _CKCON1
                                    180 	.globl _CKCON0
                                    181 	.globl _CKRL
                                    182 	.globl _AUXR1
                                    183 	.globl _AUXR
                                    184 	.globl _TH2
                                    185 	.globl _TL2
                                    186 	.globl _RCAP2H
                                    187 	.globl _RCAP2L
                                    188 	.globl _T2CON
                                    189 	.globl _B
                                    190 	.globl _ACC
                                    191 	.globl _PSW
                                    192 	.globl _IP
                                    193 	.globl _P3
                                    194 	.globl _IE
                                    195 	.globl _P2
                                    196 	.globl _SBUF
                                    197 	.globl _SCON
                                    198 	.globl _P1
                                    199 	.globl _TH1
                                    200 	.globl _TH0
                                    201 	.globl _TL1
                                    202 	.globl _TL0
                                    203 	.globl _TMOD
                                    204 	.globl _TCON
                                    205 	.globl _PCON
                                    206 	.globl _DPH
                                    207 	.globl _DPL
                                    208 	.globl _SP
                                    209 	.globl _P0
                                    210 	.globl _character_count
                                    211 	.globl _string_input_buffer
                                    212 	.globl _get_input_buffer
                                    213 	.globl _get_string
                                    214 	.globl _get_next_input_char
                                    215 	.globl _get_hex_value
                                    216 	.globl _get_char_count
                                    217 	.globl _reset_char_count
                                    218 ;--------------------------------------------------------
                                    219 ; special function registers
                                    220 ;--------------------------------------------------------
                                    221 	.area RSEG    (ABS,DATA)
      000000                        222 	.org 0x0000
                           000080   223 _P0	=	0x0080
                           000081   224 _SP	=	0x0081
                           000082   225 _DPL	=	0x0082
                           000083   226 _DPH	=	0x0083
                           000087   227 _PCON	=	0x0087
                           000088   228 _TCON	=	0x0088
                           000089   229 _TMOD	=	0x0089
                           00008A   230 _TL0	=	0x008a
                           00008B   231 _TL1	=	0x008b
                           00008C   232 _TH0	=	0x008c
                           00008D   233 _TH1	=	0x008d
                           000090   234 _P1	=	0x0090
                           000098   235 _SCON	=	0x0098
                           000099   236 _SBUF	=	0x0099
                           0000A0   237 _P2	=	0x00a0
                           0000A8   238 _IE	=	0x00a8
                           0000B0   239 _P3	=	0x00b0
                           0000B8   240 _IP	=	0x00b8
                           0000D0   241 _PSW	=	0x00d0
                           0000E0   242 _ACC	=	0x00e0
                           0000F0   243 _B	=	0x00f0
                           0000C8   244 _T2CON	=	0x00c8
                           0000CA   245 _RCAP2L	=	0x00ca
                           0000CB   246 _RCAP2H	=	0x00cb
                           0000CC   247 _TL2	=	0x00cc
                           0000CD   248 _TH2	=	0x00cd
                           00008E   249 _AUXR	=	0x008e
                           0000A2   250 _AUXR1	=	0x00a2
                           000097   251 _CKRL	=	0x0097
                           00008F   252 _CKCON0	=	0x008f
                           0000AF   253 _CKCON1	=	0x00af
                           0000FA   254 _CCAP0H	=	0x00fa
                           0000FB   255 _CCAP1H	=	0x00fb
                           0000FC   256 _CCAP2H	=	0x00fc
                           0000FD   257 _CCAP3H	=	0x00fd
                           0000FE   258 _CCAP4H	=	0x00fe
                           0000EA   259 _CCAP0L	=	0x00ea
                           0000EB   260 _CCAP1L	=	0x00eb
                           0000EC   261 _CCAP2L	=	0x00ec
                           0000ED   262 _CCAP3L	=	0x00ed
                           0000EE   263 _CCAP4L	=	0x00ee
                           0000DA   264 _CCAPM0	=	0x00da
                           0000DB   265 _CCAPM1	=	0x00db
                           0000DC   266 _CCAPM2	=	0x00dc
                           0000DD   267 _CCAPM3	=	0x00dd
                           0000DE   268 _CCAPM4	=	0x00de
                           0000D8   269 _CCON	=	0x00d8
                           0000F9   270 _CH	=	0x00f9
                           0000E9   271 _CL	=	0x00e9
                           0000D9   272 _CMOD	=	0x00d9
                           0000A8   273 _IEN0	=	0x00a8
                           0000B1   274 _IEN1	=	0x00b1
                           0000B8   275 _IPL0	=	0x00b8
                           0000B7   276 _IPH0	=	0x00b7
                           0000B2   277 _IPL1	=	0x00b2
                           0000B3   278 _IPH1	=	0x00b3
                           0000C0   279 _P4	=	0x00c0
                           0000E8   280 _P5	=	0x00e8
                           0000A6   281 _WDTRST	=	0x00a6
                           0000A7   282 _WDTPRG	=	0x00a7
                           0000A9   283 _SADDR	=	0x00a9
                           0000B9   284 _SADEN	=	0x00b9
                           0000C3   285 _SPCON	=	0x00c3
                           0000C4   286 _SPSTA	=	0x00c4
                           0000C5   287 _SPDAT	=	0x00c5
                           0000C9   288 _T2MOD	=	0x00c9
                           00009B   289 _BDRCON	=	0x009b
                           00009A   290 _BRL	=	0x009a
                           00009C   291 _KBLS	=	0x009c
                           00009D   292 _KBE	=	0x009d
                           00009E   293 _KBF	=	0x009e
                           0000D2   294 _EECON	=	0x00d2
                                    295 ;--------------------------------------------------------
                                    296 ; special function bits
                                    297 ;--------------------------------------------------------
                                    298 	.area RSEG    (ABS,DATA)
      000000                        299 	.org 0x0000
                           000080   300 _P0_0	=	0x0080
                           000081   301 _P0_1	=	0x0081
                           000082   302 _P0_2	=	0x0082
                           000083   303 _P0_3	=	0x0083
                           000084   304 _P0_4	=	0x0084
                           000085   305 _P0_5	=	0x0085
                           000086   306 _P0_6	=	0x0086
                           000087   307 _P0_7	=	0x0087
                           000088   308 _IT0	=	0x0088
                           000089   309 _IE0	=	0x0089
                           00008A   310 _IT1	=	0x008a
                           00008B   311 _IE1	=	0x008b
                           00008C   312 _TR0	=	0x008c
                           00008D   313 _TF0	=	0x008d
                           00008E   314 _TR1	=	0x008e
                           00008F   315 _TF1	=	0x008f
                           000090   316 _P1_0	=	0x0090
                           000091   317 _P1_1	=	0x0091
                           000092   318 _P1_2	=	0x0092
                           000093   319 _P1_3	=	0x0093
                           000094   320 _P1_4	=	0x0094
                           000095   321 _P1_5	=	0x0095
                           000096   322 _P1_6	=	0x0096
                           000097   323 _P1_7	=	0x0097
                           000098   324 _RI	=	0x0098
                           000099   325 _TI	=	0x0099
                           00009A   326 _RB8	=	0x009a
                           00009B   327 _TB8	=	0x009b
                           00009C   328 _REN	=	0x009c
                           00009D   329 _SM2	=	0x009d
                           00009E   330 _SM1	=	0x009e
                           00009F   331 _SM0	=	0x009f
                           0000A0   332 _P2_0	=	0x00a0
                           0000A1   333 _P2_1	=	0x00a1
                           0000A2   334 _P2_2	=	0x00a2
                           0000A3   335 _P2_3	=	0x00a3
                           0000A4   336 _P2_4	=	0x00a4
                           0000A5   337 _P2_5	=	0x00a5
                           0000A6   338 _P2_6	=	0x00a6
                           0000A7   339 _P2_7	=	0x00a7
                           0000A8   340 _EX0	=	0x00a8
                           0000A9   341 _ET0	=	0x00a9
                           0000AA   342 _EX1	=	0x00aa
                           0000AB   343 _ET1	=	0x00ab
                           0000AC   344 _ES	=	0x00ac
                           0000AF   345 _EA	=	0x00af
                           0000B0   346 _P3_0	=	0x00b0
                           0000B1   347 _P3_1	=	0x00b1
                           0000B2   348 _P3_2	=	0x00b2
                           0000B3   349 _P3_3	=	0x00b3
                           0000B4   350 _P3_4	=	0x00b4
                           0000B5   351 _P3_5	=	0x00b5
                           0000B6   352 _P3_6	=	0x00b6
                           0000B7   353 _P3_7	=	0x00b7
                           0000B0   354 _RXD	=	0x00b0
                           0000B1   355 _TXD	=	0x00b1
                           0000B2   356 _INT0	=	0x00b2
                           0000B3   357 _INT1	=	0x00b3
                           0000B4   358 _T0	=	0x00b4
                           0000B5   359 _T1	=	0x00b5
                           0000B6   360 _WR	=	0x00b6
                           0000B7   361 _RD	=	0x00b7
                           0000B8   362 _PX0	=	0x00b8
                           0000B9   363 _PT0	=	0x00b9
                           0000BA   364 _PX1	=	0x00ba
                           0000BB   365 _PT1	=	0x00bb
                           0000BC   366 _PS	=	0x00bc
                           0000D0   367 _P	=	0x00d0
                           0000D1   368 _F1	=	0x00d1
                           0000D2   369 _OV	=	0x00d2
                           0000D3   370 _RS0	=	0x00d3
                           0000D4   371 _RS1	=	0x00d4
                           0000D5   372 _F0	=	0x00d5
                           0000D6   373 _AC	=	0x00d6
                           0000D7   374 _CY	=	0x00d7
                           0000AD   375 _ET2	=	0x00ad
                           0000BD   376 _PT2	=	0x00bd
                           0000C8   377 _T2CON_0	=	0x00c8
                           0000C9   378 _T2CON_1	=	0x00c9
                           0000CA   379 _T2CON_2	=	0x00ca
                           0000CB   380 _T2CON_3	=	0x00cb
                           0000CC   381 _T2CON_4	=	0x00cc
                           0000CD   382 _T2CON_5	=	0x00cd
                           0000CE   383 _T2CON_6	=	0x00ce
                           0000CF   384 _T2CON_7	=	0x00cf
                           0000C8   385 _CP_RL2	=	0x00c8
                           0000C9   386 _C_T2	=	0x00c9
                           0000CA   387 _TR2	=	0x00ca
                           0000CB   388 _EXEN2	=	0x00cb
                           0000CC   389 _TCLK	=	0x00cc
                           0000CD   390 _RCLK	=	0x00cd
                           0000CE   391 _EXF2	=	0x00ce
                           0000CF   392 _TF2	=	0x00cf
                           0000DF   393 _CF	=	0x00df
                           0000DE   394 _CR	=	0x00de
                           0000DC   395 _CCF4	=	0x00dc
                           0000DB   396 _CCF3	=	0x00db
                           0000DA   397 _CCF2	=	0x00da
                           0000D9   398 _CCF1	=	0x00d9
                           0000D8   399 _CCF0	=	0x00d8
                           0000AE   400 _EC	=	0x00ae
                           0000BE   401 _PPCL	=	0x00be
                           0000BD   402 _PT2L	=	0x00bd
                           0000BC   403 _PSL	=	0x00bc
                           0000BB   404 _PT1L	=	0x00bb
                           0000BA   405 _PX1L	=	0x00ba
                           0000B9   406 _PT0L	=	0x00b9
                           0000B8   407 _PX0L	=	0x00b8
                           0000C0   408 _P4_0	=	0x00c0
                           0000C1   409 _P4_1	=	0x00c1
                           0000C2   410 _P4_2	=	0x00c2
                           0000C3   411 _P4_3	=	0x00c3
                           0000C4   412 _P4_4	=	0x00c4
                           0000C5   413 _P4_5	=	0x00c5
                           0000C6   414 _P4_6	=	0x00c6
                           0000C7   415 _P4_7	=	0x00c7
                           0000E8   416 _P5_0	=	0x00e8
                           0000E9   417 _P5_1	=	0x00e9
                           0000EA   418 _P5_2	=	0x00ea
                           0000EB   419 _P5_3	=	0x00eb
                           0000EC   420 _P5_4	=	0x00ec
                           0000ED   421 _P5_5	=	0x00ed
                           0000EE   422 _P5_6	=	0x00ee
                           0000EF   423 _P5_7	=	0x00ef
                                    424 ;--------------------------------------------------------
                                    425 ; overlayable register banks
                                    426 ;--------------------------------------------------------
                                    427 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        428 	.ds 8
                                    429 ;--------------------------------------------------------
                                    430 ; internal ram data
                                    431 ;--------------------------------------------------------
                                    432 	.area DSEG    (DATA)
                                    433 ;--------------------------------------------------------
                                    434 ; overlayable items in internal ram
                                    435 ;--------------------------------------------------------
                                    436 ;--------------------------------------------------------
                                    437 ; indirectly addressable internal ram data
                                    438 ;--------------------------------------------------------
                                    439 	.area ISEG    (DATA)
                                    440 ;--------------------------------------------------------
                                    441 ; absolute internal ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area IABS    (ABS,DATA)
                                    444 	.area IABS    (ABS,DATA)
                                    445 ;--------------------------------------------------------
                                    446 ; bit data
                                    447 ;--------------------------------------------------------
                                    448 	.area BSEG    (BIT)
      000000                        449 _get_string_sloc0_1_0:
      000000                        450 	.ds 1
                                    451 ;--------------------------------------------------------
                                    452 ; paged external ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area PSEG    (PAG,XDATA)
                                    455 ;--------------------------------------------------------
                                    456 ; external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area XSEG    (XDATA)
      002010                        459 _string_input_buffer::
      002010                        460 	.ds 10
      00201A                        461 _character_count::
      00201A                        462 	.ds 2
      00201C                        463 _get_string_current_buffer_loc_65537_49:
      00201C                        464 	.ds 3
      00201F                        465 _get_hex_value_return_value_65536_56:
      00201F                        466 	.ds 3
      002022                        467 _get_hex_value_src_65537_58:
      002022                        468 	.ds 3
      002025                        469 _get_hex_value_parsed_value_65538_60:
      002025                        470 	.ds 2
      002027                        471 _get_hex_value_c_65538_60:
      002027                        472 	.ds 1
                                    473 ;--------------------------------------------------------
                                    474 ; absolute external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XABS    (ABS,XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; external initialized ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XISEG   (XDATA)
                                    481 	.area HOME    (CODE)
                                    482 	.area GSINIT0 (CODE)
                                    483 	.area GSINIT1 (CODE)
                                    484 	.area GSINIT2 (CODE)
                                    485 	.area GSINIT3 (CODE)
                                    486 	.area GSINIT4 (CODE)
                                    487 	.area GSINIT5 (CODE)
                                    488 	.area GSINIT  (CODE)
                                    489 	.area GSFINAL (CODE)
                                    490 	.area CSEG    (CODE)
                                    491 ;--------------------------------------------------------
                                    492 ; global & static initialisations
                                    493 ;--------------------------------------------------------
                                    494 	.area HOME    (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 	.area GSFINAL (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 ;--------------------------------------------------------
                                    499 ; Home
                                    500 ;--------------------------------------------------------
                                    501 	.area HOME    (CODE)
                                    502 	.area HOME    (CODE)
                                    503 ;--------------------------------------------------------
                                    504 ; code
                                    505 ;--------------------------------------------------------
                                    506 	.area CSEG    (CODE)
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'get_input_buffer'
                                    509 ;------------------------------------------------------------
                                    510 ;	src/input.c:22: const char *get_input_buffer() {
                                    511 ;	-----------------------------------------
                                    512 ;	 function get_input_buffer
                                    513 ;	-----------------------------------------
      0025B3                        514 _get_input_buffer:
                           000007   515 	ar7 = 0x07
                           000006   516 	ar6 = 0x06
                           000005   517 	ar5 = 0x05
                           000004   518 	ar4 = 0x04
                           000003   519 	ar3 = 0x03
                           000002   520 	ar2 = 0x02
                           000001   521 	ar1 = 0x01
                           000000   522 	ar0 = 0x00
                                    523 ;	src/input.c:23: return string_input_buffer; 
      0025B3 90 20 10         [24]  524 	mov	dptr,#_string_input_buffer
      0025B6 75 F0 00         [24]  525 	mov	b,#0x00
                                    526 ;	src/input.c:24: }
      0025B9 22               [24]  527 	ret
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'get_string'
                                    530 ;------------------------------------------------------------
                                    531 ;received_char             Allocated with name '_get_string_received_char_65537_49'
                                    532 ;current_buffer_loc        Allocated with name '_get_string_current_buffer_loc_65537_49'
                                    533 ;------------------------------------------------------------
                                    534 ;	src/input.c:26: void get_string()
                                    535 ;	-----------------------------------------
                                    536 ;	 function get_string
                                    537 ;	-----------------------------------------
      0025BA                        538 _get_string:
                                    539 ;	src/input.c:28: memset(string_input_buffer, '\0', BUFFER_SZ);
      0025BA 90 20 76         [24]  540 	mov	dptr,#_memset_PARM_2
      0025BD E4               [12]  541 	clr	a
      0025BE F0               [24]  542 	movx	@dptr,a
      0025BF 90 20 77         [24]  543 	mov	dptr,#_memset_PARM_3
      0025C2 74 0A            [12]  544 	mov	a,#0x0a
      0025C4 F0               [24]  545 	movx	@dptr,a
      0025C5 E4               [12]  546 	clr	a
      0025C6 A3               [24]  547 	inc	dptr
      0025C7 F0               [24]  548 	movx	@dptr,a
      0025C8 90 20 10         [24]  549 	mov	dptr,#_string_input_buffer
      0025CB 75 F0 00         [24]  550 	mov	b,#0x00
      0025CE 12 31 CA         [24]  551 	lcall	_memset
                                    552 ;	src/input.c:30: char *current_buffer_loc = string_input_buffer;
      0025D1 90 20 1C         [24]  553 	mov	dptr,#_get_string_current_buffer_loc_65537_49
      0025D4 74 10            [12]  554 	mov	a,#_string_input_buffer
      0025D6 F0               [24]  555 	movx	@dptr,a
      0025D7 74 20            [12]  556 	mov	a,#(_string_input_buffer >> 8)
      0025D9 A3               [24]  557 	inc	dptr
      0025DA F0               [24]  558 	movx	@dptr,a
      0025DB E4               [12]  559 	clr	a
      0025DC A3               [24]  560 	inc	dptr
      0025DD F0               [24]  561 	movx	@dptr,a
                                    562 ;	src/input.c:31: do {
      0025DE                        563 00118$:
                                    564 ;	src/input.c:32: received_char = getchar(); 
      0025DE 12 25 A5         [24]  565 	lcall	_getchar
      0025E1 AE 82            [24]  566 	mov	r6,dpl
                                    567 ;	src/input.c:33: putchar(received_char);
      0025E3 8E 05            [24]  568 	mov	ar5,r6
      0025E5 7F 00            [12]  569 	mov	r7,#0x00
      0025E7 8D 82            [24]  570 	mov	dpl,r5
      0025E9 8F 83            [24]  571 	mov	dph,r7
      0025EB C0 06            [24]  572 	push	ar6
      0025ED 12 25 86         [24]  573 	lcall	_putchar
      0025F0 D0 06            [24]  574 	pop	ar6
                                    575 ;	src/input.c:39: if (received_char == BACKSPACE)
      0025F2 E4               [12]  576 	clr	a
      0025F3 BE 08 01         [24]  577 	cjne	r6,#0x08,00171$
      0025F6 04               [12]  578 	inc	a
      0025F7                        579 00171$:
      0025F7 FF               [12]  580 	mov	r7,a
      0025F8 60 14            [24]  581 	jz	00102$
                                    582 ;	src/input.c:41: putchar(' ');
      0025FA 90 00 20         [24]  583 	mov	dptr,#0x0020
      0025FD C0 07            [24]  584 	push	ar7
      0025FF C0 06            [24]  585 	push	ar6
      002601 12 25 86         [24]  586 	lcall	_putchar
                                    587 ;	src/input.c:42: putchar('\b');
      002604 90 00 08         [24]  588 	mov	dptr,#0x0008
      002607 12 25 86         [24]  589 	lcall	_putchar
      00260A D0 06            [24]  590 	pop	ar6
      00260C D0 07            [24]  591 	pop	ar7
      00260E                        592 00102$:
                                    593 ;	src/input.c:45: && received_char != '\n'
      00260E BE 0D 03         [24]  594 	cjne	r6,#0x0d,00174$
      002611 D3               [12]  595 	setb	c
      002612 80 01            [24]  596 	sjmp	00175$
      002614                        597 00174$:
      002614 C3               [12]  598 	clr	c
      002615                        599 00175$:
      002615 92 00            [24]  600 	mov	_get_string_sloc0_1_0,c
      002617 40 37            [24]  601 	jc	00109$
                                    602 ;	src/input.c:46: && received_char != '\0'
      002619 BE 0A 02         [24]  603 	cjne	r6,#0x0a,00177$
      00261C 80 32            [24]  604 	sjmp	00109$
      00261E                        605 00177$:
      00261E EE               [12]  606 	mov	a,r6
      00261F 60 2F            [24]  607 	jz	00109$
                                    608 ;	src/input.c:48: && received_char != BACKSPACE)
      002621 BE 7F 02         [24]  609 	cjne	r6,#0x7f,00179$
      002624 80 2A            [24]  610 	sjmp	00109$
      002626                        611 00179$:
      002626 BE 08 02         [24]  612 	cjne	r6,#0x08,00180$
      002629 80 25            [24]  613 	sjmp	00109$
      00262B                        614 00180$:
                                    615 ;	src/input.c:50: *current_buffer_loc= received_char;
      00262B 90 20 1C         [24]  616 	mov	dptr,#_get_string_current_buffer_loc_65537_49
      00262E E0               [24]  617 	movx	a,@dptr
      00262F FB               [12]  618 	mov	r3,a
      002630 A3               [24]  619 	inc	dptr
      002631 E0               [24]  620 	movx	a,@dptr
      002632 FC               [12]  621 	mov	r4,a
      002633 A3               [24]  622 	inc	dptr
      002634 E0               [24]  623 	movx	a,@dptr
      002635 FD               [12]  624 	mov	r5,a
      002636 8B 82            [24]  625 	mov	dpl,r3
      002638 8C 83            [24]  626 	mov	dph,r4
      00263A 8D F0            [24]  627 	mov	b,r5
      00263C EE               [12]  628 	mov	a,r6
      00263D 12 31 F2         [24]  629 	lcall	__gptrput
                                    630 ;	src/input.c:51: current_buffer_loc++;
      002640 90 20 1C         [24]  631 	mov	dptr,#_get_string_current_buffer_loc_65537_49
      002643 74 01            [12]  632 	mov	a,#0x01
      002645 2B               [12]  633 	add	a,r3
      002646 F0               [24]  634 	movx	@dptr,a
      002647 E4               [12]  635 	clr	a
      002648 3C               [12]  636 	addc	a,r4
      002649 A3               [24]  637 	inc	dptr
      00264A F0               [24]  638 	movx	@dptr,a
      00264B ED               [12]  639 	mov	a,r5
      00264C A3               [24]  640 	inc	dptr
      00264D F0               [24]  641 	movx	@dptr,a
      00264E 80 54            [24]  642 	sjmp	00119$
      002650                        643 00109$:
                                    644 ;	src/input.c:53: else if(received_char == DELETE || received_char == BACKSPACE)
      002650 BE 7F 02         [24]  645 	cjne	r6,#0x7f,00181$
      002653 80 03            [24]  646 	sjmp	00105$
      002655                        647 00181$:
      002655 EF               [12]  648 	mov	a,r7
      002656 60 4C            [24]  649 	jz	00119$
      002658                        650 00105$:
                                    651 ;	src/input.c:55: if (current_buffer_loc != string_input_buffer)
      002658 90 20 1C         [24]  652 	mov	dptr,#_get_string_current_buffer_loc_65537_49
      00265B E0               [24]  653 	movx	a,@dptr
      00265C FC               [12]  654 	mov	r4,a
      00265D A3               [24]  655 	inc	dptr
      00265E E0               [24]  656 	movx	a,@dptr
      00265F FD               [12]  657 	mov	r5,a
      002660 A3               [24]  658 	inc	dptr
      002661 E0               [24]  659 	movx	a,@dptr
      002662 FF               [12]  660 	mov	r7,a
      002663 74 10            [12]  661 	mov	a,#_string_input_buffer
      002665 C0 E0            [24]  662 	push	acc
      002667 74 20            [12]  663 	mov	a,#(_string_input_buffer >> 8)
      002669 C0 E0            [24]  664 	push	acc
      00266B E4               [12]  665 	clr	a
      00266C C0 E0            [24]  666 	push	acc
      00266E 8C 82            [24]  667 	mov	dpl,r4
      002670 8D 83            [24]  668 	mov	dph,r5
      002672 8F F0            [24]  669 	mov	b,r7
      002674 12 20 06         [24]  670 	lcall	___gptr_cmp
      002677 15 81            [12]  671 	dec	sp
      002679 15 81            [12]  672 	dec	sp
      00267B 15 81            [12]  673 	dec	sp
      00267D 60 10            [24]  674 	jz	00104$
                                    675 ;	src/input.c:57: current_buffer_loc--;
      00267F 1C               [12]  676 	dec	r4
      002680 BC FF 01         [24]  677 	cjne	r4,#0xff,00184$
      002683 1D               [12]  678 	dec	r5
      002684                        679 00184$:
      002684 90 20 1C         [24]  680 	mov	dptr,#_get_string_current_buffer_loc_65537_49
      002687 EC               [12]  681 	mov	a,r4
      002688 F0               [24]  682 	movx	@dptr,a
      002689 ED               [12]  683 	mov	a,r5
      00268A A3               [24]  684 	inc	dptr
      00268B F0               [24]  685 	movx	@dptr,a
      00268C EF               [12]  686 	mov	a,r7
      00268D A3               [24]  687 	inc	dptr
      00268E F0               [24]  688 	movx	@dptr,a
      00268F                        689 00104$:
                                    690 ;	src/input.c:59: *current_buffer_loc = '\0';
      00268F 90 20 1C         [24]  691 	mov	dptr,#_get_string_current_buffer_loc_65537_49
      002692 E0               [24]  692 	movx	a,@dptr
      002693 FC               [12]  693 	mov	r4,a
      002694 A3               [24]  694 	inc	dptr
      002695 E0               [24]  695 	movx	a,@dptr
      002696 FD               [12]  696 	mov	r5,a
      002697 A3               [24]  697 	inc	dptr
      002698 E0               [24]  698 	movx	a,@dptr
      002699 FF               [12]  699 	mov	r7,a
      00269A 8C 82            [24]  700 	mov	dpl,r4
      00269C 8D 83            [24]  701 	mov	dph,r5
      00269E 8F F0            [24]  702 	mov	b,r7
      0026A0 E4               [12]  703 	clr	a
      0026A1 12 31 F2         [24]  704 	lcall	__gptrput
      0026A4                        705 00119$:
                                    706 ;	src/input.c:63: && received_char != '\n' 
      0026A4 20 00 32         [24]  707 	jb	_get_string_sloc0_1_0,00120$
                                    708 ;	src/input.c:64: && received_char != '\0'
      0026A7 BE 0A 02         [24]  709 	cjne	r6,#0x0a,00186$
      0026AA 80 2D            [24]  710 	sjmp	00120$
      0026AC                        711 00186$:
      0026AC EE               [12]  712 	mov	a,r6
      0026AD 60 2A            [24]  713 	jz	00120$
                                    714 ;	src/input.c:65: && (current_buffer_loc < (string_input_buffer+BUFFER_SZ-1)));
      0026AF 90 20 1C         [24]  715 	mov	dptr,#_get_string_current_buffer_loc_65537_49
      0026B2 E0               [24]  716 	movx	a,@dptr
      0026B3 FD               [12]  717 	mov	r5,a
      0026B4 A3               [24]  718 	inc	dptr
      0026B5 E0               [24]  719 	movx	a,@dptr
      0026B6 FE               [12]  720 	mov	r6,a
      0026B7 A3               [24]  721 	inc	dptr
      0026B8 E0               [24]  722 	movx	a,@dptr
      0026B9 FF               [12]  723 	mov	r7,a
      0026BA 74 19            [12]  724 	mov	a,#(_string_input_buffer + 0x0009)
      0026BC C0 E0            [24]  725 	push	acc
      0026BE 74 20            [12]  726 	mov	a,#((_string_input_buffer + 0x0009) >> 8)
      0026C0 C0 E0            [24]  727 	push	acc
      0026C2 E4               [12]  728 	clr	a
      0026C3 C0 E0            [24]  729 	push	acc
      0026C5 8D 82            [24]  730 	mov	dpl,r5
      0026C7 8E 83            [24]  731 	mov	dph,r6
      0026C9 8F F0            [24]  732 	mov	b,r7
      0026CB 12 20 06         [24]  733 	lcall	___gptr_cmp
      0026CE 15 81            [12]  734 	dec	sp
      0026D0 15 81            [12]  735 	dec	sp
      0026D2 15 81            [12]  736 	dec	sp
      0026D4 50 03            [24]  737 	jnc	00188$
      0026D6 02 25 DE         [24]  738 	ljmp	00118$
      0026D9                        739 00188$:
      0026D9                        740 00120$:
                                    741 ;	src/input.c:66: *current_buffer_loc = '\0';
      0026D9 90 20 1C         [24]  742 	mov	dptr,#_get_string_current_buffer_loc_65537_49
      0026DC E0               [24]  743 	movx	a,@dptr
      0026DD FD               [12]  744 	mov	r5,a
      0026DE A3               [24]  745 	inc	dptr
      0026DF E0               [24]  746 	movx	a,@dptr
      0026E0 FE               [12]  747 	mov	r6,a
      0026E1 A3               [24]  748 	inc	dptr
      0026E2 E0               [24]  749 	movx	a,@dptr
      0026E3 FF               [12]  750 	mov	r7,a
      0026E4 8D 82            [24]  751 	mov	dpl,r5
      0026E6 8E 83            [24]  752 	mov	dph,r6
      0026E8 8F F0            [24]  753 	mov	b,r7
      0026EA E4               [12]  754 	clr	a
                                    755 ;	src/input.c:67: }
      0026EB 02 31 F2         [24]  756 	ljmp	__gptrput
                                    757 ;------------------------------------------------------------
                                    758 ;Allocation info for local variables in function 'get_next_input_char'
                                    759 ;------------------------------------------------------------
                                    760 ;c                         Allocated with name '_get_next_input_char_c_65536_55'
                                    761 ;------------------------------------------------------------
                                    762 ;	src/input.c:69: char get_next_input_char()
                                    763 ;	-----------------------------------------
                                    764 ;	 function get_next_input_char
                                    765 ;	-----------------------------------------
      0026EE                        766 _get_next_input_char:
                                    767 ;	src/input.c:71: char c = getchar();
      0026EE 12 25 A5         [24]  768 	lcall	_getchar
      0026F1 AE 82            [24]  769 	mov	r6,dpl
                                    770 ;	src/input.c:72: putchar(c);
      0026F3 8E 05            [24]  771 	mov	ar5,r6
      0026F5 7F 00            [12]  772 	mov	r7,#0x00
      0026F7 8D 82            [24]  773 	mov	dpl,r5
      0026F9 8F 83            [24]  774 	mov	dph,r7
      0026FB C0 06            [24]  775 	push	ar6
      0026FD 12 25 86         [24]  776 	lcall	_putchar
      002700 D0 06            [24]  777 	pop	ar6
                                    778 ;	src/input.c:73: character_count++;
      002702 90 20 1A         [24]  779 	mov	dptr,#_character_count
      002705 E0               [24]  780 	movx	a,@dptr
      002706 24 01            [12]  781 	add	a,#0x01
      002708 F0               [24]  782 	movx	@dptr,a
      002709 A3               [24]  783 	inc	dptr
      00270A E0               [24]  784 	movx	a,@dptr
      00270B 34 00            [12]  785 	addc	a,#0x00
      00270D F0               [24]  786 	movx	@dptr,a
                                    787 ;	src/input.c:74: return c; 
      00270E 8E 82            [24]  788 	mov	dpl,r6
                                    789 ;	src/input.c:75: }
      002710 22               [24]  790 	ret
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'get_hex_value'
                                    793 ;------------------------------------------------------------
                                    794 ;return_value              Allocated with name '_get_hex_value_return_value_65536_56'
                                    795 ;src                       Allocated with name '_get_hex_value_src_65537_58'
                                    796 ;parsed_value              Allocated with name '_get_hex_value_parsed_value_65538_60'
                                    797 ;c                         Allocated with name '_get_hex_value_c_65538_60'
                                    798 ;------------------------------------------------------------
                                    799 ;	src/input.c:77: int get_hex_value(int *return_value)
                                    800 ;	-----------------------------------------
                                    801 ;	 function get_hex_value
                                    802 ;	-----------------------------------------
      002711                        803 _get_hex_value:
      002711 AF F0            [24]  804 	mov	r7,b
      002713 AE 83            [24]  805 	mov	r6,dph
      002715 E5 82            [12]  806 	mov	a,dpl
      002717 90 20 1F         [24]  807 	mov	dptr,#_get_hex_value_return_value_65536_56
      00271A F0               [24]  808 	movx	@dptr,a
      00271B EE               [12]  809 	mov	a,r6
      00271C A3               [24]  810 	inc	dptr
      00271D F0               [24]  811 	movx	@dptr,a
      00271E EF               [12]  812 	mov	a,r7
      00271F A3               [24]  813 	inc	dptr
      002720 F0               [24]  814 	movx	@dptr,a
                                    815 ;	src/input.c:79: get_string();
      002721 12 25 BA         [24]  816 	lcall	_get_string
                                    817 ;	src/input.c:80: char *src = string_input_buffer;
      002724 90 20 22         [24]  818 	mov	dptr,#_get_hex_value_src_65537_58
      002727 74 10            [12]  819 	mov	a,#_string_input_buffer
      002729 F0               [24]  820 	movx	@dptr,a
      00272A 74 20            [12]  821 	mov	a,#(_string_input_buffer >> 8)
      00272C A3               [24]  822 	inc	dptr
      00272D F0               [24]  823 	movx	@dptr,a
      00272E E4               [12]  824 	clr	a
      00272F A3               [24]  825 	inc	dptr
      002730 F0               [24]  826 	movx	@dptr,a
                                    827 ;	src/input.c:81: if (*src == '0' && *(src+1) == 'x')
      002731 90 20 10         [24]  828 	mov	dptr,#_string_input_buffer
      002734 E0               [24]  829 	movx	a,@dptr
      002735 FF               [12]  830 	mov	r7,a
      002736 BF 30 1D         [24]  831 	cjne	r7,#0x30,00102$
      002739 90 20 11         [24]  832 	mov	dptr,#(_string_input_buffer + 0x0001)
      00273C 75 F0 00         [24]  833 	mov	b,#0x00
      00273F 12 3E 4C         [24]  834 	lcall	__gptrget
      002742 FF               [12]  835 	mov	r7,a
      002743 BF 78 10         [24]  836 	cjne	r7,#0x78,00102$
                                    837 ;	src/input.c:83: src += 2;
      002746 90 20 22         [24]  838 	mov	dptr,#_get_hex_value_src_65537_58
      002749 74 02            [12]  839 	mov	a,#0x02
      00274B 24 10            [12]  840 	add	a,#_string_input_buffer
      00274D F0               [24]  841 	movx	@dptr,a
      00274E E4               [12]  842 	clr	a
      00274F 34 20            [12]  843 	addc	a,#(_string_input_buffer >> 8)
      002751 A3               [24]  844 	inc	dptr
      002752 F0               [24]  845 	movx	@dptr,a
      002753 E4               [12]  846 	clr	a
      002754 A3               [24]  847 	inc	dptr
      002755 F0               [24]  848 	movx	@dptr,a
      002756                        849 00102$:
                                    850 ;	src/input.c:86: int parsed_value = 0;
      002756 90 20 25         [24]  851 	mov	dptr,#_get_hex_value_parsed_value_65538_60
      002759 E4               [12]  852 	clr	a
      00275A F0               [24]  853 	movx	@dptr,a
      00275B A3               [24]  854 	inc	dptr
      00275C F0               [24]  855 	movx	@dptr,a
                                    856 ;	src/input.c:87: char c = *src;
      00275D 90 20 22         [24]  857 	mov	dptr,#_get_hex_value_src_65537_58
      002760 E0               [24]  858 	movx	a,@dptr
      002761 FD               [12]  859 	mov	r5,a
      002762 A3               [24]  860 	inc	dptr
      002763 E0               [24]  861 	movx	a,@dptr
      002764 FE               [12]  862 	mov	r6,a
      002765 A3               [24]  863 	inc	dptr
      002766 E0               [24]  864 	movx	a,@dptr
      002767 FF               [12]  865 	mov	r7,a
      002768 8D 82            [24]  866 	mov	dpl,r5
      00276A 8E 83            [24]  867 	mov	dph,r6
      00276C 8F F0            [24]  868 	mov	b,r7
      00276E 12 3E 4C         [24]  869 	lcall	__gptrget
      002771 FC               [12]  870 	mov	r4,a
      002772 90 20 27         [24]  871 	mov	dptr,#_get_hex_value_c_65538_60
      002775 F0               [24]  872 	movx	@dptr,a
                                    873 ;	src/input.c:88: while (c != '\0')
      002776                        874 00116$:
      002776 90 20 27         [24]  875 	mov	dptr,#_get_hex_value_c_65538_60
      002779 E0               [24]  876 	movx	a,@dptr
      00277A FC               [12]  877 	mov	r4,a
      00277B 70 03            [24]  878 	jnz	00165$
      00277D 02 28 38         [24]  879 	ljmp	00118$
      002780                        880 00165$:
                                    881 ;	src/input.c:90: parsed_value <<= 4;
      002780 90 20 25         [24]  882 	mov	dptr,#_get_hex_value_parsed_value_65538_60
      002783 E0               [24]  883 	movx	a,@dptr
      002784 FA               [12]  884 	mov	r2,a
      002785 A3               [24]  885 	inc	dptr
      002786 E0               [24]  886 	movx	a,@dptr
      002787 C4               [12]  887 	swap	a
      002788 54 F0            [12]  888 	anl	a,#0xf0
      00278A CA               [12]  889 	xch	a,r2
      00278B C4               [12]  890 	swap	a
      00278C CA               [12]  891 	xch	a,r2
      00278D 6A               [12]  892 	xrl	a,r2
      00278E CA               [12]  893 	xch	a,r2
      00278F 54 F0            [12]  894 	anl	a,#0xf0
      002791 CA               [12]  895 	xch	a,r2
      002792 6A               [12]  896 	xrl	a,r2
      002793 FB               [12]  897 	mov	r3,a
      002794 90 20 25         [24]  898 	mov	dptr,#_get_hex_value_parsed_value_65538_60
      002797 EA               [12]  899 	mov	a,r2
      002798 F0               [24]  900 	movx	@dptr,a
      002799 EB               [12]  901 	mov	a,r3
      00279A A3               [24]  902 	inc	dptr
      00279B F0               [24]  903 	movx	@dptr,a
                                    904 ;	src/input.c:91: if(c >= '0' && c <= '9' )
      00279C BC 30 00         [24]  905 	cjne	r4,#0x30,00166$
      00279F                        906 00166$:
      00279F 40 23            [24]  907 	jc	00113$
      0027A1 EC               [12]  908 	mov	a,r4
      0027A2 24 C6            [12]  909 	add	a,#0xff - 0x39
      0027A4 40 1E            [24]  910 	jc	00113$
                                    911 ;	src/input.c:93: parsed_value += (int) c - '0';
      0027A6 7B 00            [12]  912 	mov	r3,#0x00
      0027A8 EC               [12]  913 	mov	a,r4
      0027A9 24 D0            [12]  914 	add	a,#0xd0
      0027AB FC               [12]  915 	mov	r4,a
      0027AC EB               [12]  916 	mov	a,r3
      0027AD 34 FF            [12]  917 	addc	a,#0xff
      0027AF FB               [12]  918 	mov	r3,a
      0027B0 90 20 25         [24]  919 	mov	dptr,#_get_hex_value_parsed_value_65538_60
      0027B3 E0               [24]  920 	movx	a,@dptr
      0027B4 F9               [12]  921 	mov	r1,a
      0027B5 A3               [24]  922 	inc	dptr
      0027B6 E0               [24]  923 	movx	a,@dptr
      0027B7 FA               [12]  924 	mov	r2,a
      0027B8 90 20 25         [24]  925 	mov	dptr,#_get_hex_value_parsed_value_65538_60
      0027BB EC               [12]  926 	mov	a,r4
      0027BC 29               [12]  927 	add	a,r1
      0027BD F0               [24]  928 	movx	@dptr,a
      0027BE EB               [12]  929 	mov	a,r3
      0027BF 3A               [12]  930 	addc	a,r2
      0027C0 A3               [24]  931 	inc	dptr
      0027C1 F0               [24]  932 	movx	@dptr,a
      0027C2 80 5E            [24]  933 	sjmp	00114$
      0027C4                        934 00113$:
                                    935 ;	src/input.c:94: } else if (c >= 'a' && c <= 'f')
      0027C4 90 20 27         [24]  936 	mov	dptr,#_get_hex_value_c_65538_60
      0027C7 E0               [24]  937 	movx	a,@dptr
      0027C8 FC               [12]  938 	mov	r4,a
      0027C9 BC 61 00         [24]  939 	cjne	r4,#0x61,00169$
      0027CC                        940 00169$:
      0027CC 40 23            [24]  941 	jc	00109$
      0027CE EC               [12]  942 	mov	a,r4
      0027CF 24 99            [12]  943 	add	a,#0xff - 0x66
      0027D1 40 1E            [24]  944 	jc	00109$
                                    945 ;	src/input.c:96: parsed_value += c - 'a' + 10;
      0027D3 7B 00            [12]  946 	mov	r3,#0x00
      0027D5 74 A9            [12]  947 	mov	a,#0xa9
      0027D7 2C               [12]  948 	add	a,r4
      0027D8 FC               [12]  949 	mov	r4,a
      0027D9 74 FF            [12]  950 	mov	a,#0xff
      0027DB 3B               [12]  951 	addc	a,r3
      0027DC FB               [12]  952 	mov	r3,a
      0027DD 90 20 25         [24]  953 	mov	dptr,#_get_hex_value_parsed_value_65538_60
      0027E0 E0               [24]  954 	movx	a,@dptr
      0027E1 F9               [12]  955 	mov	r1,a
      0027E2 A3               [24]  956 	inc	dptr
      0027E3 E0               [24]  957 	movx	a,@dptr
      0027E4 FA               [12]  958 	mov	r2,a
      0027E5 90 20 25         [24]  959 	mov	dptr,#_get_hex_value_parsed_value_65538_60
      0027E8 EC               [12]  960 	mov	a,r4
      0027E9 29               [12]  961 	add	a,r1
      0027EA F0               [24]  962 	movx	@dptr,a
      0027EB EB               [12]  963 	mov	a,r3
      0027EC 3A               [12]  964 	addc	a,r2
      0027ED A3               [24]  965 	inc	dptr
      0027EE F0               [24]  966 	movx	@dptr,a
      0027EF 80 31            [24]  967 	sjmp	00114$
      0027F1                        968 00109$:
                                    969 ;	src/input.c:97: } else if (c >= 'A' && c <= 'F')
      0027F1 90 20 27         [24]  970 	mov	dptr,#_get_hex_value_c_65538_60
      0027F4 E0               [24]  971 	movx	a,@dptr
      0027F5 FC               [12]  972 	mov	r4,a
      0027F6 BC 41 00         [24]  973 	cjne	r4,#0x41,00172$
      0027F9                        974 00172$:
      0027F9 40 23            [24]  975 	jc	00105$
      0027FB EC               [12]  976 	mov	a,r4
      0027FC 24 B9            [12]  977 	add	a,#0xff - 0x46
      0027FE 40 1E            [24]  978 	jc	00105$
                                    979 ;	src/input.c:99: parsed_value += c - 'A' + 10;
      002800 7B 00            [12]  980 	mov	r3,#0x00
      002802 74 C9            [12]  981 	mov	a,#0xc9
      002804 2C               [12]  982 	add	a,r4
      002805 FC               [12]  983 	mov	r4,a
      002806 74 FF            [12]  984 	mov	a,#0xff
      002808 3B               [12]  985 	addc	a,r3
      002809 FB               [12]  986 	mov	r3,a
      00280A 90 20 25         [24]  987 	mov	dptr,#_get_hex_value_parsed_value_65538_60
      00280D E0               [24]  988 	movx	a,@dptr
      00280E F9               [12]  989 	mov	r1,a
      00280F A3               [24]  990 	inc	dptr
      002810 E0               [24]  991 	movx	a,@dptr
      002811 FA               [12]  992 	mov	r2,a
      002812 90 20 25         [24]  993 	mov	dptr,#_get_hex_value_parsed_value_65538_60
      002815 EC               [12]  994 	mov	a,r4
      002816 29               [12]  995 	add	a,r1
      002817 F0               [24]  996 	movx	@dptr,a
      002818 EB               [12]  997 	mov	a,r3
      002819 3A               [12]  998 	addc	a,r2
      00281A A3               [24]  999 	inc	dptr
      00281B F0               [24] 1000 	movx	@dptr,a
      00281C 80 04            [24] 1001 	sjmp	00114$
      00281E                       1002 00105$:
                                   1003 ;	src/input.c:101: return -1; //error in parsing
      00281E 90 FF FF         [24] 1004 	mov	dptr,#0xffff
      002821 22               [24] 1005 	ret
      002822                       1006 00114$:
                                   1007 ;	src/input.c:103: src++;
      002822 0D               [12] 1008 	inc	r5
      002823 BD 00 01         [24] 1009 	cjne	r5,#0x00,00175$
      002826 0E               [12] 1010 	inc	r6
      002827                       1011 00175$:
                                   1012 ;	src/input.c:104: c = *src;
      002827 8D 82            [24] 1013 	mov	dpl,r5
      002829 8E 83            [24] 1014 	mov	dph,r6
      00282B 8F F0            [24] 1015 	mov	b,r7
      00282D 12 3E 4C         [24] 1016 	lcall	__gptrget
      002830 FC               [12] 1017 	mov	r4,a
      002831 90 20 27         [24] 1018 	mov	dptr,#_get_hex_value_c_65538_60
      002834 F0               [24] 1019 	movx	@dptr,a
      002835 02 27 76         [24] 1020 	ljmp	00116$
      002838                       1021 00118$:
                                   1022 ;	src/input.c:107: *return_value = parsed_value;
      002838 90 20 1F         [24] 1023 	mov	dptr,#_get_hex_value_return_value_65536_56
      00283B E0               [24] 1024 	movx	a,@dptr
      00283C FD               [12] 1025 	mov	r5,a
      00283D A3               [24] 1026 	inc	dptr
      00283E E0               [24] 1027 	movx	a,@dptr
      00283F FE               [12] 1028 	mov	r6,a
      002840 A3               [24] 1029 	inc	dptr
      002841 E0               [24] 1030 	movx	a,@dptr
      002842 FF               [12] 1031 	mov	r7,a
      002843 90 20 25         [24] 1032 	mov	dptr,#_get_hex_value_parsed_value_65538_60
      002846 E0               [24] 1033 	movx	a,@dptr
      002847 FB               [12] 1034 	mov	r3,a
      002848 A3               [24] 1035 	inc	dptr
      002849 E0               [24] 1036 	movx	a,@dptr
      00284A FC               [12] 1037 	mov	r4,a
      00284B 8D 82            [24] 1038 	mov	dpl,r5
      00284D 8E 83            [24] 1039 	mov	dph,r6
      00284F 8F F0            [24] 1040 	mov	b,r7
      002851 EB               [12] 1041 	mov	a,r3
      002852 12 31 F2         [24] 1042 	lcall	__gptrput
      002855 A3               [24] 1043 	inc	dptr
      002856 EC               [12] 1044 	mov	a,r4
      002857 12 31 F2         [24] 1045 	lcall	__gptrput
                                   1046 ;	src/input.c:108: return 0; 
      00285A 90 00 00         [24] 1047 	mov	dptr,#0x0000
                                   1048 ;	src/input.c:109: }
      00285D 22               [24] 1049 	ret
                                   1050 ;------------------------------------------------------------
                                   1051 ;Allocation info for local variables in function 'get_char_count'
                                   1052 ;------------------------------------------------------------
                                   1053 ;	src/input.c:111: size_t get_char_count()
                                   1054 ;	-----------------------------------------
                                   1055 ;	 function get_char_count
                                   1056 ;	-----------------------------------------
      00285E                       1057 _get_char_count:
                                   1058 ;	src/input.c:113: return character_count;
      00285E 90 20 1A         [24] 1059 	mov	dptr,#_character_count
      002861 E0               [24] 1060 	movx	a,@dptr
      002862 FE               [12] 1061 	mov	r6,a
      002863 A3               [24] 1062 	inc	dptr
      002864 E0               [24] 1063 	movx	a,@dptr
                                   1064 ;	src/input.c:114: }
      002865 8E 82            [24] 1065 	mov	dpl,r6
      002867 F5 83            [12] 1066 	mov	dph,a
      002869 22               [24] 1067 	ret
                                   1068 ;------------------------------------------------------------
                                   1069 ;Allocation info for local variables in function 'reset_char_count'
                                   1070 ;------------------------------------------------------------
                                   1071 ;	src/input.c:116: void reset_char_count()
                                   1072 ;	-----------------------------------------
                                   1073 ;	 function reset_char_count
                                   1074 ;	-----------------------------------------
      00286A                       1075 _reset_char_count:
                                   1076 ;	src/input.c:118: character_count = 0; 
      00286A 90 20 1A         [24] 1077 	mov	dptr,#_character_count
      00286D E4               [12] 1078 	clr	a
      00286E F0               [24] 1079 	movx	@dptr,a
      00286F A3               [24] 1080 	inc	dptr
      002870 F0               [24] 1081 	movx	@dptr,a
                                   1082 ;	src/input.c:119: }
      002871 22               [24] 1083 	ret
                                   1084 	.area CSEG    (CODE)
                                   1085 	.area CONST   (CODE)
                                   1086 	.area XINIT   (CODE)
                                   1087 	.area CABS    (ABS,CODE)
