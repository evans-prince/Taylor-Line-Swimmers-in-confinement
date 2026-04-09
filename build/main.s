	.arch armv8.5-a
	.build_version macos,  15, 0
	.text
	.align	2
	.globl __ZnwmPv
	.weak_definition __ZnwmPv
__ZnwmPv:
LFB85:
	sub	sp, sp, #16
LCFI0:
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
LCFI1:
	ret
LFE85:
	.align	2
	.globl __ZdlPvS_
	.weak_definition __ZdlPvS_
__ZdlPvS_:
LFB87:
	sub	sp, sp, #16
LCFI2:
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
LCFI3:
	ret
LFE87:
	.align	2
	.globl __ZSt21is_constant_evaluatedv
	.weak_definition __ZSt21is_constant_evaluatedv
__ZSt21is_constant_evaluatedv:
LFB103:
	mov	w0, 0
	ret
LFE103:
	.align	2
	.globl __ZNSt11char_traitsIcE6assignERcRKc
	.weak_definition __ZNSt11char_traitsIcE6assignERcRKc
__ZNSt11char_traitsIcE6assignERcRKc:
LFB289:
	stp	x29, x30, [sp, -32]!
LCFI4:
	mov	x29, sp
LCFI5:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L8
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	__ZSt12construct_atIcJRKcEQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S2_pispcl7declvalIT0_EEEEEPS2_S5_DpOS4_
	b	L10
L8:
	ldr	x0, [x29, 16]
	ldrsb	w1, [x0]
	ldr	x0, [x29, 24]
	strb	w1, [x0]
L10:
	nop
	ldp	x29, x30, [sp], 32
LCFI6:
	ret
LFE289:
	.align	2
	.globl __ZNSt11char_traitsIcE6lengthEPKc
	.weak_definition __ZNSt11char_traitsIcE6lengthEPKc
__ZNSt11char_traitsIcE6lengthEPKc:
LFB293:
	stp	x29, x30, [sp, -32]!
LCFI7:
	mov	x29, sp
LCFI8:
	str	x0, [x29, 24]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L13
	ldr	x0, [x29, 24]
	bl	__ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	b	L14
L13:
	ldr	x0, [x29, 24]
	bl	_strlen
	nop
L14:
	ldp	x29, x30, [sp], 32
LCFI9:
	ret
LFE293:
	.align	2
	.globl __ZNSt11char_traitsIcE4moveEPcPKcm
	.weak_definition __ZNSt11char_traitsIcE4moveEPcPKcm
__ZNSt11char_traitsIcE4moveEPcPKcm:
LFB295:
	stp	x29, x30, [sp, -48]!
LCFI10:
	mov	x29, sp
LCFI11:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 24]
	cmp	x0, 0
	bne	L16
	ldr	x0, [x29, 40]
	b	L17
L16:
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L19
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm
	b	L17
L19:
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_memmove
	nop
L17:
	ldp	x29, x30, [sp], 48
LCFI12:
	ret
LFE295:
	.align	2
	.globl __ZNSt11char_traitsIcE4copyEPcPKcm
	.weak_definition __ZNSt11char_traitsIcE4copyEPcPKcm
__ZNSt11char_traitsIcE4copyEPcPKcm:
LFB296:
	stp	x29, x30, [sp, -48]!
LCFI13:
	mov	x29, sp
LCFI14:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 24]
	cmp	x0, 0
	bne	L21
	ldr	x0, [x29, 40]
	b	L22
L21:
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L24
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm
	b	L22
L24:
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 32]
	mov	x3, x1
	mov	x1, x0
	ldr	x0, [x29, 24]
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	nop
L22:
	ldp	x29, x30, [sp], 48
LCFI15:
	ret
LFE296:
	.align	2
	.globl __ZNSt11char_traitsIcE6assignEPcmc
	.weak_definition __ZNSt11char_traitsIcE6assignEPcmc
__ZNSt11char_traitsIcE6assignEPcmc:
LFB297:
	stp	x29, x30, [sp, -48]!
LCFI16:
	mov	x29, sp
LCFI17:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	mov	w0, w2
	strb	w0, [x29, 31]
	ldr	x0, [x29, 32]
	cmp	x0, 0
	bne	L26
	ldr	x0, [x29, 40]
	b	L27
L26:
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L29
	ldrsb	w0, [x29, 31]
	mov	w2, w0
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZN9__gnu_cxx11char_traitsIcE6assignEPcmc
	b	L27
L29:
	ldrsb	w0, [x29, 31]
	ldr	x2, [x29, 32]
	mov	w1, w0
	ldr	x0, [x29, 40]
	bl	_memset
	nop
L27:
	ldp	x29, x30, [sp], 48
LCFI18:
	ret
LFE297:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev:
LFB1650:
	sub	sp, sp, #32
LCFI19:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	nop
	nop
	add	sp, sp, 32
LCFI20:
	ret
LFE1650:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EvQ26is_default_constructible_vIT1_E
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EvQ26is_default_constructible_vIT1_E
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EvQ26is_default_constructible_vIT1_E:
LFB1652:
	stp	x29, x30, [sp, -80]!
LCFI21:
	mov	x29, sp
LCFI22:
	str	x19, [sp, 16]
LCFI23:
	str	x0, [x29, 40]
	ldr	x19, [x29, 40]
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	mov	x1, x0
	add	x0, x29, 48
	str	x0, [x29, 56]
	nop
	nop
	add	x0, x29, 48
	mov	x2, x0
	mov	x0, x19
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_
	nop
	ldr	x0, [x29, 40]
	str	x0, [x29, 72]
	bl	__ZSt21is_constant_evaluatedv
	and	w0, w0, 1
	cmp	w0, 0
	beq	L36
	str	xzr, [x29, 64]
	b	L33
L34:
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 64]
	add	x0, x1, x0
	strb	wzr, [x0, 16]
	ldr	x0, [x29, 64]
	add	x0, x0, 1
	str	x0, [x29, 64]
L33:
	ldr	x0, [x29, 64]
	cmp	x0, 15
	bls	L34
L36:
	nop
	mov	x1, 0
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI24:
	ret
LFE1652:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
LLSDA1652:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1652-LLSDACSB1652
LLSDACSB1652:
LLSDACSE1652:
	.text
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
LFB1653:
	stp	x29, x30, [sp, -32]!
LCFI25:
	mov	x29, sp
LCFI26:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	add	x0, x0, 16
	bl	__ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc
	ldp	x29, x30, [sp], 32
LCFI27:
	ret
LFE1653:
	.align	2
	.globl __ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc
	.weak_definition __ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc
__ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc:
LFB1654:
	sub	sp, sp, #32
LCFI28:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	nop
	add	sp, sp, 32
LCFI29:
	ret
LFE1654:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_:
LFB1665:
	sub	sp, sp, #80
LCFI30:
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 24]
	str	x1, [sp, 72]
	str	x0, [sp, 64]
	ldr	x0, [sp, 72]
	str	x0, [sp, 56]
	ldr	x0, [sp, 64]
	str	x0, [sp, 48]
	nop
	nop
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0]
	nop
	add	sp, sp, 80
LCFI31:
	ret
LFE1665:
	.align	2
	.globl __ZZNSt7__cxx119to_stringEiENKUlPcmE_clES0_m
	.weak_definition __ZZNSt7__cxx119to_stringEiENKUlPcmE_clES0_m
__ZZNSt7__cxx119to_stringEiENKUlPcmE_clES0_m:
LFB1677:
	stp	x29, x30, [sp, -48]!
LCFI32:
	mov	x29, sp
LCFI33:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 32]
	mov	w1, 45
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldrb	w0, [x0]
	and	x0, x0, 255
	ldr	x1, [x29, 32]
	add	x3, x1, x0
	ldr	x0, [x29, 40]
	ldr	w1, [x0, 4]
	ldr	x0, [x29, 40]
	ldr	w0, [x0, 8]
	mov	w2, w0
	mov	x0, x3
	bl	__ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 48
LCFI34:
	ret
LFE1677:
	.align	2
	.globl __ZNSt7__cxx119to_stringEi
	.weak_definition __ZNSt7__cxx119to_stringEi
__ZNSt7__cxx119to_stringEi:
LFB1644:
	stp	x29, x30, [sp, -80]!
LCFI35:
	mov	x29, sp
LCFI36:
	str	x19, [sp, 16]
LCFI37:
	mov	x19, x8
	str	w0, [x29, 44]
	ldr	w0, [x29, 44]
	lsr	w0, w0, 31
	strb	w0, [x29, 75]
	ldrb	w0, [x29, 75]
	and	w0, w0, 1
	cmp	w0, 0
	beq	L48
	ldr	w0, [x29, 44]
	neg	w0, w0
	str	w0, [x29, 76]
	b	L49
L48:
	ldr	w0, [x29, 44]
	str	w0, [x29, 76]
L49:
	mov	w1, 10
	ldr	w0, [x29, 76]
	bl	__ZNSt8__detail14__to_chars_lenIjEEjT_i
	str	w0, [x29, 68]
	mov	x0, x19
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EvQ26is_default_constructible_vIT1_E
	ldrb	w1, [x29, 75]
	ldr	w0, [x29, 68]
	add	w0, w1, w0
	uxtw	x0, w0
	ldrb	w1, [x29, 75]
	strb	w1, [x29, 56]
	ldr	w1, [x29, 68]
	str	w1, [x29, 60]
	ldr	w1, [x29, 76]
	str	w1, [x29, 64]
	ldr	x2, [x29, 56]
	ldr	w1, [x29, 64]
	mov	x3, x1
	mov	x1, x0
	mov	x0, x19
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcmE_EEvmT_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI38:
	ret
LFE1644:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
LLSDA1644:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1644-LLSDACSB1644
LLSDACSB1644:
LLSDACSE1644:
	.text
	.align	2
	.globl __ZNSt8__detail14__to_chars_lenIjEEjT_i
	.weak_definition __ZNSt8__detail14__to_chars_lenIjEEjT_i
__ZNSt8__detail14__to_chars_lenIjEEjT_i:
LFB1679:
	sub	sp, sp, #48
LCFI39:
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 8]
	mul	w0, w0, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 8]
	ldr	w1, [sp, 40]
	mul	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 36]
	mul	w0, w1, w0
	uxtw	x0, w0
	str	x0, [sp, 24]
L57:
	ldr	w0, [sp, 8]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bcs	L52
	ldr	w0, [sp, 44]
	b	L53
L52:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bcs	L54
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	b	L53
L54:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bcs	L55
	ldr	w0, [sp, 44]
	add	w0, w0, 2
	b	L53
L55:
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bls	L56
	ldr	w0, [sp, 44]
	add	w0, w0, 3
	b	L53
L56:
	ldr	w1, [sp, 12]
	ldr	x0, [sp, 24]
	udiv	x0, x1, x0
	str	w0, [sp, 12]
	ldr	w0, [sp, 44]
	add	w0, w0, 4
	str	w0, [sp, 44]
	b	L57
L53:
	add	sp, sp, 48
LCFI40:
	ret
LFE1679:
	.align	2
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv:
LFB2979:
	stp	x29, x30, [sp, -48]!
LCFI41:
	mov	x29, sp
LCFI42:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 40]
	ldr	x0, [x29, 24]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	mov	x1, x0
	ldr	x0, [x29, 40]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L59
	brk #1000
L59:
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 48
LCFI43:
	ret
LFE2979:
	.zerofill __DATA,__bss,__ZStL8__ioinit,1,0
	.text
	.align	2
	.globl __ZSt3loge
	.weak_definition __ZSt3loge
__ZSt3loge:
LFB4512:
	stp	x29, x30, [sp, -32]!
LCFI44:
	mov	x29, sp
LCFI45:
	str	d0, [x29, 24]
	ldr	d0, [x29, 24]
	bl	_logl
	fmov	d31, d0
	fmov	d0, d31
	ldp	x29, x30, [sp], 32
LCFI46:
	ret
LFE4512:
	.cstring
	.align	3
lC1:
	.ascii "default\0"
	.text
	.align	2
	.globl __ZNSt13random_deviceC1Ev
	.weak_definition __ZNSt13random_deviceC1Ev
__ZNSt13random_deviceC1Ev:
LFB5217:
	stp	x29, x30, [sp, -96]!
LCFI47:
	mov	x29, sp
LCFI48:
	str	x19, [sp, 16]
LCFI49:
	str	x0, [x29, 40]
	add	x0, x29, 80
	str	x0, [x29, 88]
	nop
	nop
	add	x0, x29, 80
	add	x3, x29, 48
	mov	x2, x0
	adrp	x0, lC1@PAGE
	add	x1, x0, lC1@PAGEOFF;
	mov	x0, x3
LEHB0:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
LEHE0:
	add	x0, x29, 48
	mov	x1, x0
	ldr	x0, [x29, 40]
LEHB1:
	bl	__ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
LEHE1:
	add	x0, x29, 48
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	nop
	b	L69
L67:
	mov	x19, x0
	add	x0, x29, 48
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	x0, x19
	b	L70
L66:
L70:
	nop
LEHB2:
	bl	__Unwind_Resume
LEHE2:
L69:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
LCFI50:
	ret
LFE5217:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
LLSDA5217:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE5217-LLSDACSB5217
LLSDACSB5217:
	.uleb128 LEHB0-LFB5217
	.uleb128 LEHE0-LEHB0
	.uleb128 L66-LFB5217
	.uleb128 0
	.uleb128 LEHB1-LFB5217
	.uleb128 LEHE1-LEHB1
	.uleb128 L67-LFB5217
	.uleb128 0
	.uleb128 LEHB2-LFB5217
	.uleb128 LEHE2-LEHB2
	.uleb128 0
	.uleb128 0
LLSDACSE5217:
	.text
	.align	2
	.globl __ZNSt13random_deviceD1Ev
	.weak_definition __ZNSt13random_deviceD1Ev
__ZNSt13random_deviceD1Ev:
LFB5223:
	stp	x29, x30, [sp, -32]!
LCFI51:
	mov	x29, sp
LCFI52:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNSt13random_device7_M_finiEv
	nop
	ldp	x29, x30, [sp], 32
LCFI53:
	ret
LFE5223:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
LLSDA5223:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE5223-LLSDACSB5223
LLSDACSB5223:
LLSDACSE5223:
	.text
	.align	2
	.globl __ZNSt13random_deviceclEv
	.weak_definition __ZNSt13random_deviceclEv
__ZNSt13random_deviceclEv:
LFB5227:
	stp	x29, x30, [sp, -32]!
LCFI54:
	mov	x29, sp
LCFI55:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNSt13random_device9_M_getvalEv
	ldp	x29, x30, [sp], 32
LCFI56:
	ret
LFE5227:
	.const
	.align	3
__ZL2PI:
	.word	1413754136
	.word	1074340347
	.text
	.align	2
	.globl __ZN10TaylorLineD1Ev
	.weak_definition __ZN10TaylorLineD1Ev
__ZN10TaylorLineD1Ev:
LFB5931:
	stp	x29, x30, [sp, -32]!
LCFI57:
	mov	x29, sp
LCFI58:
	str	x0, [x29, 24]
	adrp	x0, __ZTV10TaylorLine@GOTPAGE
	ldr	x0, [x0, __ZTV10TaylorLine@GOTPAGEOFF]
	add	x1, x0, 16
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	bl	__ZNSt6vectorI4BeadSaIS0_EED1Ev
	nop
	ldp	x29, x30, [sp], 32
LCFI59:
	ret
LFE5931:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implD1Ev
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implD1Ev
__ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implD1Ev:
LFB5940:
	sub	sp, sp, #32
LCFI60:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	nop
	nop
	add	sp, sp, 32
LCFI61:
	ret
LFE5940:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EEC2Ev
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EEC2Ev
__ZNSt12_Vector_baseI4BeadSaIS0_EEC2Ev:
LFB5941:
	stp	x29, x30, [sp, -32]!
LCFI62:
	mov	x29, sp
LCFI63:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implC1EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS6_10value_typeEE6rebindIT_E5otherEE
	nop
	ldp	x29, x30, [sp], 32
LCFI64:
	ret
LFE5941:
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EEC1Ev
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EEC1Ev
__ZNSt6vectorI4BeadSaIS0_EEC1Ev:
LFB5944:
	stp	x29, x30, [sp, -32]!
LCFI65:
	mov	x29, sp
LCFI66:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EEC2Ev
	nop
	ldp	x29, x30, [sp], 32
LCFI67:
	ret
LFE5944:
	.align	2
	.globl __ZN10TaylorLineC1ERK16TaylorLineConfig
	.weak_definition __ZN10TaylorLineC1ERK16TaylorLineConfig
__ZN10TaylorLineC1ERK16TaylorLineConfig:
LFB5946:
	stp	x29, x30, [sp, -32]!
LCFI68:
	mov	x29, sp
LCFI69:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	adrp	x0, __ZTV10TaylorLine@GOTPAGE
	ldr	x0, [x0, __ZTV10TaylorLine@GOTPAGEOFF]
	add	x1, x0, 16
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	bl	__ZNSt6vectorI4BeadSaIS0_EEC1Ev
	ldr	x0, [x29, 16]
	ldr	w1, [x0]
	ldr	x0, [x29, 24]
	str	w1, [x0, 32]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 8]
	ldr	x0, [x29, 24]
	str	d31, [x0, 48]
	ldr	x0, [x29, 16]
	ldr	d30, [x0, 16]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 8]
	fmul	d31, d30, d31
	ldr	x0, [x29, 24]
	str	d31, [x0, 40]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 24]
	ldr	x0, [x29, 24]
	str	d31, [x0, 72]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 32]
	ldr	x0, [x29, 24]
	str	d31, [x0, 80]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 40]
	ldr	x0, [x29, 24]
	str	d31, [x0, 88]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 48]
	ldr	x0, [x29, 24]
	str	d31, [x0, 96]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 56]
	ldr	x0, [x29, 24]
	str	d31, [x0, 56]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 72]
	ldr	x0, [x29, 24]
	str	d31, [x0, 104]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 64]
	ldr	x0, [x29, 24]
	str	d31, [x0, 64]
	nop
	ldp	x29, x30, [sp], 32
LCFI70:
	ret
LFE5946:
	.align	2
	.globl __ZN10TaylorLine10initializeEv
	.weak_definition __ZN10TaylorLine10initializeEv
__ZN10TaylorLine10initializeEv:
LFB5947:
	stp	x29, x30, [sp, -96]!
LCFI71:
	mov	x29, sp
LCFI72:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	bl	__ZNSt6vectorI4BeadSaIS0_EE5clearEv
	str	wzr, [x29, 92]
	b	L80
L81:
	ldr	w0, [x29, 92]
	scvtf	d30, w0
	ldr	x0, [x29, 24]
	ldr	d31, [x0, 40]
	fmul	d31, d30, d31
	str	d31, [x29, 40]
	ldr	w0, [x29, 92]
	scvtf	d31, w0
	adrp	x0, lC2@PAGE
	ldr	d30, [x0, #lC2@PAGEOFF]
	fmul	d30, d31, d30
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 32]
	scvtf	d31, w0
	fdiv	d31, d30, d31
	fmov	d0, d31
	bl	_sin
	fmov	d30, d0
	adrp	x0, lC3@PAGE
	ldr	d31, [x0, #lC3@PAGEOFF]
	fmul	d31, d30, d31
	str	d31, [x29, 48]
	str	xzr, [x29, 56]
	str	xzr, [x29, 64]
	str	xzr, [x29, 72]
	str	xzr, [x29, 80]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	add	x1, x29, 40
	bl	__ZNSt6vectorI4BeadSaIS0_EE9push_backERKS0_
	ldr	w0, [x29, 92]
	add	w0, w0, 1
	str	w0, [x29, 92]
L80:
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 32]
	ldr	w1, [x29, 92]
	cmp	w1, w0
	blt	L81
	nop
	nop
	ldp	x29, x30, [sp], 96
LCFI73:
	ret
LFE5947:
	.align	2
	.globl __ZN10TaylorLine21computeInternalForcesEd
	.weak_definition __ZN10TaylorLine21computeInternalForcesEd
__ZN10TaylorLine21computeInternalForcesEd:
LFB5948:
	stp	x29, x30, [sp, -272]!
LCFI74:
	mov	x29, sp
LCFI75:
	str	d15, [sp, 16]
LCFI76:
	str	x0, [x29, 40]
	str	d0, [x29, 32]
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	str	x0, [x29, 256]
	ldr	x0, [x29, 256]
	bl	__ZNSt6vectorI4BeadSaIS0_EE5beginEv
	str	x0, [x29, 64]
	ldr	x0, [x29, 256]
	bl	__ZNSt6vectorI4BeadSaIS0_EE3endEv
	str	x0, [x29, 56]
	b	L83
L89:
	ldr	x0, [x29, 64]
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	str	xzr, [x0, 32]
	ldr	x0, [x29, 88]
	str	xzr, [x0, 40]
	ldr	x0, [x29, 64]
	add	x0, x0, 48
	str	x0, [x29, 64]
	nop
L83:
	add	x0, x29, 64
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x1, [x0]
	add	x0, x29, 56
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L89
	str	wzr, [x29, 268]
	b	L90
L91:
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 268]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d15, [x0]
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	ldrsw	x1, [x29, 268]
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d31, [x0]
	fsub	d31, d15, d31
	str	d31, [x29, 136]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 268]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d15, [x0, 8]
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	ldrsw	x1, [x29, 268]
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d31, [x0, 8]
	fsub	d31, d15, d31
	str	d31, [x29, 128]
	ldr	d31, [x29, 136]
	fmul	d30, d31, d31
	ldr	d31, [x29, 128]
	fmul	d31, d31, d31
	fadd	d31, d30, d31
	fmov	d0, d31
	bl	_sqrt
	fmov	d30, d0
	adrp	x0, lC4@PAGE
	ldr	d31, [x0, #lC4@PAGEOFF]
	fadd	d31, d30, d31
	str	d31, [x29, 120]
	ldr	x0, [x29, 40]
	ldr	d30, [x0, 80]
	ldr	x0, [x29, 40]
	ldr	d31, [x0, 40]
	ldr	d29, [x29, 120]
	fsub	d31, d29, d31
	fmul	d31, d30, d31
	str	d31, [x29, 112]
	ldr	d30, [x29, 112]
	ldr	d31, [x29, 136]
	fmul	d30, d30, d31
	ldr	d31, [x29, 120]
	fdiv	d31, d30, d31
	str	d31, [x29, 104]
	ldr	d30, [x29, 112]
	ldr	d31, [x29, 128]
	fmul	d30, d30, d31
	ldr	d31, [x29, 120]
	fdiv	d31, d30, d31
	str	d31, [x29, 96]
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	ldrsw	x1, [x29, 268]
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d30, [x0, 32]
	ldr	d31, [x29, 104]
	fadd	d31, d30, d31
	str	d31, [x0, 32]
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	ldrsw	x1, [x29, 268]
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d30, [x0, 40]
	ldr	d31, [x29, 96]
	fadd	d31, d30, d31
	str	d31, [x0, 40]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 268]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d30, [x0, 32]
	ldr	d31, [x29, 104]
	fsub	d31, d30, d31
	str	d31, [x0, 32]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 268]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d30, [x0, 40]
	ldr	d31, [x29, 96]
	fsub	d31, d30, d31
	str	d31, [x0, 40]
	ldr	w0, [x29, 268]
	add	w0, w0, 1
	str	w0, [x29, 268]
L90:
	ldr	x0, [x29, 40]
	ldr	w0, [x0, 32]
	sub	w0, w0, #1
	ldr	w1, [x29, 268]
	cmp	w1, w0
	blt	L91
	str	wzr, [x29, 264]
	b	L92
L93:
	ldr	x0, [x29, 40]
	ldr	d15, [x0, 72]
	ldr	x0, [x29, 40]
	ldr	d30, [x0, 56]
	ldr	d31, [x29, 32]
	fmul	d30, d30, d31
	ldr	w0, [x29, 264]
	add	w0, w0, 1
	scvtf	d31, w0
	fadd	d29, d31, d31
	ldr	x0, [x29, 40]
	ldr	w0, [x0, 32]
	scvtf	d31, w0
	fdiv	d31, d29, d31
	fadd	d31, d30, d31
	adrp	x0, lC2@PAGE
	ldr	d30, [x0, #lC2@PAGEOFF]
	fmul	d30, d31, d30
	ldr	x0, [x29, 40]
	ldr	d31, [x0, 64]
	fadd	d31, d30, d31
	fmov	d0, d31
	bl	_sin
	fmov	d31, d0
	fmul	d31, d15, d31
	str	d31, [x29, 248]
	ldr	x0, [x29, 40]
	ldr	d31, [x0, 40]
	ldr	d30, [x29, 248]
	fmul	d31, d30, d31
	str	d31, [x29, 240]
	ldr	d0, [x29, 240]
	bl	_cos
	str	d0, [x29, 232]
	ldr	d0, [x29, 240]
	bl	_sin
	str	d0, [x29, 224]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 264]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d15, [x0]
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	ldrsw	x1, [x29, 264]
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d31, [x0]
	fsub	d31, d15, d31
	str	d31, [x29, 216]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 264]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d15, [x0, 8]
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	ldrsw	x1, [x29, 264]
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d31, [x0, 8]
	fsub	d31, d15, d31
	str	d31, [x29, 208]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 264]
	add	w0, w0, 2
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d15, [x0]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 264]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d31, [x0]
	fsub	d31, d15, d31
	str	d31, [x29, 200]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 264]
	add	w0, w0, 2
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d15, [x0, 8]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 264]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d31, [x0, 8]
	fsub	d31, d15, d31
	str	d31, [x29, 192]
	ldr	d30, [x29, 232]
	ldr	d31, [x29, 216]
	fmul	d30, d30, d31
	ldr	d29, [x29, 224]
	ldr	d31, [x29, 208]
	fmul	d31, d29, d31
	fsub	d31, d30, d31
	str	d31, [x29, 184]
	ldr	d30, [x29, 224]
	ldr	d31, [x29, 216]
	fmul	d30, d30, d31
	ldr	d29, [x29, 232]
	ldr	d31, [x29, 208]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	str	d31, [x29, 176]
	ldr	d30, [x29, 200]
	ldr	d31, [x29, 184]
	fsub	d31, d30, d31
	str	d31, [x29, 168]
	ldr	d30, [x29, 192]
	ldr	d31, [x29, 176]
	fsub	d31, d30, d31
	str	d31, [x29, 160]
	ldr	d30, [x29, 232]
	ldr	d31, [x29, 168]
	fmul	d30, d30, d31
	ldr	d29, [x29, 224]
	ldr	d31, [x29, 160]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	str	d31, [x29, 152]
	ldr	d31, [x29, 224]
	fneg	d30, d31
	ldr	d31, [x29, 168]
	fmul	d30, d30, d31
	ldr	d29, [x29, 232]
	ldr	d31, [x29, 160]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	str	d31, [x29, 144]
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	ldrsw	x1, [x29, 264]
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d30, [x0, 32]
	ldr	x1, [x29, 40]
	ldr	d31, [x1, 88]
	fneg	d29, d31
	ldr	d31, [x29, 152]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	str	d31, [x0, 32]
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	ldrsw	x1, [x29, 264]
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d30, [x0, 40]
	ldr	x1, [x29, 40]
	ldr	d31, [x1, 88]
	fneg	d29, d31
	ldr	d31, [x29, 144]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	str	d31, [x0, 40]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 264]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d30, [x0, 32]
	ldr	x1, [x29, 40]
	ldr	d29, [x1, 88]
	ldr	d28, [x29, 168]
	ldr	d31, [x29, 152]
	fadd	d31, d28, d31
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	str	d31, [x0, 32]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 264]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d30, [x0, 40]
	ldr	x1, [x29, 40]
	ldr	d29, [x1, 88]
	ldr	d28, [x29, 160]
	ldr	d31, [x29, 144]
	fadd	d31, d28, d31
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	str	d31, [x0, 40]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 264]
	add	w0, w0, 2
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d30, [x0, 32]
	ldr	x1, [x29, 40]
	ldr	d31, [x1, 88]
	fneg	d29, d31
	ldr	d31, [x29, 168]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	str	d31, [x0, 32]
	ldr	x0, [x29, 40]
	add	x2, x0, 8
	ldr	w0, [x29, 264]
	add	w0, w0, 2
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEixEm
	ldr	d30, [x0, 40]
	ldr	x1, [x29, 40]
	ldr	d31, [x1, 88]
	fneg	d29, d31
	ldr	d31, [x29, 160]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	str	d31, [x0, 40]
	ldr	w0, [x29, 264]
	add	w0, w0, 1
	str	w0, [x29, 264]
L92:
	ldr	x0, [x29, 40]
	ldr	w0, [x0, 32]
	sub	w0, w0, #2
	ldr	w1, [x29, 264]
	cmp	w1, w0
	blt	L93
	nop
	nop
	ldr	d15, [sp, 16]
	ldp	x29, x30, [sp], 272
LCFI77:
	ret
LFE5948:
	.align	2
	.globl __ZN10TaylorLine16updateVelocitiesEdb
	.weak_definition __ZN10TaylorLine16updateVelocitiesEdb
__ZN10TaylorLine16updateVelocitiesEdb:
LFB5952:
	stp	x29, x30, [sp, -112]!
LCFI78:
	mov	x29, sp
LCFI79:
	str	x0, [x29, 40]
	str	d0, [x29, 32]
	mov	w0, w1
	strb	w0, [x29, 31]
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	bl	__ZNSt6vectorI4BeadSaIS0_EE5beginEv
	str	x0, [x29, 56]
	ldr	x0, [x29, 104]
	bl	__ZNSt6vectorI4BeadSaIS0_EE3endEv
	str	x0, [x29, 48]
	b	L95
L101:
	ldr	x0, [x29, 56]
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	ldr	d30, [x0, 32]
	ldr	x0, [x29, 40]
	ldr	d31, [x0, 96]
	fdiv	d31, d30, d31
	str	d31, [x29, 88]
	ldr	x0, [x29, 96]
	ldr	d30, [x0, 40]
	ldr	x0, [x29, 40]
	ldr	d31, [x0, 96]
	fdiv	d31, d30, d31
	str	d31, [x29, 80]
	ldr	x0, [x29, 96]
	ldr	d30, [x0, 16]
	ldr	d29, [x29, 88]
	ldr	d31, [x29, 32]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	ldr	x0, [x29, 96]
	str	d31, [x0, 16]
	ldr	x0, [x29, 96]
	ldr	d30, [x0, 24]
	ldr	d29, [x29, 80]
	ldr	d31, [x29, 32]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	ldr	x0, [x29, 96]
	str	d31, [x0, 24]
	ldr	x0, [x29, 56]
	add	x0, x0, 48
	str	x0, [x29, 56]
	nop
L95:
	add	x0, x29, 56
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldr	x1, [x0]
	add	x0, x29, 48
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L101
	nop
	nop
	ldp	x29, x30, [sp], 112
LCFI80:
	ret
LFE5952:
	.align	2
	.globl __ZN10TaylorLine15updatePositionsEd
	.weak_definition __ZN10TaylorLine15updatePositionsEd
__ZN10TaylorLine15updatePositionsEd:
LFB5953:
	stp	x29, x30, [sp, -80]!
LCFI81:
	mov	x29, sp
LCFI82:
	str	x0, [x29, 24]
	str	d0, [x29, 16]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	bl	__ZNSt6vectorI4BeadSaIS0_EE5beginEv
	str	x0, [x29, 40]
	ldr	x0, [x29, 72]
	bl	__ZNSt6vectorI4BeadSaIS0_EE3endEv
	str	x0, [x29, 32]
	b	L103
L109:
	ldr	x0, [x29, 40]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldr	d30, [x0]
	ldr	x0, [x29, 64]
	ldr	d29, [x0, 16]
	ldr	d31, [x29, 16]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	ldr	x0, [x29, 64]
	str	d31, [x0]
	ldr	x0, [x29, 64]
	ldr	d30, [x0, 8]
	ldr	x0, [x29, 64]
	ldr	d29, [x0, 24]
	ldr	d31, [x29, 16]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	ldr	x0, [x29, 64]
	str	d31, [x0, 8]
	ldr	x0, [x29, 40]
	add	x0, x0, 48
	str	x0, [x29, 40]
	nop
L103:
	add	x0, x29, 40
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x1, [x0]
	add	x0, x29, 32
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L109
	nop
	nop
	ldp	x29, x30, [sp], 80
LCFI83:
	ret
LFE5953:
	.align	2
	.globl __ZSt3powIidEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
	.weak_definition __ZSt3powIidEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
__ZSt3powIidEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_:
LFB5964:
	stp	x29, x30, [sp, -32]!
LCFI84:
	mov	x29, sp
LCFI85:
	str	w0, [x29, 28]
	str	d0, [x29, 16]
	ldr	w0, [x29, 28]
	scvtf	d31, w0
	ldr	d1, [x29, 16]
	fmov	d0, d31
	bl	_pow
	fmov	d31, d0
	fmov	d0, d31
	ldp	x29, x30, [sp], 32
LCFI86:
	ret
LFE5964:
	.align	2
	.globl __ZN10Simulation17applyStericForcesEv
	.weak_definition __ZN10Simulation17applyStericForcesEv
__ZN10Simulation17applyStericForcesEv:
LFB5963:
	stp	x29, x30, [sp, -272]!
LCFI87:
	mov	x29, sp
LCFI88:
	str	x19, [sp, 16]
LCFI89:
	str	x0, [x29, 40]
	fmov	d31, 1.0e+0
	str	d31, [x29, 256]
	mov	x0, 140737488355328
	movk	x0, 0x402b, lsl 48
	fmov	d31, x0
	str	d31, [x29, 248]
	mov	x0, 6148914691236517205
	movk	x0, 0x3fc5, lsl 48
	fmov	d0, x0
	mov	w0, 2
	bl	__ZSt3powIidEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
	fmov	d30, d0
	ldr	d31, [x29, 256]
	fmul	d31, d31, d30
	str	d31, [x29, 240]
	ldr	d31, [x29, 240]
	fmul	d31, d31, d31
	str	d31, [x29, 232]
	str	wzr, [x29, 268]
	b	L113
L132:
	ldr	w0, [x29, 268]
	add	w0, w0, 1
	str	w0, [x29, 264]
	b	L114
L131:
	ldr	x0, [x29, 40]
	ldrsw	x1, [x29, 268]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EEixEm
	add	x0, x0, 8
	str	x0, [x29, 224]
	ldr	x0, [x29, 224]
	bl	__ZNSt6vectorI4BeadSaIS0_EE5beginEv
	str	x0, [x29, 80]
	ldr	x0, [x29, 224]
	bl	__ZNSt6vectorI4BeadSaIS0_EE3endEv
	str	x0, [x29, 72]
	b	L115
L130:
	ldr	x0, [x29, 80]
	str	x0, [x29, 216]
	ldr	x0, [x29, 40]
	ldrsw	x1, [x29, 264]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EEixEm
	add	x0, x0, 8
	str	x0, [x29, 208]
	ldr	x0, [x29, 208]
	bl	__ZNSt6vectorI4BeadSaIS0_EE5beginEv
	str	x0, [x29, 64]
	ldr	x0, [x29, 208]
	bl	__ZNSt6vectorI4BeadSaIS0_EE3endEv
	str	x0, [x29, 56]
	b	L117
L125:
	ldr	x0, [x29, 64]
	str	x0, [x29, 200]
	ldr	x0, [x29, 216]
	ldr	d30, [x0]
	ldr	x0, [x29, 200]
	ldr	d31, [x0]
	fsub	d31, d30, d31
	str	d31, [x29, 192]
	ldr	x0, [x29, 216]
	ldr	d30, [x0, 8]
	ldr	x0, [x29, 200]
	ldr	d31, [x0, 8]
	fsub	d31, d30, d31
	str	d31, [x29, 184]
	ldr	d31, [x29, 192]
	fmul	d30, d31, d31
	ldr	d31, [x29, 184]
	fmul	d31, d31, d31
	fadd	d31, d30, d31
	str	d31, [x29, 176]
	ldr	d0, [x29, 176]
	bl	_sqrt
	str	d0, [x29, 168]
	ldr	d30, [x29, 176]
	ldr	d31, [x29, 232]
	fcmpe	d30, d31
	bmi	L133
	b	L119
L133:
	ldr	d31, [x29, 168]
	mov	x0, 140737488355328
	movk	x0, 0x402b, lsl 48
	fmov	d30, x0
	fdiv	d31, d30, d31
	str	d31, [x29, 160]
	mov	w0, 3
	ldr	d0, [x29, 176]
	bl	__ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
	fmov	d30, d0
	fmov	d31, 1.0e+0
	fdiv	d31, d31, d30
	str	d31, [x29, 152]
	ldr	d31, [x29, 152]
	fmul	d31, d31, d31
	str	d31, [x29, 144]
	ldr	d31, [x29, 160]
	mov	x0, 4631952216750555136
	fmov	d30, x0
	fmul	d30, d31, d30
	ldr	d29, [x29, 152]
	fmov	d31, 5.0e-1
	fmul	d31, d29, d31
	ldr	d29, [x29, 144]
	fsub	d31, d29, d31
	fmul	d31, d30, d31
	str	d31, [x29, 136]
	ldr	d31, [x29, 168]
	ldr	d30, [x29, 192]
	fdiv	d31, d30, d31
	ldr	d30, [x29, 136]
	fmul	d31, d30, d31
	str	d31, [x29, 128]
	ldr	d31, [x29, 168]
	ldr	d30, [x29, 184]
	fdiv	d31, d30, d31
	ldr	d30, [x29, 136]
	fmul	d31, d30, d31
	str	d31, [x29, 120]
	ldr	x0, [x29, 216]
	ldr	d30, [x0, 32]
	ldr	d31, [x29, 128]
	fadd	d31, d30, d31
	ldr	x0, [x29, 216]
	str	d31, [x0, 32]
	ldr	x0, [x29, 216]
	ldr	d30, [x0, 40]
	ldr	d31, [x29, 120]
	fadd	d31, d30, d31
	ldr	x0, [x29, 216]
	str	d31, [x0, 40]
	ldr	x0, [x29, 200]
	ldr	d30, [x0, 32]
	ldr	d31, [x29, 128]
	fsub	d31, d30, d31
	ldr	x0, [x29, 200]
	str	d31, [x0, 32]
	ldr	x0, [x29, 200]
	ldr	d30, [x0, 40]
	ldr	d31, [x29, 120]
	fsub	d31, d30, d31
	ldr	x0, [x29, 200]
	str	d31, [x0, 40]
L119:
	ldr	x0, [x29, 64]
	add	x0, x0, 48
	str	x0, [x29, 64]
	nop
L117:
	add	x0, x29, 64
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	ldr	x1, [x0]
	add	x0, x29, 56
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L125
	ldr	x0, [x29, 80]
	add	x0, x0, 48
	str	x0, [x29, 80]
	nop
L115:
	add	x0, x29, 80
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	ldr	x1, [x0]
	add	x0, x29, 72
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L130
	ldr	w0, [x29, 264]
	add	w0, w0, 1
	str	w0, [x29, 264]
L114:
	ldrsw	x19, [x29, 264]
	ldr	x0, [x29, 40]
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE4sizeEv
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L131
	ldr	w0, [x29, 268]
	add	w0, w0, 1
	str	w0, [x29, 268]
L113:
	ldrsw	x19, [x29, 268]
	ldr	x0, [x29, 40]
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE4sizeEv
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L132
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 272
LCFI90:
	ret
LFE5963:
	.align	2
	.globl __ZN10Simulation22handleCircularBoundaryEv
	.weak_definition __ZN10Simulation22handleCircularBoundaryEv
