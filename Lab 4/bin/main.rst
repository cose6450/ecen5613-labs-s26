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
                                     12 	.globl _print_dashed_line
                                     13 	.globl _r_command_handler
                                     14 	.globl _w_command_handler
                                     15 	.globl __sdcc_external_startup
                                     16 	.globl _eeprom_init
                                     17 	.globl _eepromreadbyte
                                     18 	.globl _eepromwritebyte
                                     19 	.globl _get_hex_value
                                     20 	.globl _putchar
                                     21 	.globl _getchar
                                     22 	.globl _printf
                                     23 	.globl _CY
                                     24 	.globl _AC
                                     25 	.globl _F0
                                     26 	.globl _RS1
                                     27 	.globl _RS0
                                     28 	.globl _OV
                                     29 	.globl _F1
                                     30 	.globl _P
                                     31 	.globl _PS
                                     32 	.globl _PT1
                                     33 	.globl _PX1
                                     34 	.globl _PT0
                                     35 	.globl _PX0
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD
                                     43 	.globl _RXD
                                     44 	.globl _P3_7
                                     45 	.globl _P3_6
                                     46 	.globl _P3_5
                                     47 	.globl _P3_4
                                     48 	.globl _P3_3
                                     49 	.globl _P3_2
                                     50 	.globl _P3_1
                                     51 	.globl _P3_0
                                     52 	.globl _EA
                                     53 	.globl _ES
                                     54 	.globl _ET1
                                     55 	.globl _EX1
                                     56 	.globl _ET0
                                     57 	.globl _EX0
                                     58 	.globl _P2_7
                                     59 	.globl _P2_6
                                     60 	.globl _P2_5
                                     61 	.globl _P2_4
                                     62 	.globl _P2_3
                                     63 	.globl _P2_2
                                     64 	.globl _P2_1
                                     65 	.globl _P2_0
                                     66 	.globl _SM0
                                     67 	.globl _SM1
                                     68 	.globl _SM2
                                     69 	.globl _REN
                                     70 	.globl _TB8
                                     71 	.globl _RB8
                                     72 	.globl _TI
                                     73 	.globl _RI
                                     74 	.globl _P1_7
                                     75 	.globl _P1_6
                                     76 	.globl _P1_5
                                     77 	.globl _P1_4
                                     78 	.globl _P1_3
                                     79 	.globl _P1_2
                                     80 	.globl _P1_1
                                     81 	.globl _P1_0
                                     82 	.globl _TF1
                                     83 	.globl _TR1
                                     84 	.globl _TF0
                                     85 	.globl _TR0
                                     86 	.globl _IE1
                                     87 	.globl _IT1
                                     88 	.globl _IE0
                                     89 	.globl _IT0
                                     90 	.globl _P0_7
                                     91 	.globl _P0_6
                                     92 	.globl _P0_5
                                     93 	.globl _P0_4
                                     94 	.globl _P0_3
                                     95 	.globl _P0_2
                                     96 	.globl _P0_1
                                     97 	.globl _P0_0
                                     98 	.globl _P5_7
                                     99 	.globl _P5_6
                                    100 	.globl _P5_5
                                    101 	.globl _P5_4
                                    102 	.globl _P5_3
                                    103 	.globl _P5_2
                                    104 	.globl _P5_1
                                    105 	.globl _P5_0
                                    106 	.globl _P4_7
                                    107 	.globl _P4_6
                                    108 	.globl _P4_5
                                    109 	.globl _P4_4
                                    110 	.globl _P4_3
                                    111 	.globl _P4_2
                                    112 	.globl _P4_1
                                    113 	.globl _P4_0
                                    114 	.globl _PX0L
                                    115 	.globl _PT0L
                                    116 	.globl _PX1L
                                    117 	.globl _PT1L
                                    118 	.globl _PSL
                                    119 	.globl _PT2L
                                    120 	.globl _PPCL
                                    121 	.globl _EC
                                    122 	.globl _CCF0
                                    123 	.globl _CCF1
                                    124 	.globl _CCF2
                                    125 	.globl _CCF3
                                    126 	.globl _CCF4
                                    127 	.globl _CR
                                    128 	.globl _CF
                                    129 	.globl _TF2
                                    130 	.globl _EXF2
                                    131 	.globl _RCLK
                                    132 	.globl _TCLK
                                    133 	.globl _EXEN2
                                    134 	.globl _TR2
                                    135 	.globl _C_T2
                                    136 	.globl _CP_RL2
                                    137 	.globl _T2CON_7
                                    138 	.globl _T2CON_6
                                    139 	.globl _T2CON_5
                                    140 	.globl _T2CON_4
                                    141 	.globl _T2CON_3
                                    142 	.globl _T2CON_2
                                    143 	.globl _T2CON_1
                                    144 	.globl _T2CON_0
                                    145 	.globl _PT2
                                    146 	.globl _ET2
                                    147 	.globl _B
                                    148 	.globl _ACC
                                    149 	.globl _PSW
                                    150 	.globl _IP
                                    151 	.globl _P3
                                    152 	.globl _IE
                                    153 	.globl _P2
                                    154 	.globl _SBUF
                                    155 	.globl _SCON
                                    156 	.globl _P1
                                    157 	.globl _TH1
                                    158 	.globl _TH0
                                    159 	.globl _TL1
                                    160 	.globl _TL0
                                    161 	.globl _TMOD
                                    162 	.globl _TCON
                                    163 	.globl _PCON
                                    164 	.globl _DPH
                                    165 	.globl _DPL
                                    166 	.globl _SP
                                    167 	.globl _P0
                                    168 	.globl _EECON
                                    169 	.globl _KBF
                                    170 	.globl _KBE
                                    171 	.globl _KBLS
                                    172 	.globl _BRL
                                    173 	.globl _BDRCON
                                    174 	.globl _T2MOD
                                    175 	.globl _SPDAT
                                    176 	.globl _SPSTA
                                    177 	.globl _SPCON
                                    178 	.globl _SADEN
                                    179 	.globl _SADDR
                                    180 	.globl _WDTPRG
                                    181 	.globl _WDTRST
                                    182 	.globl _P5
                                    183 	.globl _P4
                                    184 	.globl _IPH1
                                    185 	.globl _IPL1
                                    186 	.globl _IPH0
                                    187 	.globl _IPL0
                                    188 	.globl _IEN1
                                    189 	.globl _IEN0
                                    190 	.globl _CMOD
                                    191 	.globl _CL
                                    192 	.globl _CH
                                    193 	.globl _CCON
                                    194 	.globl _CCAPM4
                                    195 	.globl _CCAPM3
                                    196 	.globl _CCAPM2
                                    197 	.globl _CCAPM1
                                    198 	.globl _CCAPM0
                                    199 	.globl _CCAP4L
                                    200 	.globl _CCAP3L
                                    201 	.globl _CCAP2L
                                    202 	.globl _CCAP1L
                                    203 	.globl _CCAP0L
                                    204 	.globl _CCAP4H
                                    205 	.globl _CCAP3H
                                    206 	.globl _CCAP2H
                                    207 	.globl _CCAP1H
                                    208 	.globl _CCAP0H
                                    209 	.globl _CKCON1
                                    210 	.globl _CKCON0
                                    211 	.globl _CKRL
                                    212 	.globl _AUXR1
                                    213 	.globl _AUXR
                                    214 	.globl _TH2
                                    215 	.globl _TL2
                                    216 	.globl _RCAP2H
                                    217 	.globl _RCAP2L
                                    218 	.globl _T2CON
                                    219 ;--------------------------------------------------------
                                    220 ; special function registers
                                    221 ;--------------------------------------------------------
                                    222 	.area RSEG    (ABS,DATA)
      000000                        223 	.org 0x0000
                           0000C8   224 _T2CON	=	0x00c8
                           0000CA   225 _RCAP2L	=	0x00ca
                           0000CB   226 _RCAP2H	=	0x00cb
                           0000CC   227 _TL2	=	0x00cc
                           0000CD   228 _TH2	=	0x00cd
                           00008E   229 _AUXR	=	0x008e
                           0000A2   230 _AUXR1	=	0x00a2
                           000097   231 _CKRL	=	0x0097
                           00008F   232 _CKCON0	=	0x008f
                           0000AF   233 _CKCON1	=	0x00af
                           0000FA   234 _CCAP0H	=	0x00fa
                           0000FB   235 _CCAP1H	=	0x00fb
                           0000FC   236 _CCAP2H	=	0x00fc
                           0000FD   237 _CCAP3H	=	0x00fd
                           0000FE   238 _CCAP4H	=	0x00fe
                           0000EA   239 _CCAP0L	=	0x00ea
                           0000EB   240 _CCAP1L	=	0x00eb
                           0000EC   241 _CCAP2L	=	0x00ec
                           0000ED   242 _CCAP3L	=	0x00ed
                           0000EE   243 _CCAP4L	=	0x00ee
                           0000DA   244 _CCAPM0	=	0x00da
                           0000DB   245 _CCAPM1	=	0x00db
                           0000DC   246 _CCAPM2	=	0x00dc
                           0000DD   247 _CCAPM3	=	0x00dd
                           0000DE   248 _CCAPM4	=	0x00de
                           0000D8   249 _CCON	=	0x00d8
                           0000F9   250 _CH	=	0x00f9
                           0000E9   251 _CL	=	0x00e9
                           0000D9   252 _CMOD	=	0x00d9
                           0000A8   253 _IEN0	=	0x00a8
                           0000B1   254 _IEN1	=	0x00b1
                           0000B8   255 _IPL0	=	0x00b8
                           0000B7   256 _IPH0	=	0x00b7
                           0000B2   257 _IPL1	=	0x00b2
                           0000B3   258 _IPH1	=	0x00b3
                           0000C0   259 _P4	=	0x00c0
                           0000E8   260 _P5	=	0x00e8
                           0000A6   261 _WDTRST	=	0x00a6
                           0000A7   262 _WDTPRG	=	0x00a7
                           0000A9   263 _SADDR	=	0x00a9
                           0000B9   264 _SADEN	=	0x00b9
                           0000C3   265 _SPCON	=	0x00c3
                           0000C4   266 _SPSTA	=	0x00c4
                           0000C5   267 _SPDAT	=	0x00c5
                           0000C9   268 _T2MOD	=	0x00c9
                           00009B   269 _BDRCON	=	0x009b
                           00009A   270 _BRL	=	0x009a
                           00009C   271 _KBLS	=	0x009c
                           00009D   272 _KBE	=	0x009d
                           00009E   273 _KBF	=	0x009e
                           0000D2   274 _EECON	=	0x00d2
                           000080   275 _P0	=	0x0080
                           000081   276 _SP	=	0x0081
                           000082   277 _DPL	=	0x0082
                           000083   278 _DPH	=	0x0083
                           000087   279 _PCON	=	0x0087
                           000088   280 _TCON	=	0x0088
                           000089   281 _TMOD	=	0x0089
                           00008A   282 _TL0	=	0x008a
                           00008B   283 _TL1	=	0x008b
                           00008C   284 _TH0	=	0x008c
                           00008D   285 _TH1	=	0x008d
                           000090   286 _P1	=	0x0090
                           000098   287 _SCON	=	0x0098
                           000099   288 _SBUF	=	0x0099
                           0000A0   289 _P2	=	0x00a0
                           0000A8   290 _IE	=	0x00a8
                           0000B0   291 _P3	=	0x00b0
                           0000B8   292 _IP	=	0x00b8
                           0000D0   293 _PSW	=	0x00d0
                           0000E0   294 _ACC	=	0x00e0
                           0000F0   295 _B	=	0x00f0
                                    296 ;--------------------------------------------------------
                                    297 ; special function bits
                                    298 ;--------------------------------------------------------
                                    299 	.area RSEG    (ABS,DATA)
      000000                        300 	.org 0x0000
                           0000AD   301 _ET2	=	0x00ad
                           0000BD   302 _PT2	=	0x00bd
                           0000C8   303 _T2CON_0	=	0x00c8
                           0000C9   304 _T2CON_1	=	0x00c9
                           0000CA   305 _T2CON_2	=	0x00ca
                           0000CB   306 _T2CON_3	=	0x00cb
                           0000CC   307 _T2CON_4	=	0x00cc
                           0000CD   308 _T2CON_5	=	0x00cd
                           0000CE   309 _T2CON_6	=	0x00ce
                           0000CF   310 _T2CON_7	=	0x00cf
                           0000C8   311 _CP_RL2	=	0x00c8
                           0000C9   312 _C_T2	=	0x00c9
                           0000CA   313 _TR2	=	0x00ca
                           0000CB   314 _EXEN2	=	0x00cb
                           0000CC   315 _TCLK	=	0x00cc
                           0000CD   316 _RCLK	=	0x00cd
                           0000CE   317 _EXF2	=	0x00ce
                           0000CF   318 _TF2	=	0x00cf
                           0000DF   319 _CF	=	0x00df
                           0000DE   320 _CR	=	0x00de
                           0000DC   321 _CCF4	=	0x00dc
                           0000DB   322 _CCF3	=	0x00db
                           0000DA   323 _CCF2	=	0x00da
                           0000D9   324 _CCF1	=	0x00d9
                           0000D8   325 _CCF0	=	0x00d8
                           0000AE   326 _EC	=	0x00ae
                           0000BE   327 _PPCL	=	0x00be
                           0000BD   328 _PT2L	=	0x00bd
                           0000BC   329 _PSL	=	0x00bc
                           0000BB   330 _PT1L	=	0x00bb
                           0000BA   331 _PX1L	=	0x00ba
                           0000B9   332 _PT0L	=	0x00b9
                           0000B8   333 _PX0L	=	0x00b8
                           0000C0   334 _P4_0	=	0x00c0
                           0000C1   335 _P4_1	=	0x00c1
                           0000C2   336 _P4_2	=	0x00c2
                           0000C3   337 _P4_3	=	0x00c3
                           0000C4   338 _P4_4	=	0x00c4
                           0000C5   339 _P4_5	=	0x00c5
                           0000C6   340 _P4_6	=	0x00c6
                           0000C7   341 _P4_7	=	0x00c7
                           0000E8   342 _P5_0	=	0x00e8
                           0000E9   343 _P5_1	=	0x00e9
                           0000EA   344 _P5_2	=	0x00ea
                           0000EB   345 _P5_3	=	0x00eb
                           0000EC   346 _P5_4	=	0x00ec
                           0000ED   347 _P5_5	=	0x00ed
                           0000EE   348 _P5_6	=	0x00ee
                           0000EF   349 _P5_7	=	0x00ef
                           000080   350 _P0_0	=	0x0080
                           000081   351 _P0_1	=	0x0081
                           000082   352 _P0_2	=	0x0082
                           000083   353 _P0_3	=	0x0083
                           000084   354 _P0_4	=	0x0084
                           000085   355 _P0_5	=	0x0085
                           000086   356 _P0_6	=	0x0086
                           000087   357 _P0_7	=	0x0087
                           000088   358 _IT0	=	0x0088
                           000089   359 _IE0	=	0x0089
                           00008A   360 _IT1	=	0x008a
                           00008B   361 _IE1	=	0x008b
                           00008C   362 _TR0	=	0x008c
                           00008D   363 _TF0	=	0x008d
                           00008E   364 _TR1	=	0x008e
                           00008F   365 _TF1	=	0x008f
                           000090   366 _P1_0	=	0x0090
                           000091   367 _P1_1	=	0x0091
                           000092   368 _P1_2	=	0x0092
                           000093   369 _P1_3	=	0x0093
                           000094   370 _P1_4	=	0x0094
                           000095   371 _P1_5	=	0x0095
                           000096   372 _P1_6	=	0x0096
                           000097   373 _P1_7	=	0x0097
                           000098   374 _RI	=	0x0098
                           000099   375 _TI	=	0x0099
                           00009A   376 _RB8	=	0x009a
                           00009B   377 _TB8	=	0x009b
                           00009C   378 _REN	=	0x009c
                           00009D   379 _SM2	=	0x009d
                           00009E   380 _SM1	=	0x009e
                           00009F   381 _SM0	=	0x009f
                           0000A0   382 _P2_0	=	0x00a0
                           0000A1   383 _P2_1	=	0x00a1
                           0000A2   384 _P2_2	=	0x00a2
                           0000A3   385 _P2_3	=	0x00a3
                           0000A4   386 _P2_4	=	0x00a4
                           0000A5   387 _P2_5	=	0x00a5
                           0000A6   388 _P2_6	=	0x00a6
                           0000A7   389 _P2_7	=	0x00a7
                           0000A8   390 _EX0	=	0x00a8
                           0000A9   391 _ET0	=	0x00a9
                           0000AA   392 _EX1	=	0x00aa
                           0000AB   393 _ET1	=	0x00ab
                           0000AC   394 _ES	=	0x00ac
                           0000AF   395 _EA	=	0x00af
                           0000B0   396 _P3_0	=	0x00b0
                           0000B1   397 _P3_1	=	0x00b1
                           0000B2   398 _P3_2	=	0x00b2
                           0000B3   399 _P3_3	=	0x00b3
                           0000B4   400 _P3_4	=	0x00b4
                           0000B5   401 _P3_5	=	0x00b5
                           0000B6   402 _P3_6	=	0x00b6
                           0000B7   403 _P3_7	=	0x00b7
                           0000B0   404 _RXD	=	0x00b0
                           0000B1   405 _TXD	=	0x00b1
                           0000B2   406 _INT0	=	0x00b2
                           0000B3   407 _INT1	=	0x00b3
                           0000B4   408 _T0	=	0x00b4
                           0000B5   409 _T1	=	0x00b5
                           0000B6   410 _WR	=	0x00b6
                           0000B7   411 _RD	=	0x00b7
                           0000B8   412 _PX0	=	0x00b8
                           0000B9   413 _PT0	=	0x00b9
                           0000BA   414 _PX1	=	0x00ba
                           0000BB   415 _PT1	=	0x00bb
                           0000BC   416 _PS	=	0x00bc
                           0000D0   417 _P	=	0x00d0
                           0000D1   418 _F1	=	0x00d1
                           0000D2   419 _OV	=	0x00d2
                           0000D3   420 _RS0	=	0x00d3
                           0000D4   421 _RS1	=	0x00d4
                           0000D5   422 _F0	=	0x00d5
                           0000D6   423 _AC	=	0x00d6
                           0000D7   424 _CY	=	0x00d7
                                    425 ;--------------------------------------------------------
                                    426 ; overlayable register banks
                                    427 ;--------------------------------------------------------
                                    428 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        429 	.ds 8
                                    430 ;--------------------------------------------------------
                                    431 ; internal ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area DSEG    (DATA)
                                    434 ;--------------------------------------------------------
                                    435 ; overlayable items in internal ram
                                    436 ;--------------------------------------------------------
                                    437 ;--------------------------------------------------------
                                    438 ; Stack segment in internal ram
                                    439 ;--------------------------------------------------------
                                    440 	.area	SSEG
      000021                        441 __start__stack:
      000021                        442 	.ds	1
                                    443 
                                    444 ;--------------------------------------------------------
                                    445 ; indirectly addressable internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area ISEG    (DATA)
                                    448 ;--------------------------------------------------------
                                    449 ; absolute internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area IABS    (ABS,DATA)
                                    452 	.area IABS    (ABS,DATA)
                                    453 ;--------------------------------------------------------
                                    454 ; bit data
                                    455 ;--------------------------------------------------------
                                    456 	.area BSEG    (BIT)
                                    457 ;--------------------------------------------------------
                                    458 ; paged external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area PSEG    (PAG,XDATA)
                                    461 ;--------------------------------------------------------
                                    462 ; external ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XSEG    (XDATA)
      000001                        465 _w_command_handler_address_65537_85:
      000001                        466 	.ds 2
      000003                        467 _w_command_handler_byte_65538_88:
      000003                        468 	.ds 2
      000005                        469 _r_command_handler_address_65537_94:
      000005                        470 	.ds 2
      000007                        471 _r_command_handler_byte_65538_97:
      000007                        472 	.ds 1
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
                                    492 ; interrupt vector
                                    493 ;--------------------------------------------------------
                                    494 	.area HOME    (CODE)
      002000                        495 __interrupt_vect:
      002000 02 20 34         [24]  496 	ljmp	__sdcc_gsinit_startup
                                    497 ;--------------------------------------------------------
                                    498 ; global & static initialisations
                                    499 ;--------------------------------------------------------
                                    500 	.area HOME    (CODE)
                                    501 	.area GSINIT  (CODE)
                                    502 	.area GSFINAL (CODE)
                                    503 	.area GSINIT  (CODE)
                                    504 	.globl __sdcc_gsinit_startup
                                    505 	.globl __sdcc_program_startup
                                    506 	.globl __start__stack
                                    507 	.globl __mcs51_genXINIT
                                    508 	.globl __mcs51_genXRAMCLEAR
                                    509 	.globl __mcs51_genRAMCLEAR
                                    510 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  511 	ljmp	__sdcc_program_startup
                                    512 ;--------------------------------------------------------
                                    513 ; Home
                                    514 ;--------------------------------------------------------
                                    515 	.area HOME    (CODE)
                                    516 	.area HOME    (CODE)
      002003                        517 __sdcc_program_startup:
      002003 02 22 B6         [24]  518 	ljmp	_main
                                    519 ;	return from main will return to caller
                                    520 ;--------------------------------------------------------
                                    521 ; code
                                    522 ;--------------------------------------------------------
                                    523 	.area CSEG    (CODE)
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    526 ;------------------------------------------------------------
                                    527 ;	src/main.c:28: int _sdcc_external_startup()
                                    528 ;	-----------------------------------------
                                    529 ;	 function _sdcc_external_startup
                                    530 ;	-----------------------------------------
      002090                        531 __sdcc_external_startup:
                           000007   532 	ar7 = 0x07
                           000006   533 	ar6 = 0x06
                           000005   534 	ar5 = 0x05
                           000004   535 	ar4 = 0x04
                           000003   536 	ar3 = 0x03
                           000002   537 	ar2 = 0x02
                           000001   538 	ar1 = 0x01
                           000000   539 	ar0 = 0x00
                                    540 ;	src/main.c:31: return 0;
      002090 90 00 00         [24]  541 	mov	dptr,#0x0000
                                    542 ;	src/main.c:32: }
      002093 22               [24]  543 	ret
                                    544 ;------------------------------------------------------------
                                    545 ;Allocation info for local variables in function 'w_command_handler'
                                    546 ;------------------------------------------------------------
                                    547 ;address                   Allocated with name '_w_command_handler_address_65537_85'
                                    548 ;byte                      Allocated with name '_w_command_handler_byte_65538_88'
                                    549 ;------------------------------------------------------------
                                    550 ;	src/main.c:37: void w_command_handler()
                                    551 ;	-----------------------------------------
                                    552 ;	 function w_command_handler
                                    553 ;	-----------------------------------------
      002094                        554 _w_command_handler:
                                    555 ;	src/main.c:39: printf("\r\nEnter an EEPROM address to write to in hex [0,7FF]: ");
      002094 74 51            [12]  556 	mov	a,#___str_0
      002096 C0 E0            [24]  557 	push	acc
      002098 74 3C            [12]  558 	mov	a,#(___str_0 >> 8)
      00209A C0 E0            [24]  559 	push	acc
      00209C 74 80            [12]  560 	mov	a,#0x80
      00209E C0 E0            [24]  561 	push	acc
      0020A0 12 30 44         [24]  562 	lcall	_printf
      0020A3 15 81            [12]  563 	dec	sp
      0020A5 15 81            [12]  564 	dec	sp
      0020A7 15 81            [12]  565 	dec	sp
                                    566 ;	src/main.c:40: int address = 0;
      0020A9 90 00 01         [24]  567 	mov	dptr,#_w_command_handler_address_65537_85
      0020AC E4               [12]  568 	clr	a
      0020AD F0               [24]  569 	movx	@dptr,a
      0020AE A3               [24]  570 	inc	dptr
      0020AF F0               [24]  571 	movx	@dptr,a
                                    572 ;	src/main.c:41: if (0 > get_hex_value(&address))
      0020B0 90 00 01         [24]  573 	mov	dptr,#_w_command_handler_address_65537_85
      0020B3 75 F0 00         [24]  574 	mov	b,#0x00
      0020B6 12 24 FA         [24]  575 	lcall	_get_hex_value
      0020B9 E5 83            [12]  576 	mov	a,dph
      0020BB 30 E7 16         [24]  577 	jnb	acc.7,00102$
                                    578 ;	src/main.c:43: printf("\r\n Failed to enter a hex integer, please try again");
      0020BE 74 88            [12]  579 	mov	a,#___str_1
      0020C0 C0 E0            [24]  580 	push	acc
      0020C2 74 3C            [12]  581 	mov	a,#(___str_1 >> 8)
      0020C4 C0 E0            [24]  582 	push	acc
      0020C6 74 80            [12]  583 	mov	a,#0x80
      0020C8 C0 E0            [24]  584 	push	acc
      0020CA 12 30 44         [24]  585 	lcall	_printf
      0020CD 15 81            [12]  586 	dec	sp
      0020CF 15 81            [12]  587 	dec	sp
      0020D1 15 81            [12]  588 	dec	sp
                                    589 ;	src/main.c:44: return;
      0020D3 22               [24]  590 	ret
      0020D4                        591 00102$:
                                    592 ;	src/main.c:46: printf("\r\n%x", address); 
      0020D4 90 00 01         [24]  593 	mov	dptr,#_w_command_handler_address_65537_85
      0020D7 E0               [24]  594 	movx	a,@dptr
      0020D8 C0 E0            [24]  595 	push	acc
      0020DA A3               [24]  596 	inc	dptr
      0020DB E0               [24]  597 	movx	a,@dptr
      0020DC C0 E0            [24]  598 	push	acc
      0020DE 74 BB            [12]  599 	mov	a,#___str_2
      0020E0 C0 E0            [24]  600 	push	acc
      0020E2 74 3C            [12]  601 	mov	a,#(___str_2 >> 8)
      0020E4 C0 E0            [24]  602 	push	acc
      0020E6 74 80            [12]  603 	mov	a,#0x80
      0020E8 C0 E0            [24]  604 	push	acc
      0020EA 12 30 44         [24]  605 	lcall	_printf
      0020ED E5 81            [12]  606 	mov	a,sp
      0020EF 24 FB            [12]  607 	add	a,#0xfb
      0020F1 F5 81            [12]  608 	mov	sp,a
                                    609 ;	src/main.c:47: if(address < 0 || address > 0x7FF)
      0020F3 90 00 01         [24]  610 	mov	dptr,#_w_command_handler_address_65537_85
      0020F6 E0               [24]  611 	movx	a,@dptr
      0020F7 FE               [12]  612 	mov	r6,a
      0020F8 A3               [24]  613 	inc	dptr
      0020F9 E0               [24]  614 	movx	a,@dptr
      0020FA FF               [12]  615 	mov	r7,a
      0020FB 20 E7 0F         [24]  616 	jb	acc.7,00103$
      0020FE C3               [12]  617 	clr	c
      0020FF 74 FF            [12]  618 	mov	a,#0xff
      002101 9E               [12]  619 	subb	a,r6
      002102 74 87            [12]  620 	mov	a,#(0x07 ^ 0x80)
      002104 8F F0            [24]  621 	mov	b,r7
      002106 63 F0 80         [24]  622 	xrl	b,#0x80
      002109 95 F0            [12]  623 	subb	a,b
      00210B 50 16            [24]  624 	jnc	00104$
      00210D                        625 00103$:
                                    626 ;	src/main.c:49: printf("\r\n Failed to enter an address within range, please try again");
      00210D 74 C0            [12]  627 	mov	a,#___str_3
      00210F C0 E0            [24]  628 	push	acc
      002111 74 3C            [12]  629 	mov	a,#(___str_3 >> 8)
      002113 C0 E0            [24]  630 	push	acc
      002115 74 80            [12]  631 	mov	a,#0x80
      002117 C0 E0            [24]  632 	push	acc
      002119 12 30 44         [24]  633 	lcall	_printf
      00211C 15 81            [12]  634 	dec	sp
      00211E 15 81            [12]  635 	dec	sp
      002120 15 81            [12]  636 	dec	sp
                                    637 ;	src/main.c:50: return;
      002122 22               [24]  638 	ret
      002123                        639 00104$:
                                    640 ;	src/main.c:52: printf("\r\nEnter a byte to write [0, FF]: ");
      002123 74 FD            [12]  641 	mov	a,#___str_4
      002125 C0 E0            [24]  642 	push	acc
      002127 74 3C            [12]  643 	mov	a,#(___str_4 >> 8)
      002129 C0 E0            [24]  644 	push	acc
      00212B 74 80            [12]  645 	mov	a,#0x80
      00212D C0 E0            [24]  646 	push	acc
      00212F 12 30 44         [24]  647 	lcall	_printf
      002132 15 81            [12]  648 	dec	sp
      002134 15 81            [12]  649 	dec	sp
      002136 15 81            [12]  650 	dec	sp
                                    651 ;	src/main.c:53: int byte = 0;
      002138 90 00 03         [24]  652 	mov	dptr,#_w_command_handler_byte_65538_88
      00213B E4               [12]  653 	clr	a
      00213C F0               [24]  654 	movx	@dptr,a
      00213D A3               [24]  655 	inc	dptr
      00213E F0               [24]  656 	movx	@dptr,a
                                    657 ;	src/main.c:54: if (0 > get_hex_value(&byte))
      00213F 90 00 03         [24]  658 	mov	dptr,#_w_command_handler_byte_65538_88
      002142 75 F0 00         [24]  659 	mov	b,#0x00
      002145 12 24 FA         [24]  660 	lcall	_get_hex_value
      002148 E5 83            [12]  661 	mov	a,dph
      00214A 30 E7 16         [24]  662 	jnb	acc.7,00107$
                                    663 ;	src/main.c:56: printf("\r\n Failed to enter a hex integer, please try again");
      00214D 74 88            [12]  664 	mov	a,#___str_1
      00214F C0 E0            [24]  665 	push	acc
      002151 74 3C            [12]  666 	mov	a,#(___str_1 >> 8)
      002153 C0 E0            [24]  667 	push	acc
      002155 74 80            [12]  668 	mov	a,#0x80
      002157 C0 E0            [24]  669 	push	acc
      002159 12 30 44         [24]  670 	lcall	_printf
      00215C 15 81            [12]  671 	dec	sp
      00215E 15 81            [12]  672 	dec	sp
      002160 15 81            [12]  673 	dec	sp
                                    674 ;	src/main.c:57: return;
      002162 22               [24]  675 	ret
      002163                        676 00107$:
                                    677 ;	src/main.c:59: if(byte < 0 || byte > 0xFF)
      002163 90 00 03         [24]  678 	mov	dptr,#_w_command_handler_byte_65538_88
      002166 E0               [24]  679 	movx	a,@dptr
      002167 FE               [12]  680 	mov	r6,a
      002168 A3               [24]  681 	inc	dptr
      002169 E0               [24]  682 	movx	a,@dptr
      00216A FF               [12]  683 	mov	r7,a
      00216B 20 E7 0F         [24]  684 	jb	acc.7,00108$
      00216E C3               [12]  685 	clr	c
      00216F 74 FF            [12]  686 	mov	a,#0xff
      002171 9E               [12]  687 	subb	a,r6
      002172 74 80            [12]  688 	mov	a,#(0x00 ^ 0x80)
      002174 8F F0            [24]  689 	mov	b,r7
      002176 63 F0 80         [24]  690 	xrl	b,#0x80
      002179 95 F0            [12]  691 	subb	a,b
      00217B 50 16            [24]  692 	jnc	00109$
      00217D                        693 00108$:
                                    694 ;	src/main.c:61: printf("\r\n Failed to enter a value that's byte size, please try again");
      00217D 74 1F            [12]  695 	mov	a,#___str_5
      00217F C0 E0            [24]  696 	push	acc
      002181 74 3D            [12]  697 	mov	a,#(___str_5 >> 8)
      002183 C0 E0            [24]  698 	push	acc
      002185 74 80            [12]  699 	mov	a,#0x80
      002187 C0 E0            [24]  700 	push	acc
      002189 12 30 44         [24]  701 	lcall	_printf
      00218C 15 81            [12]  702 	dec	sp
      00218E 15 81            [12]  703 	dec	sp
      002190 15 81            [12]  704 	dec	sp
                                    705 ;	src/main.c:62: return;
      002192 22               [24]  706 	ret
      002193                        707 00109$:
                                    708 ;	src/main.c:64: if (0 != eepromwritebyte(address, (uint8_t)byte))
      002193 90 00 01         [24]  709 	mov	dptr,#_w_command_handler_address_65537_85
      002196 E0               [24]  710 	movx	a,@dptr
      002197 FC               [12]  711 	mov	r4,a
      002198 A3               [24]  712 	inc	dptr
      002199 E0               [24]  713 	movx	a,@dptr
      00219A FD               [12]  714 	mov	r5,a
      00219B 90 20 5F         [24]  715 	mov	dptr,#_eepromwritebyte_PARM_2
      00219E EE               [12]  716 	mov	a,r6
      00219F F0               [24]  717 	movx	@dptr,a
      0021A0 8C 82            [24]  718 	mov	dpl,r4
      0021A2 8D 83            [24]  719 	mov	dph,r5
      0021A4 12 2D 2E         [24]  720 	lcall	_eepromwritebyte
      0021A7 E5 82            [12]  721 	mov	a,dpl
      0021A9 85 83 F0         [24]  722 	mov	b,dph
      0021AC 45 F0            [12]  723 	orl	a,b
      0021AE 60 16            [24]  724 	jz	00112$
                                    725 ;	src/main.c:66: printf("\r\nFailed to write to the eeprom");
      0021B0 74 5D            [12]  726 	mov	a,#___str_6
      0021B2 C0 E0            [24]  727 	push	acc
      0021B4 74 3D            [12]  728 	mov	a,#(___str_6 >> 8)
      0021B6 C0 E0            [24]  729 	push	acc
      0021B8 74 80            [12]  730 	mov	a,#0x80
      0021BA C0 E0            [24]  731 	push	acc
      0021BC 12 30 44         [24]  732 	lcall	_printf
      0021BF 15 81            [12]  733 	dec	sp
      0021C1 15 81            [12]  734 	dec	sp
      0021C3 15 81            [12]  735 	dec	sp
      0021C5 22               [24]  736 	ret
      0021C6                        737 00112$:
                                    738 ;	src/main.c:70: printf("\r\n Success: wrote to the eeprom");
      0021C6 74 7D            [12]  739 	mov	a,#___str_7
      0021C8 C0 E0            [24]  740 	push	acc
      0021CA 74 3D            [12]  741 	mov	a,#(___str_7 >> 8)
      0021CC C0 E0            [24]  742 	push	acc
      0021CE 74 80            [12]  743 	mov	a,#0x80
      0021D0 C0 E0            [24]  744 	push	acc
      0021D2 12 30 44         [24]  745 	lcall	_printf
      0021D5 15 81            [12]  746 	dec	sp
      0021D7 15 81            [12]  747 	dec	sp
      0021D9 15 81            [12]  748 	dec	sp
                                    749 ;	src/main.c:72: }
      0021DB 22               [24]  750 	ret
                                    751 ;------------------------------------------------------------
                                    752 ;Allocation info for local variables in function 'r_command_handler'
                                    753 ;------------------------------------------------------------
                                    754 ;address                   Allocated with name '_r_command_handler_address_65537_94'
                                    755 ;byte                      Allocated with name '_r_command_handler_byte_65538_97'
                                    756 ;------------------------------------------------------------
                                    757 ;	src/main.c:75: void r_command_handler()
                                    758 ;	-----------------------------------------
                                    759 ;	 function r_command_handler
                                    760 ;	-----------------------------------------
      0021DC                        761 _r_command_handler:
                                    762 ;	src/main.c:77: printf("\r\nEnter an EEPROM address to read from in hex [0,7FF]: ");
      0021DC 74 9D            [12]  763 	mov	a,#___str_8
      0021DE C0 E0            [24]  764 	push	acc
      0021E0 74 3D            [12]  765 	mov	a,#(___str_8 >> 8)
      0021E2 C0 E0            [24]  766 	push	acc
      0021E4 74 80            [12]  767 	mov	a,#0x80
      0021E6 C0 E0            [24]  768 	push	acc
      0021E8 12 30 44         [24]  769 	lcall	_printf
      0021EB 15 81            [12]  770 	dec	sp
      0021ED 15 81            [12]  771 	dec	sp
      0021EF 15 81            [12]  772 	dec	sp
                                    773 ;	src/main.c:78: int address = 0;
      0021F1 90 00 05         [24]  774 	mov	dptr,#_r_command_handler_address_65537_94
      0021F4 E4               [12]  775 	clr	a
      0021F5 F0               [24]  776 	movx	@dptr,a
      0021F6 A3               [24]  777 	inc	dptr
      0021F7 F0               [24]  778 	movx	@dptr,a
                                    779 ;	src/main.c:79: if (0 > get_hex_value(&address))
      0021F8 90 00 05         [24]  780 	mov	dptr,#_r_command_handler_address_65537_94
      0021FB 75 F0 00         [24]  781 	mov	b,#0x00
      0021FE 12 24 FA         [24]  782 	lcall	_get_hex_value
      002201 E5 83            [12]  783 	mov	a,dph
      002203 30 E7 16         [24]  784 	jnb	acc.7,00102$
                                    785 ;	src/main.c:81: printf("\r\n Failed to enter a hex integer, please try again");
      002206 74 88            [12]  786 	mov	a,#___str_1
      002208 C0 E0            [24]  787 	push	acc
      00220A 74 3C            [12]  788 	mov	a,#(___str_1 >> 8)
      00220C C0 E0            [24]  789 	push	acc
      00220E 74 80            [12]  790 	mov	a,#0x80
      002210 C0 E0            [24]  791 	push	acc
      002212 12 30 44         [24]  792 	lcall	_printf
      002215 15 81            [12]  793 	dec	sp
      002217 15 81            [12]  794 	dec	sp
      002219 15 81            [12]  795 	dec	sp
                                    796 ;	src/main.c:82: return;
      00221B 22               [24]  797 	ret
      00221C                        798 00102$:
                                    799 ;	src/main.c:84: if(address < 0 || address > 0x7FF)
      00221C 90 00 05         [24]  800 	mov	dptr,#_r_command_handler_address_65537_94
      00221F E0               [24]  801 	movx	a,@dptr
      002220 FE               [12]  802 	mov	r6,a
      002221 A3               [24]  803 	inc	dptr
      002222 E0               [24]  804 	movx	a,@dptr
      002223 FF               [12]  805 	mov	r7,a
      002224 20 E7 0F         [24]  806 	jb	acc.7,00103$
      002227 C3               [12]  807 	clr	c
      002228 74 FF            [12]  808 	mov	a,#0xff
      00222A 9E               [12]  809 	subb	a,r6
      00222B 74 87            [12]  810 	mov	a,#(0x07 ^ 0x80)
      00222D 8F F0            [24]  811 	mov	b,r7
      00222F 63 F0 80         [24]  812 	xrl	b,#0x80
      002232 95 F0            [12]  813 	subb	a,b
      002234 50 16            [24]  814 	jnc	00104$
      002236                        815 00103$:
                                    816 ;	src/main.c:86: printf("\r\n Failed to enter an address within range, please try again");
      002236 74 C0            [12]  817 	mov	a,#___str_3
      002238 C0 E0            [24]  818 	push	acc
      00223A 74 3C            [12]  819 	mov	a,#(___str_3 >> 8)
      00223C C0 E0            [24]  820 	push	acc
      00223E 74 80            [12]  821 	mov	a,#0x80
      002240 C0 E0            [24]  822 	push	acc
      002242 12 30 44         [24]  823 	lcall	_printf
      002245 15 81            [12]  824 	dec	sp
      002247 15 81            [12]  825 	dec	sp
      002249 15 81            [12]  826 	dec	sp
                                    827 ;	src/main.c:87: return;
      00224B 22               [24]  828 	ret
      00224C                        829 00104$:
                                    830 ;	src/main.c:90: if (0 != eepromreadbyte(address, &byte))
      00224C 90 20 62         [24]  831 	mov	dptr,#_eepromreadbyte_PARM_2
      00224F 74 07            [12]  832 	mov	a,#_r_command_handler_byte_65538_97
      002251 F0               [24]  833 	movx	@dptr,a
      002252 74 00            [12]  834 	mov	a,#(_r_command_handler_byte_65538_97 >> 8)
      002254 A3               [24]  835 	inc	dptr
      002255 F0               [24]  836 	movx	@dptr,a
      002256 E4               [12]  837 	clr	a
      002257 A3               [24]  838 	inc	dptr
      002258 F0               [24]  839 	movx	@dptr,a
      002259 8E 82            [24]  840 	mov	dpl,r6
      00225B 8F 83            [24]  841 	mov	dph,r7
      00225D 12 2D AF         [24]  842 	lcall	_eepromreadbyte
      002260 E5 82            [12]  843 	mov	a,dpl
      002262 85 83 F0         [24]  844 	mov	b,dph
      002265 45 F0            [12]  845 	orl	a,b
      002267 60 16            [24]  846 	jz	00107$
                                    847 ;	src/main.c:92: printf("\r\nFailed to read from the eeprom");
      002269 74 D5            [12]  848 	mov	a,#___str_9
      00226B C0 E0            [24]  849 	push	acc
      00226D 74 3D            [12]  850 	mov	a,#(___str_9 >> 8)
      00226F C0 E0            [24]  851 	push	acc
      002271 74 80            [12]  852 	mov	a,#0x80
      002273 C0 E0            [24]  853 	push	acc
      002275 12 30 44         [24]  854 	lcall	_printf
      002278 15 81            [12]  855 	dec	sp
      00227A 15 81            [12]  856 	dec	sp
      00227C 15 81            [12]  857 	dec	sp
      00227E 22               [24]  858 	ret
      00227F                        859 00107$:
                                    860 ;	src/main.c:96: printf("\r\n Success: read 0x%hhx from the eeprom", byte);
      00227F 90 00 07         [24]  861 	mov	dptr,#_r_command_handler_byte_65538_97
      002282 E0               [24]  862 	movx	a,@dptr
      002283 FF               [12]  863 	mov	r7,a
      002284 7E 00            [12]  864 	mov	r6,#0x00
      002286 C0 07            [24]  865 	push	ar7
      002288 C0 06            [24]  866 	push	ar6
      00228A 74 F6            [12]  867 	mov	a,#___str_10
      00228C C0 E0            [24]  868 	push	acc
      00228E 74 3D            [12]  869 	mov	a,#(___str_10 >> 8)
      002290 C0 E0            [24]  870 	push	acc
      002292 74 80            [12]  871 	mov	a,#0x80
      002294 C0 E0            [24]  872 	push	acc
      002296 12 30 44         [24]  873 	lcall	_printf
      002299 E5 81            [12]  874 	mov	a,sp
      00229B 24 FB            [12]  875 	add	a,#0xfb
      00229D F5 81            [12]  876 	mov	sp,a
                                    877 ;	src/main.c:98: }
      00229F 22               [24]  878 	ret
                                    879 ;------------------------------------------------------------
                                    880 ;Allocation info for local variables in function 'print_dashed_line'
                                    881 ;------------------------------------------------------------
                                    882 ;	src/main.c:100: void print_dashed_line()
                                    883 ;	-----------------------------------------
                                    884 ;	 function print_dashed_line
                                    885 ;	-----------------------------------------
      0022A0                        886 _print_dashed_line:
                                    887 ;	src/main.c:102: printf("\r\n---------------------------------------------------");
      0022A0 74 1E            [12]  888 	mov	a,#___str_11
      0022A2 C0 E0            [24]  889 	push	acc
      0022A4 74 3E            [12]  890 	mov	a,#(___str_11 >> 8)
      0022A6 C0 E0            [24]  891 	push	acc
      0022A8 74 80            [12]  892 	mov	a,#0x80
      0022AA C0 E0            [24]  893 	push	acc
      0022AC 12 30 44         [24]  894 	lcall	_printf
      0022AF 15 81            [12]  895 	dec	sp
      0022B1 15 81            [12]  896 	dec	sp
      0022B3 15 81            [12]  897 	dec	sp
                                    898 ;	src/main.c:103: }
      0022B5 22               [24]  899 	ret
                                    900 ;------------------------------------------------------------
                                    901 ;Allocation info for local variables in function 'main'
                                    902 ;------------------------------------------------------------
                                    903 ;received_char             Allocated with name '_main_received_char_196609_104'
                                    904 ;------------------------------------------------------------
                                    905 ;	src/main.c:107: void main()
                                    906 ;	-----------------------------------------
                                    907 ;	 function main
                                    908 ;	-----------------------------------------
      0022B6                        909 _main:
                                    910 ;	src/main.c:109: eeprom_init();
      0022B6 12 2D 2B         [24]  911 	lcall	_eeprom_init
      0022B9                        912 00108$:
                                    913 ;	src/main.c:112: printf("\r\nEnter a command char (? for help): ");
      0022B9 74 54            [12]  914 	mov	a,#___str_12
      0022BB C0 E0            [24]  915 	push	acc
      0022BD 74 3E            [12]  916 	mov	a,#(___str_12 >> 8)
      0022BF C0 E0            [24]  917 	push	acc
      0022C1 74 80            [12]  918 	mov	a,#0x80
      0022C3 C0 E0            [24]  919 	push	acc
      0022C5 12 30 44         [24]  920 	lcall	_printf
      0022C8 15 81            [12]  921 	dec	sp
      0022CA 15 81            [12]  922 	dec	sp
      0022CC 15 81            [12]  923 	dec	sp
                                    924 ;	src/main.c:113: char received_char = getchar();
      0022CE 12 23 8E         [24]  925 	lcall	_getchar
      0022D1 AE 82            [24]  926 	mov	r6,dpl
                                    927 ;	src/main.c:114: putchar(received_char);
      0022D3 8E 05            [24]  928 	mov	ar5,r6
      0022D5 7F 00            [12]  929 	mov	r7,#0x00
      0022D7 8D 82            [24]  930 	mov	dpl,r5
      0022D9 8F 83            [24]  931 	mov	dph,r7
      0022DB C0 06            [24]  932 	push	ar6
      0022DD 12 23 6F         [24]  933 	lcall	_putchar
      0022E0 D0 06            [24]  934 	pop	ar6
                                    935 ;	src/main.c:115: switch(received_char)
      0022E2 BE 3F 02         [24]  936 	cjne	r6,#0x3f,00127$
      0022E5 80 0A            [24]  937 	sjmp	00101$
      0022E7                        938 00127$:
      0022E7 BE 72 02         [24]  939 	cjne	r6,#0x72,00128$
      0022EA 80 4B            [24]  940 	sjmp	00103$
      0022EC                        941 00128$:
                                    942 ;	src/main.c:117: case '?':
      0022EC BE 77 4D         [24]  943 	cjne	r6,#0x77,00104$
      0022EF 80 41            [24]  944 	sjmp	00102$
      0022F1                        945 00101$:
                                    946 ;	src/main.c:118: printf("\r\nw - write a byte");
      0022F1 74 7A            [12]  947 	mov	a,#___str_13
      0022F3 C0 E0            [24]  948 	push	acc
      0022F5 74 3E            [12]  949 	mov	a,#(___str_13 >> 8)
      0022F7 C0 E0            [24]  950 	push	acc
      0022F9 74 80            [12]  951 	mov	a,#0x80
      0022FB C0 E0            [24]  952 	push	acc
      0022FD 12 30 44         [24]  953 	lcall	_printf
      002300 15 81            [12]  954 	dec	sp
      002302 15 81            [12]  955 	dec	sp
      002304 15 81            [12]  956 	dec	sp
                                    957 ;	src/main.c:119: printf("\r\nr - read a byte");
      002306 74 8D            [12]  958 	mov	a,#___str_14
      002308 C0 E0            [24]  959 	push	acc
      00230A 74 3E            [12]  960 	mov	a,#(___str_14 >> 8)
      00230C C0 E0            [24]  961 	push	acc
      00230E 74 80            [12]  962 	mov	a,#0x80
      002310 C0 E0            [24]  963 	push	acc
      002312 12 30 44         [24]  964 	lcall	_printf
      002315 15 81            [12]  965 	dec	sp
      002317 15 81            [12]  966 	dec	sp
      002319 15 81            [12]  967 	dec	sp
                                    968 ;	src/main.c:120: printf("\r\n");
      00231B 74 9F            [12]  969 	mov	a,#___str_15
      00231D C0 E0            [24]  970 	push	acc
      00231F 74 3E            [12]  971 	mov	a,#(___str_15 >> 8)
      002321 C0 E0            [24]  972 	push	acc
      002323 74 80            [12]  973 	mov	a,#0x80
      002325 C0 E0            [24]  974 	push	acc
      002327 12 30 44         [24]  975 	lcall	_printf
      00232A 15 81            [12]  976 	dec	sp
      00232C 15 81            [12]  977 	dec	sp
      00232E 15 81            [12]  978 	dec	sp
                                    979 ;	src/main.c:121: break;
                                    980 ;	src/main.c:122: case 'w':
      002330 80 22            [24]  981 	sjmp	00105$
      002332                        982 00102$:
                                    983 ;	src/main.c:123: w_command_handler();
      002332 12 20 94         [24]  984 	lcall	_w_command_handler
                                    985 ;	src/main.c:124: break;
                                    986 ;	src/main.c:125: case 'r':
      002335 80 1D            [24]  987 	sjmp	00105$
      002337                        988 00103$:
                                    989 ;	src/main.c:126: r_command_handler();
      002337 12 21 DC         [24]  990 	lcall	_r_command_handler
                                    991 ;	src/main.c:127: break;
                                    992 ;	src/main.c:128: default:
      00233A 80 18            [24]  993 	sjmp	00105$
      00233C                        994 00104$:
                                    995 ;	src/main.c:129: printf("\r\nUnrecognized command, please enter a valid command char");
      00233C 74 A2            [12]  996 	mov	a,#___str_16
      00233E C0 E0            [24]  997 	push	acc
      002340 74 3E            [12]  998 	mov	a,#(___str_16 >> 8)
      002342 C0 E0            [24]  999 	push	acc
      002344 74 80            [12] 1000 	mov	a,#0x80
      002346 C0 E0            [24] 1001 	push	acc
      002348 12 30 44         [24] 1002 	lcall	_printf
      00234B 15 81            [12] 1003 	dec	sp
      00234D 15 81            [12] 1004 	dec	sp
      00234F 15 81            [12] 1005 	dec	sp
                                   1006 ;	src/main.c:130: continue; //no command, don't print the end command line
      002351 02 22 B9         [24] 1007 	ljmp	00108$
                                   1008 ;	src/main.c:131: }
      002354                       1009 00105$:
                                   1010 ;	src/main.c:132: printf("\r\nEND COMMAND");
      002354 74 DC            [12] 1011 	mov	a,#___str_17
      002356 C0 E0            [24] 1012 	push	acc
      002358 74 3E            [12] 1013 	mov	a,#(___str_17 >> 8)
      00235A C0 E0            [24] 1014 	push	acc
      00235C 74 80            [12] 1015 	mov	a,#0x80
      00235E C0 E0            [24] 1016 	push	acc
      002360 12 30 44         [24] 1017 	lcall	_printf
      002363 15 81            [12] 1018 	dec	sp
      002365 15 81            [12] 1019 	dec	sp
      002367 15 81            [12] 1020 	dec	sp
                                   1021 ;	src/main.c:133: print_dashed_line();
      002369 12 22 A0         [24] 1022 	lcall	_print_dashed_line
                                   1023 ;	src/main.c:135: }
      00236C 02 22 B9         [24] 1024 	ljmp	00108$
                                   1025 	.area CSEG    (CODE)
                                   1026 	.area CONST   (CODE)
                                   1027 	.area CONST   (CODE)
      003C51                       1028 ___str_0:
      003C51 0D                    1029 	.db 0x0d
      003C52 0A                    1030 	.db 0x0a
      003C53 45 6E 74 65 72 20 61  1031 	.ascii "Enter an EEPROM address to write to in hex [0,7FF]: "
             6E 20 45 45 50 52 4F
             4D 20 61 64 64 72 65
             73 73 20 74 6F 20 77
             72 69 74 65 20 74 6F
             20 69 6E 20 68 65 78
             20 5B 30 2C 37 46 46
             5D 3A 20
      003C87 00                    1032 	.db 0x00
                                   1033 	.area CSEG    (CODE)
                                   1034 	.area CONST   (CODE)
      003C88                       1035 ___str_1:
      003C88 0D                    1036 	.db 0x0d
      003C89 0A                    1037 	.db 0x0a
      003C8A 20 46 61 69 6C 65 64  1038 	.ascii " Failed to enter a hex integer, please try again"
             20 74 6F 20 65 6E 74
             65 72 20 61 20 68 65
             78 20 69 6E 74 65 67
             65 72 2C 20 70 6C 65
             61 73 65 20 74 72 79
             20 61 67 61 69 6E
      003CBA 00                    1039 	.db 0x00
                                   1040 	.area CSEG    (CODE)
                                   1041 	.area CONST   (CODE)
      003CBB                       1042 ___str_2:
      003CBB 0D                    1043 	.db 0x0d
      003CBC 0A                    1044 	.db 0x0a
      003CBD 25 78                 1045 	.ascii "%x"
      003CBF 00                    1046 	.db 0x00
                                   1047 	.area CSEG    (CODE)
                                   1048 	.area CONST   (CODE)
      003CC0                       1049 ___str_3:
      003CC0 0D                    1050 	.db 0x0d
      003CC1 0A                    1051 	.db 0x0a
      003CC2 20 46 61 69 6C 65 64  1052 	.ascii " Failed to enter an address within range, please try again"
             20 74 6F 20 65 6E 74
             65 72 20 61 6E 20 61
             64 64 72 65 73 73 20
             77 69 74 68 69 6E 20
             72 61 6E 67 65 2C 20
             70 6C 65 61 73 65 20
             74 72 79 20 61 67 61
             69 6E
      003CFC 00                    1053 	.db 0x00
                                   1054 	.area CSEG    (CODE)
                                   1055 	.area CONST   (CODE)
      003CFD                       1056 ___str_4:
      003CFD 0D                    1057 	.db 0x0d
      003CFE 0A                    1058 	.db 0x0a
      003CFF 45 6E 74 65 72 20 61  1059 	.ascii "Enter a byte to write [0, FF]: "
             20 62 79 74 65 20 74
             6F 20 77 72 69 74 65
             20 5B 30 2C 20 46 46
             5D 3A 20
      003D1E 00                    1060 	.db 0x00
                                   1061 	.area CSEG    (CODE)
                                   1062 	.area CONST   (CODE)
      003D1F                       1063 ___str_5:
      003D1F 0D                    1064 	.db 0x0d
      003D20 0A                    1065 	.db 0x0a
      003D21 20 46 61 69 6C 65 64  1066 	.ascii " Failed to enter a value that's byte size, please try again"
             20 74 6F 20 65 6E 74
             65 72 20 61 20 76 61
             6C 75 65 20 74 68 61
             74 27 73 20 62 79 74
             65 20 73 69 7A 65 2C
             20 70 6C 65 61 73 65
             20 74 72 79 20 61 67
             61 69 6E
      003D5C 00                    1067 	.db 0x00
                                   1068 	.area CSEG    (CODE)
                                   1069 	.area CONST   (CODE)
      003D5D                       1070 ___str_6:
      003D5D 0D                    1071 	.db 0x0d
      003D5E 0A                    1072 	.db 0x0a
      003D5F 46 61 69 6C 65 64 20  1073 	.ascii "Failed to write to the eeprom"
             74 6F 20 77 72 69 74
             65 20 74 6F 20 74 68
             65 20 65 65 70 72 6F
             6D
      003D7C 00                    1074 	.db 0x00
                                   1075 	.area CSEG    (CODE)
                                   1076 	.area CONST   (CODE)
      003D7D                       1077 ___str_7:
      003D7D 0D                    1078 	.db 0x0d
      003D7E 0A                    1079 	.db 0x0a
      003D7F 20 53 75 63 63 65 73  1080 	.ascii " Success: wrote to the eeprom"
             73 3A 20 77 72 6F 74
             65 20 74 6F 20 74 68
             65 20 65 65 70 72 6F
             6D
      003D9C 00                    1081 	.db 0x00
                                   1082 	.area CSEG    (CODE)
                                   1083 	.area CONST   (CODE)
      003D9D                       1084 ___str_8:
      003D9D 0D                    1085 	.db 0x0d
      003D9E 0A                    1086 	.db 0x0a
      003D9F 45 6E 74 65 72 20 61  1087 	.ascii "Enter an EEPROM address to read from in hex [0,7FF]: "
             6E 20 45 45 50 52 4F
             4D 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 20 66 72 6F
             6D 20 69 6E 20 68 65
             78 20 5B 30 2C 37 46
             46 5D 3A 20
      003DD4 00                    1088 	.db 0x00
                                   1089 	.area CSEG    (CODE)
                                   1090 	.area CONST   (CODE)
      003DD5                       1091 ___str_9:
      003DD5 0D                    1092 	.db 0x0d
      003DD6 0A                    1093 	.db 0x0a
      003DD7 46 61 69 6C 65 64 20  1094 	.ascii "Failed to read from the eeprom"
             74 6F 20 72 65 61 64
             20 66 72 6F 6D 20 74
             68 65 20 65 65 70 72
             6F 6D
      003DF5 00                    1095 	.db 0x00
                                   1096 	.area CSEG    (CODE)
                                   1097 	.area CONST   (CODE)
      003DF6                       1098 ___str_10:
      003DF6 0D                    1099 	.db 0x0d
      003DF7 0A                    1100 	.db 0x0a
      003DF8 20 53 75 63 63 65 73  1101 	.ascii " Success: read 0x%hhx from the eeprom"
             73 3A 20 72 65 61 64
             20 30 78 25 68 68 78
             20 66 72 6F 6D 20 74
             68 65 20 65 65 70 72
             6F 6D
      003E1D 00                    1102 	.db 0x00
                                   1103 	.area CSEG    (CODE)
                                   1104 	.area CONST   (CODE)
      003E1E                       1105 ___str_11:
      003E1E 0D                    1106 	.db 0x0d
      003E1F 0A                    1107 	.db 0x0a
      003E20 2D 2D 2D 2D 2D 2D 2D  1108 	.ascii "---------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D
      003E53 00                    1109 	.db 0x00
                                   1110 	.area CSEG    (CODE)
                                   1111 	.area CONST   (CODE)
      003E54                       1112 ___str_12:
      003E54 0D                    1113 	.db 0x0d
      003E55 0A                    1114 	.db 0x0a
      003E56 45 6E 74 65 72 20 61  1115 	.ascii "Enter a command char (? for help): "
             20 63 6F 6D 6D 61 6E
             64 20 63 68 61 72 20
             28 3F 20 66 6F 72 20
             68 65 6C 70 29 3A 20
      003E79 00                    1116 	.db 0x00
                                   1117 	.area CSEG    (CODE)
                                   1118 	.area CONST   (CODE)
      003E7A                       1119 ___str_13:
      003E7A 0D                    1120 	.db 0x0d
      003E7B 0A                    1121 	.db 0x0a
      003E7C 77 20 2D 20 77 72 69  1122 	.ascii "w - write a byte"
             74 65 20 61 20 62 79
             74 65
      003E8C 00                    1123 	.db 0x00
                                   1124 	.area CSEG    (CODE)
                                   1125 	.area CONST   (CODE)
      003E8D                       1126 ___str_14:
      003E8D 0D                    1127 	.db 0x0d
      003E8E 0A                    1128 	.db 0x0a
      003E8F 72 20 2D 20 72 65 61  1129 	.ascii "r - read a byte"
             64 20 61 20 62 79 74
             65
      003E9E 00                    1130 	.db 0x00
                                   1131 	.area CSEG    (CODE)
                                   1132 	.area CONST   (CODE)
      003E9F                       1133 ___str_15:
      003E9F 0D                    1134 	.db 0x0d
      003EA0 0A                    1135 	.db 0x0a
      003EA1 00                    1136 	.db 0x00
                                   1137 	.area CSEG    (CODE)
                                   1138 	.area CONST   (CODE)
      003EA2                       1139 ___str_16:
      003EA2 0D                    1140 	.db 0x0d
      003EA3 0A                    1141 	.db 0x0a
      003EA4 55 6E 72 65 63 6F 67  1142 	.ascii "Unrecognized command, please enter a valid command char"
             6E 69 7A 65 64 20 63
             6F 6D 6D 61 6E 64 2C
             20 70 6C 65 61 73 65
             20 65 6E 74 65 72 20
             61 20 76 61 6C 69 64
             20 63 6F 6D 6D 61 6E
             64 20 63 68 61 72
      003EDB 00                    1143 	.db 0x00
                                   1144 	.area CSEG    (CODE)
                                   1145 	.area CONST   (CODE)
      003EDC                       1146 ___str_17:
      003EDC 0D                    1147 	.db 0x0d
      003EDD 0A                    1148 	.db 0x0a
      003EDE 45 4E 44 20 43 4F 4D  1149 	.ascii "END COMMAND"
             4D 41 4E 44
      003EE9 00                    1150 	.db 0x00
                                   1151 	.area CSEG    (CODE)
                                   1152 	.area XINIT   (CODE)
                                   1153 	.area CABS    (ABS,CODE)
