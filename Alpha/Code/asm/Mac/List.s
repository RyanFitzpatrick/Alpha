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
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	LBB1_2
## BB#1:
	movl	16(%rbx), %r15d
LBB1_2:                                 ## %GetListLength.exit
	testq	%r14, %r14
	je	LBB1_6
## BB#3:                                ## %.preheader
	testl	%r15d, %r15d
	jle	LBB1_5
	.align	4, 0x90
LBB1_4:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	*%r14
	movq	8(%rbx), %r12
	movq	%rbx, %rdi
	callq	_free
	decl	%r15d
	movq	%r12, %rbx
	jne	LBB1_4
LBB1_5:                                 ## %.loopexit
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_6:
	leaq	L_.str(%rip), %rdi
	movl	$1, %esi
	movl	$1, %edx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_ReportError            ## TAILCALL
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
	testq	%rax, %rax
	je	LBB3_1
## BB#2:
	movq	%r14, (%rax)
	movq	%rbx, 8(%rax)
	movl	$1, %ecx
	testq	%rbx, %rbx
	je	LBB3_4
## BB#3:
	movl	16(%rbx), %ecx
	incl	%ecx
LBB3_4:                                 ## %GetListLength.exit
	movl	%ecx, 16(%rax)
	movq	%rax, %rbx
	jmp	LBB3_5