__ZN10Simulation22handleCircularBoundaryEv:
LFB5965:
	stp	x29, x30, [sp, -160]!
LCFI91:
	mov	x29, sp
LCFI92:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 152]
	ldr	x0, [x29, 152]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE5beginEv
	str	x0, [x29, 56]
	ldr	x0, [x29, 152]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE3endEv
	str	x0, [x29, 48]
	b	L135
L152:
	ldr	x0, [x29, 56]
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	add	x0, x0, 8
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	bl	__ZNSt6vectorI4BeadSaIS0_EE5beginEv
	str	x0, [x29, 40]
	ldr	x0, [x29, 136]
	bl	__ZNSt6vectorI4BeadSaIS0_EE3endEv
	str	x0, [x29, 32]
	b	L137
L147:
	ldr	x0, [x29, 40]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	ldr	d30, [x0]
	ldr	x0, [x29, 128]
	ldr	d31, [x0]
	fmul	d30, d30, d31
	ldr	x0, [x29, 128]
	ldr	d29, [x0, 8]
	ldr	x0, [x29, 128]
	ldr	d31, [x0, 8]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	fmov	d0, d31
	bl	_sqrt
	str	d0, [x29, 120]
	ldr	x0, [x29, 24]
	ldr	d31, [x0, 24]
	ldr	d30, [x29, 120]
	fcmpe	d30, d31
	bgt	L153
	b	L139
L153:
	ldr	x0, [x29, 128]
	ldr	d30, [x0]
	ldr	d31, [x29, 120]
	fdiv	d31, d30, d31
	str	d31, [x29, 112]
	ldr	x0, [x29, 128]
	ldr	d30, [x0, 8]
	ldr	d31, [x29, 120]
	fdiv	d31, d30, d31
	str	d31, [x29, 104]
	ldr	x0, [x29, 128]
	ldr	d30, [x0, 16]
	ldr	d31, [x29, 112]
	fmul	d30, d30, d31
	ldr	x0, [x29, 128]
	ldr	d29, [x0, 24]
	ldr	d31, [x29, 104]
	fmul	d31, d29, d31
	fadd	d31, d30, d31
	str	d31, [x29, 96]
	ldr	d31, [x29, 96]
	fcmpe	d31, #0.0
	bgt	L154
	b	L141
L154:
	ldr	x0, [x29, 128]
	ldr	d30, [x0, 16]
	ldr	d31, [x29, 96]
	fadd	d29, d31, d31
	ldr	d31, [x29, 112]
	fmul	d31, d29, d31
	fsub	d31, d30, d31
	ldr	x0, [x29, 128]
	str	d31, [x0, 16]
	ldr	x0, [x29, 128]
	ldr	d30, [x0, 24]
	ldr	d31, [x29, 96]
	fadd	d29, d31, d31
	ldr	d31, [x29, 104]
	fmul	d31, d29, d31
	fsub	d31, d30, d31
	ldr	x0, [x29, 128]
	str	d31, [x0, 24]
L141:
	ldr	x0, [x29, 24]
	ldr	d31, [x0, 24]
	adrp	x0, lC3@PAGE
	ldr	d30, [x0, #lC3@PAGEOFF]
	fsub	d30, d31, d30
	ldr	d31, [x29, 112]
	fmul	d31, d30, d31
	ldr	x0, [x29, 128]
	str	d31, [x0]
	ldr	x0, [x29, 24]
	ldr	d31, [x0, 24]
	adrp	x0, lC3@PAGE
	ldr	d30, [x0, #lC3@PAGEOFF]
	fsub	d30, d31, d30
	ldr	d31, [x29, 104]
	fmul	d31, d30, d31
	ldr	x0, [x29, 128]
	str	d31, [x0, 8]
L139:
	ldr	x0, [x29, 40]
	add	x0, x0, 48
	str	x0, [x29, 40]
	nop
L137:
	add	x0, x29, 40
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	ldr	x1, [x0]
	add	x0, x29, 32
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L147
	ldr	x0, [x29, 56]
	add	x0, x0, 112
	str	x0, [x29, 56]
	nop
L135:
	add	x0, x29, 56
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldr	x1, [x0]
	add	x0, x29, 48
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L152
	nop
	nop
	ldp	x29, x30, [sp], 160
LCFI93:
	ret
LFE5965:
	.const
	.align	2
__ZL12NUM_SWIMMERS:
	.word	100
	.align	3
__ZL6RADIUS:
	.word	0
	.word	1079574528
	.align	3
__ZL10TOTAL_TIME:
	.word	0
	.word	1079574528
	.align	3
__ZL2DT:
	.word	-755914244
	.word	1062232653
	.align	2
__ZL16SAVE_EVERY_STEPS:
	.word	500
	.globl _rd
	.zerofill __DATA,__common,_rd,2504,3
	.globl _gen
	.zerofill __DATA,__common,_gen,2504,3
	.cstring
	.align	3
lC5:
	.ascii "Initializing \0"
	.align	3
lC6:
	.ascii " swimmers , with random initial positions and same frequency\0"
	.align	3
lC7:
	.ascii ".\0"
	.align	3
lC8:
	.ascii "WARNING: Could only place \0"
	.align	3
lC9:
	.ascii " swimmers without overlap.\0"
	.align	3
lC10:
	.ascii "Initialization Complete.\0"
	.text
	.align	2
	.globl __Z15initializeSwarmR10Simulation
__Z15initializeSwarmR10Simulation:
LFB5969:
	sub	sp, sp, #560
LCFI94:
	stp	x29, x30, [sp]
LCFI95:
	mov	x29, sp
LCFI96:
	str	x19, [sp, 16]
LCFI97:
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE5clearEv
	ldr	x0, [x29, 40]
	mov	x1, 4636737291354636288
	fmov	d31, x1
	str	d31, [x0, 24]
	adrp	x0, lC5@PAGE
	add	x1, x0, lC5@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
LEHB3:
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	w1, 100
	bl	__ZNSolsEi
	mov	x2, x0
	adrp	x0, lC6@PAGE
	add	x1, x0, lC6@PAGEOFF;
	mov	x0, x2
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
	add	x0, x29, 336
	fmov	d1, 1.0e+0
	movi	d0, #0
	bl	__ZNSt25uniform_real_distributionIdEC1Edd
	str	wzr, [x29, 556]
	str	wzr, [x29, 552]
	b	L156
L197:
	ldr	w0, [x29, 556]
	add	w0, w0, 1
	str	w0, [x29, 556]
	adrp	x0, lC0@PAGE
	add	x1, x0, lC0@PAGEOFF;
	add	x0, x29, 56
	ldr	q26, [x1]
	ldr	q27, [x1, 16]
	ldr	q28, [x1, 32]
	ldr	q29, [x1, 48]
	ldr	q30, [x1, 64]
	ldr	q31, [x1, 80]
	ldr	x1, [x1, 96]
	str	q26, [x0]
	str	q27, [x0, 16]
	str	q28, [x0, 32]
	str	q29, [x0, 48]
	str	q30, [x0, 64]
	str	q31, [x0, 80]
	str	x1, [x0, 96]
	adrp	x0, lC11@PAGE
	ldr	d31, [x0, #lC11@PAGEOFF]
	str	d31, [x29, 112]
	add	x2, x29, 336
	adrp	x0, _gen@PAGE
	add	x1, x0, _gen@PAGEOFF;
	mov	x0, x2
	bl	__ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEdRT_
LEHE3:
	fmov	d31, d0
	fadd	d31, d31, d31
	adrp	x0, lC12@PAGE
	ldr	d30, [x0, #lC12@PAGEOFF]
	fmul	d31, d31, d30
	str	d31, [x29, 120]
	add	x1, x29, 56
	add	x0, x29, 160
	bl	__ZN10TaylorLineC1ERK16TaylorLineConfig
	add	x0, x29, 160
LEHB4:
	bl	__ZN10TaylorLine10initializeEv
	ldr	w0, [x29, 192]
	sub	w0, w0, #1
	scvtf	d30, w0
	ldr	d31, [x29, 200]
	fmul	d30, d30, d31
	fmov	d31, 2.0e+0
	fdiv	d31, d30, d31
	str	d31, [x29, 528]
	mov	x0, 4636737291354636288
	fmov	d30, x0
	ldr	d31, [x29, 528]
	fsub	d30, d30, d31
	fmov	d31, 2.0e+0
	fsub	d31, d30, d31
	str	d31, [x29, 544]
	ldr	d31, [x29, 544]
	fcmpe	d31, #0.0
	bmi	L201
	b	L159
L201:
	fmov	d31, 1.0e+0
	str	d31, [x29, 544]
L159:
	add	x2, x29, 336
	adrp	x0, _gen@PAGE
	add	x1, x0, _gen@PAGEOFF;
	mov	x0, x2
	bl	__ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEdRT_
	fmov	d31, d0
	fadd	d30, d31, d31
	fmov	d31, 1.0e+0
	fsub	d31, d30, d31
	ldr	d30, [x29, 544]
	fmul	d31, d30, d31
	str	d31, [x29, 520]
	add	x2, x29, 336
	adrp	x0, _gen@PAGE
	add	x1, x0, _gen@PAGEOFF;
	mov	x0, x2
	bl	__ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEdRT_
	fmov	d31, d0
	fadd	d30, d31, d31
	fmov	d31, 1.0e+0
	fsub	d31, d30, d31
	ldr	d30, [x29, 544]
	fmul	d31, d30, d31
	str	d31, [x29, 512]
	ldr	d31, [x29, 520]
	fmul	d30, d31, d31
	ldr	d31, [x29, 512]
	fmul	d31, d31, d31
	fadd	d31, d30, d31
	str	d31, [x29, 504]
	ldr	d31, [x29, 544]
	fmul	d31, d31, d31
	ldr	d30, [x29, 504]
	fcmpe	d30, d31
	bgt	L159
	add	x0, x29, 160
	add	x0, x0, 8
	str	x0, [x29, 496]
	ldr	x0, [x29, 496]
	bl	__ZNSt6vectorI4BeadSaIS0_EE5beginEv
	str	x0, [x29, 328]
	ldr	x0, [x29, 496]
	bl	__ZNSt6vectorI4BeadSaIS0_EE3endEv
	str	x0, [x29, 320]
	b	L160
L166:
	ldr	x0, [x29, 328]
	str	x0, [x29, 416]
	ldr	x0, [x29, 416]
	ldr	d30, [x0]
	ldr	d29, [x29, 520]
	ldr	d31, [x29, 528]
	fsub	d31, d29, d31
	fadd	d31, d30, d31
	ldr	x0, [x29, 416]
	str	d31, [x0]
	ldr	x0, [x29, 416]
	ldr	d30, [x0, 8]
	ldr	d31, [x29, 512]
	fadd	d31, d30, d31
	ldr	x0, [x29, 416]
	str	d31, [x0, 8]
	ldr	x0, [x29, 328]
	add	x0, x0, 48
	str	x0, [x29, 328]
	nop
L160:
	add	x0, x29, 328
	str	x0, [x29, 408]
	ldr	x0, [x29, 408]
	ldr	x1, [x0]
	add	x0, x29, 320
	str	x0, [x29, 400]
	ldr	x0, [x29, 400]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L166
	strb	wzr, [x29, 543]
	adrp	x0, lC13@PAGE
	ldr	d31, [x0, #lC13@PAGEOFF]
	str	d31, [x29, 488]
	ldr	x0, [x29, 40]
	str	x0, [x29, 480]
	ldr	x0, [x29, 480]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE5beginEv
	str	x0, [x29, 312]
	ldr	x0, [x29, 480]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE3endEv
	str	x0, [x29, 304]
	b	L167
L194:
	ldr	x0, [x29, 312]
	str	x0, [x29, 472]
	ldr	x0, [x29, 472]
	add	x0, x0, 8
	str	x0, [x29, 464]
	ldr	x0, [x29, 464]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE5beginEv
	str	x0, [x29, 296]
	ldr	x0, [x29, 464]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE3endEv
	str	x0, [x29, 288]
	b	L169
L187:
	ldr	x0, [x29, 296]
	str	x0, [x29, 456]
	add	x0, x29, 160
	add	x0, x0, 8
	str	x0, [x29, 448]
	ldr	x0, [x29, 448]
	bl	__ZNSt6vectorI4BeadSaIS0_EE5beginEv
	str	x0, [x29, 280]
	ldr	x0, [x29, 448]
	bl	__ZNSt6vectorI4BeadSaIS0_EE3endEv
	str	x0, [x29, 272]
	b	L171
L180:
	ldr	x0, [x29, 280]
	str	x0, [x29, 440]
	ldr	x0, [x29, 456]
	ldr	d30, [x0]
	ldr	x0, [x29, 440]
	ldr	d31, [x0]
	fsub	d31, d30, d31
	str	d31, [x29, 432]
	ldr	x0, [x29, 456]
	ldr	d30, [x0, 8]
	ldr	x0, [x29, 440]
	ldr	d31, [x0, 8]
	fsub	d31, d30, d31
	str	d31, [x29, 424]
	ldr	d31, [x29, 432]
	fmul	d30, d31, d31
	ldr	d31, [x29, 424]
	fmul	d31, d31, d31
	fadd	d31, d30, d31
	ldr	d30, [x29, 488]
	fcmpe	d30, d31
	bgt	L202
	b	L203
L202:
	mov	w0, 1
	strb	w0, [x29, 543]
	b	L175
L203:
	ldr	x0, [x29, 280]
	add	x0, x0, 48
	str	x0, [x29, 280]
	nop
L171:
	add	x0, x29, 280
	str	x0, [x29, 392]
	ldr	x0, [x29, 392]
	ldr	x1, [x0]
	add	x0, x29, 272
	str	x0, [x29, 384]
	ldr	x0, [x29, 384]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L180
L175:
	ldrb	w0, [x29, 543]
	and	w0, w0, 1
	cmp	w0, 0
	bne	L205
	ldr	x0, [x29, 296]
	add	x0, x0, 48
	str	x0, [x29, 296]
	nop
L169:
	add	x0, x29, 296
	str	x0, [x29, 376]
	ldr	x0, [x29, 376]
	ldr	x1, [x0]
	add	x0, x29, 288
	str	x0, [x29, 368]
	ldr	x0, [x29, 368]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L187
	b	L182
L205:
	nop
L182:
	ldrb	w0, [x29, 543]
	and	w0, w0, 1
	cmp	w0, 0
	bne	L206
	ldr	x0, [x29, 312]
	add	x0, x0, 112
	str	x0, [x29, 312]
	nop
L167:
	add	x0, x29, 312
	str	x0, [x29, 360]
	ldr	x0, [x29, 360]
	ldr	x1, [x0]
	add	x0, x29, 304
	str	x0, [x29, 352]
	ldr	x0, [x29, 352]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L194
	b	L189
L206:
	nop
L189:
	ldrb	w0, [x29, 543]
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L195
	ldr	x0, [x29, 40]
	add	x1, x29, 160
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE9push_backERKS0_
	ldr	w0, [x29, 552]
	add	w0, w0, 1
	str	w0, [x29, 552]
	ldr	w1, [x29, 552]
	mov	w0, 10
	sdiv	w2, w1, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w0, w1, w0
	cmp	w0, 0
	bne	L195
	adrp	x0, lC7@PAGE
	add	x1, x0, lC7@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
LEHE4:
L195:
	add	x0, x29, 160
	bl	__ZN10TaylorLineD1Ev
L156:
	ldr	w0, [x29, 552]
	cmp	w0, 99
	bgt	L196
	ldr	w1, [x29, 556]
	mov	w0, 34463
	movk	w0, 0x1, lsl 16
	cmp	w1, w0
	ble	L197
L196:
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
LEHB5:
	bl	__ZNSolsEPFRSoS_E
	ldr	w0, [x29, 552]
	cmp	w0, 99
	bgt	L198
	adrp	x0, lC8@PAGE
	add	x1, x0, lC8@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	w1, [x29, 552]
	bl	__ZNSolsEi
	mov	x2, x0
	adrp	x0, lC9@PAGE
	add	x1, x0, lC9@PAGEOFF;
	mov	x0, x2
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
L198:
	adrp	x0, lC10@PAGE
	add	x1, x0, lC10@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
	b	L204
L200:
	mov	x19, x0
	add	x0, x29, 160
	bl	__ZN10TaylorLineD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LEHE5:
L204:
	ldp	x29, x30, [sp]
	ldr	x19, [sp, 16]
	add	sp, sp, 560
LCFI98:
	ret
LFE5969:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
LLSDA5969:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE5969-LLSDACSB5969
LLSDACSB5969:
	.uleb128 LEHB3-LFB5969
	.uleb128 LEHE3-LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB4-LFB5969
	.uleb128 LEHE4-LEHB4
	.uleb128 L200-LFB5969
	.uleb128 0
	.uleb128 LEHB5-LFB5969
	.uleb128 LEHE5-LEHB5
	.uleb128 0
	.uleb128 0
LLSDACSE5969:
	.text
	.const
	.align	3
lC0:
	.word	100
	.space 4
	.word	0
	.word	1072693248
	.word	0
	.word	1071644672
	.word	858993459
	.word	1069757235
	.word	0
	.word	1093567616
	.word	0
	.word	1091470464
	.word	0
	.word	1076101120
	.word	-755914244
	.word	1062232653
	.word	0
	.word	0
	.word	0
	.word	1076101120
	.word	0
	.word	0
	.word	0
	.word	1072693248
	.word	0
	.word	1078525952
	.text
	.cstring
	.align	3
lC14:
	.ascii "data/file\0"
	.align	3
lC15:
	.ascii ".txt\0"
	.align	3
lC16:
	.ascii " \0"
	.align	3
lC17:
	.ascii " | \0"
	.align	3
lC18:
	.ascii "\12\0"
	.align	3
lC19:
	.ascii "\12\12\0"
	.text
	.align	2
	.globl __Z19saveFrameForGnuplotRK10Simulationi
__Z19saveFrameForGnuplotRK10Simulationi:
LFB5973:
	sub	sp, sp, #1136
LCFI99:
	stp	x29, x30, [sp]
LCFI100:
	mov	x29, sp
LCFI101:
	str	x19, [sp, 16]
LCFI102:
	str	x0, [x29, 40]
	str	w1, [x29, 36]
	add	x0, x29, 1040
	mov	x8, x0
	ldr	w0, [x29, 36]
	bl	__ZNSt7__cxx119to_stringEi
	add	x0, x29, 1040
	add	x1, x29, 1008
	mov	x8, x1
	mov	x1, x0
	adrp	x0, lC14@PAGE
	add	x0, x0, lC14@PAGEOFF;
LEHB6:
	bl	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
LEHE6:
	add	x2, x29, 1008
	add	x0, x29, 976
	mov	x8, x0
	adrp	x0, lC15@PAGE
	add	x1, x0, lC15@PAGEOFF;
	mov	x0, x2
LEHB7:
	bl	__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
LEHE7:
	add	x0, x29, 1008
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, x29, 1040
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x1, x29, 976
	add	x0, x29, 80
	mov	w2, 16
LEHB8:
	bl	__ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode
LEHE8:
	add	x0, x29, 80
	bl	__ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L208
	mov	w19, 0
	b	L209
L208:
	ldr	x0, [x29, 40]
	str	x0, [x29, 1128]
	ldr	x0, [x29, 1128]
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE5beginEv
	str	x0, [x29, 72]
	ldr	x0, [x29, 1128]
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE3endEv
	str	x0, [x29, 64]
	b	L210
L223:
	ldr	x0, [x29, 72]
	str	x0, [x29, 1120]
	ldr	x0, [x29, 1120]
	add	x0, x0, 8
	str	x0, [x29, 1112]
	ldr	x0, [x29, 1112]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE5beginEv
	str	x0, [x29, 56]
	ldr	x0, [x29, 1112]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE3endEv
	str	x0, [x29, 48]
	b	L212
L218:
	ldr	x0, [x29, 56]
	str	x0, [x29, 1104]
	ldr	x0, [x29, 1104]
	ldr	d31, [x0]
	add	x0, x29, 80
	fmov	d0, d31
LEHB9:
	bl	__ZNSolsEd
	mov	x2, x0
	adrp	x0, lC16@PAGE
	add	x1, x0, lC16@PAGEOFF;
	mov	x0, x2
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x1, x0
	ldr	x0, [x29, 1104]
	ldr	d31, [x0, 8]
	fmov	d0, d31
	mov	x0, x1
	bl	__ZNSolsEd
	mov	x2, x0
	adrp	x0, lC17@PAGE
	add	x1, x0, lC17@PAGEOFF;
	mov	x0, x2
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x1, x0
	ldr	x0, [x29, 1104]
	ldr	d31, [x0, 16]
	fmov	d0, d31
	mov	x0, x1
	bl	__ZNSolsEd
	mov	x2, x0
	adrp	x0, lC16@PAGE
	add	x1, x0, lC16@PAGEOFF;
	mov	x0, x2
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x1, x0
	ldr	x0, [x29, 1104]
	ldr	d31, [x0, 24]
	fmov	d0, d31
	mov	x0, x1
	bl	__ZNSolsEd
	mov	x2, x0
	adrp	x0, lC17@PAGE
	add	x1, x0, lC17@PAGEOFF;
	mov	x0, x2
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x1, x0
	ldr	x0, [x29, 1104]
	ldr	d31, [x0, 32]
	fmov	d0, d31
	mov	x0, x1
	bl	__ZNSolsEd
	mov	x2, x0
	adrp	x0, lC16@PAGE
	add	x1, x0, lC16@PAGEOFF;
	mov	x0, x2
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x1, x0
	ldr	x0, [x29, 1104]
	ldr	d31, [x0, 40]
	fmov	d0, d31
	mov	x0, x1
	bl	__ZNSolsEd
	mov	x2, x0
	adrp	x0, lC18@PAGE
	add	x1, x0, lC18@PAGEOFF;
	mov	x0, x2
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x0, [x29, 56]
	add	x0, x0, 48
	str	x0, [x29, 56]
	nop
L212:
	add	x0, x29, 56
	str	x0, [x29, 1096]
	ldr	x0, [x29, 1096]
	ldr	x1, [x0]
	add	x0, x29, 48
	str	x0, [x29, 1088]
	ldr	x0, [x29, 1088]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L218
	add	x2, x29, 80
	adrp	x0, lC19@PAGE
	add	x1, x0, lC19@PAGEOFF;
	mov	x0, x2
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x0, [x29, 72]
	add	x0, x0, 112
	str	x0, [x29, 72]
	nop
L210:
	add	x0, x29, 72
	str	x0, [x29, 1080]
	ldr	x0, [x29, 1080]
	ldr	x1, [x0]
	add	x0, x29, 64
	str	x0, [x29, 1072]
	ldr	x0, [x29, 1072]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L223
	add	x0, x29, 80
	bl	__ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
LEHE9:
	mov	w19, 1
L209:
	add	x0, x29, 80
	bl	__ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	cmp	w19, 1
	bne	L224
	mov	w19, 1
	b	L225
L224:
	mov	w19, 0
L225:
	add	x0, x29, 976
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	cmp	w19, 1
	b	L236
L233:
	mov	x19, x0
	add	x0, x29, 1008
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	L229
L232:
	mov	x19, x0
L229:
	add	x0, x29, 1040
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	x0, x19
LEHB10:
	bl	__Unwind_Resume
L235:
	mov	x19, x0
	add	x0, x29, 80
	bl	__ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	b	L231
L234:
	mov	x19, x0
L231:
	add	x0, x29, 976
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LEHE10:
L236:
	ldp	x29, x30, [sp]
	ldr	x19, [sp, 16]
	add	sp, sp, 1136
LCFI103:
	ret
LFE5973:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
LLSDA5973:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE5973-LLSDACSB5973
LLSDACSB5973:
	.uleb128 LEHB6-LFB5973
	.uleb128 LEHE6-LEHB6
	.uleb128 L232-LFB5973
	.uleb128 0
	.uleb128 LEHB7-LFB5973
	.uleb128 LEHE7-LEHB7
	.uleb128 L233-LFB5973
	.uleb128 0
	.uleb128 LEHB8-LFB5973
	.uleb128 LEHE8-LEHB8
	.uleb128 L234-LFB5973
	.uleb128 0
	.uleb128 LEHB9-LFB5973
	.uleb128 LEHE9-LEHB9
	.uleb128 L235-LFB5973
	.uleb128 0
	.uleb128 LEHB10-LFB5973
	.uleb128 LEHE10-LEHB10
	.uleb128 0
	.uleb128 0
LLSDACSE5973:
	.text
	.align	2
	.globl __ZNSt12_Vector_baseI10TaylorLineSaIS0_EE12_Vector_implD1Ev
	.weak_definition __ZNSt12_Vector_baseI10TaylorLineSaIS0_EE12_Vector_implD1Ev
__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE12_Vector_implD1Ev:
LFB5984:
	sub	sp, sp, #32
LCFI104:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	nop
	nop
	add	sp, sp, 32
LCFI105:
	ret
LFE5984:
	.align	2
	.globl __ZNSt12_Vector_baseI10TaylorLineSaIS0_EEC2Ev
	.weak_definition __ZNSt12_Vector_baseI10TaylorLineSaIS0_EEC2Ev
__ZNSt12_Vector_baseI10TaylorLineSaIS0_EEC2Ev:
LFB5985:
	stp	x29, x30, [sp, -32]!
LCFI106:
	mov	x29, sp
LCFI107:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE12_Vector_implC1EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS6_10value_typeEE6rebindIT_E5otherEE
	nop
	ldp	x29, x30, [sp], 32
LCFI108:
	ret
LFE5985:
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EEC1Ev
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EEC1Ev
__ZNSt6vectorI10TaylorLineSaIS0_EEC1Ev:
LFB5988:
	stp	x29, x30, [sp, -32]!
LCFI109:
	mov	x29, sp
LCFI110:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI10TaylorLineSaIS0_EEC2Ev
	nop
	ldp	x29, x30, [sp], 32
LCFI111:
	ret
LFE5988:
	.align	2
	.globl __ZN10SimulationC1Ev
	.weak_definition __ZN10SimulationC1Ev
__ZN10SimulationC1Ev:
LFB5990:
	stp	x29, x30, [sp, -32]!
LCFI112:
	mov	x29, sp
LCFI113:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EEC1Ev
	nop
	ldp	x29, x30, [sp], 32
LCFI114:
	ret
LFE5990:
	.align	2
	.globl __ZNSt12_Vector_baseI10TaylorLineSaIS0_EE12_Vector_implC1EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS6_10value_typeEE6rebindIT_E5otherEE
	.weak_definition __ZNSt12_Vector_baseI10TaylorLineSaIS0_EE12_Vector_implC1EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS6_10value_typeEE6rebindIT_E5otherEE
__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE12_Vector_implC1EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS6_10value_typeEE6rebindIT_E5otherEE:
LFB5993:
	stp	x29, x30, [sp, -48]!
LCFI115:
	mov	x29, sp
LCFI116:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	str	x0, [x29, 32]
	nop
	nop
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 48
LCFI117:
	ret
LFE5993:
	.align	2
	.globl __ZNSt12_Vector_baseI10TaylorLineSaIS0_EE17_Vector_impl_dataC2Ev
	.weak_definition __ZNSt12_Vector_baseI10TaylorLineSaIS0_EE17_Vector_impl_dataC2Ev
__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE17_Vector_impl_dataC2Ev:
LFB6001:
	sub	sp, sp, #16
LCFI118:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
LCFI119:
	ret
LFE6001:
	.align	2
	.globl __ZN10SimulationD1Ev
	.weak_definition __ZN10SimulationD1Ev
__ZN10SimulationD1Ev:
LFB6005:
	stp	x29, x30, [sp, -32]!
LCFI120:
	mov	x29, sp
LCFI121:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EED1Ev
	nop
	ldp	x29, x30, [sp], 32
LCFI122:
	ret
LFE6005:
	.cstring
	.align	3
lC20:
	.ascii "Starting Simulation...\0"
	.align	3
lC21:
	.ascii "mkdir -p data\0"
	.align	3
lC22:
	.ascii "\15Frame \0"
	.align	3
lC23:
	.ascii " saved (t=\0"
	.align	3
lC24:
	.ascii ")\0"
	.align	3
lC25:
	.ascii "\12Done. \0"
	.align	3
lC26:
	.ascii " frames generated.\0"
	.text
	.align	2
	.globl _main
_main:
LFB5977:
	stp	x29, x30, [sp, -336]!
LCFI123:
	mov	x29, sp
LCFI124:
	str	x19, [sp, 16]
LCFI125:
	add	x0, x29, 112
	bl	__ZN10SimulationC1Ev
	add	x0, x29, 112
LEHB11:
	bl	__Z15initializeSwarmR10Simulation
	mov	w0, 34464
	movk	w0, 0x1, lsl 16
	str	w0, [x29, 324]
	str	wzr, [x29, 332]
	adrp	x0, lC20@PAGE
	add	x1, x0, lC20@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
	adrp	x0, lC21@PAGE
	add	x0, x0, lC21@PAGEOFF;
	bl	_system
	str	xzr, [x29, 312]
	add	x0, x29, 112
	str	x0, [x29, 304]
	ldr	x0, [x29, 304]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE5beginEv
	str	x0, [x29, 104]
	ldr	x0, [x29, 304]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE3endEv
	str	x0, [x29, 96]
	b	L245
L251:
	ldr	x0, [x29, 104]
	str	x0, [x29, 224]
	ldr	d0, [x29, 312]
	ldr	x0, [x29, 224]
	bl	__ZN10TaylorLine21computeInternalForcesEd
	ldr	x0, [x29, 104]
	add	x0, x0, 112
	str	x0, [x29, 104]
	nop
L245:
	add	x0, x29, 104
	str	x0, [x29, 216]
	ldr	x0, [x29, 216]
	ldr	x1, [x0]
	add	x0, x29, 96
	str	x0, [x29, 208]
	ldr	x0, [x29, 208]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L251
	add	x0, x29, 112
	bl	__ZN10Simulation17applyStericForcesEv
	add	x0, x29, 112
	bl	__ZN10Simulation22handleCircularBoundaryEv
	str	wzr, [x29, 328]
	b	L252
L283:
	add	x0, x29, 112
	str	x0, [x29, 296]
	ldr	x0, [x29, 296]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE5beginEv
	str	x0, [x29, 88]
	ldr	x0, [x29, 296]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE3endEv
	str	x0, [x29, 80]
	b	L253
L259:
	ldr	x0, [x29, 88]
	str	x0, [x29, 232]
	ldr	x0, [x29, 232]
	ldr	x0, [x0]
	ldr	x2, [x0]
	mov	w1, 0
	adrp	x0, lC27@PAGE
	ldr	d0, [x0, #lC27@PAGEOFF]
	ldr	x0, [x29, 232]
	blr	x2
	ldr	x0, [x29, 88]
	add	x0, x0, 112
	str	x0, [x29, 88]
	nop
L253:
	add	x0, x29, 88
	str	x0, [x29, 200]
	ldr	x0, [x29, 200]
	ldr	x1, [x0]
	add	x0, x29, 80
	str	x0, [x29, 192]
	ldr	x0, [x29, 192]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L259
	add	x0, x29, 112
	str	x0, [x29, 288]
	ldr	x0, [x29, 288]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE5beginEv
	str	x0, [x29, 72]
	ldr	x0, [x29, 288]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE3endEv
	str	x0, [x29, 64]
	b	L260
L266:
	ldr	x0, [x29, 72]
	str	x0, [x29, 240]
	adrp	x0, lC28@PAGE
	ldr	d0, [x0, #lC28@PAGEOFF]
	ldr	x0, [x29, 240]
	bl	__ZN10TaylorLine15updatePositionsEd
	ldr	x0, [x29, 72]
	add	x0, x0, 112
	str	x0, [x29, 72]
	nop
L260:
	add	x0, x29, 72
	str	x0, [x29, 184]
	ldr	x0, [x29, 184]
	ldr	x1, [x0]
	add	x0, x29, 64
	str	x0, [x29, 176]
	ldr	x0, [x29, 176]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L266
	ldr	w0, [x29, 328]
	add	w0, w0, 1
	scvtf	d31, w0
	adrp	x0, lC28@PAGE
	ldr	d30, [x0, #lC28@PAGEOFF]
	fmul	d31, d31, d30
	str	d31, [x29, 280]
	add	x0, x29, 112
	str	x0, [x29, 272]
	ldr	x0, [x29, 272]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE5beginEv
	str	x0, [x29, 56]
	ldr	x0, [x29, 272]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE3endEv
	str	x0, [x29, 48]
	b	L267
L273:
	ldr	x0, [x29, 56]
	str	x0, [x29, 248]
	ldr	d0, [x29, 280]
	ldr	x0, [x29, 248]
	bl	__ZN10TaylorLine21computeInternalForcesEd
	ldr	x0, [x29, 56]
	add	x0, x0, 112
	str	x0, [x29, 56]
	nop
L267:
	add	x0, x29, 56
	str	x0, [x29, 168]
	ldr	x0, [x29, 168]
	ldr	x1, [x0]
	add	x0, x29, 48
	str	x0, [x29, 160]
	ldr	x0, [x29, 160]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L273
	add	x0, x29, 112
	bl	__ZN10Simulation17applyStericForcesEv
	add	x0, x29, 112
	bl	__ZN10Simulation22handleCircularBoundaryEv
	add	x0, x29, 112
	str	x0, [x29, 264]
	ldr	x0, [x29, 264]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE5beginEv
	str	x0, [x29, 40]
	ldr	x0, [x29, 264]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE3endEv
	str	x0, [x29, 32]
	b	L274
L280:
	ldr	x0, [x29, 40]
	str	x0, [x29, 256]
	ldr	x0, [x29, 256]
	ldr	x0, [x0]
	ldr	x2, [x0]
	mov	w1, 1
	adrp	x0, lC27@PAGE
	ldr	d0, [x0, #lC27@PAGEOFF]
	ldr	x0, [x29, 256]
	blr	x2
	ldr	x0, [x29, 40]
	add	x0, x0, 112
	str	x0, [x29, 40]
	nop
L274:
	add	x0, x29, 40
	str	x0, [x29, 152]
	ldr	x0, [x29, 152]
	ldr	x1, [x0]
	add	x0, x29, 32
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L280
	ldr	w0, [x29, 328]
	mov	w1, 500
	sdiv	w2, w0, w1
	mov	w1, 500
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	L281
	add	x0, x29, 112
	ldr	w1, [x29, 332]
	bl	__Z19saveFrameForGnuplotRK10Simulationi
	ldr	w1, [x29, 332]
	mov	w0, 10
	sdiv	w2, w1, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w0, w1, w0
	cmp	w0, 0
	bne	L282
	adrp	x0, lC22@PAGE
	add	x1, x0, lC22@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	w1, [x29, 332]
	bl	__ZNSolsEi
	mov	x2, x0
	adrp	x0, lC23@PAGE
	add	x1, x0, lC23@PAGEOFF;
	mov	x0, x2
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	d0, [x29, 280]
	bl	__ZNSolsEd
	mov	x2, x0
	adrp	x0, lC24@PAGE
	add	x1, x0, lC24@PAGEOFF;
	mov	x0, x2
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
L282:
	ldr	w0, [x29, 332]
	add	w0, w0, 1
	str	w0, [x29, 332]
L281:
	ldr	w0, [x29, 328]
	add	w0, w0, 1
	str	w0, [x29, 328]
L252:
	ldr	w1, [x29, 328]
	ldr	w0, [x29, 324]
	cmp	w1, w0
	ble	L283
	adrp	x0, lC25@PAGE
	add	x1, x0, lC25@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	w1, [x29, 332]
	bl	__ZNSolsEi
	mov	x2, x0
	adrp	x0, lC26@PAGE
	add	x1, x0, lC26@PAGEOFF;
	mov	x0, x2
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGE
	ldr	x1, [x1, __ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPAGEOFF]
	bl	__ZNSolsEPFRSoS_E
LEHE11:
	mov	w19, 0
	add	x0, x29, 112
	bl	__ZN10SimulationD1Ev
	mov	w0, w19
	b	L287
L286:
	mov	x19, x0
	add	x0, x29, 112
	bl	__ZN10SimulationD1Ev
	mov	x0, x19
LEHB12:
	bl	__Unwind_Resume
LEHE12:
L287:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 336
LCFI126:
	ret
LFE5977:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
LLSDA5977:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE5977-LLSDACSB5977
LLSDACSB5977:
	.uleb128 LEHB11-LFB5977
	.uleb128 LEHE11-LEHB11
	.uleb128 L286-LFB5977
	.uleb128 0
	.uleb128 LEHB12-LFB5977
	.uleb128 LEHE12-LEHB12
	.uleb128 0
	.uleb128 0
LLSDACSE5977:
	.text
	.align	2
	.globl __ZSt12construct_atIcJRKcEQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S2_pispcl7declvalIT0_EEEEEPS2_S5_DpOS4_
	.weak_definition __ZSt12construct_atIcJRKcEQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S2_pispcl7declvalIT0_EEEEEPS2_S5_DpOS4_
__ZSt12construct_atIcJRKcEQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S2_pispcl7declvalIT0_EEEEEPS2_S5_DpOS4_:
LFB6006:
	stp	x29, x30, [sp, -64]!
LCFI127:
	mov	x29, sp
LCFI128:
	stp	x19, x20, [sp, 16]
LCFI129:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	ldr	x20, [x29, 56]
	mov	x1, x20
	mov	x0, 1
	bl	__ZnwmPv
	mov	x19, x0
	ldr	x0, [x29, 32]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldrsb	w0, [x0]
	strb	w0, [x19]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L291
	mov	x1, x20
	mov	x0, x19
	bl	__ZdlPvS_
L291:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI130:
	ret
LFE6006:
	.align	2
	.globl __ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.weak_definition __ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
__ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
LFB6007:
	stp	x29, x30, [sp, -48]!
LCFI131:
	mov	x29, sp
LCFI132:
	str	x0, [x29, 24]
	str	xzr, [x29, 40]
	b	L293
L294:
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
L293:
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 40]
	add	x0, x1, x0
	strb	wzr, [x29, 39]
	add	x1, x29, 39
	bl	__ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L294
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 48
LCFI133:
	ret
LFE6007:
	.align	2
	.globl __ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm
	.weak_definition __ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm
__ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm:
LFB6009:
	stp	x29, x30, [sp, -48]!
LCFI134:
	mov	x29, sp
LCFI135:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 24]
	cmp	x0, 0
	bne	L297
	ldr	x0, [x29, 40]
	b	L298
L297:
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L300
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm
	ldr	x0, [x29, 40]
	b	L298
L300:
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_memmove
	ldr	x0, [x29, 40]
L298:
	ldp	x29, x30, [sp], 48
LCFI136:
	ret
LFE6009:
	.align	2
	.globl __ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm
	.weak_definition __ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm
__ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm:
LFB6010:
	stp	x29, x30, [sp, -64]!
LCFI137:
	mov	x29, sp
LCFI138:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 24]
	cmp	x0, 0
	bne	L302
	ldr	x0, [x29, 40]
	b	L303
L302:
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L305
	str	xzr, [x29, 56]
	b	L306
L307:
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 56]
	add	x2, x1, x0
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	__ZSt12construct_atIcJRKcEQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S2_pispcl7declvalIT0_EEEEEPS2_S5_DpOS4_
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
L306:
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 24]
	cmp	x1, x0
	bcc	L307
	ldr	x0, [x29, 40]
	b	L303
L305:
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 32]
	mov	x3, x1
	mov	x1, x0
	ldr	x0, [x29, 24]
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	ldr	x0, [x29, 40]
L303:
	ldp	x29, x30, [sp], 64
LCFI139:
	ret
LFE6010:
	.align	2
	.globl __ZN9__gnu_cxx11char_traitsIcE6assignEPcmc
	.weak_definition __ZN9__gnu_cxx11char_traitsIcE6assignEPcmc
__ZN9__gnu_cxx11char_traitsIcE6assignEPcmc:
LFB6011:
	stp	x29, x30, [sp, -64]!
LCFI140:
	mov	x29, sp
LCFI141:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	mov	w0, w2
	strb	w0, [x29, 31]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L310
	str	xzr, [x29, 56]
	b	L311
L312:
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	add	x1, x29, 31
	bl	__ZSt12construct_atIcJRcEQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S1_pispcl7declvalIT0_EEEEEPS1_S4_DpOS3_
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
L311:
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	bcc	L312
	ldr	x0, [x29, 40]
	b	L313
L310:
	ldr	x0, [x29, 32]
	cmp	x0, 0
	beq	L314
	ldrb	w0, [x29, 31]
	strb	w0, [x29, 55]
	ldrb	w0, [x29, 55]
	ldr	x2, [x29, 32]
	mov	w1, w0
	ldr	x0, [x29, 40]
	bl	_memset
L314:
	ldr	x0, [x29, 40]
L313:
	ldp	x29, x30, [sp], 64
LCFI142:
	ret
LFE6011:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm:
LFB6135:
	stp	x29, x30, [sp, -48]!
LCFI143:
	mov	x29, sp
LCFI144:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
	ldr	x0, [x29, 24]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	mov	x1, x0
	ldr	x0, [x29, 16]
	add	x0, x1, x0
	strb	wzr, [x29, 47]
	add	x1, x29, 47
	bl	__ZNSt11char_traitsIcE6assignERcRKc
	nop
	ldp	x29, x30, [sp], 48
LCFI145:
	ret
LFE6135:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev:
LFB6138:
	stp	x29, x30, [sp, -32]!
LCFI146:
	mov	x29, sp
LCFI147:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [x29, 24]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	nop
	ldp	x29, x30, [sp], 32
LCFI148:
	ret
LFE6138:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table7:
LLSDA6138:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6138-LLSDACSB6138
LLSDACSB6138:
LLSDACSE6138:
	.text
	.align	2
	.globl __ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	.weak_definition __ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
__ZNSt8__detail18__to_chars_10_implIjEEvPcjT_:
LFB6139:
	sub	sp, sp, #240
LCFI149:
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	adrp	x0, lC29@PAGE
	add	x1, x0, lC29@PAGEOFF;
	add	x0, sp, 24
	ldr	q26, [x1]
	ldr	q27, [x1, 16]
	ldr	q28, [x1, 32]
	ldr	q29, [x1, 48]
	ldr	q30, [x1, 64]
	ldr	q31, [x1, 80]
	str	q26, [x0]
	str	q27, [x0, 16]
	str	q28, [x0, 32]
	str	q29, [x0, 48]
	str	q30, [x0, 64]
	str	q31, [x0, 80]
	ldr	q26, [x1, 96]
	ldr	q27, [x1, 112]
	ldr	q28, [x1, 128]
	ldr	q29, [x1, 144]
	ldr	q30, [x1, 160]
	ldr	q31, [x1, 176]
	str	q26, [x0, 96]
	str	q27, [x0, 112]
	str	q28, [x0, 128]
	str	q29, [x0, 144]
	str	q30, [x0, 160]
	str	q31, [x0, 176]
	ldr	q31, [x1, 185]
	str	q31, [x0, 185]
	ldr	w0, [sp, 4]
	sub	w0, w0, #1
	str	w0, [sp, 236]
	b	L318
L319:
	ldr	w1, [sp]
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 5
	mov	w2, 100
	mul	w0, w0, w2
	sub	w0, w1, w0
	lsl	w0, w0, 1
	str	w0, [sp, 228]
	ldr	w1, [sp]
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 5
	str	w0, [sp]
	ldr	w0, [sp, 228]
	add	w2, w0, 1
	ldr	w0, [sp, 236]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	uxtw	x1, w2
	add	x2, sp, 24
	ldrsb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 236]
	sub	w0, w0, #1
	uxtw	x0, w0
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 228]
	add	x2, sp, 24
	ldrsb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 236]
	sub	w0, w0, #2
	str	w0, [sp, 236]
