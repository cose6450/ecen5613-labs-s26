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
                                    215 	.globl _get_char_count
                                    216 	.globl _reset_char_count
                                    217 ;--------------------------------------------------------
                                    218 ; special function registers
                                    219 ;--------------------------------------------------------
                                    220 	.area RSEG    (ABS,DATA)
      000000                        221 	.org 0x0000
                           000080   222 _P0	=	0x0080
                           000081   223 _SP	=	0x0081
                           000082   224 _DPL	=	0x0082
                           000083   225 _DPH	=	0x0083
                           000087   226 _PCON	=	0x0087
                           000088   227 _TCON	=	0x0088
                           000089   228 _TMOD	=	0x0089
                           00008A   229 _TL0	=	0x008a
                           00008B   230 _TL1	=	0x008b
                           00008C   231 _TH0	=	0x008c
                           00008D   232 _TH1	=	0x008d
                           000090   233 _P1	=	0x0090
                           000098   234 _SCON	=	0x0098
                           000099   235 _SBUF	=	0x0099
                           0000A0   236 _P2	=	0x00a0
                           0000A8   237 _IE	=	0x00a8
                           0000B0   238 _P3	=	0x00b0
                           0000B8   239 _IP	=	0x00b8
                           0000D0   240 _PSW	=	0x00d0
                           0000E0   241 _ACC	=	0x00e0
                           0000F0   242 _B	=	0x00f0
                           0000C8   243 _T2CON	=	0x00c8
                           0000CA   244 _RCAP2L	=	0x00ca
                           0000CB   245 _RCAP2H	=	0x00cb
                           0000CC   246 _TL2	=	0x00cc
                           0000CD   247 _TH2	=	0x00cd
                           00008E   248 _AUXR	=	0x008e
                           0000A2   249 _AUXR1	=	0x00a2
                           000097   250 _CKRL	=	0x0097
                           00008F   251 _CKCON0	=	0x008f
                           0000AF   252 _CKCON1	=	0x00af
                           0000FA   253 _CCAP0H	=	0x00fa
                           0000FB   254 _CCAP1H	=	0x00fb
                           0000FC   255 _CCAP2H	=	0x00fc
                           0000FD   256 _CCAP3H	=	0x00fd
                           0000FE   257 _CCAP4H	=	0x00fe
                           0000EA   258 _CCAP0L	=	0x00ea
                           0000EB   259 _CCAP1L	=	0x00eb
                           0000EC   260 _CCAP2L	=	0x00ec
                           0000ED   261 _CCAP3L	=	0x00ed
                           0000EE   262 _CCAP4L	=	0x00ee
                           0000DA   263 _CCAPM0	=	0x00da
                           0000DB   264 _CCAPM1	=	0x00db
                           0000DC   265 _CCAPM2	=	0x00dc
                           0000DD   266 _CCAPM3	=	0x00dd
                           0000DE   267 _CCAPM4	=	0x00de
                           0000D8   268 _CCON	=	0x00d8
                           0000F9   269 _CH	=	0x00f9
                           0000E9   270 _CL	=	0x00e9
                           0000D9   271 _CMOD	=	0x00d9
                           0000A8   272 _IEN0	=	0x00a8
                           0000B1   273 _IEN1	=	0x00b1
                           0000B8   274 _IPL0	=	0x00b8
                           0000B7   275 _IPH0	=	0x00b7
                           0000B2   276 _IPL1	=	0x00b2
                           0000B3   277 _IPH1	=	0x00b3
                           0000C0   278 _P4	=	0x00c0
                           0000E8   279 _P5	=	0x00e8
                           0000A6   280 _WDTRST	=	0x00a6
                           0000A7   281 _WDTPRG	=	0x00a7
                           0000A9   282 _SADDR	=	0x00a9
                           0000B9   283 _SADEN	=	0x00b9
                           0000C3   284 _SPCON	=	0x00c3
                           0000C4   285 _SPSTA	=	0x00c4
                           0000C5   286 _SPDAT	=	0x00c5
                           0000C9   287 _T2MOD	=	0x00c9
                           00009B   288 _BDRCON	=	0x009b
                           00009A   289 _BRL	=	0x009a
                           00009C   290 _KBLS	=	0x009c
                           00009D   291 _KBE	=	0x009d
                           00009E   292 _KBF	=	0x009e
                           0000D2   293 _EECON	=	0x00d2
                                    294 ;--------------------------------------------------------
                                    295 ; special function bits
                                    296 ;--------------------------------------------------------
                                    297 	.area RSEG    (ABS,DATA)
      000000                        298 	.org 0x0000
                           000080   299 _P0_0	=	0x0080
                           000081   300 _P0_1	=	0x0081
                           000082   301 _P0_2	=	0x0082
                           000083   302 _P0_3	=	0x0083
                           000084   303 _P0_4	=	0x0084
                           000085   304 _P0_5	=	0x0085
                           000086   305 _P0_6	=	0x0086
                           000087   306 _P0_7	=	0x0087
                           000088   307 _IT0	=	0x0088
                           000089   308 _IE0	=	0x0089
                           00008A   309 _IT1	=	0x008a
                           00008B   310 _IE1	=	0x008b
                           00008C   311 _TR0	=	0x008c
                           00008D   312 _TF0	=	0x008d
                           00008E   313 _TR1	=	0x008e
                           00008F   314 _TF1	=	0x008f
                           000090   315 _P1_0	=	0x0090
                           000091   316 _P1_1	=	0x0091
                           000092   317 _P1_2	=	0x0092
                           000093   318 _P1_3	=	0x0093
                           000094   319 _P1_4	=	0x0094
                           000095   320 _P1_5	=	0x0095
                           000096   321 _P1_6	=	0x0096
                           000097   322 _P1_7	=	0x0097
                           000098   323 _RI	=	0x0098
                           000099   324 _TI	=	0x0099
                           00009A   325 _RB8	=	0x009a
                           00009B   326 _TB8	=	0x009b
                           00009C   327 _REN	=	0x009c
                           00009D   328 _SM2	=	0x009d
                           00009E   329 _SM1	=	0x009e
                           00009F   330 _SM0	=	0x009f
                           0000A0   331 _P2_0	=	0x00a0
                           0000A1   332 _P2_1	=	0x00a1
                           0000A2   333 _P2_2	=	0x00a2
                           0000A3   334 _P2_3	=	0x00a3
                           0000A4   335 _P2_4	=	0x00a4
                           0000A5   336 _P2_5	=	0x00a5
                           0000A6   337 _P2_6	=	0x00a6
                           0000A7   338 _P2_7	=	0x00a7
                           0000A8   339 _EX0	=	0x00a8
                           0000A9   340 _ET0	=	0x00a9
                           0000AA   341 _EX1	=	0x00aa
                           0000AB   342 _ET1	=	0x00ab
                           0000AC   343 _ES	=	0x00ac
                           0000AF   344 _EA	=	0x00af
                           0000B0   345 _P3_0	=	0x00b0
                           0000B1   346 _P3_1	=	0x00b1
                           0000B2   347 _P3_2	=	0x00b2
                           0000B3   348 _P3_3	=	0x00b3
                           0000B4   349 _P3_4	=	0x00b4
                           0000B5   350 _P3_5	=	0x00b5
                           0000B6   351 _P3_6	=	0x00b6
                           0000B7   352 _P3_7	=	0x00b7
                           0000B0   353 _RXD	=	0x00b0
                           0000B1   354 _TXD	=	0x00b1
                           0000B2   355 _INT0	=	0x00b2
                           0000B3   356 _INT1	=	0x00b3
                           0000B4   357 _T0	=	0x00b4
                           0000B5   358 _T1	=	0x00b5
                           0000B6   359 _WR	=	0x00b6
                           0000B7   360 _RD	=	0x00b7
                           0000B8   361 _PX0	=	0x00b8
                           0000B9   362 _PT0	=	0x00b9
                           0000BA   363 _PX1	=	0x00ba
                           0000BB   364 _PT1	=	0x00bb
                           0000BC   365 _PS	=	0x00bc
                           0000D0   366 _P	=	0x00d0
                           0000D1   367 _F1	=	0x00d1
                           0000D2   368 _OV	=	0x00d2
                           0000D3   369 _RS0	=	0x00d3
                           0000D4   370 _RS1	=	0x00d4
                           0000D5   371 _F0	=	0x00d5
                           0000D6   372 _AC	=	0x00d6
                           0000D7   373 _CY	=	0x00d7
                           0000AD   374 _ET2	=	0x00ad
                           0000BD   375 _PT2	=	0x00bd
                           0000C8   376 _T2CON_0	=	0x00c8
                           0000C9   377 _T2CON_1	=	0x00c9
                           0000CA   378 _T2CON_2	=	0x00ca
                           0000CB   379 _T2CON_3	=	0x00cb
                           0000CC   380 _T2CON_4	=	0x00cc
                           0000CD   381 _T2CON_5	=	0x00cd
                           0000CE   382 _T2CON_6	=	0x00ce
                           0000CF   383 _T2CON_7	=	0x00cf
                           0000C8   384 _CP_RL2	=	0x00c8
                           0000C9   385 _C_T2	=	0x00c9
                           0000CA   386 _TR2	=	0x00ca
                           0000CB   387 _EXEN2	=	0x00cb
                           0000CC   388 _TCLK	=	0x00cc
                           0000CD   389 _RCLK	=	0x00cd
                           0000CE   390 _EXF2	=	0x00ce
                           0000CF   391 _TF2	=	0x00cf
                           0000DF   392 _CF	=	0x00df
                           0000DE   393 _CR	=	0x00de
                           0000DC   394 _CCF4	=	0x00dc
                           0000DB   395 _CCF3	=	0x00db
                           0000DA   396 _CCF2	=	0x00da
                           0000D9   397 _CCF1	=	0x00d9
                           0000D8   398 _CCF0	=	0x00d8
                           0000AE   399 _EC	=	0x00ae
                           0000BE   400 _PPCL	=	0x00be
                           0000BD   401 _PT2L	=	0x00bd
                           0000BC   402 _PSL	=	0x00bc
                           0000BB   403 _PT1L	=	0x00bb
                           0000BA   404 _PX1L	=	0x00ba
                           0000B9   405 _PT0L	=	0x00b9
                           0000B8   406 _PX0L	=	0x00b8
                           0000C0   407 _P4_0	=	0x00c0
                           0000C1   408 _P4_1	=	0x00c1
                           0000C2   409 _P4_2	=	0x00c2
                           0000C3   410 _P4_3	=	0x00c3
                           0000C4   411 _P4_4	=	0x00c4
                           0000C5   412 _P4_5	=	0x00c5
                           0000C6   413 _P4_6	=	0x00c6
                           0000C7   414 _P4_7	=	0x00c7
                           0000E8   415 _P5_0	=	0x00e8
                           0000E9   416 _P5_1	=	0x00e9
                           0000EA   417 _P5_2	=	0x00ea
                           0000EB   418 _P5_3	=	0x00eb
                           0000EC   419 _P5_4	=	0x00ec
                           0000ED   420 _P5_5	=	0x00ed
                           0000EE   421 _P5_6	=	0x00ee
                           0000EF   422 _P5_7	=	0x00ef
                                    423 ;--------------------------------------------------------
                                    424 ; overlayable register banks
                                    425 ;--------------------------------------------------------
                                    426 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        427 	.ds 8
                                    428 ;--------------------------------------------------------
                                    429 ; internal ram data
                                    430 ;--------------------------------------------------------
                                    431 	.area DSEG    (DATA)
                                    432 ;--------------------------------------------------------
                                    433 ; overlayable items in internal ram
                                    434 ;--------------------------------------------------------
                                    435 ;--------------------------------------------------------
                                    436 ; indirectly addressable internal ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area ISEG    (DATA)
                                    439 ;--------------------------------------------------------
                                    440 ; absolute internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area IABS    (ABS,DATA)
                                    443 	.area IABS    (ABS,DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; bit data
                                    446 ;--------------------------------------------------------
                                    447 	.area BSEG    (BIT)
      000001                        448 _get_string_sloc0_1_0:
      000001                        449 	.ds 1
                                    450 ;--------------------------------------------------------
                                    451 ; paged external ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area PSEG    (PAG,XDATA)
                                    454 ;--------------------------------------------------------
                                    455 ; external ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area XSEG    (XDATA)
      002034                        458 _string_input_buffer::
      002034                        459 	.ds 10
      00203E                        460 _get_string_current_buffer_loc_65537_48:
      00203E                        461 	.ds 3
                                    462 ;--------------------------------------------------------
                                    463 ; absolute external ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area XABS    (ABS,XDATA)
                                    466 ;--------------------------------------------------------
                                    467 ; external initialized ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area XISEG   (XDATA)
      0020BD                        470 _character_count::
      0020BD                        471 	.ds 2
                                    472 	.area HOME    (CODE)
                                    473 	.area GSINIT0 (CODE)
                                    474 	.area GSINIT1 (CODE)
                                    475 	.area GSINIT2 (CODE)
                                    476 	.area GSINIT3 (CODE)
                                    477 	.area GSINIT4 (CODE)
                                    478 	.area GSINIT5 (CODE)
                                    479 	.area GSINIT  (CODE)
                                    480 	.area GSFINAL (CODE)
                                    481 	.area CSEG    (CODE)
                                    482 ;--------------------------------------------------------
                                    483 ; global & static initialisations
                                    484 ;--------------------------------------------------------
                                    485 	.area HOME    (CODE)
                                    486 	.area GSINIT  (CODE)
                                    487 	.area GSFINAL (CODE)
                                    488 	.area GSINIT  (CODE)
                                    489 ;--------------------------------------------------------
                                    490 ; Home
                                    491 ;--------------------------------------------------------
                                    492 	.area HOME    (CODE)
                                    493 	.area HOME    (CODE)
                                    494 ;--------------------------------------------------------
                                    495 ; code
                                    496 ;--------------------------------------------------------
                                    497 	.area CSEG    (CODE)
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'get_input_buffer'
                                    500 ;------------------------------------------------------------
                                    501 ;	src/input.c:13: const char *get_input_buffer() {
                                    502 ;	-----------------------------------------
                                    503 ;	 function get_input_buffer
                                    504 ;	-----------------------------------------
      00354C                        505 _get_input_buffer:
                           000007   506 	ar7 = 0x07
                           000006   507 	ar6 = 0x06
                           000005   508 	ar5 = 0x05
                           000004   509 	ar4 = 0x04
                           000003   510 	ar3 = 0x03
                           000002   511 	ar2 = 0x02
                           000001   512 	ar1 = 0x01
                           000000   513 	ar0 = 0x00
                                    514 ;	src/input.c:14: return string_input_buffer; 
      00354C 90 20 34         [24]  515 	mov	dptr,#_string_input_buffer
      00354F 75 F0 00         [24]  516 	mov	b,#0x00
                                    517 ;	src/input.c:15: }
      003552 22               [24]  518 	ret
                                    519 ;------------------------------------------------------------
                                    520 ;Allocation info for local variables in function 'get_string'
                                    521 ;------------------------------------------------------------
                                    522 ;received_char             Allocated with name '_get_string_received_char_65537_48'
                                    523 ;current_buffer_loc        Allocated with name '_get_string_current_buffer_loc_65537_48'
                                    524 ;------------------------------------------------------------
                                    525 ;	src/input.c:17: void get_string()
                                    526 ;	-----------------------------------------
                                    527 ;	 function get_string
                                    528 ;	-----------------------------------------
      003553                        529 _get_string:
                                    530 ;	src/input.c:19: memset(string_input_buffer, '\0', BUFFER_SZ);
      003553 90 20 6F         [24]  531 	mov	dptr,#_memset_PARM_2
      003556 E4               [12]  532 	clr	a
      003557 F0               [24]  533 	movx	@dptr,a
      003558 90 20 70         [24]  534 	mov	dptr,#_memset_PARM_3
      00355B 74 0A            [12]  535 	mov	a,#0x0a
      00355D F0               [24]  536 	movx	@dptr,a
      00355E E4               [12]  537 	clr	a
      00355F A3               [24]  538 	inc	dptr
      003560 F0               [24]  539 	movx	@dptr,a
      003561 90 20 34         [24]  540 	mov	dptr,#_string_input_buffer
      003564 75 F0 00         [24]  541 	mov	b,#0x00
      003567 12 3C 39         [24]  542 	lcall	_memset
                                    543 ;	src/input.c:21: char *current_buffer_loc = string_input_buffer;
      00356A 90 20 3E         [24]  544 	mov	dptr,#_get_string_current_buffer_loc_65537_48
      00356D 74 34            [12]  545 	mov	a,#_string_input_buffer
      00356F F0               [24]  546 	movx	@dptr,a
      003570 74 20            [12]  547 	mov	a,#(_string_input_buffer >> 8)
      003572 A3               [24]  548 	inc	dptr
      003573 F0               [24]  549 	movx	@dptr,a
      003574 E4               [12]  550 	clr	a
      003575 A3               [24]  551 	inc	dptr
      003576 F0               [24]  552 	movx	@dptr,a
                                    553 ;	src/input.c:22: do {
      003577                        554 00114$:
                                    555 ;	src/input.c:23: received_char = getchar(); 
      003577 12 35 3E         [24]  556 	lcall	_getchar
      00357A AE 82            [24]  557 	mov	r6,dpl
                                    558 ;	src/input.c:24: putchar(received_char);
      00357C 8E 05            [24]  559 	mov	ar5,r6
      00357E 7F 00            [12]  560 	mov	r7,#0x00
      003580 8D 82            [24]  561 	mov	dpl,r5
      003582 8F 83            [24]  562 	mov	dph,r7
      003584 C0 06            [24]  563 	push	ar6
      003586 12 35 1F         [24]  564 	lcall	_putchar
      003589 D0 06            [24]  565 	pop	ar6
                                    566 ;	src/input.c:27: && received_char != '\n'
      00358B BE 0D 03         [24]  567 	cjne	r6,#0x0d,00159$
      00358E D3               [12]  568 	setb	c
      00358F 80 01            [24]  569 	sjmp	00160$
      003591                        570 00159$:
      003591 C3               [12]  571 	clr	c
      003592                        572 00160$:
      003592 92 01            [24]  573 	mov	_get_string_sloc0_1_0,c
      003594 40 32            [24]  574 	jc	00106$
                                    575 ;	src/input.c:28: && received_char != '\0'
      003596 BE 0A 02         [24]  576 	cjne	r6,#0x0a,00162$
      003599 80 2D            [24]  577 	sjmp	00106$
      00359B                        578 00162$:
      00359B EE               [12]  579 	mov	a,r6
      00359C 60 2A            [24]  580 	jz	00106$
                                    581 ;	src/input.c:29: && received_char != DELETE)
      00359E BE 7F 02         [24]  582 	cjne	r6,#0x7f,00164$
      0035A1 80 25            [24]  583 	sjmp	00106$
      0035A3                        584 00164$:
                                    585 ;	src/input.c:31: *current_buffer_loc= received_char;
      0035A3 90 20 3E         [24]  586 	mov	dptr,#_get_string_current_buffer_loc_65537_48
      0035A6 E0               [24]  587 	movx	a,@dptr
      0035A7 FC               [12]  588 	mov	r4,a
      0035A8 A3               [24]  589 	inc	dptr
      0035A9 E0               [24]  590 	movx	a,@dptr
      0035AA FD               [12]  591 	mov	r5,a
      0035AB A3               [24]  592 	inc	dptr
      0035AC E0               [24]  593 	movx	a,@dptr
      0035AD FF               [12]  594 	mov	r7,a
      0035AE 8C 82            [24]  595 	mov	dpl,r4
      0035B0 8D 83            [24]  596 	mov	dph,r5
      0035B2 8F F0            [24]  597 	mov	b,r7
      0035B4 EE               [12]  598 	mov	a,r6
      0035B5 12 3D 85         [24]  599 	lcall	__gptrput
                                    600 ;	src/input.c:32: current_buffer_loc++;
      0035B8 90 20 3E         [24]  601 	mov	dptr,#_get_string_current_buffer_loc_65537_48
      0035BB 74 01            [12]  602 	mov	a,#0x01
      0035BD 2C               [12]  603 	add	a,r4
      0035BE F0               [24]  604 	movx	@dptr,a
      0035BF E4               [12]  605 	clr	a
      0035C0 3D               [12]  606 	addc	a,r5
      0035C1 A3               [24]  607 	inc	dptr
      0035C2 F0               [24]  608 	movx	@dptr,a
      0035C3 EF               [12]  609 	mov	a,r7
      0035C4 A3               [24]  610 	inc	dptr
      0035C5 F0               [24]  611 	movx	@dptr,a
      0035C6 80 4F            [24]  612 	sjmp	00115$
      0035C8                        613 00106$:
                                    614 ;	src/input.c:34: else if(received_char == DELETE)
      0035C8 BE 7F 4C         [24]  615 	cjne	r6,#0x7f,00115$
                                    616 ;	src/input.c:36: if (current_buffer_loc != string_input_buffer)
      0035CB 90 20 3E         [24]  617 	mov	dptr,#_get_string_current_buffer_loc_65537_48
      0035CE E0               [24]  618 	movx	a,@dptr
      0035CF FC               [12]  619 	mov	r4,a
      0035D0 A3               [24]  620 	inc	dptr
      0035D1 E0               [24]  621 	movx	a,@dptr
      0035D2 FD               [12]  622 	mov	r5,a
      0035D3 A3               [24]  623 	inc	dptr
      0035D4 E0               [24]  624 	movx	a,@dptr
      0035D5 FF               [12]  625 	mov	r7,a
      0035D6 74 34            [12]  626 	mov	a,#_string_input_buffer
      0035D8 C0 E0            [24]  627 	push	acc
      0035DA 74 20            [12]  628 	mov	a,#(_string_input_buffer >> 8)
      0035DC C0 E0            [24]  629 	push	acc
      0035DE E4               [12]  630 	clr	a
      0035DF C0 E0            [24]  631 	push	acc
      0035E1 8C 82            [24]  632 	mov	dpl,r4
      0035E3 8D 83            [24]  633 	mov	dph,r5
      0035E5 8F F0            [24]  634 	mov	b,r7
      0035E7 12 20 06         [24]  635 	lcall	___gptr_cmp
      0035EA 15 81            [12]  636 	dec	sp
      0035EC 15 81            [12]  637 	dec	sp
      0035EE 15 81            [12]  638 	dec	sp
      0035F0 60 10            [24]  639 	jz	00102$
                                    640 ;	src/input.c:38: current_buffer_loc--;
      0035F2 1C               [12]  641 	dec	r4
      0035F3 BC FF 01         [24]  642 	cjne	r4,#0xff,00168$
      0035F6 1D               [12]  643 	dec	r5
      0035F7                        644 00168$:
      0035F7 90 20 3E         [24]  645 	mov	dptr,#_get_string_current_buffer_loc_65537_48
      0035FA EC               [12]  646 	mov	a,r4
      0035FB F0               [24]  647 	movx	@dptr,a
      0035FC ED               [12]  648 	mov	a,r5
      0035FD A3               [24]  649 	inc	dptr
      0035FE F0               [24]  650 	movx	@dptr,a
      0035FF EF               [12]  651 	mov	a,r7
      003600 A3               [24]  652 	inc	dptr
      003601 F0               [24]  653 	movx	@dptr,a
      003602                        654 00102$:
                                    655 ;	src/input.c:40: *current_buffer_loc = '\0';
      003602 90 20 3E         [24]  656 	mov	dptr,#_get_string_current_buffer_loc_65537_48
      003605 E0               [24]  657 	movx	a,@dptr
      003606 FC               [12]  658 	mov	r4,a
      003607 A3               [24]  659 	inc	dptr
      003608 E0               [24]  660 	movx	a,@dptr
      003609 FD               [12]  661 	mov	r5,a
      00360A A3               [24]  662 	inc	dptr
      00360B E0               [24]  663 	movx	a,@dptr
      00360C FF               [12]  664 	mov	r7,a
      00360D 8C 82            [24]  665 	mov	dpl,r4
      00360F 8D 83            [24]  666 	mov	dph,r5
      003611 8F F0            [24]  667 	mov	b,r7
      003613 E4               [12]  668 	clr	a
      003614 12 3D 85         [24]  669 	lcall	__gptrput
      003617                        670 00115$:
                                    671 ;	src/input.c:44: && received_char != '\n' 
      003617 20 01 32         [24]  672 	jb	_get_string_sloc0_1_0,00116$
                                    673 ;	src/input.c:45: && received_char != '\0'
      00361A BE 0A 02         [24]  674 	cjne	r6,#0x0a,00170$
      00361D 80 2D            [24]  675 	sjmp	00116$
      00361F                        676 00170$:
      00361F EE               [12]  677 	mov	a,r6
      003620 60 2A            [24]  678 	jz	00116$
                                    679 ;	src/input.c:46: && (current_buffer_loc < (string_input_buffer+BUFFER_SZ)));
      003622 90 20 3E         [24]  680 	mov	dptr,#_get_string_current_buffer_loc_65537_48
      003625 E0               [24]  681 	movx	a,@dptr
      003626 FD               [12]  682 	mov	r5,a
      003627 A3               [24]  683 	inc	dptr
      003628 E0               [24]  684 	movx	a,@dptr
      003629 FE               [12]  685 	mov	r6,a
      00362A A3               [24]  686 	inc	dptr
      00362B E0               [24]  687 	movx	a,@dptr
      00362C FF               [12]  688 	mov	r7,a
      00362D 74 3E            [12]  689 	mov	a,#(_string_input_buffer + 0x000a)
      00362F C0 E0            [24]  690 	push	acc
      003631 74 20            [12]  691 	mov	a,#((_string_input_buffer + 0x000a) >> 8)
      003633 C0 E0            [24]  692 	push	acc
      003635 E4               [12]  693 	clr	a
      003636 C0 E0            [24]  694 	push	acc
      003638 8D 82            [24]  695 	mov	dpl,r5
      00363A 8E 83            [24]  696 	mov	dph,r6
      00363C 8F F0            [24]  697 	mov	b,r7
      00363E 12 20 06         [24]  698 	lcall	___gptr_cmp
      003641 15 81            [12]  699 	dec	sp
      003643 15 81            [12]  700 	dec	sp
      003645 15 81            [12]  701 	dec	sp
      003647 50 03            [24]  702 	jnc	00172$
      003649 02 35 77         [24]  703 	ljmp	00114$
      00364C                        704 00172$:
      00364C                        705 00116$:
                                    706 ;	src/input.c:47: *current_buffer_loc = '\0';
      00364C 90 20 3E         [24]  707 	mov	dptr,#_get_string_current_buffer_loc_65537_48
      00364F E0               [24]  708 	movx	a,@dptr
      003650 FD               [12]  709 	mov	r5,a
      003651 A3               [24]  710 	inc	dptr
      003652 E0               [24]  711 	movx	a,@dptr
      003653 FE               [12]  712 	mov	r6,a
      003654 A3               [24]  713 	inc	dptr
      003655 E0               [24]  714 	movx	a,@dptr
      003656 FF               [12]  715 	mov	r7,a
      003657 8D 82            [24]  716 	mov	dpl,r5
      003659 8E 83            [24]  717 	mov	dph,r6
      00365B 8F F0            [24]  718 	mov	b,r7
      00365D E4               [12]  719 	clr	a
                                    720 ;	src/input.c:48: }
      00365E 02 3D 85         [24]  721 	ljmp	__gptrput
                                    722 ;------------------------------------------------------------
                                    723 ;Allocation info for local variables in function 'get_next_input_char'
                                    724 ;------------------------------------------------------------
                                    725 ;c                         Allocated with name '_get_next_input_char_c_65536_53'
                                    726 ;------------------------------------------------------------
                                    727 ;	src/input.c:50: char get_next_input_char()
                                    728 ;	-----------------------------------------
                                    729 ;	 function get_next_input_char
                                    730 ;	-----------------------------------------
      003661                        731 _get_next_input_char:
                                    732 ;	src/input.c:52: char c = getchar();
      003661 12 35 3E         [24]  733 	lcall	_getchar
      003664 AE 82            [24]  734 	mov	r6,dpl
                                    735 ;	src/input.c:53: putchar(c);
      003666 8E 05            [24]  736 	mov	ar5,r6
      003668 7F 00            [12]  737 	mov	r7,#0x00
      00366A 8D 82            [24]  738 	mov	dpl,r5
      00366C 8F 83            [24]  739 	mov	dph,r7
      00366E C0 06            [24]  740 	push	ar6
      003670 12 35 1F         [24]  741 	lcall	_putchar
      003673 D0 06            [24]  742 	pop	ar6
                                    743 ;	src/input.c:54: character_count++;
      003675 90 20 BD         [24]  744 	mov	dptr,#_character_count
      003678 E0               [24]  745 	movx	a,@dptr
      003679 24 01            [12]  746 	add	a,#0x01
      00367B F0               [24]  747 	movx	@dptr,a
      00367C A3               [24]  748 	inc	dptr
      00367D E0               [24]  749 	movx	a,@dptr
      00367E 34 00            [12]  750 	addc	a,#0x00
      003680 F0               [24]  751 	movx	@dptr,a
                                    752 ;	src/input.c:55: return c; 
      003681 8E 82            [24]  753 	mov	dpl,r6
                                    754 ;	src/input.c:56: }
      003683 22               [24]  755 	ret
                                    756 ;------------------------------------------------------------
                                    757 ;Allocation info for local variables in function 'get_char_count'
                                    758 ;------------------------------------------------------------
                                    759 ;	src/input.c:58: size_t get_char_count()
                                    760 ;	-----------------------------------------
                                    761 ;	 function get_char_count
                                    762 ;	-----------------------------------------
      003684                        763 _get_char_count:
                                    764 ;	src/input.c:60: return character_count;
      003684 90 20 BD         [24]  765 	mov	dptr,#_character_count
      003687 E0               [24]  766 	movx	a,@dptr
      003688 FE               [12]  767 	mov	r6,a
      003689 A3               [24]  768 	inc	dptr
      00368A E0               [24]  769 	movx	a,@dptr
                                    770 ;	src/input.c:61: }
      00368B 8E 82            [24]  771 	mov	dpl,r6
      00368D F5 83            [12]  772 	mov	dph,a
      00368F 22               [24]  773 	ret
                                    774 ;------------------------------------------------------------
                                    775 ;Allocation info for local variables in function 'reset_char_count'
                                    776 ;------------------------------------------------------------
                                    777 ;	src/input.c:63: void reset_char_count()
                                    778 ;	-----------------------------------------
                                    779 ;	 function reset_char_count
                                    780 ;	-----------------------------------------
      003690                        781 _reset_char_count:
                                    782 ;	src/input.c:65: character_count = 0; 
      003690 90 20 BD         [24]  783 	mov	dptr,#_character_count
      003693 E4               [12]  784 	clr	a
      003694 F0               [24]  785 	movx	@dptr,a
      003695 A3               [24]  786 	inc	dptr
      003696 F0               [24]  787 	movx	@dptr,a
                                    788 ;	src/input.c:66: }
      003697 22               [24]  789 	ret
                                    790 	.area CSEG    (CODE)
                                    791 	.area CONST   (CODE)
                                    792 	.area XINIT   (CODE)
      004E56                        793 __xinit__character_count:
      004E56 00 00                  794 	.byte #0x00, #0x00	; 0
                                    795 	.area CABS    (ABS,CODE)
