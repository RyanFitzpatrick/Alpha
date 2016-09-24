	.file	"List.c"
	.section	.text.unlikely,"x"
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	CreateList
	.def	CreateList;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateList
CreateList:
	.seh_endprologue
	xorl	%eax, %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely,"x"
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	FinalizeList
	.def	FinalizeList;	.scl	2;	.type	32;	.endef
	.seh_proc	FinalizeList
FinalizeList:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	je	.L2
	movl	16(%rcx), %r12d
	leaq	Nop(%rip), %rax
	testq	%rdx, %rdx
	cmove	%rax, %rbp
	testl	%r12d, %r12d
	jle	.L2
	xorl	%esi, %esi
	.p2align 4,,10
.L6:
	movq	(%rbx), %rcx
	addl	$1, %esi
	call	*%rbp
	movq	8(%rbx), %rdi
	movq	%rbx, %rcx
	call	free
	cmpl	%esi, %r12d
	movq	%rdi, %rbx
	jne	.L6
.L2:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE1:
	.text
.LHOTE1:
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "Could not allocate space for new list element, no element added\0"
	.section	.text.unlikely,"x"
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	PrependToList
	.def	PrependToList;	.scl	2;	.type	32;	.endef
	.seh_proc	PrependToList
PrependToList:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movl	$24, %ecx
	movq	%rdx, %rsi
	call	malloc
	testq	%rax, %rax
	je	.L17
	testq	%rbx, %rbx
	movq	%rsi, (%rax)
	movq	%rbx, 8(%rax)
	je	.L16
	movl	16(%rbx), %edx
	addl	$1, %edx
.L15:
	movl	%edx, 16(%rax)
.L14:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L16:
	movl	$1, %edx
	jmp	.L15
	.p2align 4,,10
