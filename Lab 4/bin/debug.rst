                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module debug
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _dataout_PARM_2
                                     12 	.globl _dataout
                                     13 ;--------------------------------------------------------
                                     14 ; special function registers
                                     15 ;--------------------------------------------------------
                                     16 	.area RSEG    (ABS,DATA)
      000000                         17 	.org 0x0000
                                     18 ;--------------------------------------------------------
                                     19 ; special function bits
                                     20 ;--------------------------------------------------------
                                     21 	.area RSEG    (ABS,DATA)
      000000                         22 	.org 0x0000
                                     23 ;--------------------------------------------------------
                                     24 ; overlayable register banks
                                     25 ;--------------------------------------------------------
                                     26 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         27 	.ds 8
                                     28 ;--------------------------------------------------------
                                     29 ; internal ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DSEG    (DATA)
                                     32 ;--------------------------------------------------------
                                     33 ; overlayable items in internal ram
                                     34 ;--------------------------------------------------------
                                     35 ;--------------------------------------------------------
                                     36 ; indirectly addressable internal ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area ISEG    (DATA)
                                     39 ;--------------------------------------------------------
                                     40 ; absolute internal ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area IABS    (ABS,DATA)
                                     43 	.area IABS    (ABS,DATA)
                                     44 ;--------------------------------------------------------
                                     45 ; bit data
                                     46 ;--------------------------------------------------------
                                     47 	.area BSEG    (BIT)
                                     48 ;--------------------------------------------------------
                                     49 ; paged external ram data
                                     50 ;--------------------------------------------------------
                                     51 	.area PSEG    (PAG,XDATA)
                                     52 ;--------------------------------------------------------
                                     53 ; external ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area XSEG    (XDATA)
      00204C                         56 _dataout_PARM_2:
      00204C                         57 	.ds 1
      00204D                         58 _dataout_address_65536_2:
      00204D                         59 	.ds 2
                                     60 ;--------------------------------------------------------
                                     61 ; absolute external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XABS    (ABS,XDATA)
                                     64 ;--------------------------------------------------------
                                     65 ; external initialized ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area XISEG   (XDATA)
                                     68 	.area HOME    (CODE)
                                     69 	.area GSINIT0 (CODE)
                                     70 	.area GSINIT1 (CODE)
                                     71 	.area GSINIT2 (CODE)
                                     72 	.area GSINIT3 (CODE)
                                     73 	.area GSINIT4 (CODE)
                                     74 	.area GSINIT5 (CODE)
                                     75 	.area GSINIT  (CODE)
                                     76 	.area GSFINAL (CODE)
                                     77 	.area CSEG    (CODE)
                                     78 ;--------------------------------------------------------
                                     79 ; global & static initialisations
                                     80 ;--------------------------------------------------------
                                     81 	.area HOME    (CODE)
                                     82 	.area GSINIT  (CODE)
                                     83 	.area GSFINAL (CODE)
                                     84 	.area GSINIT  (CODE)
                                     85 ;--------------------------------------------------------
                                     86 ; Home
                                     87 ;--------------------------------------------------------
                                     88 	.area HOME    (CODE)
                                     89 	.area HOME    (CODE)
                                     90 ;--------------------------------------------------------
                                     91 ; code
                                     92 ;--------------------------------------------------------
                                     93 	.area CSEG    (CODE)
                                     94 ;------------------------------------------------------------
                                     95 ;Allocation info for local variables in function 'dataout'
                                     96 ;------------------------------------------------------------
                                     97 ;out                       Allocated with name '_dataout_PARM_2'
                                     98 ;address                   Allocated with name '_dataout_address_65536_2'
                                     99 ;------------------------------------------------------------
                                    100 ;	src/debug.c:12: void dataout(__xdata volatile char *address, unsigned char out)
                                    101 ;	-----------------------------------------
                                    102 ;	 function dataout
                                    103 ;	-----------------------------------------
      002B3B                        104 _dataout:
                           000007   105 	ar7 = 0x07
                           000006   106 	ar6 = 0x06
                           000005   107 	ar5 = 0x05
                           000004   108 	ar4 = 0x04
                           000003   109 	ar3 = 0x03
                           000002   110 	ar2 = 0x02
                           000001   111 	ar1 = 0x01
                           000000   112 	ar0 = 0x00
      002B3B AF 83            [24]  113 	mov	r7,dph
      002B3D E5 82            [12]  114 	mov	a,dpl
      002B3F 90 20 4D         [24]  115 	mov	dptr,#_dataout_address_65536_2
      002B42 F0               [24]  116 	movx	@dptr,a
      002B43 EF               [12]  117 	mov	a,r7
      002B44 A3               [24]  118 	inc	dptr
      002B45 F0               [24]  119 	movx	@dptr,a
                                    120 ;	src/debug.c:14: *address = out; 
      002B46 90 20 4D         [24]  121 	mov	dptr,#_dataout_address_65536_2
      002B49 E0               [24]  122 	movx	a,@dptr
      002B4A FE               [12]  123 	mov	r6,a
      002B4B A3               [24]  124 	inc	dptr
      002B4C E0               [24]  125 	movx	a,@dptr
      002B4D FF               [12]  126 	mov	r7,a
      002B4E 90 20 4C         [24]  127 	mov	dptr,#_dataout_PARM_2
      002B51 E0               [24]  128 	movx	a,@dptr
      002B52 8E 82            [24]  129 	mov	dpl,r6
      002B54 8F 83            [24]  130 	mov	dph,r7
      002B56 F0               [24]  131 	movx	@dptr,a
                                    132 ;	src/debug.c:15: }
      002B57 22               [24]  133 	ret
                                    134 	.area CSEG    (CODE)
                                    135 	.area CONST   (CODE)
                                    136 	.area XINIT   (CODE)
                                    137 	.area CABS    (ABS,CODE)
