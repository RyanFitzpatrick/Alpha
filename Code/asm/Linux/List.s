	.file	"List.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	CreateList
	.type	CreateList, @function
CreateList:
.LFB15:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	movl	$24, %esi
	call	realloc
	movq	%rbx, (%rax)
	movl	$1, 16(%rax)
	movq	$0, 8(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15:
	.size	CreateList, .-CreateList
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	FinalizeList
	.type	FinalizeList, @function
FinalizeList:
.LFB16:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L14
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	testq	%rsi, %rsi
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %r13
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	16(%rdi), %r14d
	movl	$Nop, %eax
	cmove	%rax, %r13
	movq	%rdi, %rbx
	testl	%r14d, %r14d
	jle	.L3
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L7:
	movq	(%rbx), %rdi
	xorl	%eax, %eax
	addl	$1, %ebp
	call	*%r13
	movq	8(%rbx), %r12
	movq	%rbx, %rdi
	call	free
	cmpl	%ebp, %r14d
	movq	%r12, %rbx
	jne	.L7
.L3:
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.L14:
	rep ret
	.cfi_endproc
.LFE16:
	.size	FinalizeList, .-FinalizeList
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Could not allocate space for new list element, no element added"
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	PrependToList
	.type	PrependToList, @function
PrependToList:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movl	$24, %edi
	movq	%rsi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	malloc
	testq	%rax, %rax
	je	.L22
	testq	%rbx, %rbx
	movq	%rbp, (%rax)
	movq	%rbx, 8(%rax)
	je	.L20
	movl	16(%rbx), %edx
	addl	$1, %edx
.L19:
	movl	%edx, 16(%rax)
.L18:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	.cfi_restore_state
	movl	$1, %edx
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L22:
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$.LC2, %edi
	call	ReportError
	movq	%rbx, %rax
	jmp	.L18
	.cfi_endproc
.LFE17:
	.size	PrependToList, .-PrependToList
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	AppendToList
	.type	AppendToList, @function
AppendToList:
.LFB18:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$24, %edi
	movq	%rsi, %r12
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	call	malloc
	testq	%rbp, %rbp
	je	.L24
	testq	%rax, %rax
	movl	16(%rbp), %ebx
	je	.L30
.L25:
	testl	%ebx, %ebx
	movq	%r12, (%rax)
	je	.L26
	cmpl	$1, %ebx
	movq	%rbp, %rcx
	jle	.L27
	movl	$1, %edx
	.p2align 4,,10
	.p2align 3
.L28:
	addl	$1, %edx
	movq	8(%rcx), %rcx
	cmpl	%ebx, %edx
	jne	.L28
.L27:
	movq	%rax, 8(%rcx)
	movq	$0, 8(%rax)
	addl	$1, 16(%rbp)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L41
	movq	%r12, (%rax)
.L26:
	movq	%rbp, 8(%rax)
	movl	$1, 16(%rax)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L41:
	.cfi_restore_state
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L30:
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$.LC2, %edi
	movq	%rax, 8(%rsp)
	call	ReportError
	movq	8(%rsp), %rax
	jmp	.L25
	.cfi_endproc
.LFE18:
	.size	AppendToList, .-AppendToList
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"The specified position to add the new element is outside the bounds of the list, no element added"
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	AddToList
	.type	AddToList, @function
AddToList:
.LFB19:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	movl	$24, %edi
	movl	%edx, %ebp
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	call	malloc
	testq	%rbx, %rbx
	je	.L52
	movl	16(%rbx), %r12d
.L43:
	testq	%rax, %rax
	je	.L57
.L44:
	cmpl	%r12d, %ebp
	jg	.L53
	movl	%ebp, %edx
	shrl	$31, %edx
	testb	%dl, %dl
	jne	.L53
.L45:
	testl	%ebp, %ebp
	movq	%r13, (%rax)
	je	.L47
	cmpl	$1, %ebp
	movl	$1, %edx
	jle	.L49
	.p2align 4,,10
	.p2align 3
.L54:
	addl	$1, %edx
	movq	8(%rbx), %rbx
	cmpl	%edx, %ebp
	jne	.L54
.L49:
	movq	8(%rbx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 8(%rbx)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	.cfi_restore_state
	addl	$1, %r12d
	movq	%rbx, 8(%rax)
	movl	%r12d, 16(%rax)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	.cfi_restore_state
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$.LC5, %edi
	movq	%rax, 8(%rsp)
	call	ReportError
	movq	8(%rsp), %rax
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L52:
	xorl	%r12d, %r12d
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L57:
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$.LC2, %edi
	movq	%rax, 8(%rsp)
	call	ReportError
	movq	8(%rsp), %rax
	jmp	.L44
	.cfi_endproc
.LFE19:
	.size	AddToList, .-AddToList
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"Attempting to finalize first element in NULL list, nothing will happen"
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	RemoveFirstFromList
	.type	RemoveFirstFromList, @function
RemoveFirstFromList:
.LFB20:
	.cfi_startproc
	testq	%rdi, %rdi
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	je	.L64
	movq	8(%rdi), %rbp
	testq	%rsi, %rsi
	movq	%rdi, %rbx
	movl	$Nop, %eax
	movl	16(%rdi), %r12d
	movq	(%rdi), %rdi
	cmove	%rax, %rsi
	xorl	%eax, %eax
	call	*%rsi
	movq	%rbx, %rdi
	call	free
	testq	%rbp, %rbp
	je	.L62
	subl	$1, %r12d
	movq	%rbp, %rax
	movl	%r12d, 16(%rbp)
.L60:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L64:
	movl	$1, %edx
	movl	$1, %esi
	movl	$.LC7, %edi
	call	ReportError
	xorl	%eax, %eax
	jmp	.L60
	.cfi_endproc
.LFE20:
	.size	RemoveFirstFromList, .-RemoveFirstFromList
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"Attempting to finalize last element in NULL list, nothing will happen"
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	RemoveLastFromList
	.type	RemoveLastFromList, @function
RemoveLastFromList:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rdi, %rdi
	je	.L66
	movl	16(%rdi), %ecx
	testq	%rsi, %rsi
	movl	$Nop, %eax
	cmove	%rax, %rsi
	movq	%rdi, %rbp
	cmpl	$1, %ecx
	je	.L68
	cmpl	$2, %ecx
	movq	%rdi, %rbx
	movl	$2, %edx
	jle	.L70
	.p2align 4,,10
	.p2align 3
.L73:
	addl	$1, %edx
	movq	8(%rbx), %rbx
	cmpl	%edx, %ecx
	jne	.L73
.L70:
	movq	8(%rbx), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	*%rsi
	movq	8(%rbx), %rdi
	call	free
	movq	$0, 8(%rbx)
	subl	$1, 16(%rbp)
	movq	%rbp, %rax
.L75:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	.cfi_restore_state
	movl	$1, %edx
	movl	$1, %esi
	movl	$.LC9, %edi
	call	ReportError
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L68:
	.cfi_restore_state
	xorl	%eax, %eax
	movq	(%rdi), %rdi
	call	*%rsi
	movq	%rbp, %rdi
	call	free
	xorl	%eax, %eax
	jmp	.L75
	.cfi_endproc
.LFE21:
	.size	RemoveLastFromList, .-RemoveLastFromList
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"The specified position to remove the element is outside the bounds of the list, no element removed"
	.align 8
.LC12:
	.string	"Attempting to finalize element in NULL list, nothing will happen"
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	RemoveFromList
	.type	RemoveFromList, @function
RemoveFromList:
.LFB22:
	.cfi_startproc
	testq	%rdi, %rdi
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	je	.L78
	movl	16(%rdi), %ebp
	testq	%rdx, %rdx
	movl	$Nop, %eax
	cmove	%rax, %rdx
	movq	%rdi, %r12
	cmpl	%esi, %ebp
	jle	.L88
	movl	%esi, %eax
	shrl	$31, %eax
	testb	%al, %al
	jne	.L88
	testl	%esi, %esi
	je	.L83
	cmpl	$1, %ebp
	movq	%rdi, %rbx
	movl	$1, %ecx
	jle	.L85
	.p2align 4,,10
	.p2align 3
.L89:
	addl	$1, %ecx
	movq	8(%rbx), %rbx
	cmpl	%ecx, %ebp
	jne	.L89
.L85:
	movq	8(%rbx), %rdi
	xorl	%eax, %eax
	movq	8(%rdi), %rbp
	call	*%rdx
	movq	8(%rbx), %rdi
	call	free
	movq	%rbp, 8(%rbx)
	subl	$1, 16(%r12)
	movq	%r12, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L83:
	.cfi_restore_state
	movq	8(%rdi), %rbx
	xorl	%eax, %eax
	movq	(%rdi), %rdi
	call	*%rdx
	movq	%r12, %rdi
	call	free
	testq	%rbx, %rbx
	je	.L93
	subl	$1, %ebp
	movq	%rbx, %rax
	movl	%ebp, 16(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L78:
	.cfi_restore_state
	movl	$1, %edx
	movl	$1, %esi
	movl	$.LC12, %edi
	call	ReportError
.L93:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L88:
	.cfi_restore_state
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$.LC11, %edi
	call	ReportError
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	RemoveFromList, .-RemoveFromList
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	GetListLength
	.type	GetListLength, @function
GetListLength:
.LFB23:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L96
	movl	16(%rdi), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L96:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	GetListLength, .-GetListLength
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely
.LCOLDB15:
	.text
.LHOTB15:
	.p2align 4,,15
	.globl	ListHasElements
	.type	ListHasElements, @function
ListHasElements:
.LFB24:
	.cfi_startproc
	testq	%rdi, %rdi
	setne	%al
	ret
	.cfi_endproc
.LFE24:
	.size	ListHasElements, .-ListHasElements
	.section	.text.unlikely
.LCOLDE15:
	.text
.LHOTE15:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
