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

	.globl	_AddListNode
	.align	4, 0x90
_AddListNode:                           ## @AddListNode
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

	.globl	_DestroyListNode
	.align	4, 0x90
_DestroyListNode:                       ## @DestroyListNode
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
	pushq	%rbx
	pushq	%rax
Ltmp17:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB3_1
## BB#2:
	testq	%rsi, %rsi
	movq	(%rbx), %rdi
	cmoveq	_Nop@GOTPCREL(%rip), %rsi
	xorl	%eax, %eax
	callq	*%rsi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_free                   ## TAILCALL
LBB3_1:
	leaq	L_.str3(%rip), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_ReportError            ## TAILCALL
	.cfi_endproc

	.globl	_GetListNode
	.align	4, 0x90
_GetListNode:                           ## @GetListNode
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
	pushq	%rbx
	pushq	%rax
Ltmp21:
	.cfi_offset %rbx, -24
	testq	%rdi, %rdi
	je	LBB4_1
## BB#3:
	testl	%esi, %esi
	js	LBB4_4
## BB#5:
	xorl	%eax, %eax
	cmpq	$0, (%rdi)
	je	LBB4_8
## BB#6:
	movq	%rdi, %rcx
	.align	4, 0x90
LBB4_7:                                 ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rcx), %rcx
	incl	%eax
	testq	%rcx, %rcx
	jne	LBB4_7
LBB4_8:                                 ## %GetListLength.exit
	cmpl	%esi, %eax
	jle	LBB4_23
## BB#9:                                ## %.preheader
	testl	%esi, %esi
	jle	LBB4_10
## BB#11:                               ## %.lr.ph.preheader
	movl	%esi, %ecx
	andl	$3, %ecx
	xorl	%ebx, %ebx
	testl	%esi, %esi
	je	LBB4_14
## BB#12:                               ## %.lr.ph.preheader
	testl	%ecx, %ecx
	jne	LBB4_14
## BB#13:
	xorl	%eax, %eax
	jmp	LBB4_19
LBB4_1:
	leaq	L_.str4(%rip), %rdi
	jmp	LBB4_2
LBB4_4:
	leaq	L_.str5(%rip), %rdi
	jmp	LBB4_2
LBB4_23:
	leaq	L_.str6(%rip), %rdi
LBB4_2:                                 ## %.loopexit
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
LBB4_22:                                ## %.loopexit
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB4_10:
	movq	%rdi, %rbx
	jmp	LBB4_22
LBB4_14:                                ## %unr.cmp12
	xorl	%eax, %eax
	cmpl	$1, %ecx
	je	LBB4_18
## BB#15:                               ## %unr.cmp
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	LBB4_17
## BB#16:                               ## %.lr.ph.unr
	movq	8(%rdi), %rdi
	movl	$1, %eax
LBB4_17:                                ## %.lr.ph.unr6
	movq	8(%rdi), %rdi
	incl	%eax
LBB4_18:                                ## %.lr.ph.unr8
	movq	8(%rdi), %rbx
	incl	%eax
	movq	%rbx, %rdi
LBB4_19:                                ## %.lr.ph.preheader.split
	cmpl	$4, %esi
	jb	LBB4_22
## BB#20:                               ## %.lr.ph.preheader.split.split
	subl	%eax, %esi
	movq	%rdi, %rbx
	.align	4, 0x90
LBB4_21:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rbx
	addl	$-4, %esi
	jne	LBB4_21
	jmp	LBB4_22
	.cfi_endproc

	.globl	_GetListLength
	.align	4, 0x90
_GetListLength:                         ## @GetListLength
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp22:
	.cfi_def_cfa_offset 16
Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp24:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	LBB5_3
## BB#1:
	xorl	%eax, %eax
	cmpq	$0, (%rdi)
	je	LBB5_3
	.align	4, 0x90
LBB5_2:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rdi), %rdi
	incl	%eax
	testq	%rdi, %rdi
	jne	LBB5_2
LBB5_3:                                 ## %.loopexit
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_ListHasElements
	.align	4, 0x90
_ListHasElements:                       ## @ListHasElements
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
	testq	%rdi, %rdi
	je	LBB6_2
## BB#1:
	movb	$1, %al
	cmpq	$0, (%rdi)
	jne	LBB6_3
LBB6_2:
	xorl	%eax, %eax
LBB6_3:
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
Ltmp28:
	.cfi_def_cfa_offset 16
Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp30:
	.cfi_def_cfa_register %rbp
	testq	%rdi, %rdi
	je	LBB7_2
## BB#1:
	movb	$1, %al
	cmpq	$0, 8(%rdi)
	jne	LBB7_3
LBB7_2:
	xorl	%eax, %eax
LBB7_3:
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
Ltmp31:
	.cfi_def_cfa_offset 16
Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp33:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp34:
	.cfi_offset %rbx, -24
	testq	%rdi, %rdi
	je	LBB8_1
## BB#2:
	movq	8(%rdi), %rbx
	jmp	LBB8_3
LBB8_1:
	leaq	L_.str7(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
LBB8_3:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_SetListNext
	.align	4, 0x90
_SetListNext:                           ## @SetListNext
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
	pushq	%rbx
	pushq	%rax
Ltmp38:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB9_1
## BB#2:
	movq	%rsi, 8(%rbx)
	jmp	LBB9_3
LBB9_1:
	leaq	L_.str8(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
LBB9_3:
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
Ltmp39:
	.cfi_def_cfa_offset 16
Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp41:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp42:
	.cfi_offset %rbx, -24
	testq	%rdi, %rdi
	je	LBB10_1
## BB#2:
	movq	(%rdi), %rbx
	jmp	LBB10_3
LBB10_1:
	leaq	L_.str9(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ReportError
LBB10_3:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_SetListData
	.align	4, 0x90
_SetListData:                           ## @SetListData
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
	pushq	%rbx
	pushq	%rax
Ltmp46:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB11_1
## BB#2:
	movq	%rsi, (%rbx)
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

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Attempting to finalize NULL List, nothing will happen"

L_.str1:                                ## @.str1
	.asciz	"Attempting to add to NULL List, please use CreateList() before adding data to a list"

L_.str2:                                ## @.str2
	.asciz	"Could not allocate space for new list element, no element added"

L_.str3:                                ## @.str3
	.asciz	"Attempting to finalize NULL List node, nothing will happen"

L_.str4:                                ## @.str4
	.asciz	"Attempting to get node from NULL List"

L_.str5:                                ## @.str5
	.asciz	"Position cannot be less than zero when getting List node, position must be greater than zero and less than the size of the List"

L_.str6:                                ## @.str6
	.asciz	"Position cannot be greater than or equal to List length when getting List node, position must be greater than zero and less than the size of the List"

L_.str7:                                ## @.str7
	.asciz	"Attempting to get next element from NULL List Pointer, NULL returned"

L_.str8:                                ## @.str8
	.asciz	"Attempting to set next element of a NULL List Pointer, NULL returned"

L_.str9:                                ## @.str9
	.asciz	"Attempting to get data from NULL List Pointer, NULL returned"

L_.str10:                               ## @.str10
	.asciz	"Attempting to set data of a NULL List Pointer, NULL returned"


.subsections_via_symbols
