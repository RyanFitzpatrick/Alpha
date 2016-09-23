	.file	"Error.c"
	.text
	.p2align 4,,15
.globl ReportError
	.type	ReportError, @function
ReportError:
.LFB7:
	.cfi_startproc
	movq	%rbx, -24(%rsp)
	movq	%rbp, -16(%rsp)
	movq	%rdi, %rbx
	.cfi_offset 6, -24
	.cfi_offset 3, -32
	movq	%r12, -8(%rsp)
	movl	$16, %edi
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%esi, %ebp
	movl	%edx, %r12d
	.cfi_offset 12, -16
	call	malloc
	movq	Errors(%rip), %rdi
	movq	%rbx, (%rax)
	movq	%rax, %rsi
	movl	%ebp, 8(%rax)
	movl	%r12d, 12(%rax)
	call	PrependToList
	movq	(%rsp), %rbx
	movq	%rax, Errors(%rip)
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.cfi_endproc
.LFE7:
	.size	ReportError, .-ReportError
	.local	Errors
	.comm	Errors,8,8
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
