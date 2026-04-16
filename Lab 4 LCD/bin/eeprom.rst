                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module eeprom
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _i2c_read
                                     12 	.globl _i2c_write
                                     13 	.globl _P5_7
                                     14 	.globl _P5_6
                                     15 	.globl _P5_5
                                     16 	.globl _P5_4
                                     17 	.globl _P5_3
                                     18 	.globl _P5_2
                                     19 	.globl _P5_1
                                     20 	.globl _P5_0
                                     21 	.globl _P4_7
                                     22 	.globl _P4_6
                                     23 	.globl _P4_5
                                     24 	.globl _P4_4
                                     25 	.globl _P4_3
                                     26 	.globl _P4_2
                                     27 	.globl _P4_1
                                     28 	.globl _P4_0
                                     29 	.globl _PX0L
                                     30 	.globl _PT0L
                                     31 	.globl _PX1L
                                     32 	.globl _PT1L
                                     33 	.globl _PSL
                                     34 	.globl _PT2L
                                     35 	.globl _PPCL
                                     36 	.globl _EC
                                     37 	.globl _CCF0
                                     38 	.globl _CCF1
                                     39 	.globl _CCF2
                                     40 	.globl _CCF3
                                     41 	.globl _CCF4
                                     42 	.globl _CR
                                     43 	.globl _CF
                                     44 	.globl _TF2
                                     45 	.globl _EXF2
                                     46 	.globl _RCLK
                                     47 	.globl _TCLK
                                     48 	.globl _EXEN2
                                     49 	.globl _TR2
                                     50 	.globl _C_T2
                                     51 	.globl _CP_RL2
                                     52 	.globl _T2CON_7
                                     53 	.globl _T2CON_6
                                     54 	.globl _T2CON_5
                                     55 	.globl _T2CON_4
                                     56 	.globl _T2CON_3
                                     57 	.globl _T2CON_2
                                     58 	.globl _T2CON_1
                                     59 	.globl _T2CON_0
                                     60 	.globl _PT2
                                     61 	.globl _ET2
                                     62 	.globl _CY
                                     63 	.globl _AC
                                     64 	.globl _F0
                                     65 	.globl _RS1
                                     66 	.globl _RS0
                                     67 	.globl _OV
                                     68 	.globl _F1
                                     69 	.globl _P
                                     70 	.globl _PS
                                     71 	.globl _PT1
                                     72 	.globl _PX1
                                     73 	.globl _PT0
                                     74 	.globl _PX0
                                     75 	.globl _RD
                                     76 	.globl _WR
                                     77 	.globl _T1
                                     78 	.globl _T0
                                     79 	.globl _INT1
                                     80 	.globl _INT0
                                     81 	.globl _TXD
                                     82 	.globl _RXD
                                     83 	.globl _P3_7
                                     84 	.globl _P3_6
                                     85 	.globl _P3_5
                                     86 	.globl _P3_4
                                     87 	.globl _P3_3
                                     88 	.globl _P3_2
                                     89 	.globl _P3_1
                                     90 	.globl _P3_0
                                     91 	.globl _EA
                                     92 	.globl _ES
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _P2_7
                                     98 	.globl _P2_6
                                     99 	.globl _P2_5
                                    100 	.globl _P2_4
                                    101 	.globl _P2_3
                                    102 	.globl _P2_2
                                    103 	.globl _P2_1
                                    104 	.globl _P2_0
                                    105 	.globl _SM0
                                    106 	.globl _SM1
                                    107 	.globl _SM2
                                    108 	.globl _REN
                                    109 	.globl _TB8
                                    110 	.globl _RB8
                                    111 	.globl _TI
                                    112 	.globl _RI
                                    113 	.globl _P1_7
                                    114 	.globl _P1_6
                                    115 	.globl _P1_5
                                    116 	.globl _P1_4
                                    117 	.globl _P1_3
                                    118 	.globl _P1_2
                                    119 	.globl _P1_1
                                    120 	.globl _P1_0
                                    121 	.globl _TF1
                                    122 	.globl _TR1
                                    123 	.globl _TF0
                                    124 	.globl _TR0
                                    125 	.globl _IE1
                                    126 	.globl _IT1
                                    127 	.globl _IE0
                                    128 	.globl _IT0
                                    129 	.globl _P0_7
                                    130 	.globl _P0_6
                                    131 	.globl _P0_5
                                    132 	.globl _P0_4
                                    133 	.globl _P0_3
                                    134 	.globl _P0_2
                                    135 	.globl _P0_1
                                    136 	.globl _P0_0
                                    137 	.globl _EECON
                                    138 	.globl _KBF
                                    139 	.globl _KBE
                                    140 	.globl _KBLS
                                    141 	.globl _BRL
                                    142 	.globl _BDRCON
                                    143 	.globl _T2MOD
                                    144 	.globl _SPDAT
                                    145 	.globl _SPSTA
                                    146 	.globl _SPCON
                                    147 	.globl _SADEN
                                    148 	.globl _SADDR
                                    149 	.globl _WDTPRG
                                    150 	.globl _WDTRST
                                    151 	.globl _P5
                                    152 	.globl _P4
                                    153 	.globl _IPH1
                                    154 	.globl _IPL1
                                    155 	.globl _IPH0
                                    156 	.globl _IPL0
                                    157 	.globl _IEN1
                                    158 	.globl _IEN0
                                    159 	.globl _CMOD
                                    160 	.globl _CL
                                    161 	.globl _CH
                                    162 	.globl _CCON
                                    163 	.globl _CCAPM4
                                    164 	.globl _CCAPM3
                                    165 	.globl _CCAPM2
                                    166 	.globl _CCAPM1
                                    167 	.globl _CCAPM0
                                    168 	.globl _CCAP4L
                                    169 	.globl _CCAP3L
                                    170 	.globl _CCAP2L
                                    171 	.globl _CCAP1L
                                    172 	.globl _CCAP0L
                                    173 	.globl _CCAP4H
                                    174 	.globl _CCAP3H
                                    175 	.globl _CCAP2H
                                    176 	.globl _CCAP1H
                                    177 	.globl _CCAP0H
                                    178 	.globl _CKCON1
                                    179 	.globl _CKCON0
                                    180 	.globl _CKRL
                                    181 	.globl _AUXR1
                                    182 	.globl _AUXR
                                    183 	.globl _TH2
                                    184 	.globl _TL2
                                    185 	.globl _RCAP2H
                                    186 	.globl _RCAP2L
                                    187 	.globl _T2CON
                                    188 	.globl _B
                                    189 	.globl _ACC
                                    190 	.globl _PSW
                                    191 	.globl _IP
                                    192 	.globl _P3
                                    193 	.globl _IE
                                    194 	.globl _P2
                                    195 	.globl _SBUF
                                    196 	.globl _SCON
                                    197 	.globl _P1
                                    198 	.globl _TH1
                                    199 	.globl _TH0
                                    200 	.globl _TL1
                                    201 	.globl _TL0
                                    202 	.globl _TMOD
                                    203 	.globl _TCON
                                    204 	.globl _PCON
                                    205 	.globl _DPH
                                    206 	.globl _DPL
                                    207 	.globl _SP
                                    208 	.globl _P0
                                    209 	.globl _eepromreadbyte_PARM_2
                                    210 	.globl _eepromwritebyte_PARM_2
                                    211 	.globl _i2c_read_PARM_3
                                    212 	.globl _i2c_read_PARM_2
                                    213 	.globl _i2c_write_PARM_3
                                    214 	.globl _i2c_write_PARM_2
                                    215 	.globl _eeprom_init
                                    216 	.globl _eepromwritebyte
                                    217 	.globl _eepromreadbyte
                                    218 	.globl _eereset
                                    219 ;--------------------------------------------------------
                                    220 ; special function registers
                                    221 ;--------------------------------------------------------
                                    222 	.area RSEG    (ABS,DATA)
      000000                        223 	.org 0x0000
                           000080   224 _P0	=	0x0080
                           000081   225 _SP	=	0x0081
                           000082   226 _DPL	=	0x0082
                           000083   227 _DPH	=	0x0083
                           000087   228 _PCON	=	0x0087
                           000088   229 _TCON	=	0x0088
                           000089   230 _TMOD	=	0x0089
                           00008A   231 _TL0	=	0x008a
                           00008B   232 _TL1	=	0x008b
                           00008C   233 _TH0	=	0x008c
                           00008D   234 _TH1	=	0x008d
                           000090   235 _P1	=	0x0090
                           000098   236 _SCON	=	0x0098
                           000099   237 _SBUF	=	0x0099
                           0000A0   238 _P2	=	0x00a0
                           0000A8   239 _IE	=	0x00a8
                           0000B0   240 _P3	=	0x00b0
                           0000B8   241 _IP	=	0x00b8
                           0000D0   242 _PSW	=	0x00d0
                           0000E0   243 _ACC	=	0x00e0
                           0000F0   244 _B	=	0x00f0
                           0000C8   245 _T2CON	=	0x00c8
                           0000CA   246 _RCAP2L	=	0x00ca
                           0000CB   247 _RCAP2H	=	0x00cb
                           0000CC   248 _TL2	=	0x00cc
                           0000CD   249 _TH2	=	0x00cd
                           00008E   250 _AUXR	=	0x008e
                           0000A2   251 _AUXR1	=	0x00a2
                           000097   252 _CKRL	=	0x0097
                           00008F   253 _CKCON0	=	0x008f
                           0000AF   254 _CKCON1	=	0x00af
                           0000FA   255 _CCAP0H	=	0x00fa
                           0000FB   256 _CCAP1H	=	0x00fb
                           0000FC   257 _CCAP2H	=	0x00fc
                           0000FD   258 _CCAP3H	=	0x00fd
                           0000FE   259 _CCAP4H	=	0x00fe
                           0000EA   260 _CCAP0L	=	0x00ea
                           0000EB   261 _CCAP1L	=	0x00eb
                           0000EC   262 _CCAP2L	=	0x00ec
                           0000ED   263 _CCAP3L	=	0x00ed
                           0000EE   264 _CCAP4L	=	0x00ee
                           0000DA   265 _CCAPM0	=	0x00da
                           0000DB   266 _CCAPM1	=	0x00db
                           0000DC   267 _CCAPM2	=	0x00dc
                           0000DD   268 _CCAPM3	=	0x00dd
                           0000DE   269 _CCAPM4	=	0x00de
                           0000D8   270 _CCON	=	0x00d8
                           0000F9   271 _CH	=	0x00f9
                           0000E9   272 _CL	=	0x00e9
                           0000D9   273 _CMOD	=	0x00d9
                           0000A8   274 _IEN0	=	0x00a8
                           0000B1   275 _IEN1	=	0x00b1
                           0000B8   276 _IPL0	=	0x00b8
                           0000B7   277 _IPH0	=	0x00b7
                           0000B2   278 _IPL1	=	0x00b2
                           0000B3   279 _IPH1	=	0x00b3
                           0000C0   280 _P4	=	0x00c0
                           0000E8   281 _P5	=	0x00e8
                           0000A6   282 _WDTRST	=	0x00a6
                           0000A7   283 _WDTPRG	=	0x00a7
                           0000A9   284 _SADDR	=	0x00a9
                           0000B9   285 _SADEN	=	0x00b9
                           0000C3   286 _SPCON	=	0x00c3
                           0000C4   287 _SPSTA	=	0x00c4
                           0000C5   288 _SPDAT	=	0x00c5
                           0000C9   289 _T2MOD	=	0x00c9
                           00009B   290 _BDRCON	=	0x009b
                           00009A   291 _BRL	=	0x009a
                           00009C   292 _KBLS	=	0x009c
                           00009D   293 _KBE	=	0x009d
                           00009E   294 _KBF	=	0x009e
                           0000D2   295 _EECON	=	0x00d2
                                    296 ;--------------------------------------------------------
                                    297 ; special function bits
                                    298 ;--------------------------------------------------------
                                    299 	.area RSEG    (ABS,DATA)
      000000                        300 	.org 0x0000
                           000080   301 _P0_0	=	0x0080
                           000081   302 _P0_1	=	0x0081
                           000082   303 _P0_2	=	0x0082
                           000083   304 _P0_3	=	0x0083
                           000084   305 _P0_4	=	0x0084
                           000085   306 _P0_5	=	0x0085
                           000086   307 _P0_6	=	0x0086
                           000087   308 _P0_7	=	0x0087
                           000088   309 _IT0	=	0x0088
                           000089   310 _IE0	=	0x0089
                           00008A   311 _IT1	=	0x008a
                           00008B   312 _IE1	=	0x008b
                           00008C   313 _TR0	=	0x008c
                           00008D   314 _TF0	=	0x008d
                           00008E   315 _TR1	=	0x008e
                           00008F   316 _TF1	=	0x008f
                           000090   317 _P1_0	=	0x0090
                           000091   318 _P1_1	=	0x0091
                           000092   319 _P1_2	=	0x0092
                           000093   320 _P1_3	=	0x0093
                           000094   321 _P1_4	=	0x0094
                           000095   322 _P1_5	=	0x0095
                           000096   323 _P1_6	=	0x0096
                           000097   324 _P1_7	=	0x0097
                           000098   325 _RI	=	0x0098
                           000099   326 _TI	=	0x0099
                           00009A   327 _RB8	=	0x009a
                           00009B   328 _TB8	=	0x009b
                           00009C   329 _REN	=	0x009c
                           00009D   330 _SM2	=	0x009d
                           00009E   331 _SM1	=	0x009e
                           00009F   332 _SM0	=	0x009f
                           0000A0   333 _P2_0	=	0x00a0
                           0000A1   334 _P2_1	=	0x00a1
                           0000A2   335 _P2_2	=	0x00a2
                           0000A3   336 _P2_3	=	0x00a3
                           0000A4   337 _P2_4	=	0x00a4
                           0000A5   338 _P2_5	=	0x00a5
                           0000A6   339 _P2_6	=	0x00a6
                           0000A7   340 _P2_7	=	0x00a7
                           0000A8   341 _EX0	=	0x00a8
                           0000A9   342 _ET0	=	0x00a9
                           0000AA   343 _EX1	=	0x00aa
                           0000AB   344 _ET1	=	0x00ab
                           0000AC   345 _ES	=	0x00ac
                           0000AF   346 _EA	=	0x00af
                           0000B0   347 _P3_0	=	0x00b0
                           0000B1   348 _P3_1	=	0x00b1
                           0000B2   349 _P3_2	=	0x00b2
                           0000B3   350 _P3_3	=	0x00b3
                           0000B4   351 _P3_4	=	0x00b4
                           0000B5   352 _P3_5	=	0x00b5
                           0000B6   353 _P3_6	=	0x00b6
                           0000B7   354 _P3_7	=	0x00b7
                           0000B0   355 _RXD	=	0x00b0
                           0000B1   356 _TXD	=	0x00b1
                           0000B2   357 _INT0	=	0x00b2
                           0000B3   358 _INT1	=	0x00b3
                           0000B4   359 _T0	=	0x00b4
                           0000B5   360 _T1	=	0x00b5
                           0000B6   361 _WR	=	0x00b6
                           0000B7   362 _RD	=	0x00b7
                           0000B8   363 _PX0	=	0x00b8
                           0000B9   364 _PT0	=	0x00b9
                           0000BA   365 _PX1	=	0x00ba
                           0000BB   366 _PT1	=	0x00bb
                           0000BC   367 _PS	=	0x00bc
                           0000D0   368 _P	=	0x00d0
                           0000D1   369 _F1	=	0x00d1
                           0000D2   370 _OV	=	0x00d2
                           0000D3   371 _RS0	=	0x00d3
                           0000D4   372 _RS1	=	0x00d4
                           0000D5   373 _F0	=	0x00d5
                           0000D6   374 _AC	=	0x00d6
                           0000D7   375 _CY	=	0x00d7
                           0000AD   376 _ET2	=	0x00ad
                           0000BD   377 _PT2	=	0x00bd
                           0000C8   378 _T2CON_0	=	0x00c8
                           0000C9   379 _T2CON_1	=	0x00c9
                           0000CA   380 _T2CON_2	=	0x00ca
                           0000CB   381 _T2CON_3	=	0x00cb
                           0000CC   382 _T2CON_4	=	0x00cc
                           0000CD   383 _T2CON_5	=	0x00cd
                           0000CE   384 _T2CON_6	=	0x00ce
                           0000CF   385 _T2CON_7	=	0x00cf
                           0000C8   386 _CP_RL2	=	0x00c8
                           0000C9   387 _C_T2	=	0x00c9
                           0000CA   388 _TR2	=	0x00ca
                           0000CB   389 _EXEN2	=	0x00cb
                           0000CC   390 _TCLK	=	0x00cc
                           0000CD   391 _RCLK	=	0x00cd
                           0000CE   392 _EXF2	=	0x00ce
                           0000CF   393 _TF2	=	0x00cf
                           0000DF   394 _CF	=	0x00df
                           0000DE   395 _CR	=	0x00de
                           0000DC   396 _CCF4	=	0x00dc
                           0000DB   397 _CCF3	=	0x00db
                           0000DA   398 _CCF2	=	0x00da
                           0000D9   399 _CCF1	=	0x00d9
                           0000D8   400 _CCF0	=	0x00d8
                           0000AE   401 _EC	=	0x00ae
                           0000BE   402 _PPCL	=	0x00be
                           0000BD   403 _PT2L	=	0x00bd
                           0000BC   404 _PSL	=	0x00bc
                           0000BB   405 _PT1L	=	0x00bb
                           0000BA   406 _PX1L	=	0x00ba
                           0000B9   407 _PT0L	=	0x00b9
                           0000B8   408 _PX0L	=	0x00b8
                           0000C0   409 _P4_0	=	0x00c0
                           0000C1   410 _P4_1	=	0x00c1
                           0000C2   411 _P4_2	=	0x00c2
                           0000C3   412 _P4_3	=	0x00c3
                           0000C4   413 _P4_4	=	0x00c4
                           0000C5   414 _P4_5	=	0x00c5
                           0000C6   415 _P4_6	=	0x00c6
                           0000C7   416 _P4_7	=	0x00c7
                           0000E8   417 _P5_0	=	0x00e8
                           0000E9   418 _P5_1	=	0x00e9
                           0000EA   419 _P5_2	=	0x00ea
                           0000EB   420 _P5_3	=	0x00eb
                           0000EC   421 _P5_4	=	0x00ec
                           0000ED   422 _P5_5	=	0x00ed
                           0000EE   423 _P5_6	=	0x00ee
                           0000EF   424 _P5_7	=	0x00ef
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
                                    438 ; indirectly addressable internal ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area ISEG    (DATA)
                                    441 ;--------------------------------------------------------
                                    442 ; absolute internal ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area IABS    (ABS,DATA)
                                    445 	.area IABS    (ABS,DATA)
                                    446 ;--------------------------------------------------------
                                    447 ; bit data
                                    448 ;--------------------------------------------------------
                                    449 	.area BSEG    (BIT)
      000001                        450 _i2c_read_sloc0_1_0:
      000001                        451 	.ds 1
                                    452 ;--------------------------------------------------------
                                    453 ; paged external ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area PSEG    (PAG,XDATA)
                                    456 ;--------------------------------------------------------
                                    457 ; external ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area XSEG    (XDATA)
      002055                        460 _i2c_byte_out_b_65536_5:
      002055                        461 	.ds 1
      002056                        462 _i2c_byte_in_last_65536_9:
      002056                        463 	.ds 1
      002057                        464 _i2c_byte_in_b_65536_10:
      002057                        465 	.ds 1
      002058                        466 _i2c_begin_PARM_2:
      002058                        467 	.ds 1
      002059                        468 _i2c_begin_addr_65536_14:
      002059                        469 	.ds 1
      00205A                        470 _i2c_write_PARM_2:
      00205A                        471 	.ds 3
      00205D                        472 _i2c_write_PARM_3:
      00205D                        473 	.ds 1
      00205E                        474 _i2c_write_addr_65536_19:
      00205E                        475 	.ds 1
      00205F                        476 _i2c_write_rc_65536_20:
      00205F                        477 	.ds 1
      002060                        478 _i2c_read_PARM_2:
      002060                        479 	.ds 3
      002063                        480 _i2c_read_PARM_3:
      002063                        481 	.ds 1
      002064                        482 _i2c_read_addr_65536_24:
      002064                        483 	.ds 1
      002065                        484 _eepromwritebyte_PARM_2:
      002065                        485 	.ds 1
      002066                        486 _eepromwritebyte_addr_65536_32:
      002066                        487 	.ds 2
      002068                        488 _eepromreadbyte_PARM_2:
      002068                        489 	.ds 3
      00206B                        490 _eepromreadbyte_addr_65536_39:
      00206B                        491 	.ds 2
                                    492 ;--------------------------------------------------------
                                    493 ; absolute external ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area XABS    (ABS,XDATA)
                                    496 ;--------------------------------------------------------
                                    497 ; external initialized ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XISEG   (XDATA)
                                    500 	.area HOME    (CODE)
                                    501 	.area GSINIT0 (CODE)
                                    502 	.area GSINIT1 (CODE)
                                    503 	.area GSINIT2 (CODE)
                                    504 	.area GSINIT3 (CODE)
                                    505 	.area GSINIT4 (CODE)
                                    506 	.area GSINIT5 (CODE)
                                    507 	.area GSINIT  (CODE)
                                    508 	.area GSFINAL (CODE)
                                    509 	.area CSEG    (CODE)
                                    510 ;--------------------------------------------------------
                                    511 ; global & static initialisations
                                    512 ;--------------------------------------------------------
                                    513 	.area HOME    (CODE)
                                    514 	.area GSINIT  (CODE)
                                    515 	.area GSFINAL (CODE)
                                    516 	.area GSINIT  (CODE)
                                    517 ;--------------------------------------------------------
                                    518 ; Home
                                    519 ;--------------------------------------------------------
                                    520 	.area HOME    (CODE)
                                    521 	.area HOME    (CODE)
                                    522 ;--------------------------------------------------------
                                    523 ; code
                                    524 ;--------------------------------------------------------
                                    525 	.area CSEG    (CODE)
                                    526 ;------------------------------------------------------------
                                    527 ;Allocation info for local variables in function 'i2c_byte_out'
                                    528 ;------------------------------------------------------------
                                    529 ;b                         Allocated with name '_i2c_byte_out_b_65536_5'
                                    530 ;i                         Allocated with name '_i2c_byte_out_i_65536_6'
                                    531 ;------------------------------------------------------------
                                    532 ;	src/eeprom.c:52: static uint8_t i2c_byte_out(uint8_t b) {
                                    533 ;	-----------------------------------------
                                    534 ;	 function i2c_byte_out
                                    535 ;	-----------------------------------------
      002DB4                        536 _i2c_byte_out:
                           000007   537 	ar7 = 0x07
                           000006   538 	ar6 = 0x06
                           000005   539 	ar5 = 0x05
                           000004   540 	ar4 = 0x04
                           000003   541 	ar3 = 0x03
                           000002   542 	ar2 = 0x02
                           000001   543 	ar1 = 0x01
                           000000   544 	ar0 = 0x00
      002DB4 E5 82            [12]  545 	mov	a,dpl
      002DB6 90 20 55         [24]  546 	mov	dptr,#_i2c_byte_out_b_65536_5
      002DB9 F0               [24]  547 	movx	@dptr,a
                                    548 ;	src/eeprom.c:55: for (i = 0; i < 8; i++) {
      002DBA 7F 00            [12]  549 	mov	r7,#0x00
      002DBC                        550 00102$:
                                    551 ;	src/eeprom.c:56: (b & 0x80)? SDA_HIGH(): SDA_LOW();
      002DBC 90 20 55         [24]  552 	mov	dptr,#_i2c_byte_out_b_65536_5
      002DBF E0               [24]  553 	movx	a,@dptr
      002DC0 30 E7 06         [24]  554 	jnb	acc.7,00106$
                                    555 ;	assignBit
      002DC3 D2 97            [12]  556 	setb	_P1_7
      002DC5 A2 97            [12]  557 	mov	c,_P1_7
      002DC7 80 04            [24]  558 	sjmp	00107$
      002DC9                        559 00106$:
                                    560 ;	assignBit
      002DC9 C2 97            [12]  561 	clr	_P1_7
      002DCB A2 97            [12]  562 	mov	c,_P1_7
      002DCD                        563 00107$:
                                    564 ;	src/eeprom.c:57: SCL_HIGH();
                                    565 ;	assignBit
      002DCD D2 96            [12]  566 	setb	_P1_6
                                    567 ;	src/eeprom.c:59: SCL_LOW();
                                    568 ;	assignBit
      002DCF C2 96            [12]  569 	clr	_P1_6
                                    570 ;	src/eeprom.c:60: b <<= 1;
      002DD1 90 20 55         [24]  571 	mov	dptr,#_i2c_byte_out_b_65536_5
      002DD4 E0               [24]  572 	movx	a,@dptr
      002DD5 25 E0            [12]  573 	add	a,acc
      002DD7 F0               [24]  574 	movx	@dptr,a
                                    575 ;	src/eeprom.c:55: for (i = 0; i < 8; i++) {
      002DD8 0F               [12]  576 	inc	r7
      002DD9 BF 08 00         [24]  577 	cjne	r7,#0x08,00128$
      002DDC                        578 00128$:
      002DDC 40 DE            [24]  579 	jc	00102$
                                    580 ;	src/eeprom.c:65: SDA_HIGH(); /* pull up SDA for read */
                                    581 ;	assignBit
      002DDE D2 97            [12]  582 	setb	_P1_7
                                    583 ;	src/eeprom.c:66: SCL_HIGH();
                                    584 ;	assignBit
      002DE0 D2 96            [12]  585 	setb	_P1_6
                                    586 ;	src/eeprom.c:68: i = SDA_READ(); /* read ack/nack */
      002DE2 A2 97            [12]  587 	mov	c,_P1_7
      002DE4 E4               [12]  588 	clr	a
      002DE5 33               [12]  589 	rlc	a
      002DE6 FF               [12]  590 	mov	r7,a
                                    591 ;	src/eeprom.c:71: SCL_LOW();
                                    592 ;	assignBit
      002DE7 C2 96            [12]  593 	clr	_P1_6
                                    594 ;	src/eeprom.c:72: SDA_LOW();
                                    595 ;	assignBit
      002DE9 C2 97            [12]  596 	clr	_P1_7
                                    597 ;	src/eeprom.c:75: return i? 0: 1; /* 1:ack, 0:nack */
      002DEB EF               [12]  598 	mov	a,r7
      002DEC 60 06            [24]  599 	jz	00108$
      002DEE 7E 00            [12]  600 	mov	r6,#0x00
      002DF0 7F 00            [12]  601 	mov	r7,#0x00
      002DF2 80 04            [24]  602 	sjmp	00109$
      002DF4                        603 00108$:
      002DF4 7E 01            [12]  604 	mov	r6,#0x01
      002DF6 7F 00            [12]  605 	mov	r7,#0x00
      002DF8                        606 00109$:
      002DF8 8E 82            [24]  607 	mov	dpl,r6
                                    608 ;	src/eeprom.c:76: }
      002DFA 22               [24]  609 	ret
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'i2c_byte_in'
                                    612 ;------------------------------------------------------------
                                    613 ;last                      Allocated with name '_i2c_byte_in_last_65536_9'
                                    614 ;i                         Allocated with name '_i2c_byte_in_i_65536_10'
                                    615 ;b                         Allocated with name '_i2c_byte_in_b_65536_10'
                                    616 ;------------------------------------------------------------
                                    617 ;	src/eeprom.c:78: static uint8_t i2c_byte_in(bool last) {
                                    618 ;	-----------------------------------------
                                    619 ;	 function i2c_byte_in
                                    620 ;	-----------------------------------------
      002DFB                        621 _i2c_byte_in:
      002DFB E5 82            [12]  622 	mov	a,dpl
      002DFD 90 20 56         [24]  623 	mov	dptr,#_i2c_byte_in_last_65536_9
      002E00 F0               [24]  624 	movx	@dptr,a
                                    625 ;	src/eeprom.c:80: uint8_t b = 0;
      002E01 90 20 57         [24]  626 	mov	dptr,#_i2c_byte_in_b_65536_10
      002E04 E4               [12]  627 	clr	a
      002E05 F0               [24]  628 	movx	@dptr,a
                                    629 ;	src/eeprom.c:82: SDA_HIGH(); /* pull up for input */
                                    630 ;	assignBit
      002E06 D2 97            [12]  631 	setb	_P1_7
                                    632 ;	src/eeprom.c:83: for (i = 0; i < 8; i++) {
      002E08 7F 00            [12]  633 	mov	r7,#0x00
      002E0A                        634 00104$:
                                    635 ;	src/eeprom.c:85: SCL_HIGH();
                                    636 ;	assignBit
      002E0A D2 96            [12]  637 	setb	_P1_6
                                    638 ;	src/eeprom.c:86: b <<= 1;
      002E0C 90 20 57         [24]  639 	mov	dptr,#_i2c_byte_in_b_65536_10
      002E0F E0               [24]  640 	movx	a,@dptr
      002E10 25 E0            [12]  641 	add	a,acc
      002E12 F0               [24]  642 	movx	@dptr,a
                                    643 ;	src/eeprom.c:87: if (SDA_READ()) b |= 1;
      002E13 30 97 08         [24]  644 	jnb	_P1_7,00102$
      002E16 90 20 57         [24]  645 	mov	dptr,#_i2c_byte_in_b_65536_10
      002E19 E0               [24]  646 	movx	a,@dptr
      002E1A 43 E0 01         [24]  647 	orl	acc,#0x01
      002E1D F0               [24]  648 	movx	@dptr,a
      002E1E                        649 00102$:
                                    650 ;	src/eeprom.c:89: SCL_LOW();
                                    651 ;	assignBit
      002E1E C2 96            [12]  652 	clr	_P1_6
                                    653 ;	src/eeprom.c:83: for (i = 0; i < 8; i++) {
      002E20 0F               [12]  654 	inc	r7
      002E21 BF 08 00         [24]  655 	cjne	r7,#0x08,00128$
      002E24                        656 00128$:
      002E24 40 E4            [24]  657 	jc	00104$
                                    658 ;	src/eeprom.c:91: SCL_HIGH();
                                    659 ;	assignBit
      002E26 D2 96            [12]  660 	setb	_P1_6
                                    661 ;	src/eeprom.c:93: last? SDA_HIGH(): SDA_LOW(); /* send nack or ack */
      002E28 90 20 56         [24]  662 	mov	dptr,#_i2c_byte_in_last_65536_9
      002E2B E0               [24]  663 	movx	a,@dptr
      002E2C 60 06            [24]  664 	jz	00108$
                                    665 ;	assignBit
      002E2E D2 97            [12]  666 	setb	_P1_7
      002E30 A2 97            [12]  667 	mov	c,_P1_7
      002E32 80 04            [24]  668 	sjmp	00109$
      002E34                        669 00108$:
                                    670 ;	assignBit
      002E34 C2 97            [12]  671 	clr	_P1_7
      002E36 A2 97            [12]  672 	mov	c,_P1_7
      002E38                        673 00109$:
                                    674 ;	src/eeprom.c:95: SCL_LOW(); 
                                    675 ;	assignBit
      002E38 C2 96            [12]  676 	clr	_P1_6
                                    677 ;	src/eeprom.c:96: SDA_LOW();
                                    678 ;	assignBit
      002E3A C2 97            [12]  679 	clr	_P1_7
                                    680 ;	src/eeprom.c:99: return b;
      002E3C 90 20 57         [24]  681 	mov	dptr,#_i2c_byte_in_b_65536_10
      002E3F E0               [24]  682 	movx	a,@dptr
                                    683 ;	src/eeprom.c:100: }
      002E40 F5 82            [12]  684 	mov	dpl,a
      002E42 22               [24]  685 	ret
                                    686 ;------------------------------------------------------------
                                    687 ;Allocation info for local variables in function 'i2c_end'
                                    688 ;------------------------------------------------------------
                                    689 ;	src/eeprom.c:102: static void i2c_end() {
                                    690 ;	-----------------------------------------
                                    691 ;	 function i2c_end
                                    692 ;	-----------------------------------------
      002E43                        693 _i2c_end:
                                    694 ;	src/eeprom.c:106: SCL_HIGH();
                                    695 ;	assignBit
      002E43 D2 96            [12]  696 	setb	_P1_6
                                    697 ;	src/eeprom.c:108: SDA_HIGH();
                                    698 ;	assignBit
      002E45 D2 97            [12]  699 	setb	_P1_7
                                    700 ;	src/eeprom.c:110: }
      002E47 22               [24]  701 	ret
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'i2c_begin'
                                    704 ;------------------------------------------------------------
                                    705 ;rw                        Allocated with name '_i2c_begin_PARM_2'
                                    706 ;addr                      Allocated with name '_i2c_begin_addr_65536_14'
                                    707 ;------------------------------------------------------------
                                    708 ;	src/eeprom.c:113: static uint8_t i2c_begin(uint8_t addr, uint8_t rw) {
                                    709 ;	-----------------------------------------
                                    710 ;	 function i2c_begin
                                    711 ;	-----------------------------------------
      002E48                        712 _i2c_begin:
      002E48 E5 82            [12]  713 	mov	a,dpl
      002E4A 90 20 59         [24]  714 	mov	dptr,#_i2c_begin_addr_65536_14
      002E4D F0               [24]  715 	movx	@dptr,a
                                    716 ;	src/eeprom.c:35: SDA_HIGH();
                                    717 ;	assignBit
      002E4E D2 97            [12]  718 	setb	_P1_7
                                    719 ;	src/eeprom.c:36: SCL_HIGH();
                                    720 ;	assignBit
      002E50 D2 96            [12]  721 	setb	_P1_6
                                    722 ;	src/eeprom.c:116: SDA_LOW();
                                    723 ;	assignBit
      002E52 C2 97            [12]  724 	clr	_P1_7
                                    725 ;	src/eeprom.c:118: SCL_LOW();
                                    726 ;	assignBit
      002E54 C2 96            [12]  727 	clr	_P1_6
                                    728 ;	src/eeprom.c:122: addr <<= 1; /* shift addess */
      002E56 90 20 59         [24]  729 	mov	dptr,#_i2c_begin_addr_65536_14
      002E59 E0               [24]  730 	movx	a,@dptr
      002E5A 25 E0            [12]  731 	add	a,acc
      002E5C F0               [24]  732 	movx	@dptr,a
                                    733 ;	src/eeprom.c:123: if (rw) addr++; /* read/write */
      002E5D 90 20 58         [24]  734 	mov	dptr,#_i2c_begin_PARM_2
      002E60 E0               [24]  735 	movx	a,@dptr
      002E61 60 07            [24]  736 	jz	00102$
      002E63 90 20 59         [24]  737 	mov	dptr,#_i2c_begin_addr_65536_14
      002E66 E0               [24]  738 	movx	a,@dptr
      002E67 24 01            [12]  739 	add	a,#0x01
      002E69 F0               [24]  740 	movx	@dptr,a
      002E6A                        741 00102$:
                                    742 ;	src/eeprom.c:126: return i2c_byte_out(addr);
      002E6A 90 20 59         [24]  743 	mov	dptr,#_i2c_begin_addr_65536_14
      002E6D E0               [24]  744 	movx	a,@dptr
      002E6E F5 82            [12]  745 	mov	dpl,a
                                    746 ;	src/eeprom.c:127: }
      002E70 02 2D B4         [24]  747 	ljmp	_i2c_byte_out
                                    748 ;------------------------------------------------------------
                                    749 ;Allocation info for local variables in function 'i2c_write'
                                    750 ;------------------------------------------------------------
                                    751 ;p                         Allocated with name '_i2c_write_PARM_2'
                                    752 ;len                       Allocated with name '_i2c_write_PARM_3'
                                    753 ;addr                      Allocated with name '_i2c_write_addr_65536_19'
                                    754 ;b                         Allocated with name '_i2c_write_b_65536_20'
                                    755 ;n                         Allocated with name '_i2c_write_n_65536_20'
                                    756 ;rc                        Allocated with name '_i2c_write_rc_65536_20'
                                    757 ;------------------------------------------------------------
                                    758 ;	src/eeprom.c:129: uint8_t i2c_write(uint8_t addr, uint8_t *p, uint8_t len) {
                                    759 ;	-----------------------------------------
                                    760 ;	 function i2c_write
                                    761 ;	-----------------------------------------
      002E73                        762 _i2c_write:
      002E73 E5 82            [12]  763 	mov	a,dpl
      002E75 90 20 5E         [24]  764 	mov	dptr,#_i2c_write_addr_65536_19
      002E78 F0               [24]  765 	movx	@dptr,a
                                    766 ;	src/eeprom.c:131: uint8_t n = len;
      002E79 90 20 5D         [24]  767 	mov	dptr,#_i2c_write_PARM_3
      002E7C E0               [24]  768 	movx	a,@dptr
      002E7D FF               [12]  769 	mov	r7,a
                                    770 ;	src/eeprom.c:132: uint8_t rc = i2c_begin(addr, 0); /* start, set addr with WRITE bit */
      002E7E 90 20 5E         [24]  771 	mov	dptr,#_i2c_write_addr_65536_19
      002E81 E0               [24]  772 	movx	a,@dptr
      002E82 FE               [12]  773 	mov	r6,a
      002E83 90 20 58         [24]  774 	mov	dptr,#_i2c_begin_PARM_2
      002E86 E4               [12]  775 	clr	a
      002E87 F0               [24]  776 	movx	@dptr,a
      002E88 8E 82            [24]  777 	mov	dpl,r6
      002E8A C0 07            [24]  778 	push	ar7
      002E8C 12 2E 48         [24]  779 	lcall	_i2c_begin
      002E8F AE 82            [24]  780 	mov	r6,dpl
      002E91 D0 07            [24]  781 	pop	ar7
      002E93 90 20 5F         [24]  782 	mov	dptr,#_i2c_write_rc_65536_20
      002E96 EE               [12]  783 	mov	a,r6
      002E97 F0               [24]  784 	movx	@dptr,a
                                    785 ;	src/eeprom.c:133: if (rc) {
      002E98 EE               [12]  786 	mov	a,r6
      002E99 60 72            [24]  787 	jz	00108$
                                    788 ;	src/eeprom.c:134: while (n && rc) {
      002E9B 8F 06            [24]  789 	mov	ar6,r7
      002E9D 90 20 5A         [24]  790 	mov	dptr,#_i2c_write_PARM_2
      002EA0 E0               [24]  791 	movx	a,@dptr
      002EA1 FB               [12]  792 	mov	r3,a
      002EA2 A3               [24]  793 	inc	dptr
      002EA3 E0               [24]  794 	movx	a,@dptr
      002EA4 FC               [12]  795 	mov	r4,a
      002EA5 A3               [24]  796 	inc	dptr
      002EA6 E0               [24]  797 	movx	a,@dptr
      002EA7 FD               [12]  798 	mov	r5,a
      002EA8                        799 00104$:
      002EA8 EE               [12]  800 	mov	a,r6
      002EA9 60 3A            [24]  801 	jz	00106$
      002EAB 90 20 5F         [24]  802 	mov	dptr,#_i2c_write_rc_65536_20
      002EAE E0               [24]  803 	movx	a,@dptr
      002EAF 60 34            [24]  804 	jz	00106$
                                    805 ;	src/eeprom.c:135: b = *p;
      002EB1 8B 82            [24]  806 	mov	dpl,r3
      002EB3 8C 83            [24]  807 	mov	dph,r4
      002EB5 8D F0            [24]  808 	mov	b,r5
      002EB7 12 3E C2         [24]  809 	lcall	__gptrget
                                    810 ;	src/eeprom.c:136: rc = i2c_byte_out(b); // 0:ack, 1:nack
      002EBA F5 82            [12]  811 	mov	dpl,a
      002EBC C0 07            [24]  812 	push	ar7
      002EBE C0 06            [24]  813 	push	ar6
      002EC0 C0 05            [24]  814 	push	ar5
      002EC2 C0 04            [24]  815 	push	ar4
      002EC4 C0 03            [24]  816 	push	ar3
      002EC6 12 2D B4         [24]  817 	lcall	_i2c_byte_out
      002EC9 AA 82            [24]  818 	mov	r2,dpl
      002ECB D0 03            [24]  819 	pop	ar3
      002ECD D0 04            [24]  820 	pop	ar4
      002ECF D0 05            [24]  821 	pop	ar5
      002ED1 D0 06            [24]  822 	pop	ar6
      002ED3 D0 07            [24]  823 	pop	ar7
      002ED5 90 20 5F         [24]  824 	mov	dptr,#_i2c_write_rc_65536_20
      002ED8 EA               [12]  825 	mov	a,r2
      002ED9 F0               [24]  826 	movx	@dptr,a
                                    827 ;	src/eeprom.c:137: if (rc) { // 
      002EDA EA               [12]  828 	mov	a,r2
      002EDB 60 CB            [24]  829 	jz	00104$
                                    830 ;	src/eeprom.c:138: n--;
      002EDD 1E               [12]  831 	dec	r6
                                    832 ;	src/eeprom.c:139: p++;
      002EDE 0B               [12]  833 	inc	r3
      002EDF BB 00 C6         [24]  834 	cjne	r3,#0x00,00104$
      002EE2 0C               [12]  835 	inc	r4
      002EE3 80 C3            [24]  836 	sjmp	00104$
      002EE5                        837 00106$:
                                    838 ;	src/eeprom.c:142: rc = rc? ((len - n)? 1: 0): 0;
      002EE5 90 20 5F         [24]  839 	mov	dptr,#_i2c_write_rc_65536_20
      002EE8 E0               [24]  840 	movx	a,@dptr
      002EE9 60 19            [24]  841 	jz	00111$
      002EEB E4               [12]  842 	clr	a
      002EEC FD               [12]  843 	mov	r5,a
      002EED FC               [12]  844 	mov	r4,a
      002EEE EF               [12]  845 	mov	a,r7
      002EEF C3               [12]  846 	clr	c
      002EF0 9E               [12]  847 	subb	a,r6
      002EF1 FF               [12]  848 	mov	r7,a
      002EF2 ED               [12]  849 	mov	a,r5
      002EF3 9C               [12]  850 	subb	a,r4
      002EF4 FD               [12]  851 	mov	r5,a
      002EF5 4F               [12]  852 	orl	a,r7
      002EF6 60 06            [24]  853 	jz	00113$
      002EF8 7E 01            [12]  854 	mov	r6,#0x01
      002EFA 7F 00            [12]  855 	mov	r7,#0x00
      002EFC 80 0A            [24]  856 	sjmp	00112$
      002EFE                        857 00113$:
      002EFE 7E 00            [12]  858 	mov	r6,#0x00
      002F00 7F 00            [12]  859 	mov	r7,#0x00
      002F02 80 04            [24]  860 	sjmp	00112$
      002F04                        861 00111$:
      002F04 7E 00            [12]  862 	mov	r6,#0x00
      002F06 7F 00            [12]  863 	mov	r7,#0x00
      002F08                        864 00112$:
      002F08 90 20 5F         [24]  865 	mov	dptr,#_i2c_write_rc_65536_20
      002F0B EE               [12]  866 	mov	a,r6
      002F0C F0               [24]  867 	movx	@dptr,a
      002F0D                        868 00108$:
                                    869 ;	src/eeprom.c:144: i2c_end();
      002F0D 12 2E 43         [24]  870 	lcall	_i2c_end
                                    871 ;	src/eeprom.c:146: return rc;
      002F10 90 20 5F         [24]  872 	mov	dptr,#_i2c_write_rc_65536_20
      002F13 E0               [24]  873 	movx	a,@dptr
                                    874 ;	src/eeprom.c:147: }
      002F14 F5 82            [12]  875 	mov	dpl,a
      002F16 22               [24]  876 	ret
                                    877 ;------------------------------------------------------------
                                    878 ;Allocation info for local variables in function 'i2c_read'
                                    879 ;------------------------------------------------------------
                                    880 ;p                         Allocated with name '_i2c_read_PARM_2'
                                    881 ;len                       Allocated with name '_i2c_read_PARM_3'
                                    882 ;addr                      Allocated with name '_i2c_read_addr_65536_24'
                                    883 ;rc                        Allocated with name '_i2c_read_rc_65536_25'
                                    884 ;------------------------------------------------------------
                                    885 ;	src/eeprom.c:149: uint8_t i2c_read(uint8_t addr, uint8_t *p, uint8_t len) {
                                    886 ;	-----------------------------------------
                                    887 ;	 function i2c_read
                                    888 ;	-----------------------------------------
      002F17                        889 _i2c_read:
      002F17 E5 82            [12]  890 	mov	a,dpl
      002F19 90 20 64         [24]  891 	mov	dptr,#_i2c_read_addr_65536_24
      002F1C F0               [24]  892 	movx	@dptr,a
                                    893 ;	src/eeprom.c:150: uint8_t rc = i2c_begin(addr, 1); /* start, set addr with READ bit */
      002F1D E0               [24]  894 	movx	a,@dptr
      002F1E FF               [12]  895 	mov	r7,a
      002F1F 90 20 58         [24]  896 	mov	dptr,#_i2c_begin_PARM_2
      002F22 74 01            [12]  897 	mov	a,#0x01
      002F24 F0               [24]  898 	movx	@dptr,a
      002F25 8F 82            [24]  899 	mov	dpl,r7
      002F27 12 2E 48         [24]  900 	lcall	_i2c_begin
                                    901 ;	src/eeprom.c:151: if (rc) {
      002F2A E5 82            [12]  902 	mov	a,dpl
      002F2C FF               [12]  903 	mov	r7,a
      002F2D 60 4A            [24]  904 	jz	00105$
                                    905 ;	src/eeprom.c:152: while (len--) {
      002F2F 90 20 60         [24]  906 	mov	dptr,#_i2c_read_PARM_2
      002F32 E0               [24]  907 	movx	a,@dptr
      002F33 FC               [12]  908 	mov	r4,a
      002F34 A3               [24]  909 	inc	dptr
      002F35 E0               [24]  910 	movx	a,@dptr
      002F36 FD               [12]  911 	mov	r5,a
      002F37 A3               [24]  912 	inc	dptr
      002F38 E0               [24]  913 	movx	a,@dptr
      002F39 FE               [12]  914 	mov	r6,a
      002F3A 90 20 63         [24]  915 	mov	dptr,#_i2c_read_PARM_3
      002F3D E0               [24]  916 	movx	a,@dptr
      002F3E FB               [12]  917 	mov	r3,a
      002F3F                        918 00101$:
      002F3F 8B 02            [24]  919 	mov	ar2,r3
      002F41 1B               [12]  920 	dec	r3
      002F42 EA               [12]  921 	mov	a,r2
      002F43 60 34            [24]  922 	jz	00105$
                                    923 ;	src/eeprom.c:153: *p++ = i2c_byte_in(len == 0);
      002F45 EB               [12]  924 	mov	a,r3
      002F46 B4 01 00         [24]  925 	cjne	a,#0x01,00122$
      002F49                        926 00122$:
      002F49 92 01            [24]  927 	mov  _i2c_read_sloc0_1_0,c
      002F4B E4               [12]  928 	clr	a
      002F4C 33               [12]  929 	rlc	a
      002F4D F5 82            [12]  930 	mov	dpl,a
      002F4F C0 07            [24]  931 	push	ar7
      002F51 C0 06            [24]  932 	push	ar6
      002F53 C0 05            [24]  933 	push	ar5
      002F55 C0 04            [24]  934 	push	ar4
      002F57 C0 03            [24]  935 	push	ar3
      002F59 12 2D FB         [24]  936 	lcall	_i2c_byte_in
      002F5C AA 82            [24]  937 	mov	r2,dpl
      002F5E D0 03            [24]  938 	pop	ar3
      002F60 D0 04            [24]  939 	pop	ar4
      002F62 D0 05            [24]  940 	pop	ar5
      002F64 D0 06            [24]  941 	pop	ar6
      002F66 D0 07            [24]  942 	pop	ar7
      002F68 8C 82            [24]  943 	mov	dpl,r4
      002F6A 8D 83            [24]  944 	mov	dph,r5
      002F6C 8E F0            [24]  945 	mov	b,r6
      002F6E EA               [12]  946 	mov	a,r2
      002F6F 12 32 68         [24]  947 	lcall	__gptrput
      002F72 A3               [24]  948 	inc	dptr
      002F73 AC 82            [24]  949 	mov	r4,dpl
      002F75 AD 83            [24]  950 	mov	r5,dph
      002F77 80 C6            [24]  951 	sjmp	00101$
      002F79                        952 00105$:
                                    953 ;	src/eeprom.c:156: i2c_end();
      002F79 C0 07            [24]  954 	push	ar7
      002F7B 12 2E 43         [24]  955 	lcall	_i2c_end
      002F7E D0 07            [24]  956 	pop	ar7
                                    957 ;	src/eeprom.c:157: return rc;
      002F80 8F 82            [24]  958 	mov	dpl,r7
                                    959 ;	src/eeprom.c:158: }
      002F82 22               [24]  960 	ret
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'eeprom_init'
                                    963 ;------------------------------------------------------------
                                    964 ;	src/eeprom.c:163: void eeprom_init()
                                    965 ;	-----------------------------------------
                                    966 ;	 function eeprom_init
                                    967 ;	-----------------------------------------
      002F83                        968 _eeprom_init:
                                    969 ;	src/eeprom.c:35: SDA_HIGH();
                                    970 ;	assignBit
      002F83 D2 97            [12]  971 	setb	_P1_7
                                    972 ;	src/eeprom.c:36: SCL_HIGH();
                                    973 ;	assignBit
      002F85 D2 96            [12]  974 	setb	_P1_6
                                    975 ;	src/eeprom.c:165: i2c_init(); 
                                    976 ;	src/eeprom.c:166: }
      002F87 22               [24]  977 	ret
                                    978 ;------------------------------------------------------------
                                    979 ;Allocation info for local variables in function 'eepromwritebyte'
                                    980 ;------------------------------------------------------------
                                    981 ;byte                      Allocated with name '_eepromwritebyte_PARM_2'
                                    982 ;addr                      Allocated with name '_eepromwritebyte_addr_65536_32'
                                    983 ;i2c_address               Allocated with name '_eepromwritebyte_i2c_address_65537_34'
                                    984 ;word_address              Allocated with name '_eepromwritebyte_word_address_65538_35'
                                    985 ;ack                       Allocated with name '_eepromwritebyte_ack_65538_35'
                                    986 ;------------------------------------------------------------
                                    987 ;	src/eeprom.c:169: int eepromwritebyte(unsigned int addr, uint8_t byte)
                                    988 ;	-----------------------------------------
                                    989 ;	 function eepromwritebyte
                                    990 ;	-----------------------------------------
      002F88                        991 _eepromwritebyte:
      002F88 AF 83            [24]  992 	mov	r7,dph
      002F8A E5 82            [12]  993 	mov	a,dpl
      002F8C 90 20 66         [24]  994 	mov	dptr,#_eepromwritebyte_addr_65536_32
      002F8F F0               [24]  995 	movx	@dptr,a
      002F90 EF               [12]  996 	mov	a,r7
      002F91 A3               [24]  997 	inc	dptr
      002F92 F0               [24]  998 	movx	@dptr,a
                                    999 ;	src/eeprom.c:171: if (addr > 0x7FF) return FAILURE;
      002F93 90 20 66         [24] 1000 	mov	dptr,#_eepromwritebyte_addr_65536_32
      002F96 E0               [24] 1001 	movx	a,@dptr
      002F97 FE               [12] 1002 	mov	r6,a
      002F98 A3               [24] 1003 	inc	dptr
      002F99 E0               [24] 1004 	movx	a,@dptr
      002F9A FF               [12] 1005 	mov	r7,a
      002F9B C3               [12] 1006 	clr	c
      002F9C 74 FF            [12] 1007 	mov	a,#0xff
      002F9E 9E               [12] 1008 	subb	a,r6
      002F9F 74 07            [12] 1009 	mov	a,#0x07
      002FA1 9F               [12] 1010 	subb	a,r7
      002FA2 50 04            [24] 1011 	jnc	00102$
      002FA4 90 00 01         [24] 1012 	mov	dptr,#0x0001
      002FA7 22               [24] 1013 	ret
      002FA8                       1014 00102$:
                                   1015 ;	src/eeprom.c:173: i2c_address |= addr >> 8;
      002FA8 8F 04            [24] 1016 	mov	ar4,r7
      002FAA 43 04 50         [24] 1017 	orl	ar4,#0x50
                                   1018 ;	src/eeprom.c:174: uint8_t word_address = ((uint8_t) (addr & 0xFF));
                                   1019 ;	src/eeprom.c:175: int ack = i2c_begin(i2c_address, 0);
      002FAD 90 20 58         [24] 1020 	mov	dptr,#_i2c_begin_PARM_2
      002FB0 E4               [12] 1021 	clr	a
      002FB1 F0               [24] 1022 	movx	@dptr,a
      002FB2 8C 82            [24] 1023 	mov	dpl,r4
      002FB4 C0 06            [24] 1024 	push	ar6
      002FB6 12 2E 48         [24] 1025 	lcall	_i2c_begin
      002FB9 AF 82            [24] 1026 	mov	r7,dpl
      002FBB D0 06            [24] 1027 	pop	ar6
      002FBD 7D 00            [12] 1028 	mov	r5,#0x00
                                   1029 ;	src/eeprom.c:176: if (ack != 1)
      002FBF BF 01 05         [24] 1030 	cjne	r7,#0x01,00128$
      002FC2 BD 00 02         [24] 1031 	cjne	r5,#0x00,00128$
      002FC5 80 07            [24] 1032 	sjmp	00104$
      002FC7                       1033 00128$:
                                   1034 ;	src/eeprom.c:178: i2c_end();
      002FC7 12 2E 43         [24] 1035 	lcall	_i2c_end
                                   1036 ;	src/eeprom.c:179: return FAILURE;
      002FCA 90 00 01         [24] 1037 	mov	dptr,#0x0001
      002FCD 22               [24] 1038 	ret
      002FCE                       1039 00104$:
                                   1040 ;	src/eeprom.c:181: ack = i2c_byte_out(word_address);
      002FCE 8E 82            [24] 1041 	mov	dpl,r6
      002FD0 12 2D B4         [24] 1042 	lcall	_i2c_byte_out
      002FD3 AF 82            [24] 1043 	mov	r7,dpl
      002FD5 7E 00            [12] 1044 	mov	r6,#0x00
                                   1045 ;	src/eeprom.c:182: if (ack != 1)
      002FD7 BF 01 05         [24] 1046 	cjne	r7,#0x01,00129$
      002FDA BE 00 02         [24] 1047 	cjne	r6,#0x00,00129$
      002FDD 80 07            [24] 1048 	sjmp	00106$
      002FDF                       1049 00129$:
                                   1050 ;	src/eeprom.c:184: i2c_end();
      002FDF 12 2E 43         [24] 1051 	lcall	_i2c_end
                                   1052 ;	src/eeprom.c:185: return FAILURE;
      002FE2 90 00 01         [24] 1053 	mov	dptr,#0x0001
      002FE5 22               [24] 1054 	ret
      002FE6                       1055 00106$:
                                   1056 ;	src/eeprom.c:188: ack = i2c_byte_out(byte);
      002FE6 90 20 65         [24] 1057 	mov	dptr,#_eepromwritebyte_PARM_2
      002FE9 E0               [24] 1058 	movx	a,@dptr
      002FEA F5 82            [12] 1059 	mov	dpl,a
      002FEC 12 2D B4         [24] 1060 	lcall	_i2c_byte_out
      002FEF AF 82            [24] 1061 	mov	r7,dpl
      002FF1 7E 00            [12] 1062 	mov	r6,#0x00
                                   1063 ;	src/eeprom.c:189: if (ack != 1)
      002FF3 BF 01 05         [24] 1064 	cjne	r7,#0x01,00130$
      002FF6 BE 00 02         [24] 1065 	cjne	r6,#0x00,00130$
      002FF9 80 07            [24] 1066 	sjmp	00108$
      002FFB                       1067 00130$:
                                   1068 ;	src/eeprom.c:191: i2c_end();
      002FFB 12 2E 43         [24] 1069 	lcall	_i2c_end
                                   1070 ;	src/eeprom.c:192: return FAILURE;
      002FFE 90 00 01         [24] 1071 	mov	dptr,#0x0001
      003001 22               [24] 1072 	ret
      003002                       1073 00108$:
                                   1074 ;	src/eeprom.c:195: i2c_end();
      003002 12 2E 43         [24] 1075 	lcall	_i2c_end
                                   1076 ;	src/eeprom.c:196: return SUCCESS;
      003005 90 00 00         [24] 1077 	mov	dptr,#0x0000
                                   1078 ;	src/eeprom.c:198: }
      003008 22               [24] 1079 	ret
                                   1080 ;------------------------------------------------------------
                                   1081 ;Allocation info for local variables in function 'eepromreadbyte'
                                   1082 ;------------------------------------------------------------
                                   1083 ;byte                      Allocated with name '_eepromreadbyte_PARM_2'
                                   1084 ;addr                      Allocated with name '_eepromreadbyte_addr_65536_39'
                                   1085 ;i2c_address               Allocated with name '_eepromreadbyte_i2c_address_65537_41'
                                   1086 ;word_address              Allocated with name '_eepromreadbyte_word_address_65538_42'
                                   1087 ;ack                       Allocated with name '_eepromreadbyte_ack_65538_42'
                                   1088 ;------------------------------------------------------------
                                   1089 ;	src/eeprom.c:200: int eepromreadbyte(unsigned int addr, uint8_t *byte)
                                   1090 ;	-----------------------------------------
                                   1091 ;	 function eepromreadbyte
                                   1092 ;	-----------------------------------------
      003009                       1093 _eepromreadbyte:
      003009 AF 83            [24] 1094 	mov	r7,dph
      00300B E5 82            [12] 1095 	mov	a,dpl
      00300D 90 20 6B         [24] 1096 	mov	dptr,#_eepromreadbyte_addr_65536_39
      003010 F0               [24] 1097 	movx	@dptr,a
      003011 EF               [12] 1098 	mov	a,r7
      003012 A3               [24] 1099 	inc	dptr
      003013 F0               [24] 1100 	movx	@dptr,a
                                   1101 ;	src/eeprom.c:202: if (addr > 0x7FF) return FAILURE;
      003014 90 20 6B         [24] 1102 	mov	dptr,#_eepromreadbyte_addr_65536_39
      003017 E0               [24] 1103 	movx	a,@dptr
      003018 FE               [12] 1104 	mov	r6,a
      003019 A3               [24] 1105 	inc	dptr
      00301A E0               [24] 1106 	movx	a,@dptr
      00301B FF               [12] 1107 	mov	r7,a
      00301C C3               [12] 1108 	clr	c
      00301D 74 FF            [12] 1109 	mov	a,#0xff
      00301F 9E               [12] 1110 	subb	a,r6
      003020 74 07            [12] 1111 	mov	a,#0x07
      003022 9F               [12] 1112 	subb	a,r7
      003023 50 04            [24] 1113 	jnc	00102$
      003025 90 00 01         [24] 1114 	mov	dptr,#0x0001
      003028 22               [24] 1115 	ret
      003029                       1116 00102$:
                                   1117 ;	src/eeprom.c:204: i2c_address |= addr >> 8;
      003029 8F 04            [24] 1118 	mov	ar4,r7
      00302B 7D 00            [12] 1119 	mov	r5,#0x00
      00302D 43 04 50         [24] 1120 	orl	ar4,#0x50
                                   1121 ;	src/eeprom.c:205: uint8_t word_address = ((uint8_t) (addr & 0xFF));
                                   1122 ;	src/eeprom.c:207: int ack = i2c_begin(i2c_address, 0);
      003030 8C 03            [24] 1123 	mov	ar3,r4
      003032 90 20 58         [24] 1124 	mov	dptr,#_i2c_begin_PARM_2
      003035 E4               [12] 1125 	clr	a
      003036 F0               [24] 1126 	movx	@dptr,a
      003037 8B 82            [24] 1127 	mov	dpl,r3
      003039 C0 06            [24] 1128 	push	ar6
      00303B C0 05            [24] 1129 	push	ar5
      00303D C0 04            [24] 1130 	push	ar4
      00303F 12 2E 48         [24] 1131 	lcall	_i2c_begin
      003042 AF 82            [24] 1132 	mov	r7,dpl
      003044 D0 04            [24] 1133 	pop	ar4
      003046 D0 05            [24] 1134 	pop	ar5
      003048 D0 06            [24] 1135 	pop	ar6
      00304A 7B 00            [12] 1136 	mov	r3,#0x00
                                   1137 ;	src/eeprom.c:208: if (ack != 1)
      00304C BF 01 05         [24] 1138 	cjne	r7,#0x01,00122$
      00304F BB 00 02         [24] 1139 	cjne	r3,#0x00,00122$
      003052 80 07            [24] 1140 	sjmp	00104$
      003054                       1141 00122$:
                                   1142 ;	src/eeprom.c:210: i2c_end();
      003054 12 2E 43         [24] 1143 	lcall	_i2c_end
                                   1144 ;	src/eeprom.c:211: return FAILURE;
      003057 90 00 01         [24] 1145 	mov	dptr,#0x0001
      00305A 22               [24] 1146 	ret
      00305B                       1147 00104$:
                                   1148 ;	src/eeprom.c:214: ack = i2c_byte_out(word_address);
      00305B 8E 82            [24] 1149 	mov	dpl,r6
      00305D C0 05            [24] 1150 	push	ar5
      00305F C0 04            [24] 1151 	push	ar4
      003061 12 2D B4         [24] 1152 	lcall	_i2c_byte_out
      003064 AF 82            [24] 1153 	mov	r7,dpl
      003066 D0 04            [24] 1154 	pop	ar4
      003068 D0 05            [24] 1155 	pop	ar5
      00306A 7E 00            [12] 1156 	mov	r6,#0x00
                                   1157 ;	src/eeprom.c:216: if (ack != 1)
      00306C BF 01 05         [24] 1158 	cjne	r7,#0x01,00123$
      00306F BE 00 02         [24] 1159 	cjne	r6,#0x00,00123$
      003072 80 07            [24] 1160 	sjmp	00106$
      003074                       1161 00123$:
                                   1162 ;	src/eeprom.c:218: i2c_end();
      003074 12 2E 43         [24] 1163 	lcall	_i2c_end
                                   1164 ;	src/eeprom.c:219: return FAILURE;
      003077 90 00 01         [24] 1165 	mov	dptr,#0x0001
      00307A 22               [24] 1166 	ret
      00307B                       1167 00106$:
                                   1168 ;	src/eeprom.c:222: i2c_begin(i2c_address, 1);
      00307B 90 20 58         [24] 1169 	mov	dptr,#_i2c_begin_PARM_2
      00307E 74 01            [12] 1170 	mov	a,#0x01
      003080 F0               [24] 1171 	movx	@dptr,a
      003081 8C 82            [24] 1172 	mov	dpl,r4
      003083 12 2E 48         [24] 1173 	lcall	_i2c_begin
                                   1174 ;	src/eeprom.c:223: *byte = i2c_byte_in(true);
      003086 90 20 68         [24] 1175 	mov	dptr,#_eepromreadbyte_PARM_2
      003089 E0               [24] 1176 	movx	a,@dptr
      00308A FD               [12] 1177 	mov	r5,a
      00308B A3               [24] 1178 	inc	dptr
      00308C E0               [24] 1179 	movx	a,@dptr
      00308D FE               [12] 1180 	mov	r6,a
      00308E A3               [24] 1181 	inc	dptr
      00308F E0               [24] 1182 	movx	a,@dptr
      003090 FF               [12] 1183 	mov	r7,a
      003091 75 82 01         [24] 1184 	mov	dpl,#0x01
      003094 C0 07            [24] 1185 	push	ar7
      003096 C0 06            [24] 1186 	push	ar6
      003098 C0 05            [24] 1187 	push	ar5
      00309A 12 2D FB         [24] 1188 	lcall	_i2c_byte_in
      00309D AC 82            [24] 1189 	mov	r4,dpl
      00309F D0 05            [24] 1190 	pop	ar5
      0030A1 D0 06            [24] 1191 	pop	ar6
      0030A3 D0 07            [24] 1192 	pop	ar7
      0030A5 8D 82            [24] 1193 	mov	dpl,r5
      0030A7 8E 83            [24] 1194 	mov	dph,r6
      0030A9 8F F0            [24] 1195 	mov	b,r7
      0030AB EC               [12] 1196 	mov	a,r4
      0030AC 12 32 68         [24] 1197 	lcall	__gptrput
                                   1198 ;	src/eeprom.c:225: i2c_end();
      0030AF 12 2E 43         [24] 1199 	lcall	_i2c_end
                                   1200 ;	src/eeprom.c:226: return SUCCESS;
      0030B2 90 00 00         [24] 1201 	mov	dptr,#0x0000
                                   1202 ;	src/eeprom.c:228: } 
      0030B5 22               [24] 1203 	ret
                                   1204 ;------------------------------------------------------------
                                   1205 ;Allocation info for local variables in function 'eereset'
                                   1206 ;------------------------------------------------------------
                                   1207 ;i                         Allocated with name '_eereset_i_131072_50'
                                   1208 ;------------------------------------------------------------
                                   1209 ;	src/eeprom.c:239: void eereset()
                                   1210 ;	-----------------------------------------
                                   1211 ;	 function eereset
                                   1212 ;	-----------------------------------------
      0030B6                       1213 _eereset:
                                   1214 ;	src/eeprom.c:35: SDA_HIGH();
                                   1215 ;	assignBit
      0030B6 D2 97            [12] 1216 	setb	_P1_7
                                   1217 ;	src/eeprom.c:36: SCL_HIGH();
                                   1218 ;	assignBit
      0030B8 D2 96            [12] 1219 	setb	_P1_6
                                   1220 ;	src/eeprom.c:35: SDA_HIGH();
                                   1221 ;	assignBit
      0030BA D2 97            [12] 1222 	setb	_P1_7
                                   1223 ;	src/eeprom.c:36: SCL_HIGH();
                                   1224 ;	assignBit
      0030BC D2 96            [12] 1225 	setb	_P1_6
                                   1226 ;	src/eeprom.c:233: SDA_LOW();
                                   1227 ;	assignBit
      0030BE C2 97            [12] 1228 	clr	_P1_7
                                   1229 ;	src/eeprom.c:235: SCL_LOW();
                                   1230 ;	assignBit
      0030C0 C2 96            [12] 1231 	clr	_P1_6
                                   1232 ;	src/eeprom.c:243: for(int i = 0; i < 9; i++)
      0030C2 7E 00            [12] 1233 	mov	r6,#0x00
      0030C4 7F 00            [12] 1234 	mov	r7,#0x00
      0030C6                       1235 00108$:
      0030C6 C3               [12] 1236 	clr	c
      0030C7 EE               [12] 1237 	mov	a,r6
      0030C8 94 09            [12] 1238 	subb	a,#0x09
      0030CA EF               [12] 1239 	mov	a,r7
      0030CB 64 80            [12] 1240 	xrl	a,#0x80
      0030CD 94 80            [12] 1241 	subb	a,#0x80
      0030CF 50 0D            [24] 1242 	jnc	00101$
                                   1243 ;	src/eeprom.c:246: SDA_HIGH();
                                   1244 ;	assignBit
      0030D1 D2 97            [12] 1245 	setb	_P1_7
                                   1246 ;	src/eeprom.c:248: SCL_HIGH();
                                   1247 ;	assignBit
      0030D3 D2 96            [12] 1248 	setb	_P1_6
                                   1249 ;	src/eeprom.c:250: SCL_LOW();
                                   1250 ;	assignBit
      0030D5 C2 96            [12] 1251 	clr	_P1_6
                                   1252 ;	src/eeprom.c:243: for(int i = 0; i < 9; i++)
      0030D7 0E               [12] 1253 	inc	r6
      0030D8 BE 00 EB         [24] 1254 	cjne	r6,#0x00,00108$
      0030DB 0F               [12] 1255 	inc	r7
      0030DC 80 E8            [24] 1256 	sjmp	00108$
      0030DE                       1257 00101$:
                                   1258 ;	src/eeprom.c:35: SDA_HIGH();
                                   1259 ;	assignBit
      0030DE D2 97            [12] 1260 	setb	_P1_7
                                   1261 ;	src/eeprom.c:36: SCL_HIGH();
                                   1262 ;	assignBit
      0030E0 D2 96            [12] 1263 	setb	_P1_6
                                   1264 ;	src/eeprom.c:233: SDA_LOW();
                                   1265 ;	assignBit
      0030E2 C2 97            [12] 1266 	clr	_P1_7
                                   1267 ;	src/eeprom.c:235: SCL_LOW();
                                   1268 ;	assignBit
      0030E4 C2 96            [12] 1269 	clr	_P1_6
                                   1270 ;	src/eeprom.c:253: i2c_end();
                                   1271 ;	src/eeprom.c:254: }
      0030E6 02 2E 43         [24] 1272 	ljmp	_i2c_end
                                   1273 	.area CSEG    (CODE)
                                   1274 	.area CONST   (CODE)
                                   1275 	.area XINIT   (CODE)
                                   1276 	.area CABS    (ABS,CODE)
