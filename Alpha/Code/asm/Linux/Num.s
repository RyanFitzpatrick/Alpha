	.file	"Num.c"
	.text
	.p2align 4,,15
.globl IncrementNum
	.type	IncrementNum, @function
IncrementNum:
.LFB0:
	.cfi_startproc
	leal	1(%rdi), %eax
	ret
	.cfi_endproc
.LFE0:
	.size	IncrementNum, .-IncrementNum
	.p2align 4,,15
.globl DecrementNum
	.type	DecrementNum, @function
DecrementNum:
.LFB1:
	.cfi_startproc
	leal	-1(%rdi), %eax
	ret
	.cfi_endproc
.LFE1:
	.size	DecrementNum, .-DecrementNum
	.p2align 4,,15
.globl AddNum
	.type	AddNum, @function
AddNum:
.LFB2:
	.cfi_startproc
	leal	(%rsi,%rdi), %eax
	ret
	.cfi_endproc
.LFE2:
	.size	AddNum, .-AddNum
	.p2align 4,,15
.globl SubtractNum
	.type	SubtractNum, @function
SubtractNum:
.LFB3:
	.cfi_startproc
	movl	%edi, %eax
	subl	%esi, %eax
	ret
	.cfi_endproc
.LFE3:
	.size	SubtractNum, .-SubtractNum
	.p2align 4,,15
.globl MultiplyNum
	.type	MultiplyNum, @function
MultiplyNum:
.LFB4:
	.cfi_startproc
	movl	%esi, %eax
	imull	%edi, %eax
	ret
	.cfi_endproc
.LFE4:
	.size	MultiplyNum, .-MultiplyNum
	.p2align 4,,15
.globl DivideNum
	.type	DivideNum, @function
DivideNum:
.LFB5:
	.cfi_startproc
	movl	%edi, %edx
	movl	%edi, %eax
	sarl	$31, %edx
	idivl	%esi
	ret
	.cfi_endproc
.LFE5:
	.size	DivideNum, .-DivideNum
	.p2align 4,,15
.globl AndNum
	.type	AndNum, @function
AndNum:
.LFB6:
	.cfi_startproc
	movl	%esi, %eax
	andl	%edi, %eax
	ret
	.cfi_endproc
.LFE6:
	.size	AndNum, .-AndNum
	.p2align 4,,15
.globl OrNum
	.type	OrNum, @function
OrNum:
.LFB7:
	.cfi_startproc
	movl	%esi, %eax
	orl	%edi, %eax
	ret
	.cfi_endproc
.LFE7:
	.size	OrNum, .-OrNum
	.p2align 4,,15
.globl XorNum
	.type	XorNum, @function
XorNum:
.LFB8:
	.cfi_startproc
	movl	%esi, %eax
	xorl	%edi, %eax
	ret
	.cfi_endproc
.LFE8:
	.size	XorNum, .-XorNum
	.p2align 4,,15
.globl NegativeNum
	.type	NegativeNum, @function
NegativeNum:
.LFB9:
	.cfi_startproc
	movl	%edi, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE9:
	.size	NegativeNum, .-NegativeNum
	.p2align 4,,15
.globl NotNum
	.type	NotNum, @function
NotNum:
.LFB10:
	.cfi_startproc
	movl	%edi, %eax
	notl	%eax
	ret
	.cfi_endproc
.LFE10:
	.size	NotNum, .-NotNum
	.p2align 4,,15
.globl LogicalNotNum
	.type	LogicalNotNum, @function
LogicalNotNum:
.LFB11:
	.cfi_startproc
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	ret
	.cfi_endproc
.LFE11:
	.size	LogicalNotNum, .-LogicalNotNum
	.p2align 4,,15
.globl LeftShiftNum
	.type	LeftShiftNum, @function
LeftShiftNum:
.LFB12:
	.cfi_startproc
	movl	%edi, %eax
	movl	%esi, %ecx
	sall	%cl, %eax
	ret
	.cfi_endproc