L318:
	ldr	w0, [sp]
	cmp	w0, 99
	bhi	L319
	ldr	w0, [sp]
	cmp	w0, 9
	bls	L320
	ldr	w0, [sp]
	lsl	w0, w0, 1
	str	w0, [sp, 232]
	ldr	w0, [sp, 232]
	add	w1, w0, 1
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	uxtw	x1, w1
	add	x2, sp, 24
	ldrsb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 232]
	add	x1, sp, 24
	ldrsb	w1, [x1, x0]
	ldr	x0, [sp, 8]
	strb	w1, [x0]
	b	L322
L320:
	ldr	w0, [sp]
	and	w0, w0, 255
	add	w0, w0, 48
	and	w0, w0, 255
	sxtb	w1, w0
	ldr	x0, [sp, 8]
	strb	w1, [x0]
L322:
	nop
	add	sp, sp, 240
LCFI150:
	ret
LFE6139:
	.cstring
	.align	3
lC29:
	.ascii "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\0"
	.text
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcmE_EEvmT_
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcmE_EEvmT_
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringEiEUlPcmE_EEvmT_:
LFB6140:
	stp	x29, x30, [sp, -48]!
LCFI151:
	mov	x29, sp
LCFI152:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	mov	x0, x2
	mov	x1, x3
	str	x0, [x29, 16]
	ldr	w0, [x29, 24]
	bfi	w0, w1, 0, 32
	str	w0, [x29, 24]
	add	x0, x29, 16
	mov	x2, x0
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE20resize_and_overwriteIRZNS_9to_stringEiEUlPcmE_EEvmT_
	nop
	ldp	x29, x30, [sp], 48
LCFI153:
	ret
LFE6140:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_:
LFB6143:
	stp	x29, x30, [sp, -96]!
LCFI154:
	mov	x29, sp
LCFI155:
	stp	x19, x20, [sp, 16]
LCFI156:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x19, [x29, 40]
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	mov	x20, x0
	ldr	x0, [x29, 32]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_
	ldr	x0, [x29, 32]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	and	w0, w0, 1
	cmp	w0, 0
	beq	L326
	ldr	x0, [x29, 40]
	str	x0, [x29, 80]
	bl	__ZSt21is_constant_evaluatedv
	and	w0, w0, 1
	cmp	w0, 0
	beq	L337
	str	xzr, [x29, 72]
	b	L328
L329:
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 72]
	add	x0, x1, x0
	strb	wzr, [x0, 16]
	ldr	x0, [x29, 72]
	add	x0, x0, 1
	str	x0, [x29, 72]
L328:
	ldr	x0, [x29, 72]
	cmp	x0, 15
	bls	L329
L337:
	nop
	ldr	x0, [x29, 40]
	add	x19, x0, 16
	ldr	x0, [x29, 32]
	add	x20, x0, 16
	ldr	x0, [x29, 32]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	add	x0, x0, 1
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	__ZNSt11char_traitsIcE4copyEPcPKcm
	b	L330
L326:
	ldr	x0, [x29, 32]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	ldr	x0, [x29, 32]
	ldr	x0, [x0, 16]
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
L330:
	ldr	x0, [x29, 32]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
	ldr	x0, [x29, 32]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	str	x0, [x29, 56]
	bl	__ZSt21is_constant_evaluatedv
	and	w0, w0, 1
	cmp	w0, 0
	beq	L338
	str	xzr, [x29, 48]
	b	L332
L333:
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 48]
	add	x0, x1, x0
	strb	wzr, [x0, 16]
	ldr	x0, [x29, 48]
	add	x0, x0, 1
	str	x0, [x29, 48]
L332:
	ldr	x0, [x29, 48]
	cmp	x0, 15
	bls	L333
L338:
	nop
	ldr	x0, [x29, 64]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	nop
	mov	x1, x0
	ldr	x0, [x29, 32]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	mov	x1, 0
	ldr	x0, [x29, 32]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 96
LCFI157:
	ret
LFE6143:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table8:
LLSDA6143:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6143-LLSDACSB6143
LLSDACSB6143:
LLSDACSE6143:
	.text
	.align	2
	.globl __ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.weak_definition __ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_:
LFB6284:
	stp	x29, x30, [sp, -64]!
LCFI158:
	mov	x29, sp
LCFI159:
	str	x19, [sp, 16]
LCFI160:
	mov	x19, x8
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x2, [x29, 40]
	mov	x1, 0
	ldr	x0, [x29, 32]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	mov	x1, x0
	mov	x0, x19
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI161:
	ret
LFE6284:
	.align	2
	.globl __ZSt3minImERKT_S2_S2_
	.weak_definition __ZSt3minImERKT_S2_S2_
__ZSt3minImERKT_S2_S2_:
LFB6331:
	sub	sp, sp, #16
LCFI162:
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	L343
	ldr	x0, [sp]
	b	L344
L343:
	ldr	x0, [sp, 8]
L344:
	add	sp, sp, 16
LCFI163:
	ret
LFE6331:
	.align	2
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv:
LFB6328:
	stp	x29, x30, [sp, -48]!
LCFI164:
	mov	x29, sp
LCFI165:
	str	x0, [x29, 24]
	mov	x0, 9223372036854775807
	str	x0, [x29, 40]
	mov	x0, -1
	str	x0, [x29, 32]
	add	x1, x29, 32
	add	x0, x29, 40
	bl	__ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	sub	x0, x0, #1
	ldp	x29, x30, [sp], 48
LCFI166:
	ret
LFE6328:
	.cstring
	.align	3
lC30:
	.ascii "basic_string: construction from null is not valid\0"
	.text
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_:
LFB6448:
	stp	x29, x30, [sp, -80]!
LCFI167:
	mov	x29, sp
LCFI168:
	stp	x19, x20, [sp, 16]
LCFI169:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	ldr	x19, [x29, 56]
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	ldr	x2, [x29, 40]
	mov	x1, x0
	mov	x0, x19
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
	ldr	x0, [x29, 48]
	cmp	x0, 0
	bne	L348
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
LEHB13:
	bl	__ZSt19__throw_logic_errorPKc
L348:
	ldr	x0, [x29, 48]
	bl	__ZNSt11char_traitsIcE6lengthEPKc
	mov	x1, x0
	ldr	x0, [x29, 48]
	add	x0, x0, x1
	str	x0, [x29, 72]
	mov	w3, w20
	ldr	x2, [x29, 72]
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
LEHE13:
	b	L351
L350:
	mov	x19, x0
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	mov	x0, x19
LEHB14:
	bl	__Unwind_Resume
LEHE14:
L351:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI170:
	ret
LFE6448:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table9:
LLSDA6448:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6448-LLSDACSB6448
LLSDACSB6448:
	.uleb128 LEHB13-LFB6448
	.uleb128 LEHE13-LEHB13
	.uleb128 L350-LFB6448
	.uleb128 0
	.uleb128 LEHB14-LFB6448
	.uleb128 LEHE14-LEHB14
	.uleb128 0
	.uleb128 0
LLSDACSE6448:
	.text
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EED1Ev
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EED1Ev
__ZNSt6vectorI4BeadSaIS0_EED1Ev:
LFB6464:
	stp	x29, x30, [sp, -80]!
LCFI171:
	mov	x29, sp
LCFI172:
	stp	x19, x20, [sp, 16]
LCFI173:
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x20, [x0]
	ldr	x0, [x29, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [x29, 40]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE19_M_get_Tp_allocatorEv
	str	x20, [x29, 72]
	str	x19, [x29, 64]
	str	x0, [x29, 56]
	ldr	x1, [x29, 64]
	ldr	x0, [x29, 72]
	bl	__ZSt8_DestroyIP4BeadEvT_S2_
	nop
	ldr	x0, [x29, 40]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EED2Ev
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI174:
	ret
LFE6464:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table10:
LLSDA6464:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6464-LLSDACSB6464
LLSDACSB6464:
LLSDACSE6464:
	.text
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implC1EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS6_10value_typeEE6rebindIT_E5otherEE
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implC1EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS6_10value_typeEE6rebindIT_E5otherEE
__ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implC1EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS6_10value_typeEE6rebindIT_E5otherEE:
LFB6467:
	stp	x29, x30, [sp, -48]!
LCFI175:
	mov	x29, sp
LCFI176:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	str	x0, [x29, 32]
	nop
	nop
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 48
LCFI177:
	ret
LFE6467:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EED2Ev
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EED2Ev
__ZNSt12_Vector_baseI4BeadSaIS0_EED2Ev:
LFB6472:
	stp	x29, x30, [sp, -32]!
LCFI178:
	mov	x29, sp
LCFI179:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x3, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 4
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE13_M_deallocateEPS0_m
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
LCFI180:
	ret
LFE6472:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table11:
LLSDA6472:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6472-LLSDACSB6472
LLSDACSB6472:
LLSDACSE6472:
	.text
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EE5clearEv
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EE5clearEv
__ZNSt6vectorI4BeadSaIS0_EE5clearEv:
LFB6474:
	stp	x29, x30, [sp, -32]!
LCFI181:
	mov	x29, sp
LCFI182:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	__ZNSt6vectorI4BeadSaIS0_EE15_M_erase_at_endEPS0_
	nop
	ldp	x29, x30, [sp], 32
LCFI183:
	ret
LFE6474:
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EE9push_backERKS0_
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EE9push_backERKS0_
__ZNSt6vectorI4BeadSaIS0_EE9push_backERKS0_:
LFB6475:
	stp	x29, x30, [sp, -64]!
LCFI184:
	mov	x29, sp
LCFI185:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	beq	L357
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 56]
	ldr	x0, [x29, 16]
	str	x0, [x29, 48]
	str	x1, [x29, 40]
	ldr	x0, [x29, 48]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	mov	x1, x0
	ldr	x0, [x29, 56]
	bl	__ZSt12construct_atI4BeadJRKS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S3_pispcl7declvalIT0_EEEEEPS3_S6_DpOS5_
	nop
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	add	x1, x0, 48
	ldr	x0, [x29, 24]
	str	x1, [x0, 8]
	b	L360
L357:
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	__ZNSt6vectorI4BeadSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
L360:
	nop
	ldp	x29, x30, [sp], 64
LCFI186:
	ret
LFE6475:
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EE5beginEv
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EE5beginEv
__ZNSt6vectorI4BeadSaIS0_EE5beginEv:
LFB6477:
	sub	sp, sp, #32
LCFI187:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 16]
	nop
	ldr	x0, [sp, 16]
	add	sp, sp, 32
LCFI188:
	ret
LFE6477:
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EE3endEv
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EE3endEv
__ZNSt6vectorI4BeadSaIS0_EE3endEv:
LFB6478:
	sub	sp, sp, #32
LCFI189:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 16]
	nop
	ldr	x0, [sp, 16]
	add	sp, sp, 32
LCFI190:
	ret
LFE6478:
	.cstring
	.align	3
lC31:
	.ascii "__n < this->size()\0"
	.align	3
lC32:
	.ascii "constexpr std::vector< <template-parameter-1-1>, <template-parameter-1-2> >::reference std::vector< <template-parameter-1-1>, <template-parameter-1-2> >::operator[](size_type) [with _Tp = Bead; _Alloc = std::allocator<Bead>; reference = Bead&; size_type = long unsigned int]\0"
	.align	3
lC33:
	.ascii "/opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_vector.h\0"
	.text
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EEixEm
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EEixEm
__ZNSt6vectorI4BeadSaIS0_EEixEm:
LFB6480:
	stp	x29, x30, [sp, -32]!
LCFI191:
	mov	x29, sp
LCFI192:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE4sizeEv
	mov	x1, x0
	ldr	x0, [x29, 16]
	cmp	x0, x1
	cset	w0, cs
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L366
	adrp	x0, lC31@PAGE
	add	x3, x0, lC31@PAGEOFF;
	adrp	x0, lC32@PAGE
	add	x2, x0, lC32@PAGEOFF;
	mov	w1, 1263
	adrp	x0, lC33@PAGE
	add	x0, x0, lC33@PAGEOFF;
	bl	__ZSt21__glibcxx_assert_failPKciS0_S0_
L366:
	ldr	x0, [x29, 24]
	ldr	x2, [x0]
	ldr	x1, [x29, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	ldp	x29, x30, [sp], 32
LCFI193:
	ret
LFE6480:
	.align	2
	.globl __ZNKSt6vectorI10TaylorLineSaIS0_EE4sizeEv
	.weak_definition __ZNKSt6vectorI10TaylorLineSaIS0_EE4sizeEv
__ZNKSt6vectorI10TaylorLineSaIS0_EE4sizeEv:
LFB6481:
	sub	sp, sp, #32
LCFI194:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 4
	mov	x0, 28087
	movk	x0, 0xb6db, lsl 16
	movk	x0, 0xdb6d, lsl 32
	movk	x0, 0x6db6, lsl 48
	mul	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bge	L369
	brk #1000
L369:
	ldr	x0, [sp, 24]
	add	sp, sp, 32
LCFI195:
	ret
LFE6481:
	.cstring
	.align	3
lC34:
	.ascii "constexpr std::vector< <template-parameter-1-1>, <template-parameter-1-2> >::reference std::vector< <template-parameter-1-1>, <template-parameter-1-2> >::operator[](size_type) [with _Tp = TaylorLine; _Alloc = std::allocator<TaylorLine>; reference = TaylorLine&; size_type = long unsigned int]\0"
	.text
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EEixEm
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EEixEm
__ZNSt6vectorI10TaylorLineSaIS0_EEixEm:
LFB6482:
	stp	x29, x30, [sp, -32]!
LCFI196:
	mov	x29, sp
LCFI197:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE4sizeEv
	mov	x1, x0
	ldr	x0, [x29, 16]
	cmp	x0, x1
	cset	w0, cs
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L372
	adrp	x0, lC31@PAGE
	add	x3, x0, lC31@PAGEOFF;
	adrp	x0, lC34@PAGE
	add	x2, x0, lC34@PAGEOFF;
	mov	w1, 1263
	adrp	x0, lC33@PAGE
	add	x0, x0, lC33@PAGEOFF;
	bl	__ZSt21__glibcxx_assert_failPKciS0_S0_
L372:
	ldr	x0, [x29, 24]
	ldr	x2, [x0]
	ldr	x1, [x29, 16]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	ldp	x29, x30, [sp], 32
LCFI198:
	ret
LFE6482:
	.align	2
	.globl __ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
	.weak_definition __ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
__ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_:
LFB6483:
	stp	x29, x30, [sp, -32]!
LCFI199:
	mov	x29, sp
LCFI200:
	str	d0, [x29, 24]
	str	w0, [x29, 20]
	ldr	w0, [x29, 20]
	scvtf	d31, w0
	fmov	d1, d31
	ldr	d0, [x29, 24]
	bl	_pow
	fmov	d31, d0
	fmov	d0, d31
	ldp	x29, x30, [sp], 32
LCFI201:
	ret
LFE6483:
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EE5beginEv
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EE5beginEv
__ZNSt6vectorI10TaylorLineSaIS0_EE5beginEv:
LFB6484:
	sub	sp, sp, #32
LCFI202:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 16]
	nop
	ldr	x0, [sp, 16]
	add	sp, sp, 32
LCFI203:
	ret
LFE6484:
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EE3endEv
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EE3endEv
__ZNSt6vectorI10TaylorLineSaIS0_EE3endEv:
LFB6485:
	sub	sp, sp, #32
LCFI204:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 16]
	nop
	ldr	x0, [sp, 16]
	add	sp, sp, 32
LCFI205:
	ret
LFE6485:
	.align	2
	.globl __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1Ej
	.weak_definition __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1Ej
__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1Ej:
LFB6489:
	stp	x29, x30, [sp, -32]!
LCFI206:
	mov	x29, sp
LCFI207:
	str	x0, [x29, 24]
	str	w1, [x29, 20]
	ldr	w1, [x29, 20]
	ldr	x0, [x29, 24]
	bl	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	nop
	ldp	x29, x30, [sp], 32
LCFI208:
	ret
LFE6489:
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EE5clearEv
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EE5clearEv
__ZNSt6vectorI10TaylorLineSaIS0_EE5clearEv:
LFB6490:
	stp	x29, x30, [sp, -32]!
LCFI209:
	mov	x29, sp
LCFI210:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE15_M_erase_at_endEPS0_
	nop
	ldp	x29, x30, [sp], 32
LCFI211:
	ret
LFE6490:
	.align	2
	.globl __ZNSt25uniform_real_distributionIdEC1Edd
	.weak_definition __ZNSt25uniform_real_distributionIdEC1Edd
__ZNSt25uniform_real_distributionIdEC1Edd:
LFB6496:
	stp	x29, x30, [sp, -48]!
LCFI212:
	mov	x29, sp
LCFI213:
	str	x0, [x29, 40]
	str	d0, [x29, 32]
	str	d1, [x29, 24]
	ldr	x0, [x29, 40]
	ldr	d1, [x29, 24]
	ldr	d0, [x29, 32]
	bl	__ZNSt25uniform_real_distributionIdE10param_typeC1Edd
	nop
	ldp	x29, x30, [sp], 48
LCFI214:
	ret
LFE6496:
	.align	2
	.globl __ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEdRT_
	.weak_definition __ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEdRT_
__ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEdRT_:
LFB6497:
	stp	x29, x30, [sp, -32]!
LCFI215:
	mov	x29, sp
LCFI216:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	mov	x2, x0
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	__ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEdRT_RKNS0_10param_typeE
	fmov	d31, d0
	fmov	d0, d31
	ldp	x29, x30, [sp], 32
LCFI217:
	ret
LFE6497:
	.align	2
	.globl __ZNKSt6vectorI4BeadSaIS0_EE5beginEv
	.weak_definition __ZNKSt6vectorI4BeadSaIS0_EE5beginEv
__ZNKSt6vectorI4BeadSaIS0_EE5beginEv:
LFB6498:
	sub	sp, sp, #32
LCFI218:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 16]
	nop
	ldr	x0, [sp, 16]
	add	sp, sp, 32
LCFI219:
	ret
LFE6498:
	.align	2
	.globl __ZNKSt6vectorI4BeadSaIS0_EE3endEv
	.weak_definition __ZNKSt6vectorI4BeadSaIS0_EE3endEv
__ZNKSt6vectorI4BeadSaIS0_EE3endEv:
LFB6499:
	sub	sp, sp, #32
LCFI220:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 16]
	nop
	ldr	x0, [sp, 16]
	add	sp, sp, 32
LCFI221:
	ret
LFE6499:
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EE9push_backERKS0_
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EE9push_backERKS0_
__ZNSt6vectorI10TaylorLineSaIS0_EE9push_backERKS0_:
LFB6501:
	stp	x29, x30, [sp, -64]!
LCFI222:
	mov	x29, sp
LCFI223:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	beq	L390
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 56]
	ldr	x0, [x29, 16]
	str	x0, [x29, 48]
	str	x1, [x29, 40]
	ldr	x0, [x29, 48]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	mov	x1, x0
	ldr	x0, [x29, 56]
	bl	__ZSt12construct_atI10TaylorLineJRKS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S3_pispcl7declvalIT0_EEEEEPS3_S6_DpOS5_
	nop
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	add	x1, x0, 112
	ldr	x0, [x29, 24]
	str	x1, [x0, 8]
	b	L393
L390:
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
L393:
	nop
	ldp	x29, x30, [sp], 64
LCFI224:
	ret
LFE6501:
	.align	2
	.globl __ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
	.weak_definition __ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
__ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_:
LFB6504:
	stp	x29, x30, [sp, -64]!
LCFI225:
	mov	x29, sp
LCFI226:
	str	x19, [sp, 16]
LCFI227:
	mov	x19, x8
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	mov	x1, x0
	mov	x0, x19
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI228:
	ret
LFE6504:
	.align	2
	.globl __ZNKSt6vectorI10TaylorLineSaIS0_EE5beginEv
	.weak_definition __ZNKSt6vectorI10TaylorLineSaIS0_EE5beginEv
__ZNKSt6vectorI10TaylorLineSaIS0_EE5beginEv:
LFB6513:
	sub	sp, sp, #32
LCFI229:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 16]
	nop
	ldr	x0, [sp, 16]
	add	sp, sp, 32
LCFI230:
	ret
LFE6513:
	.align	2
	.globl __ZNKSt6vectorI10TaylorLineSaIS0_EE3endEv
	.weak_definition __ZNKSt6vectorI10TaylorLineSaIS0_EE3endEv
__ZNKSt6vectorI10TaylorLineSaIS0_EE3endEv:
LFB6514:
	sub	sp, sp, #32
LCFI231:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 16]
	nop
	ldr	x0, [sp, 16]
	add	sp, sp, 32
LCFI232:
	ret
LFE6514:
	.align	2
	.globl __ZNSt12_Vector_baseI10TaylorLineSaIS0_EED2Ev
	.weak_definition __ZNSt12_Vector_baseI10TaylorLineSaIS0_EED2Ev
__ZNSt12_Vector_baseI10TaylorLineSaIS0_EED2Ev:
LFB6522:
	stp	x29, x30, [sp, -32]!
LCFI233:
	mov	x29, sp
LCFI234:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x3, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 4
	mov	x0, 28087
	movk	x0, 0xb6db, lsl 16
	movk	x0, 0xdb6d, lsl 32
	movk	x0, 0x6db6, lsl 48
	mul	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE13_M_deallocateEPS0_m
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
LCFI235:
	ret
LFE6522:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table12:
LLSDA6522:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6522-LLSDACSB6522
LLSDACSB6522:
LLSDACSE6522:
	.text
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EED1Ev
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EED1Ev
__ZNSt6vectorI10TaylorLineSaIS0_EED1Ev:
LFB6526:
	stp	x29, x30, [sp, -80]!
LCFI236:
	mov	x29, sp
LCFI237:
	stp	x19, x20, [sp, 16]
LCFI238:
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x20, [x0]
	ldr	x0, [x29, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [x29, 40]
	bl	__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE19_M_get_Tp_allocatorEv
	str	x20, [x29, 72]
	str	x19, [x29, 64]
	str	x0, [x29, 56]
	ldr	x1, [x29, 64]
	ldr	x0, [x29, 72]
	bl	__ZSt8_DestroyIP10TaylorLineEvT_S2_
	nop
	ldr	x0, [x29, 40]
	bl	__ZNSt12_Vector_baseI10TaylorLineSaIS0_EED2Ev
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI239:
	ret
LFE6526:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table13:
LLSDA6526:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6526-LLSDACSB6526
LLSDACSB6526:
LLSDACSE6526:
	.text
	.align	2
	.globl __ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.weak_definition __ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
__ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
LFB6528:
	sub	sp, sp, #16
LCFI240:
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrsb	w1, [x0]
	ldr	x0, [sp]
	ldrsb	w0, [x0]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
LCFI241:
	ret
LFE6528:
	.align	2
	.globl __ZSt12construct_atIcJRcEQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S1_pispcl7declvalIT0_EEEEEPS1_S4_DpOS3_
	.weak_definition __ZSt12construct_atIcJRcEQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S1_pispcl7declvalIT0_EEEEEPS1_S4_DpOS3_
__ZSt12construct_atIcJRcEQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S1_pispcl7declvalIT0_EEEEEPS1_S4_DpOS3_:
LFB6530:
	stp	x29, x30, [sp, -64]!
LCFI242:
	mov	x29, sp
LCFI243:
	stp	x19, x20, [sp, 16]
LCFI244:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	ldr	x20, [x29, 56]
	mov	x1, x20
	mov	x0, 1
	bl	__ZnwmPv
	mov	x19, x0
	ldr	x0, [x29, 32]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldrsb	w0, [x0]
	strb	w0, [x19]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L408
	mov	x1, x20
	mov	x0, x19
	bl	__ZdlPvS_
L408:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI245:
	ret
LFE6530:
	.align	2
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv:
LFB6545:
	sub	sp, sp, #16
LCFI246:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
LCFI247:
	ret
LFE6545:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm:
LFB6546:
	sub	sp, sp, #16
LCFI248:
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0, 8]
	nop
	add	sp, sp, 16
LCFI249:
	ret
LFE6546:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
LFB6547:
	stp	x29, x30, [sp, -32]!
LCFI250:
	mov	x29, sp
LCFI251:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L414
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
L414:
	nop
	ldp	x29, x30, [sp], 32
LCFI252:
	ret
LFE6547:
	.align	2
	.globl __ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE20resize_and_overwriteIRZNS_9to_stringEiEUlPcmE_EEvmT_EN11_TerminatorD1Ev
	.weak_definition __ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE20resize_and_overwriteIRZNS_9to_stringEiEUlPcmE_EEvmT_EN11_TerminatorD1Ev
__ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE20resize_and_overwriteIRZNS_9to_stringEiEUlPcmE_EEvmT_EN11_TerminatorD1Ev:
LFB6551:
	stp	x29, x30, [sp, -32]!
LCFI253:
	mov	x29, sp
LCFI254:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x2, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	nop
	ldp	x29, x30, [sp], 32
LCFI255:
	ret
LFE6551:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE20resize_and_overwriteIRZNS_9to_stringEiEUlPcmE_EEvmT_
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE20resize_and_overwriteIRZNS_9to_stringEiEUlPcmE_EEvmT_
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE20resize_and_overwriteIRZNS_9to_stringEiEUlPcmE_EEvmT_:
LFB6548:
	stp	x29, x30, [sp, -112]!
LCFI256:
	mov	x29, sp
LCFI257:
	str	x19, [sp, 16]
LCFI258:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	str	x0, [x29, 104]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L418
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	x1, x0
	ldr	x0, [x29, 48]
	cmp	x0, x1
	bls	L418
	mov	w0, 1
	b	L419
L418:
	mov	w0, 0
L419:
	and	w0, w0, 1
	cmp	w0, 0
	beq	L420
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	x1, x0
	ldr	x0, [x29, 104]
	add	x19, x0, x1
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	x1, x0
	ldr	x0, [x29, 48]
	sub	x0, x0, x1
	mov	w2, 0
	mov	x1, x0
	mov	x0, x19
	bl	__ZNSt11char_traitsIcE6assignEPcmc
L420:
	stp	xzr, xzr, [x29, 72]
	ldr	x0, [x29, 56]
	str	x0, [x29, 72]
	ldr	x0, [x29, 40]
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	ldr	x2, [x29, 48]
	ldr	x1, [x29, 104]
	bl	__ZZNSt7__cxx119to_stringEiENKUlPcmE_clES0_m
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x1, [x29, 48]
	cmp	x1, x0
	bcs	L422
	brk #1000
L422:
	add	x0, x29, 72
	bl	__ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE20resize_and_overwriteIRZNS_9to_stringEiEUlPcmE_EEvmT_EN11_TerminatorD1Ev
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
LCFI259:
	ret
LFE6548:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv:
LFB6552:
	sub	sp, sp, #16
LCFI260:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
LCFI261:
	ret
LFE6552:
	.align	2
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv:
LFB6553:
	stp	x29, x30, [sp, -48]!
LCFI262:
	mov	x29, sp
LCFI263:
	str	x19, [sp, 16]
LCFI264:
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	mov	x19, x0
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L426
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	cmp	x0, 15
	bls	L427
	brk #1000
L427:
	mov	w0, 1
	b	L428
L426:
	mov	w0, 0
L428:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
LCFI265:
	ret
LFE6553:
	.align	2
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv:
LFB6554:
	stp	x29, x30, [sp, -32]!
LCFI266:
	mov	x29, sp
LCFI267:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	ldp	x29, x30, [sp], 32
LCFI268:
	ret
LFE6554:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc:
LFB6555:
	sub	sp, sp, #16
LCFI269:
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
LCFI270:
	ret
LFE6555:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm:
LFB6556:
	sub	sp, sp, #16
LCFI271:
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0, 16]
	nop
	add	sp, sp, 16
LCFI272:
	ret
LFE6556:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_:
LFB6598:
	sub	sp, sp, #64
LCFI273:
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 56]
	ldr	x0, [sp, 8]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	str	x0, [sp, 40]
	ldr	x0, [sp, 48]
	str	x0, [sp, 32]
	nop
	nop
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0]
	nop
	add	sp, sp, 64
LCFI274:
	ret
LFE6598:
	.align	2
	.globl __ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.weak_definition __ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
__ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_:
LFB6602:
	sub	sp, sp, #16
LCFI275:
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
LCFI276:
	ret
LFE6602:
	.align	2
	.globl __ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.weak_definition __ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
__ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev:
LFB6605:
	stp	x29, x30, [sp, -32]!
LCFI277:
	mov	x29, sp
LCFI278:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	L437
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
L437:
	nop
	ldp	x29, x30, [sp], 32
LCFI279:
	ret
LFE6605:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table14:
LLSDA6605:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6605-LLSDACSB6605
LLSDACSB6605:
LLSDACSE6605:
	.text
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
LFB6599:
	stp	x29, x30, [sp, -144]!
LCFI280:
	mov	x29, sp
LCFI281:
	str	x19, [sp, 16]
LCFI282:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	strb	w3, [x29, 36]
	ldr	x0, [x29, 48]
	str	x0, [x29, 80]
	ldr	x0, [x29, 40]
	str	x0, [x29, 136]
	ldr	x0, [x29, 80]
	nop
	str	x0, [x29, 128]
	ldr	x0, [x29, 136]
	str	x0, [x29, 120]
	ldr	x1, [x29, 120]
	ldr	x0, [x29, 128]
	sub	x0, x1, x0
	nop
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	cmp	x0, 15
	bls	L442
	add	x0, x29, 96
	mov	x2, 0
	mov	x1, x0
	ldr	x0, [x29, 56]
LEHB15:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
LEHE15:
	mov	x1, x0
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	ldr	x0, [x29, 96]
	mov	x1, x0
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	b	L443
L442:
	ldr	x0, [x29, 56]
	str	x0, [x29, 112]
	bl	__ZSt21is_constant_evaluatedv
	and	w0, w0, 1
	cmp	w0, 0
	beq	L450
	str	xzr, [x29, 104]
	b	L445
L446:
	ldr	x1, [x29, 112]
	ldr	x0, [x29, 104]
	add	x0, x1, x0
	strb	wzr, [x0, 16]
	ldr	x0, [x29, 104]
	add	x0, x0, 1
	str	x0, [x29, 104]
L445:
	ldr	x0, [x29, 104]
	cmp	x0, 15
	bls	L446
L450:
	nop
L443:
	add	x0, x29, 88
	ldr	x1, [x29, 56]
	bl	__ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	ldr	x2, [x29, 40]
	ldr	x1, [x29, 48]
LEHB16:
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_
LEHE16:
	str	xzr, [x29, 88]
	ldr	x0, [x29, 96]
	mov	x1, x0
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	add	x0, x29, 88
	bl	__ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	b	L449
L448:
	mov	x19, x0
	add	x0, x29, 88
	bl	__ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	mov	x0, x19
LEHB17:
	bl	__Unwind_Resume
LEHE17:
L449:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
LCFI283:
	ret
LFE6599:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table15:
LLSDA6599:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6599-LLSDACSB6599
LLSDACSB6599:
	.uleb128 LEHB15-LFB6599
	.uleb128 LEHE15-LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB16-LFB6599
	.uleb128 LEHE16-LEHB16
	.uleb128 L448-LFB6599
	.uleb128 0
	.uleb128 LEHB17-LFB6599
	.uleb128 LEHE17-LEHB17
	.uleb128 0
	.uleb128 0
LLSDACSE6599:
	.text
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc:
LFB6658:
	stp	x29, x30, [sp, -48]!
LCFI284:
	mov	x29, sp
LCFI285:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNSt11char_traitsIcE6lengthEPKc
	mov	x4, x0
	ldr	x3, [x29, 24]
	mov	x2, 0
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm
	ldp	x29, x30, [sp], 48
LCFI286:
	ret
LFE6658:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EE19_M_get_Tp_allocatorEv
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EE19_M_get_Tp_allocatorEv
__ZNSt12_Vector_baseI4BeadSaIS0_EE19_M_get_Tp_allocatorEv:
LFB6814:
	sub	sp, sp, #16
LCFI287:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
LCFI288:
	ret
LFE6814:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EE17_Vector_impl_dataC2Ev
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EE17_Vector_impl_dataC2Ev
__ZNSt12_Vector_baseI4BeadSaIS0_EE17_Vector_impl_dataC2Ev:
LFB6820:
	sub	sp, sp, #16
LCFI289:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
LCFI290:
	ret
LFE6820:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EE13_M_deallocateEPS0_m
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EE13_M_deallocateEPS0_m
__ZNSt12_Vector_baseI4BeadSaIS0_EE13_M_deallocateEPS0_m:
LFB6822:
	stp	x29, x30, [sp, -96]!
LCFI291:
	mov	x29, sp
LCFI292:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 32]
	cmp	x0, 0
	beq	L461
	ldr	x0, [x29, 40]
	str	x0, [x29, 88]
	ldr	x0, [x29, 32]
	str	x0, [x29, 80]
	ldr	x0, [x29, 24]
	str	x0, [x29, 72]
	ldr	x0, [x29, 88]
	str	x0, [x29, 64]
	ldr	x0, [x29, 80]
	str	x0, [x29, 56]
	ldr	x0, [x29, 72]
	str	x0, [x29, 48]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L459
	ldr	x0, [x29, 56]
	bl	__ZdlPv
	b	L460
L459:
	ldr	x2, [x29, 48]
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 64]
	bl	__ZNSt15__new_allocatorI4BeadE10deallocateEPS0_m
L460:
	nop
L461:
	nop
	ldp	x29, x30, [sp], 96
LCFI293:
	ret
LFE6822:
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EE15_M_erase_at_endEPS0_
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EE15_M_erase_at_endEPS0_
__ZNSt6vectorI4BeadSaIS0_EE15_M_erase_at_endEPS0_:
LFB6823:
	stp	x29, x30, [sp, -80]!
LCFI294:
	mov	x29, sp
LCFI295:
	str	x19, [sp, 16]
LCFI296:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 32]
	sub	x0, x1, x0
	asr	x1, x0, 4
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	cmp	x0, 0
	beq	L464
	ldr	x0, [x29, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [x29, 40]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x1, x0
	ldr	x0, [x29, 32]
	str	x0, [x29, 64]
	str	x19, [x29, 56]
	str	x1, [x29, 48]
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 64]
	bl	__ZSt8_DestroyIP4BeadEvT_S2_
	nop
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 8]
L464:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI297:
	ret
LFE6823:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table16:
LLSDA6823:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6823-LLSDACSB6823
LLSDACSB6823:
LLSDACSE6823:
	.text
	.align	2
	.globl __ZNKSt6vectorI4BeadSaIS0_EE4sizeEv
	.weak_definition __ZNKSt6vectorI4BeadSaIS0_EE4sizeEv
__ZNKSt6vectorI4BeadSaIS0_EE4sizeEv:
LFB6827:
	sub	sp, sp, #32
LCFI298:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 4
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bge	L466
	brk #1000
L466:
	ldr	x0, [sp, 24]
	add	sp, sp, 32
LCFI299:
	ret
LFE6827:
	.align	2
	.globl __ZSt3maxImERKT_S2_S2_
	.weak_definition __ZSt3maxImERKT_S2_S2_
__ZSt3maxImERKT_S2_S2_:
LFB6828:
	sub	sp, sp, #16
LCFI300:
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	L469
	ldr	x0, [sp]
	b	L470
L469:
	ldr	x0, [sp, 8]