LBB3_1:
	leaq	L_.str1(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_ReportError
LBB3_5:
	movq	%rbx, %rax
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
	xorl	%ecx, %ecx
	testq	%r14, %r14
	je	LBB4_2
## BB#1:
	movl	16(%r14), %ecx
LBB4_2:                                 ## %GetListLength.exit
	testq	%rax, %rax
	je	LBB4_3
## BB#4:
	movq	%rbx, (%rax)
	testl	%ecx, %ecx
	je	LBB4_18
## BB#5:                                ## %.preheader
	leaq	8(%r14), %rbx
	cmpl	$2, %ecx
	jl	LBB4_6
## BB#7:                                ## %.lr.ph.preheader
	leal	-1(%rcx), %edi
	movl	%edi, %esi
	andl	$3, %esi
	xorl	%edx, %edx
	testl	%edi, %edi
	je	LBB4_9
## BB#8:                                ## %.lr.ph.preheader
	movl	$1, %r8d
	testl	%esi, %esi
	je	LBB4_14
LBB4_9:                                 ## %unr.cmp10
	movl	$1, %r8d
	cmpl	$1, %esi
	je	LBB4_13
## BB#10:                               ## %unr.cmp
	movl	$1, %r8d
	cmpl	$2, %esi
	je	LBB4_12
## BB#11:                               ## %.lr.ph.unr
	movq	(%rbx), %rbx
	movl	$2, %r8d
	addq	$8, %rbx
LBB4_12:                                ## %.lr.ph.unr5
	movq	(%rbx), %rbx
	incl	%r8d
	addq	$8, %rbx
LBB4_13:                                ## %.lr.ph.unr7
	movq	(%rbx), %rdx
	incl	%r8d
	addq	$8, %rdx
	movq	%rdx, %rbx
LBB4_14:                                ## %.lr.ph.preheader.split
	cmpl	$4, %edi
	jb	LBB4_17
## BB#15:                               ## %.lr.ph.preheader.split.split
	subl	%r8d, %ecx
	movq	%rbx, %rdx
	.align	4, 0x90
LBB4_16:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	8(%rdx), %rdx
	addq	$8, %rdx
	addl	$-4, %ecx
	jne	LBB4_16
	jmp	LBB4_17
LBB4_3:
	leaq	L_.str1(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_ReportError
	jmp	LBB4_19
LBB4_18:
	movq	%r14, 8(%rax)
	movl	$1, 16(%rax)
	movq	%rax, %r14
	jmp	LBB4_19
LBB4_6:
	movq	%rbx, %rdx
LBB4_17:                                ## %._crit_edge
	movq	%rax, (%rdx)
	incl	16(%r14)
LBB4_19:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_AddToList
	.align	4, 0x90
_AddToList:                             ## @AddToList
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp23:
	.cfi_def_cfa_offset 16
Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp25:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp26:
	.cfi_offset %rbx, -40
Ltmp27:
	.cfi_offset %r14, -32
Ltmp28:
	.cfi_offset %r15, -24
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$24, %edi
	callq	_malloc
	xorl	%ecx, %ecx
	testq	%r14, %r14
	je	LBB5_2
## BB#1:
	movl	16(%r14), %ecx
LBB5_2:                                 ## %GetListLength.exit
	testq	%rax, %rax
	je	LBB5_3
## BB#4:
	cmpl	%ebx, %ecx
	jl	LBB5_6
## BB#5:
	testl	%ebx, %ebx
	js	LBB5_6
## BB#7:
	movq	%r15, (%rax)
	je	LBB5_21
## BB#8:                                ## %.preheader.preheader
	testl	%ebx, %ebx
	movl	$1, %ecx
	movl	$1, %r8d
	cmovgl	%ebx, %r8d
	movl	%r8d, %edx
	andl	$3, %edx
	xorl	%esi, %esi
	testl	%r8d, %r8d
	je	LBB5_10
## BB#9:                                ## %.preheader.preheader
	testl	%edx, %edx
	movq	%r14, %rdi
	movl	$0, %r9d
	je	LBB5_15
LBB5_10:                                ## %unr.cmp10
	movl	$1, %ecx
	cmpl	$1, %edx
	movq	%r14, %rsi
	je	LBB5_14
## BB#11:                               ## %unr.cmp
	movl	$1, %ecx
	cmpl	$2, %edx
	movq	%r14, %rdx
	je	LBB5_13
## BB#12:                               ## %.preheader.unr
	movq	8(%r14), %rdx
	movl	$2, %ecx
LBB5_13:                                ## %.preheader.unr6
	movq	8(%rdx), %rsi
	incl	%ecx
LBB5_14:                                ## %.preheader.unr7
	movq	8(%rsi), %rdi
	addq	$8, %rsi
	incl	%ecx
	movq	%rdi, %r9
LBB5_15:                                ## %.preheader.preheader.split
	cmpl	$4, %r8d
	jb	LBB5_19
## BB#16:                               ## %.preheader.preheader.split.split
	decl	%ecx
	.align	4, 0x90
LBB5_17:                                ## %.preheader
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rdi), %rdx
	movq	8(%rdx), %rdx
	movq	8(%rdx), %rsi
	movq	8(%rsi), %rdi
	addl	$4, %ecx
	cmpl	%ebx, %ecx
	jl	LBB5_17
## BB#18:
	addq	$8, %rsi
	movq	%rdi, %r9
LBB5_19:
	movq	%r9, 8(%rax)
	movq	%rax, (%rsi)
	jmp	LBB5_20
LBB5_3:
	leaq	L_.str1(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_ReportError
	jmp	LBB5_20
LBB5_6:
	leaq	L_.str2(%rip), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
	jmp	LBB5_20
LBB5_21:
	movq	%r14, 8(%rax)
	incl	%ecx
	movl	%ecx, 16(%rax)
	movq	%rax, %r14
LBB5_20:
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_ListHasElements
	.align	4, 0x90
_ListHasElements:                       ## @ListHasElements
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp29:
	.cfi_def_cfa_offset 16
Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp31:
	.cfi_def_cfa_register %rbp
	testq	%rdi, %rdi
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Attempting to free list elements with NULL finalizing function, please specify a Finalize function for the data in the list. The list will not be freed"

L_.str1:                                ## @.str1
	.asciz	"Could not allocate space for new list element, no element added"

L_.str2:                                ## @.str2
	.asciz	"The specified position to add the new element is outside the bounds of the list, no element added"


.subsections_via_symbols
