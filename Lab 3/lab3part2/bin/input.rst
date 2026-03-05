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
                                     11 	.globl _getchar
                                     12 	.globl _putchar
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
                                    210 	.globl _string_input_buffer
                                    211 	.globl _get_input_buffer
                                    212 	.globl _get_string
                                    213 ;--------------------------------------------------------
                                    214 ; special function registers
                                    215 ;--------------------------------------------------------
                                    216 	.area RSEG    (ABS,DATA)
      000000                        217 	.org 0x0000
                           000080   218 _P0	=	0x0080
                           000081   219 _SP	=	0x0081
                           000082   220 _DPL	=	0x0082
                           000083   221 _DPH	=	0x0083
                           000087   222 _PCON	=	0x0087
                           000088   223 _TCON	=	0x0088
                           000089   224 _TMOD	=	0x0089
                           00008A   225 _TL0	=	0x008a
                           00008B   226 _TL1	=	0x008b
                           00008C   227 _TH0	=	0x008c
                           00008D   228 _TH1	=	0x008d
                           000090   229 _P1	=	0x0090
                           000098   230 _SCON	=	0x0098
                           000099   231 _SBUF	=	0x0099
                           0000A0   232 _P2	=	0x00a0
                           0000A8   233 _IE	=	0x00a8
                           0000B0   234 _P3	=	0x00b0
                           0000B8   235 _IP	=	0x00b8
                           0000D0   236 _PSW	=	0x00d0
                           0000E0   237 _ACC	=	0x00e0
                           0000F0   238 _B	=	0x00f0
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
                                    290 ;--------------------------------------------------------
                                    291 ; special function bits
                                    292 ;--------------------------------------------------------
                                    293 	.area RSEG    (ABS,DATA)
      000000                        294 	.org 0x0000
                           000080   295 _P0_0	=	0x0080
                           000081   296 _P0_1	=	0x0081
                           000082   297 _P0_2	=	0x0082
                           000083   298 _P0_3	=	0x0083
                           000084   299 _P0_4	=	0x0084
                           000085   300 _P0_5	=	0x0085
                           000086   301 _P0_6	=	0x0086
                           000087   302 _P0_7	=	0x0087
                           000088   303 _IT0	=	0x0088
                           000089   304 _IE0	=	0x0089
                           00008A   305 _IT1	=	0x008a
                           00008B   306 _IE1	=	0x008b
                           00008C   307 _TR0	=	0x008c
                           00008D   308 _TF0	=	0x008d
                           00008E   309 _TR1	=	0x008e
                           00008F   310 _TF1	=	0x008f
                           000090   311 _P1_0	=	0x0090
                           000091   312 _P1_1	=	0x0091
                           000092   313 _P1_2	=	0x0092
                           000093   314 _P1_3	=	0x0093
                           000094   315 _P1_4	=	0x0094
                           000095   316 _P1_5	=	0x0095
                           000096   317 _P1_6	=	0x0096
                           000097   318 _P1_7	=	0x0097
                           000098   319 _RI	=	0x0098
                           000099   320 _TI	=	0x0099
                           00009A   321 _RB8	=	0x009a
                           00009B   322 _TB8	=	0x009b
                           00009C   323 _REN	=	0x009c
                           00009D   324 _SM2	=	0x009d
                           00009E   325 _SM1	=	0x009e
                           00009F   326 _SM0	=	0x009f
                           0000A0   327 _P2_0	=	0x00a0
                           0000A1   328 _P2_1	=	0x00a1
                           0000A2   329 _P2_2	=	0x00a2
                           0000A3   330 _P2_3	=	0x00a3
                           0000A4   331 _P2_4	=	0x00a4
                           0000A5   332 _P2_5	=	0x00a5
                           0000A6   333 _P2_6	=	0x00a6
                           0000A7   334 _P2_7	=	0x00a7
                           0000A8   335 _EX0	=	0x00a8
                           0000A9   336 _ET0	=	0x00a9
                           0000AA   337 _EX1	=	0x00aa
                           0000AB   338 _ET1	=	0x00ab
                           0000AC   339 _ES	=	0x00ac
                           0000AF   340 _EA	=	0x00af
                           0000B0   341 _P3_0	=	0x00b0
                           0000B1   342 _P3_1	=	0x00b1
                           0000B2   343 _P3_2	=	0x00b2
                           0000B3   344 _P3_3	=	0x00b3
                           0000B4   345 _P3_4	=	0x00b4
                           0000B5   346 _P3_5	=	0x00b5
                           0000B6   347 _P3_6	=	0x00b6
                           0000B7   348 _P3_7	=	0x00b7
                           0000B0   349 _RXD	=	0x00b0
                           0000B1   350 _TXD	=	0x00b1
                           0000B2   351 _INT0	=	0x00b2
                           0000B3   352 _INT1	=	0x00b3
                           0000B4   353 _T0	=	0x00b4
                           0000B5   354 _T1	=	0x00b5
                           0000B6   355 _WR	=	0x00b6
                           0000B7   356 _RD	=	0x00b7
                           0000B8   357 _PX0	=	0x00b8
                           0000B9   358 _PT0	=	0x00b9
                           0000BA   359 _PX1	=	0x00ba
                           0000BB   360 _PT1	=	0x00bb
                           0000BC   361 _PS	=	0x00bc
                           0000D0   362 _P	=	0x00d0
                           0000D1   363 _F1	=	0x00d1
                           0000D2   364 _OV	=	0x00d2
                           0000D3   365 _RS0	=	0x00d3
                           0000D4   366 _RS1	=	0x00d4
                           0000D5   367 _F0	=	0x00d5
                           0000D6   368 _AC	=	0x00d6
                           0000D7   369 _CY	=	0x00d7
                           0000AD   370 _ET2	=	0x00ad
                           0000BD   371 _PT2	=	0x00bd
                           0000C8   372 _T2CON_0	=	0x00c8
                           0000C9   373 _T2CON_1	=	0x00c9
                           0000CA   374 _T2CON_2	=	0x00ca
                           0000CB   375 _T2CON_3	=	0x00cb
                           0000CC   376 _T2CON_4	=	0x00cc
                           0000CD   377 _T2CON_5	=	0x00cd
                           0000CE   378 _T2CON_6	=	0x00ce
                           0000CF   379 _T2CON_7	=	0x00cf
                           0000C8   380 _CP_RL2	=	0x00c8
                           0000C9   381 _C_T2	=	0x00c9
                           0000CA   382 _TR2	=	0x00ca
                           0000CB   383 _EXEN2	=	0x00cb
                           0000CC   384 _TCLK	=	0x00cc
                           0000CD   385 _RCLK	=	0x00cd
                           0000CE   386 _EXF2	=	0x00ce
                           0000CF   387 _TF2	=	0x00cf
                           0000DF   388 _CF	=	0x00df
                           0000DE   389 _CR	=	0x00de
                           0000DC   390 _CCF4	=	0x00dc
                           0000DB   391 _CCF3	=	0x00db
                           0000DA   392 _CCF2	=	0x00da
                           0000D9   393 _CCF1	=	0x00d9
                           0000D8   394 _CCF0	=	0x00d8
                           0000AE   395 _EC	=	0x00ae
                           0000BE   396 _PPCL	=	0x00be
                           0000BD   397 _PT2L	=	0x00bd
                           0000BC   398 _PSL	=	0x00bc
                           0000BB   399 _PT1L	=	0x00bb
                           0000BA   400 _PX1L	=	0x00ba
                           0000B9   401 _PT0L	=	0x00b9
                           0000B8   402 _PX0L	=	0x00b8
                           0000C0   403 _P4_0	=	0x00c0
                           0000C1   404 _P4_1	=	0x00c1
                           0000C2   405 _P4_2	=	0x00c2
                           0000C3   406 _P4_3	=	0x00c3
                           0000C4   407 _P4_4	=	0x00c4
                           0000C5   408 _P4_5	=	0x00c5
                           0000C6   409 _P4_6	=	0x00c6
                           0000C7   410 _P4_7	=	0x00c7
                           0000E8   411 _P5_0	=	0x00e8
                           0000E9   412 _P5_1	=	0x00e9
                           0000EA   413 _P5_2	=	0x00ea
                           0000EB   414 _P5_3	=	0x00eb
                           0000EC   415 _P5_4	=	0x00ec
                           0000ED   416 _P5_5	=	0x00ed
                           0000EE   417 _P5_6	=	0x00ee
                           0000EF   418 _P5_7	=	0x00ef
                                    419 ;--------------------------------------------------------
                                    420 ; overlayable register banks
                                    421 ;--------------------------------------------------------
                                    422 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        423 	.ds 8
                                    424 ;--------------------------------------------------------
                                    425 ; internal ram data
                                    426 ;--------------------------------------------------------
                                    427 	.area DSEG    (DATA)
                                    428 ;--------------------------------------------------------
                                    429 ; overlayable items in internal ram
                                    430 ;--------------------------------------------------------
                                    431 ;--------------------------------------------------------
                                    432 ; indirectly addressable internal ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area ISEG    (DATA)
                                    435 ;--------------------------------------------------------
                                    436 ; absolute internal ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area IABS    (ABS,DATA)
                                    439 	.area IABS    (ABS,DATA)
                                    440 ;--------------------------------------------------------
                                    441 ; bit data
                                    442 ;--------------------------------------------------------
                                    443 	.area BSEG    (BIT)
      000000                        444 _get_string_sloc0_1_0:
      000000                        445 	.ds 1
                                    446 ;--------------------------------------------------------
                                    447 ; paged external ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area PSEG    (PAG,XDATA)
                                    450 ;--------------------------------------------------------
                                    451 ; external ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area XSEG    (XDATA)
      000421                        454 _string_input_buffer::
      000421                        455 	.ds 10
                                    456 ;--------------------------------------------------------
                                    457 ; absolute external ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area XABS    (ABS,XDATA)
                                    460 ;--------------------------------------------------------
                                    461 ; external initialized ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area XISEG   (XDATA)
                                    464 	.area HOME    (CODE)
                                    465 	.area GSINIT0 (CODE)
                                    466 	.area GSINIT1 (CODE)
                                    467 	.area GSINIT2 (CODE)
                                    468 	.area GSINIT3 (CODE)
                                    469 	.area GSINIT4 (CODE)
                                    470 	.area GSINIT5 (CODE)
                                    471 	.area GSINIT  (CODE)
                                    472 	.area GSFINAL (CODE)
                                    473 	.area CSEG    (CODE)
                                    474 ;--------------------------------------------------------
                                    475 ; global & static initialisations
                                    476 ;--------------------------------------------------------
                                    477 	.area HOME    (CODE)
                                    478 	.area GSINIT  (CODE)
                                    479 	.area GSFINAL (CODE)
                                    480 	.area GSINIT  (CODE)
                                    481 ;--------------------------------------------------------
                                    482 ; Home
                                    483 ;--------------------------------------------------------
                                    484 	.area HOME    (CODE)
                                    485 	.area HOME    (CODE)
                                    486 ;--------------------------------------------------------
                                    487 ; code
                                    488 ;--------------------------------------------------------
                                    489 	.area CSEG    (CODE)
                                    490 ;------------------------------------------------------------
                                    491 ;Allocation info for local variables in function 'get_input_buffer'
                                    492 ;------------------------------------------------------------
                                    493 ;	src/input.c:8: const char *get_input_buffer() {
                                    494 ;	-----------------------------------------
                                    495 ;	 function get_input_buffer
                                    496 ;	-----------------------------------------
      00253F                        497 _get_input_buffer:
                           000007   498 	ar7 = 0x07
                           000006   499 	ar6 = 0x06
                           000005   500 	ar5 = 0x05
                           000004   501 	ar4 = 0x04
                           000003   502 	ar3 = 0x03
                           000002   503 	ar2 = 0x02
                           000001   504 	ar1 = 0x01
                           000000   505 	ar0 = 0x00
                                    506 ;	src/input.c:9: return string_input_buffer; 
      00253F 90 04 21         [24]  507 	mov	dptr,#_string_input_buffer
      002542 75 F0 00         [24]  508 	mov	b,#0x00
                                    509 ;	src/input.c:10: }
      002545 22               [24]  510 	ret
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'get_string'
                                    513 ;------------------------------------------------------------
                                    514 ;received_char             Allocated with name '_get_string_received_char_65537_32'
                                    515 ;remaining_characters_allowed_to_read Allocated with name '_get_string_remaining_characters_allowed_to_read_65537_32'
                                    516 ;current_buffer            Allocated with name '_get_string_current_buffer_65537_32'
                                    517 ;------------------------------------------------------------
                                    518 ;	src/input.c:12: void get_string()
                                    519 ;	-----------------------------------------
                                    520 ;	 function get_string
                                    521 ;	-----------------------------------------
      002546                        522 _get_string:
                                    523 ;	src/input.c:14: memset(string_input_buffer, '\0', BUFFER_SZ);
      002546 90 04 34         [24]  524 	mov	dptr,#_memset_PARM_2
      002549 E4               [12]  525 	clr	a
      00254A F0               [24]  526 	movx	@dptr,a
      00254B 90 04 35         [24]  527 	mov	dptr,#_memset_PARM_3
      00254E 74 0A            [12]  528 	mov	a,#0x0a
      002550 F0               [24]  529 	movx	@dptr,a
      002551 E4               [12]  530 	clr	a
      002552 A3               [24]  531 	inc	dptr
      002553 F0               [24]  532 	movx	@dptr,a
      002554 90 04 21         [24]  533 	mov	dptr,#_string_input_buffer
      002557 75 F0 00         [24]  534 	mov	b,#0x00
      00255A 12 27 30         [24]  535 	lcall	_memset
                                    536 ;	src/input.c:17: char *current_buffer = string_input_buffer;
      00255D 7D 21            [12]  537 	mov	r5,#_string_input_buffer
      00255F 7E 04            [12]  538 	mov	r6,#(_string_input_buffer >> 8)
      002561 7F 00            [12]  539 	mov	r7,#0x00
                                    540 ;	src/input.c:18: do {
      002563 7B 0A            [12]  541 	mov	r3,#0x0a
      002565 7C 00            [12]  542 	mov	r4,#0x00
      002567                        543 00108$:
                                    544 ;	src/input.c:19: received_char = getchar(); 
      002567 C0 07            [24]  545 	push	ar7
      002569 C0 06            [24]  546 	push	ar6
      00256B C0 05            [24]  547 	push	ar5
      00256D C0 04            [24]  548 	push	ar4
      00256F C0 03            [24]  549 	push	ar3
      002571 12 25 31         [24]  550 	lcall	_getchar
      002574 A9 82            [24]  551 	mov	r1,dpl
                                    552 ;	src/input.c:20: putchar(received_char);
      002576 89 00            [24]  553 	mov	ar0,r1
      002578 7A 00            [12]  554 	mov	r2,#0x00
      00257A 88 82            [24]  555 	mov	dpl,r0
      00257C 8A 83            [24]  556 	mov	dph,r2
      00257E C0 01            [24]  557 	push	ar1
      002580 12 25 12         [24]  558 	lcall	_putchar
      002583 D0 01            [24]  559 	pop	ar1
      002585 D0 03            [24]  560 	pop	ar3
      002587 D0 04            [24]  561 	pop	ar4
      002589 D0 05            [24]  562 	pop	ar5
      00258B D0 06            [24]  563 	pop	ar6
      00258D D0 07            [24]  564 	pop	ar7
                                    565 ;	src/input.c:21: remaining_characters_allowed_to_read--; 
      00258F 1B               [12]  566 	dec	r3
      002590 BB FF 01         [24]  567 	cjne	r3,#0xff,00138$
      002593 1C               [12]  568 	dec	r4
      002594                        569 00138$:
                                    570 ;	src/input.c:23: || received_char != '\n'
      002594 B9 0D 03         [24]  571 	cjne	r1,#0x0d,00139$
      002597 D3               [12]  572 	setb	c
      002598 80 01            [24]  573 	sjmp	00140$
      00259A                        574 00139$:
      00259A C3               [12]  575 	clr	c
      00259B                        576 00140$:
      00259B 92 00            [24]  577 	mov	_get_string_sloc0_1_0,c
      00259D 50 06            [24]  578 	jnc	00101$
                                    579 ;	src/input.c:24: || received_char != '\0')
      00259F B9 0A 03         [24]  580 	cjne	r1,#0x0a,00101$
      0025A2 E9               [12]  581 	mov	a,r1
      0025A3 60 0F            [24]  582 	jz	00109$
      0025A5                        583 00101$:
                                    584 ;	src/input.c:26: *current_buffer= received_char;
      0025A5 8D 82            [24]  585 	mov	dpl,r5
      0025A7 8E 83            [24]  586 	mov	dph,r6
      0025A9 8F F0            [24]  587 	mov	b,r7
      0025AB E9               [12]  588 	mov	a,r1
      0025AC 12 28 7C         [24]  589 	lcall	__gptrput
      0025AF A3               [24]  590 	inc	dptr
      0025B0 AD 82            [24]  591 	mov	r5,dpl
      0025B2 AE 83            [24]  592 	mov	r6,dph
                                    593 ;	src/input.c:27: current_buffer++;
      0025B4                        594 00109$:
                                    595 ;	src/input.c:30: && received_char != '\n' 
      0025B4 20 00 0C         [24]  596 	jb	_get_string_sloc0_1_0,00110$
                                    597 ;	src/input.c:31: && received_char != '\0'
      0025B7 B9 0A 02         [24]  598 	cjne	r1,#0x0a,00146$
      0025BA 80 07            [24]  599 	sjmp	00110$
      0025BC                        600 00146$:
      0025BC E9               [12]  601 	mov	a,r1
      0025BD 60 04            [24]  602 	jz	00110$
                                    603 ;	src/input.c:32: && remaining_characters_allowed_to_read > 0);
      0025BF EB               [12]  604 	mov	a,r3
      0025C0 4C               [12]  605 	orl	a,r4
      0025C1 70 A4            [24]  606 	jnz	00108$
      0025C3                        607 00110$:
                                    608 ;	src/input.c:34: string_input_buffer[BUFFER_SZ-remaining_characters_allowed_to_read-1] = '\0'; //ensure good formatting
      0025C3 74 09            [12]  609 	mov	a,#0x09
      0025C5 C3               [12]  610 	clr	c
      0025C6 9B               [12]  611 	subb	a,r3
      0025C7 FB               [12]  612 	mov	r3,a
      0025C8 33               [12]  613 	rlc	a
      0025C9 95 E0            [12]  614 	subb	a,acc
      0025CB FF               [12]  615 	mov	r7,a
      0025CC EB               [12]  616 	mov	a,r3
      0025CD 24 21            [12]  617 	add	a,#_string_input_buffer
      0025CF F5 82            [12]  618 	mov	dpl,a
      0025D1 EF               [12]  619 	mov	a,r7
      0025D2 34 04            [12]  620 	addc	a,#(_string_input_buffer >> 8)
      0025D4 F5 83            [12]  621 	mov	dph,a
      0025D6 E4               [12]  622 	clr	a
      0025D7 F0               [24]  623 	movx	@dptr,a
                                    624 ;	src/input.c:35: }
      0025D8 22               [24]  625 	ret
                                    626 	.area CSEG    (CODE)
                                    627 	.area CONST   (CODE)
                                    628 	.area XINIT   (CODE)
                                    629 	.area CABS    (ABS,CODE)