L470:
	add	sp, sp, 16
LCFI301:
	ret
LFE6828:
	.align	2
	.globl __ZNKSt6vectorI4BeadSaIS0_EE12_M_check_lenEmPKc
	.weak_definition __ZNKSt6vectorI4BeadSaIS0_EE12_M_check_lenEmPKc
__ZNKSt6vectorI4BeadSaIS0_EE12_M_check_lenEmPKc:
LFB6826:
	stp	x29, x30, [sp, -80]!
LCFI302:
	mov	x29, sp
LCFI303:
	str	x19, [sp, 16]
LCFI304:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE8max_sizeEv
	mov	x19, x0
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE4sizeEv
	sub	x1, x19, x0
	ldr	x0, [x29, 48]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L472
	ldr	x0, [x29, 40]
	bl	__ZSt20__throw_length_errorPKc
L472:
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE4sizeEv
	mov	x19, x0
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE4sizeEv
	str	x0, [x29, 64]
	add	x1, x29, 48
	add	x0, x29, 64
	bl	__ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	str	x0, [x29, 72]
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE4sizeEv
	mov	x1, x0
	ldr	x0, [x29, 72]
	cmp	x0, x1
	bcc	L473
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE8max_sizeEv
	mov	x1, x0
	ldr	x0, [x29, 72]
	cmp	x0, x1
	bls	L474
L473:
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE8max_sizeEv
	b	L476
L474:
	ldr	x0, [x29, 72]
L476:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI305:
	ret
LFE6826:
	.align	2
	.globl __ZNKSt6vectorI4BeadSaIS0_EE8max_sizeEv
	.weak_definition __ZNKSt6vectorI4BeadSaIS0_EE8max_sizeEv
__ZNKSt6vectorI4BeadSaIS0_EE8max_sizeEv:
LFB6829:
	stp	x29, x30, [sp, -32]!
LCFI306:
	mov	x29, sp
LCFI307:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNKSt12_Vector_baseI4BeadSaIS0_EE19_M_get_Tp_allocatorEv
	bl	__ZNSt6vectorI4BeadSaIS0_EE11_S_max_sizeERKS1_
	ldp	x29, x30, [sp], 32
LCFI308:
	ret
LFE6829:
	.align	2
	.globl __ZNKSt12_Vector_baseI4BeadSaIS0_EE19_M_get_Tp_allocatorEv
	.weak_definition __ZNKSt12_Vector_baseI4BeadSaIS0_EE19_M_get_Tp_allocatorEv
__ZNKSt12_Vector_baseI4BeadSaIS0_EE19_M_get_Tp_allocatorEv:
LFB6830:
	sub	sp, sp, #16
LCFI309:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
LCFI310:
	ret
LFE6830:
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EE11_S_max_sizeERKS1_
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EE11_S_max_sizeERKS1_
__ZNSt6vectorI4BeadSaIS0_EE11_S_max_sizeERKS1_:
LFB6831:
	stp	x29, x30, [sp, -48]!
LCFI311:
	mov	x29, sp
LCFI312:
	str	x0, [x29, 24]
	mov	x0, -6148914691236517206
	movk	x0, 0x2aa, lsl 48
	str	x0, [x29, 40]
	mov	x0, 6148914691236517205
	movk	x0, 0x555, lsl 48
	str	x0, [x29, 32]
	add	x1, x29, 32
	add	x0, x29, 40
	bl	__ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
LCFI313:
	ret
LFE6831:
	.cstring
	.align	3
lC35:
	.ascii "vector::_M_realloc_append\0"
	.text
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
__ZNSt6vectorI4BeadSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_:
LFB6825:
	stp	x29, x30, [sp, -192]!
LCFI314:
	mov	x29, sp
LCFI315:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	adrp	x0, lC35@PAGE
	add	x2, x0, lC35@PAGEOFF;
	mov	x1, 1
	ldr	x0, [x29, 24]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE12_M_check_lenEmPKc
	str	x0, [x29, 184]
	ldr	x0, [x29, 184]
	cmp	x0, 0
	bne	L484
	brk #1000
L484:
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	str	x0, [x29, 176]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 168]
	ldr	x0, [x29, 24]
	bl	__ZNSt6vectorI4BeadSaIS0_EE3endEv
	str	x0, [x29, 56]
	ldr	x0, [x29, 24]
	bl	__ZNSt6vectorI4BeadSaIS0_EE5beginEv
	str	x0, [x29, 64]
	add	x0, x29, 56
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	ldr	x1, [x0]
	add	x0, x29, 64
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 4
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	str	x0, [x29, 160]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 184]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE11_M_allocateEm
	str	x0, [x29, 152]
	ldr	x0, [x29, 152]
	str	x0, [x29, 144]
	ldr	x1, [x29, 24]
	add	x0, x29, 32
	mov	x3, x1
	ldr	x2, [x29, 184]
	ldr	x1, [x29, 152]
	bl	__ZNSt6vectorI4BeadSaIS0_EE12_Guard_allocC1EPS0_mRSt12_Vector_baseIS0_S1_E
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 160]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	ldr	x0, [x29, 152]
	add	x0, x0, x1
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	str	x0, [x29, 96]
	ldr	x1, [x29, 96]
	nop
	ldr	x0, [x29, 16]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	str	x1, [x29, 136]
	str	x0, [x29, 128]
	str	x2, [x29, 120]
	ldr	x0, [x29, 128]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	mov	x1, x0
	ldr	x0, [x29, 136]
	bl	__ZSt12construct_atI4BeadJRKS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S3_pispcl7declvalIT0_EEEEEPS3_S6_DpOS5_
	nop
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [x29, 152]
	ldr	x1, [x29, 168]
	ldr	x0, [x29, 176]
	bl	__ZNSt6vectorI4BeadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	add	x0, x0, 48
	str	x0, [x29, 144]
	ldr	x0, [x29, 176]
	str	x0, [x29, 32]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 176]
	sub	x0, x1, x0
	asr	x1, x0, 4
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	str	x0, [x29, 40]
	add	x0, x29, 32
	bl	__ZNSt6vectorI4BeadSaIS0_EE12_Guard_allocD1Ev
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 152]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 144]
	str	x1, [x0, 8]
	ldr	x1, [x29, 184]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	ldr	x0, [x29, 152]
	add	x1, x0, x1
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	nop
	ldp	x29, x30, [sp], 192
LCFI316:
	ret
LFE6825:
	.align	2
	.globl __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.weak_definition __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj:
LFB6844:
	stp	x29, x30, [sp, -48]!
LCFI317:
	mov	x29, sp
LCFI318:
	str	x0, [x29, 24]
	str	w1, [x29, 20]
	ldr	w0, [x29, 20]
	bl	__ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
	mov	w1, w0
	ldr	x0, [x29, 24]
	str	w1, [x0]
	mov	x0, 1
	str	x0, [x29, 40]
	b	L493
L494:
	ldr	x0, [x29, 40]
	sub	x1, x0, #1
	ldr	x0, [x29, 24]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [x29, 36]
	ldr	w0, [x29, 36]
	lsr	w0, w0, 30
	ldr	w1, [x29, 36]
	eor	w0, w1, w0
	str	w0, [x29, 36]
	ldr	w1, [x29, 36]
	mov	w0, 35173
	movk	w0, 0x6c07, lsl 16
	mul	w0, w1, w0
	str	w0, [x29, 36]
	ldr	x0, [x29, 40]
	bl	__ZNSt8__detail5__modIjLj624ELj1ELj0EEET_S1_
	mov	w1, w0
	ldr	w0, [x29, 36]
	add	w0, w0, w1
	str	w0, [x29, 36]
	ldr	w0, [x29, 36]
	bl	__ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
	mov	w2, w0
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	w2, [x0, x1, lsl 2]
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
L493:
	ldr	x0, [x29, 40]
	cmp	x0, 623
	bls	L494
	ldr	x0, [x29, 24]
	mov	x1, 624
	str	x1, [x0, 2496]
	nop
	ldp	x29, x30, [sp], 48
LCFI319:
	ret
LFE6844:
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EE15_M_erase_at_endEPS0_
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EE15_M_erase_at_endEPS0_
__ZNSt6vectorI10TaylorLineSaIS0_EE15_M_erase_at_endEPS0_:
LFB6845:
	stp	x29, x30, [sp, -80]!
LCFI320:
	mov	x29, sp
LCFI321:
	str	x19, [sp, 16]
LCFI322:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 32]
	sub	x0, x1, x0
	asr	x1, x0, 4
	mov	x0, 28087
	movk	x0, 0xb6db, lsl 16
	movk	x0, 0xdb6d, lsl 32
	movk	x0, 0x6db6, lsl 48
	mul	x0, x1, x0
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	cmp	x0, 0
	beq	L497
	ldr	x0, [x29, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [x29, 40]
	bl	__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x1, x0
	ldr	x0, [x29, 32]
	str	x0, [x29, 64]
	str	x19, [x29, 56]
	str	x1, [x29, 48]
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 64]
	bl	__ZSt8_DestroyIP10TaylorLineEvT_S2_
	nop
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 8]
L497:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI323:
	ret
LFE6845:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table17:
LLSDA6845:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6845-LLSDACSB6845
LLSDACSB6845:
LLSDACSE6845:
	.text
	.cstring
	.align	3
lC36:
	.ascii "_M_a <= _M_b\0"
	.align	3
lC37:
	.ascii "std::uniform_real_distribution<_RealType>::param_type::param_type(_RealType, _RealType) [with _RealType = double]\0"
	.align	3
lC38:
	.ascii "/opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.h\0"
	.text
	.align	2
	.globl __ZNSt25uniform_real_distributionIdE10param_typeC1Edd
	.weak_definition __ZNSt25uniform_real_distributionIdE10param_typeC1Edd
__ZNSt25uniform_real_distributionIdE10param_typeC1Edd:
LFB6849:
	stp	x29, x30, [sp, -48]!
LCFI324:
	mov	x29, sp
LCFI325:
	str	x0, [x29, 40]
	str	d0, [x29, 32]
	str	d1, [x29, 24]
	ldr	x0, [x29, 40]
	ldr	d31, [x29, 32]
	str	d31, [x0]
	ldr	x0, [x29, 40]
	ldr	d31, [x29, 24]
	str	d31, [x0, 8]
	ldr	x0, [x29, 40]
	ldr	d30, [x0]
	ldr	x0, [x29, 40]
	ldr	d31, [x0, 8]
	fcmpe	d30, d31
	cset	w0, ls
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	beq	L500
	adrp	x0, lC36@PAGE
	add	x3, x0, lC36@PAGEOFF;
	adrp	x0, lC37@PAGE
	add	x2, x0, lC37@PAGEOFF;
	mov	w1, 1901
	adrp	x0, lC38@PAGE
	add	x0, x0, lC38@PAGEOFF;
	bl	__ZSt21__glibcxx_assert_failPKciS0_S0_
L500:
	nop
	ldp	x29, x30, [sp], 48
LCFI326:
	ret
LFE6849:
	.align	2
	.globl __ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEdRT_RKNS0_10param_typeE
	.weak_definition __ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEdRT_RKNS0_10param_typeE
__ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEdRT_RKNS0_10param_typeE:
LFB6850:
	stp	x29, x30, [sp, -80]!
LCFI327:
	mov	x29, sp
LCFI328:
	stp	d14, d15, [sp, 16]
LCFI329:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	add	x0, x29, 72
	ldr	x1, [x29, 48]
	bl	__ZNSt8__detail8_AdaptorISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEdEC1ERS2_
	add	x0, x29, 72
	bl	__ZNSt8__detail8_AdaptorISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEdEclEv
	fmov	d15, d0
	ldr	x0, [x29, 40]
	bl	__ZNKSt25uniform_real_distributionIdE10param_type1bEv
	fmov	d14, d0
	ldr	x0, [x29, 40]
	bl	__ZNKSt25uniform_real_distributionIdE10param_type1aEv
	fmov	d31, d0
	fsub	d31, d14, d31
	fmul	d15, d15, d31
	ldr	x0, [x29, 40]
	bl	__ZNKSt25uniform_real_distributionIdE10param_type1aEv
	fmov	d31, d0
	fadd	d31, d15, d31
	fmov	d0, d31
	ldp	d14, d15, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI330:
	ret
LFE6850:
	.align	2
	.globl __ZNKSt6vectorI10TaylorLineSaIS0_EE12_M_check_lenEmPKc
	.weak_definition __ZNKSt6vectorI10TaylorLineSaIS0_EE12_M_check_lenEmPKc
__ZNKSt6vectorI10TaylorLineSaIS0_EE12_M_check_lenEmPKc:
LFB6856:
	stp	x29, x30, [sp, -80]!
LCFI331:
	mov	x29, sp
LCFI332:
	str	x19, [sp, 16]
LCFI333:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE8max_sizeEv
	mov	x19, x0
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE4sizeEv
	sub	x1, x19, x0
	ldr	x0, [x29, 48]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L504
	ldr	x0, [x29, 40]
	bl	__ZSt20__throw_length_errorPKc
L504:
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE4sizeEv
	mov	x19, x0
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE4sizeEv
	str	x0, [x29, 64]
	add	x1, x29, 48
	add	x0, x29, 64
	bl	__ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	str	x0, [x29, 72]
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE4sizeEv
	mov	x1, x0
	ldr	x0, [x29, 72]
	cmp	x0, x1
	bcc	L505
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE8max_sizeEv
	mov	x1, x0
	ldr	x0, [x29, 72]
	cmp	x0, x1
	bls	L506
L505:
	ldr	x0, [x29, 56]
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE8max_sizeEv
	b	L508
L506:
	ldr	x0, [x29, 72]
L508:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI334:
	ret
LFE6856:
	.align	2
	.globl __ZNKSt6vectorI10TaylorLineSaIS0_EE8max_sizeEv
	.weak_definition __ZNKSt6vectorI10TaylorLineSaIS0_EE8max_sizeEv
__ZNKSt6vectorI10TaylorLineSaIS0_EE8max_sizeEv:
LFB6857:
	stp	x29, x30, [sp, -32]!
LCFI335:
	mov	x29, sp
LCFI336:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNKSt12_Vector_baseI10TaylorLineSaIS0_EE19_M_get_Tp_allocatorEv
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE11_S_max_sizeERKS1_
	ldp	x29, x30, [sp], 32
LCFI337:
	ret
LFE6857:
	.align	2
	.globl __ZNKSt12_Vector_baseI10TaylorLineSaIS0_EE19_M_get_Tp_allocatorEv
	.weak_definition __ZNKSt12_Vector_baseI10TaylorLineSaIS0_EE19_M_get_Tp_allocatorEv
__ZNKSt12_Vector_baseI10TaylorLineSaIS0_EE19_M_get_Tp_allocatorEv:
LFB6858:
	sub	sp, sp, #16
LCFI338:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
LCFI339:
	ret
LFE6858:
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EE11_S_max_sizeERKS1_
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EE11_S_max_sizeERKS1_
__ZNSt6vectorI10TaylorLineSaIS0_EE11_S_max_sizeERKS1_:
LFB6859:
	stp	x29, x30, [sp, -48]!
LCFI340:
	mov	x29, sp
LCFI341:
	str	x0, [x29, 24]
	mov	x0, 18724
	movk	x0, 0x2492, lsl 16
	orr	x0, x0, x0, lsl 27
	str	x0, [x29, 40]
	mov	x0, 37449
	movk	x0, 0x4924, lsl 16
	orr	x0, x0, x0, lsl 27
	str	x0, [x29, 32]
	add	x1, x29, 32
	add	x0, x29, 40
	bl	__ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
LCFI342:
	ret
LFE6859:
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
__ZNSt6vectorI10TaylorLineSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_:
LFB6855:
	stp	x29, x30, [sp, -208]!
LCFI343:
	mov	x29, sp
LCFI344:
	str	x19, [sp, 16]
LCFI345:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	adrp	x0, lC35@PAGE
	add	x2, x0, lC35@PAGEOFF;
	mov	x1, 1
	ldr	x0, [x29, 40]
LEHB18:
	bl	__ZNKSt6vectorI10TaylorLineSaIS0_EE12_M_check_lenEmPKc
	str	x0, [x29, 200]
	ldr	x0, [x29, 200]
	cmp	x0, 0
	bne	L516
	brk #1000
L516:
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	str	x0, [x29, 192]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	str	x0, [x29, 184]
	ldr	x0, [x29, 40]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE3endEv
	str	x0, [x29, 72]
	ldr	x0, [x29, 40]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE5beginEv
	str	x0, [x29, 80]
	add	x0, x29, 72
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x1, [x0]
	add	x0, x29, 80
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 4
	mov	x0, 28087
	movk	x0, 0xb6db, lsl 16
	movk	x0, 0xdb6d, lsl 32
	movk	x0, 0x6db6, lsl 48
	mul	x0, x1, x0
	str	x0, [x29, 176]
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 200]
	bl	__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE11_M_allocateEm
LEHE18:
	str	x0, [x29, 168]
	ldr	x0, [x29, 168]
	str	x0, [x29, 160]
	ldr	x1, [x29, 40]
	add	x0, x29, 48
	mov	x3, x1
	ldr	x2, [x29, 200]
	ldr	x1, [x29, 168]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE12_Guard_allocC1EPS0_mRSt12_Vector_baseIS0_S1_E
	ldr	x2, [x29, 40]
	ldr	x1, [x29, 176]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	ldr	x0, [x29, 168]
	add	x0, x0, x1
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	str	x0, [x29, 112]
	ldr	x1, [x29, 112]
	nop
	ldr	x0, [x29, 32]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	str	x1, [x29, 152]
	str	x0, [x29, 144]
	str	x2, [x29, 136]
	ldr	x0, [x29, 144]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	mov	x1, x0
	ldr	x0, [x29, 152]
LEHB19:
	bl	__ZSt12construct_atI10TaylorLineJRKS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S3_pispcl7declvalIT0_EEEEEPS3_S6_DpOS5_
LEHE19:
	nop
	ldr	x0, [x29, 40]
	bl	__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [x29, 168]
	ldr	x1, [x29, 184]
	ldr	x0, [x29, 192]
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	str	x0, [x29, 160]
	ldr	x0, [x29, 160]
	add	x0, x0, 112
	str	x0, [x29, 160]
	ldr	x0, [x29, 192]
	str	x0, [x29, 48]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 192]
	sub	x0, x1, x0
	asr	x1, x0, 4
	mov	x0, 28087
	movk	x0, 0xb6db, lsl 16
	movk	x0, 0xdb6d, lsl 32
	movk	x0, 0x6db6, lsl 48
	mul	x0, x1, x0
	str	x0, [x29, 56]
	add	x0, x29, 48
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE12_Guard_allocD1Ev
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 168]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 160]
	str	x1, [x0, 8]
	ldr	x1, [x29, 200]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	ldr	x0, [x29, 168]
	add	x1, x0, x1
	ldr	x0, [x29, 40]
	str	x1, [x0, 16]
	b	L526
L525:
	mov	x19, x0
	add	x0, x29, 48
	bl	__ZNSt6vectorI10TaylorLineSaIS0_EE12_Guard_allocD1Ev
	mov	x0, x19
LEHB20:
	bl	__Unwind_Resume
LEHE20:
L526:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 208
LCFI346:
	ret
LFE6855:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table18:
LLSDA6855:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE6855-LLSDACSB6855
LLSDACSB6855:
	.uleb128 LEHB18-LFB6855
	.uleb128 LEHE18-LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB19-LFB6855
	.uleb128 LEHE19-LEHB19
	.uleb128 L525-LFB6855
	.uleb128 0
	.uleb128 LEHB20-LFB6855
	.uleb128 LEHE20-LEHB20
	.uleb128 0
	.uleb128 0
LLSDACSE6855:
	.text
	.cstring
	.align	3
lC39:
	.ascii "basic_string::append\0"
	.text
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc:
LFB6866:
	stp	x29, x30, [sp, -48]!
LCFI347:
	mov	x29, sp
LCFI348:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	bl	__ZNSt11char_traitsIcE6lengthEPKc
	str	x0, [x29, 40]
	adrp	x0, lC39@PAGE
	add	x3, x0, lC39@PAGEOFF;
	ldr	x2, [x29, 40]
	mov	x1, 0
	ldr	x0, [x29, 24]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc
	ldr	x2, [x29, 40]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
	ldp	x29, x30, [sp], 48
LCFI349:
	ret
LFE6866:
	.align	2
	.globl __ZNSt12_Vector_baseI10TaylorLineSaIS0_EE13_M_deallocateEPS0_m
	.weak_definition __ZNSt12_Vector_baseI10TaylorLineSaIS0_EE13_M_deallocateEPS0_m
__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE13_M_deallocateEPS0_m:
LFB6890:
	stp	x29, x30, [sp, -96]!
LCFI350:
	mov	x29, sp
LCFI351:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 32]
	cmp	x0, 0
	beq	L534
	ldr	x0, [x29, 40]
	str	x0, [x29, 88]
	ldr	x0, [x29, 32]
	str	x0, [x29, 80]
	ldr	x0, [x29, 24]
	str	x0, [x29, 72]
	ldr	x0, [x29, 88]
	str	x0, [x29, 64]
	ldr	x0, [x29, 80]
	str	x0, [x29, 56]
	ldr	x0, [x29, 72]
	str	x0, [x29, 48]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L532
	ldr	x0, [x29, 56]
	bl	__ZdlPv
	b	L533
L532:
	ldr	x2, [x29, 48]
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 64]
	bl	__ZNSt15__new_allocatorI10TaylorLineE10deallocateEPS0_m
L533:
	nop
L534:
	nop
	ldp	x29, x30, [sp], 96
LCFI352:
	ret
LFE6890:
	.align	2
	.globl __ZNSt12_Vector_baseI10TaylorLineSaIS0_EE19_M_get_Tp_allocatorEv
	.weak_definition __ZNSt12_Vector_baseI10TaylorLineSaIS0_EE19_M_get_Tp_allocatorEv
__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE19_M_get_Tp_allocatorEv:
LFB6891:
	sub	sp, sp, #16
LCFI353:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
LCFI354:
	ret
LFE6891:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm:
LFB6896:
	stp	x29, x30, [sp, -96]!
LCFI355:
	mov	x29, sp
LCFI356:
	str	x19, [sp, 16]
LCFI357:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	mov	x19, x0
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	mov	x1, x0
	ldr	x0, [x29, 32]
	add	x0, x0, 1
	str	x19, [x29, 88]
	str	x1, [x29, 80]
	str	x0, [x29, 72]
	ldr	x0, [x29, 88]
	str	x0, [x29, 64]
	ldr	x0, [x29, 80]
	str	x0, [x29, 56]
	ldr	x0, [x29, 72]
	str	x0, [x29, 48]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L539
	ldr	x0, [x29, 56]
	bl	__ZdlPv
	b	L540
L539:
	ldr	x2, [x29, 48]
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 64]
	bl	__ZNSt15__new_allocatorIcE10deallocateEPcm
L540:
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
LCFI358:
	ret
LFE6896:
	.align	2
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv:
LFB6898:
	stp	x29, x30, [sp, -48]!
LCFI359:
	mov	x29, sp
LCFI360:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	and	w0, w0, 1
	cmp	w0, 0
	beq	L542
	mov	x0, 15
	str	x0, [x29, 40]
	b	L543
L542:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	str	x0, [x29, 40]
L543:
	ldr	x0, [x29, 40]
	cmp	x0, 14
	bls	L544
	ldr	x0, [x29, 24]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	mov	x1, x0
	ldr	x0, [x29, 40]
	cmp	x0, x1
	bls	L545
L544:
	mov	w0, 1
	b	L546
L545:
	mov	w0, 0
L546:
	and	w0, w0, 1
	cmp	w0, 0
	beq	L547
	brk #1000
L547:
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 48
LCFI361:
	ret
LFE6898:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm:
LFB6897:
	stp	x29, x30, [sp, -64]!
LCFI362:
	mov	x29, sp
LCFI363:
	str	x19, [sp, 16]
LCFI364:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv
	str	x0, [x29, 56]
	ldr	x0, [x29, 32]
	ldr	x1, [x29, 56]
	cmp	x1, x0
	bcs	L552
	add	x0, x29, 32
	ldr	x2, [x29, 56]
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	str	x0, [x29, 48]
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	mov	x19, x0
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	add	x0, x0, 1
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [x29, 48]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	ldr	x0, [x29, 32]
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	b	L549
L552:
	nop
L549:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI365:
	ret
LFE6897:
	.align	2
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
LFB6900:
	stp	x29, x30, [sp, -32]!
LCFI366:
	mov	x29, sp
LCFI367:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	add	x0, x0, 16
	bl	__ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
	ldp	x29, x30, [sp], 32
LCFI368:
	ret
LFE6900:
	.cstring
	.align	3
lC40:
	.ascii "basic_string::_M_create\0"
	.text
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm:
LFB6922:
	stp	x29, x30, [sp, -64]!
LCFI369:
	mov	x29, sp
LCFI370:
	str	x19, [sp, 16]
LCFI371:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	ldr	x0, [x29, 48]
	ldr	x19, [x0]
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	cmp	x19, x0
	cset	w0, hi
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L556
	adrp	x0, lC40@PAGE
	add	x0, x0, lC40@PAGEOFF;
	bl	__ZSt20__throw_length_errorPKc
L556:
	ldr	x0, [x29, 48]
	ldr	x0, [x0]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	bcs	L557
	ldr	x0, [x29, 48]
	ldr	x1, [x0]
	ldr	x0, [x29, 40]
	lsl	x0, x0, 1
	cmp	x1, x0
	bcs	L557
	ldr	x0, [x29, 40]
	lsl	x1, x0, 1
	ldr	x0, [x29, 48]
	str	x1, [x0]
	ldr	x0, [x29, 48]
	ldr	x19, [x0]
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	cmp	x19, x0
	cset	w0, hi
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L557
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	mov	x1, x0
	ldr	x0, [x29, 48]
	str	x1, [x0]
L557:
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	mov	x2, x0
	ldr	x0, [x29, 48]
	ldr	x0, [x0]
	add	x0, x0, 1
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI372:
	ret
LFE6922:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_:
LFB6923:
	stp	x29, x30, [sp, -64]!
LCFI373:
	mov	x29, sp
LCFI374:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 32]
	str	x0, [x29, 56]
	ldr	x3, [x29, 56]
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 32]
	sub	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [x29, 40]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	nop
	ldp	x29, x30, [sp], 64
LCFI375:
	ret
LFE6923:
	.cstring
	.align	3
lC41:
	.ascii "basic_string::replace\0"
	.text
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm:
LFB6972:
	stp	x29, x30, [sp, -80]!
LCFI376:
	mov	x29, sp
LCFI377:
	str	x19, [sp, 16]
LCFI378:
	str	x0, [x29, 72]
	str	x1, [x29, 64]
	str	x2, [x29, 56]
	str	x3, [x29, 48]
	str	x4, [x29, 40]
	adrp	x0, lC41@PAGE
	add	x2, x0, lC41@PAGEOFF;
	ldr	x1, [x29, 64]
	ldr	x0, [x29, 72]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc
	mov	x19, x0
	ldr	x2, [x29, 56]
	ldr	x1, [x29, 64]
	ldr	x0, [x29, 72]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm
	ldr	x4, [x29, 40]
	ldr	x3, [x29, 48]
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [x29, 72]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI379:
	ret
LFE6972:
	.align	2
	.globl __ZSt8_DestroyIP4BeadEvT_S2_
	.weak_definition __ZSt8_DestroyIP4BeadEvT_S2_
__ZSt8_DestroyIP4BeadEvT_S2_:
LFB7088:
	stp	x29, x30, [sp, -48]!
LCFI380:
	mov	x29, sp
LCFI381:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L569
	b	L566
L568:
	ldr	x0, [x29, 24]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	bl	__ZSt10destroy_atI4BeadEvPT_
	ldr	x0, [x29, 24]
	add	x0, x0, 48
	str	x0, [x29, 24]
L566:
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 16]
	cmp	x1, x0
	bne	L568
L569:
	nop
	ldp	x29, x30, [sp], 48
LCFI382:
	ret
LFE7088:
	.align	2
	.globl __ZSt12construct_atI4BeadJRKS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S3_pispcl7declvalIT0_EEEEEPS3_S6_DpOS5_
	.weak_definition __ZSt12construct_atI4BeadJRKS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S3_pispcl7declvalIT0_EEEEEPS3_S6_DpOS5_
__ZSt12construct_atI4BeadJRKS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S3_pispcl7declvalIT0_EEEEEPS3_S6_DpOS5_:
LFB7094:
	stp	x29, x30, [sp, -64]!
LCFI383:
	mov	x29, sp
LCFI384:
	stp	x19, x20, [sp, 16]
LCFI385:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	ldr	x20, [x29, 56]
	mov	x1, x20
	mov	x0, 48
	bl	__ZnwmPv
	mov	x19, x0
	ldr	x0, [x29, 32]
	str	x0, [x29, 48]
	ldr	x1, [x29, 48]
	mov	x0, x19
	ldr	q29, [x1]
	ldr	q30, [x1, 16]
	ldr	q31, [x1, 32]
	str	q29, [x0]
	str	q30, [x0, 16]
	str	q31, [x0, 32]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L573
	mov	x1, x20
	mov	x0, x19
	bl	__ZdlPvS_
L573:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI386:
	ret
LFE7094:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EE11_M_allocateEm
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EE11_M_allocateEm
__ZNSt12_Vector_baseI4BeadSaIS0_EE11_M_allocateEm:
LFB7095:
	stp	x29, x30, [sp, -64]!
LCFI387:
	mov	x29, sp
LCFI388:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	cmp	x0, 0
	beq	L575
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
	ldr	x0, [x29, 16]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	str	x0, [x29, 40]
	ldr	x0, [x29, 48]
	str	x0, [x29, 32]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L577
	ldr	x1, [x29, 32]
	mov	x6, 0
	mov	x0, 48
	mul	x7, x1, x0
	umulh	x0, x1, x0
	mov	x2, x7
	mov	x3, x0
	mov	x4, x3
	mov	x5, 0
	cmp	x4, 0
	beq	L578
	mov	x6, 1
L578:
	mov	x0, x2
	str	x0, [x29, 32]
	mov	x0, x6
	and	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L580
	bl	__ZSt28__throw_bad_array_new_lengthv
L580:
	ldr	x0, [x29, 32]
	bl	__Znwm
	b	L581
L577:
	ldr	x0, [x29, 32]
	mov	x2, 0
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	__ZNSt15__new_allocatorI4BeadE8allocateEmPKv
	nop
L581:
	nop
	b	L583
L575:
	mov	x0, 0
L583:
	ldp	x29, x30, [sp], 64
LCFI389:
	ret
LFE7095:
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EE12_Guard_allocC1EPS0_mRSt12_Vector_baseIS0_S1_E
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EE12_Guard_allocC1EPS0_mRSt12_Vector_baseIS0_S1_E
__ZNSt6vectorI4BeadSaIS0_EE12_Guard_allocC1EPS0_mRSt12_Vector_baseIS0_S1_E:
LFB7098:
	sub	sp, sp, #32
LCFI390:
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [sp]
	str	x1, [x0, 16]
	nop
	add	sp, sp, 32
LCFI391:
	ret
LFE7098:
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EE12_Guard_allocD1Ev
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EE12_Guard_allocD1Ev
__ZNSt6vectorI4BeadSaIS0_EE12_Guard_allocD1Ev:
LFB7101:
	stp	x29, x30, [sp, -32]!
LCFI392:
	mov	x29, sp
LCFI393:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	L588
	ldr	x0, [x29, 24]
	ldr	x3, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	mov	x2, x0
	mov	x0, x3
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE13_M_deallocateEPS0_m
L588:
	nop
	ldp	x29, x30, [sp], 32
LCFI394:
	ret
LFE7101:
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
__ZNSt6vectorI4BeadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
LFB7103:
	stp	x29, x30, [sp, -48]!
LCFI395:
	mov	x29, sp
LCFI396:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x3, [x29, 16]
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZSt12__relocate_aIP4BeadS1_SaIS0_EET0_T_S4_S3_RT1_
	ldp	x29, x30, [sp], 48
LCFI397:
	ret
LFE7103:
	.align	2
	.globl __ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
	.weak_definition __ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
__ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_:
LFB7104:
	stp	x29, x30, [sp, -32]!
LCFI398:
	mov	x29, sp
LCFI399:
	str	w0, [x29, 28]
	ldr	w0, [x29, 28]
	bl	__ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj
	ldp	x29, x30, [sp], 32
LCFI400:
	ret
LFE7104:
	.align	2
	.globl __ZNSt8__detail5__modIjLj624ELj1ELj0EEET_S1_
	.weak_definition __ZNSt8__detail5__modIjLj624ELj1ELj0EEET_S1_
__ZNSt8__detail5__modIjLj624ELj1ELj0EEET_S1_:
LFB7105:
	stp	x29, x30, [sp, -32]!
LCFI401:
	mov	x29, sp
LCFI402:
	str	w0, [x29, 28]
	ldr	w0, [x29, 28]
	bl	__ZNSt8__detail4_ModIjLj624ELj1ELj0ELb1ELb1EE6__calcEj
	ldp	x29, x30, [sp], 32
LCFI403:
	ret
LFE7105:
	.align	2
	.globl __ZNSt8__detail8_AdaptorISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEdEC1ERS2_
	.weak_definition __ZNSt8__detail8_AdaptorISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEdEC1ERS2_
__ZNSt8__detail8_AdaptorISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEdEC1ERS2_:
LFB7109:
	sub	sp, sp, #16
LCFI404:
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
LCFI405:
	ret
LFE7109:
	.align	2
	.globl __ZNSt8__detail8_AdaptorISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEdEclEv
	.weak_definition __ZNSt8__detail8_AdaptorISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEdEclEv
__ZNSt8__detail8_AdaptorISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEdEclEv:
LFB7110:
	stp	x29, x30, [sp, -32]!
LCFI406:
	mov	x29, sp
LCFI407:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	bl	__ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEET_RT1_
	fmov	d31, d0
	fmov	d0, d31
	ldp	x29, x30, [sp], 32
LCFI408:
	ret
LFE7110:
	.align	2
	.globl __ZNKSt25uniform_real_distributionIdE10param_type1bEv
	.weak_definition __ZNKSt25uniform_real_distributionIdE10param_type1bEv
__ZNKSt25uniform_real_distributionIdE10param_type1bEv:
LFB7111:
	sub	sp, sp, #16
LCFI409:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	d31, [x0, 8]
	fmov	d0, d31
	add	sp, sp, 16
LCFI410:
	ret
LFE7111:
	.align	2
	.globl __ZNKSt25uniform_real_distributionIdE10param_type1aEv
	.weak_definition __ZNKSt25uniform_real_distributionIdE10param_type1aEv
__ZNKSt25uniform_real_distributionIdE10param_type1aEv:
LFB7112:
	sub	sp, sp, #16
LCFI411:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	d31, [x0]
	fmov	d0, d31
	add	sp, sp, 16
LCFI412:
	ret
LFE7112:
	.align	2
	.globl __ZN10TaylorLineC1ERKS_
	.weak_definition __ZN10TaylorLineC1ERKS_
__ZN10TaylorLineC1ERKS_:
LFB7117:
	stp	x29, x30, [sp, -32]!
LCFI413:
	mov	x29, sp
LCFI414:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	adrp	x0, __ZTV10TaylorLine@GOTPAGE
	ldr	x0, [x0, __ZTV10TaylorLine@GOTPAGEOFF]
	add	x1, x0, 16
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	add	x2, x0, 8
	ldr	x0, [x29, 16]
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEC1ERKS2_
	ldr	x0, [x29, 16]
	ldr	w1, [x0, 32]
	ldr	x0, [x29, 24]
	str	w1, [x0, 32]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 40]
	ldr	x0, [x29, 24]
	str	d31, [x0, 40]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 48]
	ldr	x0, [x29, 24]
	str	d31, [x0, 48]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 56]
	ldr	x0, [x29, 24]
	str	d31, [x0, 56]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 64]
	ldr	x0, [x29, 24]
	str	d31, [x0, 64]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 72]
	ldr	x0, [x29, 24]
	str	d31, [x0, 72]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 80]
	ldr	x0, [x29, 24]
	str	d31, [x0, 80]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 88]
	ldr	x0, [x29, 24]
	str	d31, [x0, 88]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 96]
	ldr	x0, [x29, 24]
	str	d31, [x0, 96]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 104]
	ldr	x0, [x29, 24]
	str	d31, [x0, 104]
	nop
	ldp	x29, x30, [sp], 32
LCFI415:
	ret
LFE7117:
	.align	2
	.globl __ZSt12construct_atI10TaylorLineJRKS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S3_pispcl7declvalIT0_EEEEEPS3_S6_DpOS5_
	.weak_definition __ZSt12construct_atI10TaylorLineJRKS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S3_pispcl7declvalIT0_EEEEEPS3_S6_DpOS5_
__ZSt12construct_atI10TaylorLineJRKS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S3_pispcl7declvalIT0_EEEEEPS3_S6_DpOS5_:
LFB7114:
	stp	x29, x30, [sp, -80]!
LCFI416:
	mov	x29, sp
LCFI417:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
LCFI418:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	ldr	x0, [x29, 56]
	str	x0, [x29, 72]
	ldr	x20, [x29, 72]
	mov	x1, x20
	mov	x0, 112
	bl	__ZnwmPv
	mov	x19, x0
	mov	w21, 1
	ldr	x0, [x29, 48]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	mov	x1, x0
	mov	x0, x19
LEHB21:
	bl	__ZN10TaylorLineC1ERKS_
LEHE21:
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L606
	mov	x1, x20
	mov	x0, x19
	bl	__ZdlPvS_
L606:
	mov	x0, x19
	b	L610
L609:
	mov	x22, x0
	and	w0, w21, 1
	cmp	w0, 0
	beq	L611
	mov	x1, x20
	mov	x0, x19
	bl	__ZdlPvS_
L611:
	nop
	mov	x0, x22
LEHB22:
	bl	__Unwind_Resume
LEHE22:
L610:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 80
LCFI419:
	ret
LFE7114:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table19:
LLSDA7114:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7114-LLSDACSB7114
LLSDACSB7114:
	.uleb128 LEHB21-LFB7114
	.uleb128 LEHE21-LEHB21
	.uleb128 L609-LFB7114
	.uleb128 0
	.uleb128 LEHB22-LFB7114
	.uleb128 LEHE22-LEHB22
	.uleb128 0
	.uleb128 0
LLSDACSE7114:
	.text
	.align	2
	.globl __ZNSt12_Vector_baseI10TaylorLineSaIS0_EE11_M_allocateEm
	.weak_definition __ZNSt12_Vector_baseI10TaylorLineSaIS0_EE11_M_allocateEm
__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE11_M_allocateEm:
LFB7118:
	stp	x29, x30, [sp, -64]!
LCFI420:
	mov	x29, sp
LCFI421:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	cmp	x0, 0
	beq	L613
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
	ldr	x0, [x29, 16]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	str	x0, [x29, 40]
	ldr	x0, [x29, 48]
	str	x0, [x29, 32]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L615
	ldr	x1, [x29, 32]
	mov	x6, 0
	mov	x0, 112
	mul	x7, x1, x0
	umulh	x0, x1, x0
	mov	x2, x7
	mov	x3, x0
	mov	x4, x3
	mov	x5, 0
	cmp	x4, 0
	beq	L616
	mov	x6, 1
L616:
	mov	x0, x2
	str	x0, [x29, 32]
	mov	x0, x6
	and	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L618
	bl	__ZSt28__throw_bad_array_new_lengthv
