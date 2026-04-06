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
                                     12 	.globl _x_command_handler
                                     13 	.globl _print_dashed_line
                                     14 	.globl _r_command_handler
                                     15 	.globl _w_command_handler
                                     16 	.globl __sdcc_external_startup
                                     17 	.globl _eeprom_init
                                     18 	.globl _eepromreadbyte
                                     19 	.globl _eepromwritebyte
                                     20 	.globl _get_hex_value
                                     21 	.globl _putchar
                                     22 	.globl _getchar
                                     23 	.globl _printf
                                     24 	.globl _CY
                                     25 	.globl _AC
                                     26 	.globl _F0
                                     27 	.globl _RS1
                                     28 	.globl _RS0
                                     29 	.globl _OV
                                     30 	.globl _F1
                                     31 	.globl _P
                                     32 	.globl _PS
                                     33 	.globl _PT1
                                     34 	.globl _PX1
                                     35 	.globl _PT0
                                     36 	.globl _PX0
                                     37 	.globl _RD
                                     38 	.globl _WR
                                     39 	.globl _T1
                                     40 	.globl _T0
                                     41 	.globl _INT1
                                     42 	.globl _INT0
                                     43 	.globl _TXD
                                     44 	.globl _RXD
                                     45 	.globl _P3_7
                                     46 	.globl _P3_6
                                     47 	.globl _P3_5
                                     48 	.globl _P3_4
                                     49 	.globl _P3_3
                                     50 	.globl _P3_2
                                     51 	.globl _P3_1
                                     52 	.globl _P3_0
                                     53 	.globl _EA
                                     54 	.globl _ES
                                     55 	.globl _ET1
                                     56 	.globl _EX1
                                     57 	.globl _ET0
                                     58 	.globl _EX0
                                     59 	.globl _P2_7
                                     60 	.globl _P2_6
                                     61 	.globl _P2_5
                                     62 	.globl _P2_4
                                     63 	.globl _P2_3
                                     64 	.globl _P2_2
                                     65 	.globl _P2_1
                                     66 	.globl _P2_0
                                     67 	.globl _SM0
                                     68 	.globl _SM1
                                     69 	.globl _SM2
                                     70 	.globl _REN
                                     71 	.globl _TB8
                                     72 	.globl _RB8
                                     73 	.globl _TI
                                     74 	.globl _RI
                                     75 	.globl _P1_7
                                     76 	.globl _P1_6
                                     77 	.globl _P1_5
                                     78 	.globl _P1_4
                                     79 	.globl _P1_3
                                     80 	.globl _P1_2
                                     81 	.globl _P1_1
                                     82 	.globl _P1_0
                                     83 	.globl _TF1
                                     84 	.globl _TR1
                                     85 	.globl _TF0
                                     86 	.globl _TR0
                                     87 	.globl _IE1
                                     88 	.globl _IT1
                                     89 	.globl _IE0
                                     90 	.globl _IT0
                                     91 	.globl _P0_7
                                     92 	.globl _P0_6
                                     93 	.globl _P0_5
                                     94 	.globl _P0_4
                                     95 	.globl _P0_3
                                     96 	.globl _P0_2
                                     97 	.globl _P0_1
                                     98 	.globl _P0_0
                                     99 	.globl _P5_7
                                    100 	.globl _P5_6
                                    101 	.globl _P5_5
                                    102 	.globl _P5_4
                                    103 	.globl _P5_3
                                    104 	.globl _P5_2
                                    105 	.globl _P5_1
                                    106 	.globl _P5_0
                                    107 	.globl _P4_7
                                    108 	.globl _P4_6
                                    109 	.globl _P4_5
                                    110 	.globl _P4_4
                                    111 	.globl _P4_3
                                    112 	.globl _P4_2
                                    113 	.globl _P4_1
                                    114 	.globl _P4_0
                                    115 	.globl _PX0L
                                    116 	.globl _PT0L
                                    117 	.globl _PX1L
                                    118 	.globl _PT1L
                                    119 	.globl _PSL
                                    120 	.globl _PT2L
                                    121 	.globl _PPCL
                                    122 	.globl _EC
                                    123 	.globl _CCF0
                                    124 	.globl _CCF1
                                    125 	.globl _CCF2
                                    126 	.globl _CCF3
                                    127 	.globl _CCF4
                                    128 	.globl _CR
                                    129 	.globl _CF
                                    130 	.globl _TF2
                                    131 	.globl _EXF2
                                    132 	.globl _RCLK
                                    133 	.globl _TCLK
                                    134 	.globl _EXEN2
                                    135 	.globl _TR2
                                    136 	.globl _C_T2
                                    137 	.globl _CP_RL2
                                    138 	.globl _T2CON_7
                                    139 	.globl _T2CON_6
                                    140 	.globl _T2CON_5
                                    141 	.globl _T2CON_4
                                    142 	.globl _T2CON_3
                                    143 	.globl _T2CON_2
                                    144 	.globl _T2CON_1
                                    145 	.globl _T2CON_0
                                    146 	.globl _PT2
                                    147 	.globl _ET2
                                    148 	.globl _B
                                    149 	.globl _ACC
                                    150 	.globl _PSW
                                    151 	.globl _IP
                                    152 	.globl _P3
                                    153 	.globl _IE
                                    154 	.globl _P2
                                    155 	.globl _SBUF
                                    156 	.globl _SCON
                                    157 	.globl _P1
                                    158 	.globl _TH1
                                    159 	.globl _TH0
                                    160 	.globl _TL1
                                    161 	.globl _TL0
                                    162 	.globl _TMOD
                                    163 	.globl _TCON
                                    164 	.globl _PCON
                                    165 	.globl _DPH
                                    166 	.globl _DPL
                                    167 	.globl _SP
                                    168 	.globl _P0
                                    169 	.globl _EECON
                                    170 	.globl _KBF
                                    171 	.globl _KBE
                                    172 	.globl _KBLS
                                    173 	.globl _BRL
                                    174 	.globl _BDRCON
                                    175 	.globl _T2MOD
                                    176 	.globl _SPDAT
                                    177 	.globl _SPSTA
                                    178 	.globl _SPCON
                                    179 	.globl _SADEN
                                    180 	.globl _SADDR
                                    181 	.globl _WDTPRG
                                    182 	.globl _WDTRST
                                    183 	.globl _P5
                                    184 	.globl _P4
                                    185 	.globl _IPH1
                                    186 	.globl _IPL1
                                    187 	.globl _IPH0
                                    188 	.globl _IPL0
                                    189 	.globl _IEN1
                                    190 	.globl _IEN0
                                    191 	.globl _CMOD
                                    192 	.globl _CL
                                    193 	.globl _CH
                                    194 	.globl _CCON
                                    195 	.globl _CCAPM4
                                    196 	.globl _CCAPM3
                                    197 	.globl _CCAPM2
                                    198 	.globl _CCAPM1
                                    199 	.globl _CCAPM0
                                    200 	.globl _CCAP4L
                                    201 	.globl _CCAP3L
                                    202 	.globl _CCAP2L
                                    203 	.globl _CCAP1L
                                    204 	.globl _CCAP0L
                                    205 	.globl _CCAP4H
                                    206 	.globl _CCAP3H
                                    207 	.globl _CCAP2H
                                    208 	.globl _CCAP1H
                                    209 	.globl _CCAP0H
                                    210 	.globl _CKCON1
                                    211 	.globl _CKCON0
                                    212 	.globl _CKRL
                                    213 	.globl _AUXR1
                                    214 	.globl _AUXR
                                    215 	.globl _TH2
                                    216 	.globl _TL2
                                    217 	.globl _RCAP2H
                                    218 	.globl _RCAP2L
                                    219 	.globl _T2CON
                                    220 ;--------------------------------------------------------
                                    221 ; special function registers
                                    222 ;--------------------------------------------------------
                                    223 	.area RSEG    (ABS,DATA)
      000000                        224 	.org 0x0000
                           0000C8   225 _T2CON	=	0x00c8
                           0000CA   226 _RCAP2L	=	0x00ca
                           0000CB   227 _RCAP2H	=	0x00cb
                           0000CC   228 _TL2	=	0x00cc
                           0000CD   229 _TH2	=	0x00cd
                           00008E   230 _AUXR	=	0x008e
                           0000A2   231 _AUXR1	=	0x00a2
                           000097   232 _CKRL	=	0x0097
                           00008F   233 _CKCON0	=	0x008f
                           0000AF   234 _CKCON1	=	0x00af
                           0000FA   235 _CCAP0H	=	0x00fa
                           0000FB   236 _CCAP1H	=	0x00fb
                           0000FC   237 _CCAP2H	=	0x00fc
                           0000FD   238 _CCAP3H	=	0x00fd
                           0000FE   239 _CCAP4H	=	0x00fe
                           0000EA   240 _CCAP0L	=	0x00ea
                           0000EB   241 _CCAP1L	=	0x00eb
                           0000EC   242 _CCAP2L	=	0x00ec
                           0000ED   243 _CCAP3L	=	0x00ed
                           0000EE   244 _CCAP4L	=	0x00ee
                           0000DA   245 _CCAPM0	=	0x00da
                           0000DB   246 _CCAPM1	=	0x00db
                           0000DC   247 _CCAPM2	=	0x00dc
                           0000DD   248 _CCAPM3	=	0x00dd
                           0000DE   249 _CCAPM4	=	0x00de
                           0000D8   250 _CCON	=	0x00d8
                           0000F9   251 _CH	=	0x00f9
                           0000E9   252 _CL	=	0x00e9
                           0000D9   253 _CMOD	=	0x00d9
                           0000A8   254 _IEN0	=	0x00a8
                           0000B1   255 _IEN1	=	0x00b1
                           0000B8   256 _IPL0	=	0x00b8
                           0000B7   257 _IPH0	=	0x00b7
                           0000B2   258 _IPL1	=	0x00b2
                           0000B3   259 _IPH1	=	0x00b3
                           0000C0   260 _P4	=	0x00c0
                           0000E8   261 _P5	=	0x00e8
                           0000A6   262 _WDTRST	=	0x00a6
                           0000A7   263 _WDTPRG	=	0x00a7
                           0000A9   264 _SADDR	=	0x00a9
                           0000B9   265 _SADEN	=	0x00b9
                           0000C3   266 _SPCON	=	0x00c3
                           0000C4   267 _SPSTA	=	0x00c4
                           0000C5   268 _SPDAT	=	0x00c5
                           0000C9   269 _T2MOD	=	0x00c9
                           00009B   270 _BDRCON	=	0x009b
                           00009A   271 _BRL	=	0x009a
                           00009C   272 _KBLS	=	0x009c
                           00009D   273 _KBE	=	0x009d
                           00009E   274 _KBF	=	0x009e
                           0000D2   275 _EECON	=	0x00d2
                           000080   276 _P0	=	0x0080
                           000081   277 _SP	=	0x0081
                           000082   278 _DPL	=	0x0082
                           000083   279 _DPH	=	0x0083
                           000087   280 _PCON	=	0x0087
                           000088   281 _TCON	=	0x0088
                           000089   282 _TMOD	=	0x0089
                           00008A   283 _TL0	=	0x008a
                           00008B   284 _TL1	=	0x008b
                           00008C   285 _TH0	=	0x008c
                           00008D   286 _TH1	=	0x008d
                           000090   287 _P1	=	0x0090
                           000098   288 _SCON	=	0x0098
                           000099   289 _SBUF	=	0x0099
                           0000A0   290 _P2	=	0x00a0
                           0000A8   291 _IE	=	0x00a8
                           0000B0   292 _P3	=	0x00b0
                           0000B8   293 _IP	=	0x00b8
                           0000D0   294 _PSW	=	0x00d0
                           0000E0   295 _ACC	=	0x00e0
                           0000F0   296 _B	=	0x00f0
                                    297 ;--------------------------------------------------------
                                    298 ; special function bits
                                    299 ;--------------------------------------------------------
                                    300 	.area RSEG    (ABS,DATA)
      000000                        301 	.org 0x0000
                           0000AD   302 _ET2	=	0x00ad
                           0000BD   303 _PT2	=	0x00bd
                           0000C8   304 _T2CON_0	=	0x00c8
                           0000C9   305 _T2CON_1	=	0x00c9
                           0000CA   306 _T2CON_2	=	0x00ca
                           0000CB   307 _T2CON_3	=	0x00cb
                           0000CC   308 _T2CON_4	=	0x00cc
                           0000CD   309 _T2CON_5	=	0x00cd
                           0000CE   310 _T2CON_6	=	0x00ce
                           0000CF   311 _T2CON_7	=	0x00cf
                           0000C8   312 _CP_RL2	=	0x00c8
                           0000C9   313 _C_T2	=	0x00c9
                           0000CA   314 _TR2	=	0x00ca
                           0000CB   315 _EXEN2	=	0x00cb
                           0000CC   316 _TCLK	=	0x00cc
                           0000CD   317 _RCLK	=	0x00cd
                           0000CE   318 _EXF2	=	0x00ce
                           0000CF   319 _TF2	=	0x00cf
                           0000DF   320 _CF	=	0x00df
                           0000DE   321 _CR	=	0x00de
                           0000DC   322 _CCF4	=	0x00dc
                           0000DB   323 _CCF3	=	0x00db
                           0000DA   324 _CCF2	=	0x00da
                           0000D9   325 _CCF1	=	0x00d9
                           0000D8   326 _CCF0	=	0x00d8
                           0000AE   327 _EC	=	0x00ae
                           0000BE   328 _PPCL	=	0x00be
                           0000BD   329 _PT2L	=	0x00bd
                           0000BC   330 _PSL	=	0x00bc
                           0000BB   331 _PT1L	=	0x00bb
                           0000BA   332 _PX1L	=	0x00ba
                           0000B9   333 _PT0L	=	0x00b9
                           0000B8   334 _PX0L	=	0x00b8
                           0000C0   335 _P4_0	=	0x00c0
                           0000C1   336 _P4_1	=	0x00c1
                           0000C2   337 _P4_2	=	0x00c2
                           0000C3   338 _P4_3	=	0x00c3
                           0000C4   339 _P4_4	=	0x00c4
                           0000C5   340 _P4_5	=	0x00c5
                           0000C6   341 _P4_6	=	0x00c6
                           0000C7   342 _P4_7	=	0x00c7
                           0000E8   343 _P5_0	=	0x00e8
                           0000E9   344 _P5_1	=	0x00e9
                           0000EA   345 _P5_2	=	0x00ea
                           0000EB   346 _P5_3	=	0x00eb
                           0000EC   347 _P5_4	=	0x00ec
                           0000ED   348 _P5_5	=	0x00ed
                           0000EE   349 _P5_6	=	0x00ee
                           0000EF   350 _P5_7	=	0x00ef
                           000080   351 _P0_0	=	0x0080
                           000081   352 _P0_1	=	0x0081
                           000082   353 _P0_2	=	0x0082
                           000083   354 _P0_3	=	0x0083
                           000084   355 _P0_4	=	0x0084
                           000085   356 _P0_5	=	0x0085
                           000086   357 _P0_6	=	0x0086
                           000087   358 _P0_7	=	0x0087
                           000088   359 _IT0	=	0x0088
                           000089   360 _IE0	=	0x0089
                           00008A   361 _IT1	=	0x008a
                           00008B   362 _IE1	=	0x008b
                           00008C   363 _TR0	=	0x008c
                           00008D   364 _TF0	=	0x008d
                           00008E   365 _TR1	=	0x008e
                           00008F   366 _TF1	=	0x008f
                           000090   367 _P1_0	=	0x0090
                           000091   368 _P1_1	=	0x0091
                           000092   369 _P1_2	=	0x0092
                           000093   370 _P1_3	=	0x0093
                           000094   371 _P1_4	=	0x0094
                           000095   372 _P1_5	=	0x0095
                           000096   373 _P1_6	=	0x0096
                           000097   374 _P1_7	=	0x0097
                           000098   375 _RI	=	0x0098
                           000099   376 _TI	=	0x0099
                           00009A   377 _RB8	=	0x009a
                           00009B   378 _TB8	=	0x009b
                           00009C   379 _REN	=	0x009c
                           00009D   380 _SM2	=	0x009d
                           00009E   381 _SM1	=	0x009e
                           00009F   382 _SM0	=	0x009f
                           0000A0   383 _P2_0	=	0x00a0
                           0000A1   384 _P2_1	=	0x00a1
                           0000A2   385 _P2_2	=	0x00a2
                           0000A3   386 _P2_3	=	0x00a3
                           0000A4   387 _P2_4	=	0x00a4
                           0000A5   388 _P2_5	=	0x00a5
                           0000A6   389 _P2_6	=	0x00a6
                           0000A7   390 _P2_7	=	0x00a7
                           0000A8   391 _EX0	=	0x00a8
                           0000A9   392 _ET0	=	0x00a9
                           0000AA   393 _EX1	=	0x00aa
                           0000AB   394 _ET1	=	0x00ab
                           0000AC   395 _ES	=	0x00ac
                           0000AF   396 _EA	=	0x00af
                           0000B0   397 _P3_0	=	0x00b0
                           0000B1   398 _P3_1	=	0x00b1
                           0000B2   399 _P3_2	=	0x00b2
                           0000B3   400 _P3_3	=	0x00b3
                           0000B4   401 _P3_4	=	0x00b4
                           0000B5   402 _P3_5	=	0x00b5
                           0000B6   403 _P3_6	=	0x00b6
                           0000B7   404 _P3_7	=	0x00b7
                           0000B0   405 _RXD	=	0x00b0
                           0000B1   406 _TXD	=	0x00b1
                           0000B2   407 _INT0	=	0x00b2
                           0000B3   408 _INT1	=	0x00b3
                           0000B4   409 _T0	=	0x00b4
                           0000B5   410 _T1	=	0x00b5
                           0000B6   411 _WR	=	0x00b6
                           0000B7   412 _RD	=	0x00b7
                           0000B8   413 _PX0	=	0x00b8
                           0000B9   414 _PT0	=	0x00b9
                           0000BA   415 _PX1	=	0x00ba
                           0000BB   416 _PT1	=	0x00bb
                           0000BC   417 _PS	=	0x00bc
                           0000D0   418 _P	=	0x00d0
                           0000D1   419 _F1	=	0x00d1
                           0000D2   420 _OV	=	0x00d2
                           0000D3   421 _RS0	=	0x00d3
                           0000D4   422 _RS1	=	0x00d4
                           0000D5   423 _F0	=	0x00d5
                           0000D6   424 _AC	=	0x00d6
                           0000D7   425 _CY	=	0x00d7
                                    426 ;--------------------------------------------------------
                                    427 ; overlayable register banks
                                    428 ;--------------------------------------------------------
                                    429 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        430 	.ds 8
                                    431 ;--------------------------------------------------------
                                    432 ; internal ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area DSEG    (DATA)
                                    435 ;--------------------------------------------------------
                                    436 ; overlayable items in internal ram
                                    437 ;--------------------------------------------------------
                                    438 ;--------------------------------------------------------
                                    439 ; Stack segment in internal ram
                                    440 ;--------------------------------------------------------
                                    441 	.area	SSEG
      000021                        442 __start__stack:
      000021                        443 	.ds	1
                                    444 
                                    445 ;--------------------------------------------------------
                                    446 ; indirectly addressable internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area ISEG    (DATA)
                                    449 ;--------------------------------------------------------
                                    450 ; absolute internal ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area IABS    (ABS,DATA)
                                    453 	.area IABS    (ABS,DATA)
                                    454 ;--------------------------------------------------------
                                    455 ; bit data
                                    456 ;--------------------------------------------------------
                                    457 	.area BSEG    (BIT)
                                    458 ;--------------------------------------------------------
                                    459 ; paged external ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area PSEG    (PAG,XDATA)
                                    462 ;--------------------------------------------------------
                                    463 ; external ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area XSEG    (XDATA)
      000001                        466 _w_command_handler_address_65537_85:
      000001                        467 	.ds 2
      000003                        468 _w_command_handler_byte_65538_88:
      000003                        469 	.ds 2
      000005                        470 _r_command_handler_address_65537_94:
      000005                        471 	.ds 2
      000007                        472 _r_command_handler_byte_65538_97:
      000007                        473 	.ds 1
      000008                        474 _x_command_handler_start_address_65537_102:
      000008                        475 	.ds 2
      00000A                        476 _x_command_handler_end_address_65538_105:
      00000A                        477 	.ds 2
      00000C                        478 _x_command_handler_byte_327682_112:
      00000C                        479 	.ds 2
                                    480 ;--------------------------------------------------------
                                    481 ; absolute external ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area XABS    (ABS,XDATA)
                                    484 ;--------------------------------------------------------
                                    485 ; external initialized ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area XISEG   (XDATA)
                                    488 	.area HOME    (CODE)
                                    489 	.area GSINIT0 (CODE)
                                    490 	.area GSINIT1 (CODE)
                                    491 	.area GSINIT2 (CODE)
                                    492 	.area GSINIT3 (CODE)
                                    493 	.area GSINIT4 (CODE)
                                    494 	.area GSINIT5 (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 	.area GSFINAL (CODE)
                                    497 	.area CSEG    (CODE)
                                    498 ;--------------------------------------------------------
                                    499 ; interrupt vector
                                    500 ;--------------------------------------------------------
                                    501 	.area HOME    (CODE)
      002000                        502 __interrupt_vect:
      002000 02 20 34         [24]  503 	ljmp	__sdcc_gsinit_startup
                                    504 ;--------------------------------------------------------
                                    505 ; global & static initialisations
                                    506 ;--------------------------------------------------------
                                    507 	.area HOME    (CODE)
                                    508 	.area GSINIT  (CODE)
                                    509 	.area GSFINAL (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.globl __sdcc_gsinit_startup
                                    512 	.globl __sdcc_program_startup
                                    513 	.globl __start__stack
                                    514 	.globl __mcs51_genXINIT
                                    515 	.globl __mcs51_genXRAMCLEAR
                                    516 	.globl __mcs51_genRAMCLEAR
                                    517 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  518 	ljmp	__sdcc_program_startup
                                    519 ;--------------------------------------------------------
                                    520 ; Home
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
                                    523 	.area HOME    (CODE)
      002003                        524 __sdcc_program_startup:
      002003 02 24 C3         [24]  525 	ljmp	_main
                                    526 ;	return from main will return to caller
                                    527 ;--------------------------------------------------------
                                    528 ; code
                                    529 ;--------------------------------------------------------
                                    530 	.area CSEG    (CODE)
                                    531 ;------------------------------------------------------------
                                    532 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    533 ;------------------------------------------------------------
                                    534 ;	src/main.c:28: int _sdcc_external_startup()
                                    535 ;	-----------------------------------------
                                    536 ;	 function _sdcc_external_startup
                                    537 ;	-----------------------------------------
      002090                        538 __sdcc_external_startup:
                           000007   539 	ar7 = 0x07
                           000006   540 	ar6 = 0x06
                           000005   541 	ar5 = 0x05
                           000004   542 	ar4 = 0x04
                           000003   543 	ar3 = 0x03
                           000002   544 	ar2 = 0x02
                           000001   545 	ar1 = 0x01
                           000000   546 	ar0 = 0x00
                                    547 ;	src/main.c:31: return 0;
      002090 90 00 00         [24]  548 	mov	dptr,#0x0000
                                    549 ;	src/main.c:32: }
      002093 22               [24]  550 	ret
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'w_command_handler'
                                    553 ;------------------------------------------------------------
                                    554 ;address                   Allocated with name '_w_command_handler_address_65537_85'
                                    555 ;byte                      Allocated with name '_w_command_handler_byte_65538_88'
                                    556 ;------------------------------------------------------------
                                    557 ;	src/main.c:37: void w_command_handler()
                                    558 ;	-----------------------------------------
                                    559 ;	 function w_command_handler
                                    560 ;	-----------------------------------------
      002094                        561 _w_command_handler:
                                    562 ;	src/main.c:39: printf("\r\nEnter an EEPROM address to write to in hex [0,7FF]: ");
      002094 74 68            [12]  563 	mov	a,#___str_0
      002096 C0 E0            [24]  564 	push	acc
      002098 74 3E            [12]  565 	mov	a,#(___str_0 >> 8)
      00209A C0 E0            [24]  566 	push	acc
      00209C 74 80            [12]  567 	mov	a,#0x80
      00209E C0 E0            [24]  568 	push	acc
      0020A0 12 32 5B         [24]  569 	lcall	_printf
      0020A3 15 81            [12]  570 	dec	sp
      0020A5 15 81            [12]  571 	dec	sp
      0020A7 15 81            [12]  572 	dec	sp
                                    573 ;	src/main.c:40: int address = 0;
      0020A9 90 00 01         [24]  574 	mov	dptr,#_w_command_handler_address_65537_85
      0020AC E4               [12]  575 	clr	a
      0020AD F0               [24]  576 	movx	@dptr,a
      0020AE A3               [24]  577 	inc	dptr
      0020AF F0               [24]  578 	movx	@dptr,a
                                    579 ;	src/main.c:41: if (0 > get_hex_value(&address))
      0020B0 90 00 01         [24]  580 	mov	dptr,#_w_command_handler_address_65537_85
      0020B3 75 F0 00         [24]  581 	mov	b,#0x00
      0020B6 12 27 11         [24]  582 	lcall	_get_hex_value
      0020B9 E5 83            [12]  583 	mov	a,dph
      0020BB 30 E7 16         [24]  584 	jnb	acc.7,00102$
                                    585 ;	src/main.c:43: printf("\r\n Failed to enter a hex integer, please try again");
      0020BE 74 9F            [12]  586 	mov	a,#___str_1
      0020C0 C0 E0            [24]  587 	push	acc
      0020C2 74 3E            [12]  588 	mov	a,#(___str_1 >> 8)
      0020C4 C0 E0            [24]  589 	push	acc
      0020C6 74 80            [12]  590 	mov	a,#0x80
      0020C8 C0 E0            [24]  591 	push	acc
      0020CA 12 32 5B         [24]  592 	lcall	_printf
      0020CD 15 81            [12]  593 	dec	sp
      0020CF 15 81            [12]  594 	dec	sp
      0020D1 15 81            [12]  595 	dec	sp
                                    596 ;	src/main.c:44: return;
      0020D3 22               [24]  597 	ret
      0020D4                        598 00102$:
                                    599 ;	src/main.c:46: if(address < 0 || address > 0x7FF)
      0020D4 90 00 01         [24]  600 	mov	dptr,#_w_command_handler_address_65537_85
      0020D7 E0               [24]  601 	movx	a,@dptr
      0020D8 FE               [12]  602 	mov	r6,a
      0020D9 A3               [24]  603 	inc	dptr
      0020DA E0               [24]  604 	movx	a,@dptr
      0020DB FF               [12]  605 	mov	r7,a
      0020DC 20 E7 0F         [24]  606 	jb	acc.7,00103$
      0020DF C3               [12]  607 	clr	c
      0020E0 74 FF            [12]  608 	mov	a,#0xff
      0020E2 9E               [12]  609 	subb	a,r6
      0020E3 74 87            [12]  610 	mov	a,#(0x07 ^ 0x80)
      0020E5 8F F0            [24]  611 	mov	b,r7
      0020E7 63 F0 80         [24]  612 	xrl	b,#0x80
      0020EA 95 F0            [12]  613 	subb	a,b
      0020EC 50 16            [24]  614 	jnc	00104$
      0020EE                        615 00103$:
                                    616 ;	src/main.c:48: printf("\r\n Failed to enter an address within range, please try again");
      0020EE 74 D2            [12]  617 	mov	a,#___str_2
      0020F0 C0 E0            [24]  618 	push	acc
      0020F2 74 3E            [12]  619 	mov	a,#(___str_2 >> 8)
      0020F4 C0 E0            [24]  620 	push	acc
      0020F6 74 80            [12]  621 	mov	a,#0x80
      0020F8 C0 E0            [24]  622 	push	acc
      0020FA 12 32 5B         [24]  623 	lcall	_printf
      0020FD 15 81            [12]  624 	dec	sp
      0020FF 15 81            [12]  625 	dec	sp
      002101 15 81            [12]  626 	dec	sp
                                    627 ;	src/main.c:49: return;
      002103 22               [24]  628 	ret
      002104                        629 00104$:
                                    630 ;	src/main.c:51: printf("\r\nEnter a byte to write [0, FF]: ");
      002104 74 0F            [12]  631 	mov	a,#___str_3
      002106 C0 E0            [24]  632 	push	acc
      002108 74 3F            [12]  633 	mov	a,#(___str_3 >> 8)
      00210A C0 E0            [24]  634 	push	acc
      00210C 74 80            [12]  635 	mov	a,#0x80
      00210E C0 E0            [24]  636 	push	acc
      002110 12 32 5B         [24]  637 	lcall	_printf
      002113 15 81            [12]  638 	dec	sp
      002115 15 81            [12]  639 	dec	sp
      002117 15 81            [12]  640 	dec	sp
                                    641 ;	src/main.c:52: int byte = 0;
      002119 90 00 03         [24]  642 	mov	dptr,#_w_command_handler_byte_65538_88
      00211C E4               [12]  643 	clr	a
      00211D F0               [24]  644 	movx	@dptr,a
      00211E A3               [24]  645 	inc	dptr
      00211F F0               [24]  646 	movx	@dptr,a
                                    647 ;	src/main.c:53: if (0 > get_hex_value(&byte))
      002120 90 00 03         [24]  648 	mov	dptr,#_w_command_handler_byte_65538_88
      002123 75 F0 00         [24]  649 	mov	b,#0x00
      002126 12 27 11         [24]  650 	lcall	_get_hex_value
      002129 E5 83            [12]  651 	mov	a,dph
      00212B 30 E7 16         [24]  652 	jnb	acc.7,00107$
                                    653 ;	src/main.c:55: printf("\r\n Failed to enter a hex integer, please try again");
      00212E 74 9F            [12]  654 	mov	a,#___str_1
      002130 C0 E0            [24]  655 	push	acc
      002132 74 3E            [12]  656 	mov	a,#(___str_1 >> 8)
      002134 C0 E0            [24]  657 	push	acc
      002136 74 80            [12]  658 	mov	a,#0x80
      002138 C0 E0            [24]  659 	push	acc
      00213A 12 32 5B         [24]  660 	lcall	_printf
      00213D 15 81            [12]  661 	dec	sp
      00213F 15 81            [12]  662 	dec	sp
      002141 15 81            [12]  663 	dec	sp
                                    664 ;	src/main.c:56: return;
      002143 22               [24]  665 	ret
      002144                        666 00107$:
                                    667 ;	src/main.c:58: if(byte < 0 || byte > 0xFF)
      002144 90 00 03         [24]  668 	mov	dptr,#_w_command_handler_byte_65538_88
      002147 E0               [24]  669 	movx	a,@dptr
      002148 FE               [12]  670 	mov	r6,a
      002149 A3               [24]  671 	inc	dptr
      00214A E0               [24]  672 	movx	a,@dptr
      00214B FF               [12]  673 	mov	r7,a
      00214C 20 E7 0F         [24]  674 	jb	acc.7,00108$
      00214F C3               [12]  675 	clr	c
      002150 74 FF            [12]  676 	mov	a,#0xff
      002152 9E               [12]  677 	subb	a,r6
      002153 74 80            [12]  678 	mov	a,#(0x00 ^ 0x80)
      002155 8F F0            [24]  679 	mov	b,r7
      002157 63 F0 80         [24]  680 	xrl	b,#0x80
      00215A 95 F0            [12]  681 	subb	a,b
      00215C 50 16            [24]  682 	jnc	00109$
      00215E                        683 00108$:
                                    684 ;	src/main.c:60: printf("\r\n Failed to enter a value that's byte size, please try again");
      00215E 74 31            [12]  685 	mov	a,#___str_4
      002160 C0 E0            [24]  686 	push	acc
      002162 74 3F            [12]  687 	mov	a,#(___str_4 >> 8)
      002164 C0 E0            [24]  688 	push	acc
      002166 74 80            [12]  689 	mov	a,#0x80
      002168 C0 E0            [24]  690 	push	acc
      00216A 12 32 5B         [24]  691 	lcall	_printf
      00216D 15 81            [12]  692 	dec	sp
      00216F 15 81            [12]  693 	dec	sp
      002171 15 81            [12]  694 	dec	sp
                                    695 ;	src/main.c:61: return;
      002173 22               [24]  696 	ret
      002174                        697 00109$:
                                    698 ;	src/main.c:63: if (0 != eepromwritebyte(address, (uint8_t)byte))
      002174 90 00 01         [24]  699 	mov	dptr,#_w_command_handler_address_65537_85
      002177 E0               [24]  700 	movx	a,@dptr
      002178 FC               [12]  701 	mov	r4,a
      002179 A3               [24]  702 	inc	dptr
      00217A E0               [24]  703 	movx	a,@dptr
      00217B FD               [12]  704 	mov	r5,a
      00217C 90 20 65         [24]  705 	mov	dptr,#_eepromwritebyte_PARM_2
      00217F EE               [12]  706 	mov	a,r6
      002180 F0               [24]  707 	movx	@dptr,a
      002181 8C 82            [24]  708 	mov	dpl,r4
      002183 8D 83            [24]  709 	mov	dph,r5
      002185 12 2F 45         [24]  710 	lcall	_eepromwritebyte
      002188 E5 82            [12]  711 	mov	a,dpl
      00218A 85 83 F0         [24]  712 	mov	b,dph
      00218D 45 F0            [12]  713 	orl	a,b
      00218F 60 16            [24]  714 	jz	00112$
                                    715 ;	src/main.c:65: printf("\r\nFailed to write to the eeprom");
      002191 74 6F            [12]  716 	mov	a,#___str_5
      002193 C0 E0            [24]  717 	push	acc
      002195 74 3F            [12]  718 	mov	a,#(___str_5 >> 8)
      002197 C0 E0            [24]  719 	push	acc
      002199 74 80            [12]  720 	mov	a,#0x80
      00219B C0 E0            [24]  721 	push	acc
      00219D 12 32 5B         [24]  722 	lcall	_printf
      0021A0 15 81            [12]  723 	dec	sp
      0021A2 15 81            [12]  724 	dec	sp
      0021A4 15 81            [12]  725 	dec	sp
      0021A6 22               [24]  726 	ret
      0021A7                        727 00112$:
                                    728 ;	src/main.c:69: printf("\r\n Success: wrote to the eeprom");
      0021A7 74 8F            [12]  729 	mov	a,#___str_6
      0021A9 C0 E0            [24]  730 	push	acc
      0021AB 74 3F            [12]  731 	mov	a,#(___str_6 >> 8)
      0021AD C0 E0            [24]  732 	push	acc
      0021AF 74 80            [12]  733 	mov	a,#0x80
      0021B1 C0 E0            [24]  734 	push	acc
      0021B3 12 32 5B         [24]  735 	lcall	_printf
      0021B6 15 81            [12]  736 	dec	sp
      0021B8 15 81            [12]  737 	dec	sp
      0021BA 15 81            [12]  738 	dec	sp
                                    739 ;	src/main.c:71: }
      0021BC 22               [24]  740 	ret
                                    741 ;------------------------------------------------------------
                                    742 ;Allocation info for local variables in function 'r_command_handler'
                                    743 ;------------------------------------------------------------
                                    744 ;address                   Allocated with name '_r_command_handler_address_65537_94'
                                    745 ;byte                      Allocated with name '_r_command_handler_byte_65538_97'
                                    746 ;------------------------------------------------------------
                                    747 ;	src/main.c:74: void r_command_handler()
                                    748 ;	-----------------------------------------
                                    749 ;	 function r_command_handler
                                    750 ;	-----------------------------------------
      0021BD                        751 _r_command_handler:
                                    752 ;	src/main.c:76: printf("\r\nEnter an EEPROM address to read from in hex [0,7FF]: ");
      0021BD 74 AF            [12]  753 	mov	a,#___str_7
      0021BF C0 E0            [24]  754 	push	acc
      0021C1 74 3F            [12]  755 	mov	a,#(___str_7 >> 8)
      0021C3 C0 E0            [24]  756 	push	acc
      0021C5 74 80            [12]  757 	mov	a,#0x80
      0021C7 C0 E0            [24]  758 	push	acc
      0021C9 12 32 5B         [24]  759 	lcall	_printf
      0021CC 15 81            [12]  760 	dec	sp
      0021CE 15 81            [12]  761 	dec	sp
      0021D0 15 81            [12]  762 	dec	sp
                                    763 ;	src/main.c:77: int address = 0;
      0021D2 90 00 05         [24]  764 	mov	dptr,#_r_command_handler_address_65537_94
      0021D5 E4               [12]  765 	clr	a
      0021D6 F0               [24]  766 	movx	@dptr,a
      0021D7 A3               [24]  767 	inc	dptr
      0021D8 F0               [24]  768 	movx	@dptr,a
                                    769 ;	src/main.c:78: if (0 > get_hex_value(&address))
      0021D9 90 00 05         [24]  770 	mov	dptr,#_r_command_handler_address_65537_94
      0021DC 75 F0 00         [24]  771 	mov	b,#0x00
      0021DF 12 27 11         [24]  772 	lcall	_get_hex_value
      0021E2 E5 83            [12]  773 	mov	a,dph
      0021E4 30 E7 16         [24]  774 	jnb	acc.7,00102$
                                    775 ;	src/main.c:80: printf("\r\n Failed to enter a hex integer, please try again");
      0021E7 74 9F            [12]  776 	mov	a,#___str_1
      0021E9 C0 E0            [24]  777 	push	acc
      0021EB 74 3E            [12]  778 	mov	a,#(___str_1 >> 8)
      0021ED C0 E0            [24]  779 	push	acc
      0021EF 74 80            [12]  780 	mov	a,#0x80
      0021F1 C0 E0            [24]  781 	push	acc
      0021F3 12 32 5B         [24]  782 	lcall	_printf
      0021F6 15 81            [12]  783 	dec	sp
      0021F8 15 81            [12]  784 	dec	sp
      0021FA 15 81            [12]  785 	dec	sp
                                    786 ;	src/main.c:81: return;
      0021FC 22               [24]  787 	ret
      0021FD                        788 00102$:
                                    789 ;	src/main.c:83: if(address < 0 || address > 0x7FF)
      0021FD 90 00 05         [24]  790 	mov	dptr,#_r_command_handler_address_65537_94
      002200 E0               [24]  791 	movx	a,@dptr
      002201 FE               [12]  792 	mov	r6,a
      002202 A3               [24]  793 	inc	dptr
      002203 E0               [24]  794 	movx	a,@dptr
      002204 FF               [12]  795 	mov	r7,a
      002205 20 E7 0F         [24]  796 	jb	acc.7,00103$
      002208 C3               [12]  797 	clr	c
      002209 74 FF            [12]  798 	mov	a,#0xff
      00220B 9E               [12]  799 	subb	a,r6
      00220C 74 87            [12]  800 	mov	a,#(0x07 ^ 0x80)
      00220E 8F F0            [24]  801 	mov	b,r7
      002210 63 F0 80         [24]  802 	xrl	b,#0x80
      002213 95 F0            [12]  803 	subb	a,b
      002215 50 16            [24]  804 	jnc	00104$
      002217                        805 00103$:
                                    806 ;	src/main.c:85: printf("\r\n Failed to enter an address within range, please try again");
      002217 74 D2            [12]  807 	mov	a,#___str_2
      002219 C0 E0            [24]  808 	push	acc
      00221B 74 3E            [12]  809 	mov	a,#(___str_2 >> 8)
      00221D C0 E0            [24]  810 	push	acc
      00221F 74 80            [12]  811 	mov	a,#0x80
      002221 C0 E0            [24]  812 	push	acc
      002223 12 32 5B         [24]  813 	lcall	_printf
      002226 15 81            [12]  814 	dec	sp
      002228 15 81            [12]  815 	dec	sp
      00222A 15 81            [12]  816 	dec	sp
                                    817 ;	src/main.c:86: return;
      00222C 22               [24]  818 	ret
      00222D                        819 00104$:
                                    820 ;	src/main.c:89: if (0 != eepromreadbyte(address, &byte))
      00222D 90 20 68         [24]  821 	mov	dptr,#_eepromreadbyte_PARM_2
      002230 74 07            [12]  822 	mov	a,#_r_command_handler_byte_65538_97
      002232 F0               [24]  823 	movx	@dptr,a
      002233 74 00            [12]  824 	mov	a,#(_r_command_handler_byte_65538_97 >> 8)
      002235 A3               [24]  825 	inc	dptr
      002236 F0               [24]  826 	movx	@dptr,a
      002237 E4               [12]  827 	clr	a
      002238 A3               [24]  828 	inc	dptr
      002239 F0               [24]  829 	movx	@dptr,a
      00223A 8E 82            [24]  830 	mov	dpl,r6
      00223C 8F 83            [24]  831 	mov	dph,r7
      00223E 12 2F C6         [24]  832 	lcall	_eepromreadbyte
      002241 E5 82            [12]  833 	mov	a,dpl
      002243 85 83 F0         [24]  834 	mov	b,dph
      002246 45 F0            [12]  835 	orl	a,b
      002248 60 16            [24]  836 	jz	00107$
                                    837 ;	src/main.c:91: printf("\r\nFailed to read from the eeprom");
      00224A 74 E7            [12]  838 	mov	a,#___str_8
      00224C C0 E0            [24]  839 	push	acc
      00224E 74 3F            [12]  840 	mov	a,#(___str_8 >> 8)
      002250 C0 E0            [24]  841 	push	acc
      002252 74 80            [12]  842 	mov	a,#0x80
      002254 C0 E0            [24]  843 	push	acc
      002256 12 32 5B         [24]  844 	lcall	_printf
      002259 15 81            [12]  845 	dec	sp
      00225B 15 81            [12]  846 	dec	sp
      00225D 15 81            [12]  847 	dec	sp
      00225F 22               [24]  848 	ret
      002260                        849 00107$:
                                    850 ;	src/main.c:95: printf("\r\n Success: read 0x%hhx from the eeprom", byte);
      002260 90 00 07         [24]  851 	mov	dptr,#_r_command_handler_byte_65538_97
      002263 E0               [24]  852 	movx	a,@dptr
      002264 FF               [12]  853 	mov	r7,a
      002265 7E 00            [12]  854 	mov	r6,#0x00
      002267 C0 07            [24]  855 	push	ar7
      002269 C0 06            [24]  856 	push	ar6
      00226B 74 08            [12]  857 	mov	a,#___str_9
      00226D C0 E0            [24]  858 	push	acc
      00226F 74 40            [12]  859 	mov	a,#(___str_9 >> 8)
      002271 C0 E0            [24]  860 	push	acc
      002273 74 80            [12]  861 	mov	a,#0x80
      002275 C0 E0            [24]  862 	push	acc
      002277 12 32 5B         [24]  863 	lcall	_printf
      00227A E5 81            [12]  864 	mov	a,sp
      00227C 24 FB            [12]  865 	add	a,#0xfb
      00227E F5 81            [12]  866 	mov	sp,a
                                    867 ;	src/main.c:97: }
      002280 22               [24]  868 	ret
                                    869 ;------------------------------------------------------------
                                    870 ;Allocation info for local variables in function 'print_dashed_line'
                                    871 ;------------------------------------------------------------
                                    872 ;	src/main.c:99: void print_dashed_line()
                                    873 ;	-----------------------------------------
                                    874 ;	 function print_dashed_line
                                    875 ;	-----------------------------------------
      002281                        876 _print_dashed_line:
                                    877 ;	src/main.c:101: printf("\r\n---------------------------------------------------");
      002281 74 30            [12]  878 	mov	a,#___str_10
      002283 C0 E0            [24]  879 	push	acc
      002285 74 40            [12]  880 	mov	a,#(___str_10 >> 8)
      002287 C0 E0            [24]  881 	push	acc
      002289 74 80            [12]  882 	mov	a,#0x80
      00228B C0 E0            [24]  883 	push	acc
      00228D 12 32 5B         [24]  884 	lcall	_printf
      002290 15 81            [12]  885 	dec	sp
      002292 15 81            [12]  886 	dec	sp
      002294 15 81            [12]  887 	dec	sp
                                    888 ;	src/main.c:102: }
      002296 22               [24]  889 	ret
                                    890 ;------------------------------------------------------------
                                    891 ;Allocation info for local variables in function 'x_command_handler'
                                    892 ;------------------------------------------------------------
                                    893 ;start_address             Allocated with name '_x_command_handler_start_address_65537_102'
                                    894 ;end_address               Allocated with name '_x_command_handler_end_address_65538_105'
                                    895 ;row_start                 Allocated with name '_x_command_handler_row_start_131074_109'
                                    896 ;i                         Allocated with name '_x_command_handler_i_262146_111'
                                    897 ;byte                      Allocated with name '_x_command_handler_byte_327682_112'
                                    898 ;------------------------------------------------------------
                                    899 ;	src/main.c:104: void x_command_handler()
                                    900 ;	-----------------------------------------
                                    901 ;	 function x_command_handler
                                    902 ;	-----------------------------------------
      002297                        903 _x_command_handler:
                                    904 ;	src/main.c:106: printf("\r\nEnter a valid starting hex address [0, 7FF]: ");
      002297 74 66            [12]  905 	mov	a,#___str_11
      002299 C0 E0            [24]  906 	push	acc
      00229B 74 40            [12]  907 	mov	a,#(___str_11 >> 8)
      00229D C0 E0            [24]  908 	push	acc
      00229F 74 80            [12]  909 	mov	a,#0x80
      0022A1 C0 E0            [24]  910 	push	acc
      0022A3 12 32 5B         [24]  911 	lcall	_printf
      0022A6 15 81            [12]  912 	dec	sp
      0022A8 15 81            [12]  913 	dec	sp
      0022AA 15 81            [12]  914 	dec	sp
                                    915 ;	src/main.c:107: int start_address = 0;
      0022AC 90 00 08         [24]  916 	mov	dptr,#_x_command_handler_start_address_65537_102
      0022AF E4               [12]  917 	clr	a
      0022B0 F0               [24]  918 	movx	@dptr,a
      0022B1 A3               [24]  919 	inc	dptr
      0022B2 F0               [24]  920 	movx	@dptr,a
                                    921 ;	src/main.c:108: if (0 > get_hex_value(&start_address))
      0022B3 90 00 08         [24]  922 	mov	dptr,#_x_command_handler_start_address_65537_102
      0022B6 75 F0 00         [24]  923 	mov	b,#0x00
      0022B9 12 27 11         [24]  924 	lcall	_get_hex_value
      0022BC E5 83            [12]  925 	mov	a,dph
      0022BE 30 E7 16         [24]  926 	jnb	acc.7,00102$
                                    927 ;	src/main.c:110: printf("\r\n Failed to enter a hex integer, please try again");
      0022C1 74 9F            [12]  928 	mov	a,#___str_1
      0022C3 C0 E0            [24]  929 	push	acc
      0022C5 74 3E            [12]  930 	mov	a,#(___str_1 >> 8)
      0022C7 C0 E0            [24]  931 	push	acc
      0022C9 74 80            [12]  932 	mov	a,#0x80
      0022CB C0 E0            [24]  933 	push	acc
      0022CD 12 32 5B         [24]  934 	lcall	_printf
      0022D0 15 81            [12]  935 	dec	sp
      0022D2 15 81            [12]  936 	dec	sp
      0022D4 15 81            [12]  937 	dec	sp
                                    938 ;	src/main.c:111: return;
      0022D6 22               [24]  939 	ret
      0022D7                        940 00102$:
                                    941 ;	src/main.c:113: if(start_address < 0 || start_address > 0x7FF)
      0022D7 90 00 08         [24]  942 	mov	dptr,#_x_command_handler_start_address_65537_102
      0022DA E0               [24]  943 	movx	a,@dptr
      0022DB FE               [12]  944 	mov	r6,a
      0022DC A3               [24]  945 	inc	dptr
      0022DD E0               [24]  946 	movx	a,@dptr
      0022DE FF               [12]  947 	mov	r7,a
      0022DF 20 E7 0F         [24]  948 	jb	acc.7,00103$
      0022E2 C3               [12]  949 	clr	c
      0022E3 74 FF            [12]  950 	mov	a,#0xff
      0022E5 9E               [12]  951 	subb	a,r6
      0022E6 74 87            [12]  952 	mov	a,#(0x07 ^ 0x80)
      0022E8 8F F0            [24]  953 	mov	b,r7
      0022EA 63 F0 80         [24]  954 	xrl	b,#0x80
      0022ED 95 F0            [12]  955 	subb	a,b
      0022EF 50 16            [24]  956 	jnc	00104$
      0022F1                        957 00103$:
                                    958 ;	src/main.c:115: printf("\r\n Failed to enter an address within range, please try again");
      0022F1 74 D2            [12]  959 	mov	a,#___str_2
      0022F3 C0 E0            [24]  960 	push	acc
      0022F5 74 3E            [12]  961 	mov	a,#(___str_2 >> 8)
      0022F7 C0 E0            [24]  962 	push	acc
      0022F9 74 80            [12]  963 	mov	a,#0x80
      0022FB C0 E0            [24]  964 	push	acc
      0022FD 12 32 5B         [24]  965 	lcall	_printf
      002300 15 81            [12]  966 	dec	sp
      002302 15 81            [12]  967 	dec	sp
      002304 15 81            [12]  968 	dec	sp
                                    969 ;	src/main.c:116: return;
      002306 22               [24]  970 	ret
      002307                        971 00104$:
                                    972 ;	src/main.c:119: printf("\r\nEnter a valid ending hex address [0,7FF]");
      002307 74 96            [12]  973 	mov	a,#___str_12
      002309 C0 E0            [24]  974 	push	acc
      00230B 74 40            [12]  975 	mov	a,#(___str_12 >> 8)
      00230D C0 E0            [24]  976 	push	acc
      00230F 74 80            [12]  977 	mov	a,#0x80
      002311 C0 E0            [24]  978 	push	acc
      002313 12 32 5B         [24]  979 	lcall	_printf
      002316 15 81            [12]  980 	dec	sp
      002318 15 81            [12]  981 	dec	sp
      00231A 15 81            [12]  982 	dec	sp
                                    983 ;	src/main.c:120: int end_address = 0;
      00231C 90 00 0A         [24]  984 	mov	dptr,#_x_command_handler_end_address_65538_105
      00231F E4               [12]  985 	clr	a
      002320 F0               [24]  986 	movx	@dptr,a
      002321 A3               [24]  987 	inc	dptr
      002322 F0               [24]  988 	movx	@dptr,a
                                    989 ;	src/main.c:121: if (0 > get_hex_value(&end_address))
      002323 90 00 0A         [24]  990 	mov	dptr,#_x_command_handler_end_address_65538_105
      002326 75 F0 00         [24]  991 	mov	b,#0x00
      002329 12 27 11         [24]  992 	lcall	_get_hex_value
      00232C E5 83            [12]  993 	mov	a,dph
      00232E 30 E7 16         [24]  994 	jnb	acc.7,00107$
                                    995 ;	src/main.c:123: printf("\r\n Failed to enter a hex integer, please try again");
      002331 74 9F            [12]  996 	mov	a,#___str_1
      002333 C0 E0            [24]  997 	push	acc
      002335 74 3E            [12]  998 	mov	a,#(___str_1 >> 8)
      002337 C0 E0            [24]  999 	push	acc
      002339 74 80            [12] 1000 	mov	a,#0x80
      00233B C0 E0            [24] 1001 	push	acc
      00233D 12 32 5B         [24] 1002 	lcall	_printf
      002340 15 81            [12] 1003 	dec	sp
      002342 15 81            [12] 1004 	dec	sp
      002344 15 81            [12] 1005 	dec	sp
                                   1006 ;	src/main.c:124: return;
      002346 22               [24] 1007 	ret
      002347                       1008 00107$:
                                   1009 ;	src/main.c:126: if(end_address < 0 || end_address > 0x7FF)
      002347 90 00 0A         [24] 1010 	mov	dptr,#_x_command_handler_end_address_65538_105
      00234A E0               [24] 1011 	movx	a,@dptr
      00234B FE               [12] 1012 	mov	r6,a
      00234C A3               [24] 1013 	inc	dptr
      00234D E0               [24] 1014 	movx	a,@dptr
      00234E FF               [12] 1015 	mov	r7,a
      00234F 20 E7 0F         [24] 1016 	jb	acc.7,00108$
      002352 C3               [12] 1017 	clr	c
      002353 74 FF            [12] 1018 	mov	a,#0xff
      002355 9E               [12] 1019 	subb	a,r6
      002356 74 87            [12] 1020 	mov	a,#(0x07 ^ 0x80)
      002358 8F F0            [24] 1021 	mov	b,r7
      00235A 63 F0 80         [24] 1022 	xrl	b,#0x80
      00235D 95 F0            [12] 1023 	subb	a,b
      00235F 50 16            [24] 1024 	jnc	00109$
      002361                       1025 00108$:
                                   1026 ;	src/main.c:128: printf("\r\n Failed to enter an address within range, please try again");
      002361 74 D2            [12] 1027 	mov	a,#___str_2
      002363 C0 E0            [24] 1028 	push	acc
      002365 74 3E            [12] 1029 	mov	a,#(___str_2 >> 8)
      002367 C0 E0            [24] 1030 	push	acc
      002369 74 80            [12] 1031 	mov	a,#0x80
      00236B C0 E0            [24] 1032 	push	acc
      00236D 12 32 5B         [24] 1033 	lcall	_printf
      002370 15 81            [12] 1034 	dec	sp
      002372 15 81            [12] 1035 	dec	sp
      002374 15 81            [12] 1036 	dec	sp
                                   1037 ;	src/main.c:129: return;
      002376 22               [24] 1038 	ret
      002377                       1039 00109$:
                                   1040 ;	src/main.c:132: if (start_address > end_address)
      002377 90 00 08         [24] 1041 	mov	dptr,#_x_command_handler_start_address_65537_102
      00237A E0               [24] 1042 	movx	a,@dptr
      00237B FC               [12] 1043 	mov	r4,a
      00237C A3               [24] 1044 	inc	dptr
      00237D E0               [24] 1045 	movx	a,@dptr
      00237E FD               [12] 1046 	mov	r5,a
      00237F C3               [12] 1047 	clr	c
      002380 EE               [12] 1048 	mov	a,r6
      002381 9C               [12] 1049 	subb	a,r4
      002382 EF               [12] 1050 	mov	a,r7
      002383 64 80            [12] 1051 	xrl	a,#0x80
      002385 8D F0            [24] 1052 	mov	b,r5
      002387 63 F0 80         [24] 1053 	xrl	b,#0x80
      00238A 95 F0            [12] 1054 	subb	a,b
      00238C 50 16            [24] 1055 	jnc	00112$
                                   1056 ;	src/main.c:134: printf("\r\n start_address is greater than end address; please try again");
      00238E 74 C1            [12] 1057 	mov	a,#___str_13
      002390 C0 E0            [24] 1058 	push	acc
      002392 74 40            [12] 1059 	mov	a,#(___str_13 >> 8)
      002394 C0 E0            [24] 1060 	push	acc
      002396 74 80            [12] 1061 	mov	a,#0x80
      002398 C0 E0            [24] 1062 	push	acc
      00239A 12 32 5B         [24] 1063 	lcall	_printf
      00239D 15 81            [12] 1064 	dec	sp
      00239F 15 81            [12] 1065 	dec	sp
      0023A1 15 81            [12] 1066 	dec	sp
                                   1067 ;	src/main.c:135: return; 
      0023A3 22               [24] 1068 	ret
      0023A4                       1069 00112$:
                                   1070 ;	src/main.c:138: start_address &= ~(0xF);
      0023A4 90 00 08         [24] 1071 	mov	dptr,#_x_command_handler_start_address_65537_102
      0023A7 74 F0            [12] 1072 	mov	a,#0xf0
      0023A9 5C               [12] 1073 	anl	a,r4
      0023AA F0               [24] 1074 	movx	@dptr,a
      0023AB ED               [12] 1075 	mov	a,r5
      0023AC A3               [24] 1076 	inc	dptr
      0023AD F0               [24] 1077 	movx	@dptr,a
                                   1078 ;	src/main.c:139: end_address &= ~(0xF);
      0023AE 90 00 0A         [24] 1079 	mov	dptr,#_x_command_handler_end_address_65538_105
      0023B1 74 F0            [12] 1080 	mov	a,#0xf0
      0023B3 5E               [12] 1081 	anl	a,r6
      0023B4 F0               [24] 1082 	movx	@dptr,a
      0023B5 EF               [12] 1083 	mov	a,r7
      0023B6 A3               [24] 1084 	inc	dptr
      0023B7 F0               [24] 1085 	movx	@dptr,a
                                   1086 ;	src/main.c:140: end_address += 0x10;
      0023B8 90 00 0A         [24] 1087 	mov	dptr,#_x_command_handler_end_address_65538_105
      0023BB E0               [24] 1088 	movx	a,@dptr
      0023BC FE               [12] 1089 	mov	r6,a
      0023BD A3               [24] 1090 	inc	dptr
      0023BE E0               [24] 1091 	movx	a,@dptr
      0023BF FF               [12] 1092 	mov	r7,a
      0023C0 90 00 0A         [24] 1093 	mov	dptr,#_x_command_handler_end_address_65538_105
      0023C3 74 10            [12] 1094 	mov	a,#0x10
      0023C5 2E               [12] 1095 	add	a,r6
      0023C6 F0               [24] 1096 	movx	@dptr,a
      0023C7 E4               [12] 1097 	clr	a
      0023C8 3F               [12] 1098 	addc	a,r7
      0023C9 A3               [24] 1099 	inc	dptr
      0023CA F0               [24] 1100 	movx	@dptr,a
                                   1101 ;	src/main.c:143: for(int row_start = start_address; row_start < end_address; row_start+=16)
      0023CB 90 00 08         [24] 1102 	mov	dptr,#_x_command_handler_start_address_65537_102
      0023CE E0               [24] 1103 	movx	a,@dptr
      0023CF FE               [12] 1104 	mov	r6,a
      0023D0 A3               [24] 1105 	inc	dptr
      0023D1 E0               [24] 1106 	movx	a,@dptr
      0023D2 FF               [12] 1107 	mov	r7,a
      0023D3                       1108 00121$:
      0023D3 90 00 0A         [24] 1109 	mov	dptr,#_x_command_handler_end_address_65538_105
      0023D6 E0               [24] 1110 	movx	a,@dptr
      0023D7 FC               [12] 1111 	mov	r4,a
      0023D8 A3               [24] 1112 	inc	dptr
      0023D9 E0               [24] 1113 	movx	a,@dptr
      0023DA FD               [12] 1114 	mov	r5,a
      0023DB C3               [12] 1115 	clr	c
      0023DC EE               [12] 1116 	mov	a,r6
      0023DD 9C               [12] 1117 	subb	a,r4
      0023DE EF               [12] 1118 	mov	a,r7
      0023DF 64 80            [12] 1119 	xrl	a,#0x80
      0023E1 8D F0            [24] 1120 	mov	b,r5
      0023E3 63 F0 80         [24] 1121 	xrl	b,#0x80
      0023E6 95 F0            [12] 1122 	subb	a,b
      0023E8 40 01            [24] 1123 	jc	00172$
      0023EA 22               [24] 1124 	ret
      0023EB                       1125 00172$:
                                   1126 ;	src/main.c:145: printf("\r\n%03X: ", row_start);
      0023EB C0 07            [24] 1127 	push	ar7
      0023ED C0 06            [24] 1128 	push	ar6
      0023EF C0 06            [24] 1129 	push	ar6
      0023F1 C0 07            [24] 1130 	push	ar7
      0023F3 74 00            [12] 1131 	mov	a,#___str_14
      0023F5 C0 E0            [24] 1132 	push	acc
      0023F7 74 41            [12] 1133 	mov	a,#(___str_14 >> 8)
      0023F9 C0 E0            [24] 1134 	push	acc
      0023FB 74 80            [12] 1135 	mov	a,#0x80
      0023FD C0 E0            [24] 1136 	push	acc
      0023FF 12 32 5B         [24] 1137 	lcall	_printf
      002402 E5 81            [12] 1138 	mov	a,sp
      002404 24 FB            [12] 1139 	add	a,#0xfb
      002406 F5 81            [12] 1140 	mov	sp,a
      002408 D0 06            [24] 1141 	pop	ar6
      00240A D0 07            [24] 1142 	pop	ar7
                                   1143 ;	src/main.c:146: for(int i = 0; i < 16; i++)
      00240C 8E 04            [24] 1144 	mov	ar4,r6
      00240E 8F 05            [24] 1145 	mov	ar5,r7
      002410 7A 00            [12] 1146 	mov	r2,#0x00
      002412 7B 00            [12] 1147 	mov	r3,#0x00
      002414                       1148 00118$:
      002414 C3               [12] 1149 	clr	c
      002415 EA               [12] 1150 	mov	a,r2
      002416 94 10            [12] 1151 	subb	a,#0x10
      002418 EB               [12] 1152 	mov	a,r3
      002419 64 80            [12] 1153 	xrl	a,#0x80
      00241B 94 80            [12] 1154 	subb	a,#0x80
      00241D 40 03            [24] 1155 	jc	00173$
      00241F 02 24 B9         [24] 1156 	ljmp	00122$
      002422                       1157 00173$:
                                   1158 ;	src/main.c:148: int byte = 0;
      002422 90 00 0C         [24] 1159 	mov	dptr,#_x_command_handler_byte_327682_112
      002425 E4               [12] 1160 	clr	a
      002426 F0               [24] 1161 	movx	@dptr,a
      002427 A3               [24] 1162 	inc	dptr
      002428 F0               [24] 1163 	movx	@dptr,a
                                   1164 ;	src/main.c:149: if(0 != eepromreadbyte(row_start + i, &byte))
      002429 EA               [12] 1165 	mov	a,r2
      00242A 2C               [12] 1166 	add	a,r4
      00242B F8               [12] 1167 	mov	r0,a
      00242C EB               [12] 1168 	mov	a,r3
      00242D 3D               [12] 1169 	addc	a,r5
      00242E F9               [12] 1170 	mov	r1,a
      00242F 90 20 68         [24] 1171 	mov	dptr,#_eepromreadbyte_PARM_2
      002432 74 0C            [12] 1172 	mov	a,#_x_command_handler_byte_327682_112
      002434 F0               [24] 1173 	movx	@dptr,a
      002435 74 00            [12] 1174 	mov	a,#(_x_command_handler_byte_327682_112 >> 8)
      002437 A3               [24] 1175 	inc	dptr
      002438 F0               [24] 1176 	movx	@dptr,a
      002439 E4               [12] 1177 	clr	a
      00243A A3               [24] 1178 	inc	dptr
      00243B F0               [24] 1179 	movx	@dptr,a
      00243C 88 82            [24] 1180 	mov	dpl,r0
      00243E 89 83            [24] 1181 	mov	dph,r1
      002440 C0 07            [24] 1182 	push	ar7
      002442 C0 06            [24] 1183 	push	ar6
      002444 C0 05            [24] 1184 	push	ar5
      002446 C0 04            [24] 1185 	push	ar4
      002448 C0 03            [24] 1186 	push	ar3
      00244A C0 02            [24] 1187 	push	ar2
      00244C 12 2F C6         [24] 1188 	lcall	_eepromreadbyte
      00244F E5 82            [12] 1189 	mov	a,dpl
      002451 85 83 F0         [24] 1190 	mov	b,dph
      002454 D0 02            [24] 1191 	pop	ar2
      002456 D0 03            [24] 1192 	pop	ar3
      002458 D0 04            [24] 1193 	pop	ar4
      00245A D0 05            [24] 1194 	pop	ar5
      00245C D0 06            [24] 1195 	pop	ar6
      00245E D0 07            [24] 1196 	pop	ar7
      002460 45 F0            [12] 1197 	orl	a,b
      002462 60 16            [24] 1198 	jz	00114$
                                   1199 ;	src/main.c:151: printf("\r\n Failed to read byte from eeprom, ending command \r\n");
      002464 74 09            [12] 1200 	mov	a,#___str_15
      002466 C0 E0            [24] 1201 	push	acc
      002468 74 41            [12] 1202 	mov	a,#(___str_15 >> 8)
      00246A C0 E0            [24] 1203 	push	acc
      00246C 74 80            [12] 1204 	mov	a,#0x80
      00246E C0 E0            [24] 1205 	push	acc
      002470 12 32 5B         [24] 1206 	lcall	_printf
      002473 15 81            [12] 1207 	dec	sp
      002475 15 81            [12] 1208 	dec	sp
      002477 15 81            [12] 1209 	dec	sp
                                   1210 ;	src/main.c:152: return;
      002479 22               [24] 1211 	ret
      00247A                       1212 00114$:
                                   1213 ;	src/main.c:154: printf("%02X ", byte);
      00247A C0 07            [24] 1214 	push	ar7
      00247C C0 06            [24] 1215 	push	ar6
      00247E C0 05            [24] 1216 	push	ar5
      002480 C0 04            [24] 1217 	push	ar4
      002482 C0 03            [24] 1218 	push	ar3
      002484 C0 02            [24] 1219 	push	ar2
      002486 90 00 0C         [24] 1220 	mov	dptr,#_x_command_handler_byte_327682_112
      002489 E0               [24] 1221 	movx	a,@dptr
      00248A C0 E0            [24] 1222 	push	acc
      00248C A3               [24] 1223 	inc	dptr
      00248D E0               [24] 1224 	movx	a,@dptr
      00248E C0 E0            [24] 1225 	push	acc
      002490 74 3F            [12] 1226 	mov	a,#___str_16
      002492 C0 E0            [24] 1227 	push	acc
      002494 74 41            [12] 1228 	mov	a,#(___str_16 >> 8)
      002496 C0 E0            [24] 1229 	push	acc
      002498 74 80            [12] 1230 	mov	a,#0x80
      00249A C0 E0            [24] 1231 	push	acc
      00249C 12 32 5B         [24] 1232 	lcall	_printf
      00249F E5 81            [12] 1233 	mov	a,sp
      0024A1 24 FB            [12] 1234 	add	a,#0xfb
      0024A3 F5 81            [12] 1235 	mov	sp,a
      0024A5 D0 02            [24] 1236 	pop	ar2
      0024A7 D0 03            [24] 1237 	pop	ar3
      0024A9 D0 04            [24] 1238 	pop	ar4
      0024AB D0 05            [24] 1239 	pop	ar5
      0024AD D0 06            [24] 1240 	pop	ar6
      0024AF D0 07            [24] 1241 	pop	ar7
                                   1242 ;	src/main.c:146: for(int i = 0; i < 16; i++)
      0024B1 0A               [12] 1243 	inc	r2
      0024B2 BA 00 01         [24] 1244 	cjne	r2,#0x00,00175$
      0024B5 0B               [12] 1245 	inc	r3
      0024B6                       1246 00175$:
      0024B6 02 24 14         [24] 1247 	ljmp	00118$
      0024B9                       1248 00122$:
                                   1249 ;	src/main.c:143: for(int row_start = start_address; row_start < end_address; row_start+=16)
      0024B9 74 10            [12] 1250 	mov	a,#0x10
      0024BB 2E               [12] 1251 	add	a,r6
      0024BC FE               [12] 1252 	mov	r6,a
      0024BD E4               [12] 1253 	clr	a
      0024BE 3F               [12] 1254 	addc	a,r7
      0024BF FF               [12] 1255 	mov	r7,a
                                   1256 ;	src/main.c:157: }
      0024C0 02 23 D3         [24] 1257 	ljmp	00121$
                                   1258 ;------------------------------------------------------------
                                   1259 ;Allocation info for local variables in function 'main'
                                   1260 ;------------------------------------------------------------
                                   1261 ;received_char             Allocated with name '_main_received_char_196609_117'
                                   1262 ;------------------------------------------------------------
                                   1263 ;	src/main.c:161: void main()
                                   1264 ;	-----------------------------------------
                                   1265 ;	 function main
                                   1266 ;	-----------------------------------------
      0024C3                       1267 _main:
                                   1268 ;	src/main.c:163: eeprom_init();
      0024C3 12 2F 42         [24] 1269 	lcall	_eeprom_init
      0024C6                       1270 00109$:
                                   1271 ;	src/main.c:166: printf("\r\nEnter a command char (? for help): ");
      0024C6 74 45            [12] 1272 	mov	a,#___str_17
      0024C8 C0 E0            [24] 1273 	push	acc
      0024CA 74 41            [12] 1274 	mov	a,#(___str_17 >> 8)
      0024CC C0 E0            [24] 1275 	push	acc
      0024CE 74 80            [12] 1276 	mov	a,#0x80
      0024D0 C0 E0            [24] 1277 	push	acc
      0024D2 12 32 5B         [24] 1278 	lcall	_printf
      0024D5 15 81            [12] 1279 	dec	sp
      0024D7 15 81            [12] 1280 	dec	sp
      0024D9 15 81            [12] 1281 	dec	sp
                                   1282 ;	src/main.c:167: char received_char = getchar();
      0024DB 12 25 A5         [24] 1283 	lcall	_getchar
      0024DE AE 82            [24] 1284 	mov	r6,dpl
                                   1285 ;	src/main.c:168: putchar(received_char);
      0024E0 8E 05            [24] 1286 	mov	ar5,r6
      0024E2 7F 00            [12] 1287 	mov	r7,#0x00
      0024E4 8D 82            [24] 1288 	mov	dpl,r5
      0024E6 8F 83            [24] 1289 	mov	dph,r7
      0024E8 C0 06            [24] 1290 	push	ar6
      0024EA 12 25 86         [24] 1291 	lcall	_putchar
      0024ED D0 06            [24] 1292 	pop	ar6
                                   1293 ;	src/main.c:169: switch(received_char)
      0024EF BE 3F 02         [24] 1294 	cjne	r6,#0x3f,00132$
      0024F2 80 0F            [24] 1295 	sjmp	00101$
      0024F4                       1296 00132$:
      0024F4 BE 72 02         [24] 1297 	cjne	r6,#0x72,00133$
      0024F7 80 50            [24] 1298 	sjmp	00103$
      0024F9                       1299 00133$:
      0024F9 BE 77 02         [24] 1300 	cjne	r6,#0x77,00134$
      0024FC 80 46            [24] 1301 	sjmp	00102$
      0024FE                       1302 00134$:
                                   1303 ;	src/main.c:171: case '?':
      0024FE BE 78 52         [24] 1304 	cjne	r6,#0x78,00105$
      002501 80 4B            [24] 1305 	sjmp	00104$
      002503                       1306 00101$:
                                   1307 ;	src/main.c:172: printf("\r\nw - write a byte");
      002503 74 6B            [12] 1308 	mov	a,#___str_18
      002505 C0 E0            [24] 1309 	push	acc
      002507 74 41            [12] 1310 	mov	a,#(___str_18 >> 8)
      002509 C0 E0            [24] 1311 	push	acc
      00250B 74 80            [12] 1312 	mov	a,#0x80
      00250D C0 E0            [24] 1313 	push	acc
      00250F 12 32 5B         [24] 1314 	lcall	_printf
      002512 15 81            [12] 1315 	dec	sp
      002514 15 81            [12] 1316 	dec	sp
      002516 15 81            [12] 1317 	dec	sp
                                   1318 ;	src/main.c:173: printf("\r\nr - read a byte");
      002518 74 7E            [12] 1319 	mov	a,#___str_19
      00251A C0 E0            [24] 1320 	push	acc
      00251C 74 41            [12] 1321 	mov	a,#(___str_19 >> 8)
      00251E C0 E0            [24] 1322 	push	acc
      002520 74 80            [12] 1323 	mov	a,#0x80
      002522 C0 E0            [24] 1324 	push	acc
      002524 12 32 5B         [24] 1325 	lcall	_printf
      002527 15 81            [12] 1326 	dec	sp
      002529 15 81            [12] 1327 	dec	sp
      00252B 15 81            [12] 1328 	dec	sp
                                   1329 ;	src/main.c:174: printf("\r\nx - hex dump");
      00252D 74 90            [12] 1330 	mov	a,#___str_20
      00252F C0 E0            [24] 1331 	push	acc
      002531 74 41            [12] 1332 	mov	a,#(___str_20 >> 8)
      002533 C0 E0            [24] 1333 	push	acc
      002535 74 80            [12] 1334 	mov	a,#0x80
      002537 C0 E0            [24] 1335 	push	acc
      002539 12 32 5B         [24] 1336 	lcall	_printf
      00253C 15 81            [12] 1337 	dec	sp
      00253E 15 81            [12] 1338 	dec	sp
      002540 15 81            [12] 1339 	dec	sp
                                   1340 ;	src/main.c:175: break;
                                   1341 ;	src/main.c:176: case 'w':
      002542 80 27            [24] 1342 	sjmp	00106$
      002544                       1343 00102$:
                                   1344 ;	src/main.c:177: w_command_handler();
      002544 12 20 94         [24] 1345 	lcall	_w_command_handler
                                   1346 ;	src/main.c:178: break;
                                   1347 ;	src/main.c:179: case 'r':
      002547 80 22            [24] 1348 	sjmp	00106$
      002549                       1349 00103$:
                                   1350 ;	src/main.c:180: r_command_handler();
      002549 12 21 BD         [24] 1351 	lcall	_r_command_handler
                                   1352 ;	src/main.c:181: break;
                                   1353 ;	src/main.c:182: case 'x':
      00254C 80 1D            [24] 1354 	sjmp	00106$
      00254E                       1355 00104$:
                                   1356 ;	src/main.c:183: x_command_handler();
      00254E 12 22 97         [24] 1357 	lcall	_x_command_handler
                                   1358 ;	src/main.c:184: break;
                                   1359 ;	src/main.c:185: default:
      002551 80 18            [24] 1360 	sjmp	00106$
      002553                       1361 00105$:
                                   1362 ;	src/main.c:186: printf("\r\nUnrecognized command, please enter a valid command char");
      002553 74 9F            [12] 1363 	mov	a,#___str_21
      002555 C0 E0            [24] 1364 	push	acc
      002557 74 41            [12] 1365 	mov	a,#(___str_21 >> 8)
      002559 C0 E0            [24] 1366 	push	acc
      00255B 74 80            [12] 1367 	mov	a,#0x80
      00255D C0 E0            [24] 1368 	push	acc
      00255F 12 32 5B         [24] 1369 	lcall	_printf
      002562 15 81            [12] 1370 	dec	sp
      002564 15 81            [12] 1371 	dec	sp
      002566 15 81            [12] 1372 	dec	sp
                                   1373 ;	src/main.c:187: continue; //no command, don't print the end command line
      002568 02 24 C6         [24] 1374 	ljmp	00109$
                                   1375 ;	src/main.c:188: }
      00256B                       1376 00106$:
                                   1377 ;	src/main.c:189: printf("\r\nEND COMMAND");
      00256B 74 D9            [12] 1378 	mov	a,#___str_22
      00256D C0 E0            [24] 1379 	push	acc
      00256F 74 41            [12] 1380 	mov	a,#(___str_22 >> 8)
      002571 C0 E0            [24] 1381 	push	acc
      002573 74 80            [12] 1382 	mov	a,#0x80
      002575 C0 E0            [24] 1383 	push	acc
      002577 12 32 5B         [24] 1384 	lcall	_printf
      00257A 15 81            [12] 1385 	dec	sp
      00257C 15 81            [12] 1386 	dec	sp
      00257E 15 81            [12] 1387 	dec	sp
                                   1388 ;	src/main.c:190: print_dashed_line();
      002580 12 22 81         [24] 1389 	lcall	_print_dashed_line
                                   1390 ;	src/main.c:192: }
      002583 02 24 C6         [24] 1391 	ljmp	00109$
                                   1392 	.area CSEG    (CODE)
                                   1393 	.area CONST   (CODE)
                                   1394 	.area CONST   (CODE)
      003E68                       1395 ___str_0:
      003E68 0D                    1396 	.db 0x0d
      003E69 0A                    1397 	.db 0x0a
      003E6A 45 6E 74 65 72 20 61  1398 	.ascii "Enter an EEPROM address to write to in hex [0,7FF]: "
             6E 20 45 45 50 52 4F
             4D 20 61 64 64 72 65
             73 73 20 74 6F 20 77
             72 69 74 65 20 74 6F
             20 69 6E 20 68 65 78
             20 5B 30 2C 37 46 46
             5D 3A 20
      003E9E 00                    1399 	.db 0x00
                                   1400 	.area CSEG    (CODE)
                                   1401 	.area CONST   (CODE)
      003E9F                       1402 ___str_1:
      003E9F 0D                    1403 	.db 0x0d
      003EA0 0A                    1404 	.db 0x0a
      003EA1 20 46 61 69 6C 65 64  1405 	.ascii " Failed to enter a hex integer, please try again"
             20 74 6F 20 65 6E 74
             65 72 20 61 20 68 65
             78 20 69 6E 74 65 67
             65 72 2C 20 70 6C 65
             61 73 65 20 74 72 79
             20 61 67 61 69 6E
      003ED1 00                    1406 	.db 0x00
                                   1407 	.area CSEG    (CODE)
                                   1408 	.area CONST   (CODE)
      003ED2                       1409 ___str_2:
      003ED2 0D                    1410 	.db 0x0d
      003ED3 0A                    1411 	.db 0x0a
      003ED4 20 46 61 69 6C 65 64  1412 	.ascii " Failed to enter an address within range, please try again"
             20 74 6F 20 65 6E 74
             65 72 20 61 6E 20 61
             64 64 72 65 73 73 20
             77 69 74 68 69 6E 20
             72 61 6E 67 65 2C 20
             70 6C 65 61 73 65 20
             74 72 79 20 61 67 61
             69 6E
      003F0E 00                    1413 	.db 0x00
                                   1414 	.area CSEG    (CODE)
                                   1415 	.area CONST   (CODE)
      003F0F                       1416 ___str_3:
      003F0F 0D                    1417 	.db 0x0d
      003F10 0A                    1418 	.db 0x0a
      003F11 45 6E 74 65 72 20 61  1419 	.ascii "Enter a byte to write [0, FF]: "
             20 62 79 74 65 20 74
             6F 20 77 72 69 74 65
             20 5B 30 2C 20 46 46
             5D 3A 20
      003F30 00                    1420 	.db 0x00
                                   1421 	.area CSEG    (CODE)
                                   1422 	.area CONST   (CODE)
      003F31                       1423 ___str_4:
      003F31 0D                    1424 	.db 0x0d
      003F32 0A                    1425 	.db 0x0a
      003F33 20 46 61 69 6C 65 64  1426 	.ascii " Failed to enter a value that's byte size, please try again"
             20 74 6F 20 65 6E 74
             65 72 20 61 20 76 61
             6C 75 65 20 74 68 61
             74 27 73 20 62 79 74
             65 20 73 69 7A 65 2C
             20 70 6C 65 61 73 65
             20 74 72 79 20 61 67
             61 69 6E
      003F6E 00                    1427 	.db 0x00
                                   1428 	.area CSEG    (CODE)
                                   1429 	.area CONST   (CODE)
      003F6F                       1430 ___str_5:
      003F6F 0D                    1431 	.db 0x0d
      003F70 0A                    1432 	.db 0x0a
      003F71 46 61 69 6C 65 64 20  1433 	.ascii "Failed to write to the eeprom"
             74 6F 20 77 72 69 74
             65 20 74 6F 20 74 68
             65 20 65 65 70 72 6F
             6D
      003F8E 00                    1434 	.db 0x00
                                   1435 	.area CSEG    (CODE)
                                   1436 	.area CONST   (CODE)
      003F8F                       1437 ___str_6:
      003F8F 0D                    1438 	.db 0x0d
      003F90 0A                    1439 	.db 0x0a
      003F91 20 53 75 63 63 65 73  1440 	.ascii " Success: wrote to the eeprom"
             73 3A 20 77 72 6F 74
             65 20 74 6F 20 74 68
             65 20 65 65 70 72 6F
             6D
      003FAE 00                    1441 	.db 0x00
                                   1442 	.area CSEG    (CODE)
                                   1443 	.area CONST   (CODE)
      003FAF                       1444 ___str_7:
      003FAF 0D                    1445 	.db 0x0d
      003FB0 0A                    1446 	.db 0x0a
      003FB1 45 6E 74 65 72 20 61  1447 	.ascii "Enter an EEPROM address to read from in hex [0,7FF]: "
             6E 20 45 45 50 52 4F
             4D 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 20 66 72 6F
             6D 20 69 6E 20 68 65
             78 20 5B 30 2C 37 46
             46 5D 3A 20
      003FE6 00                    1448 	.db 0x00
                                   1449 	.area CSEG    (CODE)
                                   1450 	.area CONST   (CODE)
      003FE7                       1451 ___str_8:
      003FE7 0D                    1452 	.db 0x0d
      003FE8 0A                    1453 	.db 0x0a
      003FE9 46 61 69 6C 65 64 20  1454 	.ascii "Failed to read from the eeprom"
             74 6F 20 72 65 61 64
             20 66 72 6F 6D 20 74
             68 65 20 65 65 70 72
             6F 6D
      004007 00                    1455 	.db 0x00
                                   1456 	.area CSEG    (CODE)
                                   1457 	.area CONST   (CODE)
      004008                       1458 ___str_9:
      004008 0D                    1459 	.db 0x0d
      004009 0A                    1460 	.db 0x0a
      00400A 20 53 75 63 63 65 73  1461 	.ascii " Success: read 0x%hhx from the eeprom"
             73 3A 20 72 65 61 64
             20 30 78 25 68 68 78
             20 66 72 6F 6D 20 74
             68 65 20 65 65 70 72
             6F 6D
      00402F 00                    1462 	.db 0x00
                                   1463 	.area CSEG    (CODE)
                                   1464 	.area CONST   (CODE)
      004030                       1465 ___str_10:
      004030 0D                    1466 	.db 0x0d
      004031 0A                    1467 	.db 0x0a
      004032 2D 2D 2D 2D 2D 2D 2D  1468 	.ascii "---------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D
      004065 00                    1469 	.db 0x00
                                   1470 	.area CSEG    (CODE)
                                   1471 	.area CONST   (CODE)
      004066                       1472 ___str_11:
      004066 0D                    1473 	.db 0x0d
      004067 0A                    1474 	.db 0x0a
      004068 45 6E 74 65 72 20 61  1475 	.ascii "Enter a valid starting hex address [0, 7FF]: "
             20 76 61 6C 69 64 20
             73 74 61 72 74 69 6E
             67 20 68 65 78 20 61
             64 64 72 65 73 73 20
             5B 30 2C 20 37 46 46
             5D 3A 20
      004095 00                    1476 	.db 0x00
                                   1477 	.area CSEG    (CODE)
                                   1478 	.area CONST   (CODE)
      004096                       1479 ___str_12:
      004096 0D                    1480 	.db 0x0d
      004097 0A                    1481 	.db 0x0a
      004098 45 6E 74 65 72 20 61  1482 	.ascii "Enter a valid ending hex address [0,7FF]"
             20 76 61 6C 69 64 20
             65 6E 64 69 6E 67 20
             68 65 78 20 61 64 64
             72 65 73 73 20 5B 30
             2C 37 46 46 5D
      0040C0 00                    1483 	.db 0x00
                                   1484 	.area CSEG    (CODE)
                                   1485 	.area CONST   (CODE)
      0040C1                       1486 ___str_13:
      0040C1 0D                    1487 	.db 0x0d
      0040C2 0A                    1488 	.db 0x0a
      0040C3 20 73 74 61 72 74 5F  1489 	.ascii " start_address is greater than end address; please try again"
             61 64 64 72 65 73 73
             20 69 73 20 67 72 65
             61 74 65 72 20 74 68
             61 6E 20 65 6E 64 20
             61 64 64 72 65 73 73
             3B 20 70 6C 65 61 73
             65 20 74 72 79 20 61
             67 61 69 6E
      0040FF 00                    1490 	.db 0x00
                                   1491 	.area CSEG    (CODE)
                                   1492 	.area CONST   (CODE)
      004100                       1493 ___str_14:
      004100 0D                    1494 	.db 0x0d
      004101 0A                    1495 	.db 0x0a
      004102 25 30 33 58 3A 20     1496 	.ascii "%03X: "
      004108 00                    1497 	.db 0x00
                                   1498 	.area CSEG    (CODE)
                                   1499 	.area CONST   (CODE)
      004109                       1500 ___str_15:
      004109 0D                    1501 	.db 0x0d
      00410A 0A                    1502 	.db 0x0a
      00410B 20 46 61 69 6C 65 64  1503 	.ascii " Failed to read byte from eeprom, ending command "
             20 74 6F 20 72 65 61
             64 20 62 79 74 65 20
             66 72 6F 6D 20 65 65
             70 72 6F 6D 2C 20 65
             6E 64 69 6E 67 20 63
             6F 6D 6D 61 6E 64 20
      00413C 0D                    1504 	.db 0x0d
      00413D 0A                    1505 	.db 0x0a
      00413E 00                    1506 	.db 0x00
                                   1507 	.area CSEG    (CODE)
                                   1508 	.area CONST   (CODE)
      00413F                       1509 ___str_16:
      00413F 25 30 32 58 20        1510 	.ascii "%02X "
      004144 00                    1511 	.db 0x00
                                   1512 	.area CSEG    (CODE)
                                   1513 	.area CONST   (CODE)
      004145                       1514 ___str_17:
      004145 0D                    1515 	.db 0x0d
      004146 0A                    1516 	.db 0x0a
      004147 45 6E 74 65 72 20 61  1517 	.ascii "Enter a command char (? for help): "
             20 63 6F 6D 6D 61 6E
             64 20 63 68 61 72 20
             28 3F 20 66 6F 72 20
             68 65 6C 70 29 3A 20
      00416A 00                    1518 	.db 0x00
                                   1519 	.area CSEG    (CODE)
                                   1520 	.area CONST   (CODE)
      00416B                       1521 ___str_18:
      00416B 0D                    1522 	.db 0x0d
      00416C 0A                    1523 	.db 0x0a
      00416D 77 20 2D 20 77 72 69  1524 	.ascii "w - write a byte"
             74 65 20 61 20 62 79
             74 65
      00417D 00                    1525 	.db 0x00
                                   1526 	.area CSEG    (CODE)
                                   1527 	.area CONST   (CODE)
      00417E                       1528 ___str_19:
      00417E 0D                    1529 	.db 0x0d
      00417F 0A                    1530 	.db 0x0a
      004180 72 20 2D 20 72 65 61  1531 	.ascii "r - read a byte"
             64 20 61 20 62 79 74
             65
      00418F 00                    1532 	.db 0x00
                                   1533 	.area CSEG    (CODE)
                                   1534 	.area CONST   (CODE)
      004190                       1535 ___str_20:
      004190 0D                    1536 	.db 0x0d
      004191 0A                    1537 	.db 0x0a
      004192 78 20 2D 20 68 65 78  1538 	.ascii "x - hex dump"
             20 64 75 6D 70
      00419E 00                    1539 	.db 0x00
                                   1540 	.area CSEG    (CODE)
                                   1541 	.area CONST   (CODE)
      00419F                       1542 ___str_21:
      00419F 0D                    1543 	.db 0x0d
      0041A0 0A                    1544 	.db 0x0a
      0041A1 55 6E 72 65 63 6F 67  1545 	.ascii "Unrecognized command, please enter a valid command char"
             6E 69 7A 65 64 20 63
             6F 6D 6D 61 6E 64 2C
             20 70 6C 65 61 73 65
             20 65 6E 74 65 72 20
             61 20 76 61 6C 69 64
             20 63 6F 6D 6D 61 6E
             64 20 63 68 61 72
      0041D8 00                    1546 	.db 0x00
                                   1547 	.area CSEG    (CODE)
                                   1548 	.area CONST   (CODE)
      0041D9                       1549 ___str_22:
      0041D9 0D                    1550 	.db 0x0d
      0041DA 0A                    1551 	.db 0x0a
      0041DB 45 4E 44 20 43 4F 4D  1552 	.ascii "END COMMAND"
             4D 41 4E 44
      0041E6 00                    1553 	.db 0x00
                                   1554 	.area CSEG    (CODE)
                                   1555 	.area XINIT   (CODE)
                                   1556 	.area CABS    (ABS,CODE)
