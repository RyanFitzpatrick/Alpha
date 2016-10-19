	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_ReportError
	.align	4, 0x90
_ReportError:                           ## @ReportError
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp3:
	.cfi_offset %rbx, -40
Ltmp4:
	.cfi_offset %r14, -32
Ltmp5:
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rbx, (%rax)
	movl	%r15d, 8(%rax)
	movl	%r14d, 12(%rax)
	movq	_Errors(%rip), %rdi
	movq	%rax, %rsi
	callq	_AddListNode
	movq	%rax, _Errors(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

.zerofill __DATA,__bss,_Errors,8,3      ## @Errors

.subsections_via_symbols
