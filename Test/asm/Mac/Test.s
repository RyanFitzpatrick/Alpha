	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %edi
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	callq	_malloc
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$10, -28(%rbp)
	jge	LBB0_4
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$4, %eax
	movl	%eax, %edi
	callq	_malloc
	movslq	-28(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movl	-28(%rbp), %edx
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%edx, (%rax)
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_4:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rsi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	callq	_CreateList
	movq	%rax, -16(%rbp)
	movl	$1, -28(%rbp)
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$10, -28(%rbp)
	jge	LBB0_8
## BB#6:                                ##   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rsi
	callq	_PrependToList
	movq	%rax, -16(%rbp)
## BB#7:                                ##   in Loop: Header=BB0_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_5
LBB0_8:
	movq	_free@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	_FinalizeList
	leaq	L_.str1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	callq	_free
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"START OF TESTS\n"

L_.str1:                                ## @.str1
	.asciz	"END OF TESTS\n"


.subsections_via_symbols
