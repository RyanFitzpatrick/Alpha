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
	pushq	%rbx
	pushq	%rax
Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rsi, %rbx
	movl	$24, %esi
	callq	_realloc
	movq	%rbx, (%rax)
	movl	$1, 16(%rax)
	movq	$0, 8(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_FinalizeList
	.align	4, 0x90
_FinalizeList:                          ## @FinalizeList
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp4:
	.cfi_def_cfa_offset 16
Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp6:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp7:
	.cfi_offset %rbx, -48
Ltmp8:
	.cfi_offset %r12, -40
Ltmp9:
	.cfi_offset %r14, -32
Ltmp10:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB1_4
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
LBB1_4:                                 ## %._crit_edge
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
Ltmp11:
	.cfi_def_cfa_offset 16
Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp13:
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
Ltmp14:
	.cfi_def_cfa_offset 16
Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp16:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp17:
	.cfi_offset %rbx, -32
Ltmp18:
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
	leaq	L_.str(%rip), %rdi
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
Ltmp19:
	.cfi_def_cfa_offset 16
Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp21:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp22:
	.cfi_offset %rbx, -48
Ltmp23:
	.cfi_offset %r12, -40
Ltmp24:
	.cfi_offset %r14, -32
Ltmp25:
	.cfi_offset %r15, -24
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$24, %edi
	callq	_malloc
	movq	%rax, %r15
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	LBB4_2
## BB#1:
	movl	16(%r14), %ebx
LBB4_2:                                 ## %GetListLength.exit
	testq	%r15, %r15
	jne	LBB4_4
## BB#3:
	leaq	L_.str(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_ReportError
LBB4_4:
	movq	%r12, (%r15)
	testl	%ebx, %ebx
	je	LBB4_18
## BB#5:                                ## %.preheader
	leaq	8(%r14), %rax
	cmpl	$2, %ebx
	jl	LBB4_6
## BB#7:                                ## %.lr.ph.preheader
	leal	-1(%rbx), %ecx
	movl	%ecx, %edi
	andl	$3, %edi
	xorl	%esi, %esi
	testl	%ecx, %ecx
	je	LBB4_9
## BB#8:                                ## %.lr.ph.preheader
	movl	$1, %edx
	testl	%edi, %edi
	je	LBB4_14
LBB4_9:                                 ## %unr.cmp10
	movl	$1, %edx
	cmpl	$1, %edi
	je	LBB4_13
## BB#10:                               ## %unr.cmp
	movl	$1, %edx
	cmpl	$2, %edi
	je	LBB4_12
## BB#11:                               ## %.lr.ph.unr
	movq	(%rax), %rax
	movl	$2, %edx
	addq	$8, %rax
LBB4_12:                                ## %.lr.ph.unr5
	movq	(%rax), %rax
	incl	%edx
	addq	$8, %rax
LBB4_13:                                ## %.lr.ph.unr7
	movq	(%rax), %rsi
	incl	%edx
	addq	$8, %rsi
	movq	%rsi, %rax
LBB4_14:                                ## %.lr.ph.preheader.split
	cmpl	$4, %ecx
	jb	LBB4_17
## BB#15:                               ## %.lr.ph.preheader.split.split
	subl	%edx, %ebx
	movq	%rax, %rsi
	.align	4, 0x90
LBB4_16:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	addq	$8, %rsi
	addl	$-4, %ebx
	jne	LBB4_16
	jmp	LBB4_17
LBB4_18:
	movq	%r14, 8(%r15)
	movl	$1, 16(%r15)
	jmp	LBB4_19
LBB4_6:
	movq	%rax, %rsi
LBB4_17:                                ## %._crit_edge
	movq	%r15, (%rsi)
	movq	$0, 8(%r15)
	incl	16(%r14)
LBB4_19:
	popq	%rbx
	popq	%r12
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
Ltmp26:
	.cfi_def_cfa_offset 16
Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp28:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp29:
	.cfi_offset %rbx, -56
Ltmp30:
	.cfi_offset %r12, -48
Ltmp31:
	.cfi_offset %r13, -40
Ltmp32:
	.cfi_offset %r14, -32
Ltmp33:
	.cfi_offset %r15, -24
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$24, %edi
	callq	_malloc
	movq	%rax, %r14
	xorl	%r13d, %r13d
	testq	%rbx, %rbx
	je	LBB5_2
## BB#1:
	movl	16(%rbx), %r13d
LBB5_2:                                 ## %GetListLength.exit
	testq	%r14, %r14
	jne	LBB5_4
## BB#3:
	leaq	L_.str(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_ReportError
LBB5_4:
	cmpl	%r15d, %r13d
	jl	LBB5_6
## BB#5:
	testl	%r15d, %r15d
	jns	LBB5_7
LBB5_6:
	leaq	L_.str1(%rip), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
LBB5_7:
	movq	%r12, (%r14)
	testl	%r15d, %r15d
	je	LBB5_22
## BB#8:                                ## %.preheader.preheader
	movl	$1, %eax
	movl	$1, %ecx
	cmovgl	%r15d, %ecx
	movl	%ecx, %esi
	andl	$3, %esi
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	LBB5_11
## BB#9:                                ## %.preheader.preheader
	testl	%esi, %esi
	jne	LBB5_11
## BB#10:
	xorl	%esi, %esi
	jmp	LBB5_16
LBB5_22:
	movq	%rbx, 8(%r14)
	incl	%r13d
	movl	%r13d, 16(%r14)
	jmp	LBB5_21
LBB5_11:                                ## %unr.cmp10
	movl	$1, %eax
	cmpl	$1, %esi
	je	LBB5_15
## BB#12:                               ## %unr.cmp
	movl	$1, %eax
	cmpl	$2, %esi
	je	LBB5_14
## BB#13:                               ## %.preheader.unr
	movq	8(%rbx), %rbx
	movl	$2, %eax
LBB5_14:                                ## %.preheader.unr6
	movq	8(%rbx), %rbx
	incl	%eax
LBB5_15:                                ## %.preheader.unr7
	movq	8(%rbx), %rdx
	movq	%rbx, %rsi
	addq	$8, %rsi
	incl	%eax
	movq	%rdx, %rbx
LBB5_16:                                ## %.preheader.preheader.split
	cmpl	$4, %ecx
	jb	LBB5_20
## BB#17:                               ## %.preheader.preheader.split.split
	decl	%eax
	.align	4, 0x90
LBB5_18:                                ## %.preheader
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rcx
	movq	8(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	8(%rsi), %rbx
	addl	$4, %eax
	cmpl	%r15d, %eax
	jl	LBB5_18
## BB#19:
	addq	$8, %rsi
	movq	%rbx, %rdx
LBB5_20:
	movq	%rdx, 8(%r14)
	movq	%r14, (%rsi)
LBB5_21:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_RemoveFirstFromList
	.align	4, 0x90
_RemoveFirstFromList:                   ## @RemoveFirstFromList
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp34:
	.cfi_def_cfa_offset 16
Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp36:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp37:
	.cfi_offset %rbx, -48
Ltmp38:
	.cfi_offset %r12, -40
Ltmp39:
	.cfi_offset %r14, -32
Ltmp40:
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
	leaq	L_.str2(%rip), %rdi
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
Ltmp41:
	.cfi_def_cfa_offset 16
Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp43:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp44:
	.cfi_offset %rbx, -32
Ltmp45:
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
	leaq	L_.str3(%rip), %rdi
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
Ltmp46:
	.cfi_def_cfa_offset 16
Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp48:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp49:
	.cfi_offset %rbx, -40
Ltmp50:
	.cfi_offset %r14, -32
Ltmp51:
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
	leaq	L_.str4(%rip), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	_ReportError
	xorl	%r14d, %r14d
	jmp	LBB8_20
LBB8_4:
	leaq	L_.str5(%rip), %rdi
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
Ltmp52:
	.cfi_def_cfa_offset 16
Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp54:
	.cfi_def_cfa_register %rbp
	testq	%rdi, %rdi
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Could not allocate space for new list element, no element added"

L_.str1:                                ## @.str1
	.asciz	"The specified position to add the new element is outside the bounds of the list, no element added"

L_.str2:                                ## @.str2
	.asciz	"Attempting to finalize first element in NULL list, nothing will happen"

L_.str3:                                ## @.str3
	.asciz	"Attempting to finalize last element in NULL list, nothing will happen"

L_.str4:                                ## @.str4
	.asciz	"Attempting to finalize element in NULL list, nothing will happen"

L_.str5:                                ## @.str5
	.asciz	"The specified position to remove the element is outside the bounds of the list, no element removed"


.subsections_via_symbols
