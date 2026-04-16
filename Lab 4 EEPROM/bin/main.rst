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
                                     17 	.globl _eereset
                                     18 	.globl _eeprom_init
                                     19 	.globl _eepromreadbyte
                                     20 	.globl _eepromwritebyte
                                     21 	.globl _get_hex_value
                                     22 	.globl _putchar
                                     23 	.globl _getchar
                                     24 	.globl _printf
                                     25 	.globl _CY
                                     26 	.globl _AC
                                     27 	.globl _F0
                                     28 	.globl _RS1
                                     29 	.globl _RS0
                                     30 	.globl _OV
                                     31 	.globl _F1
                                     32 	.globl _P
                                     33 	.globl _PS
                                     34 	.globl _PT1
                                     35 	.globl _PX1
                                     36 	.globl _PT0
                                     37 	.globl _PX0
                                     38 	.globl _RD
                                     39 	.globl _WR
                                     40 	.globl _T1
                                     41 	.globl _T0
                                     42 	.globl _INT1
                                     43 	.globl _INT0
                                     44 	.globl _TXD
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _EA
                                     55 	.globl _ES
                                     56 	.globl _ET1
                                     57 	.globl _EX1
                                     58 	.globl _ET0
                                     59 	.globl _EX0
                                     60 	.globl _P2_7
                                     61 	.globl _P2_6
                                     62 	.globl _P2_5
                                     63 	.globl _P2_4
                                     64 	.globl _P2_3
                                     65 	.globl _P2_2
                                     66 	.globl _P2_1
                                     67 	.globl _P2_0
                                     68 	.globl _SM0
                                     69 	.globl _SM1
                                     70 	.globl _SM2
                                     71 	.globl _REN
                                     72 	.globl _TB8
                                     73 	.globl _RB8
                                     74 	.globl _TI
                                     75 	.globl _RI
                                     76 	.globl _P1_7
                                     77 	.globl _P1_6
                                     78 	.globl _P1_5
                                     79 	.globl _P1_4
                                     80 	.globl _P1_3
                                     81 	.globl _P1_2
                                     82 	.globl _P1_1
                                     83 	.globl _P1_0
                                     84 	.globl _TF1
                                     85 	.globl _TR1
                                     86 	.globl _TF0
                                     87 	.globl _TR0
                                     88 	.globl _IE1
                                     89 	.globl _IT1
                                     90 	.globl _IE0
                                     91 	.globl _IT0
                                     92 	.globl _P0_7
                                     93 	.globl _P0_6
                                     94 	.globl _P0_5
                                     95 	.globl _P0_4
                                     96 	.globl _P0_3
                                     97 	.globl _P0_2
                                     98 	.globl _P0_1
                                     99 	.globl _P0_0
                                    100 	.globl _P5_7
                                    101 	.globl _P5_6
                                    102 	.globl _P5_5
                                    103 	.globl _P5_4
                                    104 	.globl _P5_3
                                    105 	.globl _P5_2
                                    106 	.globl _P5_1
                                    107 	.globl _P5_0
                                    108 	.globl _P4_7
                                    109 	.globl _P4_6
                                    110 	.globl _P4_5
                                    111 	.globl _P4_4
                                    112 	.globl _P4_3
                                    113 	.globl _P4_2
                                    114 	.globl _P4_1
                                    115 	.globl _P4_0
                                    116 	.globl _PX0L
                                    117 	.globl _PT0L
                                    118 	.globl _PX1L
                                    119 	.globl _PT1L
                                    120 	.globl _PSL
                                    121 	.globl _PT2L
                                    122 	.globl _PPCL
                                    123 	.globl _EC
                                    124 	.globl _CCF0
                                    125 	.globl _CCF1
                                    126 	.globl _CCF2
                                    127 	.globl _CCF3
                                    128 	.globl _CCF4
                                    129 	.globl _CR
                                    130 	.globl _CF
                                    131 	.globl _TF2
                                    132 	.globl _EXF2
                                    133 	.globl _RCLK
                                    134 	.globl _TCLK
                                    135 	.globl _EXEN2
                                    136 	.globl _TR2
                                    137 	.globl _C_T2
                                    138 	.globl _CP_RL2
                                    139 	.globl _T2CON_7
                                    140 	.globl _T2CON_6
                                    141 	.globl _T2CON_5
                                    142 	.globl _T2CON_4
                                    143 	.globl _T2CON_3
                                    144 	.globl _T2CON_2
                                    145 	.globl _T2CON_1
                                    146 	.globl _T2CON_0
                                    147 	.globl _PT2
                                    148 	.globl _ET2
                                    149 	.globl _B
                                    150 	.globl _ACC
                                    151 	.globl _PSW
                                    152 	.globl _IP
                                    153 	.globl _P3
                                    154 	.globl _IE
                                    155 	.globl _P2
                                    156 	.globl _SBUF
                                    157 	.globl _SCON
                                    158 	.globl _P1
                                    159 	.globl _TH1
                                    160 	.globl _TH0
                                    161 	.globl _TL1
                                    162 	.globl _TL0
                                    163 	.globl _TMOD
                                    164 	.globl _TCON
                                    165 	.globl _PCON
                                    166 	.globl _DPH
                                    167 	.globl _DPL
                                    168 	.globl _SP
                                    169 	.globl _P0
                                    170 	.globl _EECON
                                    171 	.globl _KBF
                                    172 	.globl _KBE
                                    173 	.globl _KBLS
                                    174 	.globl _BRL
                                    175 	.globl _BDRCON
                                    176 	.globl _T2MOD
                                    177 	.globl _SPDAT
                                    178 	.globl _SPSTA
                                    179 	.globl _SPCON
                                    180 	.globl _SADEN
                                    181 	.globl _SADDR
                                    182 	.globl _WDTPRG
                                    183 	.globl _WDTRST
                                    184 	.globl _P5
                                    185 	.globl _P4
                                    186 	.globl _IPH1
                                    187 	.globl _IPL1
                                    188 	.globl _IPH0
                                    189 	.globl _IPL0
                                    190 	.globl _IEN1
                                    191 	.globl _IEN0
                                    192 	.globl _CMOD
                                    193 	.globl _CL
                                    194 	.globl _CH
                                    195 	.globl _CCON
                                    196 	.globl _CCAPM4
                                    197 	.globl _CCAPM3
                                    198 	.globl _CCAPM2
                                    199 	.globl _CCAPM1
                                    200 	.globl _CCAPM0
                                    201 	.globl _CCAP4L
                                    202 	.globl _CCAP3L
                                    203 	.globl _CCAP2L
                                    204 	.globl _CCAP1L
                                    205 	.globl _CCAP0L
                                    206 	.globl _CCAP4H
                                    207 	.globl _CCAP3H
                                    208 	.globl _CCAP2H
                                    209 	.globl _CCAP1H
                                    210 	.globl _CCAP0H
                                    211 	.globl _CKCON1
                                    212 	.globl _CKCON0
                                    213 	.globl _CKRL
                                    214 	.globl _AUXR1
                                    215 	.globl _AUXR
                                    216 	.globl _TH2
                                    217 	.globl _TL2
                                    218 	.globl _RCAP2H
                                    219 	.globl _RCAP2L
                                    220 	.globl _T2CON
                                    221 ;--------------------------------------------------------
                                    222 ; special function registers
                                    223 ;--------------------------------------------------------
                                    224 	.area RSEG    (ABS,DATA)
      000000                        225 	.org 0x0000
                           0000C8   226 _T2CON	=	0x00c8
                           0000CA   227 _RCAP2L	=	0x00ca
                           0000CB   228 _RCAP2H	=	0x00cb
                           0000CC   229 _TL2	=	0x00cc
                           0000CD   230 _TH2	=	0x00cd
                           00008E   231 _AUXR	=	0x008e
                           0000A2   232 _AUXR1	=	0x00a2
                           000097   233 _CKRL	=	0x0097
                           00008F   234 _CKCON0	=	0x008f
                           0000AF   235 _CKCON1	=	0x00af
                           0000FA   236 _CCAP0H	=	0x00fa
                           0000FB   237 _CCAP1H	=	0x00fb
                           0000FC   238 _CCAP2H	=	0x00fc
                           0000FD   239 _CCAP3H	=	0x00fd
                           0000FE   240 _CCAP4H	=	0x00fe
                           0000EA   241 _CCAP0L	=	0x00ea
                           0000EB   242 _CCAP1L	=	0x00eb
                           0000EC   243 _CCAP2L	=	0x00ec
                           0000ED   244 _CCAP3L	=	0x00ed
                           0000EE   245 _CCAP4L	=	0x00ee
                           0000DA   246 _CCAPM0	=	0x00da
                           0000DB   247 _CCAPM1	=	0x00db
                           0000DC   248 _CCAPM2	=	0x00dc
                           0000DD   249 _CCAPM3	=	0x00dd
                           0000DE   250 _CCAPM4	=	0x00de
                           0000D8   251 _CCON	=	0x00d8
                           0000F9   252 _CH	=	0x00f9
                           0000E9   253 _CL	=	0x00e9
                           0000D9   254 _CMOD	=	0x00d9
                           0000A8   255 _IEN0	=	0x00a8
                           0000B1   256 _IEN1	=	0x00b1
                           0000B8   257 _IPL0	=	0x00b8
                           0000B7   258 _IPH0	=	0x00b7
                           0000B2   259 _IPL1	=	0x00b2
                           0000B3   260 _IPH1	=	0x00b3
                           0000C0   261 _P4	=	0x00c0
                           0000E8   262 _P5	=	0x00e8
                           0000A6   263 _WDTRST	=	0x00a6
                           0000A7   264 _WDTPRG	=	0x00a7
                           0000A9   265 _SADDR	=	0x00a9
                           0000B9   266 _SADEN	=	0x00b9
                           0000C3   267 _SPCON	=	0x00c3
                           0000C4   268 _SPSTA	=	0x00c4
                           0000C5   269 _SPDAT	=	0x00c5
                           0000C9   270 _T2MOD	=	0x00c9
                           00009B   271 _BDRCON	=	0x009b
                           00009A   272 _BRL	=	0x009a
                           00009C   273 _KBLS	=	0x009c
                           00009D   274 _KBE	=	0x009d
                           00009E   275 _KBF	=	0x009e
                           0000D2   276 _EECON	=	0x00d2
                           000080   277 _P0	=	0x0080
                           000081   278 _SP	=	0x0081
                           000082   279 _DPL	=	0x0082
                           000083   280 _DPH	=	0x0083
                           000087   281 _PCON	=	0x0087
                           000088   282 _TCON	=	0x0088
                           000089   283 _TMOD	=	0x0089
                           00008A   284 _TL0	=	0x008a
                           00008B   285 _TL1	=	0x008b
                           00008C   286 _TH0	=	0x008c
                           00008D   287 _TH1	=	0x008d
                           000090   288 _P1	=	0x0090
                           000098   289 _SCON	=	0x0098
                           000099   290 _SBUF	=	0x0099
                           0000A0   291 _P2	=	0x00a0
                           0000A8   292 _IE	=	0x00a8
                           0000B0   293 _P3	=	0x00b0
                           0000B8   294 _IP	=	0x00b8
                           0000D0   295 _PSW	=	0x00d0
                           0000E0   296 _ACC	=	0x00e0
                           0000F0   297 _B	=	0x00f0
                                    298 ;--------------------------------------------------------
                                    299 ; special function bits
                                    300 ;--------------------------------------------------------
                                    301 	.area RSEG    (ABS,DATA)
      000000                        302 	.org 0x0000
                           0000AD   303 _ET2	=	0x00ad
                           0000BD   304 _PT2	=	0x00bd
                           0000C8   305 _T2CON_0	=	0x00c8
                           0000C9   306 _T2CON_1	=	0x00c9
                           0000CA   307 _T2CON_2	=	0x00ca
                           0000CB   308 _T2CON_3	=	0x00cb
                           0000CC   309 _T2CON_4	=	0x00cc
                           0000CD   310 _T2CON_5	=	0x00cd
                           0000CE   311 _T2CON_6	=	0x00ce
                           0000CF   312 _T2CON_7	=	0x00cf
                           0000C8   313 _CP_RL2	=	0x00c8
                           0000C9   314 _C_T2	=	0x00c9
                           0000CA   315 _TR2	=	0x00ca
                           0000CB   316 _EXEN2	=	0x00cb
                           0000CC   317 _TCLK	=	0x00cc
                           0000CD   318 _RCLK	=	0x00cd
                           0000CE   319 _EXF2	=	0x00ce
                           0000CF   320 _TF2	=	0x00cf
                           0000DF   321 _CF	=	0x00df
                           0000DE   322 _CR	=	0x00de
                           0000DC   323 _CCF4	=	0x00dc
                           0000DB   324 _CCF3	=	0x00db
                           0000DA   325 _CCF2	=	0x00da
                           0000D9   326 _CCF1	=	0x00d9
                           0000D8   327 _CCF0	=	0x00d8
                           0000AE   328 _EC	=	0x00ae
                           0000BE   329 _PPCL	=	0x00be
                           0000BD   330 _PT2L	=	0x00bd
                           0000BC   331 _PSL	=	0x00bc
                           0000BB   332 _PT1L	=	0x00bb
                           0000BA   333 _PX1L	=	0x00ba
                           0000B9   334 _PT0L	=	0x00b9
                           0000B8   335 _PX0L	=	0x00b8
                           0000C0   336 _P4_0	=	0x00c0
                           0000C1   337 _P4_1	=	0x00c1
                           0000C2   338 _P4_2	=	0x00c2
                           0000C3   339 _P4_3	=	0x00c3
                           0000C4   340 _P4_4	=	0x00c4
                           0000C5   341 _P4_5	=	0x00c5
                           0000C6   342 _P4_6	=	0x00c6
                           0000C7   343 _P4_7	=	0x00c7
                           0000E8   344 _P5_0	=	0x00e8
                           0000E9   345 _P5_1	=	0x00e9
                           0000EA   346 _P5_2	=	0x00ea
                           0000EB   347 _P5_3	=	0x00eb
                           0000EC   348 _P5_4	=	0x00ec
                           0000ED   349 _P5_5	=	0x00ed
                           0000EE   350 _P5_6	=	0x00ee
                           0000EF   351 _P5_7	=	0x00ef
                           000080   352 _P0_0	=	0x0080
                           000081   353 _P0_1	=	0x0081
                           000082   354 _P0_2	=	0x0082
                           000083   355 _P0_3	=	0x0083
                           000084   356 _P0_4	=	0x0084
                           000085   357 _P0_5	=	0x0085
                           000086   358 _P0_6	=	0x0086
                           000087   359 _P0_7	=	0x0087
                           000088   360 _IT0	=	0x0088
                           000089   361 _IE0	=	0x0089
                           00008A   362 _IT1	=	0x008a
                           00008B   363 _IE1	=	0x008b
                           00008C   364 _TR0	=	0x008c
                           00008D   365 _TF0	=	0x008d
                           00008E   366 _TR1	=	0x008e
                           00008F   367 _TF1	=	0x008f
                           000090   368 _P1_0	=	0x0090
                           000091   369 _P1_1	=	0x0091
                           000092   370 _P1_2	=	0x0092
                           000093   371 _P1_3	=	0x0093
                           000094   372 _P1_4	=	0x0094
                           000095   373 _P1_5	=	0x0095
                           000096   374 _P1_6	=	0x0096
                           000097   375 _P1_7	=	0x0097
                           000098   376 _RI	=	0x0098
                           000099   377 _TI	=	0x0099
                           00009A   378 _RB8	=	0x009a
                           00009B   379 _TB8	=	0x009b
                           00009C   380 _REN	=	0x009c
                           00009D   381 _SM2	=	0x009d
                           00009E   382 _SM1	=	0x009e
                           00009F   383 _SM0	=	0x009f
                           0000A0   384 _P2_0	=	0x00a0
                           0000A1   385 _P2_1	=	0x00a1
                           0000A2   386 _P2_2	=	0x00a2
                           0000A3   387 _P2_3	=	0x00a3
                           0000A4   388 _P2_4	=	0x00a4
                           0000A5   389 _P2_5	=	0x00a5
                           0000A6   390 _P2_6	=	0x00a6
                           0000A7   391 _P2_7	=	0x00a7
                           0000A8   392 _EX0	=	0x00a8
                           0000A9   393 _ET0	=	0x00a9
                           0000AA   394 _EX1	=	0x00aa
                           0000AB   395 _ET1	=	0x00ab
                           0000AC   396 _ES	=	0x00ac
                           0000AF   397 _EA	=	0x00af
                           0000B0   398 _P3_0	=	0x00b0
                           0000B1   399 _P3_1	=	0x00b1
                           0000B2   400 _P3_2	=	0x00b2
                           0000B3   401 _P3_3	=	0x00b3
                           0000B4   402 _P3_4	=	0x00b4
                           0000B5   403 _P3_5	=	0x00b5
                           0000B6   404 _P3_6	=	0x00b6
                           0000B7   405 _P3_7	=	0x00b7
                           0000B0   406 _RXD	=	0x00b0
                           0000B1   407 _TXD	=	0x00b1
                           0000B2   408 _INT0	=	0x00b2
                           0000B3   409 _INT1	=	0x00b3
                           0000B4   410 _T0	=	0x00b4
                           0000B5   411 _T1	=	0x00b5
                           0000B6   412 _WR	=	0x00b6
                           0000B7   413 _RD	=	0x00b7
                           0000B8   414 _PX0	=	0x00b8
                           0000B9   415 _PT0	=	0x00b9
                           0000BA   416 _PX1	=	0x00ba
                           0000BB   417 _PT1	=	0x00bb
                           0000BC   418 _PS	=	0x00bc
                           0000D0   419 _P	=	0x00d0
                           0000D1   420 _F1	=	0x00d1
                           0000D2   421 _OV	=	0x00d2
                           0000D3   422 _RS0	=	0x00d3
                           0000D4   423 _RS1	=	0x00d4
                           0000D5   424 _F0	=	0x00d5
                           0000D6   425 _AC	=	0x00d6
                           0000D7   426 _CY	=	0x00d7
                                    427 ;--------------------------------------------------------
                                    428 ; overlayable register banks
                                    429 ;--------------------------------------------------------
                                    430 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        431 	.ds 8
                                    432 ;--------------------------------------------------------
                                    433 ; internal ram data
                                    434 ;--------------------------------------------------------
                                    435 	.area DSEG    (DATA)
                                    436 ;--------------------------------------------------------
                                    437 ; overlayable items in internal ram
                                    438 ;--------------------------------------------------------
                                    439 ;--------------------------------------------------------
                                    440 ; Stack segment in internal ram
                                    441 ;--------------------------------------------------------
                                    442 	.area	SSEG
      000021                        443 __start__stack:
      000021                        444 	.ds	1
                                    445 
                                    446 ;--------------------------------------------------------
                                    447 ; indirectly addressable internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area ISEG    (DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; absolute internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area IABS    (ABS,DATA)
                                    454 	.area IABS    (ABS,DATA)
                                    455 ;--------------------------------------------------------
                                    456 ; bit data
                                    457 ;--------------------------------------------------------
                                    458 	.area BSEG    (BIT)
                                    459 ;--------------------------------------------------------
                                    460 ; paged external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area PSEG    (PAG,XDATA)
                                    463 ;--------------------------------------------------------
                                    464 ; external ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area XSEG    (XDATA)
      000001                        467 _w_command_handler_address_65537_85:
      000001                        468 	.ds 2
      000003                        469 _w_command_handler_byte_65538_88:
      000003                        470 	.ds 2
      000005                        471 _r_command_handler_address_65537_94:
      000005                        472 	.ds 2
      000007                        473 _r_command_handler_byte_65538_97:
      000007                        474 	.ds 1
      000008                        475 _x_command_handler_start_address_65537_102:
      000008                        476 	.ds 2
      00000A                        477 _x_command_handler_end_address_65538_105:
      00000A                        478 	.ds 2
      00000C                        479 _x_command_handler_byte_327682_112:
      00000C                        480 	.ds 2
                                    481 ;--------------------------------------------------------
                                    482 ; absolute external ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area XABS    (ABS,XDATA)
                                    485 ;--------------------------------------------------------
                                    486 ; external initialized ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area XISEG   (XDATA)
                                    489 	.area HOME    (CODE)
                                    490 	.area GSINIT0 (CODE)
                                    491 	.area GSINIT1 (CODE)
                                    492 	.area GSINIT2 (CODE)
                                    493 	.area GSINIT3 (CODE)
                                    494 	.area GSINIT4 (CODE)
                                    495 	.area GSINIT5 (CODE)
                                    496 	.area GSINIT  (CODE)
                                    497 	.area GSFINAL (CODE)
                                    498 	.area CSEG    (CODE)
                                    499 ;--------------------------------------------------------
                                    500 ; interrupt vector
                                    501 ;--------------------------------------------------------
                                    502 	.area HOME    (CODE)
      002000                        503 __interrupt_vect:
      002000 02 20 34         [24]  504 	ljmp	__sdcc_gsinit_startup
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
      00208D 02 20 03         [24]  519 	ljmp	__sdcc_program_startup
                                    520 ;--------------------------------------------------------
                                    521 ; Home
                                    522 ;--------------------------------------------------------
                                    523 	.area HOME    (CODE)
                                    524 	.area HOME    (CODE)
      002003                        525 __sdcc_program_startup:
      002003 02 24 CD         [24]  526 	ljmp	_main
                                    527 ;	return from main will return to caller
                                    528 ;--------------------------------------------------------
                                    529 ; code
                                    530 ;--------------------------------------------------------
                                    531 	.area CSEG    (CODE)
                                    532 ;------------------------------------------------------------
                                    533 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    534 ;------------------------------------------------------------
                                    535 ;	src/main.c:28: int _sdcc_external_startup()
                                    536 ;	-----------------------------------------
                                    537 ;	 function _sdcc_external_startup
                                    538 ;	-----------------------------------------
      002090                        539 __sdcc_external_startup:
                           000007   540 	ar7 = 0x07
                           000006   541 	ar6 = 0x06
                           000005   542 	ar5 = 0x05
                           000004   543 	ar4 = 0x04
                           000003   544 	ar3 = 0x03
                           000002   545 	ar2 = 0x02
                           000001   546 	ar1 = 0x01
                           000000   547 	ar0 = 0x00
                                    548 ;	src/main.c:31: return 0;
      002090 90 00 00         [24]  549 	mov	dptr,#0x0000
                                    550 ;	src/main.c:32: }
      002093 22               [24]  551 	ret
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'w_command_handler'
                                    554 ;------------------------------------------------------------
                                    555 ;address                   Allocated with name '_w_command_handler_address_65537_85'
                                    556 ;byte                      Allocated with name '_w_command_handler_byte_65538_88'
                                    557 ;------------------------------------------------------------
                                    558 ;	src/main.c:37: void w_command_handler()
                                    559 ;	-----------------------------------------
                                    560 ;	 function w_command_handler
                                    561 ;	-----------------------------------------
      002094                        562 _w_command_handler:
                                    563 ;	src/main.c:39: printf("\r\nEnter an EEPROM address to write to in hex [0,7FF]: ");
      002094 74 DE            [12]  564 	mov	a,#___str_0
      002096 C0 E0            [24]  565 	push	acc
      002098 74 3E            [12]  566 	mov	a,#(___str_0 >> 8)
      00209A C0 E0            [24]  567 	push	acc
      00209C 74 80            [12]  568 	mov	a,#0x80
      00209E C0 E0            [24]  569 	push	acc
      0020A0 12 32 D1         [24]  570 	lcall	_printf
      0020A3 15 81            [12]  571 	dec	sp
      0020A5 15 81            [12]  572 	dec	sp
      0020A7 15 81            [12]  573 	dec	sp
                                    574 ;	src/main.c:40: int address = 0;
      0020A9 90 00 01         [24]  575 	mov	dptr,#_w_command_handler_address_65537_85
      0020AC E4               [12]  576 	clr	a
      0020AD F0               [24]  577 	movx	@dptr,a
      0020AE A3               [24]  578 	inc	dptr
      0020AF F0               [24]  579 	movx	@dptr,a
                                    580 ;	src/main.c:41: if (0 > get_hex_value(&address))
      0020B0 90 00 01         [24]  581 	mov	dptr,#_w_command_handler_address_65537_85
      0020B3 75 F0 00         [24]  582 	mov	b,#0x00
      0020B6 12 27 56         [24]  583 	lcall	_get_hex_value
      0020B9 E5 83            [12]  584 	mov	a,dph
      0020BB 30 E7 16         [24]  585 	jnb	acc.7,00102$
                                    586 ;	src/main.c:43: printf("\r\n Failed to enter a hex integer, please try again");
      0020BE 74 15            [12]  587 	mov	a,#___str_1
      0020C0 C0 E0            [24]  588 	push	acc
      0020C2 74 3F            [12]  589 	mov	a,#(___str_1 >> 8)
      0020C4 C0 E0            [24]  590 	push	acc
      0020C6 74 80            [12]  591 	mov	a,#0x80
      0020C8 C0 E0            [24]  592 	push	acc
      0020CA 12 32 D1         [24]  593 	lcall	_printf
      0020CD 15 81            [12]  594 	dec	sp
      0020CF 15 81            [12]  595 	dec	sp
      0020D1 15 81            [12]  596 	dec	sp
                                    597 ;	src/main.c:44: return;
      0020D3 22               [24]  598 	ret
      0020D4                        599 00102$:
                                    600 ;	src/main.c:46: if(address < 0 || address > 0x7FF)
      0020D4 90 00 01         [24]  601 	mov	dptr,#_w_command_handler_address_65537_85
      0020D7 E0               [24]  602 	movx	a,@dptr
      0020D8 FE               [12]  603 	mov	r6,a
      0020D9 A3               [24]  604 	inc	dptr
      0020DA E0               [24]  605 	movx	a,@dptr
      0020DB FF               [12]  606 	mov	r7,a
      0020DC 20 E7 0F         [24]  607 	jb	acc.7,00103$
      0020DF C3               [12]  608 	clr	c
      0020E0 74 FF            [12]  609 	mov	a,#0xff
      0020E2 9E               [12]  610 	subb	a,r6
      0020E3 74 87            [12]  611 	mov	a,#(0x07 ^ 0x80)
      0020E5 8F F0            [24]  612 	mov	b,r7
      0020E7 63 F0 80         [24]  613 	xrl	b,#0x80
      0020EA 95 F0            [12]  614 	subb	a,b
      0020EC 50 16            [24]  615 	jnc	00104$
      0020EE                        616 00103$:
                                    617 ;	src/main.c:48: printf("\r\n Failed to enter an address within range, please try again");
      0020EE 74 48            [12]  618 	mov	a,#___str_2
      0020F0 C0 E0            [24]  619 	push	acc
      0020F2 74 3F            [12]  620 	mov	a,#(___str_2 >> 8)
      0020F4 C0 E0            [24]  621 	push	acc
      0020F6 74 80            [12]  622 	mov	a,#0x80
      0020F8 C0 E0            [24]  623 	push	acc
      0020FA 12 32 D1         [24]  624 	lcall	_printf
      0020FD 15 81            [12]  625 	dec	sp
      0020FF 15 81            [12]  626 	dec	sp
      002101 15 81            [12]  627 	dec	sp
                                    628 ;	src/main.c:49: return;
      002103 22               [24]  629 	ret
      002104                        630 00104$:
                                    631 ;	src/main.c:51: printf("\r\nEnter a byte to write [0, FF]: ");
      002104 74 85            [12]  632 	mov	a,#___str_3
      002106 C0 E0            [24]  633 	push	acc
      002108 74 3F            [12]  634 	mov	a,#(___str_3 >> 8)
      00210A C0 E0            [24]  635 	push	acc
      00210C 74 80            [12]  636 	mov	a,#0x80
      00210E C0 E0            [24]  637 	push	acc
      002110 12 32 D1         [24]  638 	lcall	_printf
      002113 15 81            [12]  639 	dec	sp
      002115 15 81            [12]  640 	dec	sp
      002117 15 81            [12]  641 	dec	sp
                                    642 ;	src/main.c:52: int byte = 0;
      002119 90 00 03         [24]  643 	mov	dptr,#_w_command_handler_byte_65538_88
      00211C E4               [12]  644 	clr	a
      00211D F0               [24]  645 	movx	@dptr,a
      00211E A3               [24]  646 	inc	dptr
      00211F F0               [24]  647 	movx	@dptr,a
                                    648 ;	src/main.c:53: if (0 > get_hex_value(&byte))
      002120 90 00 03         [24]  649 	mov	dptr,#_w_command_handler_byte_65538_88
      002123 75 F0 00         [24]  650 	mov	b,#0x00
      002126 12 27 56         [24]  651 	lcall	_get_hex_value
      002129 E5 83            [12]  652 	mov	a,dph
      00212B 30 E7 16         [24]  653 	jnb	acc.7,00107$
                                    654 ;	src/main.c:55: printf("\r\n Failed to enter a hex integer, please try again");
      00212E 74 15            [12]  655 	mov	a,#___str_1
      002130 C0 E0            [24]  656 	push	acc
      002132 74 3F            [12]  657 	mov	a,#(___str_1 >> 8)
      002134 C0 E0            [24]  658 	push	acc
      002136 74 80            [12]  659 	mov	a,#0x80
      002138 C0 E0            [24]  660 	push	acc
      00213A 12 32 D1         [24]  661 	lcall	_printf
      00213D 15 81            [12]  662 	dec	sp
      00213F 15 81            [12]  663 	dec	sp
      002141 15 81            [12]  664 	dec	sp
                                    665 ;	src/main.c:56: return;
      002143 22               [24]  666 	ret
      002144                        667 00107$:
                                    668 ;	src/main.c:58: if(byte < 0 || byte > 0xFF)
      002144 90 00 03         [24]  669 	mov	dptr,#_w_command_handler_byte_65538_88
      002147 E0               [24]  670 	movx	a,@dptr
      002148 FE               [12]  671 	mov	r6,a
      002149 A3               [24]  672 	inc	dptr
      00214A E0               [24]  673 	movx	a,@dptr
      00214B FF               [12]  674 	mov	r7,a
      00214C 20 E7 0F         [24]  675 	jb	acc.7,00108$
      00214F C3               [12]  676 	clr	c
      002150 74 FF            [12]  677 	mov	a,#0xff
      002152 9E               [12]  678 	subb	a,r6
      002153 74 80            [12]  679 	mov	a,#(0x00 ^ 0x80)
      002155 8F F0            [24]  680 	mov	b,r7
      002157 63 F0 80         [24]  681 	xrl	b,#0x80
      00215A 95 F0            [12]  682 	subb	a,b
      00215C 50 16            [24]  683 	jnc	00109$
      00215E                        684 00108$:
                                    685 ;	src/main.c:60: printf("\r\n Failed to enter a value that's byte size, please try again");
      00215E 74 A7            [12]  686 	mov	a,#___str_4
      002160 C0 E0            [24]  687 	push	acc
      002162 74 3F            [12]  688 	mov	a,#(___str_4 >> 8)
      002164 C0 E0            [24]  689 	push	acc
      002166 74 80            [12]  690 	mov	a,#0x80
      002168 C0 E0            [24]  691 	push	acc
      00216A 12 32 D1         [24]  692 	lcall	_printf
      00216D 15 81            [12]  693 	dec	sp
      00216F 15 81            [12]  694 	dec	sp
      002171 15 81            [12]  695 	dec	sp
                                    696 ;	src/main.c:61: return;
      002173 22               [24]  697 	ret
      002174                        698 00109$:
                                    699 ;	src/main.c:63: if (0 != eepromwritebyte(address, (uint8_t)byte))
      002174 90 00 01         [24]  700 	mov	dptr,#_w_command_handler_address_65537_85
      002177 E0               [24]  701 	movx	a,@dptr
      002178 FC               [12]  702 	mov	r4,a
      002179 A3               [24]  703 	inc	dptr
      00217A E0               [24]  704 	movx	a,@dptr
      00217B FD               [12]  705 	mov	r5,a
      00217C 90 20 65         [24]  706 	mov	dptr,#_eepromwritebyte_PARM_2
      00217F EE               [12]  707 	mov	a,r6
      002180 F0               [24]  708 	movx	@dptr,a
      002181 8C 82            [24]  709 	mov	dpl,r4
      002183 8D 83            [24]  710 	mov	dph,r5
      002185 12 2F 88         [24]  711 	lcall	_eepromwritebyte
      002188 E5 82            [12]  712 	mov	a,dpl
      00218A 85 83 F0         [24]  713 	mov	b,dph
      00218D 45 F0            [12]  714 	orl	a,b
      00218F 60 16            [24]  715 	jz	00112$
                                    716 ;	src/main.c:65: printf("\r\nFailed to write to the eeprom");
      002191 74 E5            [12]  717 	mov	a,#___str_5
      002193 C0 E0            [24]  718 	push	acc
      002195 74 3F            [12]  719 	mov	a,#(___str_5 >> 8)
      002197 C0 E0            [24]  720 	push	acc
      002199 74 80            [12]  721 	mov	a,#0x80
      00219B C0 E0            [24]  722 	push	acc
      00219D 12 32 D1         [24]  723 	lcall	_printf
      0021A0 15 81            [12]  724 	dec	sp
      0021A2 15 81            [12]  725 	dec	sp
      0021A4 15 81            [12]  726 	dec	sp
      0021A6 22               [24]  727 	ret
      0021A7                        728 00112$:
                                    729 ;	src/main.c:69: printf("\r\n Success: wrote to the eeprom");
      0021A7 74 05            [12]  730 	mov	a,#___str_6
      0021A9 C0 E0            [24]  731 	push	acc
      0021AB 74 40            [12]  732 	mov	a,#(___str_6 >> 8)
      0021AD C0 E0            [24]  733 	push	acc
      0021AF 74 80            [12]  734 	mov	a,#0x80
      0021B1 C0 E0            [24]  735 	push	acc
      0021B3 12 32 D1         [24]  736 	lcall	_printf
      0021B6 15 81            [12]  737 	dec	sp
      0021B8 15 81            [12]  738 	dec	sp
      0021BA 15 81            [12]  739 	dec	sp
                                    740 ;	src/main.c:71: }
      0021BC 22               [24]  741 	ret
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'r_command_handler'
                                    744 ;------------------------------------------------------------
                                    745 ;address                   Allocated with name '_r_command_handler_address_65537_94'
                                    746 ;byte                      Allocated with name '_r_command_handler_byte_65538_97'
                                    747 ;------------------------------------------------------------
                                    748 ;	src/main.c:74: void r_command_handler()
                                    749 ;	-----------------------------------------
                                    750 ;	 function r_command_handler
                                    751 ;	-----------------------------------------
      0021BD                        752 _r_command_handler:
                                    753 ;	src/main.c:76: printf("\r\nEnter an EEPROM address to read from in hex [0,7FF]: ");
      0021BD 74 25            [12]  754 	mov	a,#___str_7
      0021BF C0 E0            [24]  755 	push	acc
      0021C1 74 40            [12]  756 	mov	a,#(___str_7 >> 8)
      0021C3 C0 E0            [24]  757 	push	acc
      0021C5 74 80            [12]  758 	mov	a,#0x80
      0021C7 C0 E0            [24]  759 	push	acc
      0021C9 12 32 D1         [24]  760 	lcall	_printf
      0021CC 15 81            [12]  761 	dec	sp
      0021CE 15 81            [12]  762 	dec	sp
      0021D0 15 81            [12]  763 	dec	sp
                                    764 ;	src/main.c:77: int address = 0;
      0021D2 90 00 05         [24]  765 	mov	dptr,#_r_command_handler_address_65537_94
      0021D5 E4               [12]  766 	clr	a
      0021D6 F0               [24]  767 	movx	@dptr,a
      0021D7 A3               [24]  768 	inc	dptr
      0021D8 F0               [24]  769 	movx	@dptr,a
                                    770 ;	src/main.c:78: if (0 > get_hex_value(&address))
      0021D9 90 00 05         [24]  771 	mov	dptr,#_r_command_handler_address_65537_94
      0021DC 75 F0 00         [24]  772 	mov	b,#0x00
      0021DF 12 27 56         [24]  773 	lcall	_get_hex_value
      0021E2 E5 83            [12]  774 	mov	a,dph
      0021E4 30 E7 16         [24]  775 	jnb	acc.7,00102$
                                    776 ;	src/main.c:80: printf("\r\n Failed to enter a hex integer, please try again");
      0021E7 74 15            [12]  777 	mov	a,#___str_1
      0021E9 C0 E0            [24]  778 	push	acc
      0021EB 74 3F            [12]  779 	mov	a,#(___str_1 >> 8)
      0021ED C0 E0            [24]  780 	push	acc
      0021EF 74 80            [12]  781 	mov	a,#0x80
      0021F1 C0 E0            [24]  782 	push	acc
      0021F3 12 32 D1         [24]  783 	lcall	_printf
      0021F6 15 81            [12]  784 	dec	sp
      0021F8 15 81            [12]  785 	dec	sp
      0021FA 15 81            [12]  786 	dec	sp
                                    787 ;	src/main.c:81: return;
      0021FC 22               [24]  788 	ret
      0021FD                        789 00102$:
                                    790 ;	src/main.c:83: if(address < 0 || address > 0x7FF)
      0021FD 90 00 05         [24]  791 	mov	dptr,#_r_command_handler_address_65537_94
      002200 E0               [24]  792 	movx	a,@dptr
      002201 FE               [12]  793 	mov	r6,a
      002202 A3               [24]  794 	inc	dptr
      002203 E0               [24]  795 	movx	a,@dptr
      002204 FF               [12]  796 	mov	r7,a
      002205 20 E7 0F         [24]  797 	jb	acc.7,00103$
      002208 C3               [12]  798 	clr	c
      002209 74 FF            [12]  799 	mov	a,#0xff
      00220B 9E               [12]  800 	subb	a,r6
      00220C 74 87            [12]  801 	mov	a,#(0x07 ^ 0x80)
      00220E 8F F0            [24]  802 	mov	b,r7
      002210 63 F0 80         [24]  803 	xrl	b,#0x80
      002213 95 F0            [12]  804 	subb	a,b
      002215 50 16            [24]  805 	jnc	00104$
      002217                        806 00103$:
                                    807 ;	src/main.c:85: printf("\r\n Failed to enter an address within range, please try again");
      002217 74 48            [12]  808 	mov	a,#___str_2
      002219 C0 E0            [24]  809 	push	acc
      00221B 74 3F            [12]  810 	mov	a,#(___str_2 >> 8)
      00221D C0 E0            [24]  811 	push	acc
      00221F 74 80            [12]  812 	mov	a,#0x80
      002221 C0 E0            [24]  813 	push	acc
      002223 12 32 D1         [24]  814 	lcall	_printf
      002226 15 81            [12]  815 	dec	sp
      002228 15 81            [12]  816 	dec	sp
      00222A 15 81            [12]  817 	dec	sp
                                    818 ;	src/main.c:86: return;
      00222C 22               [24]  819 	ret
      00222D                        820 00104$:
                                    821 ;	src/main.c:89: if (0 != eepromreadbyte(address, &byte))
      00222D 90 20 68         [24]  822 	mov	dptr,#_eepromreadbyte_PARM_2
      002230 74 07            [12]  823 	mov	a,#_r_command_handler_byte_65538_97
      002232 F0               [24]  824 	movx	@dptr,a
      002233 74 00            [12]  825 	mov	a,#(_r_command_handler_byte_65538_97 >> 8)
      002235 A3               [24]  826 	inc	dptr
      002236 F0               [24]  827 	movx	@dptr,a
      002237 E4               [12]  828 	clr	a
      002238 A3               [24]  829 	inc	dptr
      002239 F0               [24]  830 	movx	@dptr,a
      00223A 8E 82            [24]  831 	mov	dpl,r6
      00223C 8F 83            [24]  832 	mov	dph,r7
      00223E 12 30 09         [24]  833 	lcall	_eepromreadbyte
      002241 E5 82            [12]  834 	mov	a,dpl
      002243 85 83 F0         [24]  835 	mov	b,dph
      002246 45 F0            [12]  836 	orl	a,b
      002248 60 16            [24]  837 	jz	00107$
                                    838 ;	src/main.c:91: printf("\r\nFailed to read from the eeprom");
      00224A 74 5D            [12]  839 	mov	a,#___str_8
      00224C C0 E0            [24]  840 	push	acc
      00224E 74 40            [12]  841 	mov	a,#(___str_8 >> 8)
      002250 C0 E0            [24]  842 	push	acc
      002252 74 80            [12]  843 	mov	a,#0x80
      002254 C0 E0            [24]  844 	push	acc
      002256 12 32 D1         [24]  845 	lcall	_printf
      002259 15 81            [12]  846 	dec	sp
      00225B 15 81            [12]  847 	dec	sp
      00225D 15 81            [12]  848 	dec	sp
      00225F 22               [24]  849 	ret
      002260                        850 00107$:
                                    851 ;	src/main.c:95: printf("\r\n %03x: %02hhx", address, byte);
      002260 90 00 07         [24]  852 	mov	dptr,#_r_command_handler_byte_65538_97
      002263 E0               [24]  853 	movx	a,@dptr
      002264 FF               [12]  854 	mov	r7,a
      002265 7E 00            [12]  855 	mov	r6,#0x00
      002267 C0 07            [24]  856 	push	ar7
      002269 C0 06            [24]  857 	push	ar6
      00226B 90 00 05         [24]  858 	mov	dptr,#_r_command_handler_address_65537_94
      00226E E0               [24]  859 	movx	a,@dptr
      00226F C0 E0            [24]  860 	push	acc
      002271 A3               [24]  861 	inc	dptr
      002272 E0               [24]  862 	movx	a,@dptr
      002273 C0 E0            [24]  863 	push	acc
      002275 74 7E            [12]  864 	mov	a,#___str_9
      002277 C0 E0            [24]  865 	push	acc
      002279 74 40            [12]  866 	mov	a,#(___str_9 >> 8)
      00227B C0 E0            [24]  867 	push	acc
      00227D 74 80            [12]  868 	mov	a,#0x80
      00227F C0 E0            [24]  869 	push	acc
      002281 12 32 D1         [24]  870 	lcall	_printf
      002284 E5 81            [12]  871 	mov	a,sp
      002286 24 F9            [12]  872 	add	a,#0xf9
      002288 F5 81            [12]  873 	mov	sp,a
                                    874 ;	src/main.c:97: }
      00228A 22               [24]  875 	ret
                                    876 ;------------------------------------------------------------
                                    877 ;Allocation info for local variables in function 'print_dashed_line'
                                    878 ;------------------------------------------------------------
                                    879 ;	src/main.c:99: void print_dashed_line()
                                    880 ;	-----------------------------------------
                                    881 ;	 function print_dashed_line
                                    882 ;	-----------------------------------------
      00228B                        883 _print_dashed_line:
                                    884 ;	src/main.c:101: printf("\r\n---------------------------------------------------");
      00228B 74 8E            [12]  885 	mov	a,#___str_10
      00228D C0 E0            [24]  886 	push	acc
      00228F 74 40            [12]  887 	mov	a,#(___str_10 >> 8)
      002291 C0 E0            [24]  888 	push	acc
      002293 74 80            [12]  889 	mov	a,#0x80
      002295 C0 E0            [24]  890 	push	acc
      002297 12 32 D1         [24]  891 	lcall	_printf
      00229A 15 81            [12]  892 	dec	sp
      00229C 15 81            [12]  893 	dec	sp
      00229E 15 81            [12]  894 	dec	sp
                                    895 ;	src/main.c:102: }
      0022A0 22               [24]  896 	ret
                                    897 ;------------------------------------------------------------
                                    898 ;Allocation info for local variables in function 'x_command_handler'
                                    899 ;------------------------------------------------------------
                                    900 ;start_address             Allocated with name '_x_command_handler_start_address_65537_102'
                                    901 ;end_address               Allocated with name '_x_command_handler_end_address_65538_105'
                                    902 ;row_start                 Allocated with name '_x_command_handler_row_start_131074_109'
                                    903 ;i                         Allocated with name '_x_command_handler_i_262146_111'
                                    904 ;byte                      Allocated with name '_x_command_handler_byte_327682_112'
                                    905 ;------------------------------------------------------------
                                    906 ;	src/main.c:104: void x_command_handler()
                                    907 ;	-----------------------------------------
                                    908 ;	 function x_command_handler
                                    909 ;	-----------------------------------------
      0022A1                        910 _x_command_handler:
                                    911 ;	src/main.c:106: printf("\r\nEnter a valid starting hex address [0, 7FF]: ");
      0022A1 74 C4            [12]  912 	mov	a,#___str_11
      0022A3 C0 E0            [24]  913 	push	acc
      0022A5 74 40            [12]  914 	mov	a,#(___str_11 >> 8)
      0022A7 C0 E0            [24]  915 	push	acc
      0022A9 74 80            [12]  916 	mov	a,#0x80
      0022AB C0 E0            [24]  917 	push	acc
      0022AD 12 32 D1         [24]  918 	lcall	_printf
      0022B0 15 81            [12]  919 	dec	sp
      0022B2 15 81            [12]  920 	dec	sp
      0022B4 15 81            [12]  921 	dec	sp
                                    922 ;	src/main.c:107: int start_address = 0;
      0022B6 90 00 08         [24]  923 	mov	dptr,#_x_command_handler_start_address_65537_102
      0022B9 E4               [12]  924 	clr	a
      0022BA F0               [24]  925 	movx	@dptr,a
      0022BB A3               [24]  926 	inc	dptr
      0022BC F0               [24]  927 	movx	@dptr,a
                                    928 ;	src/main.c:108: if (0 > get_hex_value(&start_address))
      0022BD 90 00 08         [24]  929 	mov	dptr,#_x_command_handler_start_address_65537_102
      0022C0 75 F0 00         [24]  930 	mov	b,#0x00
      0022C3 12 27 56         [24]  931 	lcall	_get_hex_value
      0022C6 E5 83            [12]  932 	mov	a,dph
      0022C8 30 E7 16         [24]  933 	jnb	acc.7,00102$
                                    934 ;	src/main.c:110: printf("\r\n Failed to enter a hex integer, please try again");
      0022CB 74 15            [12]  935 	mov	a,#___str_1
      0022CD C0 E0            [24]  936 	push	acc
      0022CF 74 3F            [12]  937 	mov	a,#(___str_1 >> 8)
      0022D1 C0 E0            [24]  938 	push	acc
      0022D3 74 80            [12]  939 	mov	a,#0x80
      0022D5 C0 E0            [24]  940 	push	acc
      0022D7 12 32 D1         [24]  941 	lcall	_printf
      0022DA 15 81            [12]  942 	dec	sp
      0022DC 15 81            [12]  943 	dec	sp
      0022DE 15 81            [12]  944 	dec	sp
                                    945 ;	src/main.c:111: return;
      0022E0 22               [24]  946 	ret
      0022E1                        947 00102$:
                                    948 ;	src/main.c:113: if(start_address < 0 || start_address > 0x7FF)
      0022E1 90 00 08         [24]  949 	mov	dptr,#_x_command_handler_start_address_65537_102
      0022E4 E0               [24]  950 	movx	a,@dptr
      0022E5 FE               [12]  951 	mov	r6,a
      0022E6 A3               [24]  952 	inc	dptr
      0022E7 E0               [24]  953 	movx	a,@dptr
      0022E8 FF               [12]  954 	mov	r7,a
      0022E9 20 E7 0F         [24]  955 	jb	acc.7,00103$
      0022EC C3               [12]  956 	clr	c
      0022ED 74 FF            [12]  957 	mov	a,#0xff
      0022EF 9E               [12]  958 	subb	a,r6
      0022F0 74 87            [12]  959 	mov	a,#(0x07 ^ 0x80)
      0022F2 8F F0            [24]  960 	mov	b,r7
      0022F4 63 F0 80         [24]  961 	xrl	b,#0x80
      0022F7 95 F0            [12]  962 	subb	a,b
      0022F9 50 16            [24]  963 	jnc	00104$
      0022FB                        964 00103$:
                                    965 ;	src/main.c:115: printf("\r\n Failed to enter an address within range, please try again");
      0022FB 74 48            [12]  966 	mov	a,#___str_2
      0022FD C0 E0            [24]  967 	push	acc
      0022FF 74 3F            [12]  968 	mov	a,#(___str_2 >> 8)
      002301 C0 E0            [24]  969 	push	acc
      002303 74 80            [12]  970 	mov	a,#0x80
      002305 C0 E0            [24]  971 	push	acc
      002307 12 32 D1         [24]  972 	lcall	_printf
      00230A 15 81            [12]  973 	dec	sp
      00230C 15 81            [12]  974 	dec	sp
      00230E 15 81            [12]  975 	dec	sp
                                    976 ;	src/main.c:116: return;
      002310 22               [24]  977 	ret
      002311                        978 00104$:
                                    979 ;	src/main.c:119: printf("\r\nEnter a valid ending hex address [0,7FF]: ");
      002311 74 F4            [12]  980 	mov	a,#___str_12
      002313 C0 E0            [24]  981 	push	acc
      002315 74 40            [12]  982 	mov	a,#(___str_12 >> 8)
      002317 C0 E0            [24]  983 	push	acc
      002319 74 80            [12]  984 	mov	a,#0x80
      00231B C0 E0            [24]  985 	push	acc
      00231D 12 32 D1         [24]  986 	lcall	_printf
      002320 15 81            [12]  987 	dec	sp
      002322 15 81            [12]  988 	dec	sp
      002324 15 81            [12]  989 	dec	sp
                                    990 ;	src/main.c:120: int end_address = 0;
      002326 90 00 0A         [24]  991 	mov	dptr,#_x_command_handler_end_address_65538_105
      002329 E4               [12]  992 	clr	a
      00232A F0               [24]  993 	movx	@dptr,a
      00232B A3               [24]  994 	inc	dptr
      00232C F0               [24]  995 	movx	@dptr,a
                                    996 ;	src/main.c:121: if (0 > get_hex_value(&end_address))
      00232D 90 00 0A         [24]  997 	mov	dptr,#_x_command_handler_end_address_65538_105
      002330 75 F0 00         [24]  998 	mov	b,#0x00
      002333 12 27 56         [24]  999 	lcall	_get_hex_value
      002336 E5 83            [12] 1000 	mov	a,dph
      002338 30 E7 16         [24] 1001 	jnb	acc.7,00107$
                                   1002 ;	src/main.c:123: printf("\r\n Failed to enter a hex integer, please try again");
      00233B 74 15            [12] 1003 	mov	a,#___str_1
      00233D C0 E0            [24] 1004 	push	acc
      00233F 74 3F            [12] 1005 	mov	a,#(___str_1 >> 8)
      002341 C0 E0            [24] 1006 	push	acc
      002343 74 80            [12] 1007 	mov	a,#0x80
      002345 C0 E0            [24] 1008 	push	acc
      002347 12 32 D1         [24] 1009 	lcall	_printf
      00234A 15 81            [12] 1010 	dec	sp
      00234C 15 81            [12] 1011 	dec	sp
      00234E 15 81            [12] 1012 	dec	sp
                                   1013 ;	src/main.c:124: return;
      002350 22               [24] 1014 	ret
      002351                       1015 00107$:
                                   1016 ;	src/main.c:126: if(end_address < 0 || end_address > 0x7FF)
      002351 90 00 0A         [24] 1017 	mov	dptr,#_x_command_handler_end_address_65538_105
      002354 E0               [24] 1018 	movx	a,@dptr
      002355 FE               [12] 1019 	mov	r6,a
      002356 A3               [24] 1020 	inc	dptr
      002357 E0               [24] 1021 	movx	a,@dptr
      002358 FF               [12] 1022 	mov	r7,a
      002359 20 E7 0F         [24] 1023 	jb	acc.7,00108$
      00235C C3               [12] 1024 	clr	c
      00235D 74 FF            [12] 1025 	mov	a,#0xff
      00235F 9E               [12] 1026 	subb	a,r6
      002360 74 87            [12] 1027 	mov	a,#(0x07 ^ 0x80)
      002362 8F F0            [24] 1028 	mov	b,r7
      002364 63 F0 80         [24] 1029 	xrl	b,#0x80
      002367 95 F0            [12] 1030 	subb	a,b
      002369 50 16            [24] 1031 	jnc	00109$
      00236B                       1032 00108$:
                                   1033 ;	src/main.c:128: printf("\r\n Failed to enter an address within range, please try again");
      00236B 74 48            [12] 1034 	mov	a,#___str_2
      00236D C0 E0            [24] 1035 	push	acc
      00236F 74 3F            [12] 1036 	mov	a,#(___str_2 >> 8)
      002371 C0 E0            [24] 1037 	push	acc
      002373 74 80            [12] 1038 	mov	a,#0x80
      002375 C0 E0            [24] 1039 	push	acc
      002377 12 32 D1         [24] 1040 	lcall	_printf
      00237A 15 81            [12] 1041 	dec	sp
      00237C 15 81            [12] 1042 	dec	sp
      00237E 15 81            [12] 1043 	dec	sp
                                   1044 ;	src/main.c:129: return;
      002380 22               [24] 1045 	ret
      002381                       1046 00109$:
                                   1047 ;	src/main.c:132: if (start_address > end_address)
      002381 90 00 08         [24] 1048 	mov	dptr,#_x_command_handler_start_address_65537_102
      002384 E0               [24] 1049 	movx	a,@dptr
      002385 FC               [12] 1050 	mov	r4,a
      002386 A3               [24] 1051 	inc	dptr
      002387 E0               [24] 1052 	movx	a,@dptr
      002388 FD               [12] 1053 	mov	r5,a
      002389 C3               [12] 1054 	clr	c
      00238A EE               [12] 1055 	mov	a,r6
      00238B 9C               [12] 1056 	subb	a,r4
      00238C EF               [12] 1057 	mov	a,r7
      00238D 64 80            [12] 1058 	xrl	a,#0x80
      00238F 8D F0            [24] 1059 	mov	b,r5
      002391 63 F0 80         [24] 1060 	xrl	b,#0x80
      002394 95 F0            [12] 1061 	subb	a,b
      002396 50 16            [24] 1062 	jnc	00112$
                                   1063 ;	src/main.c:134: printf("\r\n start_address is greater than end address; please try again");
      002398 74 21            [12] 1064 	mov	a,#___str_13
      00239A C0 E0            [24] 1065 	push	acc
      00239C 74 41            [12] 1066 	mov	a,#(___str_13 >> 8)
      00239E C0 E0            [24] 1067 	push	acc
      0023A0 74 80            [12] 1068 	mov	a,#0x80
      0023A2 C0 E0            [24] 1069 	push	acc
      0023A4 12 32 D1         [24] 1070 	lcall	_printf
      0023A7 15 81            [12] 1071 	dec	sp
      0023A9 15 81            [12] 1072 	dec	sp
      0023AB 15 81            [12] 1073 	dec	sp
                                   1074 ;	src/main.c:135: return; 
      0023AD 22               [24] 1075 	ret
      0023AE                       1076 00112$:
                                   1077 ;	src/main.c:138: start_address &= ~(0xF);
      0023AE 90 00 08         [24] 1078 	mov	dptr,#_x_command_handler_start_address_65537_102
      0023B1 74 F0            [12] 1079 	mov	a,#0xf0
      0023B3 5C               [12] 1080 	anl	a,r4
      0023B4 F0               [24] 1081 	movx	@dptr,a
      0023B5 ED               [12] 1082 	mov	a,r5
      0023B6 A3               [24] 1083 	inc	dptr
      0023B7 F0               [24] 1084 	movx	@dptr,a
                                   1085 ;	src/main.c:139: end_address &= ~(0xF);
      0023B8 90 00 0A         [24] 1086 	mov	dptr,#_x_command_handler_end_address_65538_105
      0023BB 74 F0            [12] 1087 	mov	a,#0xf0
      0023BD 5E               [12] 1088 	anl	a,r6
      0023BE F0               [24] 1089 	movx	@dptr,a
      0023BF EF               [12] 1090 	mov	a,r7
      0023C0 A3               [24] 1091 	inc	dptr
      0023C1 F0               [24] 1092 	movx	@dptr,a
                                   1093 ;	src/main.c:140: end_address += 0x10;
      0023C2 90 00 0A         [24] 1094 	mov	dptr,#_x_command_handler_end_address_65538_105
      0023C5 E0               [24] 1095 	movx	a,@dptr
      0023C6 FE               [12] 1096 	mov	r6,a
      0023C7 A3               [24] 1097 	inc	dptr
      0023C8 E0               [24] 1098 	movx	a,@dptr
      0023C9 FF               [12] 1099 	mov	r7,a
      0023CA 90 00 0A         [24] 1100 	mov	dptr,#_x_command_handler_end_address_65538_105
      0023CD 74 10            [12] 1101 	mov	a,#0x10
      0023CF 2E               [12] 1102 	add	a,r6
      0023D0 F0               [24] 1103 	movx	@dptr,a
      0023D1 E4               [12] 1104 	clr	a
      0023D2 3F               [12] 1105 	addc	a,r7
      0023D3 A3               [24] 1106 	inc	dptr
      0023D4 F0               [24] 1107 	movx	@dptr,a
                                   1108 ;	src/main.c:143: for(int row_start = start_address; row_start < end_address; row_start+=16)
      0023D5 90 00 08         [24] 1109 	mov	dptr,#_x_command_handler_start_address_65537_102
      0023D8 E0               [24] 1110 	movx	a,@dptr
      0023D9 FE               [12] 1111 	mov	r6,a
      0023DA A3               [24] 1112 	inc	dptr
      0023DB E0               [24] 1113 	movx	a,@dptr
      0023DC FF               [12] 1114 	mov	r7,a
      0023DD                       1115 00121$:
      0023DD 90 00 0A         [24] 1116 	mov	dptr,#_x_command_handler_end_address_65538_105
      0023E0 E0               [24] 1117 	movx	a,@dptr
      0023E1 FC               [12] 1118 	mov	r4,a
      0023E2 A3               [24] 1119 	inc	dptr
      0023E3 E0               [24] 1120 	movx	a,@dptr
      0023E4 FD               [12] 1121 	mov	r5,a
      0023E5 C3               [12] 1122 	clr	c
      0023E6 EE               [12] 1123 	mov	a,r6
      0023E7 9C               [12] 1124 	subb	a,r4
      0023E8 EF               [12] 1125 	mov	a,r7
      0023E9 64 80            [12] 1126 	xrl	a,#0x80
      0023EB 8D F0            [24] 1127 	mov	b,r5
      0023ED 63 F0 80         [24] 1128 	xrl	b,#0x80
      0023F0 95 F0            [12] 1129 	subb	a,b
      0023F2 40 01            [24] 1130 	jc	00172$
      0023F4 22               [24] 1131 	ret
      0023F5                       1132 00172$:
                                   1133 ;	src/main.c:145: printf("\r\n%03X: ", row_start);
      0023F5 C0 07            [24] 1134 	push	ar7
      0023F7 C0 06            [24] 1135 	push	ar6
      0023F9 C0 06            [24] 1136 	push	ar6
      0023FB C0 07            [24] 1137 	push	ar7
      0023FD 74 60            [12] 1138 	mov	a,#___str_14
      0023FF C0 E0            [24] 1139 	push	acc
      002401 74 41            [12] 1140 	mov	a,#(___str_14 >> 8)
      002403 C0 E0            [24] 1141 	push	acc
      002405 74 80            [12] 1142 	mov	a,#0x80
      002407 C0 E0            [24] 1143 	push	acc
      002409 12 32 D1         [24] 1144 	lcall	_printf
      00240C E5 81            [12] 1145 	mov	a,sp
      00240E 24 FB            [12] 1146 	add	a,#0xfb
      002410 F5 81            [12] 1147 	mov	sp,a
      002412 D0 06            [24] 1148 	pop	ar6
      002414 D0 07            [24] 1149 	pop	ar7
                                   1150 ;	src/main.c:146: for(int i = 0; i < 16; i++)
      002416 8E 04            [24] 1151 	mov	ar4,r6
      002418 8F 05            [24] 1152 	mov	ar5,r7
      00241A 7A 00            [12] 1153 	mov	r2,#0x00
      00241C 7B 00            [12] 1154 	mov	r3,#0x00
      00241E                       1155 00118$:
      00241E C3               [12] 1156 	clr	c
      00241F EA               [12] 1157 	mov	a,r2
      002420 94 10            [12] 1158 	subb	a,#0x10
      002422 EB               [12] 1159 	mov	a,r3
      002423 64 80            [12] 1160 	xrl	a,#0x80
      002425 94 80            [12] 1161 	subb	a,#0x80
      002427 40 03            [24] 1162 	jc	00173$
      002429 02 24 C3         [24] 1163 	ljmp	00122$
      00242C                       1164 00173$:
                                   1165 ;	src/main.c:148: int byte = 0;
      00242C 90 00 0C         [24] 1166 	mov	dptr,#_x_command_handler_byte_327682_112
      00242F E4               [12] 1167 	clr	a
      002430 F0               [24] 1168 	movx	@dptr,a
      002431 A3               [24] 1169 	inc	dptr
      002432 F0               [24] 1170 	movx	@dptr,a
                                   1171 ;	src/main.c:149: if(0 != eepromreadbyte(row_start + i, &byte))
      002433 EA               [12] 1172 	mov	a,r2
      002434 2C               [12] 1173 	add	a,r4
      002435 F8               [12] 1174 	mov	r0,a
      002436 EB               [12] 1175 	mov	a,r3
      002437 3D               [12] 1176 	addc	a,r5
      002438 F9               [12] 1177 	mov	r1,a
      002439 90 20 68         [24] 1178 	mov	dptr,#_eepromreadbyte_PARM_2
      00243C 74 0C            [12] 1179 	mov	a,#_x_command_handler_byte_327682_112
      00243E F0               [24] 1180 	movx	@dptr,a
      00243F 74 00            [12] 1181 	mov	a,#(_x_command_handler_byte_327682_112 >> 8)
      002441 A3               [24] 1182 	inc	dptr
      002442 F0               [24] 1183 	movx	@dptr,a
      002443 E4               [12] 1184 	clr	a
      002444 A3               [24] 1185 	inc	dptr
      002445 F0               [24] 1186 	movx	@dptr,a
      002446 88 82            [24] 1187 	mov	dpl,r0
      002448 89 83            [24] 1188 	mov	dph,r1
      00244A C0 07            [24] 1189 	push	ar7
      00244C C0 06            [24] 1190 	push	ar6
      00244E C0 05            [24] 1191 	push	ar5
      002450 C0 04            [24] 1192 	push	ar4
      002452 C0 03            [24] 1193 	push	ar3
      002454 C0 02            [24] 1194 	push	ar2
      002456 12 30 09         [24] 1195 	lcall	_eepromreadbyte
      002459 E5 82            [12] 1196 	mov	a,dpl
      00245B 85 83 F0         [24] 1197 	mov	b,dph
      00245E D0 02            [24] 1198 	pop	ar2
      002460 D0 03            [24] 1199 	pop	ar3
      002462 D0 04            [24] 1200 	pop	ar4
      002464 D0 05            [24] 1201 	pop	ar5
      002466 D0 06            [24] 1202 	pop	ar6
      002468 D0 07            [24] 1203 	pop	ar7
      00246A 45 F0            [12] 1204 	orl	a,b
      00246C 60 16            [24] 1205 	jz	00114$
                                   1206 ;	src/main.c:151: printf("\r\n Failed to read byte from eeprom, ending command \r\n");
      00246E 74 69            [12] 1207 	mov	a,#___str_15
      002470 C0 E0            [24] 1208 	push	acc
      002472 74 41            [12] 1209 	mov	a,#(___str_15 >> 8)
      002474 C0 E0            [24] 1210 	push	acc
      002476 74 80            [12] 1211 	mov	a,#0x80
      002478 C0 E0            [24] 1212 	push	acc
      00247A 12 32 D1         [24] 1213 	lcall	_printf
      00247D 15 81            [12] 1214 	dec	sp
      00247F 15 81            [12] 1215 	dec	sp
      002481 15 81            [12] 1216 	dec	sp
                                   1217 ;	src/main.c:152: return;
      002483 22               [24] 1218 	ret
      002484                       1219 00114$:
                                   1220 ;	src/main.c:154: printf("%02X ", byte);
      002484 C0 07            [24] 1221 	push	ar7
      002486 C0 06            [24] 1222 	push	ar6
      002488 C0 05            [24] 1223 	push	ar5
      00248A C0 04            [24] 1224 	push	ar4
      00248C C0 03            [24] 1225 	push	ar3
      00248E C0 02            [24] 1226 	push	ar2
      002490 90 00 0C         [24] 1227 	mov	dptr,#_x_command_handler_byte_327682_112
      002493 E0               [24] 1228 	movx	a,@dptr
      002494 C0 E0            [24] 1229 	push	acc
      002496 A3               [24] 1230 	inc	dptr
      002497 E0               [24] 1231 	movx	a,@dptr
      002498 C0 E0            [24] 1232 	push	acc
      00249A 74 9F            [12] 1233 	mov	a,#___str_16
      00249C C0 E0            [24] 1234 	push	acc
      00249E 74 41            [12] 1235 	mov	a,#(___str_16 >> 8)
      0024A0 C0 E0            [24] 1236 	push	acc
      0024A2 74 80            [12] 1237 	mov	a,#0x80
      0024A4 C0 E0            [24] 1238 	push	acc
      0024A6 12 32 D1         [24] 1239 	lcall	_printf
      0024A9 E5 81            [12] 1240 	mov	a,sp
      0024AB 24 FB            [12] 1241 	add	a,#0xfb
      0024AD F5 81            [12] 1242 	mov	sp,a
      0024AF D0 02            [24] 1243 	pop	ar2
      0024B1 D0 03            [24] 1244 	pop	ar3
      0024B3 D0 04            [24] 1245 	pop	ar4
      0024B5 D0 05            [24] 1246 	pop	ar5
      0024B7 D0 06            [24] 1247 	pop	ar6
      0024B9 D0 07            [24] 1248 	pop	ar7
                                   1249 ;	src/main.c:146: for(int i = 0; i < 16; i++)
      0024BB 0A               [12] 1250 	inc	r2
      0024BC BA 00 01         [24] 1251 	cjne	r2,#0x00,00175$
      0024BF 0B               [12] 1252 	inc	r3
      0024C0                       1253 00175$:
      0024C0 02 24 1E         [24] 1254 	ljmp	00118$
      0024C3                       1255 00122$:
                                   1256 ;	src/main.c:143: for(int row_start = start_address; row_start < end_address; row_start+=16)
      0024C3 74 10            [12] 1257 	mov	a,#0x10
      0024C5 2E               [12] 1258 	add	a,r6
      0024C6 FE               [12] 1259 	mov	r6,a
      0024C7 E4               [12] 1260 	clr	a
      0024C8 3F               [12] 1261 	addc	a,r7
      0024C9 FF               [12] 1262 	mov	r7,a
                                   1263 ;	src/main.c:157: }
      0024CA 02 23 DD         [24] 1264 	ljmp	00121$
                                   1265 ;------------------------------------------------------------
                                   1266 ;Allocation info for local variables in function 'main'
                                   1267 ;------------------------------------------------------------
                                   1268 ;received_char             Allocated with name '_main_received_char_196609_117'
                                   1269 ;------------------------------------------------------------
                                   1270 ;	src/main.c:161: void main()
                                   1271 ;	-----------------------------------------
                                   1272 ;	 function main
                                   1273 ;	-----------------------------------------
      0024CD                       1274 _main:
                                   1275 ;	src/main.c:163: eeprom_init();
      0024CD 12 2F 83         [24] 1276 	lcall	_eeprom_init
                                   1277 ;	src/main.c:164: print_dashed_line();
      0024D0 12 22 8B         [24] 1278 	lcall	_print_dashed_line
      0024D3                       1279 00110$:
                                   1280 ;	src/main.c:167: printf("\r\nEnter a command char (? for help): ");
      0024D3 74 A5            [12] 1281 	mov	a,#___str_17
      0024D5 C0 E0            [24] 1282 	push	acc
      0024D7 74 41            [12] 1283 	mov	a,#(___str_17 >> 8)
      0024D9 C0 E0            [24] 1284 	push	acc
      0024DB 74 80            [12] 1285 	mov	a,#0x80
      0024DD C0 E0            [24] 1286 	push	acc
      0024DF 12 32 D1         [24] 1287 	lcall	_printf
      0024E2 15 81            [12] 1288 	dec	sp
      0024E4 15 81            [12] 1289 	dec	sp
      0024E6 15 81            [12] 1290 	dec	sp
                                   1291 ;	src/main.c:168: char received_char = getchar();
      0024E8 12 25 EA         [24] 1292 	lcall	_getchar
      0024EB AE 82            [24] 1293 	mov	r6,dpl
                                   1294 ;	src/main.c:169: putchar(received_char);
      0024ED 8E 05            [24] 1295 	mov	ar5,r6
      0024EF 7F 00            [12] 1296 	mov	r7,#0x00
      0024F1 8D 82            [24] 1297 	mov	dpl,r5
      0024F3 8F 83            [24] 1298 	mov	dph,r7
      0024F5 C0 06            [24] 1299 	push	ar6
      0024F7 12 25 CB         [24] 1300 	lcall	_putchar
      0024FA D0 06            [24] 1301 	pop	ar6
                                   1302 ;	src/main.c:170: switch(received_char)
      0024FC BE 3F 02         [24] 1303 	cjne	r6,#0x3f,00137$
      0024FF 80 18            [24] 1304 	sjmp	00101$
      002501                       1305 00137$:
      002501 BE 65 03         [24] 1306 	cjne	r6,#0x65,00138$
      002504 02 25 7E         [24] 1307 	ljmp	00105$
      002507                       1308 00138$:
      002507 BE 72 02         [24] 1309 	cjne	r6,#0x72,00139$
      00250A 80 68            [24] 1310 	sjmp	00103$
      00250C                       1311 00139$:
      00250C BE 77 02         [24] 1312 	cjne	r6,#0x77,00140$
      00250F 80 5E            [24] 1313 	sjmp	00102$
      002511                       1314 00140$:
      002511 BE 78 02         [24] 1315 	cjne	r6,#0x78,00141$
      002514 80 63            [24] 1316 	sjmp	00104$
      002516                       1317 00141$:
      002516 02 25 98         [24] 1318 	ljmp	00106$
                                   1319 ;	src/main.c:172: case '?':
      002519                       1320 00101$:
                                   1321 ;	src/main.c:173: printf("\r\nw - write a byte");
      002519 74 CB            [12] 1322 	mov	a,#___str_18
      00251B C0 E0            [24] 1323 	push	acc
      00251D 74 41            [12] 1324 	mov	a,#(___str_18 >> 8)
      00251F C0 E0            [24] 1325 	push	acc
      002521 74 80            [12] 1326 	mov	a,#0x80
      002523 C0 E0            [24] 1327 	push	acc
      002525 12 32 D1         [24] 1328 	lcall	_printf
      002528 15 81            [12] 1329 	dec	sp
      00252A 15 81            [12] 1330 	dec	sp
      00252C 15 81            [12] 1331 	dec	sp
                                   1332 ;	src/main.c:174: printf("\r\nr - read a byte");
      00252E 74 DE            [12] 1333 	mov	a,#___str_19
      002530 C0 E0            [24] 1334 	push	acc
      002532 74 41            [12] 1335 	mov	a,#(___str_19 >> 8)
      002534 C0 E0            [24] 1336 	push	acc
      002536 74 80            [12] 1337 	mov	a,#0x80
      002538 C0 E0            [24] 1338 	push	acc
      00253A 12 32 D1         [24] 1339 	lcall	_printf
      00253D 15 81            [12] 1340 	dec	sp
      00253F 15 81            [12] 1341 	dec	sp
      002541 15 81            [12] 1342 	dec	sp
                                   1343 ;	src/main.c:175: printf("\r\nx - hex dump");
      002543 74 F0            [12] 1344 	mov	a,#___str_20
      002545 C0 E0            [24] 1345 	push	acc
      002547 74 41            [12] 1346 	mov	a,#(___str_20 >> 8)
      002549 C0 E0            [24] 1347 	push	acc
      00254B 74 80            [12] 1348 	mov	a,#0x80
      00254D C0 E0            [24] 1349 	push	acc
      00254F 12 32 D1         [24] 1350 	lcall	_printf
      002552 15 81            [12] 1351 	dec	sp
      002554 15 81            [12] 1352 	dec	sp
      002556 15 81            [12] 1353 	dec	sp
                                   1354 ;	src/main.c:176: printf("\r\ne - eeprom reset");
      002558 74 FF            [12] 1355 	mov	a,#___str_21
      00255A C0 E0            [24] 1356 	push	acc
      00255C 74 41            [12] 1357 	mov	a,#(___str_21 >> 8)
      00255E C0 E0            [24] 1358 	push	acc
      002560 74 80            [12] 1359 	mov	a,#0x80
      002562 C0 E0            [24] 1360 	push	acc
      002564 12 32 D1         [24] 1361 	lcall	_printf
      002567 15 81            [12] 1362 	dec	sp
      002569 15 81            [12] 1363 	dec	sp
      00256B 15 81            [12] 1364 	dec	sp
                                   1365 ;	src/main.c:177: break;
                                   1366 ;	src/main.c:178: case 'w':
      00256D 80 41            [24] 1367 	sjmp	00107$
      00256F                       1368 00102$:
                                   1369 ;	src/main.c:179: w_command_handler();
      00256F 12 20 94         [24] 1370 	lcall	_w_command_handler
                                   1371 ;	src/main.c:180: break;
                                   1372 ;	src/main.c:181: case 'r':
      002572 80 3C            [24] 1373 	sjmp	00107$
      002574                       1374 00103$:
                                   1375 ;	src/main.c:182: r_command_handler();
      002574 12 21 BD         [24] 1376 	lcall	_r_command_handler
                                   1377 ;	src/main.c:183: break;
                                   1378 ;	src/main.c:184: case 'x':
      002577 80 37            [24] 1379 	sjmp	00107$
      002579                       1380 00104$:
                                   1381 ;	src/main.c:185: x_command_handler();
      002579 12 22 A1         [24] 1382 	lcall	_x_command_handler
                                   1383 ;	src/main.c:186: break;
                                   1384 ;	src/main.c:187: case 'e':
      00257C 80 32            [24] 1385 	sjmp	00107$
      00257E                       1386 00105$:
                                   1387 ;	src/main.c:188: eereset();
      00257E 12 30 B6         [24] 1388 	lcall	_eereset
                                   1389 ;	src/main.c:189: printf("\r\nDid EEPROM Reset");
      002581 74 12            [12] 1390 	mov	a,#___str_22
      002583 C0 E0            [24] 1391 	push	acc
      002585 74 42            [12] 1392 	mov	a,#(___str_22 >> 8)
      002587 C0 E0            [24] 1393 	push	acc
      002589 74 80            [12] 1394 	mov	a,#0x80
      00258B C0 E0            [24] 1395 	push	acc
      00258D 12 32 D1         [24] 1396 	lcall	_printf
      002590 15 81            [12] 1397 	dec	sp
      002592 15 81            [12] 1398 	dec	sp
      002594 15 81            [12] 1399 	dec	sp
                                   1400 ;	src/main.c:190: break;
                                   1401 ;	src/main.c:191: default:
      002596 80 18            [24] 1402 	sjmp	00107$
      002598                       1403 00106$:
                                   1404 ;	src/main.c:192: printf("\r\nUnrecognized command, please enter a valid command char");
      002598 74 25            [12] 1405 	mov	a,#___str_23
      00259A C0 E0            [24] 1406 	push	acc
      00259C 74 42            [12] 1407 	mov	a,#(___str_23 >> 8)
      00259E C0 E0            [24] 1408 	push	acc
      0025A0 74 80            [12] 1409 	mov	a,#0x80
      0025A2 C0 E0            [24] 1410 	push	acc
      0025A4 12 32 D1         [24] 1411 	lcall	_printf
      0025A7 15 81            [12] 1412 	dec	sp
      0025A9 15 81            [12] 1413 	dec	sp
      0025AB 15 81            [12] 1414 	dec	sp
                                   1415 ;	src/main.c:193: continue; //no command, don't print the end command line
      0025AD 02 24 D3         [24] 1416 	ljmp	00110$
                                   1417 ;	src/main.c:194: }
      0025B0                       1418 00107$:
                                   1419 ;	src/main.c:195: printf("\r\nEND COMMAND");
      0025B0 74 5F            [12] 1420 	mov	a,#___str_24
      0025B2 C0 E0            [24] 1421 	push	acc
      0025B4 74 42            [12] 1422 	mov	a,#(___str_24 >> 8)
      0025B6 C0 E0            [24] 1423 	push	acc
      0025B8 74 80            [12] 1424 	mov	a,#0x80
      0025BA C0 E0            [24] 1425 	push	acc
      0025BC 12 32 D1         [24] 1426 	lcall	_printf
      0025BF 15 81            [12] 1427 	dec	sp
      0025C1 15 81            [12] 1428 	dec	sp
      0025C3 15 81            [12] 1429 	dec	sp
                                   1430 ;	src/main.c:196: print_dashed_line();
      0025C5 12 22 8B         [24] 1431 	lcall	_print_dashed_line
                                   1432 ;	src/main.c:198: }
      0025C8 02 24 D3         [24] 1433 	ljmp	00110$
                                   1434 	.area CSEG    (CODE)
                                   1435 	.area CONST   (CODE)
                                   1436 	.area CONST   (CODE)
      003EDE                       1437 ___str_0:
      003EDE 0D                    1438 	.db 0x0d
      003EDF 0A                    1439 	.db 0x0a
      003EE0 45 6E 74 65 72 20 61  1440 	.ascii "Enter an EEPROM address to write to in hex [0,7FF]: "
             6E 20 45 45 50 52 4F
             4D 20 61 64 64 72 65
             73 73 20 74 6F 20 77
             72 69 74 65 20 74 6F
             20 69 6E 20 68 65 78
             20 5B 30 2C 37 46 46
             5D 3A 20
      003F14 00                    1441 	.db 0x00
                                   1442 	.area CSEG    (CODE)
                                   1443 	.area CONST   (CODE)
      003F15                       1444 ___str_1:
      003F15 0D                    1445 	.db 0x0d
      003F16 0A                    1446 	.db 0x0a
      003F17 20 46 61 69 6C 65 64  1447 	.ascii " Failed to enter a hex integer, please try again"
             20 74 6F 20 65 6E 74
             65 72 20 61 20 68 65
             78 20 69 6E 74 65 67
             65 72 2C 20 70 6C 65
             61 73 65 20 74 72 79
             20 61 67 61 69 6E
      003F47 00                    1448 	.db 0x00
                                   1449 	.area CSEG    (CODE)
                                   1450 	.area CONST   (CODE)
      003F48                       1451 ___str_2:
      003F48 0D                    1452 	.db 0x0d
      003F49 0A                    1453 	.db 0x0a
      003F4A 20 46 61 69 6C 65 64  1454 	.ascii " Failed to enter an address within range, please try again"
             20 74 6F 20 65 6E 74
             65 72 20 61 6E 20 61
             64 64 72 65 73 73 20
             77 69 74 68 69 6E 20
             72 61 6E 67 65 2C 20
             70 6C 65 61 73 65 20
             74 72 79 20 61 67 61
             69 6E
      003F84 00                    1455 	.db 0x00
                                   1456 	.area CSEG    (CODE)
                                   1457 	.area CONST   (CODE)
      003F85                       1458 ___str_3:
      003F85 0D                    1459 	.db 0x0d
      003F86 0A                    1460 	.db 0x0a
      003F87 45 6E 74 65 72 20 61  1461 	.ascii "Enter a byte to write [0, FF]: "
             20 62 79 74 65 20 74
             6F 20 77 72 69 74 65
             20 5B 30 2C 20 46 46
             5D 3A 20
      003FA6 00                    1462 	.db 0x00
                                   1463 	.area CSEG    (CODE)
                                   1464 	.area CONST   (CODE)
      003FA7                       1465 ___str_4:
      003FA7 0D                    1466 	.db 0x0d
      003FA8 0A                    1467 	.db 0x0a
      003FA9 20 46 61 69 6C 65 64  1468 	.ascii " Failed to enter a value that's byte size, please try again"
             20 74 6F 20 65 6E 74
             65 72 20 61 20 76 61
             6C 75 65 20 74 68 61
             74 27 73 20 62 79 74
             65 20 73 69 7A 65 2C
             20 70 6C 65 61 73 65
             20 74 72 79 20 61 67
             61 69 6E
      003FE4 00                    1469 	.db 0x00
                                   1470 	.area CSEG    (CODE)
                                   1471 	.area CONST   (CODE)
      003FE5                       1472 ___str_5:
      003FE5 0D                    1473 	.db 0x0d
      003FE6 0A                    1474 	.db 0x0a
      003FE7 46 61 69 6C 65 64 20  1475 	.ascii "Failed to write to the eeprom"
             74 6F 20 77 72 69 74
             65 20 74 6F 20 74 68
             65 20 65 65 70 72 6F
             6D
      004004 00                    1476 	.db 0x00
                                   1477 	.area CSEG    (CODE)
                                   1478 	.area CONST   (CODE)
      004005                       1479 ___str_6:
      004005 0D                    1480 	.db 0x0d
      004006 0A                    1481 	.db 0x0a
      004007 20 53 75 63 63 65 73  1482 	.ascii " Success: wrote to the eeprom"
             73 3A 20 77 72 6F 74
             65 20 74 6F 20 74 68
             65 20 65 65 70 72 6F
             6D
      004024 00                    1483 	.db 0x00
                                   1484 	.area CSEG    (CODE)
                                   1485 	.area CONST   (CODE)
      004025                       1486 ___str_7:
      004025 0D                    1487 	.db 0x0d
      004026 0A                    1488 	.db 0x0a
      004027 45 6E 74 65 72 20 61  1489 	.ascii "Enter an EEPROM address to read from in hex [0,7FF]: "
             6E 20 45 45 50 52 4F
             4D 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 20 66 72 6F
             6D 20 69 6E 20 68 65
             78 20 5B 30 2C 37 46
             46 5D 3A 20
      00405C 00                    1490 	.db 0x00
                                   1491 	.area CSEG    (CODE)
                                   1492 	.area CONST   (CODE)
      00405D                       1493 ___str_8:
      00405D 0D                    1494 	.db 0x0d
      00405E 0A                    1495 	.db 0x0a
      00405F 46 61 69 6C 65 64 20  1496 	.ascii "Failed to read from the eeprom"
             74 6F 20 72 65 61 64
             20 66 72 6F 6D 20 74
             68 65 20 65 65 70 72
             6F 6D
      00407D 00                    1497 	.db 0x00
                                   1498 	.area CSEG    (CODE)
                                   1499 	.area CONST   (CODE)
      00407E                       1500 ___str_9:
      00407E 0D                    1501 	.db 0x0d
      00407F 0A                    1502 	.db 0x0a
      004080 20 25 30 33 78 3A 20  1503 	.ascii " %03x: %02hhx"
             25 30 32 68 68 78
      00408D 00                    1504 	.db 0x00
                                   1505 	.area CSEG    (CODE)
                                   1506 	.area CONST   (CODE)
      00408E                       1507 ___str_10:
      00408E 0D                    1508 	.db 0x0d
      00408F 0A                    1509 	.db 0x0a
      004090 2D 2D 2D 2D 2D 2D 2D  1510 	.ascii "---------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D
      0040C3 00                    1511 	.db 0x00
                                   1512 	.area CSEG    (CODE)
                                   1513 	.area CONST   (CODE)
      0040C4                       1514 ___str_11:
      0040C4 0D                    1515 	.db 0x0d
      0040C5 0A                    1516 	.db 0x0a
      0040C6 45 6E 74 65 72 20 61  1517 	.ascii "Enter a valid starting hex address [0, 7FF]: "
             20 76 61 6C 69 64 20
             73 74 61 72 74 69 6E
             67 20 68 65 78 20 61
             64 64 72 65 73 73 20
             5B 30 2C 20 37 46 46
             5D 3A 20
      0040F3 00                    1518 	.db 0x00
                                   1519 	.area CSEG    (CODE)
                                   1520 	.area CONST   (CODE)
      0040F4                       1521 ___str_12:
      0040F4 0D                    1522 	.db 0x0d
      0040F5 0A                    1523 	.db 0x0a
      0040F6 45 6E 74 65 72 20 61  1524 	.ascii "Enter a valid ending hex address [0,7FF]: "
             20 76 61 6C 69 64 20
             65 6E 64 69 6E 67 20
             68 65 78 20 61 64 64
             72 65 73 73 20 5B 30
             2C 37 46 46 5D 3A 20
      004120 00                    1525 	.db 0x00
                                   1526 	.area CSEG    (CODE)
                                   1527 	.area CONST   (CODE)
      004121                       1528 ___str_13:
      004121 0D                    1529 	.db 0x0d
      004122 0A                    1530 	.db 0x0a
      004123 20 73 74 61 72 74 5F  1531 	.ascii " start_address is greater than end address; please try again"
             61 64 64 72 65 73 73
             20 69 73 20 67 72 65
             61 74 65 72 20 74 68
             61 6E 20 65 6E 64 20
             61 64 64 72 65 73 73
             3B 20 70 6C 65 61 73
             65 20 74 72 79 20 61
             67 61 69 6E
      00415F 00                    1532 	.db 0x00
                                   1533 	.area CSEG    (CODE)
                                   1534 	.area CONST   (CODE)
      004160                       1535 ___str_14:
      004160 0D                    1536 	.db 0x0d
      004161 0A                    1537 	.db 0x0a
      004162 25 30 33 58 3A 20     1538 	.ascii "%03X: "
      004168 00                    1539 	.db 0x00
                                   1540 	.area CSEG    (CODE)
                                   1541 	.area CONST   (CODE)
      004169                       1542 ___str_15:
      004169 0D                    1543 	.db 0x0d
      00416A 0A                    1544 	.db 0x0a
      00416B 20 46 61 69 6C 65 64  1545 	.ascii " Failed to read byte from eeprom, ending command "
             20 74 6F 20 72 65 61
             64 20 62 79 74 65 20
             66 72 6F 6D 20 65 65
             70 72 6F 6D 2C 20 65
             6E 64 69 6E 67 20 63
             6F 6D 6D 61 6E 64 20
      00419C 0D                    1546 	.db 0x0d
      00419D 0A                    1547 	.db 0x0a
      00419E 00                    1548 	.db 0x00
                                   1549 	.area CSEG    (CODE)
                                   1550 	.area CONST   (CODE)
      00419F                       1551 ___str_16:
      00419F 25 30 32 58 20        1552 	.ascii "%02X "
      0041A4 00                    1553 	.db 0x00
                                   1554 	.area CSEG    (CODE)
                                   1555 	.area CONST   (CODE)
      0041A5                       1556 ___str_17:
      0041A5 0D                    1557 	.db 0x0d
      0041A6 0A                    1558 	.db 0x0a
      0041A7 45 6E 74 65 72 20 61  1559 	.ascii "Enter a command char (? for help): "
             20 63 6F 6D 6D 61 6E
             64 20 63 68 61 72 20
             28 3F 20 66 6F 72 20
             68 65 6C 70 29 3A 20
      0041CA 00                    1560 	.db 0x00
                                   1561 	.area CSEG    (CODE)
                                   1562 	.area CONST   (CODE)
      0041CB                       1563 ___str_18:
      0041CB 0D                    1564 	.db 0x0d
      0041CC 0A                    1565 	.db 0x0a
      0041CD 77 20 2D 20 77 72 69  1566 	.ascii "w - write a byte"
             74 65 20 61 20 62 79
             74 65
      0041DD 00                    1567 	.db 0x00
                                   1568 	.area CSEG    (CODE)
                                   1569 	.area CONST   (CODE)
      0041DE                       1570 ___str_19:
      0041DE 0D                    1571 	.db 0x0d
      0041DF 0A                    1572 	.db 0x0a
      0041E0 72 20 2D 20 72 65 61  1573 	.ascii "r - read a byte"
             64 20 61 20 62 79 74
             65
      0041EF 00                    1574 	.db 0x00
                                   1575 	.area CSEG    (CODE)
                                   1576 	.area CONST   (CODE)
      0041F0                       1577 ___str_20:
      0041F0 0D                    1578 	.db 0x0d
      0041F1 0A                    1579 	.db 0x0a
      0041F2 78 20 2D 20 68 65 78  1580 	.ascii "x - hex dump"
             20 64 75 6D 70
      0041FE 00                    1581 	.db 0x00
                                   1582 	.area CSEG    (CODE)
                                   1583 	.area CONST   (CODE)
      0041FF                       1584 ___str_21:
      0041FF 0D                    1585 	.db 0x0d
      004200 0A                    1586 	.db 0x0a
      004201 65 20 2D 20 65 65 70  1587 	.ascii "e - eeprom reset"
             72 6F 6D 20 72 65 73
             65 74
      004211 00                    1588 	.db 0x00
                                   1589 	.area CSEG    (CODE)
                                   1590 	.area CONST   (CODE)
      004212                       1591 ___str_22:
      004212 0D                    1592 	.db 0x0d
      004213 0A                    1593 	.db 0x0a
      004214 44 69 64 20 45 45 50  1594 	.ascii "Did EEPROM Reset"
             52 4F 4D 20 52 65 73
             65 74
      004224 00                    1595 	.db 0x00
                                   1596 	.area CSEG    (CODE)
                                   1597 	.area CONST   (CODE)
      004225                       1598 ___str_23:
      004225 0D                    1599 	.db 0x0d
      004226 0A                    1600 	.db 0x0a
      004227 55 6E 72 65 63 6F 67  1601 	.ascii "Unrecognized command, please enter a valid command char"
             6E 69 7A 65 64 20 63
             6F 6D 6D 61 6E 64 2C
             20 70 6C 65 61 73 65
             20 65 6E 74 65 72 20
             61 20 76 61 6C 69 64
             20 63 6F 6D 6D 61 6E
             64 20 63 68 61 72
      00425E 00                    1602 	.db 0x00
                                   1603 	.area CSEG    (CODE)
                                   1604 	.area CONST   (CODE)
      00425F                       1605 ___str_24:
      00425F 0D                    1606 	.db 0x0d
      004260 0A                    1607 	.db 0x0a
      004261 45 4E 44 20 43 4F 4D  1608 	.ascii "END COMMAND"
             4D 41 4E 44
      00426C 00                    1609 	.db 0x00
                                   1610 	.area CSEG    (CODE)
                                   1611 	.area XINIT   (CODE)
                                   1612 	.area CABS    (ABS,CODE)
