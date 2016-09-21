	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_CreateList
	.align	4, 0x90
_CreateList:                            ## @CreateList
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
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_FinalizeList
	.align	4, 0x90
_FinalizeList:                          ## @FinalizeList
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp6:
	.cfi_offset %rbx, -48
Ltmp7:
	.cfi_offset %r12, -40
Ltmp8:
	.cfi_offset %r14, -32
Ltmp9:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB1_3
## BB#1:                                ## %GetListLength.exit
	movl	16(%rbx), %r15d
	testl	%r15d, %r15d
	jle	LBB1_3
	.align	4, 0x90
LBB1_2:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	*%r14
	movq	8(%rbx), %r12
	movq	%rbx, %rdi
	callq	_free
	decl	%r15d
	movq	%r12, %rbx
	jne	LBB1_2
LBB1_3:                                 ## %._crit_edge
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_GetListLength
	.align	4, 0x90
_GetListLength:                         ## @GetListLength
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp10:
	.cfi_def_cfa_offset 16
Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp12:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	LBB2_2
## BB#1:
	movl	16(%rdi), %eax
LBB2_2:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_PrependToList
	.align	4, 0x90
_PrependToList:                         ## @PrependToList
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp13:
	.cfi_def_cfa_offset 16
Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp15:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp16:
	.cfi_offset %rbx, -32
Ltmp17:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$24, %edi
	callq	_malloc
	movq	%r14, (%rax)
	movq	%rbx, 8(%rax)
	movl	$1, %ecx
	testq	%rbx, %rbx
	je	LBB3_2
## BB#1:
	movl	16(%rbx), %ecx
	incl	%ecx
LBB3_2:                                 ## %GetListLength.exit
	movl	%ecx, 16(%rax)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_AppendToList
	.align	4, 0x90
_AppendToList:                          ## @AppendToList
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
	pushq	%r14
	pushq	%rbx
Ltmp21:
	.cfi_offset %rbx, -32
Ltmp22:
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$24, %edi
	callq	_malloc
	testq	%r14, %r14
	je	LBB4_1
## BB#3:                                ## %GetListLength.exit
	movl	16(%r14), %ecx
	movq	%rbx, (%rax)
	testl	%ecx, %ecx
	je	LBB4_2
## BB#4:                                ## %.preheader
	leaq	8(%r14), %rbx
	cmpl	$2, %ecx
	jl	LBB4_5
## BB#6:                                ## %.lr.ph.preheader
	leal	-1(%rcx), %edi
	movl	%edi, %esi
	andl	$3, %esi
	xorl	%edx, %edx
	testl	%edi, %edi
	je	LBB4_8
## BB#7:                                ## %.lr.ph.preheader
	movl	$1, %r8d
	testl	%esi, %esi
	je	LBB4_13
LBB4_8:                                 ## %unr.cmp10
	movl	$1, %r8d
	cmpl	$1, %esi
	je	LBB4_12
## BB#9:                                ## %unr.cmp
	movl	$1, %r8d
	cmpl	$2, %esi
	je	LBB4_11
## BB#10:                               ## %.lr.ph.unr
	movq	(%rbx), %rbx
	movl	$2, %r8d
	addq	$8, %rbx
LBB4_11:                                ## %.lr.ph.unr5
	movq	(%rbx), %rbx
	incl	%r8d
	addq	$8, %rbx
LBB4_12:                                ## %.lr.ph.unr7
	movq	(%rbx), %rdx
	incl	%r8d
	addq	$8, %rdx
	movq	%rdx, %rbx
LBB4_13:                                ## %.lr.ph.preheader.split
	cmpl	$4, %edi
	jb	LBB4_16
## BB#14:                               ## %.lr.ph.preheader.split.split
	movl	%ecx, %esi
	subl	%r8d, %esi
	movq	%rbx, %rdx
	.align	4, 0x90
LBB4_15:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	8(%rdx), %rdx
	addq	$8, %rdx
	addl	$-4, %esi
	jne	LBB4_15
	jmp	LBB4_16
LBB4_1:                                 ## %GetListLength.exit.thread
	movq	%rbx, (%rax)
LBB4_2:
	movq	%r14, 8(%rax)
	movl	$1, 16(%rax)
	movq	%rax, %r14
	jmp	LBB4_17
LBB4_5:
	movq	%rbx, %rdx
LBB4_16:                                ## %._crit_edge
	movq	%rax, (%rdx)
	incl	%ecx
	movl	%ecx, 16(%r14)
LBB4_17:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