.L17:
	leaq	.LC2(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	ReportError
	movq	%rbx, %rax
	jmp	.L14
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely,"x"
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	AppendToList
	.def	AppendToList;	.scl	2;	.type	32;	.endef
	.seh_proc	AppendToList
AppendToList:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movl	$24, %ecx
	movq	%rdx, %rsi
	call	malloc
	testq	%rbx, %rbx
	je	.L19
	testq	%rax, %rax
	movl	16(%rbx), %r8d
	je	.L25
	testl	%r8d, %r8d
	movq	%rsi, (%rax)
	je	.L22
	cmpl	$1, %r8d
	movq	%rbx, %rcx
	jle	.L23
	movl	$1, %edx
	.p2align 4,,10
.L24:
	addl	$1, %edx
	movq	8(%rcx), %rcx
	cmpl	%edx, %r8d
	jne	.L24
.L23:
	addl	$1, %r8d
	movq	%rax, 8(%rcx)
	movq	$0, 8(%rax)
	movl	%r8d, 16(%rbx)
	movq	%rbx, %rax
.L35:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L19:
	testq	%rax, %rax
	je	.L25
	movq	%rsi, (%rax)
.L22:
	movq	%rbx, 8(%rax)
	movl	$1, 16(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L25:
	leaq	.LC2(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	ReportError
	movq	%rbx, %rax
	jmp	.L35
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE4:
	.text
.LHOTE4:
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "The specified position to add the new element is outside the bounds of the list, no element added\0"
	.section	.text.unlikely,"x"
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	AddToList
	.def	AddToList;	.scl	2;	.type	32;	.endef
	.seh_proc	AddToList
AddToList:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rsi
	movl	$24, %ecx
	movq	%rdx, %rdi
	movl	%r8d, %ebx
	call	malloc
	testq	%rsi, %rsi
	je	.L47
	movl	16(%rsi), %ecx
.L38:
	testq	%rax, %rax
	je	.L51
	cmpl	%ecx, %ebx
	jg	.L48
	movl	%ebx, %edx
	shrl	$31, %edx
	testb	%dl, %dl
	jne	.L48
	testl	%ebx, %ebx
	movq	%rdi, (%rax)
	je	.L43
	cmpl	$1, %ebx
	movq	%rsi, %rcx
	movl	$1, %edx
	je	.L45
	.p2align 4,,10
.L49:
	addl	$1, %edx
	movq	8(%rcx), %rcx
	cmpl	%edx, %ebx
	jne	.L49
.L45:
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 8(%rcx)
	movq	%rsi, %rax
.L40:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L43:
	addl	$1, %ecx
	movq	%rsi, 8(%rax)
	movl	%ecx, 16(%rax)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L48:
	leaq	.LC5(%rip), %rcx
	movl	$1, %r8d
	xorl	%edx, %edx
	call	ReportError
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L47:
	xorl	%ecx, %ecx
	jmp	.L38
.L51:
	leaq	.LC2(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	ReportError
	movq	%rsi, %rax
	jmp	.L40
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE6:
	.text
.LHOTE6:
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "Attempting to finalize first element in NULL list, nothing will happen\0"
	.section	.text.unlikely,"x"
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	RemoveFirstFromList
	.def	RemoveFirstFromList;	.scl	2;	.type	32;	.endef
	.seh_proc	RemoveFirstFromList
RemoveFirstFromList:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	je	.L57
	leaq	Nop(%rip), %rax
	movq	8(%rcx), %rsi
	testq	%rdx, %rdx
	movl	16(%rcx), %edi
	movq	(%rcx), %rcx
	cmove	%rax, %rdx
	call	*%rdx
	movq	%rbx, %rcx
	call	free
	testq	%rsi, %rsi
	je	.L56
	subl	$1, %edi
	movq	%rsi, %rax
	movl	%edi, 16(%rsi)
.L54:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L56:
	xorl	%eax, %eax
	jmp	.L54
	.p2align 4,,10
.L57:
	leaq	.LC7(%rip), %rcx
	movl	$1, %r8d
	movl	$1, %edx
	call	ReportError
	xorl	%eax, %eax
	jmp	.L54
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE8:
	.text
.LHOTE8:
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "Attempting to finalize last element in NULL list, nothing will happen\0"
	.section	.text.unlikely,"x"
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	RemoveLastFromList
	.def	RemoveLastFromList;	.scl	2;	.type	32;	.endef
	.seh_proc	RemoveLastFromList
RemoveLastFromList:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %rsi
	je	.L59
	movl	16(%rcx), %r8d
	leaq	Nop(%rip), %rax
	testq	%rdx, %rdx
	cmove	%rax, %rdx
	cmpl	$1, %r8d
	je	.L61
	cmpl	$2, %r8d
	movq	%rcx, %rbx
	movl	$2, %ecx
	jle	.L63
	.p2align 4,,10
.L66:
	addl	$1, %ecx
	movq	8(%rbx), %rbx
	cmpl	%ecx, %r8d
	jne	.L66
.L63:
	movq	8(%rbx), %rax
	movq	(%rax), %rcx
	call	*%rdx
	movq	8(%rbx), %rcx
	call	free
	movq	$0, 8(%rbx)
	subl	$1, 16(%rsi)
	movq	%rsi, %rax
.L68:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L59:
	leaq	.LC9(%rip), %rcx
	movl	$1, %r8d
	movl	$1, %edx
	call	ReportError
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L61:
	movq	(%rcx), %rcx
	call	*%rdx
	movq	%rsi, %rcx
	call	free
	xorl	%eax, %eax
	jmp	.L68
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE10:
	.text
.LHOTE10:
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "The specified position to remove the element is outside the bounds of the list, no element removed\0"
	.align 8
.LC12:
	.ascii "Attempting to finalize element in NULL list, nothing will happen\0"
	.section	.text.unlikely,"x"
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	RemoveFromList
	.def	RemoveFromList;	.scl	2;	.type	32;	.endef
	.seh_proc	RemoveFromList
RemoveFromList:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %rdi
	je	.L70
	movl	16(%rcx), %esi
	leaq	Nop(%rip), %rax
	testq	%r8, %r8
	cmove	%rax, %r8
	cmpl	%edx, %esi
	jle	.L80
	movl	%edx, %eax
	shrl	$31, %eax
	testb	%al, %al
	jne	.L80
	testl	%edx, %edx
	je	.L75
	cmpl	$1, %esi
	movq	%rcx, %rbx
	movl	$1, %edx
	jle	.L77
	.p2align 4,,10
.L81:
	addl	$1, %edx
	movq	8(%rbx), %rbx
	cmpl	%edx, %esi
	jne	.L81
.L77:
	movq	8(%rbx), %rcx
	movq	8(%rcx), %rsi
	call	*%r8
	movq	8(%rbx), %rcx
	call	free
	movq	%rsi, 8(%rbx)
	subl	$1, 16(%rdi)
	movq	%rdi, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L75:
	movq	8(%rcx), %rbx
	movq	(%rcx), %rcx
	call	*%r8
	movq	%rdi, %rcx
	call	free
	testq	%rbx, %rbx
	je	.L84
	subl	$1, %esi
	movq	%rbx, %rax
	movl	%esi, 16(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L70:
	leaq	.LC12(%rip), %rcx
	movl	$1, %r8d
	movl	$1, %edx
	call	ReportError
.L84:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L80:
	leaq	.LC11(%rip), %rcx
	movl	$1, %r8d
	xorl	%edx, %edx
	call	ReportError
	movq	%rdi, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely,"x"
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	GetListLength
	.def	GetListLength;	.scl	2;	.type	32;	.endef
	.seh_proc	GetListLength
GetListLength:
	.seh_endprologue
	testq	%rcx, %rcx
	je	.L87
	movl	16(%rcx), %eax
	ret
	.p2align 4,,10
.L87:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely,"x"
.LCOLDB15:
	.text
.LHOTB15:
	.p2align 4,,15
	.globl	ListHasElements
	.def	ListHasElements;	.scl	2;	.type	32;	.endef
	.seh_proc	ListHasElements
ListHasElements:
	.seh_endprologue
	testq	%rcx, %rcx
	setne	%al
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE15:
	.text
.LHOTE15:
	.ident	"GCC: (GNU) 5.4.0"
	.def	Nop;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	ReportError;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.Nop, "dr"
	.globl	.refptr.Nop
	.linkonce	discard
.refptr.Nop:
	.quad	Nop
