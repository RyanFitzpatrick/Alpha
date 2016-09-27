	.file	"Test.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "START OF TESTS\0"
.LC1:
	.ascii "END OF TESTS\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	movq	$0, -72(%rbp)
	movq	$0, -88(%rbp)
	movl	$80, %ecx
	call	malloc
	movq	%rax, -88(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L2
.L3:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$4, %ecx
	call	malloc
	movq	%rax, (%rbx)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %edx
	movl	%edx, (%rax)
	addl	$1, -76(%rbp)
.L2:
	cmpl	$9, -76(%rbp)
	jle	.L3
	leaq	.LC0(%rip), %rcx
	call	puts
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	CreateList
	movq	%rax, -72(%rbp)
	movl	$1, -76(%rbp)
	jmp	.L4
.L5:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	PrependToList
	movq	%rax, -72(%rbp)
	addl	$1, -76(%rbp)
.L4:
	cmpl	$9, -76(%rbp)
	jle	.L5
	movq	-72(%rbp), %rax
	movq	.refptr.free(%rip), %rdx
	movq	%rax, %rcx
	call	FinalizeList
	leaq	.LC1(%rip), %rcx
	call	puts
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movl	$0, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 5.4.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	CreateList;	.scl	2;	.type	32;	.endef
	.def	PrependToList;	.scl	2;	.type	32;	.endef
	.def	FinalizeList;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.free, "dr"
	.globl	.refptr.free
	.linkonce	discard
.refptr.free:
	.quad	free
