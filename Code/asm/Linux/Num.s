	.file	"Num.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	IncrementNum
	.type	IncrementNum, @function
IncrementNum:
.LFB0:
	.cfi_startproc
	leal	1(%rdi), %eax
	ret
	.cfi_endproc
.LFE0:
	.size	IncrementNum, .-IncrementNum
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	DecrementNum
	.type	DecrementNum, @function
DecrementNum:
.LFB1:
	.cfi_startproc
	leal	-1(%rdi), %eax
	ret
	.cfi_endproc
.LFE1:
	.size	DecrementNum, .-DecrementNum
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	AddNum
	.type	AddNum, @function
AddNum:
.LFB2:
	.cfi_startproc
	leal	(%rdi,%rsi), %eax
	ret
	.cfi_endproc
.LFE2:
	.size	AddNum, .-AddNum
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	SubtractNum
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
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	MultiplyNum
	.type	MultiplyNum, @function
MultiplyNum:
.LFB4:
	.cfi_startproc
	movl	%edi, %eax
	imull	%esi, %eax
	ret
	.cfi_endproc
.LFE4:
	.size	MultiplyNum, .-MultiplyNum
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	DivideNum
	.type	DivideNum, @function
DivideNum:
.LFB5:
	.cfi_startproc
	movl	%edi, %eax
	cltd
	idivl	%esi
	ret
	.cfi_endproc
.LFE5:
	.size	DivideNum, .-DivideNum
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	AndNum
	.type	AndNum, @function
AndNum:
.LFB6:
	.cfi_startproc
	movl	%edi, %eax
	andl	%esi, %eax
	ret
	.cfi_endproc
.LFE6:
	.size	AndNum, .-AndNum
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	OrNum
	.type	OrNum, @function
OrNum:
.LFB7:
	.cfi_startproc
	movl	%edi, %eax
	orl	%esi, %eax
	ret
	.cfi_endproc
.LFE7:
	.size	OrNum, .-OrNum
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	XorNum
	.type	XorNum, @function
XorNum:
.LFB8:
	.cfi_startproc
	movl	%edi, %eax
	xorl	%esi, %eax
	ret
	.cfi_endproc
.LFE8:
	.size	XorNum, .-XorNum
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.globl	NegativeNum
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
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	NotNum
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
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	LogicalNotNum
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
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	LeftShiftNum
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
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	RightShiftNum
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
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	LogicalRightShiftNum
	.type	LogicalRightShiftNum, @function
LogicalRightShiftNum:
.LFB14:
	.cfi_startproc
	movl	%esi, %ecx
	movl	$-2147483648, %r8d
	sarl	%cl, %r8d
	sarl	%cl, %edi
	leal	(%r8,%r8), %edx
	notl	%edx
	movl	%edx, %eax
	andl	%edi, %eax
	ret
	.cfi_endproc
.LFE14:
	.size	LogicalRightShiftNum, .-LogicalRightShiftNum
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely
.LCOLDB15:
	.text
.LHOTB15:
	.p2align 4,,15
	.globl	LeftRotateNum
	.type	LeftRotateNum, @function
LeftRotateNum:
.LFB15:
	.cfi_startproc
	movl	%esi, %ecx
	movl	%edi, %eax
	negl	%ecx
	sarl	%cl, %eax
	movl	%esi, %ecx
	sall	%cl, %edi
	orl	%edi, %eax
	ret
	.cfi_endproc
.LFE15:
	.size	LeftRotateNum, .-LeftRotateNum
	.section	.text.unlikely
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	RightRotateNum
	.type	RightRotateNum, @function
RightRotateNum:
.LFB16:
	.cfi_startproc
	movl	%esi, %ecx
	movl	%edi, %eax
	negl	%ecx
	sall	%cl, %eax
	movl	%esi, %ecx
	sarl	%cl, %edi
	orl	%edi, %eax
	ret
	.cfi_endproc
.LFE16:
	.size	RightRotateNum, .-RightRotateNum
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.globl	IsEqual
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
	.section	.text.unlikely
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely
.LCOLDB18:
	.text
.LHOTB18:
	.p2align 4,,15
	.globl	IsNotEqual
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
	.section	.text.unlikely
.LCOLDE18:
	.text
.LHOTE18:
	.section	.text.unlikely
.LCOLDB19:
	.text
.LHOTB19:
	.p2align 4,,15
	.globl	IsGreater
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
	.section	.text.unlikely
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.globl	IsNotGreater
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
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
	.section	.text.unlikely
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4,,15
	.globl	IsLess
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
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
	.section	.text.unlikely
.LCOLDB22:
	.text
.LHOTB22:
	.p2align 4,,15
	.globl	IsNotLess
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
	.section	.text.unlikely
.LCOLDE22:
	.text
.LHOTE22:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