.LFE12:
	.size	LeftShiftNum, .-LeftShiftNum
	.p2align 4,,15
.globl RightShiftNum
	.type	RightShiftNum, @function
RightShiftNum:
.LFB13:
	.cfi_startproc
	movl	%edi, %eax
	movl	%esi, %ecx
	sarl	%cl, %eax
	ret
	.cfi_endproc
.LFE13:
	.size	RightShiftNum, .-RightShiftNum
	.p2align 4,,15
.globl LogicalRightShiftNum
	.type	LogicalRightShiftNum, @function
LogicalRightShiftNum:
.LFB14:
	.cfi_startproc
	movl	%esi, %ecx
	movl	$-2147483648, %eax
	sarl	%cl, %eax
	sarl	%cl, %edi
	addl	%eax, %eax
	notl	%eax
	andl	%edi, %eax
	ret
	.cfi_endproc
.LFE14:
	.size	LogicalRightShiftNum, .-LogicalRightShiftNum
	.p2align 4,,15
.globl LeftRotateNum
	.type	LeftRotateNum, @function
LeftRotateNum:
.LFB15:
	.cfi_startproc
	movl	%esi, %ecx
	movl	%edi, %eax
	negl	%ecx
	andl	$31, %ecx
	sarl	%cl, %eax
	movl	%esi, %ecx
	sall	%cl, %edi
	orl	%edi, %eax
	ret
	.cfi_endproc
.LFE15:
	.size	LeftRotateNum, .-LeftRotateNum
	.p2align 4,,15
.globl RightRotateNum
	.type	RightRotateNum, @function
RightRotateNum:
.LFB16:
	.cfi_startproc
	movl	%esi, %ecx
	movl	%edi, %eax
	negl	%ecx
	andl	$31, %ecx
	sall	%cl, %eax
	movl	%esi, %ecx
	sarl	%cl, %edi
	orl	%edi, %eax
	ret
	.cfi_endproc
.LFE16:
	.size	RightRotateNum, .-RightRotateNum
	.p2align 4,,15
.globl IsEqual
	.type	IsEqual, @function
IsEqual:
.LFB17:
	.cfi_startproc
	cmpl	%esi, %edi
	sete	%al
	ret
	.cfi_endproc
.LFE17:
	.size	IsEqual, .-IsEqual
	.p2align 4,,15
.globl IsNotEqual
	.type	IsNotEqual, @function
IsNotEqual:
.LFB18:
	.cfi_startproc
	cmpl	%esi, %edi
	setne	%al
	ret
	.cfi_endproc
.LFE18:
	.size	IsNotEqual, .-IsNotEqual
	.p2align 4,,15
.globl IsGreater
	.type	IsGreater, @function
IsGreater:
.LFB19:
	.cfi_startproc
	cmpl	%esi, %edi
	setg	%al
	ret
	.cfi_endproc
.LFE19:
	.size	IsGreater, .-IsGreater
	.p2align 4,,15
.globl IsNotGreater
	.type	IsNotGreater, @function
IsNotGreater:
.LFB20:
	.cfi_startproc
	cmpl	%esi, %edi
	setle	%al
	ret
	.cfi_endproc
.LFE20:
	.size	IsNotGreater, .-IsNotGreater
	.p2align 4,,15
.globl IsLess
	.type	IsLess, @function
IsLess:
.LFB21:
	.cfi_startproc
	cmpl	%esi, %edi
	setl	%al
	ret
	.cfi_endproc
.LFE21:
	.size	IsLess, .-IsLess
	.p2align 4,,15
.globl IsNotLess
	.type	IsNotLess, @function
IsNotLess:
.LFB22:
	.cfi_startproc
	cmpl	%esi, %edi
	setge	%al
	ret
	.cfi_endproc
.LFE22:
	.size	IsNotLess, .-IsNotLess
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
