;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module linked_list
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _free
	.globl _ll_get_elem_PARM_2
	.globl _remove_from_buffer_list_PARM_2
	.globl _append_to_buffer_list_PARM_2
	.globl _append_to_buffer_list
	.globl _remove_from_buffer_list
	.globl _free_all_elems_from_list
	.globl _ll_length
	.globl _ll_get_elem
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_remove_from_buffer_list_sloc0_1_0:
	.ds 3
_free_all_elems_from_list_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_append_to_buffer_list_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_append_to_buffer_list_PARM_2:
	.ds 3
_append_to_buffer_list_list_65536_47:
	.ds 3
_append_to_buffer_list_tail_131072_50:
	.ds 3
_remove_from_buffer_list_PARM_2:
	.ds 2
_remove_from_buffer_list_list_65536_52:
	.ds 3
_remove_from_buffer_list_to_free_65537_54:
	.ds 3
_remove_from_buffer_list_prev_131073_56:
	.ds 3
_free_all_elems_from_list_list_65536_59:
	.ds 3
_free_all_elems_from_list_buffer_to_free_65536_60:
	.ds 3
_ll_length_list_65536_63:
	.ds 3
_ll_length_size_65536_64:
	.ds 2
_ll_length_curr_65536_64:
	.ds 3
_ll_get_elem_PARM_2:
	.ds 2
_ll_get_elem_list_65536_66:
	.ds 3
_ll_get_elem_curr_65536_67:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'append_to_buffer_list'
;------------------------------------------------------------
;buffer                    Allocated with name '_append_to_buffer_list_PARM_2'
;list                      Allocated with name '_append_to_buffer_list_list_65536_47'
;tail                      Allocated with name '_append_to_buffer_list_tail_131072_50'
;sloc0                     Allocated with name '_append_to_buffer_list_sloc0_1_0'
;------------------------------------------------------------
;	src/linked_list.c:14: bool append_to_buffer_list(buffer_list_t *list, buffer_t *buffer)
;	-----------------------------------------
;	 function append_to_buffer_list
;	-----------------------------------------
_append_to_buffer_list:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_append_to_buffer_list_list_65536_47
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:16: if (list->head == NULL) 
	mov	dptr,#_append_to_buffer_list_list_65536_47
	movx	a,@dptr
	mov	_append_to_buffer_list_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_append_to_buffer_list_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_append_to_buffer_list_sloc0_1_0 + 2),a
	mov	dpl,_append_to_buffer_list_sloc0_1_0
	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	src/linked_list.c:18: list->head = buffer; 
	mov	dptr,#_append_to_buffer_list_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,_append_to_buffer_list_sloc0_1_0
	mov	dph,(_append_to_buffer_list_sloc0_1_0 + 1)
	mov	b,(_append_to_buffer_list_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	sjmp	00106$
00105$:
;	src/linked_list.c:22: buffer_t *tail = list->head;
	mov	dptr,#_append_to_buffer_list_tail_131072_50
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:23: while(tail->next != NULL)
00101$:
	mov	dptr,#_append_to_buffer_list_tail_131072_50
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00103$
;	src/linked_list.c:25: tail = tail->next;
	mov	dptr,#_append_to_buffer_list_tail_131072_50
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00103$:
;	src/linked_list.c:27: tail->next = buffer;
	mov	dptr,#_append_to_buffer_list_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00106$:
;	src/linked_list.c:29: buffer->next = NULL; 
	mov	dptr,#_append_to_buffer_list_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	src/linked_list.c:30: return true;
	mov	dpl,#0x01
;	src/linked_list.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_from_buffer_list'
;------------------------------------------------------------
;sloc0                     Allocated with name '_remove_from_buffer_list_sloc0_1_0'
;idx                       Allocated with name '_remove_from_buffer_list_PARM_2'
;list                      Allocated with name '_remove_from_buffer_list_list_65536_52'
;to_free                   Allocated with name '_remove_from_buffer_list_to_free_65537_54'
;prev                      Allocated with name '_remove_from_buffer_list_prev_131073_56'
;------------------------------------------------------------
;	src/linked_list.c:34: bool remove_from_buffer_list(buffer_list_t *list, size_t idx)
;	-----------------------------------------
;	 function remove_from_buffer_list
;	-----------------------------------------
_remove_from_buffer_list:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_remove_from_buffer_list_list_65536_52
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:36: if (list == NULL) return false;
	mov	dptr,#_remove_from_buffer_list_list_65536_52
	movx	a,@dptr
	mov	_remove_from_buffer_list_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_remove_from_buffer_list_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_remove_from_buffer_list_sloc0_1_0 + 2),a
	mov	a,_remove_from_buffer_list_sloc0_1_0
	orl	a,(_remove_from_buffer_list_sloc0_1_0 + 1)
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	src/linked_list.c:37: if (list->head == NULL) return false;
	mov	dpl,_remove_from_buffer_list_sloc0_1_0
	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00104$
	mov	dpl,a
	ret