L618:
	ldr	x0, [x29, 32]
	bl	__Znwm
	b	L619
L615:
	ldr	x0, [x29, 32]
	mov	x2, 0
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	__ZNSt15__new_allocatorI10TaylorLineE8allocateEmPKv
	nop
L619:
	nop
	b	L621
L613:
	mov	x0, 0
L621:
	ldp	x29, x30, [sp], 64
LCFI422:
	ret
LFE7118:
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EE12_Guard_allocC1EPS0_mRSt12_Vector_baseIS0_S1_E
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EE12_Guard_allocC1EPS0_mRSt12_Vector_baseIS0_S1_E
__ZNSt6vectorI10TaylorLineSaIS0_EE12_Guard_allocC1EPS0_mRSt12_Vector_baseIS0_S1_E:
LFB7121:
	sub	sp, sp, #32
LCFI423:
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [sp]
	str	x1, [x0, 16]
	nop
	add	sp, sp, 32
LCFI424:
	ret
LFE7121:
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EE12_Guard_allocD1Ev
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EE12_Guard_allocD1Ev
__ZNSt6vectorI10TaylorLineSaIS0_EE12_Guard_allocD1Ev:
LFB7124:
	stp	x29, x30, [sp, -32]!
LCFI425:
	mov	x29, sp
LCFI426:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	L626
	ldr	x0, [x29, 24]
	ldr	x3, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	mov	x2, x0
	mov	x0, x3
	bl	__ZNSt12_Vector_baseI10TaylorLineSaIS0_EE13_M_deallocateEPS0_m
L626:
	nop
	ldp	x29, x30, [sp], 32
LCFI427:
	ret
LFE7124:
	.align	2
	.globl __ZNSt6vectorI10TaylorLineSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.weak_definition __ZNSt6vectorI10TaylorLineSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
__ZNSt6vectorI10TaylorLineSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
LFB7126:
	stp	x29, x30, [sp, -48]!
LCFI428:
	mov	x29, sp
LCFI429:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x3, [x29, 16]
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZSt12__relocate_aIP10TaylorLineS1_SaIS0_EET0_T_S4_S3_RT1_
	ldp	x29, x30, [sp], 48
LCFI430:
	ret
LFE7126:
	.align	2
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc:
LFB7127:
	stp	x29, x30, [sp, -64]!
LCFI431:
	mov	x29, sp
LCFI432:
	str	x19, [sp, 16]
LCFI433:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	str	x3, [x29, 32]
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	mov	x19, x0
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	x1, x0
	ldr	x0, [x29, 48]
	sub	x0, x0, x1
	add	x0, x19, x0
	ldr	x1, [x29, 40]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L631
	ldr	x0, [x29, 32]
	bl	__ZSt20__throw_length_errorPKc
L631:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI434:
	ret
LFE7127:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm:
LFB7128:
	stp	x29, x30, [sp, -80]!
LCFI435:
	mov	x29, sp
LCFI436:
	str	x19, [sp, 16]
LCFI437:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	x1, x0
	ldr	x0, [x29, 40]
	add	x0, x0, x1
	str	x0, [x29, 72]
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv
	mov	x1, x0
	ldr	x0, [x29, 72]
	cmp	x0, x1
	cset	w0, ls
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L633
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	L634
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	mov	x19, x0
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	add	x0, x19, x0
	ldr	x2, [x29, 40]
	ldr	x1, [x29, 48]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	b	L634
L633:
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	ldr	x4, [x29, 40]
	ldr	x3, [x29, 48]
	mov	x2, 0
	mov	x1, x0
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
L634:
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	ldr	x0, [x29, 56]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI438:
	ret
LFE7128:
	.align	2
	.globl __ZSt8_DestroyIP10TaylorLineEvT_S2_
	.weak_definition __ZSt8_DestroyIP10TaylorLineEvT_S2_
__ZSt8_DestroyIP10TaylorLineEvT_S2_:
LFB7135:
	stp	x29, x30, [sp, -48]!
LCFI439:
	mov	x29, sp
LCFI440:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	b	L637
L639:
	ldr	x0, [x29, 24]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	bl	__ZSt8_DestroyI10TaylorLineEvPT_
	ldr	x0, [x29, 24]
	add	x0, x0, 112
	str	x0, [x29, 24]
L637:
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 16]
	cmp	x1, x0
	bne	L639
	nop
	nop
	ldp	x29, x30, [sp], 48
LCFI441:
	ret
LFE7135:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm:
LFB7137:
	stp	x29, x30, [sp, -48]!
LCFI442:
	mov	x29, sp
LCFI443:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 24]
	cmp	x0, 1
	bne	L641
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZNSt11char_traitsIcE6assignERcRKc
	b	L643
L641:
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZNSt11char_traitsIcE4copyEPcPKcm
L643:
	nop
	ldp	x29, x30, [sp], 48
LCFI444:
	ret
LFE7137:
	.align	2
	.globl __ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
	.weak_definition __ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
__ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_:
LFB7138:
	sub	sp, sp, #32
LCFI445:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	nop
	add	sp, sp, 32
LCFI446:
	ret
LFE7138:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m:
LFB7148:
	stp	x29, x30, [sp, -80]!
LCFI447:
	mov	x29, sp
LCFI448:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	ldr	x0, [x29, 16]
	str	x0, [x29, 56]
	ldr	x0, [x29, 64]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	str	x0, [x29, 40]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L650
	ldr	x0, [x29, 40]
	str	x0, [x29, 40]
	mov	x0, 0
	and	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L651
	bl	__ZSt28__throw_bad_array_new_lengthv
L651:
	ldr	x0, [x29, 40]
	bl	__Znwm
	b	L652
L650:
	ldr	x0, [x29, 40]
	mov	x2, 0
	mov	x1, x0
	ldr	x0, [x29, 48]
	bl	__ZNSt15__new_allocatorIcE8allocateEmPKv
	nop
L652:
	nop
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldp	x29, x30, [sp], 80
LCFI449:
	ret
LFE7148:
	.cstring
	.align	3
lC42:
	.ascii "basic_string::_M_replace\0"
	.text
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:
LFB7202:
	stp	x29, x30, [sp, -128]!
LCFI450:
	mov	x29, sp
LCFI451:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	str	x3, [x29, 32]
	str	x4, [x29, 24]
	adrp	x0, lC42@PAGE
	add	x3, x0, lC42@PAGEOFF;
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	str	x0, [x29, 120]
	ldr	x1, [x29, 120]
	ldr	x0, [x29, 24]
	add	x1, x1, x0
	ldr	x0, [x29, 40]
	sub	x0, x1, x0
	str	x0, [x29, 112]
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv
	mov	x1, x0
	ldr	x0, [x29, 112]
	cmp	x0, x1
	cset	w0, ls
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L656
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	mov	x1, x0
	ldr	x0, [x29, 48]
	add	x0, x1, x0
	str	x0, [x29, 104]
	ldr	x1, [x29, 120]
	ldr	x0, [x29, 48]
	sub	x1, x1, x0
	ldr	x0, [x29, 40]
	sub	x0, x1, x0
	str	x0, [x29, 96]
	bl	__ZSt21is_constant_evaluatedv
	and	w0, w0, 1
	cmp	w0, 0
	beq	L657
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	ldr	x1, [x29, 112]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m
	str	x0, [x29, 88]
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	ldr	x2, [x29, 48]
	mov	x1, x0
	ldr	x0, [x29, 88]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	ldr	x1, [x29, 88]
	ldr	x0, [x29, 48]
	add	x0, x1, x0
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 24]
	add	x0, x1, x0
	ldr	x1, [x29, 88]
	add	x3, x1, x0
	ldr	x1, [x29, 104]
	ldr	x0, [x29, 40]
	add	x0, x1, x0
	ldr	x2, [x29, 96]
	mov	x1, x0
	mov	x0, x3
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	ldr	x2, [x29, 112]
	ldr	x1, [x29, 88]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	str	x0, [x29, 80]
	ldr	x0, [x29, 88]
	str	x0, [x29, 72]
	ldr	x0, [x29, 112]
	str	x0, [x29, 64]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L659
	ldr	x0, [x29, 72]
	bl	__ZdlPv
	b	L661
L659:
	ldr	x2, [x29, 64]
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 80]
	bl	__ZNSt15__new_allocatorIcE10deallocateEPcm
	b	L661
L657:
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 56]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L662
	ldr	x0, [x29, 96]
	cmp	x0, 0
	beq	L663
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 24]
	cmp	x1, x0
	beq	L663
	ldr	x1, [x29, 104]
	ldr	x0, [x29, 24]
	add	x3, x1, x0
	ldr	x1, [x29, 104]
	ldr	x0, [x29, 40]
	add	x0, x1, x0
	ldr	x2, [x29, 96]
	mov	x1, x0
	mov	x0, x3
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm
L663:
	ldr	x0, [x29, 24]
	cmp	x0, 0
	beq	L661
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 104]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	b	L661
L662:
	ldr	x5, [x29, 96]
	ldr	x4, [x29, 24]
	ldr	x3, [x29, 32]
	ldr	x2, [x29, 40]
	ldr	x1, [x29, 104]
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm
	b	L661
L656:
	ldr	x4, [x29, 24]
	ldr	x3, [x29, 32]
	ldr	x2, [x29, 40]
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
L661:
	ldr	x1, [x29, 112]
	ldr	x0, [x29, 56]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	ldr	x0, [x29, 56]
	ldp	x29, x30, [sp], 128
LCFI452:
	ret
LFE7202:
	.cstring
	.align	3
lC43:
	.ascii "%s: __pos (which is %zu) > this->size() (which is %zu)\0"
	.text
	.align	2
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc:
LFB7203:
	sub	sp, sp, #80
LCFI453:
	stp	x29, x30, [sp, 32]
LCFI454:
	add	x29, sp, 32
LCFI455:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	x1, x0
	ldr	x0, [x29, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L666
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	str	x0, [sp, 16]
	ldr	x0, [x29, 32]
	str	x0, [sp, 8]
	ldr	x0, [x29, 24]
	str	x0, [sp]
	adrp	x0, lC43@PAGE
	add	x0, x0, lC43@PAGEOFF;
	bl	__ZSt24__throw_out_of_range_fmtPKcz
L666:
	ldr	x0, [x29, 32]
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 80
LCFI456:
	ret
LFE7203:
	.align	2
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm:
LFB7204:
	stp	x29, x30, [sp, -64]!
LCFI457:
	mov	x29, sp
LCFI458:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	x1, x0
	ldr	x0, [x29, 32]
	sub	x0, x1, x0
	ldr	x1, [x29, 24]
	cmp	x1, x0
	cset	w0, cc
	strb	w0, [x29, 63]
	ldrb	w0, [x29, 63]
	and	w0, w0, 1
	cmp	w0, 0
	beq	L669
	ldr	x0, [x29, 24]
	b	L671
L669:
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	x1, x0
	ldr	x0, [x29, 32]
	sub	x0, x1, x0
L671:
	ldp	x29, x30, [sp], 64
LCFI459:
	ret
LFE7204:
	.align	2
	.globl __ZSt10destroy_atI4BeadEvPT_
	.weak_definition __ZSt10destroy_atI4BeadEvPT_
__ZSt10destroy_atI4BeadEvPT_:
LFB7321:
	sub	sp, sp, #16
LCFI460:
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
LCFI461:
	ret
LFE7321:
	.align	2
	.globl __ZSt12__relocate_aIP4BeadS1_SaIS0_EET0_T_S4_S3_RT1_
	.weak_definition __ZSt12__relocate_aIP4BeadS1_SaIS0_EET0_T_S4_S3_RT1_
__ZSt12__relocate_aIP4BeadS1_SaIS0_EET0_T_S4_S3_RT1_:
LFB7324:
	stp	x29, x30, [sp, -80]!
LCFI462:
	mov	x29, sp
LCFI463:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 32]
	str	x1, [x29, 64]
	ldr	x1, [x29, 64]
	ldr	x2, [x29, 24]
	str	x2, [x29, 72]
	ldr	x2, [x29, 72]
	ldr	x3, [x29, 16]
	bl	__ZSt14__relocate_a_1I4BeadS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	ldp	x29, x30, [sp], 80
LCFI464:
	ret
LFE7324:
	.align	2
	.globl __ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj
	.weak_definition __ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj
__ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj:
LFB7325:
	sub	sp, sp, #32
LCFI465:
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	add	sp, sp, 32
LCFI466:
	ret
LFE7325:
	.align	2
	.globl __ZNSt8__detail4_ModIjLj624ELj1ELj0ELb1ELb1EE6__calcEj
	.weak_definition __ZNSt8__detail4_ModIjLj624ELj1ELj0ELb1ELb1EE6__calcEj
__ZNSt8__detail4_ModIjLj624ELj1ELj0ELb1ELb1EE6__calcEj:
LFB7326:
	sub	sp, sp, #32
LCFI467:
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	mov	w1, 624
	udiv	w2, w0, w1
	mov	w1, 624
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	add	sp, sp, 32
LCFI468:
	ret
LFE7326:
	.align	2
	.globl __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minEv
	.weak_definition __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minEv
__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minEv:
LFB7329:
	mov	w0, 0
	ret
LFE7329:
	.align	2
	.globl __ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEET_RT1_
	.weak_definition __ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEET_RT1_
__ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEET_RT1_:
LFB7327:
	stp	x29, x30, [sp, -128]!
LCFI469:
	mov	x29, sp
LCFI470:
	str	x19, [sp, 16]
	str	d15, [sp, 24]
LCFI471:
	str	x0, [x29, 40]
	mov	x0, 53
	str	x0, [x29, 88]
	mov	x0, 4751297606875873280
	fmov	d31, x0
	str	d31, [x29, 80]
	mov	x0, 4751297606875873280
	fmov	d0, x0
	bl	__ZSt3loge
	fmov	d15, d0
	fmov	d0, 2.0e+0
	bl	__ZSt3loge
	fmov	d31, d0
	fdiv	d31, d15, d31
	fcvtzu	d31, d31
	str	d31, [x29, 72]
	mov	x0, 1
	str	x0, [x29, 48]
	ldr	x0, [x29, 72]
	add	x1, x0, 52
	ldr	x0, [x29, 72]
	udiv	x0, x1, x0
	str	x0, [x29, 56]
	add	x1, x29, 56
	add	x0, x29, 48
	bl	__ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [x29, 64]
	str	xzr, [x29, 112]
	fmov	d31, 1.0e+0
	str	d31, [x29, 104]
	ldr	x0, [x29, 64]
	str	x0, [x29, 96]
	b	L685
L686:
	ldr	x0, [x29, 40]
	bl	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	mov	w19, w0
	bl	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minEv
	sub	w0, w19, w0
	ucvtf	d30, w0
	ldr	d31, [x29, 104]
	fmul	d31, d30, d31
	ldr	d30, [x29, 112]
	fadd	d31, d30, d31
	str	d31, [x29, 112]
	ldr	d31, [x29, 104]
	mov	x0, 4751297606875873280
	fmov	d30, x0
	fmul	d31, d31, d30
	str	d31, [x29, 104]
	ldr	x0, [x29, 96]
	sub	x0, x0, #1
	str	x0, [x29, 96]
L685:
	ldr	x0, [x29, 96]
	cmp	x0, 0
	bne	L686
	ldr	d31, [x29, 104]
	ldr	d30, [x29, 112]
	fdiv	d31, d30, d31
	str	d31, [x29, 120]
	ldr	d30, [x29, 120]
	fmov	d31, 1.0e+0
	fcmpe	d30, d31
	cset	w0, ge
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	beq	L687
	mov	x0, 4607182418800017407
	fmov	d31, x0
	str	d31, [x29, 120]
L687:
	ldr	d31, [x29, 120]
	fmov	d0, d31
	ldr	d15, [sp, 24]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
LCFI472:
	ret
LFE7327:
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EEC1ERKS2_
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EEC1ERKS2_
__ZNSt6vectorI4BeadSaIS0_EEC1ERKS2_:
LFB7332:
	stp	x29, x30, [sp, -128]!
LCFI473:
	mov	x29, sp
LCFI474:
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
LCFI475:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	ldr	x19, [x29, 56]
	ldr	x0, [x29, 48]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE4sizeEv
	mov	x20, x0
	ldr	x0, [x29, 48]
	bl	__ZNKSt12_Vector_baseI4BeadSaIS0_EE19_M_get_Tp_allocatorEv
	str	x0, [x29, 120]
	add	x0, x29, 72
	ldr	x1, [x29, 120]
	str	x1, [x29, 112]
	str	x0, [x29, 104]
	ldr	x0, [x29, 112]
	str	x0, [x29, 96]
	ldr	x0, [x29, 104]
	str	x0, [x29, 88]
	ldr	x0, [x29, 96]
	str	x0, [x29, 80]
	nop
	nop
	nop
	nop
	add	x0, x29, 72
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
LEHB23:
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EEC2EmRKS1_
LEHE23:
	nop
	ldr	x0, [x29, 48]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE5beginEv
	mov	x20, x0
	ldr	x0, [x29, 48]
	bl	__ZNKSt6vectorI4BeadSaIS0_EE3endEv
	mov	x21, x0
	ldr	x0, [x29, 56]
	ldr	x19, [x0]
	ldr	x0, [x29, 56]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	mov	x2, x19
	mov	x1, x21
	mov	x0, x20
LEHB24:
	bl	__ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4BeadSt6vectorIS2_SaIS2_EEEES8_PS2_S2_ET1_T_T0_SA_RSaIT2_E
LEHE24:
	mov	x1, x0
	ldr	x0, [x29, 56]
	str	x1, [x0, 8]
	b	L694
L693:
	mov	x19, x0
	ldr	x0, [x29, 56]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EED2Ev
	mov	x0, x19
LEHB25:
	bl	__Unwind_Resume
LEHE25:
L694:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 128
LCFI476:
	ret
LFE7332:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table20:
LLSDA7332:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7332-LLSDACSB7332
LLSDACSB7332:
	.uleb128 LEHB23-LFB7332
	.uleb128 LEHE23-LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB24-LFB7332
	.uleb128 LEHE24-LEHB24
	.uleb128 L693-LFB7332
	.uleb128 0
	.uleb128 LEHB25-LFB7332
	.uleb128 LEHE25-LEHB25
	.uleb128 0
	.uleb128 0
LLSDACSE7332:
	.text
	.align	2
	.globl __ZSt12__relocate_aIP10TaylorLineS1_SaIS0_EET0_T_S4_S3_RT1_
	.weak_definition __ZSt12__relocate_aIP10TaylorLineS1_SaIS0_EET0_T_S4_S3_RT1_
__ZSt12__relocate_aIP10TaylorLineS1_SaIS0_EET0_T_S4_S3_RT1_:
LFB7334:
	stp	x29, x30, [sp, -80]!
LCFI477:
	mov	x29, sp
LCFI478:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 32]
	str	x1, [x29, 64]
	ldr	x1, [x29, 64]
	ldr	x2, [x29, 24]
	str	x2, [x29, 72]
	ldr	x2, [x29, 72]
	ldr	x3, [x29, 16]
	bl	__ZSt14__relocate_a_1IP10TaylorLineS1_SaIS0_EET0_T_S4_S3_RT1_
	ldp	x29, x30, [sp], 80
LCFI479:
	ret
LFE7334:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:
LFB7335:
	stp	x29, x30, [sp, -112]!
LCFI480:
	mov	x29, sp
LCFI481:
	str	x19, [sp, 16]
LCFI482:
	str	x0, [x29, 72]
	str	x1, [x29, 64]
	str	x2, [x29, 56]
	str	x3, [x29, 48]
	str	x4, [x29, 40]
	ldr	x0, [x29, 72]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	mov	x1, x0
	ldr	x0, [x29, 64]
	sub	x1, x1, x0
	ldr	x0, [x29, 56]
	sub	x0, x1, x0
	str	x0, [x29, 104]
	ldr	x0, [x29, 72]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	mov	x1, x0
	ldr	x0, [x29, 40]
	add	x1, x1, x0
	ldr	x0, [x29, 56]
	sub	x0, x1, x0
	str	x0, [x29, 88]
	ldr	x0, [x29, 72]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv
	mov	x1, x0
	add	x0, x29, 88
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [x29, 72]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	str	x0, [x29, 96]
	ldr	x0, [x29, 64]
	cmp	x0, 0
	beq	L701
	ldr	x0, [x29, 72]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	ldr	x2, [x29, 64]
	mov	x1, x0
	ldr	x0, [x29, 96]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
L701:
	ldr	x0, [x29, 48]
	cmp	x0, 0
	beq	L702
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	L702
	ldr	x1, [x29, 96]
	ldr	x0, [x29, 64]
	add	x0, x1, x0
	ldr	x2, [x29, 40]
	ldr	x1, [x29, 48]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
L702:
	ldr	x0, [x29, 104]
	cmp	x0, 0
	beq	L703
	ldr	x1, [x29, 64]
	ldr	x0, [x29, 40]
	add	x0, x1, x0
	ldr	x1, [x29, 96]
	add	x19, x1, x0
	ldr	x0, [x29, 72]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	mov	x2, x0
	ldr	x1, [x29, 64]
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	add	x0, x2, x0
	ldr	x2, [x29, 104]
	mov	x1, x0
	mov	x0, x19
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
L703:
	ldr	x0, [x29, 72]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x1, [x29, 96]
	ldr	x0, [x29, 72]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	ldr	x0, [x29, 88]
	mov	x1, x0
	ldr	x0, [x29, 72]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
LCFI483:
	ret
LFE7335:
	.align	2
	.globl __ZSt8_DestroyI10TaylorLineEvPT_
	.weak_definition __ZSt8_DestroyI10TaylorLineEvPT_
__ZSt8_DestroyI10TaylorLineEvPT_:
LFB7338:
	stp	x29, x30, [sp, -32]!
LCFI484:
	mov	x29, sp
LCFI485:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZSt10destroy_atI10TaylorLineEvPT_
	nop
	ldp	x29, x30, [sp], 32
LCFI486:
	ret
LFE7338:
	.align	2
	.globl __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc
	.weak_definition __ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc
__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc:
LFB7359:
	stp	x29, x30, [sp, -64]!
LCFI487:
	mov	x29, sp
LCFI488:
	str	x19, [sp, 16]
LCFI489:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	mov	x1, x0
	add	x0, x29, 48
	mov	x2, x1
	ldr	x1, [x29, 32]
	bl	__ZNKSt4lessIPKcEclES1_S1_
	and	w0, w0, 1
	cmp	w0, 0
	bne	L706
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	mov	x19, x0
	ldr	x0, [x29, 40]
	bl	__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	add	x1, x19, x0
	add	x0, x29, 56
	ldr	x2, [x29, 32]
	bl	__ZNKSt4lessIPKcEclES1_S1_
	and	w0, w0, 1
	cmp	w0, 0
	beq	L707
L706:
	mov	w0, 1
	b	L708
L707:
	mov	w0, 0
L708:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI490:
	ret
LFE7359:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm:
LFB7360:
	stp	x29, x30, [sp, -48]!
LCFI491:
	mov	x29, sp
LCFI492:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 24]
	cmp	x0, 1
	bne	L711
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZNSt11char_traitsIcE6assignERcRKc
	b	L713
L711:
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZNSt11char_traitsIcE4moveEPcPKcm
L713:
	nop
	ldp	x29, x30, [sp], 48
LCFI493:
	ret
LFE7360:
	.align	2
	.globl __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm
	.weak_definition __ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm:
LFB7361:
	stp	x29, x30, [sp, -80]!
LCFI494:
	mov	x29, sp
LCFI495:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	str	x3, [x29, 32]
	str	x4, [x29, 24]
	str	x5, [x29, 16]
	ldr	x0, [x29, 24]
	cmp	x0, 0
	beq	L715
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 40]
	cmp	x1, x0
	bhi	L715
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 48]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm
L715:
	ldr	x0, [x29, 16]
	cmp	x0, 0
	beq	L716
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 24]
	cmp	x1, x0
	beq	L716
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 24]
	add	x3, x1, x0
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 40]
	add	x0, x1, x0
	ldr	x2, [x29, 16]
	mov	x1, x0
	mov	x0, x3
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm
L716:
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 40]
	cmp	x1, x0
	bls	L720
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 24]
	add	x1, x1, x0
	ldr	x2, [x29, 48]
	ldr	x0, [x29, 40]
	add	x0, x2, x0
	cmp	x1, x0
	bhi	L718
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 48]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm
	b	L720
L718:
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 40]
	add	x0, x1, x0
	ldr	x1, [x29, 32]
	cmp	x1, x0
	bcc	L719
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 48]
	sub	x0, x1, x0
	mov	x2, x0
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 40]
	sub	x0, x1, x0
	add	x0, x2, x0
	str	x0, [x29, 64]
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 64]
	add	x0, x1, x0
	ldr	x2, [x29, 24]
	mov	x1, x0
	ldr	x0, [x29, 48]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	b	L720
L719:
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 40]
	add	x1, x1, x0
	ldr	x0, [x29, 32]
	sub	x0, x1, x0
	str	x0, [x29, 72]
	ldr	x2, [x29, 72]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 48]
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 72]
	add	x3, x1, x0
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 24]
	add	x4, x1, x0
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 72]
	sub	x0, x1, x0
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	bl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
L720:
	nop
	ldp	x29, x30, [sp], 80
LCFI496:
	ret
LFE7361:
	.align	2
	.globl __ZNSt15__new_allocatorI4BeadE10deallocateEPS0_m
	.weak_definition __ZNSt15__new_allocatorI4BeadE10deallocateEPS0_m
__ZNSt15__new_allocatorI4BeadE10deallocateEPS0_m:
LFB7429:
	stp	x29, x30, [sp, -48]!
LCFI497:
	mov	x29, sp
LCFI498:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x1, [x29, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	ldr	x0, [x29, 32]
	bl	__ZdlPvm
	ldp	x29, x30, [sp], 48
LCFI499:
	ret
LFE7429:
	.align	2
	.globl __ZSt14__relocate_a_1I4BeadS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	.weak_definition __ZSt14__relocate_a_1I4BeadS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
__ZSt14__relocate_a_1I4BeadS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E:
LFB7432:
	stp	x29, x30, [sp, -64]!
LCFI500:
	mov	x29, sp
LCFI501:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	sub	x0, x1, x0
	asr	x1, x0, 4
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	cmp	x0, 0
	ble	L724
	bl	__ZSt21is_constant_evaluatedv
	and	w0, w0, 1
	cmp	w0, 0
	beq	L725
	ldr	x0, [x29, 24]
	str	x0, [x29, 48]
	nop
	ldr	x3, [x29, 16]
	ldr	x2, [x29, 48]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	__ZSt14__relocate_a_1IP4BeadN9__gnu_cxx17__normal_iteratorIS1_vEESaIS0_EET0_T_S7_S6_RT1_
	str	x0, [x29, 48]
	add	x0, x29, 48
	ldr	x0, [x0]
	b	L727
L725:
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	mov	x3, x0
	ldr	x1, [x29, 40]
	mov	x0, x2
	mov	x2, x3
	bl	_memcpy
L724:
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
L727:
	ldp	x29, x30, [sp], 64
LCFI502:
	ret
LFE7432:
	.align	2
	.globl __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.weak_definition __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv:
LFB7436:
	stp	x29, x30, [sp, -48]!
LCFI503:
	mov	x29, sp
LCFI504:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 2496]
	cmp	x0, 623
	bls	L729
	ldr	x0, [x29, 24]
	bl	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE11_M_gen_randEv
L729:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 2496]
	add	x2, x0, 1
	ldr	x1, [x29, 24]
	str	x2, [x1, 2496]
	ldr	x1, [x29, 24]
	ldr	w0, [x1, x0, lsl 2]
	str	w0, [x29, 44]
	ldr	w0, [x29, 44]
	lsr	w0, w0, 11
	ldr	w1, [x29, 44]
	eor	w0, w1, w0
	str	w0, [x29, 44]
	ldr	w0, [x29, 44]
	lsl	w1, w0, 7
	mov	w0, 22144
	movk	w0, 0x9d2c, lsl 16
	and	w0, w1, w0
	ldr	w1, [x29, 44]
	eor	w0, w1, w0
	str	w0, [x29, 44]
	ldr	w0, [x29, 44]
	lsl	w1, w0, 15
	mov	w0, -272236544
	and	w0, w1, w0
	ldr	w1, [x29, 44]
	eor	w0, w1, w0
	str	w0, [x29, 44]
	ldr	w0, [x29, 44]
	lsr	w0, w0, 18
	ldr	w1, [x29, 44]
	eor	w0, w1, w0
	str	w0, [x29, 44]
	ldr	w0, [x29, 44]
	ldp	x29, x30, [sp], 48
LCFI505:
	ret
LFE7436:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EEC2EmRKS1_
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EEC2EmRKS1_
__ZNSt12_Vector_baseI4BeadSaIS0_EEC2EmRKS1_:
LFB7439:
	stp	x29, x30, [sp, -64]!
LCFI506:
	mov	x29, sp
LCFI507:
	str	x19, [sp, 16]
LCFI508:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 40]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implC1ERKS1_
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 56]
LEHB26:
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE17_M_create_storageEm
LEHE26:
	b	L734
L733:
	mov	x19, x0
	ldr	x0, [x29, 56]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implD1Ev
	mov	x0, x19
LEHB27:
	bl	__Unwind_Resume
LEHE27:
L734:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI509:
	ret
LFE7439:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table21:
LLSDA7439:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7439-LLSDACSB7439
LLSDACSB7439:
	.uleb128 LEHB26-LFB7439
	.uleb128 LEHE26-LEHB26
	.uleb128 L733-LFB7439
	.uleb128 0
	.uleb128 LEHB27-LFB7439
	.uleb128 LEHE27-LEHB27
	.uleb128 0
	.uleb128 0
LLSDACSE7439:
	.text
	.align	2
	.globl __ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4BeadSt6vectorIS2_SaIS2_EEEES8_PS2_S2_ET1_T_T0_SA_RSaIT2_E
	.weak_definition __ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4BeadSt6vectorIS2_SaIS2_EEEES8_PS2_S2_ET1_T_T0_SA_RSaIT2_E
__ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4BeadSt6vectorIS2_SaIS2_EEEES8_PS2_S2_ET1_T_T0_SA_RSaIT2_E:
LFB7441:
	stp	x29, x30, [sp, -48]!
LCFI510:
	mov	x29, sp
LCFI511:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	bl	__ZSt21is_constant_evaluatedv
	and	w0, w0, 1
	cmp	w0, 0
	beq	L736
	add	x0, x29, 40
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x0]
	bl	__ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4BeadSt6vectorIS2_SaIS2_EEEES8_PS2_ET1_T_T0_SA_
	b	L738
L736:
	add	x0, x29, 40
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x0]
	bl	__ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4BeadSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	nop
L738:
	ldp	x29, x30, [sp], 48
LCFI512:
	ret
LFE7441:
	.align	2
	.globl __ZSt14__relocate_a_1IP10TaylorLineS1_SaIS0_EET0_T_S4_S3_RT1_
	.weak_definition __ZSt14__relocate_a_1IP10TaylorLineS1_SaIS0_EET0_T_S4_S3_RT1_
__ZSt14__relocate_a_1IP10TaylorLineS1_SaIS0_EET0_T_S4_S3_RT1_:
LFB7444:
	stp	x29, x30, [sp, -80]!
LCFI513:
	mov	x29, sp
LCFI514:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 24]
	str	x0, [x29, 72]
	b	L741
L744:
	ldr	x0, [x29, 72]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 40]
	str	x1, [x29, 64]
	ldr	x1, [x29, 64]
	ldr	x2, [x29, 16]
	bl	__ZSt19__relocate_object_aI10TaylorLineS0_SaIS0_EEvPT_PT0_RT1_
	ldr	x0, [x29, 40]
	add	x0, x0, 112
	str	x0, [x29, 40]
	ldr	x0, [x29, 72]
	add	x0, x0, 112
	str	x0, [x29, 72]
L741:
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	bne	L744
	ldr	x0, [x29, 72]
	ldp	x29, x30, [sp], 80
LCFI515:
	ret
LFE7444:
	.align	2
	.globl __ZNSt15__new_allocatorI10TaylorLineE10deallocateEPS0_m
	.weak_definition __ZNSt15__new_allocatorI10TaylorLineE10deallocateEPS0_m
__ZNSt15__new_allocatorI10TaylorLineE10deallocateEPS0_m:
LFB7445:
	stp	x29, x30, [sp, -48]!
LCFI516:
	mov	x29, sp
LCFI517:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x1, [x29, 24]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	ldr	x0, [x29, 32]
	bl	__ZdlPvm
	ldp	x29, x30, [sp], 48
LCFI518:
	ret
LFE7445:
	.align	2
	.globl __ZSt10destroy_atI10TaylorLineEvPT_
	.weak_definition __ZSt10destroy_atI10TaylorLineEvPT_
__ZSt10destroy_atI10TaylorLineEvPT_:
LFB7446:
	stp	x29, x30, [sp, -32]!
LCFI519:
	mov	x29, sp
LCFI520:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	__ZN10TaylorLineD1Ev
	nop
	ldp	x29, x30, [sp], 32
LCFI521:
	ret
LFE7446:
	.align	2
	.globl __ZNSt15__new_allocatorIcE10deallocateEPcm
	.weak_definition __ZNSt15__new_allocatorIcE10deallocateEPcm
__ZNSt15__new_allocatorIcE10deallocateEPcm:
LFB7447:
	stp	x29, x30, [sp, -48]!
LCFI522:
	mov	x29, sp
LCFI523:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 32]
	bl	__ZdlPvm
	ldp	x29, x30, [sp], 48
LCFI524:
	ret
LFE7447:
	.align	2
	.globl __ZNKSt4lessIPKcEclES1_S1_
	.weak_definition __ZNKSt4lessIPKcEclES1_S1_
__ZNKSt4lessIPKcEclES1_S1_:
LFB7462:
	sub	sp, sp, #32
LCFI525:
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L753
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	b	L754
L753:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
L754:
	add	sp, sp, 32
LCFI526:
	ret
LFE7462:
	.align	2
	.globl __ZNSt15__new_allocatorI4BeadE8allocateEmPKv
	.weak_definition __ZNSt15__new_allocatorI4BeadE8allocateEmPKv
__ZNSt15__new_allocatorI4BeadE8allocateEmPKv:
LFB7506:
	stp	x29, x30, [sp, -64]!
LCFI527:
	mov	x29, sp
LCFI528:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	mov	x0, -6148914691236517206
	movk	x0, 0x2aa, lsl 48
	ldr	x1, [x29, 32]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L757
	ldr	x1, [x29, 32]
	mov	x0, 6148914691236517205
	movk	x0, 0x555, lsl 48
	cmp	x1, x0
	bls	L758
	bl	__ZSt28__throw_bad_array_new_lengthv
L758:
	bl	__ZSt17__throw_bad_allocv
L757:
	ldr	x1, [x29, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	bl	__Znwm
	nop
	ldp	x29, x30, [sp], 64
LCFI529:
	ret
LFE7506:
	.align	2
	.globl __ZSt14__relocate_a_1IP4BeadN9__gnu_cxx17__normal_iteratorIS1_vEESaIS0_EET0_T_S7_S6_RT1_
	.weak_definition __ZSt14__relocate_a_1IP4BeadN9__gnu_cxx17__normal_iteratorIS1_vEESaIS0_EET0_T_S7_S6_RT1_
__ZSt14__relocate_a_1IP4BeadN9__gnu_cxx17__normal_iteratorIS1_vEESaIS0_EET0_T_S7_S6_RT1_:
LFB7507:
	stp	x29, x30, [sp, -80]!
LCFI530:
	mov	x29, sp
LCFI531:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
	b	L761
L766:
	ldr	x0, [x29, 56]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldr	x1, [x29, 40]
	str	x1, [x29, 72]
	ldr	x1, [x29, 72]
	ldr	x2, [x29, 16]
	bl	__ZSt19__relocate_object_aI4BeadS0_SaIS0_EEvPT_PT0_RT1_
	ldr	x0, [x29, 40]
	add	x0, x0, 48
	str	x0, [x29, 40]
	ldr	x0, [x29, 56]
	add	x0, x0, 48
	str	x0, [x29, 56]
	nop
L761:
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	bne	L766
	ldr	x0, [x29, 56]
	ldp	x29, x30, [sp], 80
LCFI532:
	ret
LFE7507:
	.align	2
	.globl __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE11_M_gen_randEv
	.weak_definition __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE11_M_gen_randEv
__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE11_M_gen_randEv:
LFB7509:
	sub	sp, sp, #64
LCFI533:
	str	x0, [sp, 8]
	mov	w0, -2147483648
	str	w0, [sp, 44]
	mov	w0, 2147483647
	str	w0, [sp, 40]
	str	xzr, [sp, 56]
	b	L769
L772:
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 56]
	ldr	w0, [x0, x1, lsl 2]
	and	w1, w0, -2147483648
	ldr	x0, [sp, 56]
	add	x2, x0, 1
	ldr	x0, [sp, 8]
	ldr	w0, [x0, x2, lsl 2]
	and	w0, w0, 2147483647
	orr	w0, w1, w0
	str	w0, [sp, 28]
	ldr	x0, [sp, 56]
	add	x1, x0, 397
	ldr	x0, [sp, 8]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	eor	w1, w1, w0
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	cmp	w0, 0
	beq	L770
	mov	w0, 45279
	movk	w0, 0x9908, lsl 16
	b	L771
L770:
	mov	w0, 0
L771:
	eor	w2, w0, w1
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 56]
	str	w2, [x0, x1, lsl 2]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
L769:
	ldr	x0, [sp, 56]
	cmp	x0, 226
	bls	L772
	mov	x0, 227
	str	x0, [sp, 48]
	b	L773
L776:
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 48]
	ldr	w0, [x0, x1, lsl 2]
	and	w1, w0, -2147483648
	ldr	x0, [sp, 48]
	add	x2, x0, 1
	ldr	x0, [sp, 8]
	ldr	w0, [x0, x2, lsl 2]
	and	w0, w0, 2147483647
	orr	w0, w1, w0
	str	w0, [sp, 32]
	ldr	x0, [sp, 48]
	sub	x1, x0, #227
	ldr	x0, [sp, 8]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 32]
	lsr	w0, w0, 1
	eor	w1, w1, w0
	ldr	w0, [sp, 32]
	and	w0, w0, 1
	cmp	w0, 0
	beq	L774
	mov	w0, 45279
	movk	w0, 0x9908, lsl 16
	b	L775
L774:
	mov	w0, 0
L775:
	eor	w2, w0, w1
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 48]
	str	w2, [x0, x1, lsl 2]
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
L773:
	ldr	x0, [sp, 48]
	cmp	x0, 622
	bls	L776
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 2492]
	and	w1, w0, -2147483648
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	and	w0, w0, 2147483647
	orr	w0, w1, w0
	str	w0, [sp, 36]
	ldr	x0, [sp, 8]
	ldr	w1, [x0, 1584]
	ldr	w0, [sp, 36]
	lsr	w0, w0, 1
	eor	w1, w1, w0
	ldr	w0, [sp, 36]
	and	w0, w0, 1
	cmp	w0, 0
	beq	L777
	mov	w0, 45279
	movk	w0, 0x9908, lsl 16
	b	L778
L777:
	mov	w0, 0
L778:
	eor	w1, w0, w1
	ldr	x0, [sp, 8]
	str	w1, [x0, 2492]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 2496]
	nop
	add	sp, sp, 64
LCFI534:
	ret
