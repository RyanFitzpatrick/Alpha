	.file	"List.c"
	.text
	.p2align 4,,15
.globl CreateList
	.type	CreateList, @function
CreateList:
.LFB7:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE7:
	.size	CreateList, .-CreateList
	.p2align 4,,15
.globl GetListLength
	.type	GetListLength, @function
GetListLength:
.LFB15:
	.cfi_startproc
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L5
	movl	16(%rdi), %eax
.L5:
	rep
	ret
	.cfi_endproc
.LFE15:
	.size	GetListLength, .-GetListLength
	.p2align 4,,15
.globl ListHasElements
	.type	ListHasElements, @function
ListHasElements:
.LFB16:
	.cfi_startproc
	testq	%rdi, %rdi
	setne	%al
	ret
	.cfi_endproc
.LFE16:
	.size	ListHasElements, .-ListHasElements
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Attempting to finalize element in NULL list, nothing will happen"
	.align 8
.LC1:
	.string	"Attempting to finalize list element with NULL finalizing function, please specify a Finalize function for the data in the list. The list element will not be freed"
	.align 8
.LC2:
	.string	"The specified position to remove the element is outside the bounds of the list, no element removed"
	.text
	.p2align 4,,15
.globl RemoveFromList
	.type	RemoveFromList, @function
RemoveFromList:
.LFB14:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	je	.L11
	testq	%rdx, %rdx
	movl	16(%rdi), %r12d
	je	.L27
	testl	%esi, %esi
	js	.L23
	cmpl	%r12d, %esi
	.p2align 4,,3
	jge	.L23
	testl	%esi, %esi
	.p2align 4,,5
	je	.L17
	cmpl	$1, %r12d
	movq	%rdi, %rbp
	movl	$1, %eax
	jle	.L19
	.p2align 4,,10
	.p2align 3
.L24:
	addl	$1, %eax
	movq	8(%rbp), %rbp
	cmpl	%r12d, %eax
	jne	.L24
.L19:
	movq	8(%rbp), %rdi
	movq	8(%rdi), %r12
	call	*%rdx
	movq	8(%rbp), %rdi
	call	free
	subl	$1, 16(%rbx)
	movq	%r12, 8(%rbp)
.L14:
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	movq	8(%rdi), %rbp
	movq	(%rdi), %rdi
	call	*%rdx
	movq	%rbx, %rdi
	xorl	%ebx, %ebx
	call	free
	testq	%rbp, %rbp
	je	.L14
	movq	%rbp, %rbx
	subl	$1, %r12d
	movl	%r12d, 16(%rbp)
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$.LC2, %edi
	call	ReportError
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	movl	$1, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	call	ReportError
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L27:
	movl	$1, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	ReportError
	jmp	.L14
	.cfi_endproc
.LFE14:
	.size	RemoveFromList, .-RemoveFromList
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Attempting to finalize last element in NULL list, nothing will happen"
	.text
	.p2align 4,,15
.globl RemoveLastFromList
	.type	RemoveLastFromList, @function
RemoveLastFromList:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	movq	%rdi, %rbx
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rdi, %rdi
	je	.L29
	testq	%rsi, %rsi
	movl	16(%rdi), %edx
	je	.L41
	cmpl	$1, %edx
	je	.L33
	cmpl	$2, %edx
	movq	%rdi, %rbp
	movl	$2, %eax
	jle	.L35
	.p2align 4,,10
	.p2align 3
.L38:
	addl	$1, %eax
	movq	8(%rbp), %rbp
	cmpl	%edx, %eax
	jne	.L38
.L35:
	movq	8(%rbp), %rax
	movq	(%rax), %rdi
	call	*%rsi
	movq	8(%rbp), %rdi
	call	free
	subl	$1, 16(%rbx)
	movq	$0, 8(%rbp)
.L32:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	movl	$1, %edx
	movl	$1, %esi
	movl	$.LC3, %edi
	call	ReportError
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L41:
	movl	$1, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	ReportError
	jmp	.L32
.L33:
	movq	(%rdi), %rdi
	call	*%rsi
	movq	%rbx, %rdi
	xorl	%ebx, %ebx
	.p2align 4,,5
	call	free
	.p2align 4,,2
	jmp	.L32
	.cfi_endproc
.LFE13:
	.size	RemoveLastFromList, .-RemoveLastFromList
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"Attempting to finalize first element in NULL list, nothing will happen"
	.text
	.p2align 4,,15
.globl RemoveFirstFromList
	.type	RemoveFirstFromList, @function
RemoveFirstFromList:
.LFB12:
	.cfi_startproc
	movq	%rbx, -24(%rsp)
	movq	%rbp, -16(%rsp)
	movq	%rdi, %rbx
	.cfi_offset 6, -24
	.cfi_offset 3, -32
	movq	%r12, -8(%rsp)
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	testq	%rdi, %rdi
	je	.L48
	.cfi_offset 12, -16
	testq	%rsi, %rsi
	je	.L49
	movq	8(%rdi), %rbp
	movl	16(%rdi), %r12d
	movq	(%rdi), %rdi
	call	*%rsi
	movq	%rbx, %rdi
	xorl	%ebx, %ebx
	call	free
	testq	%rbp, %rbp
	je	.L44
	subl	$1, %r12d
	movq	%rbp, %rbx
	movl	%r12d, 16(%rbp)
