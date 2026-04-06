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
                                     13 	.globl _i2c_init
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
                                    210 	.globl _eepromreadbyte_PARM_2
                                    211 	.globl _eepromwritebyte_PARM_2
                                    212 	.globl _i2c_read_PARM_3
                                    213 	.globl _i2c_read_PARM_2
                                    214 	.globl _i2c_write_PARM_3
                                    215 	.globl _i2c_write_PARM_2
                                    216 	.globl _eeprom_init
                                    217 	.globl _eepromwritebyte
                                    218 	.globl _eepromreadbyte
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
      00204F                        460 _i2c_byte_out_b_65536_5:
      00204F                        461 	.ds 1
      002050                        462 _i2c_byte_in_last_65536_9:
      002050                        463 	.ds 1
      002051                        464 _i2c_byte_in_b_65536_10:
      002051                        465 	.ds 1
      002052                        466 _i2c_begin_PARM_2:
      002052                        467 	.ds 1
      002053                        468 _i2c_begin_addr_65536_14:
      002053                        469 	.ds 1
      002054                        470 _i2c_write_PARM_2:
      002054                        471 	.ds 3
      002057                        472 _i2c_write_PARM_3:
      002057                        473 	.ds 1
      002058                        474 _i2c_write_addr_65536_16:
      002058                        475 	.ds 1
      002059                        476 _i2c_write_rc_65536_17:
      002059                        477 	.ds 1
      00205A                        478 _i2c_read_PARM_2:
      00205A                        479 	.ds 3
      00205D                        480 _i2c_read_PARM_3:
      00205D                        481 	.ds 1
      00205E                        482 _i2c_read_addr_65536_21:
      00205E                        483 	.ds 1
      00205F                        484 _eepromwritebyte_PARM_2:
      00205F                        485 	.ds 1
      002060                        486 _eepromwritebyte_addr_65536_26:
      002060                        487 	.ds 2
      002062                        488 _eepromreadbyte_PARM_2:
      002062                        489 	.ds 3
      002065                        490 _eepromreadbyte_addr_65536_33:
      002065                        491 	.ds 2
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
                                    527 ;Allocation info for local variables in function 'i2c_init'
                                    528 ;------------------------------------------------------------
                                    529 ;	src/eeprom.c:33: void i2c_init()
                                    530 ;	-----------------------------------------
                                    531 ;	 function i2c_init
                                    532 ;	-----------------------------------------
      002B58                        533 _i2c_init:
                           000007   534 	ar7 = 0x07
                           000006   535 	ar6 = 0x06
                           000005   536 	ar5 = 0x05
                           000004   537 	ar4 = 0x04
                           000003   538 	ar3 = 0x03
                           000002   539 	ar2 = 0x02
                           000001   540 	ar1 = 0x01
                           000000   541 	ar0 = 0x00
                                    542 ;	src/eeprom.c:35: SDA_HIGH();
                                    543 ;	assignBit
      002B58 D2 97            [12]  544 	setb	_P1_7
                                    545 ;	src/eeprom.c:36: SCL_HIGH();
                                    546 ;	assignBit
      002B5A D2 96            [12]  547 	setb	_P1_6
                                    548 ;	src/eeprom.c:37: }
      002B5C 22               [24]  549 	ret
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'i2c_byte_out'
                                    552 ;------------------------------------------------------------
                                    553 ;b                         Allocated with name '_i2c_byte_out_b_65536_5'
                                    554 ;i                         Allocated with name '_i2c_byte_out_i_65536_6'
                                    555 ;------------------------------------------------------------
                                    556 ;	src/eeprom.c:52: static uint8_t i2c_byte_out(uint8_t b) {
                                    557 ;	-----------------------------------------
                                    558 ;	 function i2c_byte_out
                                    559 ;	-----------------------------------------
      002B5D                        560 _i2c_byte_out:
      002B5D E5 82            [12]  561 	mov	a,dpl
      002B5F 90 20 4F         [24]  562 	mov	dptr,#_i2c_byte_out_b_65536_5
      002B62 F0               [24]  563 	movx	@dptr,a
                                    564 ;	src/eeprom.c:55: for (i = 0; i < 8; i++) {
      002B63 7F 00            [12]  565 	mov	r7,#0x00
      002B65                        566 00102$:
                                    567 ;	src/eeprom.c:56: (b & 0x80)? SDA_HIGH(): SDA_LOW();
      002B65 90 20 4F         [24]  568 	mov	dptr,#_i2c_byte_out_b_65536_5
      002B68 E0               [24]  569 	movx	a,@dptr
      002B69 30 E7 06         [24]  570 	jnb	acc.7,00106$
                                    571 ;	assignBit
      002B6C D2 97            [12]  572 	setb	_P1_7
      002B6E A2 97            [12]  573 	mov	c,_P1_7
      002B70 80 04            [24]  574 	sjmp	00107$
      002B72                        575 00106$:
                                    576 ;	assignBit
      002B72 C2 97            [12]  577 	clr	_P1_7
      002B74 A2 97            [12]  578 	mov	c,_P1_7
      002B76                        579 00107$:
                                    580 ;	src/eeprom.c:57: SCL_HIGH();
                                    581 ;	assignBit
      002B76 D2 96            [12]  582 	setb	_P1_6
                                    583 ;	src/eeprom.c:59: SCL_LOW();
                                    584 ;	assignBit
      002B78 C2 96            [12]  585 	clr	_P1_6
                                    586 ;	src/eeprom.c:60: b <<= 1;
      002B7A 90 20 4F         [24]  587 	mov	dptr,#_i2c_byte_out_b_65536_5
      002B7D E0               [24]  588 	movx	a,@dptr
      002B7E 25 E0            [12]  589 	add	a,acc
      002B80 F0               [24]  590 	movx	@dptr,a
                                    591 ;	src/eeprom.c:55: for (i = 0; i < 8; i++) {
      002B81 0F               [12]  592 	inc	r7
      002B82 BF 08 00         [24]  593 	cjne	r7,#0x08,00128$
      002B85                        594 00128$:
      002B85 40 DE            [24]  595 	jc	00102$
                                    596 ;	src/eeprom.c:65: SDA_HIGH(); /* pull up SDA for read */
                                    597 ;	assignBit
      002B87 D2 97            [12]  598 	setb	_P1_7
                                    599 ;	src/eeprom.c:66: SCL_HIGH();
                                    600 ;	assignBit
      002B89 D2 96            [12]  601 	setb	_P1_6
                                    602 ;	src/eeprom.c:68: i = SDA_READ(); /* read ack/nack */
      002B8B A2 97            [12]  603 	mov	c,_P1_7
      002B8D E4               [12]  604 	clr	a
      002B8E 33               [12]  605 	rlc	a
      002B8F FF               [12]  606 	mov	r7,a
                                    607 ;	src/eeprom.c:71: SCL_LOW();
                                    608 ;	assignBit
      002B90 C2 96            [12]  609 	clr	_P1_6
                                    610 ;	src/eeprom.c:72: SDA_LOW();
                                    611 ;	assignBit
      002B92 C2 97            [12]  612 	clr	_P1_7
                                    613 ;	src/eeprom.c:75: return i? 0: 1; /* 1:ack, 0:nack */
      002B94 EF               [12]  614 	mov	a,r7
      002B95 60 06            [24]  615 	jz	00108$
      002B97 7E 00            [12]  616 	mov	r6,#0x00
      002B99 7F 00            [12]  617 	mov	r7,#0x00
      002B9B 80 04            [24]  618 	sjmp	00109$
      002B9D                        619 00108$:
      002B9D 7E 01            [12]  620 	mov	r6,#0x01
      002B9F 7F 00            [12]  621 	mov	r7,#0x00
      002BA1                        622 00109$:
      002BA1 8E 82            [24]  623 	mov	dpl,r6
                                    624 ;	src/eeprom.c:76: }
      002BA3 22               [24]  625 	ret
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'i2c_byte_in'
                                    628 ;------------------------------------------------------------
                                    629 ;last                      Allocated with name '_i2c_byte_in_last_65536_9'
                                    630 ;i                         Allocated with name '_i2c_byte_in_i_65536_10'
                                    631 ;b                         Allocated with name '_i2c_byte_in_b_65536_10'
                                    632 ;------------------------------------------------------------
                                    633 ;	src/eeprom.c:78: static uint8_t i2c_byte_in(bool last) {
                                    634 ;	-----------------------------------------
                                    635 ;	 function i2c_byte_in
                                    636 ;	-----------------------------------------
      002BA4                        637 _i2c_byte_in:
      002BA4 E5 82            [12]  638 	mov	a,dpl
      002BA6 90 20 50         [24]  639 	mov	dptr,#_i2c_byte_in_last_65536_9
      002BA9 F0               [24]  640 	movx	@dptr,a
                                    641 ;	src/eeprom.c:80: uint8_t b = 0;
      002BAA 90 20 51         [24]  642 	mov	dptr,#_i2c_byte_in_b_65536_10
      002BAD E4               [12]  643 	clr	a
      002BAE F0               [24]  644 	movx	@dptr,a
                                    645 ;	src/eeprom.c:82: SDA_HIGH(); /* pull up for input */
                                    646 ;	assignBit
      002BAF D2 97            [12]  647 	setb	_P1_7
                                    648 ;	src/eeprom.c:83: for (i = 0; i < 8; i++) {
      002BB1 7F 00            [12]  649 	mov	r7,#0x00
      002BB3                        650 00104$:
                                    651 ;	src/eeprom.c:85: SCL_HIGH();
                                    652 ;	assignBit
      002BB3 D2 96            [12]  653 	setb	_P1_6
                                    654 ;	src/eeprom.c:86: b <<= 1;
      002BB5 90 20 51         [24]  655 	mov	dptr,#_i2c_byte_in_b_65536_10
      002BB8 E0               [24]  656 	movx	a,@dptr
      002BB9 25 E0            [12]  657 	add	a,acc
      002BBB F0               [24]  658 	movx	@dptr,a
                                    659 ;	src/eeprom.c:87: if (SDA_READ()) b |= 1;
      002BBC 30 97 08         [24]  660 	jnb	_P1_7,00102$
      002BBF 90 20 51         [24]  661 	mov	dptr,#_i2c_byte_in_b_65536_10
      002BC2 E0               [24]  662 	movx	a,@dptr
      002BC3 43 E0 01         [24]  663 	orl	acc,#0x01
      002BC6 F0               [24]  664 	movx	@dptr,a
      002BC7                        665 00102$:
                                    666 ;	src/eeprom.c:89: SCL_LOW();
                                    667 ;	assignBit
      002BC7 C2 96            [12]  668 	clr	_P1_6
                                    669 ;	src/eeprom.c:83: for (i = 0; i < 8; i++) {
      002BC9 0F               [12]  670 	inc	r7
      002BCA BF 08 00         [24]  671 	cjne	r7,#0x08,00128$
      002BCD                        672 00128$:
      002BCD 40 E4            [24]  673 	jc	00104$
                                    674 ;	src/eeprom.c:91: SCL_HIGH();
                                    675 ;	assignBit
      002BCF D2 96            [12]  676 	setb	_P1_6
                                    677 ;	src/eeprom.c:93: last? SDA_HIGH(): SDA_LOW(); /* send nack or ack */
      002BD1 90 20 50         [24]  678 	mov	dptr,#_i2c_byte_in_last_65536_9
      002BD4 E0               [24]  679 	movx	a,@dptr
      002BD5 60 06            [24]  680 	jz	00108$
                                    681 ;	assignBit
      002BD7 D2 97            [12]  682 	setb	_P1_7
      002BD9 A2 97            [12]  683 	mov	c,_P1_7
      002BDB 80 04            [24]  684 	sjmp	00109$
      002BDD                        685 00108$:
                                    686 ;	assignBit
      002BDD C2 97            [12]  687 	clr	_P1_7
      002BDF A2 97            [12]  688 	mov	c,_P1_7
      002BE1                        689 00109$:
                                    690 ;	src/eeprom.c:95: SCL_LOW(); 
                                    691 ;	assignBit
      002BE1 C2 96            [12]  692 	clr	_P1_6
                                    693 ;	src/eeprom.c:96: SDA_LOW();
                                    694 ;	assignBit
      002BE3 C2 97            [12]  695 	clr	_P1_7
                                    696 ;	src/eeprom.c:99: return b;
      002BE5 90 20 51         [24]  697 	mov	dptr,#_i2c_byte_in_b_65536_10
      002BE8 E0               [24]  698 	movx	a,@dptr
                                    699 ;	src/eeprom.c:100: }
      002BE9 F5 82            [12]  700 	mov	dpl,a
      002BEB 22               [24]  701 	ret
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'i2c_end'
                                    704 ;------------------------------------------------------------
                                    705 ;	src/eeprom.c:102: static void i2c_end() {
                                    706 ;	-----------------------------------------
                                    707 ;	 function i2c_end
                                    708 ;	-----------------------------------------
      002BEC                        709 _i2c_end:
                                    710 ;	src/eeprom.c:106: SCL_HIGH();
                                    711 ;	assignBit
      002BEC D2 96            [12]  712 	setb	_P1_6
                                    713 ;	src/eeprom.c:108: SDA_HIGH();
                                    714 ;	assignBit
      002BEE D2 97            [12]  715 	setb	_P1_7
                                    716 ;	src/eeprom.c:110: }
      002BF0 22               [24]  717 	ret
                                    718 ;------------------------------------------------------------
                                    719 ;Allocation info for local variables in function 'i2c_begin'
                                    720 ;------------------------------------------------------------
                                    721 ;rw                        Allocated with name '_i2c_begin_PARM_2'
                                    722 ;addr                      Allocated with name '_i2c_begin_addr_65536_14'
                                    723 ;------------------------------------------------------------
                                    724 ;	src/eeprom.c:113: static uint8_t i2c_begin(uint8_t addr, uint8_t rw) {
                                    725 ;	-----------------------------------------
                                    726 ;	 function i2c_begin
                                    727 ;	-----------------------------------------
      002BF1                        728 _i2c_begin:
      002BF1 E5 82            [12]  729 	mov	a,dpl
      002BF3 90 20 53         [24]  730 	mov	dptr,#_i2c_begin_addr_65536_14
      002BF6 F0               [24]  731 	movx	@dptr,a
                                    732 ;	src/eeprom.c:115: i2c_init();
      002BF7 12 2B 58         [24]  733 	lcall	_i2c_init
                                    734 ;	src/eeprom.c:116: SDA_LOW();
                                    735 ;	assignBit
      002BFA C2 97            [12]  736 	clr	_P1_7
                                    737 ;	src/eeprom.c:118: SCL_LOW();
                                    738 ;	assignBit
      002BFC C2 96            [12]  739 	clr	_P1_6
                                    740 ;	src/eeprom.c:122: addr <<= 1; /* shift addess */
      002BFE 90 20 53         [24]  741 	mov	dptr,#_i2c_begin_addr_65536_14
      002C01 E0               [24]  742 	movx	a,@dptr
      002C02 25 E0            [12]  743 	add	a,acc
      002C04 F0               [24]  744 	movx	@dptr,a
                                    745 ;	src/eeprom.c:123: if (rw) addr++; /* read/write */
      002C05 90 20 52         [24]  746 	mov	dptr,#_i2c_begin_PARM_2
      002C08 E0               [24]  747 	movx	a,@dptr
      002C09 60 07            [24]  748 	jz	00102$
      002C0B 90 20 53         [24]  749 	mov	dptr,#_i2c_begin_addr_65536_14
      002C0E E0               [24]  750 	movx	a,@dptr
      002C0F 24 01            [12]  751 	add	a,#0x01
      002C11 F0               [24]  752 	movx	@dptr,a
      002C12                        753 00102$:
                                    754 ;	src/eeprom.c:126: return i2c_byte_out(addr);
      002C12 90 20 53         [24]  755 	mov	dptr,#_i2c_begin_addr_65536_14
      002C15 E0               [24]  756 	movx	a,@dptr
      002C16 F5 82            [12]  757 	mov	dpl,a
                                    758 ;	src/eeprom.c:127: }
      002C18 02 2B 5D         [24]  759 	ljmp	_i2c_byte_out
                                    760 ;------------------------------------------------------------
                                    761 ;Allocation info for local variables in function 'i2c_write'
                                    762 ;------------------------------------------------------------
                                    763 ;p                         Allocated with name '_i2c_write_PARM_2'
                                    764 ;len                       Allocated with name '_i2c_write_PARM_3'
                                    765 ;addr                      Allocated with name '_i2c_write_addr_65536_16'
                                    766 ;b                         Allocated with name '_i2c_write_b_65536_17'
                                    767 ;n                         Allocated with name '_i2c_write_n_65536_17'
                                    768 ;rc                        Allocated with name '_i2c_write_rc_65536_17'
                                    769 ;------------------------------------------------------------
                                    770 ;	src/eeprom.c:129: uint8_t i2c_write(uint8_t addr, uint8_t *p, uint8_t len) {
                                    771 ;	-----------------------------------------
                                    772 ;	 function i2c_write
                                    773 ;	-----------------------------------------
      002C1B                        774 _i2c_write:
      002C1B E5 82            [12]  775 	mov	a,dpl
      002C1D 90 20 58         [24]  776 	mov	dptr,#_i2c_write_addr_65536_16
      002C20 F0               [24]  777 	movx	@dptr,a
                                    778 ;	src/eeprom.c:131: uint8_t n = len;
      002C21 90 20 57         [24]  779 	mov	dptr,#_i2c_write_PARM_3
      002C24 E0               [24]  780 	movx	a,@dptr
      002C25 FF               [12]  781 	mov	r7,a
                                    782 ;	src/eeprom.c:132: uint8_t rc = i2c_begin(addr, 0); /* start, set addr with WRITE bit */
      002C26 90 20 58         [24]  783 	mov	dptr,#_i2c_write_addr_65536_16
      002C29 E0               [24]  784 	movx	a,@dptr
      002C2A FE               [12]  785 	mov	r6,a
      002C2B 90 20 52         [24]  786 	mov	dptr,#_i2c_begin_PARM_2
      002C2E E4               [12]  787 	clr	a
      002C2F F0               [24]  788 	movx	@dptr,a
      002C30 8E 82            [24]  789 	mov	dpl,r6
      002C32 C0 07            [24]  790 	push	ar7
      002C34 12 2B F1         [24]  791 	lcall	_i2c_begin
      002C37 AE 82            [24]  792 	mov	r6,dpl
      002C39 D0 07            [24]  793 	pop	ar7
      002C3B 90 20 59         [24]  794 	mov	dptr,#_i2c_write_rc_65536_17
      002C3E EE               [12]  795 	mov	a,r6
      002C3F F0               [24]  796 	movx	@dptr,a
                                    797 ;	src/eeprom.c:133: if (rc) {
      002C40 EE               [12]  798 	mov	a,r6
      002C41 60 72            [24]  799 	jz	00108$
                                    800 ;	src/eeprom.c:134: while (n && rc) {
      002C43 8F 06            [24]  801 	mov	ar6,r7
      002C45 90 20 54         [24]  802 	mov	dptr,#_i2c_write_PARM_2
      002C48 E0               [24]  803 	movx	a,@dptr
      002C49 FB               [12]  804 	mov	r3,a
      002C4A A3               [24]  805 	inc	dptr
      002C4B E0               [24]  806 	movx	a,@dptr
      002C4C FC               [12]  807 	mov	r4,a
      002C4D A3               [24]  808 	inc	dptr
      002C4E E0               [24]  809 	movx	a,@dptr
      002C4F FD               [12]  810 	mov	r5,a
      002C50                        811 00104$:
      002C50 EE               [12]  812 	mov	a,r6
      002C51 60 3A            [24]  813 	jz	00106$
      002C53 90 20 59         [24]  814 	mov	dptr,#_i2c_write_rc_65536_17
      002C56 E0               [24]  815 	movx	a,@dptr
      002C57 60 34            [24]  816 	jz	00106$
                                    817 ;	src/eeprom.c:135: b = *p;
      002C59 8B 82            [24]  818 	mov	dpl,r3
      002C5B 8C 83            [24]  819 	mov	dph,r4
      002C5D 8D F0            [24]  820 	mov	b,r5
      002C5F 12 3C 35         [24]  821 	lcall	__gptrget
                                    822 ;	src/eeprom.c:136: rc = i2c_byte_out(b); // 0:ack, 1:nack
      002C62 F5 82            [12]  823 	mov	dpl,a
      002C64 C0 07            [24]  824 	push	ar7
      002C66 C0 06            [24]  825 	push	ar6
      002C68 C0 05            [24]  826 	push	ar5
      002C6A C0 04            [24]  827 	push	ar4
      002C6C C0 03            [24]  828 	push	ar3
      002C6E 12 2B 5D         [24]  829 	lcall	_i2c_byte_out
      002C71 AA 82            [24]  830 	mov	r2,dpl
      002C73 D0 03            [24]  831 	pop	ar3
      002C75 D0 04            [24]  832 	pop	ar4
      002C77 D0 05            [24]  833 	pop	ar5
      002C79 D0 06            [24]  834 	pop	ar6
      002C7B D0 07            [24]  835 	pop	ar7
      002C7D 90 20 59         [24]  836 	mov	dptr,#_i2c_write_rc_65536_17
      002C80 EA               [12]  837 	mov	a,r2
      002C81 F0               [24]  838 	movx	@dptr,a
                                    839 ;	src/eeprom.c:137: if (rc) { // 
      002C82 EA               [12]  840 	mov	a,r2
      002C83 60 CB            [24]  841 	jz	00104$
                                    842 ;	src/eeprom.c:138: n--;
      002C85 1E               [12]  843 	dec	r6
                                    844 ;	src/eeprom.c:139: p++;
      002C86 0B               [12]  845 	inc	r3
      002C87 BB 00 C6         [24]  846 	cjne	r3,#0x00,00104$
      002C8A 0C               [12]  847 	inc	r4
      002C8B 80 C3            [24]  848 	sjmp	00104$
      002C8D                        849 00106$:
                                    850 ;	src/eeprom.c:142: rc = rc? ((len - n)? 1: 0): 0;
      002C8D 90 20 59         [24]  851 	mov	dptr,#_i2c_write_rc_65536_17
      002C90 E0               [24]  852 	movx	a,@dptr
      002C91 60 19            [24]  853 	jz	00111$
      002C93 E4               [12]  854 	clr	a
      002C94 FD               [12]  855 	mov	r5,a
      002C95 FC               [12]  856 	mov	r4,a
      002C96 EF               [12]  857 	mov	a,r7
      002C97 C3               [12]  858 	clr	c
      002C98 9E               [12]  859 	subb	a,r6
      002C99 FF               [12]  860 	mov	r7,a
      002C9A ED               [12]  861 	mov	a,r5
      002C9B 9C               [12]  862 	subb	a,r4
      002C9C FD               [12]  863 	mov	r5,a
      002C9D 4F               [12]  864 	orl	a,r7
      002C9E 60 06            [24]  865 	jz	00113$
      002CA0 7E 01            [12]  866 	mov	r6,#0x01
      002CA2 7F 00            [12]  867 	mov	r7,#0x00
      002CA4 80 0A            [24]  868 	sjmp	00112$
      002CA6                        869 00113$:
      002CA6 7E 00            [12]  870 	mov	r6,#0x00
      002CA8 7F 00            [12]  871 	mov	r7,#0x00
      002CAA 80 04            [24]  872 	sjmp	00112$
      002CAC                        873 00111$:
      002CAC 7E 00            [12]  874 	mov	r6,#0x00
      002CAE 7F 00            [12]  875 	mov	r7,#0x00
      002CB0                        876 00112$:
      002CB0 90 20 59         [24]  877 	mov	dptr,#_i2c_write_rc_65536_17
      002CB3 EE               [12]  878 	mov	a,r6
      002CB4 F0               [24]  879 	movx	@dptr,a
      002CB5                        880 00108$:
                                    881 ;	src/eeprom.c:144: i2c_end();
      002CB5 12 2B EC         [24]  882 	lcall	_i2c_end
                                    883 ;	src/eeprom.c:146: return rc;
      002CB8 90 20 59         [24]  884 	mov	dptr,#_i2c_write_rc_65536_17
      002CBB E0               [24]  885 	movx	a,@dptr
                                    886 ;	src/eeprom.c:147: }
      002CBC F5 82            [12]  887 	mov	dpl,a
      002CBE 22               [24]  888 	ret
                                    889 ;------------------------------------------------------------
                                    890 ;Allocation info for local variables in function 'i2c_read'
                                    891 ;------------------------------------------------------------
                                    892 ;p                         Allocated with name '_i2c_read_PARM_2'
                                    893 ;len                       Allocated with name '_i2c_read_PARM_3'
                                    894 ;addr                      Allocated with name '_i2c_read_addr_65536_21'
                                    895 ;rc                        Allocated with name '_i2c_read_rc_65536_22'
                                    896 ;------------------------------------------------------------
                                    897 ;	src/eeprom.c:149: uint8_t i2c_read(uint8_t addr, uint8_t *p, uint8_t len) {
                                    898 ;	-----------------------------------------
                                    899 ;	 function i2c_read
                                    900 ;	-----------------------------------------
      002CBF                        901 _i2c_read:
      002CBF E5 82            [12]  902 	mov	a,dpl
      002CC1 90 20 5E         [24]  903 	mov	dptr,#_i2c_read_addr_65536_21
      002CC4 F0               [24]  904 	movx	@dptr,a
                                    905 ;	src/eeprom.c:150: uint8_t rc = i2c_begin(addr, 1); /* start, set addr with READ bit */
      002CC5 E0               [24]  906 	movx	a,@dptr
      002CC6 FF               [12]  907 	mov	r7,a
      002CC7 90 20 52         [24]  908 	mov	dptr,#_i2c_begin_PARM_2
      002CCA 74 01            [12]  909 	mov	a,#0x01
      002CCC F0               [24]  910 	movx	@dptr,a
      002CCD 8F 82            [24]  911 	mov	dpl,r7
      002CCF 12 2B F1         [24]  912 	lcall	_i2c_begin
                                    913 ;	src/eeprom.c:151: if (rc) {
      002CD2 E5 82            [12]  914 	mov	a,dpl
      002CD4 FF               [12]  915 	mov	r7,a
      002CD5 60 4A            [24]  916 	jz	00105$
                                    917 ;	src/eeprom.c:152: while (len--) {
      002CD7 90 20 5A         [24]  918 	mov	dptr,#_i2c_read_PARM_2
      002CDA E0               [24]  919 	movx	a,@dptr
      002CDB FC               [12]  920 	mov	r4,a
      002CDC A3               [24]  921 	inc	dptr
      002CDD E0               [24]  922 	movx	a,@dptr
      002CDE FD               [12]  923 	mov	r5,a
      002CDF A3               [24]  924 	inc	dptr
      002CE0 E0               [24]  925 	movx	a,@dptr
      002CE1 FE               [12]  926 	mov	r6,a
      002CE2 90 20 5D         [24]  927 	mov	dptr,#_i2c_read_PARM_3
      002CE5 E0               [24]  928 	movx	a,@dptr
      002CE6 FB               [12]  929 	mov	r3,a
      002CE7                        930 00101$:
      002CE7 8B 02            [24]  931 	mov	ar2,r3
      002CE9 1B               [12]  932 	dec	r3
      002CEA EA               [12]  933 	mov	a,r2
      002CEB 60 34            [24]  934 	jz	00105$
                                    935 ;	src/eeprom.c:153: *p++ = i2c_byte_in(len == 0);
      002CED EB               [12]  936 	mov	a,r3
      002CEE B4 01 00         [24]  937 	cjne	a,#0x01,00122$
      002CF1                        938 00122$:
      002CF1 92 01            [24]  939 	mov  _i2c_read_sloc0_1_0,c
      002CF3 E4               [12]  940 	clr	a
      002CF4 33               [12]  941 	rlc	a
      002CF5 F5 82            [12]  942 	mov	dpl,a
      002CF7 C0 07            [24]  943 	push	ar7
      002CF9 C0 06            [24]  944 	push	ar6
      002CFB C0 05            [24]  945 	push	ar5
      002CFD C0 04            [24]  946 	push	ar4
      002CFF C0 03            [24]  947 	push	ar3
      002D01 12 2B A4         [24]  948 	lcall	_i2c_byte_in
      002D04 AA 82            [24]  949 	mov	r2,dpl
      002D06 D0 03            [24]  950 	pop	ar3
      002D08 D0 04            [24]  951 	pop	ar4
      002D0A D0 05            [24]  952 	pop	ar5
      002D0C D0 06            [24]  953 	pop	ar6
      002D0E D0 07            [24]  954 	pop	ar7
      002D10 8C 82            [24]  955 	mov	dpl,r4
      002D12 8D 83            [24]  956 	mov	dph,r5
      002D14 8E F0            [24]  957 	mov	b,r6
      002D16 EA               [12]  958 	mov	a,r2
      002D17 12 2F DB         [24]  959 	lcall	__gptrput
      002D1A A3               [24]  960 	inc	dptr
      002D1B AC 82            [24]  961 	mov	r4,dpl
      002D1D AD 83            [24]  962 	mov	r5,dph
      002D1F 80 C6            [24]  963 	sjmp	00101$
      002D21                        964 00105$:
                                    965 ;	src/eeprom.c:156: i2c_end();
      002D21 C0 07            [24]  966 	push	ar7
      002D23 12 2B EC         [24]  967 	lcall	_i2c_end
      002D26 D0 07            [24]  968 	pop	ar7
                                    969 ;	src/eeprom.c:157: return rc;
      002D28 8F 82            [24]  970 	mov	dpl,r7
                                    971 ;	src/eeprom.c:158: }
      002D2A 22               [24]  972 	ret
                                    973 ;------------------------------------------------------------
                                    974 ;Allocation info for local variables in function 'eeprom_init'
                                    975 ;------------------------------------------------------------
                                    976 ;	src/eeprom.c:163: void eeprom_init()
                                    977 ;	-----------------------------------------
                                    978 ;	 function eeprom_init
                                    979 ;	-----------------------------------------
      002D2B                        980 _eeprom_init:
                                    981 ;	src/eeprom.c:165: i2c_init(); 
                                    982 ;	src/eeprom.c:166: }
      002D2B 02 2B 58         [24]  983 	ljmp	_i2c_init
                                    984 ;------------------------------------------------------------
                                    985 ;Allocation info for local variables in function 'eepromwritebyte'
                                    986 ;------------------------------------------------------------
                                    987 ;byte                      Allocated with name '_eepromwritebyte_PARM_2'
                                    988 ;addr                      Allocated with name '_eepromwritebyte_addr_65536_26'
                                    989 ;i2c_address               Allocated with name '_eepromwritebyte_i2c_address_65537_28'
                                    990 ;word_address              Allocated with name '_eepromwritebyte_word_address_65538_29'
                                    991 ;ack                       Allocated with name '_eepromwritebyte_ack_65538_29'
                                    992 ;------------------------------------------------------------
                                    993 ;	src/eeprom.c:169: int eepromwritebyte(unsigned int addr, uint8_t byte)
                                    994 ;	-----------------------------------------
                                    995 ;	 function eepromwritebyte
                                    996 ;	-----------------------------------------
      002D2E                        997 _eepromwritebyte:
      002D2E AF 83            [24]  998 	mov	r7,dph
      002D30 E5 82            [12]  999 	mov	a,dpl
      002D32 90 20 60         [24] 1000 	mov	dptr,#_eepromwritebyte_addr_65536_26
      002D35 F0               [24] 1001 	movx	@dptr,a
      002D36 EF               [12] 1002 	mov	a,r7
      002D37 A3               [24] 1003 	inc	dptr
      002D38 F0               [24] 1004 	movx	@dptr,a
                                   1005 ;	src/eeprom.c:171: if (addr > 0x7FF) return FAILURE;
      002D39 90 20 60         [24] 1006 	mov	dptr,#_eepromwritebyte_addr_65536_26
      002D3C E0               [24] 1007 	movx	a,@dptr
      002D3D FE               [12] 1008 	mov	r6,a
      002D3E A3               [24] 1009 	inc	dptr
      002D3F E0               [24] 1010 	movx	a,@dptr
      002D40 FF               [12] 1011 	mov	r7,a
      002D41 C3               [12] 1012 	clr	c
      002D42 74 FF            [12] 1013 	mov	a,#0xff
      002D44 9E               [12] 1014 	subb	a,r6
      002D45 74 07            [12] 1015 	mov	a,#0x07
      002D47 9F               [12] 1016 	subb	a,r7
      002D48 50 04            [24] 1017 	jnc	00102$
      002D4A 90 00 01         [24] 1018 	mov	dptr,#0x0001
      002D4D 22               [24] 1019 	ret
      002D4E                       1020 00102$:
                                   1021 ;	src/eeprom.c:173: i2c_address |= addr >> 8;
      002D4E 8F 04            [24] 1022 	mov	ar4,r7
      002D50 43 04 50         [24] 1023 	orl	ar4,#0x50
                                   1024 ;	src/eeprom.c:174: uint8_t word_address = ((uint8_t) (addr & 0xFF));
                                   1025 ;	src/eeprom.c:175: int ack = i2c_begin(i2c_address, 0);
      002D53 90 20 52         [24] 1026 	mov	dptr,#_i2c_begin_PARM_2
      002D56 E4               [12] 1027 	clr	a
      002D57 F0               [24] 1028 	movx	@dptr,a
      002D58 8C 82            [24] 1029 	mov	dpl,r4
      002D5A C0 06            [24] 1030 	push	ar6
      002D5C 12 2B F1         [24] 1031 	lcall	_i2c_begin
      002D5F AF 82            [24] 1032 	mov	r7,dpl
      002D61 D0 06            [24] 1033 	pop	ar6
      002D63 7D 00            [12] 1034 	mov	r5,#0x00
                                   1035 ;	src/eeprom.c:176: if (ack != 1)
      002D65 BF 01 05         [24] 1036 	cjne	r7,#0x01,00128$
      002D68 BD 00 02         [24] 1037 	cjne	r5,#0x00,00128$
      002D6B 80 07            [24] 1038 	sjmp	00104$
      002D6D                       1039 00128$:
                                   1040 ;	src/eeprom.c:178: i2c_end();
      002D6D 12 2B EC         [24] 1041 	lcall	_i2c_end
                                   1042 ;	src/eeprom.c:179: return FAILURE;
      002D70 90 00 01         [24] 1043 	mov	dptr,#0x0001
      002D73 22               [24] 1044 	ret
      002D74                       1045 00104$:
                                   1046 ;	src/eeprom.c:181: ack = i2c_byte_out(word_address);
      002D74 8E 82            [24] 1047 	mov	dpl,r6
      002D76 12 2B 5D         [24] 1048 	lcall	_i2c_byte_out
      002D79 AF 82            [24] 1049 	mov	r7,dpl
      002D7B 7E 00            [12] 1050 	mov	r6,#0x00
                                   1051 ;	src/eeprom.c:182: if (ack != 1)
      002D7D BF 01 05         [24] 1052 	cjne	r7,#0x01,00129$
      002D80 BE 00 02         [24] 1053 	cjne	r6,#0x00,00129$
      002D83 80 07            [24] 1054 	sjmp	00106$
      002D85                       1055 00129$:
                                   1056 ;	src/eeprom.c:184: i2c_end();
      002D85 12 2B EC         [24] 1057 	lcall	_i2c_end
                                   1058 ;	src/eeprom.c:185: return FAILURE;
      002D88 90 00 01         [24] 1059 	mov	dptr,#0x0001
      002D8B 22               [24] 1060 	ret
      002D8C                       1061 00106$:
                                   1062 ;	src/eeprom.c:188: ack = i2c_byte_out(byte);
      002D8C 90 20 5F         [24] 1063 	mov	dptr,#_eepromwritebyte_PARM_2
      002D8F E0               [24] 1064 	movx	a,@dptr
      002D90 F5 82            [12] 1065 	mov	dpl,a
      002D92 12 2B 5D         [24] 1066 	lcall	_i2c_byte_out
      002D95 AF 82            [24] 1067 	mov	r7,dpl
      002D97 7E 00            [12] 1068 	mov	r6,#0x00
                                   1069 ;	src/eeprom.c:189: if (ack != 1)
      002D99 BF 01 05         [24] 1070 	cjne	r7,#0x01,00130$
      002D9C BE 00 02         [24] 1071 	cjne	r6,#0x00,00130$
      002D9F 80 07            [24] 1072 	sjmp	00108$
      002DA1                       1073 00130$:
                                   1074 ;	src/eeprom.c:191: i2c_end();
      002DA1 12 2B EC         [24] 1075 	lcall	_i2c_end
                                   1076 ;	src/eeprom.c:192: return FAILURE;
      002DA4 90 00 01         [24] 1077 	mov	dptr,#0x0001
      002DA7 22               [24] 1078 	ret
      002DA8                       1079 00108$:
                                   1080 ;	src/eeprom.c:195: i2c_end();
      002DA8 12 2B EC         [24] 1081 	lcall	_i2c_end
                                   1082 ;	src/eeprom.c:196: return SUCCESS;
      002DAB 90 00 00         [24] 1083 	mov	dptr,#0x0000
                                   1084 ;	src/eeprom.c:198: }
      002DAE 22               [24] 1085 	ret
                                   1086 ;------------------------------------------------------------
                                   1087 ;Allocation info for local variables in function 'eepromreadbyte'
                                   1088 ;------------------------------------------------------------
                                   1089 ;byte                      Allocated with name '_eepromreadbyte_PARM_2'
                                   1090 ;addr                      Allocated with name '_eepromreadbyte_addr_65536_33'
                                   1091 ;i2c_address               Allocated with name '_eepromreadbyte_i2c_address_65537_35'
                                   1092 ;word_address              Allocated with name '_eepromreadbyte_word_address_65538_36'
                                   1093 ;ack                       Allocated with name '_eepromreadbyte_ack_65538_36'
                                   1094 ;------------------------------------------------------------
                                   1095 ;	src/eeprom.c:200: int eepromreadbyte(unsigned int addr, uint8_t *byte)
                                   1096 ;	-----------------------------------------
                                   1097 ;	 function eepromreadbyte
                                   1098 ;	-----------------------------------------
      002DAF                       1099 _eepromreadbyte:
      002DAF AF 83            [24] 1100 	mov	r7,dph
      002DB1 E5 82            [12] 1101 	mov	a,dpl
      002DB3 90 20 65         [24] 1102 	mov	dptr,#_eepromreadbyte_addr_65536_33
      002DB6 F0               [24] 1103 	movx	@dptr,a
      002DB7 EF               [12] 1104 	mov	a,r7
      002DB8 A3               [24] 1105 	inc	dptr
      002DB9 F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	src/eeprom.c:202: if (addr > 0x7FF) return FAILURE;
      002DBA 90 20 65         [24] 1108 	mov	dptr,#_eepromreadbyte_addr_65536_33
      002DBD E0               [24] 1109 	movx	a,@dptr
      002DBE FE               [12] 1110 	mov	r6,a
      002DBF A3               [24] 1111 	inc	dptr
      002DC0 E0               [24] 1112 	movx	a,@dptr
      002DC1 FF               [12] 1113 	mov	r7,a
      002DC2 C3               [12] 1114 	clr	c
      002DC3 74 FF            [12] 1115 	mov	a,#0xff
      002DC5 9E               [12] 1116 	subb	a,r6
      002DC6 74 07            [12] 1117 	mov	a,#0x07
      002DC8 9F               [12] 1118 	subb	a,r7
      002DC9 50 04            [24] 1119 	jnc	00102$
      002DCB 90 00 01         [24] 1120 	mov	dptr,#0x0001
      002DCE 22               [24] 1121 	ret
      002DCF                       1122 00102$:
                                   1123 ;	src/eeprom.c:204: i2c_address |= addr >> 8;
      002DCF 8F 04            [24] 1124 	mov	ar4,r7
      002DD1 7D 00            [12] 1125 	mov	r5,#0x00
      002DD3 43 04 50         [24] 1126 	orl	ar4,#0x50
                                   1127 ;	src/eeprom.c:205: uint8_t word_address = ((uint8_t) (addr & 0xFF));
                                   1128 ;	src/eeprom.c:207: int ack = i2c_begin(i2c_address, 0);
      002DD6 8C 03            [24] 1129 	mov	ar3,r4
      002DD8 90 20 52         [24] 1130 	mov	dptr,#_i2c_begin_PARM_2
      002DDB E4               [12] 1131 	clr	a
      002DDC F0               [24] 1132 	movx	@dptr,a
      002DDD 8B 82            [24] 1133 	mov	dpl,r3
      002DDF C0 06            [24] 1134 	push	ar6
      002DE1 C0 05            [24] 1135 	push	ar5
      002DE3 C0 04            [24] 1136 	push	ar4
      002DE5 12 2B F1         [24] 1137 	lcall	_i2c_begin
      002DE8 AF 82            [24] 1138 	mov	r7,dpl
      002DEA D0 04            [24] 1139 	pop	ar4
      002DEC D0 05            [24] 1140 	pop	ar5
      002DEE D0 06            [24] 1141 	pop	ar6
      002DF0 7B 00            [12] 1142 	mov	r3,#0x00
                                   1143 ;	src/eeprom.c:208: if (ack != 1)
      002DF2 BF 01 05         [24] 1144 	cjne	r7,#0x01,00122$
      002DF5 BB 00 02         [24] 1145 	cjne	r3,#0x00,00122$
      002DF8 80 07            [24] 1146 	sjmp	00104$
      002DFA                       1147 00122$:
                                   1148 ;	src/eeprom.c:210: i2c_end();
      002DFA 12 2B EC         [24] 1149 	lcall	_i2c_end
                                   1150 ;	src/eeprom.c:211: return FAILURE;
      002DFD 90 00 01         [24] 1151 	mov	dptr,#0x0001
      002E00 22               [24] 1152 	ret
      002E01                       1153 00104$:
                                   1154 ;	src/eeprom.c:214: ack = i2c_byte_out(word_address);
      002E01 8E 82            [24] 1155 	mov	dpl,r6
      002E03 C0 05            [24] 1156 	push	ar5
      002E05 C0 04            [24] 1157 	push	ar4
      002E07 12 2B 5D         [24] 1158 	lcall	_i2c_byte_out
      002E0A AF 82            [24] 1159 	mov	r7,dpl
      002E0C D0 04            [24] 1160 	pop	ar4
      002E0E D0 05            [24] 1161 	pop	ar5
      002E10 7E 00            [12] 1162 	mov	r6,#0x00
                                   1163 ;	src/eeprom.c:216: if (ack != 1)
      002E12 BF 01 05         [24] 1164 	cjne	r7,#0x01,00123$
      002E15 BE 00 02         [24] 1165 	cjne	r6,#0x00,00123$
      002E18 80 07            [24] 1166 	sjmp	00106$
      002E1A                       1167 00123$:
                                   1168 ;	src/eeprom.c:218: i2c_end();
      002E1A 12 2B EC         [24] 1169 	lcall	_i2c_end
                                   1170 ;	src/eeprom.c:219: return FAILURE;
      002E1D 90 00 01         [24] 1171 	mov	dptr,#0x0001
      002E20 22               [24] 1172 	ret
      002E21                       1173 00106$:
                                   1174 ;	src/eeprom.c:222: i2c_begin(i2c_address, 1);
      002E21 90 20 52         [24] 1175 	mov	dptr,#_i2c_begin_PARM_2
      002E24 74 01            [12] 1176 	mov	a,#0x01
      002E26 F0               [24] 1177 	movx	@dptr,a
      002E27 8C 82            [24] 1178 	mov	dpl,r4
      002E29 12 2B F1         [24] 1179 	lcall	_i2c_begin
                                   1180 ;	src/eeprom.c:223: *byte = i2c_byte_in(true);
      002E2C 90 20 62         [24] 1181 	mov	dptr,#_eepromreadbyte_PARM_2
      002E2F E0               [24] 1182 	movx	a,@dptr
      002E30 FD               [12] 1183 	mov	r5,a
      002E31 A3               [24] 1184 	inc	dptr
      002E32 E0               [24] 1185 	movx	a,@dptr
      002E33 FE               [12] 1186 	mov	r6,a
      002E34 A3               [24] 1187 	inc	dptr
      002E35 E0               [24] 1188 	movx	a,@dptr
      002E36 FF               [12] 1189 	mov	r7,a
      002E37 75 82 01         [24] 1190 	mov	dpl,#0x01
      002E3A C0 07            [24] 1191 	push	ar7
      002E3C C0 06            [24] 1192 	push	ar6
      002E3E C0 05            [24] 1193 	push	ar5
      002E40 12 2B A4         [24] 1194 	lcall	_i2c_byte_in
      002E43 AC 82            [24] 1195 	mov	r4,dpl
      002E45 D0 05            [24] 1196 	pop	ar5
      002E47 D0 06            [24] 1197 	pop	ar6
      002E49 D0 07            [24] 1198 	pop	ar7
      002E4B 8D 82            [24] 1199 	mov	dpl,r5
      002E4D 8E 83            [24] 1200 	mov	dph,r6
      002E4F 8F F0            [24] 1201 	mov	b,r7
      002E51 EC               [12] 1202 	mov	a,r4
      002E52 12 2F DB         [24] 1203 	lcall	__gptrput
                                   1204 ;	src/eeprom.c:225: i2c_end();
      002E55 12 2B EC         [24] 1205 	lcall	_i2c_end
                                   1206 ;	src/eeprom.c:226: return SUCCESS;
      002E58 90 00 00         [24] 1207 	mov	dptr,#0x0000
                                   1208 ;	src/eeprom.c:228: } 
      002E5B 22               [24] 1209 	ret
                                   1210 	.area CSEG    (CODE)
                                   1211 	.area CONST   (CODE)
                                   1212 	.area XINIT   (CODE)
                                   1213 	.area CABS    (ABS,CODE)
