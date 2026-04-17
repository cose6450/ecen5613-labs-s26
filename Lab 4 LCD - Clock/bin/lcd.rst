                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _output_clock
                                     12 	.globl _increment_clock_values
                                     13 	.globl _init_timer
                                     14 	.globl _printf
                                     15 	.globl _P5_7
                                     16 	.globl _P5_6
                                     17 	.globl _P5_5
                                     18 	.globl _P5_4
                                     19 	.globl _P5_3
                                     20 	.globl _P5_2
                                     21 	.globl _P5_1
                                     22 	.globl _P5_0
                                     23 	.globl _P4_7
                                     24 	.globl _P4_6
                                     25 	.globl _P4_5
                                     26 	.globl _P4_4
                                     27 	.globl _P4_3
                                     28 	.globl _P4_2
                                     29 	.globl _P4_1
                                     30 	.globl _P4_0
                                     31 	.globl _PX0L
                                     32 	.globl _PT0L
                                     33 	.globl _PX1L
                                     34 	.globl _PT1L
                                     35 	.globl _PSL
                                     36 	.globl _PT2L
                                     37 	.globl _PPCL
                                     38 	.globl _EC
                                     39 	.globl _CCF0
                                     40 	.globl _CCF1
                                     41 	.globl _CCF2
                                     42 	.globl _CCF3
                                     43 	.globl _CCF4
                                     44 	.globl _CR
                                     45 	.globl _CF
                                     46 	.globl _TF2
                                     47 	.globl _EXF2
                                     48 	.globl _RCLK
                                     49 	.globl _TCLK
                                     50 	.globl _EXEN2
                                     51 	.globl _TR2
                                     52 	.globl _C_T2
                                     53 	.globl _CP_RL2
                                     54 	.globl _T2CON_7
                                     55 	.globl _T2CON_6
                                     56 	.globl _T2CON_5
                                     57 	.globl _T2CON_4
                                     58 	.globl _T2CON_3
                                     59 	.globl _T2CON_2
                                     60 	.globl _T2CON_1
                                     61 	.globl _T2CON_0
                                     62 	.globl _PT2
                                     63 	.globl _ET2
                                     64 	.globl _CY
                                     65 	.globl _AC
                                     66 	.globl _F0
                                     67 	.globl _RS1
                                     68 	.globl _RS0
                                     69 	.globl _OV
                                     70 	.globl _F1
                                     71 	.globl _P
                                     72 	.globl _PS
                                     73 	.globl _PT1
                                     74 	.globl _PX1
                                     75 	.globl _PT0
                                     76 	.globl _PX0
                                     77 	.globl _RD
                                     78 	.globl _WR
                                     79 	.globl _T1
                                     80 	.globl _T0
                                     81 	.globl _INT1
                                     82 	.globl _INT0
                                     83 	.globl _TXD
                                     84 	.globl _RXD
                                     85 	.globl _P3_7
                                     86 	.globl _P3_6
                                     87 	.globl _P3_5
                                     88 	.globl _P3_4
                                     89 	.globl _P3_3
                                     90 	.globl _P3_2
                                     91 	.globl _P3_1
                                     92 	.globl _P3_0
                                     93 	.globl _EA
                                     94 	.globl _ES
                                     95 	.globl _ET1
                                     96 	.globl _EX1
                                     97 	.globl _ET0
                                     98 	.globl _EX0
                                     99 	.globl _P2_7
                                    100 	.globl _P2_6
                                    101 	.globl _P2_5
                                    102 	.globl _P2_4
                                    103 	.globl _P2_3
                                    104 	.globl _P2_2
                                    105 	.globl _P2_1
                                    106 	.globl _P2_0
                                    107 	.globl _SM0
                                    108 	.globl _SM1
                                    109 	.globl _SM2
                                    110 	.globl _REN
                                    111 	.globl _TB8
                                    112 	.globl _RB8
                                    113 	.globl _TI
                                    114 	.globl _RI
                                    115 	.globl _P1_7
                                    116 	.globl _P1_6
                                    117 	.globl _P1_5
                                    118 	.globl _P1_4
                                    119 	.globl _P1_3
                                    120 	.globl _P1_2
                                    121 	.globl _P1_1
                                    122 	.globl _P1_0
                                    123 	.globl _TF1
                                    124 	.globl _TR1
                                    125 	.globl _TF0
                                    126 	.globl _TR0
                                    127 	.globl _IE1
                                    128 	.globl _IT1
                                    129 	.globl _IE0
                                    130 	.globl _IT0
                                    131 	.globl _P0_7
                                    132 	.globl _P0_6
                                    133 	.globl _P0_5
                                    134 	.globl _P0_4
                                    135 	.globl _P0_3
                                    136 	.globl _P0_2
                                    137 	.globl _P0_1
                                    138 	.globl _P0_0
                                    139 	.globl _EECON
                                    140 	.globl _KBF
                                    141 	.globl _KBE
                                    142 	.globl _KBLS
                                    143 	.globl _BRL
                                    144 	.globl _BDRCON
                                    145 	.globl _T2MOD
                                    146 	.globl _SPDAT
                                    147 	.globl _SPSTA
                                    148 	.globl _SPCON
                                    149 	.globl _SADEN
                                    150 	.globl _SADDR
                                    151 	.globl _WDTPRG
                                    152 	.globl _WDTRST
                                    153 	.globl _P5
                                    154 	.globl _P4
                                    155 	.globl _IPH1
                                    156 	.globl _IPL1
                                    157 	.globl _IPH0
                                    158 	.globl _IPL0
                                    159 	.globl _IEN1
                                    160 	.globl _IEN0
                                    161 	.globl _CMOD
                                    162 	.globl _CL
                                    163 	.globl _CH
                                    164 	.globl _CCON
                                    165 	.globl _CCAPM4
                                    166 	.globl _CCAPM3
                                    167 	.globl _CCAPM2
                                    168 	.globl _CCAPM1
                                    169 	.globl _CCAPM0
                                    170 	.globl _CCAP4L
                                    171 	.globl _CCAP3L
                                    172 	.globl _CCAP2L
                                    173 	.globl _CCAP1L
                                    174 	.globl _CCAP0L
                                    175 	.globl _CCAP4H
                                    176 	.globl _CCAP3H
                                    177 	.globl _CCAP2H
                                    178 	.globl _CCAP1H
                                    179 	.globl _CCAP0H
                                    180 	.globl _CKCON1
                                    181 	.globl _CKCON0
                                    182 	.globl _CKRL
                                    183 	.globl _AUXR1
                                    184 	.globl _AUXR
                                    185 	.globl _TH2
                                    186 	.globl _TL2
                                    187 	.globl _RCAP2H
                                    188 	.globl _RCAP2L
                                    189 	.globl _T2CON
                                    190 	.globl _B
                                    191 	.globl _ACC
                                    192 	.globl _PSW
                                    193 	.globl _IP
                                    194 	.globl _P3
                                    195 	.globl _IE
                                    196 	.globl _P2
                                    197 	.globl _SBUF
                                    198 	.globl _SCON
                                    199 	.globl _P1
                                    200 	.globl _TH1
                                    201 	.globl _TH0
                                    202 	.globl _TL1
                                    203 	.globl _TL0
                                    204 	.globl _TMOD
                                    205 	.globl _TCON
                                    206 	.globl _PCON
                                    207 	.globl _DPH
                                    208 	.globl _DPL
                                    209 	.globl _SP
                                    210 	.globl _P0
                                    211 	.globl _lcdgotoxy_PARM_2
                                    212 	.globl _clock_paused
                                    213 	.globl _current_overflow_count
                                    214 	.globl _seconds_tenths
                                    215 	.globl _seconds_ones
                                    216 	.globl _seconds_tens
                                    217 	.globl _minutes_ones
                                    218 	.globl _minutes_tens
                                    219 	.globl _clock_fields
                                    220 	.globl _reload_counter
                                    221 	.globl _lcdbusywait
                                    222 	.globl _lcdinit
                                    223 	.globl _lcdgotoaddr
                                    224 	.globl _lcdgotoxy
                                    225 	.globl _lcdputch
                                    226 	.globl _lcdputstr
                                    227 	.globl _lcdclear
                                    228 	.globl _clock_init_and_start
                                    229 	.globl _increment_clock
                                    230 	.globl _reset_clock
                                    231 	.globl _pause_clock
                                    232 	.globl _unpause_clock
                                    233 ;--------------------------------------------------------
                                    234 ; special function registers
                                    235 ;--------------------------------------------------------
                                    236 	.area RSEG    (ABS,DATA)
      000000                        237 	.org 0x0000
                           000080   238 _P0	=	0x0080
                           000081   239 _SP	=	0x0081
                           000082   240 _DPL	=	0x0082
                           000083   241 _DPH	=	0x0083
                           000087   242 _PCON	=	0x0087
                           000088   243 _TCON	=	0x0088
                           000089   244 _TMOD	=	0x0089
                           00008A   245 _TL0	=	0x008a
                           00008B   246 _TL1	=	0x008b
                           00008C   247 _TH0	=	0x008c
                           00008D   248 _TH1	=	0x008d
                           000090   249 _P1	=	0x0090
                           000098   250 _SCON	=	0x0098
                           000099   251 _SBUF	=	0x0099
                           0000A0   252 _P2	=	0x00a0
                           0000A8   253 _IE	=	0x00a8
                           0000B0   254 _P3	=	0x00b0
                           0000B8   255 _IP	=	0x00b8
                           0000D0   256 _PSW	=	0x00d0
                           0000E0   257 _ACC	=	0x00e0
                           0000F0   258 _B	=	0x00f0
                           0000C8   259 _T2CON	=	0x00c8
                           0000CA   260 _RCAP2L	=	0x00ca
                           0000CB   261 _RCAP2H	=	0x00cb
                           0000CC   262 _TL2	=	0x00cc
                           0000CD   263 _TH2	=	0x00cd
                           00008E   264 _AUXR	=	0x008e
                           0000A2   265 _AUXR1	=	0x00a2
                           000097   266 _CKRL	=	0x0097
                           00008F   267 _CKCON0	=	0x008f
                           0000AF   268 _CKCON1	=	0x00af
                           0000FA   269 _CCAP0H	=	0x00fa
                           0000FB   270 _CCAP1H	=	0x00fb
                           0000FC   271 _CCAP2H	=	0x00fc
                           0000FD   272 _CCAP3H	=	0x00fd
                           0000FE   273 _CCAP4H	=	0x00fe
                           0000EA   274 _CCAP0L	=	0x00ea
                           0000EB   275 _CCAP1L	=	0x00eb
                           0000EC   276 _CCAP2L	=	0x00ec
                           0000ED   277 _CCAP3L	=	0x00ed
                           0000EE   278 _CCAP4L	=	0x00ee
                           0000DA   279 _CCAPM0	=	0x00da
                           0000DB   280 _CCAPM1	=	0x00db
                           0000DC   281 _CCAPM2	=	0x00dc
                           0000DD   282 _CCAPM3	=	0x00dd
                           0000DE   283 _CCAPM4	=	0x00de
                           0000D8   284 _CCON	=	0x00d8
                           0000F9   285 _CH	=	0x00f9
                           0000E9   286 _CL	=	0x00e9
                           0000D9   287 _CMOD	=	0x00d9
                           0000A8   288 _IEN0	=	0x00a8
                           0000B1   289 _IEN1	=	0x00b1
                           0000B8   290 _IPL0	=	0x00b8
                           0000B7   291 _IPH0	=	0x00b7
                           0000B2   292 _IPL1	=	0x00b2
                           0000B3   293 _IPH1	=	0x00b3
                           0000C0   294 _P4	=	0x00c0
                           0000E8   295 _P5	=	0x00e8
                           0000A6   296 _WDTRST	=	0x00a6
                           0000A7   297 _WDTPRG	=	0x00a7
                           0000A9   298 _SADDR	=	0x00a9
                           0000B9   299 _SADEN	=	0x00b9
                           0000C3   300 _SPCON	=	0x00c3
                           0000C4   301 _SPSTA	=	0x00c4
                           0000C5   302 _SPDAT	=	0x00c5
                           0000C9   303 _T2MOD	=	0x00c9
                           00009B   304 _BDRCON	=	0x009b
                           00009A   305 _BRL	=	0x009a
                           00009C   306 _KBLS	=	0x009c
                           00009D   307 _KBE	=	0x009d
                           00009E   308 _KBF	=	0x009e
                           0000D2   309 _EECON	=	0x00d2
                                    310 ;--------------------------------------------------------
                                    311 ; special function bits
                                    312 ;--------------------------------------------------------
                                    313 	.area RSEG    (ABS,DATA)
      000000                        314 	.org 0x0000
                           000080   315 _P0_0	=	0x0080
                           000081   316 _P0_1	=	0x0081
                           000082   317 _P0_2	=	0x0082
                           000083   318 _P0_3	=	0x0083
                           000084   319 _P0_4	=	0x0084
                           000085   320 _P0_5	=	0x0085
                           000086   321 _P0_6	=	0x0086
                           000087   322 _P0_7	=	0x0087
                           000088   323 _IT0	=	0x0088
                           000089   324 _IE0	=	0x0089
                           00008A   325 _IT1	=	0x008a
                           00008B   326 _IE1	=	0x008b
                           00008C   327 _TR0	=	0x008c
                           00008D   328 _TF0	=	0x008d
                           00008E   329 _TR1	=	0x008e
                           00008F   330 _TF1	=	0x008f
                           000090   331 _P1_0	=	0x0090
                           000091   332 _P1_1	=	0x0091
                           000092   333 _P1_2	=	0x0092
                           000093   334 _P1_3	=	0x0093
                           000094   335 _P1_4	=	0x0094
                           000095   336 _P1_5	=	0x0095
                           000096   337 _P1_6	=	0x0096
                           000097   338 _P1_7	=	0x0097
                           000098   339 _RI	=	0x0098
                           000099   340 _TI	=	0x0099
                           00009A   341 _RB8	=	0x009a
                           00009B   342 _TB8	=	0x009b
                           00009C   343 _REN	=	0x009c
                           00009D   344 _SM2	=	0x009d
                           00009E   345 _SM1	=	0x009e
                           00009F   346 _SM0	=	0x009f
                           0000A0   347 _P2_0	=	0x00a0
                           0000A1   348 _P2_1	=	0x00a1
                           0000A2   349 _P2_2	=	0x00a2
                           0000A3   350 _P2_3	=	0x00a3
                           0000A4   351 _P2_4	=	0x00a4
                           0000A5   352 _P2_5	=	0x00a5
                           0000A6   353 _P2_6	=	0x00a6
                           0000A7   354 _P2_7	=	0x00a7
                           0000A8   355 _EX0	=	0x00a8
                           0000A9   356 _ET0	=	0x00a9
                           0000AA   357 _EX1	=	0x00aa
                           0000AB   358 _ET1	=	0x00ab
                           0000AC   359 _ES	=	0x00ac
                           0000AF   360 _EA	=	0x00af
                           0000B0   361 _P3_0	=	0x00b0
                           0000B1   362 _P3_1	=	0x00b1
                           0000B2   363 _P3_2	=	0x00b2
                           0000B3   364 _P3_3	=	0x00b3
                           0000B4   365 _P3_4	=	0x00b4
                           0000B5   366 _P3_5	=	0x00b5
                           0000B6   367 _P3_6	=	0x00b6
                           0000B7   368 _P3_7	=	0x00b7
                           0000B0   369 _RXD	=	0x00b0
                           0000B1   370 _TXD	=	0x00b1
                           0000B2   371 _INT0	=	0x00b2
                           0000B3   372 _INT1	=	0x00b3
                           0000B4   373 _T0	=	0x00b4
                           0000B5   374 _T1	=	0x00b5
                           0000B6   375 _WR	=	0x00b6
                           0000B7   376 _RD	=	0x00b7
                           0000B8   377 _PX0	=	0x00b8
                           0000B9   378 _PT0	=	0x00b9
                           0000BA   379 _PX1	=	0x00ba
                           0000BB   380 _PT1	=	0x00bb
                           0000BC   381 _PS	=	0x00bc
                           0000D0   382 _P	=	0x00d0
                           0000D1   383 _F1	=	0x00d1
                           0000D2   384 _OV	=	0x00d2
                           0000D3   385 _RS0	=	0x00d3
                           0000D4   386 _RS1	=	0x00d4
                           0000D5   387 _F0	=	0x00d5
                           0000D6   388 _AC	=	0x00d6
                           0000D7   389 _CY	=	0x00d7
                           0000AD   390 _ET2	=	0x00ad
                           0000BD   391 _PT2	=	0x00bd
                           0000C8   392 _T2CON_0	=	0x00c8
                           0000C9   393 _T2CON_1	=	0x00c9
                           0000CA   394 _T2CON_2	=	0x00ca
                           0000CB   395 _T2CON_3	=	0x00cb
                           0000CC   396 _T2CON_4	=	0x00cc
                           0000CD   397 _T2CON_5	=	0x00cd
                           0000CE   398 _T2CON_6	=	0x00ce
                           0000CF   399 _T2CON_7	=	0x00cf
                           0000C8   400 _CP_RL2	=	0x00c8
                           0000C9   401 _C_T2	=	0x00c9
                           0000CA   402 _TR2	=	0x00ca
                           0000CB   403 _EXEN2	=	0x00cb
                           0000CC   404 _TCLK	=	0x00cc
                           0000CD   405 _RCLK	=	0x00cd
                           0000CE   406 _EXF2	=	0x00ce
                           0000CF   407 _TF2	=	0x00cf
                           0000DF   408 _CF	=	0x00df
                           0000DE   409 _CR	=	0x00de
                           0000DC   410 _CCF4	=	0x00dc
                           0000DB   411 _CCF3	=	0x00db
                           0000DA   412 _CCF2	=	0x00da
                           0000D9   413 _CCF1	=	0x00d9
                           0000D8   414 _CCF0	=	0x00d8
                           0000AE   415 _EC	=	0x00ae
                           0000BE   416 _PPCL	=	0x00be
                           0000BD   417 _PT2L	=	0x00bd
                           0000BC   418 _PSL	=	0x00bc
                           0000BB   419 _PT1L	=	0x00bb
                           0000BA   420 _PX1L	=	0x00ba
                           0000B9   421 _PT0L	=	0x00b9
                           0000B8   422 _PX0L	=	0x00b8
                           0000C0   423 _P4_0	=	0x00c0
                           0000C1   424 _P4_1	=	0x00c1
                           0000C2   425 _P4_2	=	0x00c2
                           0000C3   426 _P4_3	=	0x00c3
                           0000C4   427 _P4_4	=	0x00c4
                           0000C5   428 _P4_5	=	0x00c5
                           0000C6   429 _P4_6	=	0x00c6
                           0000C7   430 _P4_7	=	0x00c7
                           0000E8   431 _P5_0	=	0x00e8
                           0000E9   432 _P5_1	=	0x00e9
                           0000EA   433 _P5_2	=	0x00ea
                           0000EB   434 _P5_3	=	0x00eb
                           0000EC   435 _P5_4	=	0x00ec
                           0000ED   436 _P5_5	=	0x00ed
                           0000EE   437 _P5_6	=	0x00ee
                           0000EF   438 _P5_7	=	0x00ef
                                    439 ;--------------------------------------------------------
                                    440 ; overlayable register banks
                                    441 ;--------------------------------------------------------
                                    442 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        443 	.ds 8
                                    444 ;--------------------------------------------------------
                                    445 ; internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area DSEG    (DATA)
                                    448 ;--------------------------------------------------------
                                    449 ; overlayable items in internal ram
                                    450 ;--------------------------------------------------------
                                    451 ;--------------------------------------------------------
                                    452 ; indirectly addressable internal ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area ISEG    (DATA)
                                    455 ;--------------------------------------------------------
                                    456 ; absolute internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area IABS    (ABS,DATA)
                                    459 	.area IABS    (ABS,DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; bit data
                                    462 ;--------------------------------------------------------
                                    463 	.area BSEG    (BIT)
      000001                        464 _reset_clock_sloc0_1_0:
      000001                        465 	.ds 1
                                    466 ;--------------------------------------------------------
                                    467 ; paged external ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area PSEG    (PAG,XDATA)
                                    470 ;--------------------------------------------------------
                                    471 ; external ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area XSEG    (XDATA)
      002048                        474 _clock_fields::
      002048                        475 	.ds 8
      002050                        476 _minutes_tens::
      002050                        477 	.ds 1
      002051                        478 _minutes_ones::
      002051                        479 	.ds 1
      002052                        480 _seconds_tens::
      002052                        481 	.ds 1
      002053                        482 _seconds_ones::
      002053                        483 	.ds 1
      002054                        484 _seconds_tenths::
      002054                        485 	.ds 1
      002055                        486 _current_overflow_count::
      002055                        487 	.ds 1
      002056                        488 _clock_paused::
      002056                        489 	.ds 1
      002057                        490 _delay_i_131072_49:
      002057                        491 	.ds 2
      002059                        492 _lcdinit_i_327680_56:
      002059                        493 	.ds 2
      00205B                        494 _lcdinit_i_327680_61:
      00205B                        495 	.ds 2
      00205D                        496 _lcdinit_i_327680_66:
      00205D                        497 	.ds 2
      00205F                        498 _lcdgotoaddr_addr_65536_68:
      00205F                        499 	.ds 1
      002060                        500 _lcdgotoxy_PARM_2:
      002060                        501 	.ds 1
      002061                        502 _lcdgotoxy_row_65536_70:
      002061                        503 	.ds 1
      002062                        504 _lcdputch_cc_65536_72:
      002062                        505 	.ds 1
      002063                        506 _lcdputstr_ss_65536_74:
      002063                        507 	.ds 3
                                    508 ;--------------------------------------------------------
                                    509 ; absolute external ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XABS    (ABS,XDATA)
                                    512 ;--------------------------------------------------------
                                    513 ; external initialized ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area XISEG   (XDATA)
                                    516 	.area HOME    (CODE)
                                    517 	.area GSINIT0 (CODE)
                                    518 	.area GSINIT1 (CODE)
                                    519 	.area GSINIT2 (CODE)
                                    520 	.area GSINIT3 (CODE)
                                    521 	.area GSINIT4 (CODE)
                                    522 	.area GSINIT5 (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.area GSFINAL (CODE)
                                    525 	.area CSEG    (CODE)
                                    526 ;--------------------------------------------------------
                                    527 ; global & static initialisations
                                    528 ;--------------------------------------------------------
                                    529 	.area HOME    (CODE)
                                    530 	.area GSINIT  (CODE)
                                    531 	.area GSFINAL (CODE)
                                    532 	.area GSINIT  (CODE)
                                    533 ;--------------------------------------------------------
                                    534 ; Home
                                    535 ;--------------------------------------------------------
                                    536 	.area HOME    (CODE)
                                    537 	.area HOME    (CODE)
                                    538 ;--------------------------------------------------------
                                    539 ; code
                                    540 ;--------------------------------------------------------
                                    541 	.area CSEG    (CODE)
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'reload_counter'
                                    544 ;------------------------------------------------------------
                                    545 ;	src/lcd.c:24: void reload_counter()
                                    546 ;	-----------------------------------------
                                    547 ;	 function reload_counter
                                    548 ;	-----------------------------------------
      0029F0                        549 _reload_counter:
                           000007   550 	ar7 = 0x07
                           000006   551 	ar6 = 0x06
                           000005   552 	ar5 = 0x05
                           000004   553 	ar4 = 0x04
                           000003   554 	ar3 = 0x03
                           000002   555 	ar2 = 0x02
                           000001   556 	ar1 = 0x01
                           000000   557 	ar0 = 0x00
                                    558 ;	src/lcd.c:26: TH0 = 0x4C;
      0029F0 75 8C 4C         [24]  559 	mov	_TH0,#0x4c
                                    560 ;	src/lcd.c:27: TL0 = 0x0D;
      0029F3 75 8A 0D         [24]  561 	mov	_TL0,#0x0d
                                    562 ;	src/lcd.c:28: }
      0029F6 22               [24]  563 	ret
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'init_timer'
                                    566 ;------------------------------------------------------------
                                    567 ;	src/lcd.c:31: void init_timer()
                                    568 ;	-----------------------------------------
                                    569 ;	 function init_timer
                                    570 ;	-----------------------------------------
      0029F7                        571 _init_timer:
                                    572 ;	src/lcd.c:33: current_overflow_count = 0;
      0029F7 90 20 55         [24]  573 	mov	dptr,#_current_overflow_count
      0029FA E4               [12]  574 	clr	a
      0029FB F0               [24]  575 	movx	@dptr,a
                                    576 ;	src/lcd.c:34: TMOD |= 1 << TMOD_MODE1_POS;
      0029FC 43 89 01         [24]  577 	orl	_TMOD,#0x01
                                    578 ;	src/lcd.c:36: reload_counter();
      0029FF 12 29 F0         [24]  579 	lcall	_reload_counter
                                    580 ;	src/lcd.c:37: ET0 = 1; // enable timer0 interrupt
                                    581 ;	assignBit
      002A02 D2 A9            [12]  582 	setb	_ET0
                                    583 ;	src/lcd.c:38: EA = 1;  // enable global interrupt
                                    584 ;	assignBit
      002A04 D2 AF            [12]  585 	setb	_EA
                                    586 ;	src/lcd.c:39: }
      002A06 22               [24]  587 	ret
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'lcdbusywait'
                                    590 ;------------------------------------------------------------
                                    591 ;	src/lcd.c:66: void lcdbusywait()
                                    592 ;	-----------------------------------------
                                    593 ;	 function lcdbusywait
                                    594 ;	-----------------------------------------
      002A07                        595 _lcdbusywait:
                                    596 ;	src/lcd.c:68: while(0x80 == ((*(volatile unsigned char *) (LCD_ADDRESS_BASE | LCD_RW_FLAG)) & 0x80)); 
      002A07                        597 00101$:
      002A07 90 F2 00         [24]  598 	mov	dptr,#0xf200
      002A0A 75 F0 00         [24]  599 	mov	b,#0x00
      002A0D 12 3A DA         [24]  600 	lcall	__gptrget
      002A10 FF               [12]  601 	mov	r7,a
      002A11 53 07 80         [24]  602 	anl	ar7,#0x80
      002A14 7E 00            [12]  603 	mov	r6,#0x00
      002A16 BF 80 05         [24]  604 	cjne	r7,#0x80,00110$
      002A19 BE 00 02         [24]  605 	cjne	r6,#0x00,00110$
      002A1C 80 E9            [24]  606 	sjmp	00101$
      002A1E                        607 00110$:
                                    608 ;	src/lcd.c:69: }
      002A1E 22               [24]  609 	ret
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'lcdinit'
                                    612 ;------------------------------------------------------------
                                    613 ;i                         Allocated with name '_lcdinit_i_327680_56'
                                    614 ;i                         Allocated with name '_lcdinit_i_327680_61'
                                    615 ;i                         Allocated with name '_lcdinit_i_327680_66'
                                    616 ;------------------------------------------------------------
                                    617 ;	src/lcd.c:72: void lcdinit()
                                    618 ;	-----------------------------------------
                                    619 ;	 function lcdinit
                                    620 ;	-----------------------------------------
      002A1F                        621 _lcdinit:
                                    622 ;	src/lcd.c:57: for(volatile int i = 0; i < 600; i++)
      002A1F 90 20 59         [24]  623 	mov	dptr,#_lcdinit_i_327680_56
      002A22 E4               [12]  624 	clr	a
      002A23 F0               [24]  625 	movx	@dptr,a
      002A24 A3               [24]  626 	inc	dptr
      002A25 F0               [24]  627 	movx	@dptr,a
      002A26                        628 00108$:
      002A26 90 20 59         [24]  629 	mov	dptr,#_lcdinit_i_327680_56
      002A29 E0               [24]  630 	movx	a,@dptr
      002A2A FE               [12]  631 	mov	r6,a
      002A2B A3               [24]  632 	inc	dptr
      002A2C E0               [24]  633 	movx	a,@dptr
      002A2D FF               [12]  634 	mov	r7,a
      002A2E C3               [12]  635 	clr	c
      002A2F EE               [12]  636 	mov	a,r6
      002A30 94 58            [12]  637 	subb	a,#0x58
      002A32 EF               [12]  638 	mov	a,r7
      002A33 64 80            [12]  639 	xrl	a,#0x80
      002A35 94 82            [12]  640 	subb	a,#0x82
      002A37 50 16            [24]  641 	jnc	00102$
                                    642 ;	src/lcd.c:61: __endasm;  
      002A39 00               [12]  643 	nop
                                    644 ;	src/lcd.c:57: for(volatile int i = 0; i < 600; i++)
      002A3A 90 20 59         [24]  645 	mov	dptr,#_lcdinit_i_327680_56
      002A3D E0               [24]  646 	movx	a,@dptr
      002A3E FE               [12]  647 	mov	r6,a
      002A3F A3               [24]  648 	inc	dptr
      002A40 E0               [24]  649 	movx	a,@dptr
      002A41 FF               [12]  650 	mov	r7,a
      002A42 90 20 59         [24]  651 	mov	dptr,#_lcdinit_i_327680_56
      002A45 74 01            [12]  652 	mov	a,#0x01
      002A47 2E               [12]  653 	add	a,r6
      002A48 F0               [24]  654 	movx	@dptr,a
      002A49 E4               [12]  655 	clr	a
      002A4A 3F               [12]  656 	addc	a,r7
      002A4B A3               [24]  657 	inc	dptr
      002A4C F0               [24]  658 	movx	@dptr,a
                                    659 ;	src/lcd.c:74: delay();
      002A4D 80 D7            [24]  660 	sjmp	00108$
      002A4F                        661 00102$:
                                    662 ;	src/lcd.c:75: INIT_CMD_ONE();
      002A4F 90 F0 00         [24]  663 	mov	dptr,#0xf000
      002A52 75 F0 00         [24]  664 	mov	b,#0x00
      002A55 74 30            [12]  665 	mov	a,#0x30
      002A57 12 2E 80         [24]  666 	lcall	__gptrput
                                    667 ;	src/lcd.c:57: for(volatile int i = 0; i < 600; i++)
      002A5A 90 20 5B         [24]  668 	mov	dptr,#_lcdinit_i_327680_61
      002A5D E4               [12]  669 	clr	a
      002A5E F0               [24]  670 	movx	@dptr,a
      002A5F A3               [24]  671 	inc	dptr
      002A60 F0               [24]  672 	movx	@dptr,a
      002A61                        673 00111$:
      002A61 90 20 5B         [24]  674 	mov	dptr,#_lcdinit_i_327680_61
      002A64 E0               [24]  675 	movx	a,@dptr
      002A65 FE               [12]  676 	mov	r6,a
      002A66 A3               [24]  677 	inc	dptr
      002A67 E0               [24]  678 	movx	a,@dptr
      002A68 FF               [12]  679 	mov	r7,a
      002A69 C3               [12]  680 	clr	c
      002A6A EE               [12]  681 	mov	a,r6
      002A6B 94 58            [12]  682 	subb	a,#0x58
      002A6D EF               [12]  683 	mov	a,r7
      002A6E 64 80            [12]  684 	xrl	a,#0x80
      002A70 94 82            [12]  685 	subb	a,#0x82
      002A72 50 16            [24]  686 	jnc	00104$
                                    687 ;	src/lcd.c:61: __endasm;  
      002A74 00               [12]  688 	nop
                                    689 ;	src/lcd.c:57: for(volatile int i = 0; i < 600; i++)
      002A75 90 20 5B         [24]  690 	mov	dptr,#_lcdinit_i_327680_61
      002A78 E0               [24]  691 	movx	a,@dptr
      002A79 FE               [12]  692 	mov	r6,a
      002A7A A3               [24]  693 	inc	dptr
      002A7B E0               [24]  694 	movx	a,@dptr
      002A7C FF               [12]  695 	mov	r7,a
      002A7D 90 20 5B         [24]  696 	mov	dptr,#_lcdinit_i_327680_61
      002A80 74 01            [12]  697 	mov	a,#0x01
      002A82 2E               [12]  698 	add	a,r6
      002A83 F0               [24]  699 	movx	@dptr,a
      002A84 E4               [12]  700 	clr	a
      002A85 3F               [12]  701 	addc	a,r7
      002A86 A3               [24]  702 	inc	dptr
      002A87 F0               [24]  703 	movx	@dptr,a
                                    704 ;	src/lcd.c:76: delay();
      002A88 80 D7            [24]  705 	sjmp	00111$
      002A8A                        706 00104$:
                                    707 ;	src/lcd.c:77: INIT_CMD_ONE();
      002A8A 90 F0 00         [24]  708 	mov	dptr,#0xf000
      002A8D 75 F0 00         [24]  709 	mov	b,#0x00
      002A90 74 30            [12]  710 	mov	a,#0x30
      002A92 12 2E 80         [24]  711 	lcall	__gptrput
                                    712 ;	src/lcd.c:57: for(volatile int i = 0; i < 600; i++)
      002A95 90 20 5D         [24]  713 	mov	dptr,#_lcdinit_i_327680_66
      002A98 E4               [12]  714 	clr	a
      002A99 F0               [24]  715 	movx	@dptr,a
      002A9A A3               [24]  716 	inc	dptr
      002A9B F0               [24]  717 	movx	@dptr,a
      002A9C                        718 00114$:
      002A9C 90 20 5D         [24]  719 	mov	dptr,#_lcdinit_i_327680_66
      002A9F E0               [24]  720 	movx	a,@dptr
      002AA0 FE               [12]  721 	mov	r6,a
      002AA1 A3               [24]  722 	inc	dptr
      002AA2 E0               [24]  723 	movx	a,@dptr
      002AA3 FF               [12]  724 	mov	r7,a
      002AA4 C3               [12]  725 	clr	c
      002AA5 EE               [12]  726 	mov	a,r6
      002AA6 94 58            [12]  727 	subb	a,#0x58
      002AA8 EF               [12]  728 	mov	a,r7
      002AA9 64 80            [12]  729 	xrl	a,#0x80
      002AAB 94 82            [12]  730 	subb	a,#0x82
      002AAD 50 16            [24]  731 	jnc	00106$
                                    732 ;	src/lcd.c:61: __endasm;  
      002AAF 00               [12]  733 	nop
                                    734 ;	src/lcd.c:57: for(volatile int i = 0; i < 600; i++)
      002AB0 90 20 5D         [24]  735 	mov	dptr,#_lcdinit_i_327680_66
      002AB3 E0               [24]  736 	movx	a,@dptr
      002AB4 FE               [12]  737 	mov	r6,a
      002AB5 A3               [24]  738 	inc	dptr
      002AB6 E0               [24]  739 	movx	a,@dptr
      002AB7 FF               [12]  740 	mov	r7,a
      002AB8 90 20 5D         [24]  741 	mov	dptr,#_lcdinit_i_327680_66
      002ABB 74 01            [12]  742 	mov	a,#0x01
      002ABD 2E               [12]  743 	add	a,r6
      002ABE F0               [24]  744 	movx	@dptr,a
      002ABF E4               [12]  745 	clr	a
      002AC0 3F               [12]  746 	addc	a,r7
      002AC1 A3               [24]  747 	inc	dptr
      002AC2 F0               [24]  748 	movx	@dptr,a
                                    749 ;	src/lcd.c:78: delay();
      002AC3 80 D7            [24]  750 	sjmp	00114$
      002AC5                        751 00106$:
                                    752 ;	src/lcd.c:79: INIT_CMD_ONE();
      002AC5 90 F0 00         [24]  753 	mov	dptr,#0xf000
      002AC8 75 F0 00         [24]  754 	mov	b,#0x00
      002ACB 74 30            [12]  755 	mov	a,#0x30
      002ACD 12 2E 80         [24]  756 	lcall	__gptrput
                                    757 ;	src/lcd.c:80: lcdbusywait();
      002AD0 12 2A 07         [24]  758 	lcall	_lcdbusywait
                                    759 ;	src/lcd.c:81: FUNCTION_SET_TWO_LINES_FONT_0();
      002AD3 90 F0 00         [24]  760 	mov	dptr,#0xf000
      002AD6 75 F0 00         [24]  761 	mov	b,#0x00
      002AD9 74 38            [12]  762 	mov	a,#0x38
      002ADB 12 2E 80         [24]  763 	lcall	__gptrput
                                    764 ;	src/lcd.c:82: lcdbusywait();
      002ADE 12 2A 07         [24]  765 	lcall	_lcdbusywait
                                    766 ;	src/lcd.c:83: DISPLAY_OFF();
      002AE1 90 F0 00         [24]  767 	mov	dptr,#0xf000
      002AE4 75 F0 00         [24]  768 	mov	b,#0x00
      002AE7 74 08            [12]  769 	mov	a,#0x08
      002AE9 12 2E 80         [24]  770 	lcall	__gptrput
                                    771 ;	src/lcd.c:84: lcdbusywait();
      002AEC 12 2A 07         [24]  772 	lcall	_lcdbusywait
                                    773 ;	src/lcd.c:85: DISPLAY_ON();
      002AEF 90 F0 00         [24]  774 	mov	dptr,#0xf000
      002AF2 75 F0 00         [24]  775 	mov	b,#0x00
      002AF5 74 0C            [12]  776 	mov	a,#0x0c
      002AF7 12 2E 80         [24]  777 	lcall	__gptrput
                                    778 ;	src/lcd.c:86: lcdbusywait();
      002AFA 12 2A 07         [24]  779 	lcall	_lcdbusywait
                                    780 ;	src/lcd.c:87: ENTRY_MODE_SET_ID_1_S_0();
      002AFD 90 F0 00         [24]  781 	mov	dptr,#0xf000
      002B00 75 F0 00         [24]  782 	mov	b,#0x00
      002B03 74 06            [12]  783 	mov	a,#0x06
      002B05 12 2E 80         [24]  784 	lcall	__gptrput
                                    785 ;	src/lcd.c:88: lcdbusywait();
      002B08 12 2A 07         [24]  786 	lcall	_lcdbusywait
                                    787 ;	src/lcd.c:89: DISPLAY_CLEAR();
      002B0B 90 F0 00         [24]  788 	mov	dptr,#0xf000
      002B0E 75 F0 00         [24]  789 	mov	b,#0x00
      002B11 74 01            [12]  790 	mov	a,#0x01
      002B13 12 2E 80         [24]  791 	lcall	__gptrput
                                    792 ;	src/lcd.c:90: lcdbusywait();
                                    793 ;	src/lcd.c:91: }
      002B16 02 2A 07         [24]  794 	ljmp	_lcdbusywait
                                    795 ;------------------------------------------------------------
                                    796 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    797 ;------------------------------------------------------------
                                    798 ;addr                      Allocated with name '_lcdgotoaddr_addr_65536_68'
                                    799 ;------------------------------------------------------------
                                    800 ;	src/lcd.c:95: void lcdgotoaddr(unsigned char addr)
                                    801 ;	-----------------------------------------
                                    802 ;	 function lcdgotoaddr
                                    803 ;	-----------------------------------------
      002B19                        804 _lcdgotoaddr:
      002B19 E5 82            [12]  805 	mov	a,dpl
      002B1B 90 20 5F         [24]  806 	mov	dptr,#_lcdgotoaddr_addr_65536_68
      002B1E F0               [24]  807 	movx	@dptr,a
                                    808 ;	src/lcd.c:97: lcdbusywait();
      002B1F 12 2A 07         [24]  809 	lcall	_lcdbusywait
                                    810 ;	src/lcd.c:98: GOTOADDR(addr);
      002B22 90 20 5F         [24]  811 	mov	dptr,#_lcdgotoaddr_addr_65536_68
      002B25 E0               [24]  812 	movx	a,@dptr
      002B26 44 80            [12]  813 	orl	a,#0x80
      002B28 FF               [12]  814 	mov	r7,a
      002B29 90 F0 00         [24]  815 	mov	dptr,#0xf000
      002B2C 75 F0 00         [24]  816 	mov	b,#0x00
      002B2F EF               [12]  817 	mov	a,r7
      002B30 12 2E 80         [24]  818 	lcall	__gptrput
                                    819 ;	src/lcd.c:99: lcdbusywait();
                                    820 ;	src/lcd.c:100: }
      002B33 02 2A 07         [24]  821 	ljmp	_lcdbusywait
                                    822 ;------------------------------------------------------------
                                    823 ;Allocation info for local variables in function 'lcdgotoxy'
                                    824 ;------------------------------------------------------------
                                    825 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                    826 ;row                       Allocated with name '_lcdgotoxy_row_65536_70'
                                    827 ;------------------------------------------------------------
                                    828 ;	src/lcd.c:102: void lcdgotoxy(unsigned char row, unsigned char column)
                                    829 ;	-----------------------------------------
                                    830 ;	 function lcdgotoxy
                                    831 ;	-----------------------------------------
      002B36                        832 _lcdgotoxy:
      002B36 E5 82            [12]  833 	mov	a,dpl
      002B38 90 20 61         [24]  834 	mov	dptr,#_lcdgotoxy_row_65536_70
      002B3B F0               [24]  835 	movx	@dptr,a
                                    836 ;	src/lcd.c:104: lcdgotoaddr(row << 6 | column); 
      002B3C E0               [24]  837 	movx	a,@dptr
      002B3D 03               [12]  838 	rr	a
      002B3E 03               [12]  839 	rr	a
      002B3F 54 C0            [12]  840 	anl	a,#0xc0
      002B41 FF               [12]  841 	mov	r7,a
      002B42 90 20 60         [24]  842 	mov	dptr,#_lcdgotoxy_PARM_2
      002B45 E0               [24]  843 	movx	a,@dptr
      002B46 42 07            [12]  844 	orl	ar7,a
      002B48 8F 82            [24]  845 	mov	dpl,r7
                                    846 ;	src/lcd.c:105: }
      002B4A 02 2B 19         [24]  847 	ljmp	_lcdgotoaddr
                                    848 ;------------------------------------------------------------
                                    849 ;Allocation info for local variables in function 'lcdputch'
                                    850 ;------------------------------------------------------------
                                    851 ;cc                        Allocated with name '_lcdputch_cc_65536_72'
                                    852 ;------------------------------------------------------------
                                    853 ;	src/lcd.c:107: void lcdputch(char cc)
                                    854 ;	-----------------------------------------
                                    855 ;	 function lcdputch
                                    856 ;	-----------------------------------------
      002B4D                        857 _lcdputch:
      002B4D E5 82            [12]  858 	mov	a,dpl
      002B4F 90 20 62         [24]  859 	mov	dptr,#_lcdputch_cc_65536_72
      002B52 F0               [24]  860 	movx	@dptr,a
                                    861 ;	src/lcd.c:109: lcdbusywait();
      002B53 12 2A 07         [24]  862 	lcall	_lcdbusywait
                                    863 ;	src/lcd.c:110: WRITECHAR(cc);
      002B56 90 20 62         [24]  864 	mov	dptr,#_lcdputch_cc_65536_72
      002B59 E0               [24]  865 	movx	a,@dptr
      002B5A FF               [12]  866 	mov	r7,a
      002B5B 90 F1 00         [24]  867 	mov	dptr,#0xf100
      002B5E 75 F0 00         [24]  868 	mov	b,#0x00
      002B61 EF               [12]  869 	mov	a,r7
      002B62 12 2E 80         [24]  870 	lcall	__gptrput
                                    871 ;	src/lcd.c:111: lcdbusywait();
                                    872 ;	src/lcd.c:112: }
      002B65 02 2A 07         [24]  873 	ljmp	_lcdbusywait
                                    874 ;------------------------------------------------------------
                                    875 ;Allocation info for local variables in function 'lcdputstr'
                                    876 ;------------------------------------------------------------
                                    877 ;ss                        Allocated with name '_lcdputstr_ss_65536_74'
                                    878 ;------------------------------------------------------------
                                    879 ;	src/lcd.c:114: void lcdputstr
                                    880 ;	-----------------------------------------
                                    881 ;	 function lcdputstr
                                    882 ;	-----------------------------------------
      002B68                        883 _lcdputstr:
      002B68 AF F0            [24]  884 	mov	r7,b
      002B6A AE 83            [24]  885 	mov	r6,dph
      002B6C E5 82            [12]  886 	mov	a,dpl
      002B6E 90 20 63         [24]  887 	mov	dptr,#_lcdputstr_ss_65536_74
      002B71 F0               [24]  888 	movx	@dptr,a
      002B72 EE               [12]  889 	mov	a,r6
      002B73 A3               [24]  890 	inc	dptr
      002B74 F0               [24]  891 	movx	@dptr,a
      002B75 EF               [12]  892 	mov	a,r7
      002B76 A3               [24]  893 	inc	dptr
      002B77 F0               [24]  894 	movx	@dptr,a
                                    895 ;	src/lcd.c:117: while (*ss != '\0')
      002B78 90 20 63         [24]  896 	mov	dptr,#_lcdputstr_ss_65536_74
      002B7B E0               [24]  897 	movx	a,@dptr
      002B7C FD               [12]  898 	mov	r5,a
      002B7D A3               [24]  899 	inc	dptr
      002B7E E0               [24]  900 	movx	a,@dptr
      002B7F FE               [12]  901 	mov	r6,a
      002B80 A3               [24]  902 	inc	dptr
      002B81 E0               [24]  903 	movx	a,@dptr
      002B82 FF               [12]  904 	mov	r7,a
      002B83                        905 00101$:
      002B83 8D 82            [24]  906 	mov	dpl,r5
      002B85 8E 83            [24]  907 	mov	dph,r6
      002B87 8F F0            [24]  908 	mov	b,r7
      002B89 12 3A DA         [24]  909 	lcall	__gptrget
      002B8C FC               [12]  910 	mov	r4,a
      002B8D 60 23            [24]  911 	jz	00108$
                                    912 ;	src/lcd.c:119: lcdputch(*ss);
      002B8F 8C 82            [24]  913 	mov	dpl,r4
      002B91 C0 07            [24]  914 	push	ar7
      002B93 C0 06            [24]  915 	push	ar6
      002B95 C0 05            [24]  916 	push	ar5
      002B97 12 2B 4D         [24]  917 	lcall	_lcdputch
      002B9A D0 05            [24]  918 	pop	ar5
      002B9C D0 06            [24]  919 	pop	ar6
      002B9E D0 07            [24]  920 	pop	ar7
                                    921 ;	src/lcd.c:120: ss++;
      002BA0 0D               [12]  922 	inc	r5
      002BA1 BD 00 01         [24]  923 	cjne	r5,#0x00,00116$
      002BA4 0E               [12]  924 	inc	r6
      002BA5                        925 00116$:
      002BA5 90 20 63         [24]  926 	mov	dptr,#_lcdputstr_ss_65536_74
      002BA8 ED               [12]  927 	mov	a,r5
      002BA9 F0               [24]  928 	movx	@dptr,a
      002BAA EE               [12]  929 	mov	a,r6
      002BAB A3               [24]  930 	inc	dptr
      002BAC F0               [24]  931 	movx	@dptr,a
      002BAD EF               [12]  932 	mov	a,r7
      002BAE A3               [24]  933 	inc	dptr
      002BAF F0               [24]  934 	movx	@dptr,a
      002BB0 80 D1            [24]  935 	sjmp	00101$
      002BB2                        936 00108$:
      002BB2 90 20 63         [24]  937 	mov	dptr,#_lcdputstr_ss_65536_74
      002BB5 ED               [12]  938 	mov	a,r5
      002BB6 F0               [24]  939 	movx	@dptr,a
      002BB7 EE               [12]  940 	mov	a,r6
      002BB8 A3               [24]  941 	inc	dptr
      002BB9 F0               [24]  942 	movx	@dptr,a
      002BBA EF               [12]  943 	mov	a,r7
      002BBB A3               [24]  944 	inc	dptr
      002BBC F0               [24]  945 	movx	@dptr,a
                                    946 ;	src/lcd.c:122: }
      002BBD 22               [24]  947 	ret
                                    948 ;------------------------------------------------------------
                                    949 ;Allocation info for local variables in function 'lcdclear'
                                    950 ;------------------------------------------------------------
                                    951 ;	src/lcd.c:125: void lcdclear()
                                    952 ;	-----------------------------------------
                                    953 ;	 function lcdclear
                                    954 ;	-----------------------------------------
      002BBE                        955 _lcdclear:
                                    956 ;	src/lcd.c:127: lcdbusywait();
      002BBE 12 2A 07         [24]  957 	lcall	_lcdbusywait
                                    958 ;	src/lcd.c:128: DISPLAY_CLEAR();
      002BC1 90 F0 00         [24]  959 	mov	dptr,#0xf000
      002BC4 75 F0 00         [24]  960 	mov	b,#0x00
      002BC7 74 01            [12]  961 	mov	a,#0x01
      002BC9 12 2E 80         [24]  962 	lcall	__gptrput
                                    963 ;	src/lcd.c:129: lcdbusywait();
                                    964 ;	src/lcd.c:130: }
      002BCC 02 2A 07         [24]  965 	ljmp	_lcdbusywait
                                    966 ;------------------------------------------------------------
                                    967 ;Allocation info for local variables in function 'clock_init_and_start'
                                    968 ;------------------------------------------------------------
                                    969 ;	src/lcd.c:135: void clock_init_and_start()
                                    970 ;	-----------------------------------------
                                    971 ;	 function clock_init_and_start
                                    972 ;	-----------------------------------------
      002BCF                        973 _clock_init_and_start:
                                    974 ;	src/lcd.c:137: lcdinit();
      002BCF 12 2A 1F         [24]  975 	lcall	_lcdinit
                                    976 ;	src/lcd.c:138: clock_fields[0] = '0';
      002BD2 90 20 48         [24]  977 	mov	dptr,#_clock_fields
      002BD5 74 30            [12]  978 	mov	a,#0x30
      002BD7 F0               [24]  979 	movx	@dptr,a
                                    980 ;	src/lcd.c:139: clock_fields[1] = '0';
      002BD8 90 20 49         [24]  981 	mov	dptr,#(_clock_fields + 0x0001)
      002BDB F0               [24]  982 	movx	@dptr,a
                                    983 ;	src/lcd.c:140: clock_fields[2] = ':';
      002BDC 90 20 4A         [24]  984 	mov	dptr,#(_clock_fields + 0x0002)
      002BDF 74 3A            [12]  985 	mov	a,#0x3a
      002BE1 F0               [24]  986 	movx	@dptr,a
                                    987 ;	src/lcd.c:141: clock_fields[3] = '0';
      002BE2 90 20 4B         [24]  988 	mov	dptr,#(_clock_fields + 0x0003)
      002BE5 74 30            [12]  989 	mov	a,#0x30
      002BE7 F0               [24]  990 	movx	@dptr,a
                                    991 ;	src/lcd.c:142: clock_fields[4] = '0';
      002BE8 90 20 4C         [24]  992 	mov	dptr,#(_clock_fields + 0x0004)
      002BEB F0               [24]  993 	movx	@dptr,a
                                    994 ;	src/lcd.c:143: clock_fields[5] = '.';
      002BEC 90 20 4D         [24]  995 	mov	dptr,#(_clock_fields + 0x0005)
      002BEF 74 2E            [12]  996 	mov	a,#0x2e
      002BF1 F0               [24]  997 	movx	@dptr,a
                                    998 ;	src/lcd.c:144: clock_fields[6] = '0';
      002BF2 90 20 4E         [24]  999 	mov	dptr,#(_clock_fields + 0x0006)
      002BF5 74 30            [12] 1000 	mov	a,#0x30
      002BF7 F0               [24] 1001 	movx	@dptr,a
                                   1002 ;	src/lcd.c:145: clock_fields[7] = '\0';
      002BF8 90 20 4F         [24] 1003 	mov	dptr,#(_clock_fields + 0x0007)
      002BFB E4               [12] 1004 	clr	a
      002BFC F0               [24] 1005 	movx	@dptr,a
                                   1006 ;	src/lcd.c:146: lcdclear();
      002BFD 12 2B BE         [24] 1007 	lcall	_lcdclear
                                   1008 ;	src/lcd.c:147: lcdputstr(clock_fields);
      002C00 90 20 48         [24] 1009 	mov	dptr,#_clock_fields
      002C03 75 F0 00         [24] 1010 	mov	b,#0x00
      002C06 12 2B 68         [24] 1011 	lcall	_lcdputstr
                                   1012 ;	src/lcd.c:148: init_timer();
      002C09 12 29 F7         [24] 1013 	lcall	_init_timer
                                   1014 ;	src/lcd.c:149: TR0 = 1; // Start Timer0
                                   1015 ;	assignBit
      002C0C D2 8C            [12] 1016 	setb	_TR0
                                   1017 ;	src/lcd.c:150: printf("Clock_initialized");
      002C0E 74 B4            [12] 1018 	mov	a,#___str_0
      002C10 C0 E0            [24] 1019 	push	acc
      002C12 74 3B            [12] 1020 	mov	a,#(___str_0 >> 8)
      002C14 C0 E0            [24] 1021 	push	acc
      002C16 74 80            [12] 1022 	mov	a,#0x80
      002C18 C0 E0            [24] 1023 	push	acc
      002C1A 12 2E E9         [24] 1024 	lcall	_printf
      002C1D 15 81            [12] 1025 	dec	sp
      002C1F 15 81            [12] 1026 	dec	sp
      002C21 15 81            [12] 1027 	dec	sp
                                   1028 ;	src/lcd.c:151: }
      002C23 22               [24] 1029 	ret
                                   1030 ;------------------------------------------------------------
                                   1031 ;Allocation info for local variables in function 'increment_clock_values'
                                   1032 ;------------------------------------------------------------
                                   1033 ;	src/lcd.c:153: void increment_clock_values()
                                   1034 ;	-----------------------------------------
                                   1035 ;	 function increment_clock_values
                                   1036 ;	-----------------------------------------
      002C24                       1037 _increment_clock_values:
                                   1038 ;	src/lcd.c:155: seconds_tenths++;
      002C24 90 20 54         [24] 1039 	mov	dptr,#_seconds_tenths
      002C27 E0               [24] 1040 	movx	a,@dptr
      002C28 24 01            [12] 1041 	add	a,#0x01
      002C2A F0               [24] 1042 	movx	@dptr,a
                                   1043 ;	src/lcd.c:156: if (seconds_tenths < 10) return;
      002C2B E0               [24] 1044 	movx	a,@dptr
      002C2C FF               [12] 1045 	mov	r7,a
      002C2D BF 0A 00         [24] 1046 	cjne	r7,#0x0a,00133$
      002C30                       1047 00133$:
      002C30 50 01            [24] 1048 	jnc	00102$
      002C32 22               [24] 1049 	ret
      002C33                       1050 00102$:
                                   1051 ;	src/lcd.c:157: seconds_tenths = 0;
      002C33 90 20 54         [24] 1052 	mov	dptr,#_seconds_tenths
      002C36 E4               [12] 1053 	clr	a
      002C37 F0               [24] 1054 	movx	@dptr,a
                                   1055 ;	src/lcd.c:158: seconds_ones++;
      002C38 90 20 53         [24] 1056 	mov	dptr,#_seconds_ones
      002C3B E0               [24] 1057 	movx	a,@dptr
      002C3C 24 01            [12] 1058 	add	a,#0x01
      002C3E F0               [24] 1059 	movx	@dptr,a
                                   1060 ;	src/lcd.c:159: if (seconds_ones < 10) return;
      002C3F E0               [24] 1061 	movx	a,@dptr
      002C40 FF               [12] 1062 	mov	r7,a
      002C41 BF 0A 00         [24] 1063 	cjne	r7,#0x0a,00135$
      002C44                       1064 00135$:
      002C44 50 01            [24] 1065 	jnc	00104$
      002C46 22               [24] 1066 	ret
      002C47                       1067 00104$:
                                   1068 ;	src/lcd.c:160: seconds_ones = 0;
      002C47 90 20 53         [24] 1069 	mov	dptr,#_seconds_ones
      002C4A E4               [12] 1070 	clr	a
      002C4B F0               [24] 1071 	movx	@dptr,a
                                   1072 ;	src/lcd.c:161: seconds_tens++;
      002C4C 90 20 52         [24] 1073 	mov	dptr,#_seconds_tens
      002C4F E0               [24] 1074 	movx	a,@dptr
      002C50 24 01            [12] 1075 	add	a,#0x01
      002C52 F0               [24] 1076 	movx	@dptr,a
                                   1077 ;	src/lcd.c:162: if (seconds_tens < 6) return;
      002C53 E0               [24] 1078 	movx	a,@dptr
      002C54 FF               [12] 1079 	mov	r7,a
      002C55 BF 06 00         [24] 1080 	cjne	r7,#0x06,00137$
      002C58                       1081 00137$:
      002C58 50 01            [24] 1082 	jnc	00106$
      002C5A 22               [24] 1083 	ret
      002C5B                       1084 00106$:
                                   1085 ;	src/lcd.c:163: seconds_tens = 0;
      002C5B 90 20 52         [24] 1086 	mov	dptr,#_seconds_tens
      002C5E E4               [12] 1087 	clr	a
      002C5F F0               [24] 1088 	movx	@dptr,a
                                   1089 ;	src/lcd.c:164: minutes_ones++;
      002C60 90 20 51         [24] 1090 	mov	dptr,#_minutes_ones
      002C63 E0               [24] 1091 	movx	a,@dptr
      002C64 24 01            [12] 1092 	add	a,#0x01
      002C66 F0               [24] 1093 	movx	@dptr,a
                                   1094 ;	src/lcd.c:165: if(minutes_ones < 10) return;
      002C67 E0               [24] 1095 	movx	a,@dptr
      002C68 FF               [12] 1096 	mov	r7,a
      002C69 BF 0A 00         [24] 1097 	cjne	r7,#0x0a,00139$
      002C6C                       1098 00139$:
      002C6C 50 01            [24] 1099 	jnc	00108$
      002C6E 22               [24] 1100 	ret
      002C6F                       1101 00108$:
                                   1102 ;	src/lcd.c:166: minutes_ones = 0;
      002C6F 90 20 51         [24] 1103 	mov	dptr,#_minutes_ones
      002C72 E4               [12] 1104 	clr	a
      002C73 F0               [24] 1105 	movx	@dptr,a
                                   1106 ;	src/lcd.c:167: minutes_tens++;
      002C74 90 20 50         [24] 1107 	mov	dptr,#_minutes_tens
      002C77 E0               [24] 1108 	movx	a,@dptr
      002C78 24 01            [12] 1109 	add	a,#0x01
      002C7A F0               [24] 1110 	movx	@dptr,a
                                   1111 ;	src/lcd.c:168: if (minutes_tens < 10) return;
      002C7B E0               [24] 1112 	movx	a,@dptr
      002C7C FF               [12] 1113 	mov	r7,a
      002C7D BF 0A 00         [24] 1114 	cjne	r7,#0x0a,00141$
      002C80                       1115 00141$:
      002C80 50 01            [24] 1116 	jnc	00110$
      002C82 22               [24] 1117 	ret
      002C83                       1118 00110$:
                                   1119 ;	src/lcd.c:169: minutes_tens = 0; //silent overflow
      002C83 90 20 50         [24] 1120 	mov	dptr,#_minutes_tens
      002C86 E4               [12] 1121 	clr	a
      002C87 F0               [24] 1122 	movx	@dptr,a
                                   1123 ;	src/lcd.c:170: }
      002C88 22               [24] 1124 	ret
                                   1125 ;------------------------------------------------------------
                                   1126 ;Allocation info for local variables in function 'output_clock'
                                   1127 ;------------------------------------------------------------
                                   1128 ;	src/lcd.c:172: void output_clock()
                                   1129 ;	-----------------------------------------
                                   1130 ;	 function output_clock
                                   1131 ;	-----------------------------------------
      002C89                       1132 _output_clock:
                                   1133 ;	src/lcd.c:174: clock_fields[0] = '0' + minutes_tens;
      002C89 90 20 50         [24] 1134 	mov	dptr,#_minutes_tens
      002C8C E0               [24] 1135 	movx	a,@dptr
      002C8D 24 30            [12] 1136 	add	a,#0x30
      002C8F 90 20 48         [24] 1137 	mov	dptr,#_clock_fields
      002C92 F0               [24] 1138 	movx	@dptr,a
                                   1139 ;	src/lcd.c:175: clock_fields[1] = '0' + minutes_ones;
      002C93 90 20 51         [24] 1140 	mov	dptr,#_minutes_ones
      002C96 E0               [24] 1141 	movx	a,@dptr
      002C97 24 30            [12] 1142 	add	a,#0x30
      002C99 90 20 49         [24] 1143 	mov	dptr,#(_clock_fields + 0x0001)
      002C9C F0               [24] 1144 	movx	@dptr,a
                                   1145 ;	src/lcd.c:176: clock_fields[3] = '0' + seconds_tens;
      002C9D 90 20 52         [24] 1146 	mov	dptr,#_seconds_tens
      002CA0 E0               [24] 1147 	movx	a,@dptr
      002CA1 24 30            [12] 1148 	add	a,#0x30
      002CA3 90 20 4B         [24] 1149 	mov	dptr,#(_clock_fields + 0x0003)
      002CA6 F0               [24] 1150 	movx	@dptr,a
                                   1151 ;	src/lcd.c:177: clock_fields[4] = '0' + seconds_ones;
      002CA7 90 20 53         [24] 1152 	mov	dptr,#_seconds_ones
      002CAA E0               [24] 1153 	movx	a,@dptr
      002CAB 24 30            [12] 1154 	add	a,#0x30
      002CAD 90 20 4C         [24] 1155 	mov	dptr,#(_clock_fields + 0x0004)
      002CB0 F0               [24] 1156 	movx	@dptr,a
                                   1157 ;	src/lcd.c:178: clock_fields[6] = '0' + seconds_tenths;
      002CB1 90 20 54         [24] 1158 	mov	dptr,#_seconds_tenths
      002CB4 E0               [24] 1159 	movx	a,@dptr
      002CB5 24 30            [12] 1160 	add	a,#0x30
      002CB7 90 20 4E         [24] 1161 	mov	dptr,#(_clock_fields + 0x0006)
      002CBA F0               [24] 1162 	movx	@dptr,a
                                   1163 ;	src/lcd.c:179: lcdgotoaddr(0); 
      002CBB 75 82 00         [24] 1164 	mov	dpl,#0x00
      002CBE 12 2B 19         [24] 1165 	lcall	_lcdgotoaddr
                                   1166 ;	src/lcd.c:180: lcdputstr(clock_fields); 
      002CC1 90 20 48         [24] 1167 	mov	dptr,#_clock_fields
      002CC4 75 F0 00         [24] 1168 	mov	b,#0x00
                                   1169 ;	src/lcd.c:181: }
      002CC7 02 2B 68         [24] 1170 	ljmp	_lcdputstr
                                   1171 ;------------------------------------------------------------
                                   1172 ;Allocation info for local variables in function 'increment_clock'
                                   1173 ;------------------------------------------------------------
                                   1174 ;	src/lcd.c:183: void increment_clock()
                                   1175 ;	-----------------------------------------
                                   1176 ;	 function increment_clock
                                   1177 ;	-----------------------------------------
      002CCA                       1178 _increment_clock:
                                   1179 ;	src/lcd.c:185: increment_clock_values();
      002CCA 12 2C 24         [24] 1180 	lcall	_increment_clock_values
                                   1181 ;	src/lcd.c:186: output_clock();
                                   1182 ;	src/lcd.c:187: }
      002CCD 02 2C 89         [24] 1183 	ljmp	_output_clock
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'reset_clock'
                                   1186 ;------------------------------------------------------------
                                   1187 ;	src/lcd.c:189: void reset_clock()
                                   1188 ;	-----------------------------------------
                                   1189 ;	 function reset_clock
                                   1190 ;	-----------------------------------------
      002CD0                       1191 _reset_clock:
                                   1192 ;	src/lcd.c:199: }
      002CD0 D2 01            [12] 1193 	setb	_reset_clock_sloc0_1_0
      002CD2 10 AF 02         [24] 1194 	jbc	ea,00103$
      002CD5 C2 01            [12] 1195 	clr	_reset_clock_sloc0_1_0
      002CD7                       1196 00103$:
                                   1197 ;	src/lcd.c:193: minutes_tens = 0;
      002CD7 90 20 50         [24] 1198 	mov	dptr,#_minutes_tens
      002CDA E4               [12] 1199 	clr	a
      002CDB F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	src/lcd.c:194: minutes_ones = 0;
      002CDC 90 20 51         [24] 1202 	mov	dptr,#_minutes_ones
      002CDF F0               [24] 1203 	movx	@dptr,a
                                   1204 ;	src/lcd.c:195: seconds_tens = 0;
      002CE0 90 20 52         [24] 1205 	mov	dptr,#_seconds_tens
      002CE3 F0               [24] 1206 	movx	@dptr,a
                                   1207 ;	src/lcd.c:196: seconds_ones = 0;
      002CE4 90 20 53         [24] 1208 	mov	dptr,#_seconds_ones
      002CE7 F0               [24] 1209 	movx	@dptr,a
                                   1210 ;	src/lcd.c:197: seconds_tenths = 0;
      002CE8 90 20 54         [24] 1211 	mov	dptr,#_seconds_tenths
      002CEB F0               [24] 1212 	movx	@dptr,a
                                   1213 ;	src/lcd.c:198: output_clock();
      002CEC 12 2C 89         [24] 1214 	lcall	_output_clock
      002CEF A2 01            [12] 1215 	mov	c,_reset_clock_sloc0_1_0
      002CF1 92 AF            [24] 1216 	mov	ea,c
                                   1217 ;	src/lcd.c:200: }
      002CF3 22               [24] 1218 	ret
                                   1219 ;------------------------------------------------------------
                                   1220 ;Allocation info for local variables in function 'pause_clock'
                                   1221 ;------------------------------------------------------------
                                   1222 ;	src/lcd.c:204: void pause_clock()
                                   1223 ;	-----------------------------------------
                                   1224 ;	 function pause_clock
                                   1225 ;	-----------------------------------------
      002CF4                       1226 _pause_clock:
                                   1227 ;	src/lcd.c:206: clock_paused = CLOCK_PAUSED;
      002CF4 90 20 56         [24] 1228 	mov	dptr,#_clock_paused
      002CF7 74 01            [12] 1229 	mov	a,#0x01
      002CF9 F0               [24] 1230 	movx	@dptr,a
                                   1231 ;	src/lcd.c:207: }
      002CFA 22               [24] 1232 	ret
                                   1233 ;------------------------------------------------------------
                                   1234 ;Allocation info for local variables in function 'unpause_clock'
                                   1235 ;------------------------------------------------------------
                                   1236 ;	src/lcd.c:209: void unpause_clock()
                                   1237 ;	-----------------------------------------
                                   1238 ;	 function unpause_clock
                                   1239 ;	-----------------------------------------
      002CFB                       1240 _unpause_clock:
                                   1241 ;	src/lcd.c:211: clock_paused = CLOCK_RUNNING;
      002CFB 90 20 56         [24] 1242 	mov	dptr,#_clock_paused
      002CFE E4               [12] 1243 	clr	a
      002CFF F0               [24] 1244 	movx	@dptr,a
                                   1245 ;	src/lcd.c:212: }
      002D00 22               [24] 1246 	ret
                                   1247 	.area CSEG    (CODE)
                                   1248 	.area CONST   (CODE)
                                   1249 	.area CONST   (CODE)
      003BB4                       1250 ___str_0:
      003BB4 43 6C 6F 63 6B 5F 69  1251 	.ascii "Clock_initialized"
             6E 69 74 69 61 6C 69
             7A 65 64
      003BC5 00                    1252 	.db 0x00
                                   1253 	.area CSEG    (CODE)
                                   1254 	.area XINIT   (CODE)
                                   1255 	.area CABS    (ABS,CODE)
