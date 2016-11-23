	.file	"Error.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	ReportError
	.type	ReportError, @function
ReportError:
.LFB15:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$16, %edi
	movl	%esi, %ebp
	movl	%edx, %ebx
	call	malloc
	movq	Errors(%rip), %rdi
	movq	%r12, (%rax)
	movq	%rax, %rsi
	movl	%ebp, 8(%rax)
	movl	%ebx, 12(%rax)
	call	PrependToList
	popq	%rbx
	.cfi_def_cfa_offset 24
	movq	%rax, Errors(%rip)
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15:
	.size	ReportError, .-ReportError
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.local	Errors
	.comm	Errors,8,8
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
