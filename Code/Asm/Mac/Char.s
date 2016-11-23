	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_isCharAlphabetic
	.align	4, 0x90
_isCharAlphabetic:                      ## @isCharAlphabetic
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
                                        ## kill: EDI<def> EDI<kill> RDI<def>
	leal	-65(%rdi), %eax
	movzwl	%ax, %ecx
	movb	$1, %al
	cmpl	$26, %ecx
	jb	LBB0_2
## BB#1:
	addl	$-97, %edi
	movzwl	%di, %eax
	cmpl	$26, %eax
	setb	%al
LBB0_2:
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
