	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_IncrementNum
	.align	4, 0x90
_IncrementNum:                          ## @IncrementNum
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
	leal	1(%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_DecrementNum
	.align	4, 0x90
_DecrementNum:                          ## @DecrementNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
                                        ## kill: EDI<def> EDI<kill> RDI<def>
	leal	-1(%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_AddNum
	.align	4, 0x90
_AddNum:                                ## @AddNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	addl	%esi, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_SubtractNum
	.align	4, 0x90
_SubtractNum:                           ## @SubtractNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subl	%esi, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_MultiplyNum
	.align	4, 0x90
_MultiplyNum:                           ## @MultiplyNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	imull	%esi, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_DivideNum
	.align	4, 0x90
_DivideNum:                             ## @DivideNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	cltd
	idivl	%esi
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_ModNum
	.align	4, 0x90
_ModNum:                                ## @ModNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	cltd
	idivl	%esi
	movl	%edx, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_AndNum
	.align	4, 0x90
_AndNum:                                ## @AndNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	andl	%esi, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_OrNum
	.align	4, 0x90
_OrNum:                                 ## @OrNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	orl	%esi, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_XorNum
	.align	4, 0x90
_XorNum:                                ## @XorNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	xorl	%esi, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_NegativeNum
	.align	4, 0x90
_NegativeNum:                           ## @NegativeNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp30:
	.cfi_def_cfa_offset 16
Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp32:
	.cfi_def_cfa_register %rbp
	negl	%edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_NotNum
	.align	4, 0x90
_NotNum:                                ## @NotNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp33:
	.cfi_def_cfa_offset 16
Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp35:
	.cfi_def_cfa_register %rbp
	notl	%edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_LogicalNotNum
	.align	4, 0x90
_LogicalNotNum:                         ## @LogicalNotNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp36:
	.cfi_def_cfa_offset 16
Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp38:
	.cfi_def_cfa_register %rbp
	testl	%edi, %edi
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_LeftShiftNum
	.align	4, 0x90
_LeftShiftNum:                          ## @LeftShiftNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp39:
	.cfi_def_cfa_offset 16
Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp41:
	.cfi_def_cfa_register %rbp
	movb	%sil, %cl
	shll	%cl, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_RightShiftNum
	.align	4, 0x90
_RightShiftNum:                         ## @RightShiftNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp42:
	.cfi_def_cfa_offset 16
Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp44:
	.cfi_def_cfa_register %rbp
	movb	%sil, %cl
	sarl	%cl, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_LogicalRightShiftNum
	.align	4, 0x90
_LogicalRightShiftNum:                  ## @LogicalRightShiftNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp45:
	.cfi_def_cfa_offset 16
Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp47:
	.cfi_def_cfa_register %rbp
	movl	%esi, %ecx
	sarl	%cl, %edi
	movl	$-2147483648, %eax      ## imm = 0xFFFFFFFF80000000
                                        ## kill: CL<def> CL<kill> ECX<kill>
	sarl	%cl, %eax
	addl	%eax, %eax
	notl	%eax
	andl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_LeftRotateNum
	.align	4, 0x90
_LeftRotateNum:                         ## @LeftRotateNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp48:
	.cfi_def_cfa_offset 16
Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp50:
	.cfi_def_cfa_register %rbp
	movl	%esi, %ecx
	movl	%edi, %eax
	shll	%cl, %eax
	negl	%ecx
                                        ## kill: CL<def> CL<kill> ECX<kill>
	sarl	%cl, %edi
	orl	%eax, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_RightRotateNum
	.align	4, 0x90
_RightRotateNum:                        ## @RightRotateNum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp51:
	.cfi_def_cfa_offset 16
Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp53:
	.cfi_def_cfa_register %rbp
	movl	%esi, %ecx
	movl	%edi, %eax
	sarl	%cl, %eax
	negl	%ecx
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shll	%cl, %edi
	orl	%eax, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_IsNumEqual
	.align	4, 0x90
_IsNumEqual:                            ## @IsNumEqual
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp54:
	.cfi_def_cfa_offset 16
Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp56:
	.cfi_def_cfa_register %rbp
	cmpl	%esi, %edi
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_IsNumNotEqual
	.align	4, 0x90
_IsNumNotEqual:                         ## @IsNumNotEqual
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp57:
	.cfi_def_cfa_offset 16
Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp59:
	.cfi_def_cfa_register %rbp
	cmpl	%esi, %edi
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_IsNumGreater
	.align	4, 0x90
_IsNumGreater:                          ## @IsNumGreater
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp60:
	.cfi_def_cfa_offset 16
Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp62:
	.cfi_def_cfa_register %rbp
	cmpl	%esi, %edi
	setg	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_IsNumNotGreater
	.align	4, 0x90
_IsNumNotGreater:                       ## @IsNumNotGreater
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp63:
	.cfi_def_cfa_offset 16
Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp65:
	.cfi_def_cfa_register %rbp
	cmpl	%esi, %edi
	setle	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_IsNumLess
	.align	4, 0x90
_IsNumLess:                             ## @IsNumLess
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp66:
	.cfi_def_cfa_offset 16
Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp68:
	.cfi_def_cfa_register %rbp
	cmpl	%esi, %edi
	setl	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_IsNumNotLess
	.align	4, 0x90
_IsNumNotLess:                          ## @IsNumNotLess
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp69:
	.cfi_def_cfa_offset 16
Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp71:
	.cfi_def_cfa_register %rbp
	cmpl	%esi, %edi
	setge	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