00104$:
;	src/linked_list.c:40: if (idx == 0)
	mov	dptr,#_remove_from_buffer_list_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_remove_from_buffer_list_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00112$
;	src/linked_list.c:43: to_free = list->head;
	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:44: list->head = list->head->next;  
	mov	a,#0x08
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,_remove_from_buffer_list_sloc0_1_0
	mov	dph,(_remove_from_buffer_list_sloc0_1_0 + 1)
	mov	b,(_remove_from_buffer_list_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	ljmp	00113$
00112$:
;	src/linked_list.c:48: buffer_t *prev = list->head;
	mov	dptr,#_remove_from_buffer_list_prev_131073_56
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:49: idx--;
	dec	r0
	cjne	r0,#0xff,00160$
	dec	r1
00160$:
	mov	dptr,#_remove_from_buffer_list_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:50: while(idx > 0 && prev->next != NULL)
	mov	dptr,#_remove_from_buffer_list_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00106$:
	mov	a,r6
	orl	a,r7
	jz	00108$
	mov	dptr,#_remove_from_buffer_list_prev_131073_56
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r3
	orl	a,r4
	jz	00108$
;	src/linked_list.c:52: prev = prev->next;
	mov	dptr,#_remove_from_buffer_list_prev_131073_56
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:53: idx--;
	dec	r6
	cjne	r6,#0xff,00163$
	dec	r7
00163$:
	sjmp	00106$
00108$:
;	src/linked_list.c:56: if (idx != 0) return false;
	mov	a,r6
	orl	a,r7
	jz	00110$
	mov	dpl,#0x00
	ret
00110$:
;	src/linked_list.c:57: to_free = prev->next;
	mov	dptr,#_remove_from_buffer_list_prev_131073_56
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:58: prev->next = to_free->next;
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00113$:
;	src/linked_list.c:61: if (to_free == NULL) return false; 
	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00115$
	mov	dpl,a
	ret
00115$:
;	src/linked_list.c:62: if (to_free->buffer != NULL) 
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r6
	jz	00117$
;	src/linked_list.c:64: free(to_free->buffer);
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_free
00117$:
;	src/linked_list.c:66: free(to_free);
	mov	dptr,#_remove_from_buffer_list_to_free_65537_54
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_free
;	src/linked_list.c:67: return true; 
	mov	dpl,#0x01
;	src/linked_list.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'free_all_elems_from_list'
;------------------------------------------------------------
;sloc0                     Allocated with name '_free_all_elems_from_list_sloc0_1_0'
;list                      Allocated with name '_free_all_elems_from_list_list_65536_59'
;buffer_to_free            Allocated with name '_free_all_elems_from_list_buffer_to_free_65536_60'
;------------------------------------------------------------
;	src/linked_list.c:70: void free_all_elems_from_list(buffer_list_t *list)
;	-----------------------------------------
;	 function free_all_elems_from_list
;	-----------------------------------------
_free_all_elems_from_list:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_free_all_elems_from_list_list_65536_59
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:72: buffer_t *buffer_to_free = list->head;
	mov	dptr,#_free_all_elems_from_list_list_65536_59
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:73: while(list->head != NULL)
00103$:
	mov	dptr,#_free_all_elems_from_list_list_65536_59
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_free_all_elems_from_list_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_free_all_elems_from_list_sloc0_1_0 + 2),a
	mov	a,_free_all_elems_from_list_sloc0_1_0
	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
	jnz	00120$
	ret
