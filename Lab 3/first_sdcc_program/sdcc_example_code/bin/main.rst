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
                                     13 	.globl _init_timer_registers
                                     14 	.globl __sdcc_external_startup
                                     15 	.globl _free
                                     16 	.globl _malloc
                                     17 	.globl _printf_tiny
                                     18 	.globl _putchar
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _F1
                                     26 	.globl _P
                                     27 	.globl _PS
                                     28 	.globl _PT1
                                     29 	.globl _PX1
                                     30 	.globl _PT0
                                     31 	.globl _PX0
                                     32 	.globl _RD
                                     33 	.globl _WR
                                     34 	.globl _T1
                                     35 	.globl _T0
                                     36 	.globl _INT1
                                     37 	.globl _INT0
                                     38 	.globl _TXD
                                     39 	.globl _RXD
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _EA
                                     49 	.globl _ES
                                     50 	.globl _ET1
                                     51 	.globl _EX1
                                     52 	.globl _ET0
                                     53 	.globl _EX0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _SM0
                                     63 	.globl _SM1
                                     64 	.globl _SM2
                                     65 	.globl _REN
                                     66 	.globl _TB8
                                     67 	.globl _RB8
                                     68 	.globl _TI
                                     69 	.globl _RI
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _TF1
                                     79 	.globl _TR1
                                     80 	.globl _TF0
                                     81 	.globl _TR0
                                     82 	.globl _IE1
                                     83 	.globl _IT1
                                     84 	.globl _IE0
                                     85 	.globl _IT0
                                     86 	.globl _P0_7
                                     87 	.globl _P0_6
                                     88 	.globl _P0_5
                                     89 	.globl _P0_4
                                     90 	.globl _P0_3
                                     91 	.globl _P0_2
                                     92 	.globl _P0_1
                                     93 	.globl _P0_0
                                     94 	.globl _P5_7
                                     95 	.globl _P5_6
                                     96 	.globl _P5_5
                                     97 	.globl _P5_4
                                     98 	.globl _P5_3
                                     99 	.globl _P5_2
                                    100 	.globl _P5_1
                                    101 	.globl _P5_0
                                    102 	.globl _P4_7
                                    103 	.globl _P4_6
                                    104 	.globl _P4_5
                                    105 	.globl _P4_4
                                    106 	.globl _P4_3
                                    107 	.globl _P4_2
                                    108 	.globl _P4_1
                                    109 	.globl _P4_0
                                    110 	.globl _PX0L
                                    111 	.globl _PT0L
                                    112 	.globl _PX1L
                                    113 	.globl _PT1L
                                    114 	.globl _PSL
                                    115 	.globl _PT2L
                                    116 	.globl _PPCL
                                    117 	.globl _EC
                                    118 	.globl _CCF0
                                    119 	.globl _CCF1
                                    120 	.globl _CCF2
                                    121 	.globl _CCF3
                                    122 	.globl _CCF4
                                    123 	.globl _CR
                                    124 	.globl _CF
                                    125 	.globl _TF2
                                    126 	.globl _EXF2
                                    127 	.globl _RCLK
                                    128 	.globl _TCLK
                                    129 	.globl _EXEN2
                                    130 	.globl _TR2
                                    131 	.globl _C_T2
                                    132 	.globl _CP_RL2
                                    133 	.globl _T2CON_7
                                    134 	.globl _T2CON_6
                                    135 	.globl _T2CON_5
                                    136 	.globl _T2CON_4
                                    137 	.globl _T2CON_3
                                    138 	.globl _T2CON_2
                                    139 	.globl _T2CON_1
                                    140 	.globl _T2CON_0
                                    141 	.globl _PT2
                                    142 	.globl _ET2
                                    143 	.globl _B
                                    144 	.globl _ACC
                                    145 	.globl _PSW
                                    146 	.globl _IP
                                    147 	.globl _P3
                                    148 	.globl _IE
                                    149 	.globl _P2
                                    150 	.globl _SBUF
                                    151 	.globl _SCON
                                    152 	.globl _P1
                                    153 	.globl _TH1
                                    154 	.globl _TH0
                                    155 	.globl _TL1
                                    156 	.globl _TL0
                                    157 	.globl _TMOD
                                    158 	.globl _TCON
                                    159 	.globl _PCON
                                    160 	.globl _DPH
                                    161 	.globl _DPL
                                    162 	.globl _SP
                                    163 	.globl _P0
                                    164 	.globl _EECON
                                    165 	.globl _KBF
                                    166 	.globl _KBE
                                    167 	.globl _KBLS
                                    168 	.globl _BRL
                                    169 	.globl _BDRCON
                                    170 	.globl _T2MOD
                                    171 	.globl _SPDAT
                                    172 	.globl _SPSTA
                                    173 	.globl _SPCON
                                    174 	.globl _SADEN
                                    175 	.globl _SADDR
                                    176 	.globl _WDTPRG
                                    177 	.globl _WDTRST
                                    178 	.globl _P5
                                    179 	.globl _P4
                                    180 	.globl _IPH1
                                    181 	.globl _IPL1
                                    182 	.globl _IPH0
                                    183 	.globl _IPL0
                                    184 	.globl _IEN1
                                    185 	.globl _IEN0
                                    186 	.globl _CMOD
                                    187 	.globl _CL
                                    188 	.globl _CH
                                    189 	.globl _CCON
                                    190 	.globl _CCAPM4
                                    191 	.globl _CCAPM3
                                    192 	.globl _CCAPM2
                                    193 	.globl _CCAPM1
                                    194 	.globl _CCAPM0
                                    195 	.globl _CCAP4L
                                    196 	.globl _CCAP3L
                                    197 	.globl _CCAP2L
                                    198 	.globl _CCAP1L
                                    199 	.globl _CCAP0L
                                    200 	.globl _CCAP4H
                                    201 	.globl _CCAP3H
                                    202 	.globl _CCAP2H
                                    203 	.globl _CCAP1H
                                    204 	.globl _CCAP0H
                                    205 	.globl _CKCON1
                                    206 	.globl _CKCON0
                                    207 	.globl _CKRL
                                    208 	.globl _AUXR1
                                    209 	.globl _AUXR
                                    210 	.globl _TH2
                                    211 	.globl _TL2
                                    212 	.globl _RCAP2H
                                    213 	.globl _RCAP2L
                                    214 	.globl _T2CON
                                    215 	.globl _reload_counter
                                    216 	.globl _current_overflow_count
                                    217 ;--------------------------------------------------------
                                    218 ; special function registers
                                    219 ;--------------------------------------------------------
                                    220 	.area RSEG    (ABS,DATA)
      000000                        221 	.org 0x0000
                           0000C8   222 _T2CON	=	0x00c8
                           0000CA   223 _RCAP2L	=	0x00ca
                           0000CB   224 _RCAP2H	=	0x00cb
                           0000CC   225 _TL2	=	0x00cc
                           0000CD   226 _TH2	=	0x00cd
                           00008E   227 _AUXR	=	0x008e
                           0000A2   228 _AUXR1	=	0x00a2
                           000097   229 _CKRL	=	0x0097
                           00008F   230 _CKCON0	=	0x008f
                           0000AF   231 _CKCON1	=	0x00af
                           0000FA   232 _CCAP0H	=	0x00fa
                           0000FB   233 _CCAP1H	=	0x00fb
                           0000FC   234 _CCAP2H	=	0x00fc
                           0000FD   235 _CCAP3H	=	0x00fd
                           0000FE   236 _CCAP4H	=	0x00fe
                           0000EA   237 _CCAP0L	=	0x00ea
                           0000EB   238 _CCAP1L	=	0x00eb
                           0000EC   239 _CCAP2L	=	0x00ec
                           0000ED   240 _CCAP3L	=	0x00ed
                           0000EE   241 _CCAP4L	=	0x00ee
                           0000DA   242 _CCAPM0	=	0x00da
                           0000DB   243 _CCAPM1	=	0x00db
                           0000DC   244 _CCAPM2	=	0x00dc
                           0000DD   245 _CCAPM3	=	0x00dd
                           0000DE   246 _CCAPM4	=	0x00de
                           0000D8   247 _CCON	=	0x00d8
                           0000F9   248 _CH	=	0x00f9
                           0000E9   249 _CL	=	0x00e9
                           0000D9   250 _CMOD	=	0x00d9
                           0000A8   251 _IEN0	=	0x00a8
                           0000B1   252 _IEN1	=	0x00b1
                           0000B8   253 _IPL0	=	0x00b8
                           0000B7   254 _IPH0	=	0x00b7
                           0000B2   255 _IPL1	=	0x00b2
                           0000B3   256 _IPH1	=	0x00b3
                           0000C0   257 _P4	=	0x00c0
                           0000E8   258 _P5	=	0x00e8
                           0000A6   259 _WDTRST	=	0x00a6
                           0000A7   260 _WDTPRG	=	0x00a7
                           0000A9   261 _SADDR	=	0x00a9
                           0000B9   262 _SADEN	=	0x00b9
                           0000C3   263 _SPCON	=	0x00c3
                           0000C4   264 _SPSTA	=	0x00c4
                           0000C5   265 _SPDAT	=	0x00c5
                           0000C9   266 _T2MOD	=	0x00c9
                           00009B   267 _BDRCON	=	0x009b
                           00009A   268 _BRL	=	0x009a
                           00009C   269 _KBLS	=	0x009c
                           00009D   270 _KBE	=	0x009d
                           00009E   271 _KBF	=	0x009e
                           0000D2   272 _EECON	=	0x00d2
                           000080   273 _P0	=	0x0080
                           000081   274 _SP	=	0x0081
                           000082   275 _DPL	=	0x0082
                           000083   276 _DPH	=	0x0083
                           000087   277 _PCON	=	0x0087
                           000088   278 _TCON	=	0x0088
                           000089   279 _TMOD	=	0x0089
                           00008A   280 _TL0	=	0x008a
                           00008B   281 _TL1	=	0x008b
                           00008C   282 _TH0	=	0x008c
                           00008D   283 _TH1	=	0x008d
                           000090   284 _P1	=	0x0090
                           000098   285 _SCON	=	0x0098
                           000099   286 _SBUF	=	0x0099
                           0000A0   287 _P2	=	0x00a0
                           0000A8   288 _IE	=	0x00a8
                           0000B0   289 _P3	=	0x00b0
                           0000B8   290 _IP	=	0x00b8
                           0000D0   291 _PSW	=	0x00d0
                           0000E0   292 _ACC	=	0x00e0
                           0000F0   293 _B	=	0x00f0
                                    294 ;--------------------------------------------------------
                                    295 ; special function bits
                                    296 ;--------------------------------------------------------
                                    297 	.area RSEG    (ABS,DATA)
      000000                        298 	.org 0x0000
                           0000AD   299 _ET2	=	0x00ad
                           0000BD   300 _PT2	=	0x00bd
                           0000C8   301 _T2CON_0	=	0x00c8
                           0000C9   302 _T2CON_1	=	0x00c9
                           0000CA   303 _T2CON_2	=	0x00ca
                           0000CB   304 _T2CON_3	=	0x00cb
                           0000CC   305 _T2CON_4	=	0x00cc
                           0000CD   306 _T2CON_5	=	0x00cd
                           0000CE   307 _T2CON_6	=	0x00ce
                           0000CF   308 _T2CON_7	=	0x00cf
                           0000C8   309 _CP_RL2	=	0x00c8
                           0000C9   310 _C_T2	=	0x00c9
                           0000CA   311 _TR2	=	0x00ca
                           0000CB   312 _EXEN2	=	0x00cb
                           0000CC   313 _TCLK	=	0x00cc
                           0000CD   314 _RCLK	=	0x00cd
                           0000CE   315 _EXF2	=	0x00ce
                           0000CF   316 _TF2	=	0x00cf
                           0000DF   317 _CF	=	0x00df
                           0000DE   318 _CR	=	0x00de
                           0000DC   319 _CCF4	=	0x00dc
                           0000DB   320 _CCF3	=	0x00db
                           0000DA   321 _CCF2	=	0x00da
                           0000D9   322 _CCF1	=	0x00d9
                           0000D8   323 _CCF0	=	0x00d8
                           0000AE   324 _EC	=	0x00ae
                           0000BE   325 _PPCL	=	0x00be
                           0000BD   326 _PT2L	=	0x00bd
                           0000BC   327 _PSL	=	0x00bc
                           0000BB   328 _PT1L	=	0x00bb
                           0000BA   329 _PX1L	=	0x00ba
                           0000B9   330 _PT0L	=	0x00b9
                           0000B8   331 _PX0L	=	0x00b8
                           0000C0   332 _P4_0	=	0x00c0
                           0000C1   333 _P4_1	=	0x00c1
                           0000C2   334 _P4_2	=	0x00c2
                           0000C3   335 _P4_3	=	0x00c3
                           0000C4   336 _P4_4	=	0x00c4
                           0000C5   337 _P4_5	=	0x00c5
                           0000C6   338 _P4_6	=	0x00c6
                           0000C7   339 _P4_7	=	0x00c7
                           0000E8   340 _P5_0	=	0x00e8
                           0000E9   341 _P5_1	=	0x00e9
                           0000EA   342 _P5_2	=	0x00ea
                           0000EB   343 _P5_3	=	0x00eb
                           0000EC   344 _P5_4	=	0x00ec
                           0000ED   345 _P5_5	=	0x00ed
                           0000EE   346 _P5_6	=	0x00ee
                           0000EF   347 _P5_7	=	0x00ef
                           000080   348 _P0_0	=	0x0080
                           000081   349 _P0_1	=	0x0081
                           000082   350 _P0_2	=	0x0082
                           000083   351 _P0_3	=	0x0083
                           000084   352 _P0_4	=	0x0084
                           000085   353 _P0_5	=	0x0085
                           000086   354 _P0_6	=	0x0086
                           000087   355 _P0_7	=	0x0087
                           000088   356 _IT0	=	0x0088
                           000089   357 _IE0	=	0x0089
                           00008A   358 _IT1	=	0x008a
                           00008B   359 _IE1	=	0x008b
                           00008C   360 _TR0	=	0x008c
                           00008D   361 _TF0	=	0x008d
                           00008E   362 _TR1	=	0x008e
                           00008F   363 _TF1	=	0x008f
                           000090   364 _P1_0	=	0x0090
                           000091   365 _P1_1	=	0x0091
                           000092   366 _P1_2	=	0x0092
                           000093   367 _P1_3	=	0x0093
                           000094   368 _P1_4	=	0x0094
                           000095   369 _P1_5	=	0x0095
                           000096   370 _P1_6	=	0x0096
                           000097   371 _P1_7	=	0x0097
                           000098   372 _RI	=	0x0098
                           000099   373 _TI	=	0x0099
                           00009A   374 _RB8	=	0x009a
                           00009B   375 _TB8	=	0x009b
                           00009C   376 _REN	=	0x009c
                           00009D   377 _SM2	=	0x009d
                           00009E   378 _SM1	=	0x009e
                           00009F   379 _SM0	=	0x009f
                           0000A0   380 _P2_0	=	0x00a0
                           0000A1   381 _P2_1	=	0x00a1
                           0000A2   382 _P2_2	=	0x00a2
                           0000A3   383 _P2_3	=	0x00a3
                           0000A4   384 _P2_4	=	0x00a4
                           0000A5   385 _P2_5	=	0x00a5
                           0000A6   386 _P2_6	=	0x00a6
                           0000A7   387 _P2_7	=	0x00a7
                           0000A8   388 _EX0	=	0x00a8
                           0000A9   389 _ET0	=	0x00a9
                           0000AA   390 _EX1	=	0x00aa
                           0000AB   391 _ET1	=	0x00ab
                           0000AC   392 _ES	=	0x00ac
                           0000AF   393 _EA	=	0x00af
                           0000B0   394 _P3_0	=	0x00b0
                           0000B1   395 _P3_1	=	0x00b1
                           0000B2   396 _P3_2	=	0x00b2
                           0000B3   397 _P3_3	=	0x00b3
                           0000B4   398 _P3_4	=	0x00b4
                           0000B5   399 _P3_5	=	0x00b5
                           0000B6   400 _P3_6	=	0x00b6
                           0000B7   401 _P3_7	=	0x00b7
                           0000B0   402 _RXD	=	0x00b0
                           0000B1   403 _TXD	=	0x00b1
                           0000B2   404 _INT0	=	0x00b2
                           0000B3   405 _INT1	=	0x00b3
                           0000B4   406 _T0	=	0x00b4
                           0000B5   407 _T1	=	0x00b5
                           0000B6   408 _WR	=	0x00b6
                           0000B7   409 _RD	=	0x00b7
                           0000B8   410 _PX0	=	0x00b8
                           0000B9   411 _PT0	=	0x00b9
                           0000BA   412 _PX1	=	0x00ba
                           0000BB   413 _PT1	=	0x00bb
                           0000BC   414 _PS	=	0x00bc
                           0000D0   415 _P	=	0x00d0
                           0000D1   416 _F1	=	0x00d1
                           0000D2   417 _OV	=	0x00d2
                           0000D3   418 _RS0	=	0x00d3
                           0000D4   419 _RS1	=	0x00d4
                           0000D5   420 _F0	=	0x00d5
                           0000D6   421 _AC	=	0x00d6
                           0000D7   422 _CY	=	0x00d7
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
                                    436 ; Stack segment in internal ram
                                    437 ;--------------------------------------------------------
                                    438 	.area	SSEG
      000021                        439 __start__stack:
      000021                        440 	.ds	1
                                    441 
                                    442 ;--------------------------------------------------------
                                    443 ; indirectly addressable internal ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area ISEG    (DATA)
                                    446 ;--------------------------------------------------------
                                    447 ; absolute internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area IABS    (ABS,DATA)
                                    450 	.area IABS    (ABS,DATA)
                                    451 ;--------------------------------------------------------
                                    452 ; bit data
                                    453 ;--------------------------------------------------------
                                    454 	.area BSEG    (BIT)
      000000                        455 _main_sloc0_1_0:
      000000                        456 	.ds 1
                                    457 ;--------------------------------------------------------
                                    458 ; paged external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area PSEG    (PAG,XDATA)
                                    461 ;--------------------------------------------------------
                                    462 ; external ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XSEG    (XDATA)
      000001                        465 _current_overflow_count::
      000001                        466 	.ds 2
      000003                        467 _reload_counter::
      000003                        468 	.ds 2
                                    469 ;--------------------------------------------------------
                                    470 ; absolute external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area XABS    (ABS,XDATA)
                                    473 ;--------------------------------------------------------
                                    474 ; external initialized ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XISEG   (XDATA)
                                    477 	.area HOME    (CODE)
                                    478 	.area GSINIT0 (CODE)
                                    479 	.area GSINIT1 (CODE)
                                    480 	.area GSINIT2 (CODE)
                                    481 	.area GSINIT3 (CODE)
                                    482 	.area GSINIT4 (CODE)
                                    483 	.area GSINIT5 (CODE)
                                    484 	.area GSINIT  (CODE)
                                    485 	.area GSFINAL (CODE)
                                    486 	.area CSEG    (CODE)
                                    487 ;--------------------------------------------------------
                                    488 ; interrupt vector
                                    489 ;--------------------------------------------------------
                                    490 	.area HOME    (CODE)
      002000                        491 __interrupt_vect:
      002000 02 20 11         [24]  492 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  493 	reti
      002004                        494 	.ds	7
      00200B 02 20 7F         [24]  495 	ljmp	_timer0_ISR
                                    496 ;--------------------------------------------------------
                                    497 ; global & static initialisations
                                    498 ;--------------------------------------------------------
                                    499 	.area HOME    (CODE)
                                    500 	.area GSINIT  (CODE)
                                    501 	.area GSFINAL (CODE)
                                    502 	.area GSINIT  (CODE)
                                    503 	.globl __sdcc_gsinit_startup
                                    504 	.globl __sdcc_program_startup
                                    505 	.globl __start__stack
                                    506 	.globl __mcs51_genXINIT
                                    507 	.globl __mcs51_genXRAMCLEAR
                                    508 	.globl __mcs51_genRAMCLEAR
                                    509 	.area GSFINAL (CODE)
      00206A 02 20 0E         [24]  510 	ljmp	__sdcc_program_startup
                                    511 ;--------------------------------------------------------
                                    512 ; Home
                                    513 ;--------------------------------------------------------
                                    514 	.area HOME    (CODE)
                                    515 	.area HOME    (CODE)
      00200E                        516 __sdcc_program_startup:
      00200E 02 20 B7         [24]  517 	ljmp	_main
                                    518 ;	return from main will return to caller
                                    519 ;--------------------------------------------------------
                                    520 ; code
                                    521 ;--------------------------------------------------------
                                    522 	.area CSEG    (CODE)
                                    523 ;------------------------------------------------------------
                                    524 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    525 ;------------------------------------------------------------
                                    526 ;	src/main.c:48: int _sdcc_external_startup()
                                    527 ;	-----------------------------------------
                                    528 ;	 function _sdcc_external_startup
                                    529 ;	-----------------------------------------
      00206D                        530 __sdcc_external_startup:
                           000007   531 	ar7 = 0x07
                           000006   532 	ar6 = 0x06
                           000005   533 	ar5 = 0x05
                           000004   534 	ar4 = 0x04
                           000003   535 	ar3 = 0x03
                           000002   536 	ar2 = 0x02
                           000001   537 	ar1 = 0x01
                           000000   538 	ar0 = 0x00
                                    539 ;	src/main.c:51: return 0;
      00206D 90 00 00         [24]  540 	mov	dptr,#0x0000
                                    541 ;	src/main.c:52: }
      002070 22               [24]  542 	ret
                                    543 ;------------------------------------------------------------
                                    544 ;Allocation info for local variables in function 'init_timer_registers'
                                    545 ;------------------------------------------------------------
                                    546 ;	src/main.c:64: void init_timer_registers()
                                    547 ;	-----------------------------------------
                                    548 ;	 function init_timer_registers
                                    549 ;	-----------------------------------------
      002071                        550 _init_timer_registers:
                                    551 ;	src/main.c:66: TMOD |= 1 << TMOD_MODE1_POS;
      002071 43 89 01         [24]  552 	orl	_TMOD,#0x01
                                    553 ;	src/main.c:68: TH0 = 0x4C;
      002074 75 8C 4C         [24]  554 	mov	_TH0,#0x4c
                                    555 ;	src/main.c:69: TL0 = 0x0D;
      002077 75 8A 0D         [24]  556 	mov	_TL0,#0x0d
                                    557 ;	src/main.c:70: ET0 = 1; // enable timer0 interrupt
                                    558 ;	assignBit
      00207A D2 A9            [12]  559 	setb	_ET0
                                    560 ;	src/main.c:71: EA = 1;  // enable global interrupt
                                    561 ;	assignBit
      00207C D2 AF            [12]  562 	setb	_EA
                                    563 ;	src/main.c:72: }
      00207E 22               [24]  564 	ret
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'timer0_ISR'
                                    567 ;------------------------------------------------------------
                                    568 ;	src/main.c:78: void timer0_ISR(void) __interrupt(TF0_VECTOR)
                                    569 ;	-----------------------------------------
                                    570 ;	 function timer0_ISR
                                    571 ;	-----------------------------------------
      00207F                        572 _timer0_ISR:
      00207F C0 E0            [24]  573 	push	acc
      002081 C0 82            [24]  574 	push	dpl
      002083 C0 83            [24]  575 	push	dph
      002085 C0 07            [24]  576 	push	ar7
      002087 C0 06            [24]  577 	push	ar6
      002089 C0 D0            [24]  578 	push	psw
      00208B 75 D0 00         [24]  579 	mov	psw,#0x00
                                    580 ;	src/main.c:80: current_overflow_count++; // increment the overflow count
      00208E 90 00 01         [24]  581 	mov	dptr,#_current_overflow_count
      002091 E0               [24]  582 	movx	a,@dptr
      002092 FE               [12]  583 	mov	r6,a
      002093 A3               [24]  584 	inc	dptr
      002094 E0               [24]  585 	movx	a,@dptr
      002095 FF               [12]  586 	mov	r7,a
      002096 90 00 01         [24]  587 	mov	dptr,#_current_overflow_count
      002099 74 01            [12]  588 	mov	a,#0x01
      00209B 2E               [12]  589 	add	a,r6
      00209C F0               [24]  590 	movx	@dptr,a
      00209D E4               [12]  591 	clr	a
      00209E 3F               [12]  592 	addc	a,r7
      00209F A3               [24]  593 	inc	dptr
      0020A0 F0               [24]  594 	movx	@dptr,a
                                    595 ;	src/main.c:81: reload_counter = true;    // since interrupt has elapsed we need to reload our couner
      0020A1 90 00 03         [24]  596 	mov	dptr,#_reload_counter
      0020A4 74 01            [12]  597 	mov	a,#0x01
      0020A6 F0               [24]  598 	movx	@dptr,a
      0020A7 E4               [12]  599 	clr	a
      0020A8 A3               [24]  600 	inc	dptr
      0020A9 F0               [24]  601 	movx	@dptr,a
                                    602 ;	src/main.c:82: }
      0020AA D0 D0            [24]  603 	pop	psw
      0020AC D0 06            [24]  604 	pop	ar6
      0020AE D0 07            [24]  605 	pop	ar7
      0020B0 D0 83            [24]  606 	pop	dph
      0020B2 D0 82            [24]  607 	pop	dpl
      0020B4 D0 E0            [24]  608 	pop	acc
      0020B6 32               [24]  609 	reti
                                    610 ;	eliminated unneeded push/pop b
                                    611 ;------------------------------------------------------------
                                    612 ;Allocation info for local variables in function 'main'
                                    613 ;------------------------------------------------------------
                                    614 ;char_buff                 Allocated with name '_main_char_buff_65537_49'
                                    615 ;i                         Allocated with name '_main_i_131073_51'
                                    616 ;i                         Allocated with name '_main_i_131073_53'
                                    617 ;------------------------------------------------------------
                                    618 ;	src/main.c:84: void main()
                                    619 ;	-----------------------------------------
                                    620 ;	 function main
                                    621 ;	-----------------------------------------
      0020B7                        622 _main:
                                    623 ;	src/main.c:86: printf_tiny("Performing a simple test for malloc \n \r");
      0020B7 74 BB            [12]  624 	mov	a,#___str_0
      0020B9 C0 E0            [24]  625 	push	acc
      0020BB 74 26            [12]  626 	mov	a,#(___str_0 >> 8)
      0020BD C0 E0            [24]  627 	push	acc
      0020BF 12 23 F1         [24]  628 	lcall	_printf_tiny
      0020C2 15 81            [12]  629 	dec	sp
      0020C4 15 81            [12]  630 	dec	sp
                                    631 ;	src/main.c:89: current_overflow_count = 0;
      0020C6 90 00 01         [24]  632 	mov	dptr,#_current_overflow_count
      0020C9 E4               [12]  633 	clr	a
      0020CA F0               [24]  634 	movx	@dptr,a
      0020CB A3               [24]  635 	inc	dptr
      0020CC F0               [24]  636 	movx	@dptr,a
                                    637 ;	src/main.c:90: reload_counter = false;
      0020CD 90 00 03         [24]  638 	mov	dptr,#_reload_counter
      0020D0 F0               [24]  639 	movx	@dptr,a
      0020D1 A3               [24]  640 	inc	dptr
      0020D2 F0               [24]  641 	movx	@dptr,a
                                    642 ;	src/main.c:94: char_buff = (char *)malloc(COUNT_ELEMENTS_MALLOC * sizeof(char));
      0020D3 90 00 0A         [24]  643 	mov	dptr,#0x000a
      0020D6 12 25 36         [24]  644 	lcall	_malloc
      0020D9 AE 82            [24]  645 	mov	r6,dpl
      0020DB AD 83            [24]  646 	mov	r5,dph
      0020DD 7F 00            [12]  647 	mov	r7,#0x00
                                    648 ;	src/main.c:99: if (char_buff == NULL)
      0020DF EE               [12]  649 	mov	a,r6
      0020E0 4D               [12]  650 	orl	a,r5
      0020E1 70 12            [24]  651 	jnz	00125$
                                    652 ;	src/main.c:103: printf_tiny("\033[31mMalloc operation failed! :( jumping to TIMER_ISR_TEST  \n\r\033[0m");
      0020E3 74 E3            [12]  653 	mov	a,#___str_1
      0020E5 C0 E0            [24]  654 	push	acc
      0020E7 74 26            [12]  655 	mov	a,#(___str_1 >> 8)
      0020E9 C0 E0            [24]  656 	push	acc
      0020EB 12 23 F1         [24]  657 	lcall	_printf_tiny
      0020EE 15 81            [12]  658 	dec	sp
      0020F0 15 81            [12]  659 	dec	sp
                                    660 ;	src/main.c:105: goto TIMER_ISR_TEST;
      0020F2 02 22 03         [24]  661 	ljmp	00107$
                                    662 ;	src/main.c:108: for (int i = 0; i < COUNT_ELEMENTS_MALLOC; i++)
      0020F5                        663 00125$:
      0020F5 7B 00            [12]  664 	mov	r3,#0x00
      0020F7 7C 00            [12]  665 	mov	r4,#0x00
      0020F9                        666 00116$:
      0020F9 C3               [12]  667 	clr	c
      0020FA EB               [12]  668 	mov	a,r3
      0020FB 94 0A            [12]  669 	subb	a,#0x0a
      0020FD EC               [12]  670 	mov	a,r4
      0020FE 64 80            [12]  671 	xrl	a,#0x80
      002100 94 80            [12]  672 	subb	a,#0x80
      002102 50 29            [24]  673 	jnc	00103$
                                    674 ;	src/main.c:110: char_buff[i] = 'a' + i;
      002104 EB               [12]  675 	mov	a,r3
      002105 2E               [12]  676 	add	a,r6
      002106 F8               [12]  677 	mov	r0,a
      002107 EC               [12]  678 	mov	a,r4
      002108 3D               [12]  679 	addc	a,r5
      002109 F9               [12]  680 	mov	r1,a
      00210A 8F 02            [24]  681 	mov	ar2,r7
      00210C C0 06            [24]  682 	push	ar6
      00210E C0 05            [24]  683 	push	ar5
      002110 C0 07            [24]  684 	push	ar7
      002112 8B 07            [24]  685 	mov	ar7,r3
      002114 74 61            [12]  686 	mov	a,#0x61
      002116 2F               [12]  687 	add	a,r7
      002117 88 82            [24]  688 	mov	dpl,r0
      002119 89 83            [24]  689 	mov	dph,r1
      00211B 8A F0            [24]  690 	mov	b,r2
      00211D 12 23 D6         [24]  691 	lcall	__gptrput
                                    692 ;	src/main.c:108: for (int i = 0; i < COUNT_ELEMENTS_MALLOC; i++)
      002120 0B               [12]  693 	inc	r3
      002121 BB 00 01         [24]  694 	cjne	r3,#0x00,00163$
      002124 0C               [12]  695 	inc	r4
      002125                        696 00163$:
      002125 D0 07            [24]  697 	pop	ar7
      002127 D0 05            [24]  698 	pop	ar5
      002129 D0 06            [24]  699 	pop	ar6
      00212B 80 CC            [24]  700 	sjmp	00116$
      00212D                        701 00103$:
                                    702 ;	src/main.c:113: for (int i = 0; i < COUNT_ELEMENTS_MALLOC; i++)
      00212D 7B 00            [12]  703 	mov	r3,#0x00
      00212F 7C 00            [12]  704 	mov	r4,#0x00
      002131                        705 00119$:
      002131 C3               [12]  706 	clr	c
      002132 EB               [12]  707 	mov	a,r3
      002133 94 0A            [12]  708 	subb	a,#0x0a
      002135 EC               [12]  709 	mov	a,r4
      002136 64 80            [12]  710 	xrl	a,#0x80
      002138 94 80            [12]  711 	subb	a,#0x80
      00213A 40 03            [24]  712 	jc	00164$
      00213C 02 21 D0         [24]  713 	ljmp	00106$
      00213F                        714 00164$:
                                    715 ;	src/main.c:115: if (char_buff[i] != ('a' + i))
      00213F EB               [12]  716 	mov	a,r3
      002140 2E               [12]  717 	add	a,r6
      002141 F8               [12]  718 	mov	r0,a
      002142 EC               [12]  719 	mov	a,r4
      002143 3D               [12]  720 	addc	a,r5
      002144 F9               [12]  721 	mov	r1,a
      002145 8F 02            [24]  722 	mov	ar2,r7
      002147 88 82            [24]  723 	mov	dpl,r0
      002149 89 83            [24]  724 	mov	dph,r1
      00214B 8A F0            [24]  725 	mov	b,r2
      00214D 12 26 9F         [24]  726 	lcall	__gptrget
      002150 F8               [12]  727 	mov	r0,a
      002151 74 61            [12]  728 	mov	a,#0x61
      002153 2B               [12]  729 	add	a,r3
      002154 F9               [12]  730 	mov	r1,a
      002155 E4               [12]  731 	clr	a
      002156 3C               [12]  732 	addc	a,r4
      002157 FA               [12]  733 	mov	r2,a
      002158 C0 06            [24]  734 	push	ar6
      00215A C0 05            [24]  735 	push	ar5
      00215C C0 07            [24]  736 	push	ar7
      00215E 7F 00            [12]  737 	mov	r7,#0x00
      002160 E8               [12]  738 	mov	a,r0
      002161 B5 01 0C         [24]  739 	cjne	a,ar1,00165$
      002164 EF               [12]  740 	mov	a,r7
      002165 B5 02 08         [24]  741 	cjne	a,ar2,00165$
      002168 D0 07            [24]  742 	pop	ar7
      00216A D0 05            [24]  743 	pop	ar5
      00216C D0 06            [24]  744 	pop	ar6
      00216E 80 29            [24]  745 	sjmp	00105$
      002170                        746 00165$:
      002170 D0 07            [24]  747 	pop	ar7
      002172 D0 05            [24]  748 	pop	ar5
      002174 D0 06            [24]  749 	pop	ar6
                                    750 ;	src/main.c:117: printf_tiny("\033[31mExpectedValue mismatch! \n\r\033[0m");
      002176 C0 07            [24]  751 	push	ar7
      002178 C0 06            [24]  752 	push	ar6
      00217A C0 05            [24]  753 	push	ar5
      00217C C0 04            [24]  754 	push	ar4
      00217E C0 03            [24]  755 	push	ar3
      002180 74 26            [12]  756 	mov	a,#___str_2
      002182 C0 E0            [24]  757 	push	acc
      002184 74 27            [12]  758 	mov	a,#(___str_2 >> 8)
      002186 C0 E0            [24]  759 	push	acc
      002188 12 23 F1         [24]  760 	lcall	_printf_tiny
      00218B 15 81            [12]  761 	dec	sp
      00218D 15 81            [12]  762 	dec	sp
      00218F D0 03            [24]  763 	pop	ar3
      002191 D0 04            [24]  764 	pop	ar4
      002193 D0 05            [24]  765 	pop	ar5
      002195 D0 06            [24]  766 	pop	ar6
      002197 D0 07            [24]  767 	pop	ar7
      002199                        768 00105$:
                                    769 ;	src/main.c:119: putchar(char_buff[i]);
      002199 EB               [12]  770 	mov	a,r3
      00219A 2E               [12]  771 	add	a,r6
      00219B F8               [12]  772 	mov	r0,a
      00219C EC               [12]  773 	mov	a,r4
      00219D 3D               [12]  774 	addc	a,r5
      00219E F9               [12]  775 	mov	r1,a
      00219F 8F 02            [24]  776 	mov	ar2,r7
      0021A1 88 82            [24]  777 	mov	dpl,r0
      0021A3 89 83            [24]  778 	mov	dph,r1
      0021A5 8A F0            [24]  779 	mov	b,r2
      0021A7 12 26 9F         [24]  780 	lcall	__gptrget
      0021AA F8               [12]  781 	mov	r0,a
      0021AB 7A 00            [12]  782 	mov	r2,#0x00
      0021AD 88 82            [24]  783 	mov	dpl,r0
      0021AF 8A 83            [24]  784 	mov	dph,r2
      0021B1 C0 07            [24]  785 	push	ar7
      0021B3 C0 06            [24]  786 	push	ar6
      0021B5 C0 05            [24]  787 	push	ar5
      0021B7 C0 04            [24]  788 	push	ar4
      0021B9 C0 03            [24]  789 	push	ar3
      0021BB 12 22 52         [24]  790 	lcall	_putchar
      0021BE D0 03            [24]  791 	pop	ar3
      0021C0 D0 04            [24]  792 	pop	ar4
      0021C2 D0 05            [24]  793 	pop	ar5
      0021C4 D0 06            [24]  794 	pop	ar6
      0021C6 D0 07            [24]  795 	pop	ar7
                                    796 ;	src/main.c:113: for (int i = 0; i < COUNT_ELEMENTS_MALLOC; i++)
      0021C8 0B               [12]  797 	inc	r3
      0021C9 BB 00 01         [24]  798 	cjne	r3,#0x00,00166$
      0021CC 0C               [12]  799 	inc	r4
      0021CD                        800 00166$:
      0021CD 02 21 31         [24]  801 	ljmp	00119$
      0021D0                        802 00106$:
                                    803 ;	src/main.c:121: printf_tiny("\n\r");
      0021D0 C0 07            [24]  804 	push	ar7
      0021D2 C0 06            [24]  805 	push	ar6
      0021D4 C0 05            [24]  806 	push	ar5
      0021D6 74 4A            [12]  807 	mov	a,#___str_3
      0021D8 C0 E0            [24]  808 	push	acc
      0021DA 74 27            [12]  809 	mov	a,#(___str_3 >> 8)
      0021DC C0 E0            [24]  810 	push	acc
      0021DE 12 23 F1         [24]  811 	lcall	_printf_tiny
      0021E1 15 81            [12]  812 	dec	sp
      0021E3 15 81            [12]  813 	dec	sp
                                    814 ;	src/main.c:122: printf_tiny("\033[32mMalloc Test operation was successful \n\r\033[0m");
      0021E5 74 4D            [12]  815 	mov	a,#___str_4
      0021E7 C0 E0            [24]  816 	push	acc
      0021E9 74 27            [12]  817 	mov	a,#(___str_4 >> 8)
      0021EB C0 E0            [24]  818 	push	acc
      0021ED 12 23 F1         [24]  819 	lcall	_printf_tiny
      0021F0 15 81            [12]  820 	dec	sp
      0021F2 15 81            [12]  821 	dec	sp
      0021F4 D0 05            [24]  822 	pop	ar5
      0021F6 D0 06            [24]  823 	pop	ar6
      0021F8 D0 07            [24]  824 	pop	ar7
                                    825 ;	src/main.c:124: free(char_buff);
      0021FA 8E 82            [24]  826 	mov	dpl,r6
      0021FC 8D 83            [24]  827 	mov	dph,r5
      0021FE 8F F0            [24]  828 	mov	b,r7
      002200 12 22 7F         [24]  829 	lcall	_free
                                    830 ;	src/main.c:126: TIMER_ISR_TEST:
      002203                        831 00107$:
                                    832 ;	src/main.c:127: init_timer_registers();
      002203 12 20 71         [24]  833 	lcall	_init_timer_registers
                                    834 ;	src/main.c:128: TR0 = 1; // Start Timer0
                                    835 ;	assignBit
      002206 D2 8C            [12]  836 	setb	_TR0
                                    837 ;	src/main.c:129: while (1)
      002208                        838 00113$:
                                    839 ;	src/main.c:132: if (reload_counter == true)
      002208 90 00 03         [24]  840 	mov	dptr,#_reload_counter
      00220B E0               [24]  841 	movx	a,@dptr
      00220C FE               [12]  842 	mov	r6,a
      00220D A3               [24]  843 	inc	dptr
      00220E E0               [24]  844 	movx	a,@dptr
      00220F FF               [12]  845 	mov	r7,a
      002210 BE 01 1B         [24]  846 	cjne	r6,#0x01,00109$
      002213 BF 00 18         [24]  847 	cjne	r7,#0x00,00109$
                                    848 ;	src/main.c:138: }
      002216 D2 00            [12]  849 	setb	_main_sloc0_1_0
      002218 10 AF 02         [24]  850 	jbc	ea,00169$
      00221B C2 00            [12]  851 	clr	_main_sloc0_1_0
      00221D                        852 00169$:
                                    853 ;	src/main.c:135: TH0 = 0x4C;
      00221D 75 8C 4C         [24]  854 	mov	_TH0,#0x4c
                                    855 ;	src/main.c:136: TL0 = 0x0D;
      002220 75 8A 0D         [24]  856 	mov	_TL0,#0x0d
                                    857 ;	src/main.c:137: reload_counter = false;
      002223 90 00 03         [24]  858 	mov	dptr,#_reload_counter
      002226 E4               [12]  859 	clr	a
      002227 F0               [24]  860 	movx	@dptr,a
      002228 A3               [24]  861 	inc	dptr
      002229 F0               [24]  862 	movx	@dptr,a
      00222A A2 00            [12]  863 	mov	c,_main_sloc0_1_0
      00222C 92 AF            [24]  864 	mov	ea,c
      00222E                        865 00109$:
                                    866 ;	src/main.c:140: if (current_overflow_count == REQ_OVERFLOWS)
      00222E 90 00 01         [24]  867 	mov	dptr,#_current_overflow_count
      002231 E0               [24]  868 	movx	a,@dptr
      002232 FE               [12]  869 	mov	r6,a
      002233 A3               [24]  870 	inc	dptr
      002234 E0               [24]  871 	movx	a,@dptr
      002235 FF               [12]  872 	mov	r7,a
      002236 BE 0A CF         [24]  873 	cjne	r6,#0x0a,00113$
      002239 BF 00 CC         [24]  874 	cjne	r7,#0x00,00113$
                                    875 ;	src/main.c:145: }
      00223C D2 00            [12]  876 	setb	_main_sloc0_1_0
      00223E 10 AF 02         [24]  877 	jbc	ea,00172$
      002241 C2 00            [12]  878 	clr	_main_sloc0_1_0
      002243                        879 00172$:
                                    880 ;	src/main.c:143: P1_1 = !P1_1;               // change this to your led pin
      002243 B2 91            [12]  881 	cpl	_P1_1
                                    882 ;	src/main.c:144: current_overflow_count = 0; // clear for next iteration
      002245 90 00 01         [24]  883 	mov	dptr,#_current_overflow_count
      002248 E4               [12]  884 	clr	a
      002249 F0               [24]  885 	movx	@dptr,a
      00224A A3               [24]  886 	inc	dptr
      00224B F0               [24]  887 	movx	@dptr,a
      00224C A2 00            [12]  888 	mov	c,_main_sloc0_1_0
      00224E 92 AF            [24]  889 	mov	ea,c
                                    890 ;	src/main.c:147: }
      002250 80 B6            [24]  891 	sjmp	00113$
                                    892 	.area CSEG    (CODE)
                                    893 	.area CONST   (CODE)
                                    894 	.area CONST   (CODE)
      0026BB                        895 ___str_0:
      0026BB 50 65 72 66 6F 72 6D   896 	.ascii "Performing a simple test for malloc "
             69 6E 67 20 61 20 73
             69 6D 70 6C 65 20 74
             65 73 74 20 66 6F 72
             20 6D 61 6C 6C 6F 63
             20
      0026DF 0A                     897 	.db 0x0a
      0026E0 20                     898 	.ascii " "
      0026E1 0D                     899 	.db 0x0d
      0026E2 00                     900 	.db 0x00
                                    901 	.area CSEG    (CODE)
                                    902 	.area CONST   (CODE)
      0026E3                        903 ___str_1:
      0026E3 1B                     904 	.db 0x1b
      0026E4 5B 33 31 6D 4D 61 6C   905 	.ascii "[31mMalloc operation failed! :( jumping to TIMER_ISR_TEST  "
             6C 6F 63 20 6F 70 65
             72 61 74 69 6F 6E 20
             66 61 69 6C 65 64 21
             20 3A 28 20 6A 75 6D
             70 69 6E 67 20 74 6F
             20 54 49 4D 45 52 5F
             49 53 52 5F 54 45 53
             54 20 20
      00271F 0A                     906 	.db 0x0a
      002720 0D                     907 	.db 0x0d
      002721 1B                     908 	.db 0x1b
      002722 5B 30 6D               909 	.ascii "[0m"
      002725 00                     910 	.db 0x00
                                    911 	.area CSEG    (CODE)
                                    912 	.area CONST   (CODE)
      002726                        913 ___str_2:
      002726 1B                     914 	.db 0x1b
      002727 5B 33 31 6D 45 78 70   915 	.ascii "[31mExpectedValue mismatch! "
             65 63 74 65 64 56 61
             6C 75 65 20 6D 69 73
             6D 61 74 63 68 21 20
      002743 0A                     916 	.db 0x0a
      002744 0D                     917 	.db 0x0d
      002745 1B                     918 	.db 0x1b
      002746 5B 30 6D               919 	.ascii "[0m"
      002749 00                     920 	.db 0x00
                                    921 	.area CSEG    (CODE)
                                    922 	.area CONST   (CODE)
      00274A                        923 ___str_3:
      00274A 0A                     924 	.db 0x0a
      00274B 0D                     925 	.db 0x0d
      00274C 00                     926 	.db 0x00
                                    927 	.area CSEG    (CODE)
                                    928 	.area CONST   (CODE)
      00274D                        929 ___str_4:
      00274D 1B                     930 	.db 0x1b
      00274E 5B 33 32 6D 4D 61 6C   931 	.ascii "[32mMalloc Test operation was successful "
             6C 6F 63 20 54 65 73
             74 20 6F 70 65 72 61
             74 69 6F 6E 20 77 61
             73 20 73 75 63 63 65
             73 73 66 75 6C 20
      002777 0A                     932 	.db 0x0a
      002778 0D                     933 	.db 0x0d
      002779 1B                     934 	.db 0x1b
      00277A 5B 30 6D               935 	.ascii "[0m"
      00277D 00                     936 	.db 0x00
                                    937 	.area CSEG    (CODE)
                                    938 	.area XINIT   (CODE)
                                    939 	.area CABS    (ABS,CODE)
