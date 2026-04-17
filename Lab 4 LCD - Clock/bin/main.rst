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
                                     12 	.globl _timer0_ISR
                                     13 	.globl __sdcc_external_startup
                                     14 	.globl _unpause_clock
                                     15 	.globl _pause_clock
                                     16 	.globl _reset_clock
                                     17 	.globl _increment_clock
                                     18 	.globl _clock_init_and_start
                                     19 	.globl _reload_counter
                                     20 	.globl _get_next_input_char
                                     21 	.globl _printf
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _P5_7
                                     98 	.globl _P5_6
                                     99 	.globl _P5_5
                                    100 	.globl _P5_4
                                    101 	.globl _P5_3
                                    102 	.globl _P5_2
                                    103 	.globl _P5_1
                                    104 	.globl _P5_0
                                    105 	.globl _P4_7
                                    106 	.globl _P4_6
                                    107 	.globl _P4_5
                                    108 	.globl _P4_4
                                    109 	.globl _P4_3
                                    110 	.globl _P4_2
                                    111 	.globl _P4_1
                                    112 	.globl _P4_0
                                    113 	.globl _PX0L
                                    114 	.globl _PT0L
                                    115 	.globl _PX1L
                                    116 	.globl _PT1L
                                    117 	.globl _PSL
                                    118 	.globl _PT2L
                                    119 	.globl _PPCL
                                    120 	.globl _EC
                                    121 	.globl _CCF0
                                    122 	.globl _CCF1
                                    123 	.globl _CCF2
                                    124 	.globl _CCF3
                                    125 	.globl _CCF4
                                    126 	.globl _CR
                                    127 	.globl _CF
                                    128 	.globl _TF2
                                    129 	.globl _EXF2
                                    130 	.globl _RCLK
                                    131 	.globl _TCLK
                                    132 	.globl _EXEN2
                                    133 	.globl _TR2
                                    134 	.globl _C_T2
                                    135 	.globl _CP_RL2
                                    136 	.globl _T2CON_7
                                    137 	.globl _T2CON_6
                                    138 	.globl _T2CON_5
                                    139 	.globl _T2CON_4
                                    140 	.globl _T2CON_3
                                    141 	.globl _T2CON_2
                                    142 	.globl _T2CON_1
                                    143 	.globl _T2CON_0
                                    144 	.globl _PT2
                                    145 	.globl _ET2
                                    146 	.globl _B
                                    147 	.globl _ACC
                                    148 	.globl _PSW
                                    149 	.globl _IP
                                    150 	.globl _P3
                                    151 	.globl _IE
                                    152 	.globl _P2
                                    153 	.globl _SBUF
                                    154 	.globl _SCON
                                    155 	.globl _P1
                                    156 	.globl _TH1
                                    157 	.globl _TH0
                                    158 	.globl _TL1
                                    159 	.globl _TL0
                                    160 	.globl _TMOD
                                    161 	.globl _TCON
                                    162 	.globl _PCON
                                    163 	.globl _DPH
                                    164 	.globl _DPL
                                    165 	.globl _SP
                                    166 	.globl _P0
                                    167 	.globl _EECON
                                    168 	.globl _KBF
                                    169 	.globl _KBE
                                    170 	.globl _KBLS
                                    171 	.globl _BRL
                                    172 	.globl _BDRCON
                                    173 	.globl _T2MOD
                                    174 	.globl _SPDAT
                                    175 	.globl _SPSTA
                                    176 	.globl _SPCON
                                    177 	.globl _SADEN
                                    178 	.globl _SADDR
                                    179 	.globl _WDTPRG
                                    180 	.globl _WDTRST
                                    181 	.globl _P5
                                    182 	.globl _P4
                                    183 	.globl _IPH1
                                    184 	.globl _IPL1
                                    185 	.globl _IPH0
                                    186 	.globl _IPL0
                                    187 	.globl _IEN1
                                    188 	.globl _IEN0
                                    189 	.globl _CMOD
                                    190 	.globl _CL
                                    191 	.globl _CH
                                    192 	.globl _CCON
                                    193 	.globl _CCAPM4
                                    194 	.globl _CCAPM3
                                    195 	.globl _CCAPM2
                                    196 	.globl _CCAPM1
                                    197 	.globl _CCAPM0
                                    198 	.globl _CCAP4L
                                    199 	.globl _CCAP3L
                                    200 	.globl _CCAP2L
                                    201 	.globl _CCAP1L
                                    202 	.globl _CCAP0L
                                    203 	.globl _CCAP4H
                                    204 	.globl _CCAP3H
                                    205 	.globl _CCAP2H
                                    206 	.globl _CCAP1H
                                    207 	.globl _CCAP0H
                                    208 	.globl _CKCON1
                                    209 	.globl _CKCON0
                                    210 	.globl _CKRL
                                    211 	.globl _AUXR1
                                    212 	.globl _AUXR
                                    213 	.globl _TH2
                                    214 	.globl _TL2
                                    215 	.globl _RCAP2H
                                    216 	.globl _RCAP2L
                                    217 	.globl _T2CON
                                    218 ;--------------------------------------------------------
                                    219 ; special function registers
                                    220 ;--------------------------------------------------------
                                    221 	.area RSEG    (ABS,DATA)
      000000                        222 	.org 0x0000
                           0000C8   223 _T2CON	=	0x00c8
                           0000CA   224 _RCAP2L	=	0x00ca
                           0000CB   225 _RCAP2H	=	0x00cb
                           0000CC   226 _TL2	=	0x00cc
                           0000CD   227 _TH2	=	0x00cd
                           00008E   228 _AUXR	=	0x008e
                           0000A2   229 _AUXR1	=	0x00a2
                           000097   230 _CKRL	=	0x0097
                           00008F   231 _CKCON0	=	0x008f
                           0000AF   232 _CKCON1	=	0x00af
                           0000FA   233 _CCAP0H	=	0x00fa
                           0000FB   234 _CCAP1H	=	0x00fb
                           0000FC   235 _CCAP2H	=	0x00fc
                           0000FD   236 _CCAP3H	=	0x00fd
                           0000FE   237 _CCAP4H	=	0x00fe
                           0000EA   238 _CCAP0L	=	0x00ea
                           0000EB   239 _CCAP1L	=	0x00eb
                           0000EC   240 _CCAP2L	=	0x00ec
                           0000ED   241 _CCAP3L	=	0x00ed
                           0000EE   242 _CCAP4L	=	0x00ee
                           0000DA   243 _CCAPM0	=	0x00da
                           0000DB   244 _CCAPM1	=	0x00db
                           0000DC   245 _CCAPM2	=	0x00dc
                           0000DD   246 _CCAPM3	=	0x00dd
                           0000DE   247 _CCAPM4	=	0x00de
                           0000D8   248 _CCON	=	0x00d8
                           0000F9   249 _CH	=	0x00f9
                           0000E9   250 _CL	=	0x00e9
                           0000D9   251 _CMOD	=	0x00d9
                           0000A8   252 _IEN0	=	0x00a8
                           0000B1   253 _IEN1	=	0x00b1
                           0000B8   254 _IPL0	=	0x00b8
                           0000B7   255 _IPH0	=	0x00b7
                           0000B2   256 _IPL1	=	0x00b2
                           0000B3   257 _IPH1	=	0x00b3
                           0000C0   258 _P4	=	0x00c0
                           0000E8   259 _P5	=	0x00e8
                           0000A6   260 _WDTRST	=	0x00a6
                           0000A7   261 _WDTPRG	=	0x00a7
                           0000A9   262 _SADDR	=	0x00a9
                           0000B9   263 _SADEN	=	0x00b9
                           0000C3   264 _SPCON	=	0x00c3
                           0000C4   265 _SPSTA	=	0x00c4
                           0000C5   266 _SPDAT	=	0x00c5
                           0000C9   267 _T2MOD	=	0x00c9
                           00009B   268 _BDRCON	=	0x009b
                           00009A   269 _BRL	=	0x009a
                           00009C   270 _KBLS	=	0x009c
                           00009D   271 _KBE	=	0x009d
                           00009E   272 _KBF	=	0x009e
                           0000D2   273 _EECON	=	0x00d2
                           000080   274 _P0	=	0x0080
                           000081   275 _SP	=	0x0081
                           000082   276 _DPL	=	0x0082
                           000083   277 _DPH	=	0x0083
                           000087   278 _PCON	=	0x0087
                           000088   279 _TCON	=	0x0088
                           000089   280 _TMOD	=	0x0089
                           00008A   281 _TL0	=	0x008a
                           00008B   282 _TL1	=	0x008b
                           00008C   283 _TH0	=	0x008c
                           00008D   284 _TH1	=	0x008d
                           000090   285 _P1	=	0x0090
                           000098   286 _SCON	=	0x0098
                           000099   287 _SBUF	=	0x0099
                           0000A0   288 _P2	=	0x00a0
                           0000A8   289 _IE	=	0x00a8
                           0000B0   290 _P3	=	0x00b0
                           0000B8   291 _IP	=	0x00b8
                           0000D0   292 _PSW	=	0x00d0
                           0000E0   293 _ACC	=	0x00e0
                           0000F0   294 _B	=	0x00f0
                                    295 ;--------------------------------------------------------
                                    296 ; special function bits
                                    297 ;--------------------------------------------------------
                                    298 	.area RSEG    (ABS,DATA)
      000000                        299 	.org 0x0000
                           0000AD   300 _ET2	=	0x00ad
                           0000BD   301 _PT2	=	0x00bd
                           0000C8   302 _T2CON_0	=	0x00c8
                           0000C9   303 _T2CON_1	=	0x00c9
                           0000CA   304 _T2CON_2	=	0x00ca
                           0000CB   305 _T2CON_3	=	0x00cb
                           0000CC   306 _T2CON_4	=	0x00cc
                           0000CD   307 _T2CON_5	=	0x00cd
                           0000CE   308 _T2CON_6	=	0x00ce
                           0000CF   309 _T2CON_7	=	0x00cf
                           0000C8   310 _CP_RL2	=	0x00c8
                           0000C9   311 _C_T2	=	0x00c9
                           0000CA   312 _TR2	=	0x00ca
                           0000CB   313 _EXEN2	=	0x00cb
                           0000CC   314 _TCLK	=	0x00cc
                           0000CD   315 _RCLK	=	0x00cd
                           0000CE   316 _EXF2	=	0x00ce
                           0000CF   317 _TF2	=	0x00cf
                           0000DF   318 _CF	=	0x00df
                           0000DE   319 _CR	=	0x00de
                           0000DC   320 _CCF4	=	0x00dc
                           0000DB   321 _CCF3	=	0x00db
                           0000DA   322 _CCF2	=	0x00da
                           0000D9   323 _CCF1	=	0x00d9
                           0000D8   324 _CCF0	=	0x00d8
                           0000AE   325 _EC	=	0x00ae
                           0000BE   326 _PPCL	=	0x00be
                           0000BD   327 _PT2L	=	0x00bd
                           0000BC   328 _PSL	=	0x00bc
                           0000BB   329 _PT1L	=	0x00bb
                           0000BA   330 _PX1L	=	0x00ba
                           0000B9   331 _PT0L	=	0x00b9
                           0000B8   332 _PX0L	=	0x00b8
                           0000C0   333 _P4_0	=	0x00c0
                           0000C1   334 _P4_1	=	0x00c1
                           0000C2   335 _P4_2	=	0x00c2
                           0000C3   336 _P4_3	=	0x00c3
                           0000C4   337 _P4_4	=	0x00c4
                           0000C5   338 _P4_5	=	0x00c5
                           0000C6   339 _P4_6	=	0x00c6
                           0000C7   340 _P4_7	=	0x00c7
                           0000E8   341 _P5_0	=	0x00e8
                           0000E9   342 _P5_1	=	0x00e9
                           0000EA   343 _P5_2	=	0x00ea
                           0000EB   344 _P5_3	=	0x00eb
                           0000EC   345 _P5_4	=	0x00ec
                           0000ED   346 _P5_5	=	0x00ed
                           0000EE   347 _P5_6	=	0x00ee
                           0000EF   348 _P5_7	=	0x00ef
                           000080   349 _P0_0	=	0x0080
                           000081   350 _P0_1	=	0x0081
                           000082   351 _P0_2	=	0x0082
                           000083   352 _P0_3	=	0x0083
                           000084   353 _P0_4	=	0x0084
                           000085   354 _P0_5	=	0x0085
                           000086   355 _P0_6	=	0x0086
                           000087   356 _P0_7	=	0x0087
                           000088   357 _IT0	=	0x0088
                           000089   358 _IE0	=	0x0089
                           00008A   359 _IT1	=	0x008a
                           00008B   360 _IE1	=	0x008b
                           00008C   361 _TR0	=	0x008c
                           00008D   362 _TF0	=	0x008d
                           00008E   363 _TR1	=	0x008e
                           00008F   364 _TF1	=	0x008f
                           000090   365 _P1_0	=	0x0090
                           000091   366 _P1_1	=	0x0091
                           000092   367 _P1_2	=	0x0092
                           000093   368 _P1_3	=	0x0093
                           000094   369 _P1_4	=	0x0094
                           000095   370 _P1_5	=	0x0095
                           000096   371 _P1_6	=	0x0096
                           000097   372 _P1_7	=	0x0097
                           000098   373 _RI	=	0x0098
                           000099   374 _TI	=	0x0099
                           00009A   375 _RB8	=	0x009a
                           00009B   376 _TB8	=	0x009b
                           00009C   377 _REN	=	0x009c
                           00009D   378 _SM2	=	0x009d
                           00009E   379 _SM1	=	0x009e
                           00009F   380 _SM0	=	0x009f
                           0000A0   381 _P2_0	=	0x00a0
                           0000A1   382 _P2_1	=	0x00a1
                           0000A2   383 _P2_2	=	0x00a2
                           0000A3   384 _P2_3	=	0x00a3
                           0000A4   385 _P2_4	=	0x00a4
                           0000A5   386 _P2_5	=	0x00a5
                           0000A6   387 _P2_6	=	0x00a6
                           0000A7   388 _P2_7	=	0x00a7
                           0000A8   389 _EX0	=	0x00a8
                           0000A9   390 _ET0	=	0x00a9
                           0000AA   391 _EX1	=	0x00aa
                           0000AB   392 _ET1	=	0x00ab
                           0000AC   393 _ES	=	0x00ac
                           0000AF   394 _EA	=	0x00af
                           0000B0   395 _P3_0	=	0x00b0
                           0000B1   396 _P3_1	=	0x00b1
                           0000B2   397 _P3_2	=	0x00b2
                           0000B3   398 _P3_3	=	0x00b3
                           0000B4   399 _P3_4	=	0x00b4
                           0000B5   400 _P3_5	=	0x00b5
                           0000B6   401 _P3_6	=	0x00b6
                           0000B7   402 _P3_7	=	0x00b7
                           0000B0   403 _RXD	=	0x00b0
                           0000B1   404 _TXD	=	0x00b1
                           0000B2   405 _INT0	=	0x00b2
                           0000B3   406 _INT1	=	0x00b3
                           0000B4   407 _T0	=	0x00b4
                           0000B5   408 _T1	=	0x00b5
                           0000B6   409 _WR	=	0x00b6
                           0000B7   410 _RD	=	0x00b7
                           0000B8   411 _PX0	=	0x00b8
                           0000B9   412 _PT0	=	0x00b9
                           0000BA   413 _PX1	=	0x00ba
                           0000BB   414 _PT1	=	0x00bb
                           0000BC   415 _PS	=	0x00bc
                           0000D0   416 _P	=	0x00d0
                           0000D1   417 _F1	=	0x00d1
                           0000D2   418 _OV	=	0x00d2
                           0000D3   419 _RS0	=	0x00d3
                           0000D4   420 _RS1	=	0x00d4
                           0000D5   421 _F0	=	0x00d5
                           0000D6   422 _AC	=	0x00d6
                           0000D7   423 _CY	=	0x00d7
                                    424 ;--------------------------------------------------------
                                    425 ; overlayable register banks
                                    426 ;--------------------------------------------------------
                                    427 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        428 	.ds 8
                                    429 ;--------------------------------------------------------
                                    430 ; overlayable bit register bank
                                    431 ;--------------------------------------------------------
                                    432 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        433 bits:
      000021                        434 	.ds 1
                           008000   435 	b0 = bits[0]
                           008100   436 	b1 = bits[1]
                           008200   437 	b2 = bits[2]
                           008300   438 	b3 = bits[3]
                           008400   439 	b4 = bits[4]
                           008500   440 	b5 = bits[5]
                           008600   441 	b6 = bits[6]
                           008700   442 	b7 = bits[7]
                                    443 ;--------------------------------------------------------
                                    444 ; internal ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area DSEG    (DATA)
                                    447 ;--------------------------------------------------------
                                    448 ; overlayable items in internal ram
                                    449 ;--------------------------------------------------------
                                    450 ;--------------------------------------------------------
                                    451 ; Stack segment in internal ram
                                    452 ;--------------------------------------------------------
                                    453 	.area	SSEG
      000022                        454 __start__stack:
      000022                        455 	.ds	1
                                    456 
                                    457 ;--------------------------------------------------------
                                    458 ; indirectly addressable internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area ISEG    (DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; absolute internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area IABS    (ABS,DATA)
                                    465 	.area IABS    (ABS,DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; bit data
                                    468 ;--------------------------------------------------------
                                    469 	.area BSEG    (BIT)
                                    470 ;--------------------------------------------------------
                                    471 ; paged external ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area PSEG    (PAG,XDATA)
                                    474 ;--------------------------------------------------------
                                    475 ; external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area XSEG    (XDATA)
                                    478 ;--------------------------------------------------------
                                    479 ; absolute external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area XABS    (ABS,XDATA)
                                    482 ;--------------------------------------------------------
                                    483 ; external initialized ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XISEG   (XDATA)
                                    486 	.area HOME    (CODE)
                                    487 	.area GSINIT0 (CODE)
                                    488 	.area GSINIT1 (CODE)
                                    489 	.area GSINIT2 (CODE)
                                    490 	.area GSINIT3 (CODE)
                                    491 	.area GSINIT4 (CODE)
                                    492 	.area GSINIT5 (CODE)
                                    493 	.area GSINIT  (CODE)
                                    494 	.area GSFINAL (CODE)
                                    495 	.area CSEG    (CODE)
                                    496 ;--------------------------------------------------------
                                    497 ; interrupt vector
                                    498 ;--------------------------------------------------------
                                    499 	.area HOME    (CODE)
      002000                        500 __interrupt_vect:
      002000 02 20 3F         [24]  501 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  502 	reti
      002004                        503 	.ds	7
      00200B 02 20 9F         [24]  504 	ljmp	_timer0_ISR
                                    505 ;--------------------------------------------------------
                                    506 ; global & static initialisations
                                    507 ;--------------------------------------------------------
                                    508 	.area HOME    (CODE)
                                    509 	.area GSINIT  (CODE)
                                    510 	.area GSFINAL (CODE)
                                    511 	.area GSINIT  (CODE)
                                    512 	.globl __sdcc_gsinit_startup
                                    513 	.globl __sdcc_program_startup
                                    514 	.globl __start__stack
                                    515 	.globl __mcs51_genXINIT
                                    516 	.globl __mcs51_genXRAMCLEAR
                                    517 	.globl __mcs51_genRAMCLEAR
                                    518 	.area GSFINAL (CODE)
      002098 02 20 0E         [24]  519 	ljmp	__sdcc_program_startup
                                    520 ;--------------------------------------------------------
                                    521 ; Home
                                    522 ;--------------------------------------------------------
                                    523 	.area HOME    (CODE)
                                    524 	.area HOME    (CODE)
      00200E                        525 __sdcc_program_startup:
      00200E 02 20 F9         [24]  526 	ljmp	_main
                                    527 ;	return from main will return to caller
                                    528 ;--------------------------------------------------------
                                    529 ; code
                                    530 ;--------------------------------------------------------
                                    531 	.area CSEG    (CODE)
                                    532 ;------------------------------------------------------------
                                    533 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    534 ;------------------------------------------------------------
                                    535 ;	src/main.c:34: int _sdcc_external_startup()
                                    536 ;	-----------------------------------------
                                    537 ;	 function _sdcc_external_startup
                                    538 ;	-----------------------------------------
      00209B                        539 __sdcc_external_startup:
                           000007   540 	ar7 = 0x07
                           000006   541 	ar6 = 0x06
                           000005   542 	ar5 = 0x05
                           000004   543 	ar4 = 0x04
                           000003   544 	ar3 = 0x03
                           000002   545 	ar2 = 0x02
                           000001   546 	ar1 = 0x01
                           000000   547 	ar0 = 0x00
                                    548 ;	src/main.c:37: return 0;
      00209B 90 00 00         [24]  549 	mov	dptr,#0x0000
                                    550 ;	src/main.c:38: }
      00209E 22               [24]  551 	ret
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'timer0_ISR'
                                    554 ;------------------------------------------------------------
                                    555 ;	src/main.c:50: void timer0_ISR(void) __interrupt(TF0_VECTOR)
                                    556 ;	-----------------------------------------
                                    557 ;	 function timer0_ISR
                                    558 ;	-----------------------------------------
      00209F                        559 _timer0_ISR:
      00209F C0 21            [24]  560 	push	bits
      0020A1 C0 E0            [24]  561 	push	acc
      0020A3 C0 F0            [24]  562 	push	b
      0020A5 C0 82            [24]  563 	push	dpl
      0020A7 C0 83            [24]  564 	push	dph
      0020A9 C0 07            [24]  565 	push	(0+7)
      0020AB C0 06            [24]  566 	push	(0+6)
      0020AD C0 05            [24]  567 	push	(0+5)
      0020AF C0 04            [24]  568 	push	(0+4)
      0020B1 C0 03            [24]  569 	push	(0+3)
      0020B3 C0 02            [24]  570 	push	(0+2)
      0020B5 C0 01            [24]  571 	push	(0+1)
      0020B7 C0 00            [24]  572 	push	(0+0)
      0020B9 C0 D0            [24]  573 	push	psw
      0020BB 75 D0 00         [24]  574 	mov	psw,#0x00
                                    575 ;	src/main.c:52: reload_counter(); 
      0020BE 12 29 F0         [24]  576 	lcall	_reload_counter
                                    577 ;	src/main.c:53: if (clock_paused == CLOCK_RUNNING)
      0020C1 90 20 56         [24]  578 	mov	dptr,#_clock_paused
      0020C4 E0               [24]  579 	movx	a,@dptr
      0020C5 70 15            [24]  580 	jnz	00105$
                                    581 ;	src/main.c:55: current_overflow_count++; // increment the overflow count
      0020C7 90 20 55         [24]  582 	mov	dptr,#_current_overflow_count
      0020CA E0               [24]  583 	movx	a,@dptr
      0020CB 04               [12]  584 	inc	a
      0020CC F0               [24]  585 	movx	@dptr,a
                                    586 ;	src/main.c:56: if(current_overflow_count >= INTERRUPT_COUNT_BEFORE_ROLLING_OVER)
      0020CD E0               [24]  587 	movx	a,@dptr
      0020CE FF               [12]  588 	mov	r7,a
      0020CF BF 02 00         [24]  589 	cjne	r7,#0x02,00116$
      0020D2                        590 00116$:
      0020D2 40 08            [24]  591 	jc	00105$
                                    592 ;	src/main.c:58: increment_clock();
      0020D4 12 2C CA         [24]  593 	lcall	_increment_clock
                                    594 ;	src/main.c:59: current_overflow_count = 0; 
      0020D7 90 20 55         [24]  595 	mov	dptr,#_current_overflow_count
      0020DA E4               [12]  596 	clr	a
      0020DB F0               [24]  597 	movx	@dptr,a
      0020DC                        598 00105$:
                                    599 ;	src/main.c:62: }
      0020DC D0 D0            [24]  600 	pop	psw
      0020DE D0 00            [24]  601 	pop	(0+0)
      0020E0 D0 01            [24]  602 	pop	(0+1)
      0020E2 D0 02            [24]  603 	pop	(0+2)
      0020E4 D0 03            [24]  604 	pop	(0+3)
      0020E6 D0 04            [24]  605 	pop	(0+4)
      0020E8 D0 05            [24]  606 	pop	(0+5)
      0020EA D0 06            [24]  607 	pop	(0+6)
      0020EC D0 07            [24]  608 	pop	(0+7)
      0020EE D0 83            [24]  609 	pop	dph
      0020F0 D0 82            [24]  610 	pop	dpl
      0020F2 D0 F0            [24]  611 	pop	b
      0020F4 D0 E0            [24]  612 	pop	acc
      0020F6 D0 21            [24]  613 	pop	bits
      0020F8 32               [24]  614 	reti
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'main'
                                    617 ;------------------------------------------------------------
                                    618 ;received_char             Allocated with name '_main_received_char_196609_93'
                                    619 ;------------------------------------------------------------
                                    620 ;	src/main.c:65: void main()
                                    621 ;	-----------------------------------------
                                    622 ;	 function main
                                    623 ;	-----------------------------------------
      0020F9                        624 _main:
                                    625 ;	src/main.c:67: clock_init_and_start();
      0020F9 12 2B CF         [24]  626 	lcall	_clock_init_and_start
      0020FC                        627 00108$:
                                    628 ;	src/main.c:70: printf("\r\nEnter a char (? for menu): ");
      0020FC 74 F6            [12]  629 	mov	a,#___str_0
      0020FE C0 E0            [24]  630 	push	acc
      002100 74 3A            [12]  631 	mov	a,#(___str_0 >> 8)
      002102 C0 E0            [24]  632 	push	acc
      002104 74 80            [12]  633 	mov	a,#0x80
      002106 C0 E0            [24]  634 	push	acc
      002108 12 2E E9         [24]  635 	lcall	_printf
      00210B 15 81            [12]  636 	dec	sp
      00210D 15 81            [12]  637 	dec	sp
      00210F 15 81            [12]  638 	dec	sp
                                    639 ;	src/main.c:71: char received_char = get_next_input_char();
      002111 12 23 6F         [24]  640 	lcall	_get_next_input_char
      002114 AF 82            [24]  641 	mov	r7,dpl
                                    642 ;	src/main.c:72: printf("\r\n");
      002116 C0 07            [24]  643 	push	ar7
      002118 74 14            [12]  644 	mov	a,#___str_1
      00211A C0 E0            [24]  645 	push	acc
      00211C 74 3B            [12]  646 	mov	a,#(___str_1 >> 8)
      00211E C0 E0            [24]  647 	push	acc
      002120 74 80            [12]  648 	mov	a,#0x80
      002122 C0 E0            [24]  649 	push	acc
      002124 12 2E E9         [24]  650 	lcall	_printf
      002127 15 81            [12]  651 	dec	sp
      002129 15 81            [12]  652 	dec	sp
      00212B 15 81            [12]  653 	dec	sp
      00212D D0 07            [24]  654 	pop	ar7
                                    655 ;	src/main.c:73: switch(received_char)
      00212F BF 3F 02         [24]  656 	cjne	r7,#0x3f,00132$
      002132 80 13            [24]  657 	sjmp	00101$
      002134                        658 00132$:
      002134 BF 70 02         [24]  659 	cjne	r7,#0x70,00133$
      002137 80 65            [24]  660 	sjmp	00102$
      002139                        661 00133$:
      002139 BF 72 03         [24]  662 	cjne	r7,#0x72,00134$
      00213C 02 21 D4         [24]  663 	ljmp	00104$
      00213F                        664 00134$:
      00213F BF 73 02         [24]  665 	cjne	r7,#0x73,00135$
      002142 80 75            [24]  666 	sjmp	00103$
      002144                        667 00135$:
      002144 02 21 EF         [24]  668 	ljmp	00105$
                                    669 ;	src/main.c:75: case '?':
      002147                        670 00101$:
                                    671 ;	src/main.c:76: printf("?: menu\r\n");
      002147 74 17            [12]  672 	mov	a,#___str_2
      002149 C0 E0            [24]  673 	push	acc
      00214B 74 3B            [12]  674 	mov	a,#(___str_2 >> 8)
      00214D C0 E0            [24]  675 	push	acc
      00214F 74 80            [12]  676 	mov	a,#0x80
      002151 C0 E0            [24]  677 	push	acc
      002153 12 2E E9         [24]  678 	lcall	_printf
      002156 15 81            [12]  679 	dec	sp
      002158 15 81            [12]  680 	dec	sp
      00215A 15 81            [12]  681 	dec	sp
                                    682 ;	src/main.c:77: printf("p: pause the clock\r\n");
      00215C 74 21            [12]  683 	mov	a,#___str_3
      00215E C0 E0            [24]  684 	push	acc
      002160 74 3B            [12]  685 	mov	a,#(___str_3 >> 8)
      002162 C0 E0            [24]  686 	push	acc
      002164 74 80            [12]  687 	mov	a,#0x80
      002166 C0 E0            [24]  688 	push	acc
      002168 12 2E E9         [24]  689 	lcall	_printf
      00216B 15 81            [12]  690 	dec	sp
      00216D 15 81            [12]  691 	dec	sp
      00216F 15 81            [12]  692 	dec	sp
                                    693 ;	src/main.c:78: printf("s: start the clock\r\n");
      002171 74 36            [12]  694 	mov	a,#___str_4
      002173 C0 E0            [24]  695 	push	acc
      002175 74 3B            [12]  696 	mov	a,#(___str_4 >> 8)
      002177 C0 E0            [24]  697 	push	acc
      002179 74 80            [12]  698 	mov	a,#0x80
      00217B C0 E0            [24]  699 	push	acc
      00217D 12 2E E9         [24]  700 	lcall	_printf
      002180 15 81            [12]  701 	dec	sp
      002182 15 81            [12]  702 	dec	sp
      002184 15 81            [12]  703 	dec	sp
                                    704 ;	src/main.c:79: printf("r: reset the clock\r\n");
      002186 74 4B            [12]  705 	mov	a,#___str_5
      002188 C0 E0            [24]  706 	push	acc
      00218A 74 3B            [12]  707 	mov	a,#(___str_5 >> 8)
      00218C C0 E0            [24]  708 	push	acc
      00218E 74 80            [12]  709 	mov	a,#0x80
      002190 C0 E0            [24]  710 	push	acc
      002192 12 2E E9         [24]  711 	lcall	_printf
      002195 15 81            [12]  712 	dec	sp
      002197 15 81            [12]  713 	dec	sp
      002199 15 81            [12]  714 	dec	sp
                                    715 ;	src/main.c:80: break;
      00219B 02 20 FC         [24]  716 	ljmp	00108$
                                    717 ;	src/main.c:81: case 'p':
      00219E                        718 00102$:
                                    719 ;	src/main.c:82: pause_clock();
      00219E 12 2C F4         [24]  720 	lcall	_pause_clock
                                    721 ;	src/main.c:83: printf("Clock paused\r\n");
      0021A1 74 60            [12]  722 	mov	a,#___str_6
      0021A3 C0 E0            [24]  723 	push	acc
      0021A5 74 3B            [12]  724 	mov	a,#(___str_6 >> 8)
      0021A7 C0 E0            [24]  725 	push	acc
      0021A9 74 80            [12]  726 	mov	a,#0x80
      0021AB C0 E0            [24]  727 	push	acc
      0021AD 12 2E E9         [24]  728 	lcall	_printf
      0021B0 15 81            [12]  729 	dec	sp
      0021B2 15 81            [12]  730 	dec	sp
      0021B4 15 81            [12]  731 	dec	sp
                                    732 ;	src/main.c:84: break;
      0021B6 02 20 FC         [24]  733 	ljmp	00108$
                                    734 ;	src/main.c:85: case 's':
      0021B9                        735 00103$:
                                    736 ;	src/main.c:86: unpause_clock();
      0021B9 12 2C FB         [24]  737 	lcall	_unpause_clock
                                    738 ;	src/main.c:87: printf("Clock unpaused\r\n");
      0021BC 74 6F            [12]  739 	mov	a,#___str_7
      0021BE C0 E0            [24]  740 	push	acc
      0021C0 74 3B            [12]  741 	mov	a,#(___str_7 >> 8)
      0021C2 C0 E0            [24]  742 	push	acc
      0021C4 74 80            [12]  743 	mov	a,#0x80
      0021C6 C0 E0            [24]  744 	push	acc
      0021C8 12 2E E9         [24]  745 	lcall	_printf
      0021CB 15 81            [12]  746 	dec	sp
      0021CD 15 81            [12]  747 	dec	sp
      0021CF 15 81            [12]  748 	dec	sp
                                    749 ;	src/main.c:88: break;
      0021D1 02 20 FC         [24]  750 	ljmp	00108$
                                    751 ;	src/main.c:89: case 'r':
      0021D4                        752 00104$:
                                    753 ;	src/main.c:90: reset_clock();
      0021D4 12 2C D0         [24]  754 	lcall	_reset_clock
                                    755 ;	src/main.c:91: printf("Clock reset\r\n");
      0021D7 74 80            [12]  756 	mov	a,#___str_8
      0021D9 C0 E0            [24]  757 	push	acc
      0021DB 74 3B            [12]  758 	mov	a,#(___str_8 >> 8)
      0021DD C0 E0            [24]  759 	push	acc
      0021DF 74 80            [12]  760 	mov	a,#0x80
      0021E1 C0 E0            [24]  761 	push	acc
      0021E3 12 2E E9         [24]  762 	lcall	_printf
      0021E6 15 81            [12]  763 	dec	sp
      0021E8 15 81            [12]  764 	dec	sp
      0021EA 15 81            [12]  765 	dec	sp
                                    766 ;	src/main.c:92: break;
      0021EC 02 20 FC         [24]  767 	ljmp	00108$
                                    768 ;	src/main.c:93: default:
      0021EF                        769 00105$:
                                    770 ;	src/main.c:94: printf("Char not recognized, try again...\r\n");
      0021EF 74 8E            [12]  771 	mov	a,#___str_9
      0021F1 C0 E0            [24]  772 	push	acc
      0021F3 74 3B            [12]  773 	mov	a,#(___str_9 >> 8)
      0021F5 C0 E0            [24]  774 	push	acc
      0021F7 74 80            [12]  775 	mov	a,#0x80
      0021F9 C0 E0            [24]  776 	push	acc
      0021FB 12 2E E9         [24]  777 	lcall	_printf
      0021FE 15 81            [12]  778 	dec	sp
      002200 15 81            [12]  779 	dec	sp
      002202 15 81            [12]  780 	dec	sp
                                    781 ;	src/main.c:96: }
                                    782 ;	src/main.c:98: }
      002204 02 20 FC         [24]  783 	ljmp	00108$
                                    784 	.area CSEG    (CODE)
                                    785 	.area CONST   (CODE)
                                    786 	.area CONST   (CODE)
      003AF6                        787 ___str_0:
      003AF6 0D                     788 	.db 0x0d
      003AF7 0A                     789 	.db 0x0a
      003AF8 45 6E 74 65 72 20 61   790 	.ascii "Enter a char (? for menu): "
             20 63 68 61 72 20 28
             3F 20 66 6F 72 20 6D
             65 6E 75 29 3A 20
      003B13 00                     791 	.db 0x00
                                    792 	.area CSEG    (CODE)
                                    793 	.area CONST   (CODE)
      003B14                        794 ___str_1:
      003B14 0D                     795 	.db 0x0d
      003B15 0A                     796 	.db 0x0a
      003B16 00                     797 	.db 0x00
                                    798 	.area CSEG    (CODE)
                                    799 	.area CONST   (CODE)
      003B17                        800 ___str_2:
      003B17 3F 3A 20 6D 65 6E 75   801 	.ascii "?: menu"
      003B1E 0D                     802 	.db 0x0d
      003B1F 0A                     803 	.db 0x0a
      003B20 00                     804 	.db 0x00
                                    805 	.area CSEG    (CODE)
                                    806 	.area CONST   (CODE)
      003B21                        807 ___str_3:
      003B21 70 3A 20 70 61 75 73   808 	.ascii "p: pause the clock"
             65 20 74 68 65 20 63
             6C 6F 63 6B
      003B33 0D                     809 	.db 0x0d
      003B34 0A                     810 	.db 0x0a
      003B35 00                     811 	.db 0x00
                                    812 	.area CSEG    (CODE)
                                    813 	.area CONST   (CODE)
      003B36                        814 ___str_4:
      003B36 73 3A 20 73 74 61 72   815 	.ascii "s: start the clock"
             74 20 74 68 65 20 63
             6C 6F 63 6B
      003B48 0D                     816 	.db 0x0d
      003B49 0A                     817 	.db 0x0a
      003B4A 00                     818 	.db 0x00
                                    819 	.area CSEG    (CODE)
                                    820 	.area CONST   (CODE)
      003B4B                        821 ___str_5:
      003B4B 72 3A 20 72 65 73 65   822 	.ascii "r: reset the clock"
             74 20 74 68 65 20 63
             6C 6F 63 6B
      003B5D 0D                     823 	.db 0x0d
      003B5E 0A                     824 	.db 0x0a
      003B5F 00                     825 	.db 0x00
                                    826 	.area CSEG    (CODE)
                                    827 	.area CONST   (CODE)
      003B60                        828 ___str_6:
      003B60 43 6C 6F 63 6B 20 70   829 	.ascii "Clock paused"
             61 75 73 65 64
      003B6C 0D                     830 	.db 0x0d
      003B6D 0A                     831 	.db 0x0a
      003B6E 00                     832 	.db 0x00
                                    833 	.area CSEG    (CODE)
                                    834 	.area CONST   (CODE)
      003B6F                        835 ___str_7:
      003B6F 43 6C 6F 63 6B 20 75   836 	.ascii "Clock unpaused"
             6E 70 61 75 73 65 64
      003B7D 0D                     837 	.db 0x0d
      003B7E 0A                     838 	.db 0x0a
      003B7F 00                     839 	.db 0x00
                                    840 	.area CSEG    (CODE)
                                    841 	.area CONST   (CODE)
      003B80                        842 ___str_8:
      003B80 43 6C 6F 63 6B 20 72   843 	.ascii "Clock reset"
             65 73 65 74
      003B8B 0D                     844 	.db 0x0d
      003B8C 0A                     845 	.db 0x0a
      003B8D 00                     846 	.db 0x00
                                    847 	.area CSEG    (CODE)
                                    848 	.area CONST   (CODE)
      003B8E                        849 ___str_9:
      003B8E 43 68 61 72 20 6E 6F   850 	.ascii "Char not recognized, try again..."
             74 20 72 65 63 6F 67
             6E 69 7A 65 64 2C 20
             74 72 79 20 61 67 61
             69 6E 2E 2E 2E
      003BAF 0D                     851 	.db 0x0d
      003BB0 0A                     852 	.db 0x0a
      003BB1 00                     853 	.db 0x00
                                    854 	.area CSEG    (CODE)
                                    855 	.area XINIT   (CODE)
                                    856 	.area CABS    (ABS,CODE)