00120$:
;	src/linked_list.c:75: list->head = list->head->next;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x08
	add	a,_free_all_elems_from_list_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
	mov	r1,a
	mov	r7,(_free_all_elems_from_list_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	src/linked_list.c:76: if (buffer_to_free->buffer != NULL)
	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_free_all_elems_from_list_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_free_all_elems_from_list_sloc0_1_0 + 1),a
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,_free_all_elems_from_list_sloc0_1_0
	orl	a,(_free_all_elems_from_list_sloc0_1_0 + 1)
	jz	00102$
;	src/linked_list.c:78: free(buffer_to_free->buffer);
	mov	r3,_free_all_elems_from_list_sloc0_1_0
	mov	r4,(_free_all_elems_from_list_sloc0_1_0 + 1)
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	push	ar7
	push	ar6
	push	ar5
	lcall	_free
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	src/linked_list.c:80: free(buffer_to_free);
	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_free
	pop	ar5
	pop	ar6
	pop	ar7
;	src/linked_list.c:81: buffer_to_free = list->head;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_free_all_elems_from_list_buffer_to_free_65536_60
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:83: }
	ljmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'll_length'
;------------------------------------------------------------
;list                      Allocated with name '_ll_length_list_65536_63'
;size                      Allocated with name '_ll_length_size_65536_64'
;curr                      Allocated with name '_ll_length_curr_65536_64'
;------------------------------------------------------------
;	src/linked_list.c:85: size_t ll_length(buffer_list_t *list)
;	-----------------------------------------
;	 function ll_length
;	-----------------------------------------
_ll_length:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ll_length_list_65536_63
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:88: buffer_t *curr = list->head;
	mov	dptr,#_ll_length_list_65536_63
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_ll_length_curr_65536_64
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:89: while(curr != NULL)
	mov	dptr,#_ll_length_size_65536_64
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	dptr,#_ll_length_curr_65536_64
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_ll_length_curr_65536_64
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00103$
;	src/linked_list.c:91: size++;
	inc	r6
	cjne	r6,#0x00,00116$
	inc	r7
00116$:
;	src/linked_list.c:92: curr = curr->next;
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_ll_length_curr_65536_64
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00103$:
;	src/linked_list.c:94: return size; 
	mov	dpl,r6
	mov	dph,r7
;	src/linked_list.c:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'll_get_elem'
;------------------------------------------------------------
;elem_num                  Allocated with name '_ll_get_elem_PARM_2'
;list                      Allocated with name '_ll_get_elem_list_65536_66'
;curr                      Allocated with name '_ll_get_elem_curr_65536_67'
;------------------------------------------------------------
;	src/linked_list.c:97: buffer_t* ll_get_elem(buffer_list_t *list, size_t elem_num)
;	-----------------------------------------
;	 function ll_get_elem
;	-----------------------------------------
_ll_get_elem:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ll_get_elem_list_65536_66
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:99: buffer_t *curr = list->head;
	mov	dptr,#_ll_get_elem_list_65536_66
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_ll_get_elem_curr_65536_67
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:100: while(curr != NULL && elem_num > 0)
	mov	dptr,#_ll_get_elem_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00102$:
	mov	dptr,#_ll_get_elem_curr_65536_67
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_ll_get_elem_curr_65536_67
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00104$
	mov	a,r6
	orl	a,r7
	jz	00104$
;	src/linked_list.c:102: curr = curr->next;
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_ll_get_elem_curr_65536_67
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/linked_list.c:103: elem_num--;
	dec	r6
	cjne	r6,#0xff,00122$
	dec	r7
00122$:
	sjmp	00102$
00104$:
;	src/linked_list.c:105: return curr;
	mov	dptr,#_ll_get_elem_curr_65536_67
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	src/linked_list.c:106: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
