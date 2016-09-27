	.file	"Test.c"
	.section	.rodata
.LC0:
	.string	"START OF TESTS"
.LC1:
	.string	"END OF TESTS"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$80, %edi
	call	malloc
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2
.L3:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$4, %edi
	call	malloc
	movq	%rax, (%rbx)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	addl	$1, -36(%rbp)
.L2:
	cmpl	$9, -36(%rbp)
	jle	.L3
	movl	$.LC0, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CreateList
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	jmp	.L4
.L5:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PrependToList
	movq	%rax, -32(%rbp)
	addl	$1, -36(%rbp)
.L4:
	cmpl	$9, -36(%rbp)
	jle	.L5
	movq	-32(%rbp), %rax
	movl	$free, %esi
	movq	%rax, %rdi
	call	FinalizeList
	movl	$.LC1, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
