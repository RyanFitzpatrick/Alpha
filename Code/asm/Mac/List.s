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
	movl	$16, %edi
	callq	_malloc
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
	pushq	%rbx
	pushq	%rax
Ltmp6:
	.cfi_offset %rbx, -40
Ltmp7:
	.cfi_offset %r14, -32
Ltmp8:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB1_4
## BB#1:                                ## %.lr.ph
	testq	%r14, %r14
	cmoveq	_Nop@GOTPCREL(%rip), %r14
	.align	4, 0x90
LBB1_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	xorl	%eax, %eax
	callq	*%r14
	movq	8(%rbx), %r15
	movq	%rbx, %rdi
	callq	_free
	testq	%r15, %r15
	movq	%r15, %rbx
	jne	LBB1_2
## BB#3:                                ## %.loopexit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_4:
	leaq	L_.str(%rip), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_ReportError            ## TAILCALL
	.cfi_endproc

	.globl	_PrependToList
	.align	4, 0x90
_PrependToList:                         ## @PrependToList
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
	pushq	%r14
	pushq	%rbx
Ltmp12:
	.cfi_offset %rbx, -32
Ltmp13:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB2_1
## BB#2:
	cmpq	$0, (%rbx)
	je	LBB2_6
## BB#3:
	movl	$16, %edi
	callq	_malloc
	testq	%rax, %rax
	je	LBB2_4
## BB#5:
	movq	%r14, (%rax)
	movq	%rbx, 8(%rax)
	movq	%rax, %rbx
	jmp	LBB2_7