LFE7509:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implC1ERKS1_
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implC1ERKS1_
__ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implC1ERKS1_:
LFB7513:
	stp	x29, x30, [sp, -64]!
LCFI535:
	mov	x29, sp
LCFI536:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
	ldr	x0, [x29, 16]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	str	x0, [x29, 40]
	ldr	x0, [x29, 48]
	str	x0, [x29, 32]
	nop
	nop
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 64
LCFI537:
	ret
LFE7513:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EE17_M_create_storageEm
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EE17_M_create_storageEm
__ZNSt12_Vector_baseI4BeadSaIS0_EE17_M_create_storageEm:
LFB7514:
	stp	x29, x30, [sp, -32]!
LCFI538:
	mov	x29, sp
LCFI539:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE11_M_allocateEm
	mov	x1, x0
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	str	x1, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x2, [x0]
	ldr	x1, [x29, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x2, x0
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
LCFI540:
	ret
LFE7514:
	.align	2
	.globl __ZNSt19_UninitDestroyGuardIP4BeadvEC1ERS1_
	.weak_definition __ZNSt19_UninitDestroyGuardIP4BeadvEC1ERS1_
__ZNSt19_UninitDestroyGuardIP4BeadvEC1ERS1_:
LFB7519:
	sub	sp, sp, #16
LCFI541:
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0, 8]
	nop
	add	sp, sp, 16
LCFI542:
	ret
LFE7519:
	.align	2
	.globl __ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4BeadSt6vectorIS2_SaIS2_EEEES8_PS2_ET1_T_T0_SA_
	.weak_definition __ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4BeadSt6vectorIS2_SaIS2_EEEES8_PS2_ET1_T_T0_SA_
__ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4BeadSt6vectorIS2_SaIS2_EEEES8_PS2_ET1_T_T0_SA_:
LFB7516:
	stp	x29, x30, [sp, -112]!
LCFI543:
	mov	x29, sp
LCFI544:
	str	x19, [sp, 16]
LCFI545:
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	add	x1, x29, 40
	add	x0, x29, 72
	bl	__ZNSt19_UninitDestroyGuardIP4BeadvEC1ERS1_
	b	L783
L790:
	ldr	x0, [x29, 40]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x1, [x29, 56]
	bl	__ZSt10_ConstructI4BeadJRKS0_EEvPT_DpOT0_
	ldr	x0, [x29, 56]
	add	x0, x0, 48
	str	x0, [x29, 56]
	nop
	ldr	x0, [x29, 40]
	add	x0, x0, 48
	str	x0, [x29, 40]
L783:
	add	x0, x29, 56
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	ldr	x1, [x0]
	add	x0, x29, 48
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	L790
	add	x0, x29, 72
	bl	__ZNSt19_UninitDestroyGuardIP4BeadvE7releaseEv
	ldr	x19, [x29, 40]
	add	x0, x29, 72
	bl	__ZNSt19_UninitDestroyGuardIP4BeadvED1Ev
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
LCFI546:
	ret
LFE7516:
	.align	2
	.globl __ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4BeadSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.weak_definition __ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4BeadSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
__ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4BeadSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_:
LFB7520:
	stp	x29, x30, [sp, -96]!
LCFI547:
	mov	x29, sp
LCFI548:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	add	x0, x29, 32
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x1, [x0]
	add	x0, x29, 40
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 4
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	cmp	x0, 0
	ble	L796
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	ldr	x3, [x29, 64]
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	add	x0, x29, 56
	ldr	x2, [x0]
	ldr	x1, [x29, 88]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	mov	x4, x0
	mov	x0, x3
	mov	x1, x2
	mov	x2, x4
	bl	_memcpy
	ldr	x1, [x29, 88]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	ldr	x0, [x29, 24]
	add	x0, x0, x1
	str	x0, [x29, 24]
L796:
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 96
LCFI549:
	ret
LFE7520:
	.align	2
	.globl __ZNSt15__new_allocatorI10TaylorLineE8allocateEmPKv
	.weak_definition __ZNSt15__new_allocatorI10TaylorLineE8allocateEmPKv
__ZNSt15__new_allocatorI10TaylorLineE8allocateEmPKv:
LFB7523:
	stp	x29, x30, [sp, -64]!
LCFI550:
	mov	x29, sp
LCFI551:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	mov	x0, 18724
	movk	x0, 0x2492, lsl 16
	orr	x0, x0, x0, lsl 27
	ldr	x1, [x29, 32]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L803
	ldr	x1, [x29, 32]
	mov	x0, 37449
	movk	x0, 0x4924, lsl 16
	orr	x0, x0, x0, lsl 27
	cmp	x1, x0
	bls	L804
	bl	__ZSt28__throw_bad_array_new_lengthv
L804:
	bl	__ZSt17__throw_bad_allocv
L803:
	ldr	x1, [x29, 32]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 4
	bl	__Znwm
	nop
	ldp	x29, x30, [sp], 64
LCFI552:
	ret
LFE7523:
	.align	2
	.globl __ZSt19__relocate_object_aI10TaylorLineS0_SaIS0_EEvPT_PT0_RT1_
	.weak_definition __ZSt19__relocate_object_aI10TaylorLineS0_SaIS0_EEvPT_PT0_RT1_
__ZSt19__relocate_object_aI10TaylorLineS0_SaIS0_EEvPT_PT0_RT1_:
LFB7524:
	stp	x29, x30, [sp, -112]!
LCFI553:
	mov	x29, sp
LCFI554:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 32]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldr	x1, [x29, 40]
	str	x1, [x29, 80]
	str	x0, [x29, 72]
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	ldr	x0, [x29, 72]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	mov	x1, x0
	ldr	x0, [x29, 80]
	bl	__ZSt12construct_atI10TaylorLineJS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S1_pispcl7declvalIT0_EEEEEPS1_S4_DpOS3_
	nop
	ldr	x0, [x29, 32]
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	str	x0, [x29, 104]
	ldr	x0, [x29, 24]
	str	x0, [x29, 96]
	ldr	x0, [x29, 104]
	bl	__ZSt10destroy_atI10TaylorLineEvPT_
	nop
	nop
	ldp	x29, x30, [sp], 112
LCFI555:
	ret
LFE7524:
	.align	2
	.globl __ZNSt15__new_allocatorIcE8allocateEmPKv
	.weak_definition __ZNSt15__new_allocatorIcE8allocateEmPKv
__ZNSt15__new_allocatorIcE8allocateEmPKv:
LFB7527:
	stp	x29, x30, [sp, -64]!
LCFI556:
	mov	x29, sp
LCFI557:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	mov	x0, 9223372036854775807
	ldr	x1, [x29, 32]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	L812
	bl	__ZSt17__throw_bad_allocv
L812:
	ldr	x0, [x29, 32]
	bl	__Znwm
	nop
	ldp	x29, x30, [sp], 64
LCFI558:
	ret
LFE7527:
	.align	2
	.globl __ZSt19__relocate_object_aI4BeadS0_SaIS0_EEvPT_PT0_RT1_
	.weak_definition __ZSt19__relocate_object_aI4BeadS0_SaIS0_EEvPT_PT0_RT1_
__ZSt19__relocate_object_aI4BeadS0_SaIS0_EEvPT_PT0_RT1_:
LFB7548:
	stp	x29, x30, [sp, -112]!
LCFI559:
	mov	x29, sp
LCFI560:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 32]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldr	x1, [x29, 40]
	str	x1, [x29, 80]
	str	x0, [x29, 72]
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	ldr	x0, [x29, 72]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	mov	x1, x0
	ldr	x0, [x29, 80]
	bl	__ZSt12construct_atI4BeadJS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S1_pispcl7declvalIT0_EEEEEPS1_S4_DpOS3_
	nop
	ldr	x0, [x29, 32]
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	str	x0, [x29, 104]
	ldr	x0, [x29, 24]
	str	x0, [x29, 96]
	ldr	x0, [x29, 104]
	bl	__ZSt10destroy_atI4BeadEvPT_
	nop
	nop
	ldp	x29, x30, [sp], 112
LCFI561:
	ret
LFE7548:
	.align	2
	.globl __ZNSt19_UninitDestroyGuardIP4BeadvED1Ev
	.weak_definition __ZNSt19_UninitDestroyGuardIP4BeadvED1Ev
__ZNSt19_UninitDestroyGuardIP4BeadvED1Ev:
LFB7554:
	stp	x29, x30, [sp, -32]!
LCFI562:
	mov	x29, sp
LCFI563:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	beq	L820
	ldr	x0, [x29, 24]
	ldr	x2, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	__ZSt8_DestroyIP4BeadEvT_S2_
L820:
	nop
	ldp	x29, x30, [sp], 32
LCFI564:
	ret
LFE7554:
	.align	2
	.globl __ZSt10_ConstructI4BeadJRKS0_EEvPT_DpOT0_
	.weak_definition __ZSt10_ConstructI4BeadJRKS0_EEvPT_DpOT0_
__ZSt10_ConstructI4BeadJRKS0_EEvPT_DpOT0_:
LFB7555:
	stp	x29, x30, [sp, -64]!
LCFI565:
	mov	x29, sp
LCFI566:
	str	x19, [sp, 16]
LCFI567:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L823
	ldr	x0, [x29, 32]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	__ZSt12construct_atI4BeadJRKS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S3_pispcl7declvalIT0_EEEEEPS3_S6_DpOS5_
	b	L821
L823:
	ldr	x19, [x29, 40]
	mov	x1, x19
	mov	x0, 48
	bl	__ZnwmPv
	mov	x2, x0
	ldr	x0, [x29, 32]
	str	x0, [x29, 48]
	ldr	x1, [x29, 48]
	mov	x0, x2
	ldr	q29, [x1]
	ldr	q30, [x1, 16]
	ldr	q31, [x1, 32]
	str	q29, [x0]
	str	q30, [x0, 16]
	str	q31, [x0, 32]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L821
	mov	x1, x19
	mov	x0, x2
	bl	__ZdlPvS_
L821:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI568:
	ret
LFE7555:
	.align	2
	.globl __ZNSt19_UninitDestroyGuardIP4BeadvE7releaseEv
	.weak_definition __ZNSt19_UninitDestroyGuardIP4BeadvE7releaseEv
__ZNSt19_UninitDestroyGuardIP4BeadvE7releaseEv:
LFB7556:
	sub	sp, sp, #16
LCFI569:
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	nop
	add	sp, sp, 16
LCFI570:
	ret
LFE7556:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EEC2EOS2_
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EEC2EOS2_
__ZNSt12_Vector_baseI4BeadSaIS0_EEC2EOS2_:
LFB7586:
	stp	x29, x30, [sp, -32]!
LCFI571:
	mov	x29, sp
LCFI572:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implC1EOS3_
	nop
	ldp	x29, x30, [sp], 32
LCFI573:
	ret
LFE7586:
	.align	2
	.globl __ZNSt6vectorI4BeadSaIS0_EEC1EOS2_
	.weak_definition __ZNSt6vectorI4BeadSaIS0_EEC1EOS2_
__ZNSt6vectorI4BeadSaIS0_EEC1EOS2_:
LFB7589:
	stp	x29, x30, [sp, -32]!
LCFI574:
	mov	x29, sp
LCFI575:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EEC2EOS2_
	nop
	ldp	x29, x30, [sp], 32
LCFI576:
	ret
LFE7589:
	.align	2
	.globl __ZN10TaylorLineC1EOS_
	.weak_definition __ZN10TaylorLineC1EOS_
__ZN10TaylorLineC1EOS_:
LFB7591:
	stp	x29, x30, [sp, -32]!
LCFI577:
	mov	x29, sp
LCFI578:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	adrp	x0, __ZTV10TaylorLine@GOTPAGE
	ldr	x0, [x0, __ZTV10TaylorLine@GOTPAGEOFF]
	add	x1, x0, 16
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	add	x2, x0, 8
	ldr	x0, [x29, 16]
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x2
	bl	__ZNSt6vectorI4BeadSaIS0_EEC1EOS2_
	ldr	x0, [x29, 16]
	ldr	w1, [x0, 32]
	ldr	x0, [x29, 24]
	str	w1, [x0, 32]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 40]
	ldr	x0, [x29, 24]
	str	d31, [x0, 40]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 48]
	ldr	x0, [x29, 24]
	str	d31, [x0, 48]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 56]
	ldr	x0, [x29, 24]
	str	d31, [x0, 56]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 64]
	ldr	x0, [x29, 24]
	str	d31, [x0, 64]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 72]
	ldr	x0, [x29, 24]
	str	d31, [x0, 72]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 80]
	ldr	x0, [x29, 24]
	str	d31, [x0, 80]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 88]
	ldr	x0, [x29, 24]
	str	d31, [x0, 88]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 96]
	ldr	x0, [x29, 24]
	str	d31, [x0, 96]
	ldr	x0, [x29, 16]
	ldr	d31, [x0, 104]
	ldr	x0, [x29, 24]
	str	d31, [x0, 104]
	nop
	ldp	x29, x30, [sp], 32
LCFI579:
	ret
LFE7591:
	.align	2
	.globl __ZSt12construct_atI10TaylorLineJS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S1_pispcl7declvalIT0_EEEEEPS1_S4_DpOS3_
	.weak_definition __ZSt12construct_atI10TaylorLineJS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S1_pispcl7declvalIT0_EEEEEPS1_S4_DpOS3_
__ZSt12construct_atI10TaylorLineJS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S1_pispcl7declvalIT0_EEEEEPS1_S4_DpOS3_:
LFB7582:
	stp	x29, x30, [sp, -64]!
LCFI580:
	mov	x29, sp
LCFI581:
	stp	x19, x20, [sp, 16]
LCFI582:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	ldr	x20, [x29, 56]
	mov	x1, x20
	mov	x0, 112
	bl	__ZnwmPv
	mov	x19, x0
	ldr	x0, [x29, 32]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	mov	x1, x0
	mov	x0, x19
	bl	__ZN10TaylorLineC1EOS_
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L834
	mov	x1, x20
	mov	x0, x19
	bl	__ZdlPvS_
L834:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI583:
	ret
LFE7582:
	.align	2
	.globl __ZSt12construct_atI4BeadJS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S1_pispcl7declvalIT0_EEEEEPS1_S4_DpOS3_
	.weak_definition __ZSt12construct_atI4BeadJS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S1_pispcl7declvalIT0_EEEEEPS1_S4_DpOS3_
__ZSt12construct_atI4BeadJS0_EQaant20is_unbounded_array_vIT_ErqXgsnwcvPvLi0E_S1_pispcl7declvalIT0_EEEEEPS1_S4_DpOS3_:
LFB7594:
	stp	x29, x30, [sp, -64]!
LCFI584:
	mov	x29, sp
LCFI585:
	stp	x19, x20, [sp, 16]
LCFI586:
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	ldr	x20, [x29, 56]
	mov	x1, x20
	mov	x0, 48
	bl	__ZnwmPv
	mov	x19, x0
	ldr	x0, [x29, 32]
	str	x0, [x29, 48]
	ldr	x1, [x29, 48]
	mov	x0, x19
	ldr	q29, [x1]
	ldr	q30, [x1, 16]
	ldr	q31, [x1, 32]
	str	q29, [x0]
	str	q30, [x0, 16]
	str	q31, [x0, 32]
	mov	w0, 0
	and	w0, w0, 1
	cmp	w0, 0
	beq	L838
	mov	x1, x20
	mov	x0, x19
	bl	__ZdlPvS_
L838:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
LCFI587:
	ret
LFE7594:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implC1EOS3_
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implC1EOS3_
__ZNSt12_Vector_baseI4BeadSaIS0_EE12_Vector_implC1EOS3_:
LFB7597:
	stp	x29, x30, [sp, -80]!
LCFI588:
	mov	x29, sp
LCFI589:
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldr	x1, [x29, 24]
	str	x1, [x29, 64]
	str	x0, [x29, 56]
	ldr	x0, [x29, 64]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	str	x0, [x29, 40]
	nop
	nop
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x29, 72]
	ldr	x1, [x29, 72]
	bl	__ZNSt12_Vector_baseI4BeadSaIS0_EE17_Vector_impl_dataC2EOS3_
	nop
	ldp	x29, x30, [sp], 80
LCFI590:
	ret
LFE7597:
	.align	2
	.globl __ZNSt12_Vector_baseI4BeadSaIS0_EE17_Vector_impl_dataC2EOS3_
	.weak_definition __ZNSt12_Vector_baseI4BeadSaIS0_EE17_Vector_impl_dataC2EOS3_
__ZNSt12_Vector_baseI4BeadSaIS0_EE17_Vector_impl_dataC2EOS3_:
LFB7600:
	sub	sp, sp, #16
LCFI591:
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 8]
	ldr	x0, [sp]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	str	x1, [x0, 16]
	ldr	x0, [sp]
	str	xzr, [x0, 16]
	ldr	x0, [sp]
	ldr	x1, [x0, 16]
	ldr	x0, [sp]
	str	x1, [x0, 8]
	ldr	x0, [sp]
	ldr	x1, [x0, 8]
	ldr	x0, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
LCFI592:
	ret
LFE7600:
	.globl __ZTV10TaylorLine
	.weak_definition __ZTV10TaylorLine
	.const_data
	.align	3
__ZTV10TaylorLine:
	.xword	0
	.xword	__ZTI10TaylorLine
	.xword	__ZN10TaylorLine16updateVelocitiesEdb
	.globl __ZTI10TaylorLine
	.weak_definition __ZTI10TaylorLine
	.align	3
__ZTI10TaylorLine:
	.xword	__ZTVN10__cxxabiv117__class_type_infoE+16
	.xword	__ZTS10TaylorLine
	.globl __ZTS10TaylorLine
	.weak_definition __ZTS10TaylorLine
	.const
	.align	3
__ZTS10TaylorLine:
	.ascii "10TaylorLine\0"
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
__Z41__static_initialization_and_destruction_0v:
LFB7602:
	stp	x29, x30, [sp, -16]!
LCFI593:
	mov	x29, sp
LCFI594:
	adrp	x0, __ZStL8__ioinit@PAGE
	add	x0, x0, __ZStL8__ioinit@PAGEOFF;
	bl	__ZNSt8ios_base4InitC1Ev
	adrp	x0, ___dso_handle@PAGE
	add	x2, x0, ___dso_handle@PAGEOFF;
	adrp	x0, __ZStL8__ioinit@PAGE
	add	x1, x0, __ZStL8__ioinit@PAGEOFF;
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]
	bl	___cxa_atexit
	adrp	x0, _rd@PAGE
	add	x0, x0, _rd@PAGEOFF;
	bl	__ZNSt13random_deviceC1Ev
	adrp	x0, ___dso_handle@PAGE
	add	x2, x0, ___dso_handle@PAGEOFF;
	adrp	x0, _rd@PAGE
	add	x1, x0, _rd@PAGEOFF;
	adrp	x0, __ZNSt13random_deviceD1Ev@GOTPAGE
	ldr	x0, [x0, __ZNSt13random_deviceD1Ev@GOTPAGEOFF]
	bl	___cxa_atexit
	adrp	x0, _rd@PAGE
	add	x0, x0, _rd@PAGEOFF;
	bl	__ZNSt13random_deviceclEv
	mov	w1, w0
	adrp	x0, _gen@PAGE
	add	x0, x0, _gen@PAGEOFF;
	bl	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1Ej
	nop
	ldp	x29, x30, [sp], 16
LCFI595:
	ret
LFE7602:
	.align	2
__GLOBAL__sub_I_main.cpp:
LFB8564:
	stp	x29, x30, [sp, -16]!
LCFI596:
	mov	x29, sp
LCFI597:
	bl	__Z41__static_initialization_and_destruction_0v
	ldp	x29, x30, [sp], 16
LCFI598:
	ret
LFE8564:
	.literal8
	.align	3
lC2:
	.word	1413754136
	.word	1075388923
	.align	3
lC3:
	.word	1202590843
	.word	1065646817
	.align	3
lC4:
	.word	-640172613
	.word	1037794527
	.align	3
lC11:
	.word	1202590843
	.word	1064598241
	.align	3
lC12:
	.word	1413754136
	.word	1074340347
	.align	3
lC13:
	.word	1889785610
	.word	1073154621
	.align	3
lC27:
	.word	-755914244
	.word	1061184077
	.align	3
lC28:
	.word	-755914244
	.word	1062232653
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zPLR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x7
	.byte	0x9b
L_got_pcr0:
	.long	___gxx_personality_v0@GOT-L_got_pcr0
	.byte	0x10
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB85-.
	.set L$set$2,LFE85-LFB85
	.quad L$set$2
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB85
	.long L$set$3
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE1:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB87-.
	.set L$set$6,LFE87-LFB87
	.quad L$set$6
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$7,LCFI2-LFB87
	.long L$set$7
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE3:
LSFDE5:
	.set L$set$9,LEFDE5-LASFDE5
	.long L$set$9
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB103-.
	.set L$set$10,LFE103-LFB103
	.quad L$set$10
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE5:
LSFDE7:
	.set L$set$11,LEFDE7-LASFDE7
	.long L$set$11
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB289-.
	.set L$set$12,LFE289-LFB289
	.quad L$set$12
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$13,LCFI4-LFB289
	.long L$set$13
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$14,LCFI5-LCFI4
	.long L$set$14
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$15,LCFI6-LCFI5
	.long L$set$15
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE7:
LSFDE9:
	.set L$set$16,LEFDE9-LASFDE9
	.long L$set$16
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB293-.
	.set L$set$17,LFE293-LFB293
	.quad L$set$17
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$18,LCFI7-LFB293
	.long L$set$18
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$19,LCFI8-LCFI7
	.long L$set$19
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$20,LCFI9-LCFI8
	.long L$set$20
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE9:
LSFDE11:
	.set L$set$21,LEFDE11-LASFDE11
	.long L$set$21
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB295-.
	.set L$set$22,LFE295-LFB295
	.quad L$set$22
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$23,LCFI10-LFB295
	.long L$set$23
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$24,LCFI11-LCFI10
	.long L$set$24
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$25,LCFI12-LCFI11
	.long L$set$25
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE11:
LSFDE13:
	.set L$set$26,LEFDE13-LASFDE13
	.long L$set$26
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB296-.
	.set L$set$27,LFE296-LFB296
	.quad L$set$27
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$28,LCFI13-LFB296
	.long L$set$28
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$29,LCFI14-LCFI13
	.long L$set$29
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$30,LCFI15-LCFI14
	.long L$set$30
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE13:
LSFDE15:
	.set L$set$31,LEFDE15-LASFDE15
	.long L$set$31
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB297-.
	.set L$set$32,LFE297-LFB297
	.quad L$set$32
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$33,LCFI16-LFB297
	.long L$set$33
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$34,LCFI17-LCFI16
	.long L$set$34
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$35,LCFI18-LCFI17
	.long L$set$35
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE15:
LSFDE17:
	.set L$set$36,LEFDE17-LASFDE17
	.long L$set$36
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB1650-.
	.set L$set$37,LFE1650-LFB1650
	.quad L$set$37
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$38,LCFI19-LFB1650
	.long L$set$38
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$39,LCFI20-LCFI19
	.long L$set$39
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE17:
LSFDE19:
	.set L$set$40,LEFDE19-LASFDE19
	.long L$set$40
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB1652-.
	.set L$set$41,LFE1652-LFB1652
	.quad L$set$41
	.uleb128 0x8
	.quad	LLSDA1652-.
	.byte	0x4
	.set L$set$42,LCFI21-LFB1652
	.long L$set$42
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$43,LCFI22-LCFI21
	.long L$set$43
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$44,LCFI23-LCFI22
	.long L$set$44
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$45,LCFI24-LCFI23
	.long L$set$45
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE19:
LSFDE21:
	.set L$set$46,LEFDE21-LASFDE21
	.long L$set$46
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB1653-.
	.set L$set$47,LFE1653-LFB1653
	.quad L$set$47
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$48,LCFI25-LFB1653
	.long L$set$48
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$49,LCFI26-LCFI25
	.long L$set$49
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$50,LCFI27-LCFI26
	.long L$set$50
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE21:
LSFDE23:
	.set L$set$51,LEFDE23-LASFDE23
	.long L$set$51
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB1654-.
	.set L$set$52,LFE1654-LFB1654
	.quad L$set$52
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$53,LCFI28-LFB1654
	.long L$set$53
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$54,LCFI29-LCFI28
	.long L$set$54
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE23:
LSFDE25:
	.set L$set$55,LEFDE25-LASFDE25
	.long L$set$55
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB1665-.
	.set L$set$56,LFE1665-LFB1665
	.quad L$set$56
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$57,LCFI30-LFB1665
	.long L$set$57
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.set L$set$58,LCFI31-LCFI30
	.long L$set$58
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE25:
LSFDE27:
	.set L$set$59,LEFDE27-LASFDE27
	.long L$set$59
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB1677-.
	.set L$set$60,LFE1677-LFB1677
	.quad L$set$60
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$61,LCFI32-LFB1677
	.long L$set$61
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$62,LCFI33-LCFI32
	.long L$set$62
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$63,LCFI34-LCFI33
	.long L$set$63
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE27:
LSFDE29:
	.set L$set$64,LEFDE29-LASFDE29
	.long L$set$64
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB1644-.
	.set L$set$65,LFE1644-LFB1644
	.quad L$set$65
	.uleb128 0x8
	.quad	LLSDA1644-.
	.byte	0x4
	.set L$set$66,LCFI35-LFB1644
	.long L$set$66
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$67,LCFI36-LCFI35
	.long L$set$67
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$68,LCFI37-LCFI36
	.long L$set$68
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$69,LCFI38-LCFI37
	.long L$set$69
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE29:
LSFDE31:
	.set L$set$70,LEFDE31-LASFDE31
	.long L$set$70
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB1679-.
	.set L$set$71,LFE1679-LFB1679
	.quad L$set$71
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$72,LCFI39-LFB1679
	.long L$set$72
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.set L$set$73,LCFI40-LCFI39
	.long L$set$73
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE31:
LSFDE33:
	.set L$set$74,LEFDE33-LASFDE33
	.long L$set$74
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB2979-.
	.set L$set$75,LFE2979-LFB2979
	.quad L$set$75
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$76,LCFI41-LFB2979
	.long L$set$76
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$77,LCFI42-LCFI41
	.long L$set$77
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$78,LCFI43-LCFI42
	.long L$set$78
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE33:
LSFDE35:
	.set L$set$79,LEFDE35-LASFDE35
	.long L$set$79
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB4512-.
	.set L$set$80,LFE4512-LFB4512
	.quad L$set$80
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$81,LCFI44-LFB4512
	.long L$set$81
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$82,LCFI45-LCFI44
	.long L$set$82
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$83,LCFI46-LCFI45
	.long L$set$83
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE35:
LSFDE37:
	.set L$set$84,LEFDE37-LASFDE37
	.long L$set$84
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB5217-.
	.set L$set$85,LFE5217-LFB5217
	.quad L$set$85
	.uleb128 0x8
	.quad	LLSDA5217-.
	.byte	0x4
	.set L$set$86,LCFI47-LFB5217
	.long L$set$86
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$87,LCFI48-LCFI47
	.long L$set$87
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$88,LCFI49-LCFI48
	.long L$set$88
	.byte	0x93
	.uleb128 0xa
	.byte	0x4
	.set L$set$89,LCFI50-LCFI49
	.long L$set$89
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE37:
LSFDE39:
	.set L$set$90,LEFDE39-LASFDE39
	.long L$set$90
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB5223-.
	.set L$set$91,LFE5223-LFB5223
	.quad L$set$91
	.uleb128 0x8
	.quad	LLSDA5223-.
	.byte	0x4
	.set L$set$92,LCFI51-LFB5223
	.long L$set$92
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$93,LCFI52-LCFI51
	.long L$set$93
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$94,LCFI53-LCFI52
	.long L$set$94
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE39:
LSFDE41:
	.set L$set$95,LEFDE41-LASFDE41
	.long L$set$95
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB5227-.
	.set L$set$96,LFE5227-LFB5227
	.quad L$set$96
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$97,LCFI54-LFB5227
	.long L$set$97
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$98,LCFI55-LCFI54
	.long L$set$98
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$99,LCFI56-LCFI55
	.long L$set$99
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE41:
LSFDE43:
	.set L$set$100,LEFDE43-LASFDE43
	.long L$set$100
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB5931-.
	.set L$set$101,LFE5931-LFB5931
	.quad L$set$101
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$102,LCFI57-LFB5931
	.long L$set$102
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$103,LCFI58-LCFI57
	.long L$set$103
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$104,LCFI59-LCFI58
	.long L$set$104
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE43:
LSFDE45:
	.set L$set$105,LEFDE45-LASFDE45
	.long L$set$105
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB5940-.
	.set L$set$106,LFE5940-LFB5940
	.quad L$set$106
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$107,LCFI60-LFB5940
	.long L$set$107
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$108,LCFI61-LCFI60
	.long L$set$108
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE45:
LSFDE47:
	.set L$set$109,LEFDE47-LASFDE47
	.long L$set$109
LASFDE47:
	.long	LASFDE47-EH_frame1
	.quad	LFB5941-.
	.set L$set$110,LFE5941-LFB5941
	.quad L$set$110
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$111,LCFI62-LFB5941
	.long L$set$111
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$112,LCFI63-LCFI62
	.long L$set$112
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$113,LCFI64-LCFI63
	.long L$set$113
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE47:
LSFDE49:
	.set L$set$114,LEFDE49-LASFDE49
	.long L$set$114
LASFDE49:
	.long	LASFDE49-EH_frame1
	.quad	LFB5944-.
	.set L$set$115,LFE5944-LFB5944
	.quad L$set$115
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$116,LCFI65-LFB5944
	.long L$set$116
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$117,LCFI66-LCFI65
	.long L$set$117
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$118,LCFI67-LCFI66
	.long L$set$118
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE49:
LSFDE51:
	.set L$set$119,LEFDE51-LASFDE51
	.long L$set$119
LASFDE51:
	.long	LASFDE51-EH_frame1
	.quad	LFB5946-.
	.set L$set$120,LFE5946-LFB5946
	.quad L$set$120
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$121,LCFI68-LFB5946
	.long L$set$121
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$122,LCFI69-LCFI68
	.long L$set$122
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$123,LCFI70-LCFI69
	.long L$set$123
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE51:
LSFDE53:
	.set L$set$124,LEFDE53-LASFDE53
	.long L$set$124
LASFDE53:
	.long	LASFDE53-EH_frame1
	.quad	LFB5947-.
	.set L$set$125,LFE5947-LFB5947
	.quad L$set$125
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$126,LCFI71-LFB5947
	.long L$set$126
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$127,LCFI72-LCFI71
	.long L$set$127
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$128,LCFI73-LCFI72
	.long L$set$128
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE53:
LSFDE55:
	.set L$set$129,LEFDE55-LASFDE55
	.long L$set$129
LASFDE55:
	.long	LASFDE55-EH_frame1
	.quad	LFB5948-.
	.set L$set$130,LFE5948-LFB5948
	.quad L$set$130
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$131,LCFI74-LFB5948
	.long L$set$131
	.byte	0xe
	.uleb128 0x110
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$132,LCFI75-LCFI74
	.long L$set$132
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$133,LCFI76-LCFI75
	.long L$set$133
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x20
	.byte	0x4
	.set L$set$134,LCFI77-LCFI76
	.long L$set$134
	.byte	0xde
	.byte	0xdd
	.byte	0x6
	.uleb128 0x4f
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE55:
LSFDE57:
	.set L$set$135,LEFDE57-LASFDE57
	.long L$set$135
LASFDE57:
	.long	LASFDE57-EH_frame1
	.quad	LFB5952-.
	.set L$set$136,LFE5952-LFB5952
	.quad L$set$136
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$137,LCFI78-LFB5952
	.long L$set$137
	.byte	0xe
	.uleb128 0x70
	.byte	0x9d
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xd
	.byte	0x4
	.set L$set$138,LCFI79-LCFI78
	.long L$set$138
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$139,LCFI80-LCFI79
	.long L$set$139
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE57:
LSFDE59:
	.set L$set$140,LEFDE59-LASFDE59
	.long L$set$140
LASFDE59:
	.long	LASFDE59-EH_frame1
	.quad	LFB5953-.
	.set L$set$141,LFE5953-LFB5953
	.quad L$set$141
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$142,LCFI81-LFB5953
	.long L$set$142
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$143,LCFI82-LCFI81
	.long L$set$143
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$144,LCFI83-LCFI82
	.long L$set$144
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE59:
LSFDE61:
	.set L$set$145,LEFDE61-LASFDE61
	.long L$set$145
LASFDE61:
	.long	LASFDE61-EH_frame1
	.quad	LFB5964-.
	.set L$set$146,LFE5964-LFB5964
	.quad L$set$146
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$147,LCFI84-LFB5964
	.long L$set$147
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$148,LCFI85-LCFI84
	.long L$set$148
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$149,LCFI86-LCFI85
	.long L$set$149
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE61:
LSFDE63:
	.set L$set$150,LEFDE63-LASFDE63
	.long L$set$150
LASFDE63:
	.long	LASFDE63-EH_frame1
	.quad	LFB5963-.
	.set L$set$151,LFE5963-LFB5963
	.quad L$set$151
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$152,LCFI87-LFB5963
	.long L$set$152
	.byte	0xe
	.uleb128 0x110
	.byte	0x9d
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x21
	.byte	0x4
	.set L$set$153,LCFI88-LCFI87
	.long L$set$153
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$154,LCFI89-LCFI88
	.long L$set$154
	.byte	0x93
	.uleb128 0x20
	.byte	0x4
	.set L$set$155,LCFI90-LCFI89
	.long L$set$155
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE63:
LSFDE65:
	.set L$set$156,LEFDE65-LASFDE65
	.long L$set$156
LASFDE65:
	.long	LASFDE65-EH_frame1
	.quad	LFB5965-.
	.set L$set$157,LFE5965-LFB5965
	.quad L$set$157
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$158,LCFI91-LFB5965
	.long L$set$158
	.byte	0xe
	.uleb128 0xa0
	.byte	0x9d
	.uleb128 0x14
	.byte	0x9e
	.uleb128 0x13
	.byte	0x4
	.set L$set$159,LCFI92-LCFI91
	.long L$set$159
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$160,LCFI93-LCFI92
	.long L$set$160
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE65:
LSFDE67:
	.set L$set$161,LEFDE67-LASFDE67
	.long L$set$161
LASFDE67:
	.long	LASFDE67-EH_frame1
	.quad	LFB5969-.
	.set L$set$162,LFE5969-LFB5969
	.quad L$set$162
	.uleb128 0x8
	.quad	LLSDA5969-.
	.byte	0x4
	.set L$set$163,LCFI94-LFB5969
	.long L$set$163
	.byte	0xe
	.uleb128 0x230
	.byte	0x4
	.set L$set$164,LCFI95-LCFI94
	.long L$set$164
	.byte	0x9d
	.uleb128 0x46
	.byte	0x9e
	.uleb128 0x45
	.byte	0x4
	.set L$set$165,LCFI96-LCFI95
	.long L$set$165
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$166,LCFI97-LCFI96
	.long L$set$166
	.byte	0x93
	.uleb128 0x44
	.byte	0x4
	.set L$set$167,LCFI98-LCFI97
	.long L$set$167
	.byte	0xd3
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE67:
LSFDE69:
	.set L$set$168,LEFDE69-LASFDE69
	.long L$set$168
LASFDE69:
	.long	LASFDE69-EH_frame1
	.quad	LFB5973-.
	.set L$set$169,LFE5973-LFB5973
	.quad L$set$169
	.uleb128 0x8
	.quad	LLSDA5973-.
	.byte	0x4
	.set L$set$170,LCFI99-LFB5973
	.long L$set$170
	.byte	0xe
	.uleb128 0x470
	.byte	0x4
	.set L$set$171,LCFI100-LCFI99
	.long L$set$171
	.byte	0x9d
	.uleb128 0x8e
	.byte	0x9e
	.uleb128 0x8d
	.byte	0x4
	.set L$set$172,LCFI101-LCFI100
	.long L$set$172
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$173,LCFI102-LCFI101
	.long L$set$173
	.byte	0x93
	.uleb128 0x8c
	.byte	0x4
	.set L$set$174,LCFI103-LCFI102
	.long L$set$174
	.byte	0xd3
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE69:
LSFDE71:
	.set L$set$175,LEFDE71-LASFDE71
	.long L$set$175
LASFDE71:
	.long	LASFDE71-EH_frame1
	.quad	LFB5984-.
	.set L$set$176,LFE5984-LFB5984
	.quad L$set$176
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$177,LCFI104-LFB5984
	.long L$set$177
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$178,LCFI105-LCFI104
	.long L$set$178
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE71:
LSFDE73:
	.set L$set$179,LEFDE73-LASFDE73
	.long L$set$179
LASFDE73:
	.long	LASFDE73-EH_frame1
	.quad	LFB5985-.
	.set L$set$180,LFE5985-LFB5985
	.quad L$set$180
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$181,LCFI106-LFB5985
	.long L$set$181
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$182,LCFI107-LCFI106
	.long L$set$182
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$183,LCFI108-LCFI107
	.long L$set$183
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE73:
LSFDE75:
	.set L$set$184,LEFDE75-LASFDE75
	.long L$set$184
LASFDE75:
	.long	LASFDE75-EH_frame1
	.quad	LFB5988-.
	.set L$set$185,LFE5988-LFB5988
	.quad L$set$185
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$186,LCFI109-LFB5988
	.long L$set$186
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$187,LCFI110-LCFI109
	.long L$set$187
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$188,LCFI111-LCFI110
	.long L$set$188
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE75:
LSFDE77:
	.set L$set$189,LEFDE77-LASFDE77
	.long L$set$189
LASFDE77:
	.long	LASFDE77-EH_frame1
	.quad	LFB5990-.
	.set L$set$190,LFE5990-LFB5990
	.quad L$set$190
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$191,LCFI112-LFB5990
	.long L$set$191
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$192,LCFI113-LCFI112
	.long L$set$192
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$193,LCFI114-LCFI113
	.long L$set$193
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE77:
LSFDE79:
	.set L$set$194,LEFDE79-LASFDE79
	.long L$set$194
LASFDE79:
	.long	LASFDE79-EH_frame1
	.quad	LFB5993-.
	.set L$set$195,LFE5993-LFB5993
	.quad L$set$195
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$196,LCFI115-LFB5993
	.long L$set$196
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$197,LCFI116-LCFI115
	.long L$set$197
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$198,LCFI117-LCFI116
	.long L$set$198
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE79:
LSFDE81:
	.set L$set$199,LEFDE81-LASFDE81
	.long L$set$199
LASFDE81:
	.long	LASFDE81-EH_frame1
	.quad	LFB6001-.
	.set L$set$200,LFE6001-LFB6001
	.quad L$set$200
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$201,LCFI118-LFB6001
	.long L$set$201
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$202,LCFI119-LCFI118
	.long L$set$202
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE81:
LSFDE83:
	.set L$set$203,LEFDE83-LASFDE83
	.long L$set$203
LASFDE83:
	.long	LASFDE83-EH_frame1
	.quad	LFB6005-.
	.set L$set$204,LFE6005-LFB6005
	.quad L$set$204
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$205,LCFI120-LFB6005
	.long L$set$205
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$206,LCFI121-LCFI120
	.long L$set$206
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$207,LCFI122-LCFI121
	.long L$set$207
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE83:
LSFDE85:
	.set L$set$208,LEFDE85-LASFDE85
	.long L$set$208
