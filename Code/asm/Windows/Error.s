	.file	"Error.c"
	.section	.text.unlikely,"x"
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	ReportError
	.def	ReportError;	.scl	2;	.type	32;	.endef
	.seh_proc	ReportError
ReportError:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movl	$16, %ecx
	movl	%edx, %esi
	movl	%r8d, %ebx
	call	malloc
	movq	Errors(%rip), %rcx
	movq	%rdi, (%rax)
	movq	%rax, %rdx
	movl	%esi, 8(%rax)
	movl	%ebx, 12(%rax)
	call	PrependToList
	movq	%rax, Errors(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE0:
	.text
.LHOTE0:
.lcomm Errors,8,8
	.ident	"GCC: (GNU) 5.4.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	PrependToList;	.scl	2;	.type	32;	.endef