LBB2_1:
	leaq	L_.str1(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
	jmp	LBB2_7
LBB2_6:
	movq	%r14, (%rbx)
	movq	$0, 8(%rbx)
	jmp	LBB2_7
LBB2_4:
	leaq	L_.str2(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_ReportError
LBB2_7:
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
	testq	%rbx, %rbx
	je	LBB3_1
## BB#2:
	cmpq	$0, (%rbx)
	je	LBB3_7
## BB#3:
	movl	$16, %edi
	callq	_malloc
	testq	%rax, %rax
	je	LBB3_9
## BB#4:
	movq	%rbx, %rdx
	.align	4, 0x90
LBB3_5:                                 ## %.preheader
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	jne	LBB3_5
## BB#6:
	movq	%r14, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, 8(%rcx)
	jmp	LBB3_8
LBB3_1:
	leaq	L_.str1(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
	jmp	LBB3_8
LBB3_7:
	movq	%r14, (%rbx)
	movq	$0, 8(%rbx)
	jmp	LBB3_8
LBB3_9:
	leaq	L_.str2(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_ReportError
LBB3_8:
	movq	%rbx, %rax
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
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	testq	%r14, %r14
	je	LBB4_1
## BB#2:
	testl	%ebx, %ebx
	js	LBB4_3
## BB#4:
	cmpq	$0, (%r14)
	je	LBB4_15
## BB#5:
	movl	$16, %edi
	callq	_malloc
	testq	%rax, %rax
	je	LBB4_6
## BB#7:
	movq	%r15, (%rax)
	testl	%ebx, %ebx
	je	LBB4_14
## BB#8:                                ## %.preheader
	cmpl	$2, %ebx
	jl	LBB4_9
## BB#10:
	movl	$1, %edx
	movq	%r14, %rcx
	.align	4, 0x90
LBB4_11:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	LBB4_3
## BB#12:                               ##   in Loop: Header=BB4_11 Depth=1
	movq	8(%rcx), %rcx
	incl	%edx
	cmpl	%ebx, %edx
	jl	LBB4_11
	jmp	LBB4_13
LBB4_1:
	leaq	L_.str1(%rip), %rdi
	xorl	%r14d, %r14d
	jmp	LBB4_18
LBB4_3:
	leaq	L_.str3(%rip), %rdi
	jmp	LBB4_18
LBB4_15:
	testl	%ebx, %ebx
	je	LBB4_16
## BB#17:
	leaq	L_.str4(%rip), %rdi
LBB4_18:
	xorl	%esi, %esi
	movl	$1, %edx
LBB4_19:
	callq	_ReportError
LBB4_20:
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_6:
	leaq	L_.str2(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	LBB4_19
LBB4_14:
	movq	%r14, 8(%rax)
	movq	%rax, %r14
	jmp	LBB4_20
LBB4_16:
	movq	%r15, (%r14)
	movq	$0, 8(%r14)
	jmp	LBB4_20
LBB4_9:
	movq	%r14, %rcx
LBB4_13:                                ## %._crit_edge
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 8(%rcx)
	movq	%rcx, %r14
	jmp	LBB4_20
	.cfi_endproc

	.globl	_RemoveFirstFromList
	.align	4, 0x90
_RemoveFirstFromList:                   ## @RemoveFirstFromList
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
	pushq	%r14
	pushq	%rbx
Ltmp28:
	.cfi_offset %rbx, -32
Ltmp29:
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB5_1
## BB#2:
	testq	%rsi, %rsi
	movq	(%rbx), %rdi
	movq	8(%rbx), %r14
	cmoveq	_Nop@GOTPCREL(%rip), %rsi
	xorl	%eax, %eax
	callq	*%rsi
	testq	%r14, %r14
	je	LBB5_4
## BB#3:
	movq	%rbx, %rdi
	callq	_free
	jmp	LBB5_5
LBB5_1:
	leaq	L_.str5(%rip), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	_ReportError
	xorl	%r14d, %r14d
	jmp	LBB5_5
LBB5_4:
	movq	$0, (%rbx)
	movq	%rbx, %r14
LBB5_5:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_RemoveLastFromList
	.align	4, 0x90
_RemoveLastFromList:                    ## @RemoveLastFromList
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
	pushq	%r14
	pushq	%rbx
Ltmp33:
	.cfi_offset %rbx, -32
Ltmp34:
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	testq	%r14, %r14
	je	LBB6_1
## BB#2:
	testq	%rsi, %rsi
	cmoveq	_Nop@GOTPCREL(%rip), %rsi
	movq	8(%r14), %rax
	testq	%rax, %rax
	je	LBB6_7
## BB#3:
	movq	%r14, %rcx
	.align	4, 0x90
LBB6_4:                                 ## %.preheader
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbx
	movq	%rax, %rcx
	movq	8(%rcx), %rax
	testq	%rax, %rax
	jne	LBB6_4
## BB#5:
	movq	(%rcx), %rdi
	xorl	%eax, %eax
	callq	*%rsi
	movq	8(%rbx), %rdi
	callq	_free
	movq	$0, 8(%rbx)
	jmp	LBB6_6
LBB6_1:
	leaq	L_.str6(%rip), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	_ReportError
	xorl	%r14d, %r14d
	jmp	LBB6_6
LBB6_7:
	movq	(%r14), %rdi
	xorl	%eax, %eax
	callq	*%rsi
	movq	$0, (%r14)
	xorl	%r14d, %r14d
LBB6_6:
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
Ltmp35:
	.cfi_def_cfa_offset 16
Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp37:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp38:
	.cfi_offset %rbx, -32
Ltmp39:
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB7_1
## BB#2:
	testl	%esi, %esi
	js	LBB7_3
## BB#4:
	jne	LBB7_8
## BB#5:
	testq	%rdx, %rdx
	movq	(%rbx), %rdi
	cmoveq	_Nop@GOTPCREL(%rip), %rdx
	xorl	%eax, %eax
	callq	*%rdx
	movq	8(%rbx), %r14
	testq	%r14, %r14
	je	LBB7_7
## BB#6:
	movq	%rbx, %rdi
	callq	_free
	movq	%r14, %rbx
	jmp	LBB7_7
LBB7_1:
	leaq	L_.str7(%rip), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	_ReportError
	xorl	%ebx, %ebx
	jmp	LBB7_7
LBB7_3:
	leaq	L_.str8(%rip), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
LBB7_7:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB7_8:                                 ## %.preheader
	ud2
	.cfi_endproc

	.globl	_GetListLength
	.align	4, 0x90
_GetListLength:                         ## @GetListLength
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp40:
	.cfi_def_cfa_offset 16
Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp42:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	LBB8_3
## BB#1:
	xorl	%eax, %eax
	cmpq	$0, (%rdi)
	je	LBB8_3
	.align	4, 0x90
LBB8_2:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rdi), %rdi
	incl	%eax
	testq	%rdi, %rdi
	jne	LBB8_2
LBB8_3:                                 ## %.loopexit
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_ListHasElements
	.align	4, 0x90
_ListHasElements:                       ## @ListHasElements
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp43:
	.cfi_def_cfa_offset 16
Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp45:
	.cfi_def_cfa_register %rbp
	testq	%rdi, %rdi
	je	LBB9_2
## BB#1:
	movb	$1, %al
	cmpq	$0, (%rdi)
	jne	LBB9_3
LBB9_2:
	xorl	%eax, %eax
LBB9_3:
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
Ltmp46:
	.cfi_def_cfa_offset 16
Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp48:
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
Ltmp49:
	.cfi_def_cfa_offset 16
Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp51:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp52:
	.cfi_offset %rbx, -24
	testq	%rdi, %rdi
	je	LBB11_1
## BB#2:
	movq	8(%rdi), %rbx
	jmp	LBB11_3
LBB11_1:
	leaq	L_.str10(%rip), %rdi
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
Ltmp53:
	.cfi_def_cfa_offset 16
Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp55:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp56:
	.cfi_offset %rbx, -24
	testq	%rdi, %rdi
	je	LBB12_1
## BB#2:
	movq	(%rdi), %rbx
	jmp	LBB12_3
LBB12_1:
	leaq	L_.str11(%rip), %rdi
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
	.asciz	"The data in the Lis head is NULL meaning its size is zero, however the specified add position is not zero, nothing will happen"

L_.str5:                                ## @.str5
	.asciz	"Attempting to finalize first element in NULL list, nothing will happen"

L_.str6:                                ## @.str6
	.asciz	"Attempting to finalize last element in NULL list, nothing will happen"

L_.str7:                                ## @.str7
	.asciz	"Attempting to finalize element in NULL list, nothing will happen"

L_.str8:                                ## @.str8
	.asciz	"The specified position to remove the element is outside the bounds of the list, no element removed"

L_.str10:                               ## @.str10
	.asciz	"Attempting to get next element from NULL List Pointer, NULL returned"

L_.str11:                               ## @.str11
	.asciz	"Attempting to get data from NULL List Pointer, NULL returned"


.subsections_via_symbols
