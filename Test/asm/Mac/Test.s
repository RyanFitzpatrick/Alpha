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
	leaq	L_.str(%rip), %rdi
	leaq	-48(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	%rax, -88(%rbp)
	movb	$0, %al
	callq	_printf
	leaq	L_.str1(%rip), %rdi
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -96(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_CreateList
	leaq	L_.str2(%rip), %rdi
	movq	%rax, -64(%rbp)
	movb	$0, %al
	callq	_printf
	cmpq	$0, -64(%rbp)
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	je	LBB0_2
## BB#1:
	leaq	L_.str3(%rip), %rdi
	leaq	L_.str4(%rip), %rsi
	leaq	L_.str5(%rip), %rdx
	movb	$0, %al
	callq	_printf
	movl	%eax, -104(%rbp)        ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	leaq	L_.str6(%rip), %rdi
	leaq	L_.str7(%rip), %rsi
	leaq	L_.str5(%rip), %rdx
	movb	$0, %al
	callq	_printf
	movl	%eax, -108(%rbp)        ## 4-byte Spill
LBB0_3:
	movl	$0, -76(%rbp)
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$10, -76(%rbp)
	jge	LBB0_7
## BB#5:                                ##   in Loop: Header=BB0_4 Depth=1
	leaq	-48(%rbp), %rax
	movl	$10, %ecx
	subl	-76(%rbp), %ecx
	movslq	-76(%rbp), %rdx
	movl	%ecx, -48(%rbp,%rdx,4)
	movq	-64(%rbp), %rdi
	movslq	-76(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	callq	_AddListNode
	movq	%rax, -64(%rbp)
## BB#6:                                ##   in Loop: Header=BB0_4 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	LBB0_4
LBB0_7:
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rdi
	callq	_ListHasNext
	cmpb	$0, %al
	je	LBB0_10
## BB#9:                                ##   in Loop: Header=BB0_8 Depth=1
	movq	-72(%rbp), %rdi
	callq	_GetListData
	leaq	L_.str8(%rip), %rdi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %esi
	movb	$0, %al
	callq	_printf
	movq	-72(%rbp), %rdi
	movl	%eax, -112(%rbp)        ## 4-byte Spill
	callq	_GetListNext
	movq	%rax, -72(%rbp)
	jmp	LBB0_8
LBB0_10:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	_FinalizeList
	leaq	L_.str9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	cmpq	-8(%rbp), %rsi
	movl	%eax, -116(%rbp)        ## 4-byte Spill
	jne	LBB0_12
## BB#11:                               ## %SP_return
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
LBB0_12:                                ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"START OF TESTS\n"

L_.str1:                                ## @.str1
	.asciz	"Executing CreateList Tests\n"

L_.str2:                                ## @.str2
	.asciz	"CreateList NULL Test "

L_.str3:                                ## @.str3
	.asciz	"%sPASSED\n%s"

L_.str4:                                ## @.str4
	.asciz	"\033[32m"

L_.str5:                                ## @.str5
	.asciz	"\033[0m"

L_.str6:                                ## @.str6
	.asciz	"%sFAILED\n%s"

L_.str7:                                ## @.str7
	.asciz	"\033[31m"

L_.str8:                                ## @.str8
	.asciz	"Data: %d\n"

L_.str9:                                ## @.str9
	.asciz	"END OF TESTS\n"


.subsections_via_symbols
