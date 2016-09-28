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
	movl	$24, %edi
	callq	_malloc
	movl	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	$0, (%rax)
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
	je	LBB1_5
## BB#1:                                ## %GetListLength.exit
	movl	16(%rbx), %r15d
	testl	%r15d, %r15d
	jle	LBB1_4
## BB#2:                                ## %.lr.ph
	testq	%r14, %r14
	cmoveq	_Nop@GOTPCREL(%rip), %r14
	.align	4, 0x90
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	xorl	%eax, %eax
	callq	*%r14
	movq	8(%rbx), %r12
	movq	%rbx, %rdi
	callq	_free
	decl	%r15d
	movq	%r12, %rbx
	jne	LBB1_3
LBB1_4:                                 ## %.loopexit
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_5:
	leaq	L_.str(%rip), %rdi
	xorl	%esi, %esi
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp16:
	.cfi_offset %rbx, -40
Ltmp17:
	.cfi_offset %r14, -32
Ltmp18:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB3_1
## BB#2:                                ## %GetListLength.exit
	movl	16(%rbx), %r15d
	testl	%r15d, %r15d
	jle	LBB3_6
## BB#3:
	movl	$24, %edi
	callq	_malloc
	testq	%rax, %rax
	je	LBB3_4
## BB#5:
	movq	%r14, (%rax)
	movq	%rbx, 8(%rax)
	incl	%r15d
	movl	%r15d, 16(%rax)
	movq	%rax, %rbx
	jmp	LBB3_7
