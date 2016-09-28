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
	subq	$128, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -100(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -116(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$10, -116(%rbp)
	jge	LBB0_4
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$4, %eax
	movl	%eax, %edi
	callq	_malloc
	movslq	-116(%rbp), %rdi
	movq	%rax, -96(%rbp,%rdi,8)
	movl	-116(%rbp), %ecx
	movslq	-116(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rax
	movl	%ecx, (%rax)
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	LBB0_1
LBB0_4:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -120(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_CreateList
	movq	%rax, -112(%rbp)
	movl	$0, -116(%rbp)
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$10, -116(%rbp)
	jge	LBB0_8
## BB#6:                                ##   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rdi
	movslq	-116(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rax
	movq	%rax, %rsi
	callq	_PrependToList
	movq	%rax, -112(%rbp)
## BB#7:                                ##   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	LBB0_5
LBB0_8:
	movq	_free@GOTPCREL(%rip), %rax
	movq	-112(%rbp), %rdi
	movq	%rax, %rsi
	callq	_FinalizeList
	leaq	L_.str1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	cmpq	-8(%rbp), %rsi
	movl	%eax, -124(%rbp)        ## 4-byte Spill
	jne	LBB0_10
## BB#9:                                ## %SP_return
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
LBB0_10:                                ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"START OF TESTS\n"

L_.str1:                                ## @.str1
	.asciz	"END OF TESTS\n"


.subsections_via_symbols