LASFDE85:
	.long	LASFDE85-EH_frame1
	.quad	LFB5977-.
	.set L$set$209,LFE5977-LFB5977
	.quad L$set$209
	.uleb128 0x8
	.quad	LLSDA5977-.
	.byte	0x4
	.set L$set$210,LCFI123-LFB5977
	.long L$set$210
	.byte	0xe
	.uleb128 0x150
	.byte	0x9d
	.uleb128 0x2a
	.byte	0x9e
	.uleb128 0x29
	.byte	0x4
	.set L$set$211,LCFI124-LCFI123
	.long L$set$211
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$212,LCFI125-LCFI124
	.long L$set$212
	.byte	0x93
	.uleb128 0x28
	.byte	0x4
	.set L$set$213,LCFI126-LCFI125
	.long L$set$213
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE85:
LSFDE87:
	.set L$set$214,LEFDE87-LASFDE87
	.long L$set$214
LASFDE87:
	.long	LASFDE87-EH_frame1
	.quad	LFB6006-.
	.set L$set$215,LFE6006-LFB6006
	.quad L$set$215
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$216,LCFI127-LFB6006
	.long L$set$216
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$217,LCFI128-LCFI127
	.long L$set$217
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$218,LCFI129-LCFI128
	.long L$set$218
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$219,LCFI130-LCFI129
	.long L$set$219
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE87:
LSFDE89:
	.set L$set$220,LEFDE89-LASFDE89
	.long L$set$220
LASFDE89:
	.long	LASFDE89-EH_frame1
	.quad	LFB6007-.
	.set L$set$221,LFE6007-LFB6007
	.quad L$set$221
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$222,LCFI131-LFB6007
	.long L$set$222
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$223,LCFI132-LCFI131
	.long L$set$223
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$224,LCFI133-LCFI132
	.long L$set$224
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE89:
LSFDE91:
	.set L$set$225,LEFDE91-LASFDE91
	.long L$set$225
LASFDE91:
	.long	LASFDE91-EH_frame1
	.quad	LFB6009-.
	.set L$set$226,LFE6009-LFB6009
	.quad L$set$226
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$227,LCFI134-LFB6009
	.long L$set$227
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$228,LCFI135-LCFI134
	.long L$set$228
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$229,LCFI136-LCFI135
	.long L$set$229
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE91:
LSFDE93:
	.set L$set$230,LEFDE93-LASFDE93
	.long L$set$230
LASFDE93:
	.long	LASFDE93-EH_frame1
	.quad	LFB6010-.
	.set L$set$231,LFE6010-LFB6010
	.quad L$set$231
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$232,LCFI137-LFB6010
	.long L$set$232
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$233,LCFI138-LCFI137
	.long L$set$233
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$234,LCFI139-LCFI138
	.long L$set$234
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE93:
LSFDE95:
	.set L$set$235,LEFDE95-LASFDE95
	.long L$set$235
LASFDE95:
	.long	LASFDE95-EH_frame1
	.quad	LFB6011-.
	.set L$set$236,LFE6011-LFB6011
	.quad L$set$236
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$237,LCFI140-LFB6011
	.long L$set$237
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$238,LCFI141-LCFI140
	.long L$set$238
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$239,LCFI142-LCFI141
	.long L$set$239
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE95:
LSFDE97:
	.set L$set$240,LEFDE97-LASFDE97
	.long L$set$240
LASFDE97:
	.long	LASFDE97-EH_frame1
	.quad	LFB6135-.
	.set L$set$241,LFE6135-LFB6135
	.quad L$set$241
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$242,LCFI143-LFB6135
	.long L$set$242
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$243,LCFI144-LCFI143
	.long L$set$243
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$244,LCFI145-LCFI144
	.long L$set$244
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE97:
LSFDE99:
	.set L$set$245,LEFDE99-LASFDE99
	.long L$set$245
LASFDE99:
	.long	LASFDE99-EH_frame1
	.quad	LFB6138-.
	.set L$set$246,LFE6138-LFB6138
	.quad L$set$246
	.uleb128 0x8
	.quad	LLSDA6138-.
	.byte	0x4
	.set L$set$247,LCFI146-LFB6138
	.long L$set$247
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$248,LCFI147-LCFI146
	.long L$set$248
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$249,LCFI148-LCFI147
	.long L$set$249
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE99:
LSFDE101:
	.set L$set$250,LEFDE101-LASFDE101
	.long L$set$250
LASFDE101:
	.long	LASFDE101-EH_frame1
	.quad	LFB6139-.
	.set L$set$251,LFE6139-LFB6139
	.quad L$set$251
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$252,LCFI149-LFB6139
	.long L$set$252
	.byte	0xe
	.uleb128 0xf0
	.byte	0x4
	.set L$set$253,LCFI150-LCFI149
	.long L$set$253
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE101:
LSFDE103:
	.set L$set$254,LEFDE103-LASFDE103
	.long L$set$254
LASFDE103:
	.long	LASFDE103-EH_frame1
	.quad	LFB6140-.
	.set L$set$255,LFE6140-LFB6140
	.quad L$set$255
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$256,LCFI151-LFB6140
	.long L$set$256
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$257,LCFI152-LCFI151
	.long L$set$257
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$258,LCFI153-LCFI152
	.long L$set$258
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE103:
LSFDE105:
	.set L$set$259,LEFDE105-LASFDE105
	.long L$set$259
LASFDE105:
	.long	LASFDE105-EH_frame1
	.quad	LFB6143-.
	.set L$set$260,LFE6143-LFB6143
	.quad L$set$260
	.uleb128 0x8
	.quad	LLSDA6143-.
	.byte	0x4
	.set L$set$261,LCFI154-LFB6143
	.long L$set$261
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$262,LCFI155-LCFI154
	.long L$set$262
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$263,LCFI156-LCFI155
	.long L$set$263
	.byte	0x93
	.uleb128 0xa
	.byte	0x94
	.uleb128 0x9
	.byte	0x4
	.set L$set$264,LCFI157-LCFI156
	.long L$set$264
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE105:
LSFDE107:
	.set L$set$265,LEFDE107-LASFDE107
	.long L$set$265
LASFDE107:
	.long	LASFDE107-EH_frame1
	.quad	LFB6284-.
	.set L$set$266,LFE6284-LFB6284
	.quad L$set$266
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$267,LCFI158-LFB6284
	.long L$set$267
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$268,LCFI159-LCFI158
	.long L$set$268
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$269,LCFI160-LCFI159
	.long L$set$269
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$270,LCFI161-LCFI160
	.long L$set$270
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE107:
LSFDE109:
	.set L$set$271,LEFDE109-LASFDE109
	.long L$set$271
LASFDE109:
	.long	LASFDE109-EH_frame1
	.quad	LFB6331-.
	.set L$set$272,LFE6331-LFB6331
	.quad L$set$272
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$273,LCFI162-LFB6331
	.long L$set$273
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$274,LCFI163-LCFI162
	.long L$set$274
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE109:
LSFDE111:
	.set L$set$275,LEFDE111-LASFDE111
	.long L$set$275
LASFDE111:
	.long	LASFDE111-EH_frame1
	.quad	LFB6328-.
	.set L$set$276,LFE6328-LFB6328
	.quad L$set$276
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$277,LCFI164-LFB6328
	.long L$set$277
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$278,LCFI165-LCFI164
	.long L$set$278
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$279,LCFI166-LCFI165
	.long L$set$279
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE111:
LSFDE113:
	.set L$set$280,LEFDE113-LASFDE113
	.long L$set$280
LASFDE113:
	.long	LASFDE113-EH_frame1
	.quad	LFB6448-.
	.set L$set$281,LFE6448-LFB6448
	.quad L$set$281
	.uleb128 0x8
	.quad	LLSDA6448-.
	.byte	0x4
	.set L$set$282,LCFI167-LFB6448
	.long L$set$282
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$283,LCFI168-LCFI167
	.long L$set$283
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$284,LCFI169-LCFI168
	.long L$set$284
	.byte	0x93
	.uleb128 0x8
	.byte	0x94
	.uleb128 0x7
	.byte	0x4
	.set L$set$285,LCFI170-LCFI169
	.long L$set$285
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE113:
LSFDE115:
	.set L$set$286,LEFDE115-LASFDE115
	.long L$set$286
LASFDE115:
	.long	LASFDE115-EH_frame1
	.quad	LFB6464-.
	.set L$set$287,LFE6464-LFB6464
	.quad L$set$287
	.uleb128 0x8
	.quad	LLSDA6464-.
	.byte	0x4
	.set L$set$288,LCFI171-LFB6464
	.long L$set$288
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$289,LCFI172-LCFI171
	.long L$set$289
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$290,LCFI173-LCFI172
	.long L$set$290
	.byte	0x93
	.uleb128 0x8
	.byte	0x94
	.uleb128 0x7
	.byte	0x4
	.set L$set$291,LCFI174-LCFI173
	.long L$set$291
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE115:
LSFDE117:
	.set L$set$292,LEFDE117-LASFDE117
	.long L$set$292
LASFDE117:
	.long	LASFDE117-EH_frame1
	.quad	LFB6467-.
	.set L$set$293,LFE6467-LFB6467
	.quad L$set$293
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$294,LCFI175-LFB6467
	.long L$set$294
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$295,LCFI176-LCFI175
	.long L$set$295
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$296,LCFI177-LCFI176
	.long L$set$296
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE117:
LSFDE119:
	.set L$set$297,LEFDE119-LASFDE119
	.long L$set$297
LASFDE119:
	.long	LASFDE119-EH_frame1
	.quad	LFB6472-.
	.set L$set$298,LFE6472-LFB6472
	.quad L$set$298
	.uleb128 0x8
	.quad	LLSDA6472-.
	.byte	0x4
	.set L$set$299,LCFI178-LFB6472
	.long L$set$299
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$300,LCFI179-LCFI178
	.long L$set$300
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$301,LCFI180-LCFI179
	.long L$set$301
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE119:
LSFDE121:
	.set L$set$302,LEFDE121-LASFDE121
	.long L$set$302
LASFDE121:
	.long	LASFDE121-EH_frame1
	.quad	LFB6474-.
	.set L$set$303,LFE6474-LFB6474
	.quad L$set$303
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$304,LCFI181-LFB6474
	.long L$set$304
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$305,LCFI182-LCFI181
	.long L$set$305
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$306,LCFI183-LCFI182
	.long L$set$306
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE121:
LSFDE123:
	.set L$set$307,LEFDE123-LASFDE123
	.long L$set$307
LASFDE123:
	.long	LASFDE123-EH_frame1
	.quad	LFB6475-.
	.set L$set$308,LFE6475-LFB6475
	.quad L$set$308
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$309,LCFI184-LFB6475
	.long L$set$309
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$310,LCFI185-LCFI184
	.long L$set$310
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$311,LCFI186-LCFI185
	.long L$set$311
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE123:
LSFDE125:
	.set L$set$312,LEFDE125-LASFDE125
	.long L$set$312
LASFDE125:
	.long	LASFDE125-EH_frame1
	.quad	LFB6477-.
	.set L$set$313,LFE6477-LFB6477
	.quad L$set$313
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$314,LCFI187-LFB6477
	.long L$set$314
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$315,LCFI188-LCFI187
	.long L$set$315
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE125:
LSFDE127:
	.set L$set$316,LEFDE127-LASFDE127
	.long L$set$316
LASFDE127:
	.long	LASFDE127-EH_frame1
	.quad	LFB6478-.
	.set L$set$317,LFE6478-LFB6478
	.quad L$set$317
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$318,LCFI189-LFB6478
	.long L$set$318
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$319,LCFI190-LCFI189
	.long L$set$319
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE127:
LSFDE129:
	.set L$set$320,LEFDE129-LASFDE129
	.long L$set$320
LASFDE129:
	.long	LASFDE129-EH_frame1
	.quad	LFB6480-.
	.set L$set$321,LFE6480-LFB6480
	.quad L$set$321
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$322,LCFI191-LFB6480
	.long L$set$322
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$323,LCFI192-LCFI191
	.long L$set$323
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$324,LCFI193-LCFI192
	.long L$set$324
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE129:
LSFDE131:
	.set L$set$325,LEFDE131-LASFDE131
	.long L$set$325
LASFDE131:
	.long	LASFDE131-EH_frame1
	.quad	LFB6481-.
	.set L$set$326,LFE6481-LFB6481
	.quad L$set$326
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$327,LCFI194-LFB6481
	.long L$set$327
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$328,LCFI195-LCFI194
	.long L$set$328
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE131:
LSFDE133:
	.set L$set$329,LEFDE133-LASFDE133
	.long L$set$329
LASFDE133:
	.long	LASFDE133-EH_frame1
	.quad	LFB6482-.
	.set L$set$330,LFE6482-LFB6482
	.quad L$set$330
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$331,LCFI196-LFB6482
	.long L$set$331
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$332,LCFI197-LCFI196
	.long L$set$332
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$333,LCFI198-LCFI197
	.long L$set$333
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE133:
LSFDE135:
	.set L$set$334,LEFDE135-LASFDE135
	.long L$set$334
LASFDE135:
	.long	LASFDE135-EH_frame1
	.quad	LFB6483-.
	.set L$set$335,LFE6483-LFB6483
	.quad L$set$335
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$336,LCFI199-LFB6483
	.long L$set$336
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$337,LCFI200-LCFI199
	.long L$set$337
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$338,LCFI201-LCFI200
	.long L$set$338
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE135:
LSFDE137:
	.set L$set$339,LEFDE137-LASFDE137
	.long L$set$339
LASFDE137:
	.long	LASFDE137-EH_frame1
	.quad	LFB6484-.
	.set L$set$340,LFE6484-LFB6484
	.quad L$set$340
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$341,LCFI202-LFB6484
	.long L$set$341
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$342,LCFI203-LCFI202
	.long L$set$342
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE137:
LSFDE139:
	.set L$set$343,LEFDE139-LASFDE139
	.long L$set$343
LASFDE139:
	.long	LASFDE139-EH_frame1
	.quad	LFB6485-.
	.set L$set$344,LFE6485-LFB6485
	.quad L$set$344
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$345,LCFI204-LFB6485
	.long L$set$345
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$346,LCFI205-LCFI204
	.long L$set$346
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE139:
LSFDE141:
	.set L$set$347,LEFDE141-LASFDE141
	.long L$set$347
LASFDE141:
	.long	LASFDE141-EH_frame1
	.quad	LFB6489-.
	.set L$set$348,LFE6489-LFB6489
	.quad L$set$348
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$349,LCFI206-LFB6489
	.long L$set$349
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$350,LCFI207-LCFI206
	.long L$set$350
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$351,LCFI208-LCFI207
	.long L$set$351
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE141:
LSFDE143:
	.set L$set$352,LEFDE143-LASFDE143
	.long L$set$352
LASFDE143:
	.long	LASFDE143-EH_frame1
	.quad	LFB6490-.
	.set L$set$353,LFE6490-LFB6490
	.quad L$set$353
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$354,LCFI209-LFB6490
	.long L$set$354
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$355,LCFI210-LCFI209
	.long L$set$355
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$356,LCFI211-LCFI210
	.long L$set$356
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE143:
LSFDE145:
	.set L$set$357,LEFDE145-LASFDE145
	.long L$set$357
LASFDE145:
	.long	LASFDE145-EH_frame1
	.quad	LFB6496-.
	.set L$set$358,LFE6496-LFB6496
	.quad L$set$358
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$359,LCFI212-LFB6496
	.long L$set$359
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$360,LCFI213-LCFI212
	.long L$set$360
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$361,LCFI214-LCFI213
	.long L$set$361
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE145:
LSFDE147:
	.set L$set$362,LEFDE147-LASFDE147
	.long L$set$362
LASFDE147:
	.long	LASFDE147-EH_frame1
	.quad	LFB6497-.
	.set L$set$363,LFE6497-LFB6497
	.quad L$set$363
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$364,LCFI215-LFB6497
	.long L$set$364
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$365,LCFI216-LCFI215
	.long L$set$365
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$366,LCFI217-LCFI216
	.long L$set$366
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE147:
LSFDE149:
	.set L$set$367,LEFDE149-LASFDE149
	.long L$set$367
LASFDE149:
	.long	LASFDE149-EH_frame1
	.quad	LFB6498-.
	.set L$set$368,LFE6498-LFB6498
	.quad L$set$368
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$369,LCFI218-LFB6498
	.long L$set$369
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$370,LCFI219-LCFI218
	.long L$set$370
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE149:
LSFDE151:
	.set L$set$371,LEFDE151-LASFDE151
	.long L$set$371
LASFDE151:
	.long	LASFDE151-EH_frame1
	.quad	LFB6499-.
	.set L$set$372,LFE6499-LFB6499
	.quad L$set$372
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$373,LCFI220-LFB6499
	.long L$set$373
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$374,LCFI221-LCFI220
	.long L$set$374
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE151:
LSFDE153:
	.set L$set$375,LEFDE153-LASFDE153
	.long L$set$375
LASFDE153:
	.long	LASFDE153-EH_frame1
	.quad	LFB6501-.
	.set L$set$376,LFE6501-LFB6501
	.quad L$set$376
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$377,LCFI222-LFB6501
	.long L$set$377
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$378,LCFI223-LCFI222
	.long L$set$378
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$379,LCFI224-LCFI223
	.long L$set$379
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE153:
LSFDE155:
	.set L$set$380,LEFDE155-LASFDE155
	.long L$set$380
LASFDE155:
	.long	LASFDE155-EH_frame1
	.quad	LFB6504-.
	.set L$set$381,LFE6504-LFB6504
	.quad L$set$381
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$382,LCFI225-LFB6504
	.long L$set$382
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$383,LCFI226-LCFI225
	.long L$set$383
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$384,LCFI227-LCFI226
	.long L$set$384
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$385,LCFI228-LCFI227
	.long L$set$385
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE155:
LSFDE157:
	.set L$set$386,LEFDE157-LASFDE157
	.long L$set$386
LASFDE157:
	.long	LASFDE157-EH_frame1
	.quad	LFB6513-.
	.set L$set$387,LFE6513-LFB6513
	.quad L$set$387
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$388,LCFI229-LFB6513
	.long L$set$388
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$389,LCFI230-LCFI229
	.long L$set$389
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE157:
LSFDE159:
	.set L$set$390,LEFDE159-LASFDE159
	.long L$set$390
LASFDE159:
	.long	LASFDE159-EH_frame1
	.quad	LFB6514-.
	.set L$set$391,LFE6514-LFB6514
	.quad L$set$391
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$392,LCFI231-LFB6514
	.long L$set$392
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$393,LCFI232-LCFI231
	.long L$set$393
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE159:
LSFDE161:
	.set L$set$394,LEFDE161-LASFDE161
	.long L$set$394
LASFDE161:
	.long	LASFDE161-EH_frame1
	.quad	LFB6522-.
	.set L$set$395,LFE6522-LFB6522
	.quad L$set$395
	.uleb128 0x8
	.quad	LLSDA6522-.
	.byte	0x4
	.set L$set$396,LCFI233-LFB6522
	.long L$set$396
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$397,LCFI234-LCFI233
	.long L$set$397
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$398,LCFI235-LCFI234
	.long L$set$398
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE161:
LSFDE163:
	.set L$set$399,LEFDE163-LASFDE163
	.long L$set$399
LASFDE163:
	.long	LASFDE163-EH_frame1
	.quad	LFB6526-.
	.set L$set$400,LFE6526-LFB6526
	.quad L$set$400
	.uleb128 0x8
	.quad	LLSDA6526-.
	.byte	0x4
	.set L$set$401,LCFI236-LFB6526
	.long L$set$401
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$402,LCFI237-LCFI236
	.long L$set$402
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$403,LCFI238-LCFI237
	.long L$set$403
	.byte	0x93
	.uleb128 0x8
	.byte	0x94
	.uleb128 0x7
	.byte	0x4
	.set L$set$404,LCFI239-LCFI238
	.long L$set$404
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE163:
LSFDE165:
	.set L$set$405,LEFDE165-LASFDE165
	.long L$set$405
LASFDE165:
	.long	LASFDE165-EH_frame1
	.quad	LFB6528-.
	.set L$set$406,LFE6528-LFB6528
	.quad L$set$406
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$407,LCFI240-LFB6528
	.long L$set$407
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$408,LCFI241-LCFI240
	.long L$set$408
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE165:
LSFDE167:
	.set L$set$409,LEFDE167-LASFDE167
	.long L$set$409
LASFDE167:
	.long	LASFDE167-EH_frame1
	.quad	LFB6530-.
	.set L$set$410,LFE6530-LFB6530
	.quad L$set$410
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$411,LCFI242-LFB6530
	.long L$set$411
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$412,LCFI243-LCFI242
	.long L$set$412
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$413,LCFI244-LCFI243
	.long L$set$413
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$414,LCFI245-LCFI244
	.long L$set$414
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE167:
LSFDE169:
	.set L$set$415,LEFDE169-LASFDE169
	.long L$set$415
LASFDE169:
	.long	LASFDE169-EH_frame1
	.quad	LFB6545-.
	.set L$set$416,LFE6545-LFB6545
	.quad L$set$416
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$417,LCFI246-LFB6545
	.long L$set$417
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$418,LCFI247-LCFI246
	.long L$set$418
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE169:
LSFDE171:
	.set L$set$419,LEFDE171-LASFDE171
	.long L$set$419
LASFDE171:
	.long	LASFDE171-EH_frame1
	.quad	LFB6546-.
	.set L$set$420,LFE6546-LFB6546
	.quad L$set$420
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$421,LCFI248-LFB6546
	.long L$set$421
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$422,LCFI249-LCFI248
	.long L$set$422
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE171:
LSFDE173:
	.set L$set$423,LEFDE173-LASFDE173
	.long L$set$423
LASFDE173:
	.long	LASFDE173-EH_frame1
	.quad	LFB6547-.
	.set L$set$424,LFE6547-LFB6547
	.quad L$set$424
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$425,LCFI250-LFB6547
	.long L$set$425
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$426,LCFI251-LCFI250
	.long L$set$426
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$427,LCFI252-LCFI251
	.long L$set$427
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE173:
LSFDE175:
	.set L$set$428,LEFDE175-LASFDE175
	.long L$set$428
LASFDE175:
	.long	LASFDE175-EH_frame1
	.quad	LFB6551-.
	.set L$set$429,LFE6551-LFB6551
	.quad L$set$429
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$430,LCFI253-LFB6551
	.long L$set$430
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$431,LCFI254-LCFI253
	.long L$set$431
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$432,LCFI255-LCFI254
	.long L$set$432
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE175:
LSFDE177:
	.set L$set$433,LEFDE177-LASFDE177
	.long L$set$433
LASFDE177:
	.long	LASFDE177-EH_frame1
	.quad	LFB6548-.
	.set L$set$434,LFE6548-LFB6548
	.quad L$set$434
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$435,LCFI256-LFB6548
	.long L$set$435
	.byte	0xe
	.uleb128 0x70
	.byte	0x9d
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xd
	.byte	0x4
	.set L$set$436,LCFI257-LCFI256
	.long L$set$436
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$437,LCFI258-LCFI257
	.long L$set$437
	.byte	0x93
	.uleb128 0xc
	.byte	0x4
	.set L$set$438,LCFI259-LCFI258
	.long L$set$438
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE177:
LSFDE179:
	.set L$set$439,LEFDE179-LASFDE179
	.long L$set$439
LASFDE179:
	.long	LASFDE179-EH_frame1
	.quad	LFB6552-.
	.set L$set$440,LFE6552-LFB6552
	.quad L$set$440
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$441,LCFI260-LFB6552
	.long L$set$441
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$442,LCFI261-LCFI260
	.long L$set$442
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE179:
LSFDE181:
	.set L$set$443,LEFDE181-LASFDE181
	.long L$set$443
LASFDE181:
	.long	LASFDE181-EH_frame1
	.quad	LFB6553-.
	.set L$set$444,LFE6553-LFB6553
	.quad L$set$444
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$445,LCFI262-LFB6553
	.long L$set$445
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$446,LCFI263-LCFI262
	.long L$set$446
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$447,LCFI264-LCFI263
	.long L$set$447
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.set L$set$448,LCFI265-LCFI264
	.long L$set$448
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE181:
LSFDE183:
	.set L$set$449,LEFDE183-LASFDE183
	.long L$set$449
LASFDE183:
	.long	LASFDE183-EH_frame1
	.quad	LFB6554-.
	.set L$set$450,LFE6554-LFB6554
	.quad L$set$450
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$451,LCFI266-LFB6554
	.long L$set$451
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$452,LCFI267-LCFI266
	.long L$set$452
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$453,LCFI268-LCFI267
	.long L$set$453
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE183:
LSFDE185:
	.set L$set$454,LEFDE185-LASFDE185
	.long L$set$454
LASFDE185:
	.long	LASFDE185-EH_frame1
	.quad	LFB6555-.
	.set L$set$455,LFE6555-LFB6555
	.quad L$set$455
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$456,LCFI269-LFB6555
	.long L$set$456
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$457,LCFI270-LCFI269
	.long L$set$457
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE185:
LSFDE187:
	.set L$set$458,LEFDE187-LASFDE187
	.long L$set$458
LASFDE187:
	.long	LASFDE187-EH_frame1
	.quad	LFB6556-.
	.set L$set$459,LFE6556-LFB6556
	.quad L$set$459
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$460,LCFI271-LFB6556
	.long L$set$460
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$461,LCFI272-LCFI271
	.long L$set$461
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE187:
LSFDE189:
	.set L$set$462,LEFDE189-LASFDE189
	.long L$set$462
LASFDE189:
	.long	LASFDE189-EH_frame1
	.quad	LFB6598-.
	.set L$set$463,LFE6598-LFB6598
	.quad L$set$463
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$464,LCFI273-LFB6598
	.long L$set$464
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.set L$set$465,LCFI274-LCFI273
	.long L$set$465
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE189:
LSFDE191:
	.set L$set$466,LEFDE191-LASFDE191
	.long L$set$466
LASFDE191:
	.long	LASFDE191-EH_frame1
	.quad	LFB6602-.
	.set L$set$467,LFE6602-LFB6602
	.quad L$set$467
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$468,LCFI275-LFB6602
	.long L$set$468
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$469,LCFI276-LCFI275
	.long L$set$469
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE191:
LSFDE193:
	.set L$set$470,LEFDE193-LASFDE193
	.long L$set$470
LASFDE193:
	.long	LASFDE193-EH_frame1
	.quad	LFB6605-.
	.set L$set$471,LFE6605-LFB6605
	.quad L$set$471
	.uleb128 0x8
	.quad	LLSDA6605-.
	.byte	0x4
	.set L$set$472,LCFI277-LFB6605
	.long L$set$472
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$473,LCFI278-LCFI277
	.long L$set$473
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$474,LCFI279-LCFI278
	.long L$set$474
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE193:
LSFDE195:
	.set L$set$475,LEFDE195-LASFDE195
	.long L$set$475
LASFDE195:
	.long	LASFDE195-EH_frame1
	.quad	LFB6599-.
	.set L$set$476,LFE6599-LFB6599
	.quad L$set$476
	.uleb128 0x8
	.quad	LLSDA6599-.
	.byte	0x4
	.set L$set$477,LCFI280-LFB6599
	.long L$set$477
	.byte	0xe
	.uleb128 0x90
	.byte	0x9d
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x11
	.byte	0x4
	.set L$set$478,LCFI281-LCFI280
	.long L$set$478
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$479,LCFI282-LCFI281
	.long L$set$479
	.byte	0x93
	.uleb128 0x10
	.byte	0x4
	.set L$set$480,LCFI283-LCFI282
	.long L$set$480
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE195:
LSFDE197:
	.set L$set$481,LEFDE197-LASFDE197
	.long L$set$481
LASFDE197:
	.long	LASFDE197-EH_frame1
	.quad	LFB6658-.
	.set L$set$482,LFE6658-LFB6658
	.quad L$set$482
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$483,LCFI284-LFB6658
	.long L$set$483
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$484,LCFI285-LCFI284
	.long L$set$484
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$485,LCFI286-LCFI285
	.long L$set$485
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE197:
LSFDE199:
	.set L$set$486,LEFDE199-LASFDE199
	.long L$set$486
LASFDE199:
	.long	LASFDE199-EH_frame1
	.quad	LFB6814-.
	.set L$set$487,LFE6814-LFB6814
	.quad L$set$487
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$488,LCFI287-LFB6814
	.long L$set$488
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$489,LCFI288-LCFI287
	.long L$set$489
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE199:
LSFDE201:
	.set L$set$490,LEFDE201-LASFDE201
	.long L$set$490
LASFDE201:
	.long	LASFDE201-EH_frame1
	.quad	LFB6820-.
	.set L$set$491,LFE6820-LFB6820
	.quad L$set$491
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$492,LCFI289-LFB6820
	.long L$set$492
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$493,LCFI290-LCFI289
	.long L$set$493
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE201:
LSFDE203:
	.set L$set$494,LEFDE203-LASFDE203
	.long L$set$494
LASFDE203:
	.long	LASFDE203-EH_frame1
	.quad	LFB6822-.
	.set L$set$495,LFE6822-LFB6822
	.quad L$set$495
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$496,LCFI291-LFB6822
	.long L$set$496
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$497,LCFI292-LCFI291
	.long L$set$497
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$498,LCFI293-LCFI292
	.long L$set$498
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE203:
LSFDE205:
	.set L$set$499,LEFDE205-LASFDE205
	.long L$set$499
LASFDE205:
	.long	LASFDE205-EH_frame1
	.quad	LFB6823-.
	.set L$set$500,LFE6823-LFB6823
	.quad L$set$500
	.uleb128 0x8
	.quad	LLSDA6823-.
	.byte	0x4
	.set L$set$501,LCFI294-LFB6823
	.long L$set$501
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$502,LCFI295-LCFI294
	.long L$set$502
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$503,LCFI296-LCFI295
	.long L$set$503
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$504,LCFI297-LCFI296
	.long L$set$504
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE205:
LSFDE207:
	.set L$set$505,LEFDE207-LASFDE207
	.long L$set$505
LASFDE207:
	.long	LASFDE207-EH_frame1
	.quad	LFB6827-.
	.set L$set$506,LFE6827-LFB6827
	.quad L$set$506
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$507,LCFI298-LFB6827
	.long L$set$507
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$508,LCFI299-LCFI298
	.long L$set$508
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE207:
LSFDE209:
	.set L$set$509,LEFDE209-LASFDE209
	.long L$set$509
LASFDE209:
	.long	LASFDE209-EH_frame1
	.quad	LFB6828-.
	.set L$set$510,LFE6828-LFB6828
	.quad L$set$510
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$511,LCFI300-LFB6828
	.long L$set$511
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$512,LCFI301-LCFI300
	.long L$set$512
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE209:
LSFDE211:
	.set L$set$513,LEFDE211-LASFDE211
	.long L$set$513
LASFDE211:
	.long	LASFDE211-EH_frame1
	.quad	LFB6826-.
	.set L$set$514,LFE6826-LFB6826
	.quad L$set$514
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$515,LCFI302-LFB6826
	.long L$set$515
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$516,LCFI303-LCFI302
	.long L$set$516
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$517,LCFI304-LCFI303
	.long L$set$517
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$518,LCFI305-LCFI304
	.long L$set$518
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE211:
LSFDE213:
	.set L$set$519,LEFDE213-LASFDE213
	.long L$set$519
LASFDE213:
	.long	LASFDE213-EH_frame1
	.quad	LFB6829-.
	.set L$set$520,LFE6829-LFB6829
	.quad L$set$520
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$521,LCFI306-LFB6829
	.long L$set$521
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$522,LCFI307-LCFI306
	.long L$set$522
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$523,LCFI308-LCFI307
	.long L$set$523
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE213:
LSFDE215:
	.set L$set$524,LEFDE215-LASFDE215
	.long L$set$524
LASFDE215:
	.long	LASFDE215-EH_frame1
	.quad	LFB6830-.
	.set L$set$525,LFE6830-LFB6830
	.quad L$set$525
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$526,LCFI309-LFB6830
	.long L$set$526
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$527,LCFI310-LCFI309
	.long L$set$527
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE215:
LSFDE217:
	.set L$set$528,LEFDE217-LASFDE217
	.long L$set$528
LASFDE217:
	.long	LASFDE217-EH_frame1
	.quad	LFB6831-.
	.set L$set$529,LFE6831-LFB6831
	.quad L$set$529
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$530,LCFI311-LFB6831
	.long L$set$530
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$531,LCFI312-LCFI311
	.long L$set$531
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$532,LCFI313-LCFI312
	.long L$set$532
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE217:
LSFDE219:
	.set L$set$533,LEFDE219-LASFDE219
	.long L$set$533
LASFDE219:
	.long	LASFDE219-EH_frame1
	.quad	LFB6825-.
	.set L$set$534,LFE6825-LFB6825
	.quad L$set$534
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$535,LCFI314-LFB6825
	.long L$set$535
	.byte	0xe
	.uleb128 0xc0
	.byte	0x9d
	.uleb128 0x18
	.byte	0x9e
	.uleb128 0x17
	.byte	0x4
	.set L$set$536,LCFI315-LCFI314
	.long L$set$536
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$537,LCFI316-LCFI315
	.long L$set$537
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE219:
LSFDE221:
	.set L$set$538,LEFDE221-LASFDE221
	.long L$set$538
LASFDE221:
	.long	LASFDE221-EH_frame1
	.quad	LFB6844-.
	.set L$set$539,LFE6844-LFB6844
	.quad L$set$539
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$540,LCFI317-LFB6844
	.long L$set$540
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$541,LCFI318-LCFI317
	.long L$set$541
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$542,LCFI319-LCFI318
	.long L$set$542
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE221:
LSFDE223:
	.set L$set$543,LEFDE223-LASFDE223
	.long L$set$543
LASFDE223:
	.long	LASFDE223-EH_frame1
	.quad	LFB6845-.
	.set L$set$544,LFE6845-LFB6845
	.quad L$set$544
	.uleb128 0x8
	.quad	LLSDA6845-.
	.byte	0x4
	.set L$set$545,LCFI320-LFB6845
	.long L$set$545
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$546,LCFI321-LCFI320
	.long L$set$546
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$547,LCFI322-LCFI321
	.long L$set$547
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$548,LCFI323-LCFI322
	.long L$set$548
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE223:
LSFDE225:
	.set L$set$549,LEFDE225-LASFDE225
	.long L$set$549
LASFDE225:
	.long	LASFDE225-EH_frame1
	.quad	LFB6849-.
	.set L$set$550,LFE6849-LFB6849
	.quad L$set$550
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$551,LCFI324-LFB6849
	.long L$set$551
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$552,LCFI325-LCFI324
	.long L$set$552
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$553,LCFI326-LCFI325
	.long L$set$553
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE225:
LSFDE227:
	.set L$set$554,LEFDE227-LASFDE227
	.long L$set$554
LASFDE227:
	.long	LASFDE227-EH_frame1
	.quad	LFB6850-.
	.set L$set$555,LFE6850-LFB6850
	.quad L$set$555
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$556,LCFI327-LFB6850
	.long L$set$556
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$557,LCFI328-LCFI327
	.long L$set$557
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$558,LCFI329-LCFI328
	.long L$set$558
	.byte	0x5
	.uleb128 0x4e
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x7
	.byte	0x4
	.set L$set$559,LCFI330-LCFI329
	.long L$set$559
	.byte	0xde
	.byte	0xdd
	.byte	0x6
	.uleb128 0x4e
	.byte	0x6
	.uleb128 0x4f
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE227:
LSFDE229:
	.set L$set$560,LEFDE229-LASFDE229
	.long L$set$560
LASFDE229:
	.long	LASFDE229-EH_frame1
	.quad	LFB6856-.
	.set L$set$561,LFE6856-LFB6856
	.quad L$set$561
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$562,LCFI331-LFB6856
	.long L$set$562
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$563,LCFI332-LCFI331
	.long L$set$563
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$564,LCFI333-LCFI332
	.long L$set$564
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$565,LCFI334-LCFI333
	.long L$set$565
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE229:
LSFDE231:
	.set L$set$566,LEFDE231-LASFDE231
	.long L$set$566
LASFDE231:
	.long	LASFDE231-EH_frame1
	.quad	LFB6857-.
	.set L$set$567,LFE6857-LFB6857
	.quad L$set$567
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$568,LCFI335-LFB6857
	.long L$set$568
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$569,LCFI336-LCFI335
	.long L$set$569
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$570,LCFI337-LCFI336
	.long L$set$570
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE231:
LSFDE233:
	.set L$set$571,LEFDE233-LASFDE233
	.long L$set$571
LASFDE233:
	.long	LASFDE233-EH_frame1
	.quad	LFB6858-.
	.set L$set$572,LFE6858-LFB6858
	.quad L$set$572
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$573,LCFI338-LFB6858
	.long L$set$573
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$574,LCFI339-LCFI338
	.long L$set$574
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE233:
LSFDE235:
	.set L$set$575,LEFDE235-LASFDE235
	.long L$set$575
LASFDE235:
	.long	LASFDE235-EH_frame1
	.quad	LFB6859-.
	.set L$set$576,LFE6859-LFB6859
	.quad L$set$576
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$577,LCFI340-LFB6859
	.long L$set$577
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$578,LCFI341-LCFI340
	.long L$set$578
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$579,LCFI342-LCFI341
	.long L$set$579
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE235:
LSFDE237:
	.set L$set$580,LEFDE237-LASFDE237
	.long L$set$580
LASFDE237:
	.long	LASFDE237-EH_frame1
	.quad	LFB6855-.
	.set L$set$581,LFE6855-LFB6855
	.quad L$set$581
	.uleb128 0x8
	.quad	LLSDA6855-.
	.byte	0x4
	.set L$set$582,LCFI343-LFB6855
	.long L$set$582
	.byte	0xe
	.uleb128 0xd0
	.byte	0x9d
	.uleb128 0x1a
	.byte	0x9e
	.uleb128 0x19
	.byte	0x4
	.set L$set$583,LCFI344-LCFI343
	.long L$set$583
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$584,LCFI345-LCFI344
	.long L$set$584
	.byte	0x93
	.uleb128 0x18
	.byte	0x4
	.set L$set$585,LCFI346-LCFI345
	.long L$set$585
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE237:
LSFDE239:
	.set L$set$586,LEFDE239-LASFDE239
	.long L$set$586
LASFDE239:
	.long	LASFDE239-EH_frame1
	.quad	LFB6866-.
	.set L$set$587,LFE6866-LFB6866
	.quad L$set$587
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$588,LCFI347-LFB6866
	.long L$set$588
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$589,LCFI348-LCFI347
	.long L$set$589
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$590,LCFI349-LCFI348
	.long L$set$590
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE239:
LSFDE241:
	.set L$set$591,LEFDE241-LASFDE241
	.long L$set$591
LASFDE241:
	.long	LASFDE241-EH_frame1
	.quad	LFB6890-.
	.set L$set$592,LFE6890-LFB6890
	.quad L$set$592
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$593,LCFI350-LFB6890
	.long L$set$593
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$594,LCFI351-LCFI350
	.long L$set$594
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$595,LCFI352-LCFI351
	.long L$set$595
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE241:
LSFDE243:
	.set L$set$596,LEFDE243-LASFDE243
	.long L$set$596
LASFDE243:
	.long	LASFDE243-EH_frame1
	.quad	LFB6891-.
	.set L$set$597,LFE6891-LFB6891
	.quad L$set$597
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$598,LCFI353-LFB6891
	.long L$set$598
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$599,LCFI354-LCFI353
	.long L$set$599
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE243:
LSFDE245:
	.set L$set$600,LEFDE245-LASFDE245
	.long L$set$600
