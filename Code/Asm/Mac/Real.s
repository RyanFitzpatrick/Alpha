	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI0_0:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_IncrementReal
	.align	4, 0x90
_IncrementReal:                         ## @IncrementReal
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	addsd	LCPI0_0(%rip), %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI1_0:
	.quad	-4616189618054758400    ## double -1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_DecrementReal
	.align	4, 0x90
_DecrementReal:                         ## @DecrementReal
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	addsd	LCPI1_0(%rip), %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_AddReal
	.align	4, 0x90
_AddReal:                               ## @AddReal
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_SubtractReal
	.align	4, 0x90
_SubtractReal:                          ## @SubtractReal
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_MultiplyReal
	.align	4, 0x90
_MultiplyReal:                          ## @MultiplyReal
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	mulsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_DivideReal
	.align	4, 0x90
_DivideReal:                            ## @DivideReal
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	divsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI6_0:
	.quad	-9223372036854775808    ## double -0.000000e+00
	.quad	-9223372036854775808    ## double -0.000000e+00
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_NegativeReal
	.align	4, 0x90
_NegativeReal:                          ## @NegativeReal
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	xorpd	LCPI6_0(%rip), %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_LogicalNotReal
	.align	4, 0x90
_LogicalNotReal:                        ## @LogicalNotReal
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	xorps	%xmm1, %xmm1
	cmpeqsd	%xmm1, %xmm0
	movd	%xmm0, %rax
	andl	$1, %eax
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_IsRealEqual
	.align	4, 0x90
_IsRealEqual:                           ## @IsRealEqual
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	cmpeqsd	%xmm1, %xmm0
	movd	%xmm0, %rax
	andl	$1, %eax
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_IsRealNotEqual
	.align	4, 0x90
_IsRealNotEqual:                        ## @IsRealNotEqual
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	cmpneqsd	%xmm1, %xmm0
	movd	%xmm0, %rax
	andl	$1, %eax
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_IsRealGreater
	.align	4, 0x90
_IsRealGreater:                         ## @IsRealGreater
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp30:
	.cfi_def_cfa_offset 16
Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp32:
	.cfi_def_cfa_register %rbp
	ucomisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_IsRealNotGreater
	.align	4, 0x90
_IsRealNotGreater:                      ## @IsRealNotGreater
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp33:
	.cfi_def_cfa_offset 16
Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp35:
	.cfi_def_cfa_register %rbp
	ucomisd	%xmm0, %xmm1
	setae	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_IsRealLess
	.align	4, 0x90
_IsRealLess:                            ## @IsRealLess
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp36:
	.cfi_def_cfa_offset 16
Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp38:
	.cfi_def_cfa_register %rbp
	ucomisd	%xmm0, %xmm1
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_IsRealNotLess
	.align	4, 0x90
_IsRealNotLess:                         ## @IsRealNotLess
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp39:
	.cfi_def_cfa_offset 16
Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp41:
	.cfi_def_cfa_register %rbp
	ucomisd	%xmm1, %xmm0
	setae	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
