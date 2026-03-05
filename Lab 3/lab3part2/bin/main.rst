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
                                     12 	.globl _call_paulmon
                                     13 	.globl __sdcc_external_startup
                                     14 	.globl _memset
                                     15 	.globl _get_input_buffer
                                     16 	.globl _get_string
                                     17 	.globl _free
                                     18 	.globl _malloc
                                     19 	.globl _atoi
                                     20 	.globl _printf
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _P5_7
                                     97 	.globl _P5_6
                                     98 	.globl _P5_5
                                     99 	.globl _P5_4
                                    100 	.globl _P5_3
                                    101 	.globl _P5_2
                                    102 	.globl _P5_1
                                    103 	.globl _P5_0
                                    104 	.globl _P4_7
                                    105 	.globl _P4_6
                                    106 	.globl _P4_5
                                    107 	.globl _P4_4
                                    108 	.globl _P4_3
                                    109 	.globl _P4_2
                                    110 	.globl _P4_1
                                    111 	.globl _P4_0
                                    112 	.globl _PX0L
                                    113 	.globl _PT0L
                                    114 	.globl _PX1L
                                    115 	.globl _PT1L
                                    116 	.globl _PSL
                                    117 	.globl _PT2L
                                    118 	.globl _PPCL
                                    119 	.globl _EC
                                    120 	.globl _CCF0
                                    121 	.globl _CCF1
                                    122 	.globl _CCF2
                                    123 	.globl _CCF3
                                    124 	.globl _CCF4
                                    125 	.globl _CR
                                    126 	.globl _CF
                                    127 	.globl _TF2
                                    128 	.globl _EXF2
                                    129 	.globl _RCLK
                                    130 	.globl _TCLK
                                    131 	.globl _EXEN2
                                    132 	.globl _TR2
                                    133 	.globl _C_T2
                                    134 	.globl _CP_RL2
                                    135 	.globl _T2CON_7
                                    136 	.globl _T2CON_6
                                    137 	.globl _T2CON_5
                                    138 	.globl _T2CON_4
                                    139 	.globl _T2CON_3
                                    140 	.globl _T2CON_2
                                    141 	.globl _T2CON_1
                                    142 	.globl _T2CON_0
                                    143 	.globl _PT2
                                    144 	.globl _ET2
                                    145 	.globl _B
                                    146 	.globl _ACC
                                    147 	.globl _PSW
                                    148 	.globl _IP
                                    149 	.globl _P3
                                    150 	.globl _IE
                                    151 	.globl _P2
                                    152 	.globl _SBUF
                                    153 	.globl _SCON
                                    154 	.globl _P1
                                    155 	.globl _TH1
                                    156 	.globl _TH0
                                    157 	.globl _TL1
                                    158 	.globl _TL0
                                    159 	.globl _TMOD
                                    160 	.globl _TCON
                                    161 	.globl _PCON
                                    162 	.globl _DPH
                                    163 	.globl _DPL
                                    164 	.globl _SP
                                    165 	.globl _P0
                                    166 	.globl _EECON
                                    167 	.globl _KBF
                                    168 	.globl _KBE
                                    169 	.globl _KBLS
                                    170 	.globl _BRL
                                    171 	.globl _BDRCON
                                    172 	.globl _T2MOD
                                    173 	.globl _SPDAT
                                    174 	.globl _SPSTA
                                    175 	.globl _SPCON
                                    176 	.globl _SADEN
                                    177 	.globl _SADDR
                                    178 	.globl _WDTPRG
                                    179 	.globl _WDTRST
                                    180 	.globl _P5
                                    181 	.globl _P4
                                    182 	.globl _IPH1
                                    183 	.globl _IPL1
                                    184 	.globl _IPH0
                                    185 	.globl _IPL0
                                    186 	.globl _IEN1
                                    187 	.globl _IEN0
                                    188 	.globl _CMOD
                                    189 	.globl _CL
                                    190 	.globl _CH
                                    191 	.globl _CCON
                                    192 	.globl _CCAPM4
                                    193 	.globl _CCAPM3
                                    194 	.globl _CCAPM2
                                    195 	.globl _CCAPM1
                                    196 	.globl _CCAPM0
                                    197 	.globl _CCAP4L
                                    198 	.globl _CCAP3L
                                    199 	.globl _CCAP2L
                                    200 	.globl _CCAP1L
                                    201 	.globl _CCAP0L
                                    202 	.globl _CCAP4H
                                    203 	.globl _CCAP3H
                                    204 	.globl _CCAP2H
                                    205 	.globl _CCAP1H
                                    206 	.globl _CCAP0H
                                    207 	.globl _CKCON1
                                    208 	.globl _CKCON0
                                    209 	.globl _CKRL
                                    210 	.globl _AUXR1
                                    211 	.globl _AUXR
                                    212 	.globl _TH2
                                    213 	.globl _TL2
                                    214 	.globl _RCAP2H
                                    215 	.globl _RCAP2L
                                    216 	.globl _T2CON
                                    217 	.globl _buffers
                                    218 	.globl _get_user_buffer_sz
                                    219 	.globl _free_all_buffers
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
      000008                        435 _main_sloc0_1_0:
      000008                        436 	.ds 2
      00000A                        437 _main_sloc1_1_0:
      00000A                        438 	.ds 2
      00000C                        439 _main_sloc2_1_0:
      00000C                        440 	.ds 3
                                    441 ;--------------------------------------------------------
                                    442 ; overlayable items in internal ram
                                    443 ;--------------------------------------------------------
                                    444 ;--------------------------------------------------------
                                    445 ; Stack segment in internal ram
                                    446 ;--------------------------------------------------------
                                    447 	.area	SSEG
      000021                        448 __start__stack:
      000021                        449 	.ds	1
                                    450 
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
                                    464 ;--------------------------------------------------------
                                    465 ; paged external ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area PSEG    (PAG,XDATA)
                                    468 ;--------------------------------------------------------
                                    469 ; external ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area XSEG    (XDATA)
      000001                        472 _buffers::
      000001                        473 	.ds 24
      000019                        474 _main_max_user_input_65537_78:
      000019                        475 	.ds 2
      00001B                        476 _main_total_heap_sz_65538_86:
      00001B                        477 	.ds 2
      00001D                        478 _get_user_buffer_sz_maximum_sz_65536_91:
      00001D                        479 	.ds 2
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
      002000 02 20 06         [24]  503 	ljmp	__sdcc_gsinit_startup
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
      00205F 02 20 03         [24]  518 	ljmp	__sdcc_program_startup
                                    519 ;--------------------------------------------------------
                                    520 ; Home
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
                                    523 	.area HOME    (CODE)
      002003                        524 __sdcc_program_startup:
      002003 02 20 69         [24]  525 	ljmp	_main
                                    526 ;	return from main will return to caller
                                    527 ;--------------------------------------------------------
                                    528 ; code
                                    529 ;--------------------------------------------------------
                                    530 	.area CSEG    (CODE)
                                    531 ;------------------------------------------------------------
                                    532 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    533 ;------------------------------------------------------------
                                    534 ;	src/main.c:51: int _sdcc_external_startup()
                                    535 ;	-----------------------------------------
                                    536 ;	 function _sdcc_external_startup
                                    537 ;	-----------------------------------------
      002062                        538 __sdcc_external_startup:
                           000007   539 	ar7 = 0x07
                           000006   540 	ar6 = 0x06
                           000005   541 	ar5 = 0x05
                           000004   542 	ar4 = 0x04
                           000003   543 	ar3 = 0x03
                           000002   544 	ar2 = 0x02
                           000001   545 	ar1 = 0x01
                           000000   546 	ar0 = 0x00
                                    547 ;	src/main.c:54: return 0;
      002062 90 00 00         [24]  548 	mov	dptr,#0x0000
                                    549 ;	src/main.c:55: }
      002065 22               [24]  550 	ret
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'call_paulmon'
                                    553 ;------------------------------------------------------------
                                    554 ;	src/main.c:78: void call_paulmon() {
                                    555 ;	-----------------------------------------
                                    556 ;	 function call_paulmon
                                    557 ;	-----------------------------------------
      002066                        558 _call_paulmon:
                                    559 ;	src/main.c:79: ((void (*)(void))0x0000)();
                                    560 ;	src/main.c:80: }
      002066 02 00 00         [24]  561 	ljmp	0x0000
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'main'
                                    564 ;------------------------------------------------------------
                                    565 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    566 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                    567 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                    568 ;student_number            Allocated with name '_main_student_number_65536_75'
                                    569 ;max_user_input            Allocated with name '_main_max_user_input_65537_78'
                                    570 ;user_buffer_size          Allocated with name '_main_user_buffer_size_65537_78'
                                    571 ;i                         Allocated with name '_main_i_196609_80'
                                    572 ;total_heap_sz             Allocated with name '_main_total_heap_sz_65538_86'
                                    573 ;i                         Allocated with name '_main_i_131074_87'
                                    574 ;------------------------------------------------------------
                                    575 ;	src/main.c:84: void main()
                                    576 ;	-----------------------------------------
                                    577 ;	 function main
                                    578 ;	-----------------------------------------
      002069                        579 _main:
                                    580 ;	src/main.c:87: while (true) 
      002069                        581 00105$:
                                    582 ;	src/main.c:89: printf("\r\nPlease enter the last two digits of your ID:");
      002069 74 F2            [12]  583 	mov	a,#___str_0
      00206B C0 E0            [24]  584 	push	acc
      00206D 74 34            [12]  585 	mov	a,#(___str_0 >> 8)
      00206F C0 E0            [24]  586 	push	acc
      002071 74 80            [12]  587 	mov	a,#0x80
      002073 C0 E0            [24]  588 	push	acc
      002075 12 2A AA         [24]  589 	lcall	_printf
      002078 15 81            [12]  590 	dec	sp
      00207A 15 81            [12]  591 	dec	sp
      00207C 15 81            [12]  592 	dec	sp
                                    593 ;	src/main.c:90: get_string();
      00207E 12 25 46         [24]  594 	lcall	_get_string
                                    595 ;	src/main.c:91: student_number = atoi(get_input_buffer());
      002081 12 25 3F         [24]  596 	lcall	_get_input_buffer
      002084 12 27 58         [24]  597 	lcall	_atoi
      002087 AE 82            [24]  598 	mov	r6,dpl
                                    599 ;	src/main.c:92: if (!(student_number < 0 || student_number > MAX_STUDENT_NUMBER))
      002089 E5 83            [12]  600 	mov	a,dph
      00208B FF               [12]  601 	mov	r7,a
      00208C 20 E7 DA         [24]  602 	jb	acc.7,00105$
      00208F C3               [12]  603 	clr	c
      002090 74 63            [12]  604 	mov	a,#0x63
      002092 9E               [12]  605 	subb	a,r6
      002093 74 80            [12]  606 	mov	a,#(0x00 ^ 0x80)
      002095 8F F0            [24]  607 	mov	b,r7
      002097 63 F0 80         [24]  608 	xrl	b,#0x80
      00209A 95 F0            [12]  609 	subb	a,b
      00209C 40 CB            [24]  610 	jc	00105$
                                    611 ;	src/main.c:98: size_t max_user_input = USER_BUFFER_MAX;
      00209E 90 00 19         [24]  612 	mov	dptr,#_main_max_user_input_65537_78
      0020A1 E4               [12]  613 	clr	a
      0020A2 F0               [24]  614 	movx	@dptr,a
      0020A3 74 04            [12]  615 	mov	a,#0x04
      0020A5 A3               [24]  616 	inc	dptr
      0020A6 F0               [24]  617 	movx	@dptr,a
                                    618 ;	src/main.c:102: memset(buffers, 0, BUFFER_COUNT * sizeof(char *));
      0020A7 90 04 34         [24]  619 	mov	dptr,#_memset_PARM_2
      0020AA E4               [12]  620 	clr	a
      0020AB F0               [24]  621 	movx	@dptr,a
      0020AC 90 04 35         [24]  622 	mov	dptr,#_memset_PARM_3
      0020AF 74 12            [12]  623 	mov	a,#0x12
      0020B1 F0               [24]  624 	movx	@dptr,a
      0020B2 E4               [12]  625 	clr	a
      0020B3 A3               [24]  626 	inc	dptr
      0020B4 F0               [24]  627 	movx	@dptr,a
      0020B5 90 00 01         [24]  628 	mov	dptr,#_buffers
      0020B8 75 F0 00         [24]  629 	mov	b,#0x00
      0020BB C0 07            [24]  630 	push	ar7
      0020BD C0 06            [24]  631 	push	ar6
      0020BF 12 27 30         [24]  632 	lcall	_memset
      0020C2 D0 06            [24]  633 	pop	ar6
      0020C4 D0 07            [24]  634 	pop	ar7
                                    635 ;	src/main.c:104: while(true)
      0020C6 74 02            [12]  636 	mov	a,#0x02
      0020C8 2E               [12]  637 	add	a,r6
      0020C9 FC               [12]  638 	mov	r4,a
      0020CA E4               [12]  639 	clr	a
      0020CB 3F               [12]  640 	addc	a,r7
      0020CC FD               [12]  641 	mov	r5,a
      0020CD                        642 00117$:
                                    643 ;	src/main.c:106: user_buffer_size = get_user_buffer_sz(max_user_input);
      0020CD 90 00 19         [24]  644 	mov	dptr,#_main_max_user_input_65537_78
      0020D0 E0               [24]  645 	movx	a,@dptr
      0020D1 FA               [12]  646 	mov	r2,a
      0020D2 A3               [24]  647 	inc	dptr
      0020D3 E0               [24]  648 	movx	a,@dptr
      0020D4 FB               [12]  649 	mov	r3,a
      0020D5 8A 82            [24]  650 	mov	dpl,r2
      0020D7 8B 83            [24]  651 	mov	dph,r3
      0020D9 C0 07            [24]  652 	push	ar7
      0020DB C0 06            [24]  653 	push	ar6
      0020DD C0 05            [24]  654 	push	ar5
      0020DF C0 04            [24]  655 	push	ar4
      0020E1 12 24 52         [24]  656 	lcall	_get_user_buffer_sz
      0020E4 AA 82            [24]  657 	mov	r2,dpl
      0020E6 AB 83            [24]  658 	mov	r3,dph
      0020E8 D0 04            [24]  659 	pop	ar4
      0020EA D0 05            [24]  660 	pop	ar5
      0020EC D0 06            [24]  661 	pop	ar6
      0020EE D0 07            [24]  662 	pop	ar7
                                    663 ;	src/main.c:107: for(int i = 0; i < NUM_BUFFERS_TO_BE_ALLOCATED_TO_USER_SZ; i++)
      0020F0 78 00            [12]  664 	mov	r0,#0x00
      0020F2 79 00            [12]  665 	mov	r1,#0x00
      0020F4                        666 00124$:
      0020F4 C3               [12]  667 	clr	c
      0020F5 E8               [12]  668 	mov	a,r0
      0020F6 94 04            [12]  669 	subb	a,#0x04
      0020F8 E9               [12]  670 	mov	a,r1
      0020F9 64 80            [12]  671 	xrl	a,#0x80
      0020FB 94 80            [12]  672 	subb	a,#0x80
      0020FD 40 03            [24]  673 	jc	00188$
      0020FF 02 21 CB         [24]  674 	ljmp	00111$
      002102                        675 00188$:
                                    676 ;	src/main.c:110: buffers[i].buffer = malloc(user_buffer_size);
      002102 C0 04            [24]  677 	push	ar4
      002104 C0 05            [24]  678 	push	ar5
      002106 E8               [12]  679 	mov	a,r0
      002107 28               [12]  680 	add	a,r0
      002108 F5 08            [12]  681 	mov	_main_sloc0_1_0,a
      00210A E9               [12]  682 	mov	a,r1
      00210B 33               [12]  683 	rlc	a
      00210C F5 09            [12]  684 	mov	(_main_sloc0_1_0 + 1),a
      00210E E5 08            [12]  685 	mov	a,_main_sloc0_1_0
      002110 25 08            [12]  686 	add	a,_main_sloc0_1_0
      002112 F5 08            [12]  687 	mov	_main_sloc0_1_0,a
      002114 E5 09            [12]  688 	mov	a,(_main_sloc0_1_0 + 1)
      002116 33               [12]  689 	rlc	a
      002117 F5 09            [12]  690 	mov	(_main_sloc0_1_0 + 1),a
      002119 E5 08            [12]  691 	mov	a,_main_sloc0_1_0
      00211B 24 01            [12]  692 	add	a,#_buffers
      00211D F5 0A            [12]  693 	mov	_main_sloc1_1_0,a
      00211F E5 09            [12]  694 	mov	a,(_main_sloc0_1_0 + 1)
      002121 34 00            [12]  695 	addc	a,#(_buffers >> 8)
      002123 F5 0B            [12]  696 	mov	(_main_sloc1_1_0 + 1),a
      002125 8A 82            [24]  697 	mov	dpl,r2
      002127 8B 83            [24]  698 	mov	dph,r3
      002129 C0 07            [24]  699 	push	ar7
      00212B C0 06            [24]  700 	push	ar6
      00212D C0 03            [24]  701 	push	ar3
      00212F C0 02            [24]  702 	push	ar2
      002131 C0 01            [24]  703 	push	ar1
      002133 C0 00            [24]  704 	push	ar0
      002135 12 28 D3         [24]  705 	lcall	_malloc
      002138 AC 82            [24]  706 	mov	r4,dpl
      00213A AD 83            [24]  707 	mov	r5,dph
      00213C D0 00            [24]  708 	pop	ar0
      00213E D0 01            [24]  709 	pop	ar1
      002140 D0 02            [24]  710 	pop	ar2
      002142 D0 03            [24]  711 	pop	ar3
      002144 D0 06            [24]  712 	pop	ar6
      002146 D0 07            [24]  713 	pop	ar7
      002148 85 0A 82         [24]  714 	mov	dpl,_main_sloc1_1_0
      00214B 85 0B 83         [24]  715 	mov	dph,(_main_sloc1_1_0 + 1)
      00214E EC               [12]  716 	mov	a,r4
      00214F F0               [24]  717 	movx	@dptr,a
      002150 ED               [12]  718 	mov	a,r5
      002151 A3               [24]  719 	inc	dptr
      002152 F0               [24]  720 	movx	@dptr,a
                                    721 ;	src/main.c:111: if(buffers[i].buffer == NULL)
      002153 EC               [12]  722 	mov	a,r4
      002154 4D               [12]  723 	orl	a,r5
      002155 D0 05            [24]  724 	pop	ar5
      002157 D0 04            [24]  725 	pop	ar4
      002159 70 4B            [24]  726 	jnz	00109$
                                    727 ;	src/main.c:113: free_all_buffers();
      00215B C0 04            [24]  728 	push	ar4
      00215D C0 05            [24]  729 	push	ar5
      00215F C0 07            [24]  730 	push	ar7
      002161 C0 06            [24]  731 	push	ar6
      002163 C0 05            [24]  732 	push	ar5
      002165 C0 04            [24]  733 	push	ar4
      002167 C0 03            [24]  734 	push	ar3
      002169 C0 02            [24]  735 	push	ar2
      00216B 12 24 AC         [24]  736 	lcall	_free_all_buffers
                                    737 ;	src/main.c:114: printf(BUFFER_SZ_TOO_BIG);
      00216E 74 21            [12]  738 	mov	a,#___str_1
      002170 C0 E0            [24]  739 	push	acc
      002172 74 35            [12]  740 	mov	a,#(___str_1 >> 8)
      002174 C0 E0            [24]  741 	push	acc
      002176 74 80            [12]  742 	mov	a,#0x80
      002178 C0 E0            [24]  743 	push	acc
      00217A 12 2A AA         [24]  744 	lcall	_printf
      00217D 15 81            [12]  745 	dec	sp
      00217F 15 81            [12]  746 	dec	sp
      002181 15 81            [12]  747 	dec	sp
      002183 D0 02            [24]  748 	pop	ar2
      002185 D0 03            [24]  749 	pop	ar3
      002187 D0 04            [24]  750 	pop	ar4
      002189 D0 05            [24]  751 	pop	ar5
      00218B D0 06            [24]  752 	pop	ar6
      00218D D0 07            [24]  753 	pop	ar7
                                    754 ;	src/main.c:115: max_user_input = user_buffer_size-1;
      00218F EA               [12]  755 	mov	a,r2
      002190 24 FF            [12]  756 	add	a,#0xff
      002192 FC               [12]  757 	mov	r4,a
      002193 EB               [12]  758 	mov	a,r3
      002194 34 FF            [12]  759 	addc	a,#0xff
      002196 FD               [12]  760 	mov	r5,a
      002197 90 00 19         [24]  761 	mov	dptr,#_main_max_user_input_65537_78
      00219A EC               [12]  762 	mov	a,r4
      00219B F0               [24]  763 	movx	@dptr,a
      00219C ED               [12]  764 	mov	a,r5
      00219D A3               [24]  765 	inc	dptr
      00219E F0               [24]  766 	movx	@dptr,a
                                    767 ;	src/main.c:116: goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
      00219F D0 05            [24]  768 	pop	ar5
      0021A1 D0 04            [24]  769 	pop	ar4
      0021A3 02 20 CD         [24]  770 	ljmp	00117$
      0021A6                        771 00109$:
                                    772 ;	src/main.c:118: buffers[i].size = (size_t) user_buffer_size;
      0021A6 C0 04            [24]  773 	push	ar4
      0021A8 C0 05            [24]  774 	push	ar5
      0021AA E5 08            [12]  775 	mov	a,_main_sloc0_1_0
      0021AC 24 01            [12]  776 	add	a,#_buffers
      0021AE FC               [12]  777 	mov	r4,a
      0021AF E5 09            [12]  778 	mov	a,(_main_sloc0_1_0 + 1)
      0021B1 34 00            [12]  779 	addc	a,#(_buffers >> 8)
      0021B3 FD               [12]  780 	mov	r5,a
      0021B4 8C 82            [24]  781 	mov	dpl,r4
      0021B6 8D 83            [24]  782 	mov	dph,r5
      0021B8 A3               [24]  783 	inc	dptr
      0021B9 A3               [24]  784 	inc	dptr
      0021BA EA               [12]  785 	mov	a,r2
      0021BB F0               [24]  786 	movx	@dptr,a
      0021BC EB               [12]  787 	mov	a,r3
      0021BD A3               [24]  788 	inc	dptr
      0021BE F0               [24]  789 	movx	@dptr,a
                                    790 ;	src/main.c:107: for(int i = 0; i < NUM_BUFFERS_TO_BE_ALLOCATED_TO_USER_SZ; i++)
      0021BF 08               [12]  791 	inc	r0
      0021C0 B8 00 01         [24]  792 	cjne	r0,#0x00,00190$
      0021C3 09               [12]  793 	inc	r1
      0021C4                        794 00190$:
      0021C4 D0 05            [24]  795 	pop	ar5
      0021C6 D0 04            [24]  796 	pop	ar4
      0021C8 02 20 F4         [24]  797 	ljmp	00124$
      0021CB                        798 00111$:
                                    799 ;	src/main.c:122: free(buffers[2].buffer);
      0021CB C0 06            [24]  800 	push	ar6
      0021CD C0 07            [24]  801 	push	ar7
      0021CF 90 00 09         [24]  802 	mov	dptr,#(_buffers + 0x0008)
      0021D2 E0               [24]  803 	movx	a,@dptr
      0021D3 F8               [12]  804 	mov	r0,a
      0021D4 A3               [24]  805 	inc	dptr
      0021D5 E0               [24]  806 	movx	a,@dptr
      0021D6 F9               [12]  807 	mov	r1,a
      0021D7 7F 00            [12]  808 	mov	r7,#0x00
      0021D9 88 82            [24]  809 	mov	dpl,r0
      0021DB 89 83            [24]  810 	mov	dph,r1
      0021DD 8F F0            [24]  811 	mov	b,r7
      0021DF C0 07            [24]  812 	push	ar7
      0021E1 C0 06            [24]  813 	push	ar6
      0021E3 C0 05            [24]  814 	push	ar5
      0021E5 C0 04            [24]  815 	push	ar4
      0021E7 C0 03            [24]  816 	push	ar3
      0021E9 C0 02            [24]  817 	push	ar2
      0021EB 12 25 D9         [24]  818 	lcall	_free
      0021EE D0 02            [24]  819 	pop	ar2
      0021F0 D0 03            [24]  820 	pop	ar3
      0021F2 D0 04            [24]  821 	pop	ar4
      0021F4 D0 05            [24]  822 	pop	ar5
      0021F6 D0 06            [24]  823 	pop	ar6
      0021F8 D0 07            [24]  824 	pop	ar7
                                    825 ;	src/main.c:123: buffers[2].buffer = NULL; //make sure we don't accidentally double free
      0021FA 90 00 09         [24]  826 	mov	dptr,#(_buffers + 0x0008)
      0021FD E4               [12]  827 	clr	a
      0021FE F0               [24]  828 	movx	@dptr,a
      0021FF A3               [24]  829 	inc	dptr
      002200 F0               [24]  830 	movx	@dptr,a
                                    831 ;	src/main.c:124: buffers[2].size = 0; 
      002201 90 00 0B         [24]  832 	mov	dptr,#(_buffers + 0x000a)
      002204 F0               [24]  833 	movx	@dptr,a
      002205 A3               [24]  834 	inc	dptr
      002206 F0               [24]  835 	movx	@dptr,a
                                    836 ;	src/main.c:127: buffers[4].size = (size_t) 10 * (student_number + 2);
      002207 90 04 46         [24]  837 	mov	dptr,#__mulint_PARM_2
      00220A EC               [12]  838 	mov	a,r4
      00220B F0               [24]  839 	movx	@dptr,a
      00220C ED               [12]  840 	mov	a,r5
      00220D A3               [24]  841 	inc	dptr
      00220E F0               [24]  842 	movx	@dptr,a
      00220F 90 00 0A         [24]  843 	mov	dptr,#0x000a
      002212 C0 05            [24]  844 	push	ar5
      002214 C0 04            [24]  845 	push	ar4
      002216 C0 03            [24]  846 	push	ar3
      002218 C0 02            [24]  847 	push	ar2
      00221A 12 2A 3C         [24]  848 	lcall	__mulint
      00221D AE 82            [24]  849 	mov	r6,dpl
      00221F AF 83            [24]  850 	mov	r7,dph
      002221 90 00 13         [24]  851 	mov	dptr,#(_buffers + 0x0012)
      002224 EE               [12]  852 	mov	a,r6
      002225 F0               [24]  853 	movx	@dptr,a
      002226 EF               [12]  854 	mov	a,r7
      002227 A3               [24]  855 	inc	dptr
      002228 F0               [24]  856 	movx	@dptr,a
                                    857 ;	src/main.c:128: buffers[4].buffer = malloc(buffers[4].size);
      002229 8E 82            [24]  858 	mov	dpl,r6
      00222B 8F 83            [24]  859 	mov	dph,r7
      00222D 12 28 D3         [24]  860 	lcall	_malloc
      002230 AE 82            [24]  861 	mov	r6,dpl
      002232 AF 83            [24]  862 	mov	r7,dph
      002234 D0 02            [24]  863 	pop	ar2
      002236 D0 03            [24]  864 	pop	ar3
      002238 D0 04            [24]  865 	pop	ar4
      00223A D0 05            [24]  866 	pop	ar5
      00223C 90 00 11         [24]  867 	mov	dptr,#(_buffers + 0x0010)
      00223F EE               [12]  868 	mov	a,r6
      002240 F0               [24]  869 	movx	@dptr,a
      002241 EF               [12]  870 	mov	a,r7
      002242 A3               [24]  871 	inc	dptr
      002243 F0               [24]  872 	movx	@dptr,a
                                    873 ;	src/main.c:130: if (buffers[4].buffer == NULL)
      002244 EE               [12]  874 	mov	a,r6
      002245 4F               [12]  875 	orl	a,r7
      002246 D0 07            [24]  876 	pop	ar7
      002248 D0 06            [24]  877 	pop	ar6
      00224A 70 43            [24]  878 	jnz	00113$
                                    879 ;	src/main.c:132: free_all_buffers();
      00224C C0 07            [24]  880 	push	ar7
      00224E C0 06            [24]  881 	push	ar6
      002250 C0 05            [24]  882 	push	ar5
      002252 C0 04            [24]  883 	push	ar4
      002254 C0 03            [24]  884 	push	ar3
      002256 C0 02            [24]  885 	push	ar2
      002258 12 24 AC         [24]  886 	lcall	_free_all_buffers
                                    887 ;	src/main.c:133: printf(BUFFER_SZ_TOO_BIG);
      00225B 74 21            [12]  888 	mov	a,#___str_1
      00225D C0 E0            [24]  889 	push	acc
      00225F 74 35            [12]  890 	mov	a,#(___str_1 >> 8)
      002261 C0 E0            [24]  891 	push	acc
      002263 74 80            [12]  892 	mov	a,#0x80
      002265 C0 E0            [24]  893 	push	acc
      002267 12 2A AA         [24]  894 	lcall	_printf
      00226A 15 81            [12]  895 	dec	sp
      00226C 15 81            [12]  896 	dec	sp
      00226E 15 81            [12]  897 	dec	sp
      002270 D0 02            [24]  898 	pop	ar2
      002272 D0 03            [24]  899 	pop	ar3
      002274 D0 04            [24]  900 	pop	ar4
      002276 D0 05            [24]  901 	pop	ar5
      002278 D0 06            [24]  902 	pop	ar6
      00227A D0 07            [24]  903 	pop	ar7
                                    904 ;	src/main.c:134: max_user_input = user_buffer_size-1;
      00227C EA               [12]  905 	mov	a,r2
      00227D 24 FF            [12]  906 	add	a,#0xff
      00227F F8               [12]  907 	mov	r0,a
      002280 EB               [12]  908 	mov	a,r3
      002281 34 FF            [12]  909 	addc	a,#0xff
      002283 F9               [12]  910 	mov	r1,a
      002284 90 00 19         [24]  911 	mov	dptr,#_main_max_user_input_65537_78
      002287 E8               [12]  912 	mov	a,r0
      002288 F0               [24]  913 	movx	@dptr,a
      002289 E9               [12]  914 	mov	a,r1
      00228A A3               [24]  915 	inc	dptr
      00228B F0               [24]  916 	movx	@dptr,a
                                    917 ;	src/main.c:135: continue;
      00228C 02 20 CD         [24]  918 	ljmp	00117$
      00228F                        919 00113$:
                                    920 ;	src/main.c:138: buffers[5].size = (size_t) 2 * user_buffer_size; 
      00228F EA               [12]  921 	mov	a,r2
      002290 2A               [12]  922 	add	a,r2
      002291 F8               [12]  923 	mov	r0,a
      002292 EB               [12]  924 	mov	a,r3
      002293 33               [12]  925 	rlc	a
      002294 F9               [12]  926 	mov	r1,a
      002295 90 00 17         [24]  927 	mov	dptr,#(_buffers + 0x0016)
      002298 E8               [12]  928 	mov	a,r0
      002299 F0               [24]  929 	movx	@dptr,a
      00229A E9               [12]  930 	mov	a,r1
      00229B A3               [24]  931 	inc	dptr
      00229C F0               [24]  932 	movx	@dptr,a
                                    933 ;	src/main.c:139: buffers[5].buffer = malloc(buffers[5].size);
      00229D 88 82            [24]  934 	mov	dpl,r0
      00229F 89 83            [24]  935 	mov	dph,r1
      0022A1 C0 07            [24]  936 	push	ar7
      0022A3 C0 06            [24]  937 	push	ar6
      0022A5 C0 05            [24]  938 	push	ar5
      0022A7 C0 04            [24]  939 	push	ar4
      0022A9 C0 03            [24]  940 	push	ar3
      0022AB C0 02            [24]  941 	push	ar2
      0022AD 12 28 D3         [24]  942 	lcall	_malloc
      0022B0 A8 82            [24]  943 	mov	r0,dpl
      0022B2 A9 83            [24]  944 	mov	r1,dph
      0022B4 D0 02            [24]  945 	pop	ar2
      0022B6 D0 03            [24]  946 	pop	ar3
      0022B8 D0 04            [24]  947 	pop	ar4
      0022BA D0 05            [24]  948 	pop	ar5
      0022BC D0 06            [24]  949 	pop	ar6
      0022BE D0 07            [24]  950 	pop	ar7
      0022C0 90 00 15         [24]  951 	mov	dptr,#(_buffers + 0x0014)
      0022C3 E8               [12]  952 	mov	a,r0
      0022C4 F0               [24]  953 	movx	@dptr,a
      0022C5 E9               [12]  954 	mov	a,r1
      0022C6 A3               [24]  955 	inc	dptr
      0022C7 F0               [24]  956 	movx	@dptr,a
                                    957 ;	src/main.c:140: if (buffers[5].buffer == NULL)
      0022C8 E8               [12]  958 	mov	a,r0
      0022C9 49               [12]  959 	orl	a,r1
      0022CA 70 43            [24]  960 	jnz	00118$
                                    961 ;	src/main.c:142: free_all_buffers();
      0022CC C0 07            [24]  962 	push	ar7
      0022CE C0 06            [24]  963 	push	ar6
      0022D0 C0 05            [24]  964 	push	ar5
      0022D2 C0 04            [24]  965 	push	ar4
      0022D4 C0 03            [24]  966 	push	ar3
      0022D6 C0 02            [24]  967 	push	ar2
      0022D8 12 24 AC         [24]  968 	lcall	_free_all_buffers
                                    969 ;	src/main.c:143: printf(BUFFER_SZ_TOO_BIG);
      0022DB 74 21            [12]  970 	mov	a,#___str_1
      0022DD C0 E0            [24]  971 	push	acc
      0022DF 74 35            [12]  972 	mov	a,#(___str_1 >> 8)
      0022E1 C0 E0            [24]  973 	push	acc
      0022E3 74 80            [12]  974 	mov	a,#0x80
      0022E5 C0 E0            [24]  975 	push	acc
      0022E7 12 2A AA         [24]  976 	lcall	_printf
      0022EA 15 81            [12]  977 	dec	sp
      0022EC 15 81            [12]  978 	dec	sp
      0022EE 15 81            [12]  979 	dec	sp
      0022F0 D0 02            [24]  980 	pop	ar2
      0022F2 D0 03            [24]  981 	pop	ar3
      0022F4 D0 04            [24]  982 	pop	ar4
      0022F6 D0 05            [24]  983 	pop	ar5
      0022F8 D0 06            [24]  984 	pop	ar6
      0022FA D0 07            [24]  985 	pop	ar7
                                    986 ;	src/main.c:144: max_user_input = user_buffer_size-1;
      0022FC EA               [12]  987 	mov	a,r2
      0022FD 24 FF            [12]  988 	add	a,#0xff
      0022FF F8               [12]  989 	mov	r0,a
      002300 EB               [12]  990 	mov	a,r3
      002301 34 FF            [12]  991 	addc	a,#0xff
      002303 F9               [12]  992 	mov	r1,a
      002304 90 00 19         [24]  993 	mov	dptr,#_main_max_user_input_65537_78
      002307 E8               [12]  994 	mov	a,r0
      002308 F0               [24]  995 	movx	@dptr,a
      002309 E9               [12]  996 	mov	a,r1
      00230A A3               [24]  997 	inc	dptr
      00230B F0               [24]  998 	movx	@dptr,a
                                    999 ;	src/main.c:145: continue;
      00230C 02 20 CD         [24] 1000 	ljmp	00117$
                                   1001 ;	src/main.c:147: break;
      00230F                       1002 00118$:
                                   1003 ;	src/main.c:150: printf("\r\nstudent_number: %d", student_number);
      00230F C0 03            [24] 1004 	push	ar3
      002311 C0 02            [24] 1005 	push	ar2
      002313 C0 06            [24] 1006 	push	ar6
      002315 C0 07            [24] 1007 	push	ar7
      002317 74 5A            [12] 1008 	mov	a,#___str_2
      002319 C0 E0            [24] 1009 	push	acc
      00231B 74 35            [12] 1010 	mov	a,#(___str_2 >> 8)
      00231D C0 E0            [24] 1011 	push	acc
      00231F 74 80            [12] 1012 	mov	a,#0x80
      002321 C0 E0            [24] 1013 	push	acc
      002323 12 2A AA         [24] 1014 	lcall	_printf
      002326 E5 81            [12] 1015 	mov	a,sp
      002328 24 FB            [12] 1016 	add	a,#0xfb
      00232A F5 81            [12] 1017 	mov	sp,a
      00232C D0 02            [24] 1018 	pop	ar2
      00232E D0 03            [24] 1019 	pop	ar3
                                   1020 ;	src/main.c:151: printf("\r\nuser_buffer_size: %zu", user_buffer_size);
      002330 C0 02            [24] 1021 	push	ar2
      002332 C0 03            [24] 1022 	push	ar3
      002334 74 6F            [12] 1023 	mov	a,#___str_3
      002336 C0 E0            [24] 1024 	push	acc
      002338 74 35            [12] 1025 	mov	a,#(___str_3 >> 8)
      00233A C0 E0            [24] 1026 	push	acc
      00233C 74 80            [12] 1027 	mov	a,#0x80
      00233E C0 E0            [24] 1028 	push	acc
      002340 12 2A AA         [24] 1029 	lcall	_printf
      002343 E5 81            [12] 1030 	mov	a,sp
      002345 24 FB            [12] 1031 	add	a,#0xfb
      002347 F5 81            [12] 1032 	mov	sp,a
                                   1033 ;	src/main.c:153: size_t total_heap_sz = 0;
      002349 90 00 1B         [24] 1034 	mov	dptr,#_main_total_heap_sz_65538_86
      00234C E4               [12] 1035 	clr	a
      00234D F0               [24] 1036 	movx	@dptr,a
      00234E A3               [24] 1037 	inc	dptr
      00234F F0               [24] 1038 	movx	@dptr,a
                                   1039 ;	src/main.c:154: for(int i = 0; i < BUFFER_COUNT; i++)
      002350 7E 00            [12] 1040 	mov	r6,#0x00
      002352 7F 00            [12] 1041 	mov	r7,#0x00
      002354                       1042 00127$:
      002354 C3               [12] 1043 	clr	c
      002355 EE               [12] 1044 	mov	a,r6
      002356 94 06            [12] 1045 	subb	a,#0x06
      002358 EF               [12] 1046 	mov	a,r7
      002359 64 80            [12] 1047 	xrl	a,#0x80
      00235B 94 80            [12] 1048 	subb	a,#0x80
      00235D 40 03            [24] 1049 	jc	00193$
      00235F 02 24 1B         [24] 1050 	ljmp	00121$
      002362                       1051 00193$:
                                   1052 ;	src/main.c:156: if(buffers[i].buffer != NULL) {
      002362 EE               [12] 1053 	mov	a,r6
      002363 2E               [12] 1054 	add	a,r6
      002364 FC               [12] 1055 	mov	r4,a
      002365 EF               [12] 1056 	mov	a,r7
      002366 33               [12] 1057 	rlc	a
      002367 FD               [12] 1058 	mov	r5,a
      002368 EC               [12] 1059 	mov	a,r4
      002369 2C               [12] 1060 	add	a,r4
      00236A FC               [12] 1061 	mov	r4,a
      00236B ED               [12] 1062 	mov	a,r5
      00236C 33               [12] 1063 	rlc	a
      00236D FD               [12] 1064 	mov	r5,a
      00236E EC               [12] 1065 	mov	a,r4
      00236F 24 01            [12] 1066 	add	a,#_buffers
      002371 F5 82            [12] 1067 	mov	dpl,a
      002373 ED               [12] 1068 	mov	a,r5
      002374 34 00            [12] 1069 	addc	a,#(_buffers >> 8)
      002376 F5 83            [12] 1070 	mov	dph,a
      002378 E0               [24] 1071 	movx	a,@dptr
      002379 FA               [12] 1072 	mov	r2,a
      00237A A3               [24] 1073 	inc	dptr
      00237B E0               [24] 1074 	movx	a,@dptr
      00237C FB               [12] 1075 	mov	r3,a
      00237D 4A               [12] 1076 	orl	a,r2
      00237E 70 03            [24] 1077 	jnz	00194$
      002380 02 24 13         [24] 1078 	ljmp	00128$
      002383                       1079 00194$:
                                   1080 ;	src/main.c:157: printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, buffers[i].buffer, buffers[i].buffer + buffers[i].size, buffers[i].size);
      002383 EC               [12] 1081 	mov	a,r4
      002384 24 01            [12] 1082 	add	a,#_buffers
      002386 FC               [12] 1083 	mov	r4,a
      002387 ED               [12] 1084 	mov	a,r5
      002388 34 00            [12] 1085 	addc	a,#(_buffers >> 8)
      00238A FD               [12] 1086 	mov	r5,a
      00238B 74 02            [12] 1087 	mov	a,#0x02
      00238D 2C               [12] 1088 	add	a,r4
      00238E FA               [12] 1089 	mov	r2,a
      00238F E4               [12] 1090 	clr	a
      002390 3D               [12] 1091 	addc	a,r5
      002391 FB               [12] 1092 	mov	r3,a
      002392 8A 82            [24] 1093 	mov	dpl,r2
      002394 8B 83            [24] 1094 	mov	dph,r3
      002396 E0               [24] 1095 	movx	a,@dptr
      002397 F5 08            [12] 1096 	mov	_main_sloc0_1_0,a
      002399 A3               [24] 1097 	inc	dptr
      00239A E0               [24] 1098 	movx	a,@dptr
      00239B F5 09            [12] 1099 	mov	(_main_sloc0_1_0 + 1),a
      00239D 8C 82            [24] 1100 	mov	dpl,r4
      00239F 8D 83            [24] 1101 	mov	dph,r5
      0023A1 E0               [24] 1102 	movx	a,@dptr
      0023A2 F5 0A            [12] 1103 	mov	_main_sloc1_1_0,a
      0023A4 A3               [24] 1104 	inc	dptr
      0023A5 E0               [24] 1105 	movx	a,@dptr
      0023A6 F5 0B            [12] 1106 	mov	(_main_sloc1_1_0 + 1),a
      0023A8 E5 08            [12] 1107 	mov	a,_main_sloc0_1_0
      0023AA 25 0A            [12] 1108 	add	a,_main_sloc1_1_0
      0023AC FC               [12] 1109 	mov	r4,a
      0023AD E5 09            [12] 1110 	mov	a,(_main_sloc0_1_0 + 1)
      0023AF 35 0B            [12] 1111 	addc	a,(_main_sloc1_1_0 + 1)
      0023B1 FD               [12] 1112 	mov	r5,a
      0023B2 8C 0C            [24] 1113 	mov	_main_sloc2_1_0,r4
      0023B4 8D 0D            [24] 1114 	mov	(_main_sloc2_1_0 + 1),r5
      0023B6 75 0E 00         [24] 1115 	mov	(_main_sloc2_1_0 + 2),#0x00
      0023B9 A8 0A            [24] 1116 	mov	r0,_main_sloc1_1_0
      0023BB AD 0B            [24] 1117 	mov	r5,(_main_sloc1_1_0 + 1)
      0023BD 7C 00            [12] 1118 	mov	r4,#0x00
      0023BF C0 07            [24] 1119 	push	ar7
      0023C1 C0 06            [24] 1120 	push	ar6
      0023C3 C0 03            [24] 1121 	push	ar3
      0023C5 C0 02            [24] 1122 	push	ar2
      0023C7 C0 08            [24] 1123 	push	_main_sloc0_1_0
      0023C9 C0 09            [24] 1124 	push	(_main_sloc0_1_0 + 1)
      0023CB C0 0C            [24] 1125 	push	_main_sloc2_1_0
      0023CD C0 0D            [24] 1126 	push	(_main_sloc2_1_0 + 1)
      0023CF C0 0E            [24] 1127 	push	(_main_sloc2_1_0 + 2)
      0023D1 C0 00            [24] 1128 	push	ar0
      0023D3 C0 05            [24] 1129 	push	ar5
      0023D5 C0 04            [24] 1130 	push	ar4
      0023D7 C0 06            [24] 1131 	push	ar6
      0023D9 C0 07            [24] 1132 	push	ar7
      0023DB 74 87            [12] 1133 	mov	a,#___str_4
      0023DD C0 E0            [24] 1134 	push	acc
      0023DF 74 35            [12] 1135 	mov	a,#(___str_4 >> 8)
      0023E1 C0 E0            [24] 1136 	push	acc
      0023E3 74 80            [12] 1137 	mov	a,#0x80
      0023E5 C0 E0            [24] 1138 	push	acc
      0023E7 12 2A AA         [24] 1139 	lcall	_printf
      0023EA E5 81            [12] 1140 	mov	a,sp
      0023EC 24 F3            [12] 1141 	add	a,#0xf3
      0023EE F5 81            [12] 1142 	mov	sp,a
      0023F0 D0 02            [24] 1143 	pop	ar2
      0023F2 D0 03            [24] 1144 	pop	ar3
      0023F4 D0 06            [24] 1145 	pop	ar6
      0023F6 D0 07            [24] 1146 	pop	ar7
                                   1147 ;	src/main.c:158: total_heap_sz += buffers[i].size; 
      0023F8 8A 82            [24] 1148 	mov	dpl,r2
      0023FA 8B 83            [24] 1149 	mov	dph,r3
      0023FC E0               [24] 1150 	movx	a,@dptr
      0023FD FA               [12] 1151 	mov	r2,a
      0023FE A3               [24] 1152 	inc	dptr
      0023FF E0               [24] 1153 	movx	a,@dptr
      002400 FB               [12] 1154 	mov	r3,a
      002401 90 00 1B         [24] 1155 	mov	dptr,#_main_total_heap_sz_65538_86
      002404 E0               [24] 1156 	movx	a,@dptr
      002405 FC               [12] 1157 	mov	r4,a
      002406 A3               [24] 1158 	inc	dptr
      002407 E0               [24] 1159 	movx	a,@dptr
      002408 FD               [12] 1160 	mov	r5,a
      002409 90 00 1B         [24] 1161 	mov	dptr,#_main_total_heap_sz_65538_86
      00240C EA               [12] 1162 	mov	a,r2
      00240D 2C               [12] 1163 	add	a,r4
      00240E F0               [24] 1164 	movx	@dptr,a
      00240F EB               [12] 1165 	mov	a,r3
      002410 3D               [12] 1166 	addc	a,r5
      002411 A3               [24] 1167 	inc	dptr
      002412 F0               [24] 1168 	movx	@dptr,a
      002413                       1169 00128$:
                                   1170 ;	src/main.c:154: for(int i = 0; i < BUFFER_COUNT; i++)
      002413 0E               [12] 1171 	inc	r6
      002414 BE 00 01         [24] 1172 	cjne	r6,#0x00,00195$
      002417 0F               [12] 1173 	inc	r7
      002418                       1174 00195$:
      002418 02 23 54         [24] 1175 	ljmp	00127$
      00241B                       1176 00121$:
                                   1177 ;	src/main.c:161: printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
      00241B 90 00 1B         [24] 1178 	mov	dptr,#_main_total_heap_sz_65538_86
      00241E E0               [24] 1179 	movx	a,@dptr
      00241F C0 E0            [24] 1180 	push	acc
      002421 A3               [24] 1181 	inc	dptr
      002422 E0               [24] 1182 	movx	a,@dptr
      002423 C0 E0            [24] 1183 	push	acc
      002425 74 21            [12] 1184 	mov	a,#(___sdcc_heap + 0x0400)
      002427 C0 E0            [24] 1185 	push	acc
      002429 74 04            [12] 1186 	mov	a,#((___sdcc_heap + 0x0400) >> 8)
      00242B C0 E0            [24] 1187 	push	acc
      00242D E4               [12] 1188 	clr	a
      00242E C0 E0            [24] 1189 	push	acc
      002430 74 21            [12] 1190 	mov	a,#___sdcc_heap
      002432 C0 E0            [24] 1191 	push	acc
      002434 74 00            [12] 1192 	mov	a,#(___sdcc_heap >> 8)
      002436 C0 E0            [24] 1193 	push	acc
      002438 E4               [12] 1194 	clr	a
      002439 C0 E0            [24] 1195 	push	acc
      00243B 74 B3            [12] 1196 	mov	a,#___str_5
      00243D C0 E0            [24] 1197 	push	acc
      00243F 74 35            [12] 1198 	mov	a,#(___str_5 >> 8)
      002441 C0 E0            [24] 1199 	push	acc
      002443 74 80            [12] 1200 	mov	a,#0x80
      002445 C0 E0            [24] 1201 	push	acc
      002447 12 2A AA         [24] 1202 	lcall	_printf
      00244A E5 81            [12] 1203 	mov	a,sp
      00244C 24 F5            [12] 1204 	add	a,#0xf5
      00244E F5 81            [12] 1205 	mov	sp,a
      002450                       1206 00130$:
                                   1207 ;	src/main.c:164: }
      002450 80 FE            [24] 1208 	sjmp	00130$
                                   1209 ;------------------------------------------------------------
                                   1210 ;Allocation info for local variables in function 'get_user_buffer_sz'
                                   1211 ;------------------------------------------------------------
                                   1212 ;maximum_sz                Allocated with name '_get_user_buffer_sz_maximum_sz_65536_91'
                                   1213 ;user_buffer_size          Allocated with name '_get_user_buffer_sz_user_buffer_size_65536_92'
                                   1214 ;------------------------------------------------------------
                                   1215 ;	src/main.c:166: size_t get_user_buffer_sz(size_t maximum_sz)
                                   1216 ;	-----------------------------------------
                                   1217 ;	 function get_user_buffer_sz
                                   1218 ;	-----------------------------------------
      002452                       1219 _get_user_buffer_sz:
      002452 AF 83            [24] 1220 	mov	r7,dph
      002454 E5 82            [12] 1221 	mov	a,dpl
      002456 90 00 1D         [24] 1222 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_91
      002459 F0               [24] 1223 	movx	@dptr,a
      00245A EF               [12] 1224 	mov	a,r7
      00245B A3               [24] 1225 	inc	dptr
      00245C F0               [24] 1226 	movx	@dptr,a
                                   1227 ;	src/main.c:169: do {
      00245D 90 00 1D         [24] 1228 	mov	dptr,#_get_user_buffer_sz_maximum_sz_65536_91
      002460 E0               [24] 1229 	movx	a,@dptr
      002461 FE               [12] 1230 	mov	r6,a
      002462 A3               [24] 1231 	inc	dptr
      002463 E0               [24] 1232 	movx	a,@dptr
      002464 FF               [12] 1233 	mov	r7,a
      002465                       1234 00103$:
                                   1235 ;	src/main.c:170: printf("\r\nPlease enter a valid buffer size that is divisible by 32 [64,%zu]: ", maximum_sz);
      002465 C0 07            [24] 1236 	push	ar7
      002467 C0 06            [24] 1237 	push	ar6
      002469 C0 06            [24] 1238 	push	ar6
      00246B C0 07            [24] 1239 	push	ar7
      00246D 74 DC            [12] 1240 	mov	a,#___str_6
      00246F C0 E0            [24] 1241 	push	acc
      002471 74 35            [12] 1242 	mov	a,#(___str_6 >> 8)
      002473 C0 E0            [24] 1243 	push	acc
      002475 74 80            [12] 1244 	mov	a,#0x80
      002477 C0 E0            [24] 1245 	push	acc
      002479 12 2A AA         [24] 1246 	lcall	_printf
      00247C E5 81            [12] 1247 	mov	a,sp
      00247E 24 FB            [12] 1248 	add	a,#0xfb
      002480 F5 81            [12] 1249 	mov	sp,a
                                   1250 ;	src/main.c:171: get_string();
      002482 12 25 46         [24] 1251 	lcall	_get_string
                                   1252 ;	src/main.c:172: user_buffer_size = (size_t) atoi(get_input_buffer()); //TODO: replace with own implementation of atoi that respects the size_t
      002485 12 25 3F         [24] 1253 	lcall	_get_input_buffer
      002488 12 27 58         [24] 1254 	lcall	_atoi
      00248B AC 82            [24] 1255 	mov	r4,dpl
      00248D AD 83            [24] 1256 	mov	r5,dph
      00248F D0 06            [24] 1257 	pop	ar6
      002491 D0 07            [24] 1258 	pop	ar7
                                   1259 ;	src/main.c:173: } while ((user_buffer_size > maximum_sz)
      002493 C3               [12] 1260 	clr	c
      002494 EE               [12] 1261 	mov	a,r6
      002495 9C               [12] 1262 	subb	a,r4
      002496 EF               [12] 1263 	mov	a,r7
      002497 9D               [12] 1264 	subb	a,r5
                                   1265 ;	src/main.c:174: || (user_buffer_size < USER_BUFFER_MIN)
      002498 40 CB            [24] 1266 	jc	00103$
      00249A EC               [12] 1267 	mov	a,r4
      00249B 94 40            [12] 1268 	subb	a,#0x40
      00249D ED               [12] 1269 	mov	a,r5
      00249E 94 00            [12] 1270 	subb	a,#0x00
      0024A0 40 C3            [24] 1271 	jc	00103$
                                   1272 ;	src/main.c:175: || (MODULE_32(user_buffer_size) != 0));
      0024A2 EC               [12] 1273 	mov	a,r4
      0024A3 54 1F            [12] 1274 	anl	a,#0x1f
      0024A5 70 BE            [24] 1275 	jnz	00103$
                                   1276 ;	src/main.c:176: return user_buffer_size;
      0024A7 8C 82            [24] 1277 	mov	dpl,r4
      0024A9 8D 83            [24] 1278 	mov	dph,r5
                                   1279 ;	src/main.c:177: }
      0024AB 22               [24] 1280 	ret
                                   1281 ;------------------------------------------------------------
                                   1282 ;Allocation info for local variables in function 'free_all_buffers'
                                   1283 ;------------------------------------------------------------
                                   1284 ;i                         Allocated with name '_free_all_buffers_i_131072_95'
                                   1285 ;------------------------------------------------------------
                                   1286 ;	src/main.c:180: void free_all_buffers()
                                   1287 ;	-----------------------------------------
                                   1288 ;	 function free_all_buffers
                                   1289 ;	-----------------------------------------
      0024AC                       1290 _free_all_buffers:
                                   1291 ;	src/main.c:182: for(int i = 0; i < BUFFER_COUNT; i++)
      0024AC 7E 00            [12] 1292 	mov	r6,#0x00
      0024AE 7F 00            [12] 1293 	mov	r7,#0x00
      0024B0                       1294 00105$:
      0024B0 C3               [12] 1295 	clr	c
      0024B1 EE               [12] 1296 	mov	a,r6
      0024B2 94 06            [12] 1297 	subb	a,#0x06
      0024B4 EF               [12] 1298 	mov	a,r7
      0024B5 64 80            [12] 1299 	xrl	a,#0x80
      0024B7 94 80            [12] 1300 	subb	a,#0x80
      0024B9 50 56            [24] 1301 	jnc	00107$
                                   1302 ;	src/main.c:184: if (buffers[i].buffer != NULL)
      0024BB EE               [12] 1303 	mov	a,r6
      0024BC 2E               [12] 1304 	add	a,r6
      0024BD FC               [12] 1305 	mov	r4,a
      0024BE EF               [12] 1306 	mov	a,r7
      0024BF 33               [12] 1307 	rlc	a
      0024C0 FD               [12] 1308 	mov	r5,a
      0024C1 EC               [12] 1309 	mov	a,r4
      0024C2 2C               [12] 1310 	add	a,r4
      0024C3 FC               [12] 1311 	mov	r4,a
      0024C4 ED               [12] 1312 	mov	a,r5
      0024C5 33               [12] 1313 	rlc	a
      0024C6 FD               [12] 1314 	mov	r5,a
      0024C7 EC               [12] 1315 	mov	a,r4
      0024C8 24 01            [12] 1316 	add	a,#_buffers
      0024CA F5 82            [12] 1317 	mov	dpl,a
      0024CC ED               [12] 1318 	mov	a,r5
      0024CD 34 00            [12] 1319 	addc	a,#(_buffers >> 8)
      0024CF F5 83            [12] 1320 	mov	dph,a
      0024D1 E0               [24] 1321 	movx	a,@dptr
      0024D2 FC               [12] 1322 	mov	r4,a
      0024D3 A3               [24] 1323 	inc	dptr
      0024D4 E0               [24] 1324 	movx	a,@dptr
      0024D5 FD               [12] 1325 	mov	r5,a
      0024D6 4C               [12] 1326 	orl	a,r4
      0024D7 60 13            [24] 1327 	jz	00102$
                                   1328 ;	src/main.c:186: free(buffers[i].buffer);
      0024D9 7B 00            [12] 1329 	mov	r3,#0x00
      0024DB 8C 82            [24] 1330 	mov	dpl,r4
      0024DD 8D 83            [24] 1331 	mov	dph,r5
      0024DF 8B F0            [24] 1332 	mov	b,r3
      0024E1 C0 07            [24] 1333 	push	ar7
      0024E3 C0 06            [24] 1334 	push	ar6
      0024E5 12 25 D9         [24] 1335 	lcall	_free
      0024E8 D0 06            [24] 1336 	pop	ar6
      0024EA D0 07            [24] 1337 	pop	ar7
      0024EC                       1338 00102$:
                                   1339 ;	src/main.c:188: buffers[i].size = 0; 
      0024EC EE               [12] 1340 	mov	a,r6
      0024ED 2E               [12] 1341 	add	a,r6
      0024EE FC               [12] 1342 	mov	r4,a
      0024EF EF               [12] 1343 	mov	a,r7
      0024F0 33               [12] 1344 	rlc	a
      0024F1 FD               [12] 1345 	mov	r5,a
      0024F2 EC               [12] 1346 	mov	a,r4
      0024F3 2C               [12] 1347 	add	a,r4
      0024F4 FC               [12] 1348 	mov	r4,a
      0024F5 ED               [12] 1349 	mov	a,r5
      0024F6 33               [12] 1350 	rlc	a
      0024F7 FD               [12] 1351 	mov	r5,a
      0024F8 EC               [12] 1352 	mov	a,r4
      0024F9 24 01            [12] 1353 	add	a,#_buffers
      0024FB FC               [12] 1354 	mov	r4,a
      0024FC ED               [12] 1355 	mov	a,r5
      0024FD 34 00            [12] 1356 	addc	a,#(_buffers >> 8)
      0024FF FD               [12] 1357 	mov	r5,a
      002500 8C 82            [24] 1358 	mov	dpl,r4
      002502 8D 83            [24] 1359 	mov	dph,r5
      002504 A3               [24] 1360 	inc	dptr
      002505 A3               [24] 1361 	inc	dptr
      002506 E4               [12] 1362 	clr	a
      002507 F0               [24] 1363 	movx	@dptr,a
      002508 A3               [24] 1364 	inc	dptr
      002509 F0               [24] 1365 	movx	@dptr,a
                                   1366 ;	src/main.c:182: for(int i = 0; i < BUFFER_COUNT; i++)
      00250A 0E               [12] 1367 	inc	r6
      00250B BE 00 A2         [24] 1368 	cjne	r6,#0x00,00105$
      00250E 0F               [12] 1369 	inc	r7
      00250F 80 9F            [24] 1370 	sjmp	00105$
      002511                       1371 00107$:
                                   1372 ;	src/main.c:190: }
      002511 22               [24] 1373 	ret
                                   1374 	.area CSEG    (CODE)
                                   1375 	.area CONST   (CODE)
                                   1376 	.area CONST   (CODE)
      0034F2                       1377 ___str_0:
      0034F2 0D                    1378 	.db 0x0d
      0034F3 0A                    1379 	.db 0x0a
      0034F4 50 6C 65 61 73 65 20  1380 	.ascii "Please enter the last two digits of your ID:"
             65 6E 74 65 72 20 74
             68 65 20 6C 61 73 74
             20 74 77 6F 20 64 69
             67 69 74 73 20 6F 66
             20 79 6F 75 72 20 49
             44 3A
      003520 00                    1381 	.db 0x00
                                   1382 	.area CSEG    (CODE)
                                   1383 	.area CONST   (CODE)
      003521                       1384 ___str_1:
      003521 0D                    1385 	.db 0x0d
      003522 0A                    1386 	.db 0x0a
      003523 42 75 66 66 65 72 20  1387 	.ascii "Buffer Size too big, please pick a smaller buffer size"
             53 69 7A 65 20 74 6F
             6F 20 62 69 67 2C 20
             70 6C 65 61 73 65 20
             70 69 63 6B 20 61 20
             73 6D 61 6C 6C 65 72
             20 62 75 66 66 65 72
             20 73 69 7A 65
      003559 00                    1388 	.db 0x00
                                   1389 	.area CSEG    (CODE)
                                   1390 	.area CONST   (CODE)
      00355A                       1391 ___str_2:
      00355A 0D                    1392 	.db 0x0d
      00355B 0A                    1393 	.db 0x0a
      00355C 73 74 75 64 65 6E 74  1394 	.ascii "student_number: %d"
             5F 6E 75 6D 62 65 72
             3A 20 25 64
      00356E 00                    1395 	.db 0x00
                                   1396 	.area CSEG    (CODE)
                                   1397 	.area CONST   (CODE)
      00356F                       1398 ___str_3:
      00356F 0D                    1399 	.db 0x0d
      003570 0A                    1400 	.db 0x0a
      003571 75 73 65 72 5F 62 75  1401 	.ascii "user_buffer_size: %zu"
             66 66 65 72 5F 73 69
             7A 65 3A 20 25 7A 75
      003586 00                    1402 	.db 0x00
                                   1403 	.area CSEG    (CODE)
                                   1404 	.area CONST   (CODE)
      003587                       1405 ___str_4:
      003587 0D                    1406 	.db 0x0d
      003588 0A                    1407 	.db 0x0a
      003589 62 75 66 66 65 72 5F  1408 	.ascii "buffer_%d starts @ %p, ends @%p, size %zu"
             25 64 20 73 74 61 72
             74 73 20 40 20 25 70
             2C 20 65 6E 64 73 20
             40 25 70 2C 20 73 69
             7A 65 20 25 7A 75
      0035B2 00                    1409 	.db 0x00
                                   1410 	.area CSEG    (CODE)
                                   1411 	.area CONST   (CODE)
      0035B3                       1412 ___str_5:
      0035B3 0D                    1413 	.db 0x0d
      0035B4 0A                    1414 	.db 0x0a
      0035B5 48 65 61 70 20 73 74  1415 	.ascii "Heap starts @ %p, ends @ %p, size: %zu"
             61 72 74 73 20 40 20
             25 70 2C 20 65 6E 64
             73 20 40 20 25 70 2C
             20 73 69 7A 65 3A 20
             25 7A 75
      0035DB 00                    1416 	.db 0x00
                                   1417 	.area CSEG    (CODE)
                                   1418 	.area CONST   (CODE)
      0035DC                       1419 ___str_6:
      0035DC 0D                    1420 	.db 0x0d
      0035DD 0A                    1421 	.db 0x0a
      0035DE 50 6C 65 61 73 65 20  1422 	.ascii "Please enter a valid buffer size that is divisible by 32 [64"
             65 6E 74 65 72 20 61
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             73 69 7A 65 20 74 68
             61 74 20 69 73 20 64
             69 76 69 73 69 62 6C
             65 20 62 79 20 33 32
             20 5B 36 34
      00361A 2C 25 7A 75 5D 3A 20  1423 	.ascii ",%zu]: "
      003621 00                    1424 	.db 0x00
                                   1425 	.area CSEG    (CODE)
                                   1426 	.area XINIT   (CODE)
                                   1427 	.area CABS    (ABS,CODE)
