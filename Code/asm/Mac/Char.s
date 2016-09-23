	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_PrintChar
	.align	4, 0x90
_PrintChar:                             ## @PrintChar
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
	cmpl	$127, %edi
	jg	LBB0_1
## BB#2:
	movsbl	%dil, %edi
	popq	%rbp
	jmp	_putchar                ## TAILCALL
LBB0_1:
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