LASFDE245:
	.long	LASFDE245-EH_frame1
	.quad	LFB6896-.
	.set L$set$601,LFE6896-LFB6896
	.quad L$set$601
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$602,LCFI355-LFB6896
	.long L$set$602
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$603,LCFI356-LCFI355
	.long L$set$603
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$604,LCFI357-LCFI356
	.long L$set$604
	.byte	0x93
	.uleb128 0xa
	.byte	0x4
	.set L$set$605,LCFI358-LCFI357
	.long L$set$605
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE245:
LSFDE247:
	.set L$set$606,LEFDE247-LASFDE247
	.long L$set$606
LASFDE247:
	.long	LASFDE247-EH_frame1
	.quad	LFB6898-.
	.set L$set$607,LFE6898-LFB6898
	.quad L$set$607
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$608,LCFI359-LFB6898
	.long L$set$608
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$609,LCFI360-LCFI359
	.long L$set$609
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$610,LCFI361-LCFI360
	.long L$set$610
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE247:
LSFDE249:
	.set L$set$611,LEFDE249-LASFDE249
	.long L$set$611
LASFDE249:
	.long	LASFDE249-EH_frame1
	.quad	LFB6897-.
	.set L$set$612,LFE6897-LFB6897
	.quad L$set$612
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$613,LCFI362-LFB6897
	.long L$set$613
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$614,LCFI363-LCFI362
	.long L$set$614
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$615,LCFI364-LCFI363
	.long L$set$615
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$616,LCFI365-LCFI364
	.long L$set$616
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE249:
LSFDE251:
	.set L$set$617,LEFDE251-LASFDE251
	.long L$set$617
LASFDE251:
	.long	LASFDE251-EH_frame1
	.quad	LFB6900-.
	.set L$set$618,LFE6900-LFB6900
	.quad L$set$618
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$619,LCFI366-LFB6900
	.long L$set$619
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$620,LCFI367-LCFI366
	.long L$set$620
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$621,LCFI368-LCFI367
	.long L$set$621
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE251:
LSFDE253:
	.set L$set$622,LEFDE253-LASFDE253
	.long L$set$622
LASFDE253:
	.long	LASFDE253-EH_frame1
	.quad	LFB6922-.
	.set L$set$623,LFE6922-LFB6922
	.quad L$set$623
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$624,LCFI369-LFB6922
	.long L$set$624
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$625,LCFI370-LCFI369
	.long L$set$625
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$626,LCFI371-LCFI370
	.long L$set$626
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$627,LCFI372-LCFI371
	.long L$set$627
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE253:
LSFDE255:
	.set L$set$628,LEFDE255-LASFDE255
	.long L$set$628
LASFDE255:
	.long	LASFDE255-EH_frame1
	.quad	LFB6923-.
	.set L$set$629,LFE6923-LFB6923
	.quad L$set$629
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$630,LCFI373-LFB6923
	.long L$set$630
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$631,LCFI374-LCFI373
	.long L$set$631
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$632,LCFI375-LCFI374
	.long L$set$632
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE255:
LSFDE257:
	.set L$set$633,LEFDE257-LASFDE257
	.long L$set$633
LASFDE257:
	.long	LASFDE257-EH_frame1
	.quad	LFB6972-.
	.set L$set$634,LFE6972-LFB6972
	.quad L$set$634
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$635,LCFI376-LFB6972
	.long L$set$635
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$636,LCFI377-LCFI376
	.long L$set$636
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$637,LCFI378-LCFI377
	.long L$set$637
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$638,LCFI379-LCFI378
	.long L$set$638
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE257:
LSFDE259:
	.set L$set$639,LEFDE259-LASFDE259
	.long L$set$639
LASFDE259:
	.long	LASFDE259-EH_frame1
	.quad	LFB7088-.
	.set L$set$640,LFE7088-LFB7088
	.quad L$set$640
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$641,LCFI380-LFB7088
	.long L$set$641
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$642,LCFI381-LCFI380
	.long L$set$642
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$643,LCFI382-LCFI381
	.long L$set$643
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE259:
LSFDE261:
	.set L$set$644,LEFDE261-LASFDE261
	.long L$set$644
LASFDE261:
	.long	LASFDE261-EH_frame1
	.quad	LFB7094-.
	.set L$set$645,LFE7094-LFB7094
	.quad L$set$645
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$646,LCFI383-LFB7094
	.long L$set$646
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$647,LCFI384-LCFI383
	.long L$set$647
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$648,LCFI385-LCFI384
	.long L$set$648
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$649,LCFI386-LCFI385
	.long L$set$649
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE261:
LSFDE263:
	.set L$set$650,LEFDE263-LASFDE263
	.long L$set$650
LASFDE263:
	.long	LASFDE263-EH_frame1
	.quad	LFB7095-.
	.set L$set$651,LFE7095-LFB7095
	.quad L$set$651
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$652,LCFI387-LFB7095
	.long L$set$652
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$653,LCFI388-LCFI387
	.long L$set$653
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$654,LCFI389-LCFI388
	.long L$set$654
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE263:
LSFDE265:
	.set L$set$655,LEFDE265-LASFDE265
	.long L$set$655
LASFDE265:
	.long	LASFDE265-EH_frame1
	.quad	LFB7098-.
	.set L$set$656,LFE7098-LFB7098
	.quad L$set$656
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$657,LCFI390-LFB7098
	.long L$set$657
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$658,LCFI391-LCFI390
	.long L$set$658
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE265:
LSFDE267:
	.set L$set$659,LEFDE267-LASFDE267
	.long L$set$659
LASFDE267:
	.long	LASFDE267-EH_frame1
	.quad	LFB7101-.
	.set L$set$660,LFE7101-LFB7101
	.quad L$set$660
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$661,LCFI392-LFB7101
	.long L$set$661
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$662,LCFI393-LCFI392
	.long L$set$662
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$663,LCFI394-LCFI393
	.long L$set$663
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE267:
LSFDE269:
	.set L$set$664,LEFDE269-LASFDE269
	.long L$set$664
LASFDE269:
	.long	LASFDE269-EH_frame1
	.quad	LFB7103-.
	.set L$set$665,LFE7103-LFB7103
	.quad L$set$665
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$666,LCFI395-LFB7103
	.long L$set$666
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$667,LCFI396-LCFI395
	.long L$set$667
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$668,LCFI397-LCFI396
	.long L$set$668
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE269:
LSFDE271:
	.set L$set$669,LEFDE271-LASFDE271
	.long L$set$669
LASFDE271:
	.long	LASFDE271-EH_frame1
	.quad	LFB7104-.
	.set L$set$670,LFE7104-LFB7104
	.quad L$set$670
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$671,LCFI398-LFB7104
	.long L$set$671
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$672,LCFI399-LCFI398
	.long L$set$672
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$673,LCFI400-LCFI399
	.long L$set$673
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE271:
LSFDE273:
	.set L$set$674,LEFDE273-LASFDE273
	.long L$set$674
LASFDE273:
	.long	LASFDE273-EH_frame1
	.quad	LFB7105-.
	.set L$set$675,LFE7105-LFB7105
	.quad L$set$675
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$676,LCFI401-LFB7105
	.long L$set$676
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$677,LCFI402-LCFI401
	.long L$set$677
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$678,LCFI403-LCFI402
	.long L$set$678
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE273:
LSFDE275:
	.set L$set$679,LEFDE275-LASFDE275
	.long L$set$679
LASFDE275:
	.long	LASFDE275-EH_frame1
	.quad	LFB7109-.
	.set L$set$680,LFE7109-LFB7109
	.quad L$set$680
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$681,LCFI404-LFB7109
	.long L$set$681
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$682,LCFI405-LCFI404
	.long L$set$682
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE275:
LSFDE277:
	.set L$set$683,LEFDE277-LASFDE277
	.long L$set$683
LASFDE277:
	.long	LASFDE277-EH_frame1
	.quad	LFB7110-.
	.set L$set$684,LFE7110-LFB7110
	.quad L$set$684
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$685,LCFI406-LFB7110
	.long L$set$685
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$686,LCFI407-LCFI406
	.long L$set$686
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$687,LCFI408-LCFI407
	.long L$set$687
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE277:
LSFDE279:
	.set L$set$688,LEFDE279-LASFDE279
	.long L$set$688
LASFDE279:
	.long	LASFDE279-EH_frame1
	.quad	LFB7111-.
	.set L$set$689,LFE7111-LFB7111
	.quad L$set$689
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$690,LCFI409-LFB7111
	.long L$set$690
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$691,LCFI410-LCFI409
	.long L$set$691
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE279:
LSFDE281:
	.set L$set$692,LEFDE281-LASFDE281
	.long L$set$692
LASFDE281:
	.long	LASFDE281-EH_frame1
	.quad	LFB7112-.
	.set L$set$693,LFE7112-LFB7112
	.quad L$set$693
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$694,LCFI411-LFB7112
	.long L$set$694
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$695,LCFI412-LCFI411
	.long L$set$695
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE281:
LSFDE283:
	.set L$set$696,LEFDE283-LASFDE283
	.long L$set$696
LASFDE283:
	.long	LASFDE283-EH_frame1
	.quad	LFB7117-.
	.set L$set$697,LFE7117-LFB7117
	.quad L$set$697
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$698,LCFI413-LFB7117
	.long L$set$698
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$699,LCFI414-LCFI413
	.long L$set$699
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$700,LCFI415-LCFI414
	.long L$set$700
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE283:
LSFDE285:
	.set L$set$701,LEFDE285-LASFDE285
	.long L$set$701
LASFDE285:
	.long	LASFDE285-EH_frame1
	.quad	LFB7114-.
	.set L$set$702,LFE7114-LFB7114
	.quad L$set$702
	.uleb128 0x8
	.quad	LLSDA7114-.
	.byte	0x4
	.set L$set$703,LCFI416-LFB7114
	.long L$set$703
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$704,LCFI417-LCFI416
	.long L$set$704
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$705,LCFI418-LCFI417
	.long L$set$705
	.byte	0x93
	.uleb128 0x8
	.byte	0x94
	.uleb128 0x7
	.byte	0x95
	.uleb128 0x6
	.byte	0x96
	.uleb128 0x5
	.byte	0x4
	.set L$set$706,LCFI419-LCFI418
	.long L$set$706
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE285:
LSFDE287:
	.set L$set$707,LEFDE287-LASFDE287
	.long L$set$707
LASFDE287:
	.long	LASFDE287-EH_frame1
	.quad	LFB7118-.
	.set L$set$708,LFE7118-LFB7118
	.quad L$set$708
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$709,LCFI420-LFB7118
	.long L$set$709
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$710,LCFI421-LCFI420
	.long L$set$710
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$711,LCFI422-LCFI421
	.long L$set$711
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE287:
LSFDE289:
	.set L$set$712,LEFDE289-LASFDE289
	.long L$set$712
LASFDE289:
	.long	LASFDE289-EH_frame1
	.quad	LFB7121-.
	.set L$set$713,LFE7121-LFB7121
	.quad L$set$713
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$714,LCFI423-LFB7121
	.long L$set$714
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$715,LCFI424-LCFI423
	.long L$set$715
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE289:
LSFDE291:
	.set L$set$716,LEFDE291-LASFDE291
	.long L$set$716
LASFDE291:
	.long	LASFDE291-EH_frame1
	.quad	LFB7124-.
	.set L$set$717,LFE7124-LFB7124
	.quad L$set$717
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$718,LCFI425-LFB7124
	.long L$set$718
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$719,LCFI426-LCFI425
	.long L$set$719
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$720,LCFI427-LCFI426
	.long L$set$720
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE291:
LSFDE293:
	.set L$set$721,LEFDE293-LASFDE293
	.long L$set$721
LASFDE293:
	.long	LASFDE293-EH_frame1
	.quad	LFB7126-.
	.set L$set$722,LFE7126-LFB7126
	.quad L$set$722
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$723,LCFI428-LFB7126
	.long L$set$723
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$724,LCFI429-LCFI428
	.long L$set$724
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$725,LCFI430-LCFI429
	.long L$set$725
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE293:
LSFDE295:
	.set L$set$726,LEFDE295-LASFDE295
	.long L$set$726
LASFDE295:
	.long	LASFDE295-EH_frame1
	.quad	LFB7127-.
	.set L$set$727,LFE7127-LFB7127
	.quad L$set$727
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$728,LCFI431-LFB7127
	.long L$set$728
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$729,LCFI432-LCFI431
	.long L$set$729
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$730,LCFI433-LCFI432
	.long L$set$730
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$731,LCFI434-LCFI433
	.long L$set$731
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE295:
LSFDE297:
	.set L$set$732,LEFDE297-LASFDE297
	.long L$set$732
LASFDE297:
	.long	LASFDE297-EH_frame1
	.quad	LFB7128-.
	.set L$set$733,LFE7128-LFB7128
	.quad L$set$733
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$734,LCFI435-LFB7128
	.long L$set$734
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$735,LCFI436-LCFI435
	.long L$set$735
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$736,LCFI437-LCFI436
	.long L$set$736
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$737,LCFI438-LCFI437
	.long L$set$737
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE297:
LSFDE299:
	.set L$set$738,LEFDE299-LASFDE299
	.long L$set$738
LASFDE299:
	.long	LASFDE299-EH_frame1
	.quad	LFB7135-.
	.set L$set$739,LFE7135-LFB7135
	.quad L$set$739
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$740,LCFI439-LFB7135
	.long L$set$740
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$741,LCFI440-LCFI439
	.long L$set$741
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$742,LCFI441-LCFI440
	.long L$set$742
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE299:
LSFDE301:
	.set L$set$743,LEFDE301-LASFDE301
	.long L$set$743
LASFDE301:
	.long	LASFDE301-EH_frame1
	.quad	LFB7137-.
	.set L$set$744,LFE7137-LFB7137
	.quad L$set$744
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$745,LCFI442-LFB7137
	.long L$set$745
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$746,LCFI443-LCFI442
	.long L$set$746
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$747,LCFI444-LCFI443
	.long L$set$747
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE301:
LSFDE303:
	.set L$set$748,LEFDE303-LASFDE303
	.long L$set$748
LASFDE303:
	.long	LASFDE303-EH_frame1
	.quad	LFB7138-.
	.set L$set$749,LFE7138-LFB7138
	.quad L$set$749
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$750,LCFI445-LFB7138
	.long L$set$750
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$751,LCFI446-LCFI445
	.long L$set$751
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE303:
LSFDE305:
	.set L$set$752,LEFDE305-LASFDE305
	.long L$set$752
LASFDE305:
	.long	LASFDE305-EH_frame1
	.quad	LFB7148-.
	.set L$set$753,LFE7148-LFB7148
	.quad L$set$753
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$754,LCFI447-LFB7148
	.long L$set$754
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$755,LCFI448-LCFI447
	.long L$set$755
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$756,LCFI449-LCFI448
	.long L$set$756
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE305:
LSFDE307:
	.set L$set$757,LEFDE307-LASFDE307
	.long L$set$757
LASFDE307:
	.long	LASFDE307-EH_frame1
	.quad	LFB7202-.
	.set L$set$758,LFE7202-LFB7202
	.quad L$set$758
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$759,LCFI450-LFB7202
	.long L$set$759
	.byte	0xe
	.uleb128 0x80
	.byte	0x9d
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xf
	.byte	0x4
	.set L$set$760,LCFI451-LCFI450
	.long L$set$760
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$761,LCFI452-LCFI451
	.long L$set$761
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE307:
LSFDE309:
	.set L$set$762,LEFDE309-LASFDE309
	.long L$set$762
LASFDE309:
	.long	LASFDE309-EH_frame1
	.quad	LFB7203-.
	.set L$set$763,LFE7203-LFB7203
	.quad L$set$763
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$764,LCFI453-LFB7203
	.long L$set$764
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.set L$set$765,LCFI454-LCFI453
	.long L$set$765
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$766,LCFI455-LCFI454
	.long L$set$766
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x30
	.byte	0x4
	.set L$set$767,LCFI456-LCFI455
	.long L$set$767
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE309:
LSFDE311:
	.set L$set$768,LEFDE311-LASFDE311
	.long L$set$768
LASFDE311:
	.long	LASFDE311-EH_frame1
	.quad	LFB7204-.
	.set L$set$769,LFE7204-LFB7204
	.quad L$set$769
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$770,LCFI457-LFB7204
	.long L$set$770
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$771,LCFI458-LCFI457
	.long L$set$771
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$772,LCFI459-LCFI458
	.long L$set$772
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE311:
LSFDE313:
	.set L$set$773,LEFDE313-LASFDE313
	.long L$set$773
LASFDE313:
	.long	LASFDE313-EH_frame1
	.quad	LFB7321-.
	.set L$set$774,LFE7321-LFB7321
	.quad L$set$774
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$775,LCFI460-LFB7321
	.long L$set$775
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$776,LCFI461-LCFI460
	.long L$set$776
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE313:
LSFDE315:
	.set L$set$777,LEFDE315-LASFDE315
	.long L$set$777
LASFDE315:
	.long	LASFDE315-EH_frame1
	.quad	LFB7324-.
	.set L$set$778,LFE7324-LFB7324
	.quad L$set$778
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$779,LCFI462-LFB7324
	.long L$set$779
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$780,LCFI463-LCFI462
	.long L$set$780
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$781,LCFI464-LCFI463
	.long L$set$781
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE315:
LSFDE317:
	.set L$set$782,LEFDE317-LASFDE317
	.long L$set$782
LASFDE317:
	.long	LASFDE317-EH_frame1
	.quad	LFB7325-.
	.set L$set$783,LFE7325-LFB7325
	.quad L$set$783
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$784,LCFI465-LFB7325
	.long L$set$784
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$785,LCFI466-LCFI465
	.long L$set$785
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE317:
LSFDE319:
	.set L$set$786,LEFDE319-LASFDE319
	.long L$set$786
LASFDE319:
	.long	LASFDE319-EH_frame1
	.quad	LFB7326-.
	.set L$set$787,LFE7326-LFB7326
	.quad L$set$787
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$788,LCFI467-LFB7326
	.long L$set$788
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$789,LCFI468-LCFI467
	.long L$set$789
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE319:
LSFDE321:
	.set L$set$790,LEFDE321-LASFDE321
	.long L$set$790
LASFDE321:
	.long	LASFDE321-EH_frame1
	.quad	LFB7329-.
	.set L$set$791,LFE7329-LFB7329
	.quad L$set$791
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE321:
LSFDE323:
	.set L$set$792,LEFDE323-LASFDE323
	.long L$set$792
LASFDE323:
	.long	LASFDE323-EH_frame1
	.quad	LFB7327-.
	.set L$set$793,LFE7327-LFB7327
	.quad L$set$793
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$794,LCFI469-LFB7327
	.long L$set$794
	.byte	0xe
	.uleb128 0x80
	.byte	0x9d
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xf
	.byte	0x4
	.set L$set$795,LCFI470-LCFI469
	.long L$set$795
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$796,LCFI471-LCFI470
	.long L$set$796
	.byte	0x93
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0xd
	.byte	0x4
	.set L$set$797,LCFI472-LCFI471
	.long L$set$797
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0x6
	.uleb128 0x4f
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE323:
LSFDE325:
	.set L$set$798,LEFDE325-LASFDE325
	.long L$set$798
LASFDE325:
	.long	LASFDE325-EH_frame1
	.quad	LFB7332-.
	.set L$set$799,LFE7332-LFB7332
	.quad L$set$799
	.uleb128 0x8
	.quad	LLSDA7332-.
	.byte	0x4
	.set L$set$800,LCFI473-LFB7332
	.long L$set$800
	.byte	0xe
	.uleb128 0x80
	.byte	0x9d
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xf
	.byte	0x4
	.set L$set$801,LCFI474-LCFI473
	.long L$set$801
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$802,LCFI475-LCFI474
	.long L$set$802
	.byte	0x93
	.uleb128 0xe
	.byte	0x94
	.uleb128 0xd
	.byte	0x95
	.uleb128 0xc
	.byte	0x4
	.set L$set$803,LCFI476-LCFI475
	.long L$set$803
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE325:
LSFDE327:
	.set L$set$804,LEFDE327-LASFDE327
	.long L$set$804
LASFDE327:
	.long	LASFDE327-EH_frame1
	.quad	LFB7334-.
	.set L$set$805,LFE7334-LFB7334
	.quad L$set$805
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$806,LCFI477-LFB7334
	.long L$set$806
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$807,LCFI478-LCFI477
	.long L$set$807
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$808,LCFI479-LCFI478
	.long L$set$808
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE327:
LSFDE329:
	.set L$set$809,LEFDE329-LASFDE329
	.long L$set$809
LASFDE329:
	.long	LASFDE329-EH_frame1
	.quad	LFB7335-.
	.set L$set$810,LFE7335-LFB7335
	.quad L$set$810
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$811,LCFI480-LFB7335
	.long L$set$811
	.byte	0xe
	.uleb128 0x70
	.byte	0x9d
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xd
	.byte	0x4
	.set L$set$812,LCFI481-LCFI480
	.long L$set$812
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$813,LCFI482-LCFI481
	.long L$set$813
	.byte	0x93
	.uleb128 0xc
	.byte	0x4
	.set L$set$814,LCFI483-LCFI482
	.long L$set$814
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE329:
LSFDE331:
	.set L$set$815,LEFDE331-LASFDE331
	.long L$set$815
LASFDE331:
	.long	LASFDE331-EH_frame1
	.quad	LFB7338-.
	.set L$set$816,LFE7338-LFB7338
	.quad L$set$816
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$817,LCFI484-LFB7338
	.long L$set$817
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$818,LCFI485-LCFI484
	.long L$set$818
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$819,LCFI486-LCFI485
	.long L$set$819
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE331:
LSFDE333:
	.set L$set$820,LEFDE333-LASFDE333
	.long L$set$820
LASFDE333:
	.long	LASFDE333-EH_frame1
	.quad	LFB7359-.
	.set L$set$821,LFE7359-LFB7359
	.quad L$set$821
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$822,LCFI487-LFB7359
	.long L$set$822
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$823,LCFI488-LCFI487
	.long L$set$823
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$824,LCFI489-LCFI488
	.long L$set$824
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$825,LCFI490-LCFI489
	.long L$set$825
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE333:
LSFDE335:
	.set L$set$826,LEFDE335-LASFDE335
	.long L$set$826
LASFDE335:
	.long	LASFDE335-EH_frame1
	.quad	LFB7360-.
	.set L$set$827,LFE7360-LFB7360
	.quad L$set$827
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$828,LCFI491-LFB7360
	.long L$set$828
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$829,LCFI492-LCFI491
	.long L$set$829
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$830,LCFI493-LCFI492
	.long L$set$830
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE335:
LSFDE337:
	.set L$set$831,LEFDE337-LASFDE337
	.long L$set$831
LASFDE337:
	.long	LASFDE337-EH_frame1
	.quad	LFB7361-.
	.set L$set$832,LFE7361-LFB7361
	.quad L$set$832
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$833,LCFI494-LFB7361
	.long L$set$833
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$834,LCFI495-LCFI494
	.long L$set$834
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$835,LCFI496-LCFI495
	.long L$set$835
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE337:
LSFDE339:
	.set L$set$836,LEFDE339-LASFDE339
	.long L$set$836
LASFDE339:
	.long	LASFDE339-EH_frame1
	.quad	LFB7429-.
	.set L$set$837,LFE7429-LFB7429
	.quad L$set$837
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$838,LCFI497-LFB7429
	.long L$set$838
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$839,LCFI498-LCFI497
	.long L$set$839
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$840,LCFI499-LCFI498
	.long L$set$840
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE339:
LSFDE341:
	.set L$set$841,LEFDE341-LASFDE341
	.long L$set$841
LASFDE341:
	.long	LASFDE341-EH_frame1
	.quad	LFB7432-.
	.set L$set$842,LFE7432-LFB7432
	.quad L$set$842
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$843,LCFI500-LFB7432
	.long L$set$843
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$844,LCFI501-LCFI500
	.long L$set$844
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$845,LCFI502-LCFI501
	.long L$set$845
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE341:
LSFDE343:
	.set L$set$846,LEFDE343-LASFDE343
	.long L$set$846
LASFDE343:
	.long	LASFDE343-EH_frame1
	.quad	LFB7436-.
	.set L$set$847,LFE7436-LFB7436
	.quad L$set$847
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$848,LCFI503-LFB7436
	.long L$set$848
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$849,LCFI504-LCFI503
	.long L$set$849
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$850,LCFI505-LCFI504
	.long L$set$850
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE343:
LSFDE345:
	.set L$set$851,LEFDE345-LASFDE345
	.long L$set$851
LASFDE345:
	.long	LASFDE345-EH_frame1
	.quad	LFB7439-.
	.set L$set$852,LFE7439-LFB7439
	.quad L$set$852
	.uleb128 0x8
	.quad	LLSDA7439-.
	.byte	0x4
	.set L$set$853,LCFI506-LFB7439
	.long L$set$853
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$854,LCFI507-LCFI506
	.long L$set$854
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$855,LCFI508-LCFI507
	.long L$set$855
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$856,LCFI509-LCFI508
	.long L$set$856
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE345:
LSFDE347:
	.set L$set$857,LEFDE347-LASFDE347
	.long L$set$857
LASFDE347:
	.long	LASFDE347-EH_frame1
	.quad	LFB7441-.
	.set L$set$858,LFE7441-LFB7441
	.quad L$set$858
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$859,LCFI510-LFB7441
	.long L$set$859
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$860,LCFI511-LCFI510
	.long L$set$860
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$861,LCFI512-LCFI511
	.long L$set$861
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE347:
LSFDE349:
	.set L$set$862,LEFDE349-LASFDE349
	.long L$set$862
LASFDE349:
	.long	LASFDE349-EH_frame1
	.quad	LFB7444-.
	.set L$set$863,LFE7444-LFB7444
	.quad L$set$863
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$864,LCFI513-LFB7444
	.long L$set$864
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$865,LCFI514-LCFI513
	.long L$set$865
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$866,LCFI515-LCFI514
	.long L$set$866
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE349:
LSFDE351:
	.set L$set$867,LEFDE351-LASFDE351
	.long L$set$867
LASFDE351:
	.long	LASFDE351-EH_frame1
	.quad	LFB7445-.
	.set L$set$868,LFE7445-LFB7445
	.quad L$set$868
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$869,LCFI516-LFB7445
	.long L$set$869
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$870,LCFI517-LCFI516
	.long L$set$870
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$871,LCFI518-LCFI517
	.long L$set$871
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE351:
LSFDE353:
	.set L$set$872,LEFDE353-LASFDE353
	.long L$set$872
LASFDE353:
	.long	LASFDE353-EH_frame1
	.quad	LFB7446-.
	.set L$set$873,LFE7446-LFB7446
	.quad L$set$873
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$874,LCFI519-LFB7446
	.long L$set$874
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$875,LCFI520-LCFI519
	.long L$set$875
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$876,LCFI521-LCFI520
	.long L$set$876
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE353:
LSFDE355:
	.set L$set$877,LEFDE355-LASFDE355
	.long L$set$877
LASFDE355:
	.long	LASFDE355-EH_frame1
	.quad	LFB7447-.
	.set L$set$878,LFE7447-LFB7447
	.quad L$set$878
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$879,LCFI522-LFB7447
	.long L$set$879
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$880,LCFI523-LCFI522
	.long L$set$880
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$881,LCFI524-LCFI523
	.long L$set$881
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE355:
LSFDE357:
	.set L$set$882,LEFDE357-LASFDE357
	.long L$set$882
LASFDE357:
	.long	LASFDE357-EH_frame1
	.quad	LFB7462-.
	.set L$set$883,LFE7462-LFB7462
	.quad L$set$883
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$884,LCFI525-LFB7462
	.long L$set$884
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$885,LCFI526-LCFI525
	.long L$set$885
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE357:
LSFDE359:
	.set L$set$886,LEFDE359-LASFDE359
	.long L$set$886
LASFDE359:
	.long	LASFDE359-EH_frame1
	.quad	LFB7506-.
	.set L$set$887,LFE7506-LFB7506
	.quad L$set$887
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$888,LCFI527-LFB7506
	.long L$set$888
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$889,LCFI528-LCFI527
	.long L$set$889
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$890,LCFI529-LCFI528
	.long L$set$890
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE359:
LSFDE361:
	.set L$set$891,LEFDE361-LASFDE361
	.long L$set$891
LASFDE361:
	.long	LASFDE361-EH_frame1
	.quad	LFB7507-.
	.set L$set$892,LFE7507-LFB7507
	.quad L$set$892
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$893,LCFI530-LFB7507
	.long L$set$893
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$894,LCFI531-LCFI530
	.long L$set$894
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$895,LCFI532-LCFI531
	.long L$set$895
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE361:
LSFDE363:
	.set L$set$896,LEFDE363-LASFDE363
	.long L$set$896
LASFDE363:
	.long	LASFDE363-EH_frame1
	.quad	LFB7509-.
	.set L$set$897,LFE7509-LFB7509
	.quad L$set$897
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$898,LCFI533-LFB7509
	.long L$set$898
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.set L$set$899,LCFI534-LCFI533
	.long L$set$899
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE363:
LSFDE365:
	.set L$set$900,LEFDE365-LASFDE365
	.long L$set$900
LASFDE365:
	.long	LASFDE365-EH_frame1
	.quad	LFB7513-.
	.set L$set$901,LFE7513-LFB7513
	.quad L$set$901
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$902,LCFI535-LFB7513
	.long L$set$902
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$903,LCFI536-LCFI535
	.long L$set$903
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$904,LCFI537-LCFI536
	.long L$set$904
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE365:
LSFDE367:
	.set L$set$905,LEFDE367-LASFDE367
	.long L$set$905
LASFDE367:
	.long	LASFDE367-EH_frame1
	.quad	LFB7514-.
	.set L$set$906,LFE7514-LFB7514
	.quad L$set$906
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$907,LCFI538-LFB7514
	.long L$set$907
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$908,LCFI539-LCFI538
	.long L$set$908
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$909,LCFI540-LCFI539
	.long L$set$909
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE367:
LSFDE369:
	.set L$set$910,LEFDE369-LASFDE369
	.long L$set$910
LASFDE369:
	.long	LASFDE369-EH_frame1
	.quad	LFB7519-.
	.set L$set$911,LFE7519-LFB7519
	.quad L$set$911
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$912,LCFI541-LFB7519
	.long L$set$912
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$913,LCFI542-LCFI541
	.long L$set$913
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE369:
LSFDE371:
	.set L$set$914,LEFDE371-LASFDE371
	.long L$set$914
LASFDE371:
	.long	LASFDE371-EH_frame1
	.quad	LFB7516-.
	.set L$set$915,LFE7516-LFB7516
	.quad L$set$915
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$916,LCFI543-LFB7516
	.long L$set$916
	.byte	0xe
	.uleb128 0x70
	.byte	0x9d
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xd
	.byte	0x4
	.set L$set$917,LCFI544-LCFI543
	.long L$set$917
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$918,LCFI545-LCFI544
	.long L$set$918
	.byte	0x93
	.uleb128 0xc
	.byte	0x4
	.set L$set$919,LCFI546-LCFI545
	.long L$set$919
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE371:
LSFDE373:
	.set L$set$920,LEFDE373-LASFDE373
	.long L$set$920
LASFDE373:
	.long	LASFDE373-EH_frame1
	.quad	LFB7520-.
	.set L$set$921,LFE7520-LFB7520
	.quad L$set$921
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$922,LCFI547-LFB7520
	.long L$set$922
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$923,LCFI548-LCFI547
	.long L$set$923
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$924,LCFI549-LCFI548
	.long L$set$924
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE373:
LSFDE375:
	.set L$set$925,LEFDE375-LASFDE375
	.long L$set$925
LASFDE375:
	.long	LASFDE375-EH_frame1
	.quad	LFB7523-.
	.set L$set$926,LFE7523-LFB7523
	.quad L$set$926
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$927,LCFI550-LFB7523
	.long L$set$927
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$928,LCFI551-LCFI550
	.long L$set$928
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$929,LCFI552-LCFI551
	.long L$set$929
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE375:
LSFDE377:
	.set L$set$930,LEFDE377-LASFDE377
	.long L$set$930
LASFDE377:
	.long	LASFDE377-EH_frame1
	.quad	LFB7524-.
	.set L$set$931,LFE7524-LFB7524
	.quad L$set$931
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$932,LCFI553-LFB7524
	.long L$set$932
	.byte	0xe
	.uleb128 0x70
	.byte	0x9d
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xd
	.byte	0x4
	.set L$set$933,LCFI554-LCFI553
	.long L$set$933
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$934,LCFI555-LCFI554
	.long L$set$934
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE377:
LSFDE379:
	.set L$set$935,LEFDE379-LASFDE379
	.long L$set$935
LASFDE379:
	.long	LASFDE379-EH_frame1
	.quad	LFB7527-.
	.set L$set$936,LFE7527-LFB7527
	.quad L$set$936
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$937,LCFI556-LFB7527
	.long L$set$937
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$938,LCFI557-LCFI556
	.long L$set$938
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$939,LCFI558-LCFI557
	.long L$set$939
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE379:
LSFDE381:
	.set L$set$940,LEFDE381-LASFDE381
	.long L$set$940
LASFDE381:
	.long	LASFDE381-EH_frame1
	.quad	LFB7548-.
	.set L$set$941,LFE7548-LFB7548
	.quad L$set$941
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$942,LCFI559-LFB7548
	.long L$set$942
	.byte	0xe
	.uleb128 0x70
	.byte	0x9d
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xd
	.byte	0x4
	.set L$set$943,LCFI560-LCFI559
	.long L$set$943
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$944,LCFI561-LCFI560
	.long L$set$944
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE381:
LSFDE383:
	.set L$set$945,LEFDE383-LASFDE383
	.long L$set$945
LASFDE383:
	.long	LASFDE383-EH_frame1
	.quad	LFB7554-.
	.set L$set$946,LFE7554-LFB7554
	.quad L$set$946
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$947,LCFI562-LFB7554
	.long L$set$947
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$948,LCFI563-LCFI562
	.long L$set$948
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$949,LCFI564-LCFI563
	.long L$set$949
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE383:
LSFDE385:
	.set L$set$950,LEFDE385-LASFDE385
	.long L$set$950
LASFDE385:
	.long	LASFDE385-EH_frame1
	.quad	LFB7555-.
	.set L$set$951,LFE7555-LFB7555
	.quad L$set$951
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$952,LCFI565-LFB7555
	.long L$set$952
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$953,LCFI566-LCFI565
	.long L$set$953
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$954,LCFI567-LCFI566
	.long L$set$954
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$955,LCFI568-LCFI567
	.long L$set$955
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE385:
LSFDE387:
	.set L$set$956,LEFDE387-LASFDE387
	.long L$set$956
LASFDE387:
	.long	LASFDE387-EH_frame1
	.quad	LFB7556-.
	.set L$set$957,LFE7556-LFB7556
	.quad L$set$957
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$958,LCFI569-LFB7556
	.long L$set$958
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$959,LCFI570-LCFI569
	.long L$set$959
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE387:
LSFDE389:
	.set L$set$960,LEFDE389-LASFDE389
	.long L$set$960
LASFDE389:
	.long	LASFDE389-EH_frame1
	.quad	LFB7586-.
	.set L$set$961,LFE7586-LFB7586
	.quad L$set$961
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$962,LCFI571-LFB7586
	.long L$set$962
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$963,LCFI572-LCFI571
	.long L$set$963
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$964,LCFI573-LCFI572
	.long L$set$964
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE389:
LSFDE391:
	.set L$set$965,LEFDE391-LASFDE391
	.long L$set$965
LASFDE391:
	.long	LASFDE391-EH_frame1
	.quad	LFB7589-.
	.set L$set$966,LFE7589-LFB7589
	.quad L$set$966
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$967,LCFI574-LFB7589
	.long L$set$967
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$968,LCFI575-LCFI574
	.long L$set$968
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$969,LCFI576-LCFI575
	.long L$set$969
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE391:
LSFDE393:
	.set L$set$970,LEFDE393-LASFDE393
	.long L$set$970
LASFDE393:
	.long	LASFDE393-EH_frame1
	.quad	LFB7591-.
	.set L$set$971,LFE7591-LFB7591
	.quad L$set$971
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$972,LCFI577-LFB7591
	.long L$set$972
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$973,LCFI578-LCFI577
	.long L$set$973
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$974,LCFI579-LCFI578
	.long L$set$974
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE393:
LSFDE395:
	.set L$set$975,LEFDE395-LASFDE395
	.long L$set$975
LASFDE395:
	.long	LASFDE395-EH_frame1
	.quad	LFB7582-.
	.set L$set$976,LFE7582-LFB7582
	.quad L$set$976
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$977,LCFI580-LFB7582
	.long L$set$977
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$978,LCFI581-LCFI580
	.long L$set$978
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$979,LCFI582-LCFI581
	.long L$set$979
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$980,LCFI583-LCFI582
	.long L$set$980
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE395:
LSFDE397:
	.set L$set$981,LEFDE397-LASFDE397
	.long L$set$981
LASFDE397:
	.long	LASFDE397-EH_frame1
	.quad	LFB7594-.
	.set L$set$982,LFE7594-LFB7594
	.quad L$set$982
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$983,LCFI584-LFB7594
	.long L$set$983
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$984,LCFI585-LCFI584
	.long L$set$984
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$985,LCFI586-LCFI585
	.long L$set$985
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$986,LCFI587-LCFI586
	.long L$set$986
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE397:
LSFDE399:
	.set L$set$987,LEFDE399-LASFDE399
	.long L$set$987
LASFDE399:
	.long	LASFDE399-EH_frame1
	.quad	LFB7597-.
	.set L$set$988,LFE7597-LFB7597
	.quad L$set$988
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$989,LCFI588-LFB7597
	.long L$set$989
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$990,LCFI589-LCFI588
	.long L$set$990
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$991,LCFI590-LCFI589
	.long L$set$991
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE399:
LSFDE401:
	.set L$set$992,LEFDE401-LASFDE401
	.long L$set$992
LASFDE401:
	.long	LASFDE401-EH_frame1
	.quad	LFB7600-.
	.set L$set$993,LFE7600-LFB7600
	.quad L$set$993
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$994,LCFI591-LFB7600
	.long L$set$994
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$995,LCFI592-LCFI591
	.long L$set$995
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE401:
LSFDE403:
	.set L$set$996,LEFDE403-LASFDE403
	.long L$set$996
LASFDE403:
	.long	LASFDE403-EH_frame1
	.quad	LFB7602-.
	.set L$set$997,LFE7602-LFB7602
	.quad L$set$997
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$998,LCFI593-LFB7602
	.long L$set$998
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$999,LCFI594-LCFI593
	.long L$set$999
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$1000,LCFI595-LCFI594
	.long L$set$1000
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE403:
LSFDE405:
	.set L$set$1001,LEFDE405-LASFDE405
	.long L$set$1001
LASFDE405:
	.long	LASFDE405-EH_frame1
	.quad	LFB8564-.
	.set L$set$1002,LFE8564-LFB8564
	.quad L$set$1002
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$1003,LCFI596-LFB8564
	.long L$set$1003
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$1004,LCFI597-LCFI596
	.long L$set$1004
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$1005,LCFI598-LCFI597
	.long L$set$1005
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE405:
	.private_extern ___dso_handle
	.ident	"GCC: (Homebrew GCC 15.2.0) 15.2.0"
	.mod_init_func
_Mod.init:
	.align	3
	.xword	__GLOBAL__sub_I_main.cpp
	.subsections_via_symbols