LBB3_1:
	leaq	L_.str1(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
	jmp	LBB3_7
LBB3_6:
	movq	%r14, (%rbx)
	movl	$1, 16(%rbx)
	movq	$0, 8(%rbx)
	jmp	LBB3_7
LBB3_4:
	leaq	L_.str2(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_ReportError
LBB3_7:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_AppendToList
	.align	4, 0x90
_AppendToList:                          ## @AppendToList
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp19:
	.cfi_def_cfa_offset 16
Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp21:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp22:
	.cfi_offset %rbx, -40
Ltmp23:
	.cfi_offset %r14, -32
Ltmp24:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB4_1
## BB#2:                                ## %GetListLength.exit
	movl	16(%rbx), %r15d
	testl	%r15d, %r15d
	je	LBB4_17
## BB#3:
	movl	$24, %edi
	callq	_malloc
	testq	%rax, %rax
	je	LBB4_19
## BB#4:                                ## %.preheader
	leaq	8(%rbx), %rcx
	cmpl	$2, %r15d
	jl	LBB4_5
## BB#6:                                ## %.lr.ph.preheader
	leal	-1(%r15), %esi
	movl	%esi, %edx
	andl	$3, %edx
	xorl	%edi, %edi
	testl	%esi, %esi
	je	LBB4_8
## BB#7:                                ## %.lr.ph.preheader
	movl	$1, %r8d
	testl	%edx, %edx
	je	LBB4_13
LBB4_8:                                 ## %unr.cmp10
	movl	$1, %r8d
	cmpl	$1, %edx
	je	LBB4_12
## BB#9:                                ## %unr.cmp
	movl	$1, %r8d
	cmpl	$2, %edx
	je	LBB4_11
## BB#10:                               ## %.lr.ph.unr
	movq	(%rcx), %rcx
	movl	$2, %r8d
	addq	$8, %rcx
LBB4_11:                                ## %.lr.ph.unr5
	movq	(%rcx), %rcx
	incl	%r8d
	addq	$8, %rcx
LBB4_12:                                ## %.lr.ph.unr7
	movq	(%rcx), %rdi
	incl	%r8d
	addq	$8, %rdi
	movq	%rdi, %rcx
LBB4_13:                                ## %.lr.ph.preheader.split
	cmpl	$4, %esi
	jb	LBB4_16
## BB#14:                               ## %.lr.ph.preheader.split.split
	movl	%r15d, %edx
	subl	%r8d, %edx
	movq	%rcx, %rdi
	.align	4, 0x90
LBB4_15:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rcx
	movq	8(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	8(%rcx), %rdi
	addq	$8, %rdi
	addl	$-4, %edx
	jne	LBB4_15
	jmp	LBB4_16
LBB4_1:
	leaq	L_.str1(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
	jmp	LBB4_18
LBB4_17:
	movq	%r14, (%rbx)
	movq	$0, 8(%rbx)
	movl	$1, 16(%rbx)
	jmp	LBB4_18
LBB4_19:
	leaq	L_.str2(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_ReportError
	jmp	LBB4_18
LBB4_5:
	movq	%rcx, %rdi
LBB4_16:                                ## %._crit_edge
	movq	%rax, (%rdi)
	movq	%r14, (%rax)
	movq	$0, 8(%rax)
	incl	%r15d
	movl	%r15d, 16(%rbx)
LBB4_18:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_AddToList
	.align	4, 0x90
_AddToList:                             ## @AddToList
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp25:
	.cfi_def_cfa_offset 16
Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp27:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp28:
	.cfi_offset %rbx, -48
Ltmp29:
	.cfi_offset %r12, -40
Ltmp30:
	.cfi_offset %r14, -32
Ltmp31:
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB5_1
## BB#2:                                ## %GetListLength.exit
	movl	16(%rbx), %r12d
	cmpl	%r14d, %r12d
	jl	LBB5_4
## BB#3:                                ## %GetListLength.exit
	testl	%r14d, %r14d
	js	LBB5_4
## BB#6:
	testl	%r12d, %r12d
	je	LBB5_24
## BB#7:
	movl	$24, %edi
	callq	_malloc
	movq	%r15, (%rax)
	testq	%rax, %rax
	je	LBB5_8
## BB#9:
	testl	%r14d, %r14d
	je	LBB5_23
## BB#10:                               ## %.preheader.preheader
	movl	$1, %ecx
	movl	$1, %edx
	cmovgl	%r14d, %edx
	movl	%edx, %esi
	andl	$3, %esi
	xorl	%edi, %edi
	testl	%edx, %edx
	je	LBB5_13
## BB#11:                               ## %.preheader.preheader
	testl	%esi, %esi
	jne	LBB5_13
## BB#12:
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	jmp	LBB5_18
LBB5_1:
	leaq	L_.str1(%rip), %rdi
	xorl	%ebx, %ebx
	jmp	LBB5_5
LBB5_4:
	leaq	L_.str3(%rip), %rdi
LBB5_5:
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
LBB5_25:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_24:
	movq	%r15, (%rbx)
	movq	$0, 8(%rbx)
	movl	$1, 16(%rbx)
	jmp	LBB5_25
LBB5_8:
	leaq	L_.str2(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_ReportError
	jmp	LBB5_25
LBB5_23:
	movq	%rbx, 8(%rax)
	incl	%r12d
	movl	%r12d, 16(%rax)
	movq	%rax, %rbx
	jmp	LBB5_25
LBB5_13:                                ## %unr.cmp10
	movl	$1, %ecx
	cmpl	$1, %esi
	je	LBB5_17
## BB#14:                               ## %unr.cmp
	movl	$1, %ecx
	cmpl	$2, %esi
	je	LBB5_16
## BB#15:                               ## %.preheader.unr
	movq	8(%rbx), %rbx
	movl	$2, %ecx
LBB5_16:                                ## %.preheader.unr6
	movq	8(%rbx), %rbx
	incl	%ecx
LBB5_17:                                ## %.preheader.unr7
	movq	%rbx, %rsi
	leaq	8(%rsi), %r8
	movq	8(%rsi), %rbx
	incl	%ecx
	movq	%rbx, %rdi
LBB5_18:                                ## %.preheader.preheader.split
	cmpl	$4, %edx
	jb	LBB5_22
## BB#19:                               ## %.preheader.preheader.split.split
	decl	%ecx
	.align	4, 0x90
LBB5_20:                                ## %.preheader
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdx
	movq	8(%rdx), %rdx
	movq	8(%rdx), %rsi
	movq	8(%rsi), %rbx
	addl	$4, %ecx
	cmpl	%r14d, %ecx
	jl	LBB5_20
## BB#21:
	leaq	8(%rsi), %r8
	movq	%rbx, %rdi
LBB5_22:
	movq	%rdi, 8(%rax)
	movq	%rax, (%r8)
	movq	%rsi, %rbx
	jmp	LBB5_25
	.cfi_endproc

	.globl	_RemoveFirstFromList
	.align	4, 0x90
_RemoveFirstFromList:                   ## @RemoveFirstFromList
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp32:
	.cfi_def_cfa_offset 16
Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp34:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp35:
	.cfi_offset %rbx, -48
Ltmp36:
	.cfi_offset %r12, -40
Ltmp37:
	.cfi_offset %r14, -32
Ltmp38:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB6_1
## BB#2:
	testq	%rsi, %rsi
	movq	(%rbx), %rdi
	movq	8(%rbx), %r15
	movl	16(%rbx), %r12d
	cmoveq	_Nop@GOTPCREL(%rip), %rsi
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	callq	*%rsi
	movq	%rbx, %rdi
	callq	_free
	testq	%r15, %r15
	je	LBB6_4
## BB#3:
	decl	%r12d
	movl	%r12d, 16(%r15)
	movq	%r15, %r14
	jmp	LBB6_4
LBB6_1:
	leaq	L_.str4(%rip), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	_ReportError
	xorl	%r14d, %r14d
LBB6_4:
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_RemoveLastFromList
	.align	4, 0x90
_RemoveLastFromList:                    ## @RemoveLastFromList
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
	pushq	%r14
	pushq	%rbx
Ltmp42:
	.cfi_offset %rbx, -32
Ltmp43:
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	testq	%r14, %r14
	je	LBB7_1
## BB#2:
	movl	16(%r14), %eax
	testq	%rsi, %rsi
	cmoveq	_Nop@GOTPCREL(%rip), %rsi
	cmpl	$1, %eax
	jne	LBB7_3
## BB#16:
	movq	(%r14), %rdi
	xorl	%eax, %eax
	callq	*%rsi
	movq	%r14, %rdi
	callq	_free
	xorl	%r14d, %r14d
	jmp	LBB7_15
LBB7_1:
	leaq	L_.str5(%rip), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	_ReportError
	xorl	%r14d, %r14d
	jmp	LBB7_15
LBB7_3:                                 ## %.preheader.preheader
	movl	$2, %ecx
	movl	$2, %r8d
	cmovgl	%eax, %r8d
	decl	%r8d
	movl	%r8d, %edx
	andl	$3, %edx
	xorl	%ebx, %ebx
	testl	%r8d, %r8d
	je	LBB7_5
## BB#4:                                ## %.preheader.preheader
	testl	%edx, %edx
	movq	%r14, %rdi
	movl	$0, %r9d
	je	LBB7_10
LBB7_5:                                 ## %unr.cmp10
	movl	$2, %ecx
	cmpl	$1, %edx
	movq	%r14, %rbx
	je	LBB7_9
## BB#6:                                ## %unr.cmp
	movl	$2, %ecx
	cmpl	$2, %edx
	movq	%r14, %rdx
	je	LBB7_8
## BB#7:                                ## %.preheader.unr
	movq	8(%r14), %rdx
	movl	$3, %ecx
LBB7_8:                                 ## %.preheader.unr6
	movq	8(%rdx), %rbx
	incl	%ecx
LBB7_9:                                 ## %.preheader.unr7
	movq	8(%rbx), %rdi
	addq	$8, %rbx
	incl	%ecx
	movq	%rdi, %r9
LBB7_10:                                ## %.preheader.preheader.split
	cmpl	$4, %r8d
	jb	LBB7_14
## BB#11:                               ## %.preheader.preheader.split.split
	decl	%ecx
	.align	4, 0x90
LBB7_12:                                ## %.preheader
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rdi), %rdx
	movq	8(%rdx), %rdx
	movq	8(%rdx), %rbx
	movq	8(%rbx), %rdi
	addl	$4, %ecx
	cmpl	%eax, %ecx
	jl	LBB7_12
## BB#13:
	addq	$8, %rbx
	movq	%rdi, %r9
LBB7_14:
	movq	(%r9), %rdi
	xorl	%eax, %eax
	callq	*%rsi
	movq	(%rbx), %rdi
	callq	_free
	movq	$0, (%rbx)
	decl	16(%r14)
LBB7_15:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_RemoveFromList
	.align	4, 0x90
_RemoveFromList:                        ## @RemoveFromList
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp44:
	.cfi_def_cfa_offset 16
Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp46:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp47:
	.cfi_offset %rbx, -40
Ltmp48:
	.cfi_offset %r14, -32
Ltmp49:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	testq	%r14, %r14
	je	LBB8_1
## BB#2:
	movl	16(%r14), %r15d
	testq	%rdx, %rdx
	cmoveq	_Nop@GOTPCREL(%rip), %rdx
	cmpl	%esi, %r15d
	jle	LBB8_4
## BB#3:
	testl	%esi, %esi
	js	LBB8_4
## BB#5:
	je	LBB8_18
## BB#6:                                ## %.preheader.preheader
	testl	%r15d, %r15d
	movl	$1, %eax
	movl	$1, %r8d
	cmovgl	%r15d, %r8d
	movl	%r8d, %ecx
	andl	$3, %ecx
	xorl	%ebx, %ebx
	testl	%r8d, %r8d
	je	LBB8_8
## BB#7:                                ## %.preheader.preheader
	testl	%ecx, %ecx
	movq	%r14, %rsi
	movl	$0, %edi
	je	LBB8_13
LBB8_8:                                 ## %unr.cmp11
	movl	$1, %eax
	cmpl	$1, %ecx
	movq	%r14, %rbx
	je	LBB8_12
## BB#9:                                ## %unr.cmp
	movl	$1, %eax
	cmpl	$2, %ecx
	movq	%r14, %rcx
	je	LBB8_11
## BB#10:                               ## %.preheader.unr
	movq	8(%r14), %rcx
	movl	$2, %eax
LBB8_11:                                ## %.preheader.unr7
	movq	8(%rcx), %rbx
	incl	%eax
LBB8_12:                                ## %.preheader.unr8
	movq	8(%rbx), %rsi
	addq	$8, %rbx
	incl	%eax
	movq	%rsi, %rdi
LBB8_13:                                ## %.preheader.preheader.split
	cmpl	$4, %r8d
	jb	LBB8_17
## BB#14:                               ## %.preheader.preheader.split.split
	decl	%eax
	.align	4, 0x90
LBB8_15:                                ## %.preheader
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %rcx
	movq	8(%rcx), %rcx
	movq	8(%rcx), %rbx
	movq	8(%rbx), %rsi
	addl	$4, %eax
	cmpl	%r15d, %eax
	jl	LBB8_15
## BB#16:
	addq	$8, %rbx
	movq	%rsi, %rdi
LBB8_17:
	movq	8(%rdi), %r15
	xorl	%eax, %eax
	callq	*%rdx
	movq	(%rbx), %rdi
	callq	_free
	movq	%r15, (%rbx)
	decl	16(%r14)
	jmp	LBB8_20
LBB8_1:
	leaq	L_.str6(%rip), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	_ReportError
	xorl	%r14d, %r14d
	jmp	LBB8_20
LBB8_4:
	leaq	L_.str7(%rip), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
	jmp	LBB8_20
LBB8_18:
	movq	(%r14), %rdi
	movq	8(%r14), %rbx
	xorl	%eax, %eax
	callq	*%rdx
	movq	%r14, %rdi
	callq	_free
	testq	%rbx, %rbx
	movl	$0, %r14d
	je	LBB8_20
## BB#19:
	decl	%r15d
	movl	%r15d, 16(%rbx)
	movq	%rbx, %r14
LBB8_20:
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
Ltmp50:
	.cfi_def_cfa_offset 16
Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp52:
	.cfi_def_cfa_register %rbp
	testq	%rdi, %rdi
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_ListHasNext
	.align	4, 0x90
_ListHasNext:                           ## @ListHasNext
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp53:
	.cfi_def_cfa_offset 16
Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp55:
	.cfi_def_cfa_register %rbp
	testq	%rdi, %rdi
	je	LBB10_2
## BB#1:
	movb	$1, %al
	cmpq	$0, 8(%rdi)
	jne	LBB10_3
LBB10_2:
	xorl	%eax, %eax
LBB10_3:
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_GetListNext
	.align	4, 0x90
_GetListNext:                           ## @GetListNext
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp56:
	.cfi_def_cfa_offset 16
Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp58:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp59:
	.cfi_offset %rbx, -24
	testq	%rdi, %rdi
	je	LBB11_1
## BB#2:
	movq	8(%rdi), %rbx
	jmp	LBB11_3
LBB11_1:
	leaq	L_.str8(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
LBB11_3:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_GetListData
	.align	4, 0x90
_GetListData:                           ## @GetListData
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp60:
	.cfi_def_cfa_offset 16
Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp62:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp63:
	.cfi_offset %rbx, -24
	testq	%rdi, %rdi
	je	LBB12_1
## BB#2:
	movq	(%rdi), %rbx
	jmp	LBB12_3
LBB12_1:
	leaq	L_.str9(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
LBB12_3:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Attempting to finalize NULL List, nothing will happen"

L_.str1:                                ## @.str1
	.asciz	"Atempting to add to NULL List, please use CreateList() before adding data to a list"

L_.str2:                                ## @.str2
	.asciz	"Could not allocate space for new list element, no element added"

L_.str3:                                ## @.str3
	.asciz	"The specified position to add the new element is outside the bounds of the list, no element added"

L_.str4:                                ## @.str4
	.asciz	"Attempting to finalize first element in NULL list, nothing will happen"

L_.str5:                                ## @.str5
	.asciz	"Attempting to finalize last element in NULL list, nothing will happen"

L_.str6:                                ## @.str6
	.asciz	"Attempting to finalize element in NULL list, nothing will happen"

L_.str7:                                ## @.str7
	.asciz	"The specified position to remove the element is outside the bounds of the list, no element removed"

L_.str8:                                ## @.str8
	.asciz	"Attempting to get next element from NULL List Pointer, NULL returned"

L_.str9:                                ## @.str9
	.asciz	"Attempting to get data from NULL List Pointer, NULL returned"


.subsections_via_symbols