.L44:
	movq	%rbx, %rax
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	movl	$1, %edx
	movb	$1, %sil
	movl	$.LC1, %edi
	call	ReportError
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L48:
	movl	$1, %edx
	movl	$1, %esi
	movl	$.LC4, %edi
	call	ReportError
	jmp	.L44
	.cfi_endproc
.LFE12:
	.size	RemoveFirstFromList, .-RemoveFirstFromList
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Attempting to free list elements with NULL finalizing function, please specify a Finalize function for the data in the list. The list will not be freed"
	.text
	.p2align 4,,15
.globl FinalizeList
	.type	FinalizeList, @function
FinalizeList:
.LFB8:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	movq	%rsi, %r14
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	xorl	%r13d, %r13d
	.cfi_offset 13, -24
	testq	%rdi, %rdi
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	je	.L52
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	movl	16(%rdi), %r13d
.L52:
	testq	%r14, %r14
	je	.L53
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	movq	%rdi, %rbx
	jle	.L57
	.p2align 4,,10
	.p2align 3
.L58:
	movq	(%rbx), %rdi
	addl	$1, %ebp
	call	*%r14
	movq	8(%rbx), %r12
	movq	%rbx, %rdi
	call	free
	cmpl	%r13d, %ebp
	movq	%r12, %rbx
	jl	.L58
.L57:
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L53:
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	movl	$1, %edx
	movl	$1, %esi
	movl	$.LC5, %edi
	jmp	ReportError
	.cfi_endproc
.LFE8:
	.size	FinalizeList, .-FinalizeList
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Could not allocate space for new list element, no element added"
	.align 8
.LC7:
	.string	"The specified position to add the new element is outside the bounds of the list, no element added"
	.text
	.p2align 4,,15
.globl AddToList
	.type	AddToList, @function
AddToList:
.LFB11:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	movl	%edx, %r12d
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	movq	%rsi, %rbp
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	.cfi_offset 3, -32
	movl	$24, %edi
	call	malloc
	xorl	%edx, %edx
	testq	%rbx, %rbx
	je	.L62
	movl	16(%rbx), %edx
.L62:
	testq	%rax, %rax
	je	.L75
	cmpl	%edx, %r12d
	jg	.L72
	cmpl	$0, %r12d
	.p2align 4,,3
	jl	.L72
	movq	%rbp, (%rax)
	.p2align 4,,5
	je	.L67
	cmpl	$1, %r12d
	movq	%rbx, %rcx
	movl	$1, %edx
	je	.L69
	.p2align 4,,10
	.p2align 3
.L73:
	addl	$1, %edx
	movq	8(%rcx), %rcx
	cmpl	%r12d, %edx
	jne	.L73
.L69:
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 8(%rcx)
.L64:
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L67:
	movq	%rbx, 8(%rax)
	addl	$1, %edx
	movq	%rax, %rbx
	movl	%edx, 16(%rax)
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L72:
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$.LC7, %edi
	call	ReportError
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L75:
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$.LC6, %edi
	call	ReportError
	jmp	.L64
	.cfi_endproc
.LFE11:
	.size	AddToList, .-AddToList
	.p2align 4,,15
.globl AppendToList
	.type	AppendToList, @function
AppendToList:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsi, %rbp
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	movq	%rdi, %rbx
	.cfi_offset 3, -24
	movl	$24, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	malloc
	xorl	%esi, %esi
	testq	%rbx, %rbx
	je	.L78
	movl	16(%rbx), %esi
.L78:
	testq	%rax, %rax
	je	.L88
	testl	%esi, %esi
	movq	%rbp, (%rax)
	je	.L81
	cmpl	$1, %esi
	movq	%rbx, %rcx
	movl	$1, %edx
	jle	.L83
	.p2align 4,,10
	.p2align 3
.L86:
	addl	$1, %edx
	movq	8(%rcx), %rcx
	cmpl	%esi, %edx
	jne	.L86
.L83:
	addl	$1, 16(%rbx)
	movq	%rax, 8(%rcx)
	movq	$0, 8(%rax)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L81:
	movq	%rbx, 8(%rax)
	movl	$1, 16(%rax)
	movq	%rax, %rbx
.L80:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L88:
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$.LC6, %edi
	call	ReportError
	jmp	.L80
	.cfi_endproc
.LFE10:
	.size	AppendToList, .-AppendToList
	.p2align 4,,15
.globl PrependToList
	.type	PrependToList, @function
PrependToList:
.LFB9:
	.cfi_startproc
	movq	%rbx, -16(%rsp)
	movq	%rbp, -8(%rsp)
	movq	%rdi, %rbx
	.cfi_offset 6, -16
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$24, %edi
	movq	%rsi, %rbp
	call	malloc
	testq	%rax, %rax
	je	.L95
	testq	%rbx, %rbx
	movq	%rbp, (%rax)
	movq	%rbx, 8(%rax)
	movl	$1, %edx
	je	.L93
	movl	16(%rbx), %edx
	addl	$1, %edx
.L93:
	movl	%edx, 16(%rax)
	movq	%rax, %rbx
.L91:
	movq	%rbx, %rax
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L95:
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$.LC6, %edi
	call	ReportError
	jmp	.L91
	.cfi_endproc
.LFE9:
	.size	PrependToList, .-PrependToList
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
