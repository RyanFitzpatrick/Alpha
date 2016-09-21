	.file	"Num.c"
	.section	.text.unlikely,"x"
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	IncrementNum
	.def	IncrementNum;	.scl	2;	.type	32;	.endef
	.seh_proc	IncrementNum
IncrementNum:
	.seh_endprologue
	leal	1(%rcx), %eax
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
	.globl	DecrementNum
	.def	DecrementNum;	.scl	2;	.type	32;	.endef
	.seh_proc	DecrementNum
DecrementNum:
	.seh_endprologue
	leal	-1(%rcx), %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely,"x"
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	AddNum
	.def	AddNum;	.scl	2;	.type	32;	.endef
	.seh_proc	AddNum
AddNum:
	.seh_endprologue
	leal	(%rcx,%rdx), %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely,"x"
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	SubtractNum
	.def	SubtractNum;	.scl	2;	.type	32;	.endef
	.seh_proc	SubtractNum
SubtractNum:
	.seh_endprologue
	movl	%ecx, %eax
	subl	%edx, %eax
	ret
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
	.globl	MultiplyNum
	.def	MultiplyNum;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiplyNum
MultiplyNum:
	.seh_endprologue
	movl	%ecx, %eax
	imull	%edx, %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely,"x"
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	DivideNum
	.def	DivideNum;	.scl	2;	.type	32;	.endef
	.seh_proc	DivideNum
DivideNum:
	.seh_endprologue
	movl	%ecx, %eax
	movl	%edx, %r8d
	cltd
	idivl	%r8d
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely,"x"
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	AndNum
	.def	AndNum;	.scl	2;	.type	32;	.endef
	.seh_proc	AndNum
AndNum:
	.seh_endprologue
	movl	%ecx, %eax
	andl	%edx, %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely,"x"
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	OrNum
	.def	OrNum;	.scl	2;	.type	32;	.endef
	.seh_proc	OrNum
OrNum:
	.seh_endprologue
	movl	%ecx, %eax
	orl	%edx, %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely,"x"
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	XorNum
	.def	XorNum;	.scl	2;	.type	32;	.endef
	.seh_proc	XorNum
XorNum:
	.seh_endprologue
	movl	%ecx, %eax
	xorl	%edx, %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely,"x"
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.globl	NegativeNum
	.def	NegativeNum;	.scl	2;	.type	32;	.endef
	.seh_proc	NegativeNum
NegativeNum:
	.seh_endprologue
	movl	%ecx, %eax
	negl	%eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely,"x"
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	NotNum
	.def	NotNum;	.scl	2;	.type	32;	.endef
	.seh_proc	NotNum
NotNum:
	.seh_endprologue
	movl	%ecx, %eax
	notl	%eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely,"x"
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	LogicalNotNum
	.def	LogicalNotNum;	.scl	2;	.type	32;	.endef
	.seh_proc	LogicalNotNum
LogicalNotNum:
	.seh_endprologue
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely,"x"
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	LeftShiftNum
	.def	LeftShiftNum;	.scl	2;	.type	32;	.endef
	.seh_proc	LeftShiftNum
LeftShiftNum:
	.seh_endprologue
	movl	%ecx, %eax
	movl	%edx, %ecx
	sall	%cl, %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely,"x"
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	RightShiftNum
	.def	RightShiftNum;	.scl	2;	.type	32;	.endef
	.seh_proc	RightShiftNum
RightShiftNum:
	.seh_endprologue
	movl	%ecx, %eax
	movl	%edx, %ecx
	sarl	%cl, %eax
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
	.globl	LogicalRightShiftNum
	.def	LogicalRightShiftNum;	.scl	2;	.type	32;	.endef
	.seh_proc	LogicalRightShiftNum
LogicalRightShiftNum:
	.seh_endprologue
	movl	$-2147483648, %r9d
	movl	%ecx, %eax
	movl	%edx, %ecx
	sarl	%cl, %r9d
	sarl	%cl, %eax
	leal	(%r9,%r9), %r8d
	notl	%r8d
	andl	%r8d, %eax
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
	.globl	LeftRotateNum
	.def	LeftRotateNum;	.scl	2;	.type	32;	.endef
	.seh_proc	LeftRotateNum
LeftRotateNum:
	.seh_endprologue
	movl	%ecx, %r8d
	movl	%edx, %ecx
	negl	%ecx
	movl	%r8d, %eax
	sarl	%cl, %eax
	movl	%edx, %ecx
	sall	%cl, %r8d
	orl	%r8d, %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely,"x"
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	RightRotateNum
	.def	RightRotateNum;	.scl	2;	.type	32;	.endef
	.seh_proc	RightRotateNum
RightRotateNum:
	.seh_endprologue
	movl	%ecx, %r8d
	movl	%edx, %ecx
	negl	%ecx
	movl	%r8d, %eax
	sall	%cl, %eax
	movl	%edx, %ecx
	sarl	%cl, %r8d
	orl	%r8d, %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely,"x"
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.globl	IsEqual
	.def	IsEqual;	.scl	2;	.type	32;	.endef
	.seh_proc	IsEqual
IsEqual:
	.seh_endprologue
	cmpl	%edx, %ecx
	sete	%al
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely,"x"
.LCOLDB18:
	.text
.LHOTB18:
	.p2align 4,,15
	.globl	IsNotEqual
	.def	IsNotEqual;	.scl	2;	.type	32;	.endef
	.seh_proc	IsNotEqual
IsNotEqual:
	.seh_endprologue
	cmpl	%edx, %ecx
	setne	%al
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE18:
	.text
.LHOTE18:
	.section	.text.unlikely,"x"
.LCOLDB19:
	.text
.LHOTB19:
	.p2align 4,,15
	.globl	IsGreater
	.def	IsGreater;	.scl	2;	.type	32;	.endef
	.seh_proc	IsGreater
IsGreater:
	.seh_endprologue
	cmpl	%edx, %ecx
	setg	%al
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely,"x"
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.globl	IsNotGreater
	.def	IsNotGreater;	.scl	2;	.type	32;	.endef
	.seh_proc	IsNotGreater
IsNotGreater:
	.seh_endprologue
	cmpl	%edx, %ecx
	setle	%al
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE20:
	.text
.LHOTE20:
	.section	.text.unlikely,"x"
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4,,15
	.globl	IsLess
	.def	IsLess;	.scl	2;	.type	32;	.endef
	.seh_proc	IsLess
IsLess:
	.seh_endprologue
	cmpl	%edx, %ecx
	setl	%al
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE21:
	.text
.LHOTE21:
	.section	.text.unlikely,"x"
.LCOLDB22:
	.text
.LHOTB22:
	.p2align 4,,15
	.globl	IsNotLess
	.def	IsNotLess;	.scl	2;	.type	32;	.endef
	.seh_proc	IsNotLess
IsNotLess:
	.seh_endprologue
	cmpl	%edx, %ecx
	setge	%al
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE22:
	.text
.LHOTE22:
	.ident	"GCC: (GNU) 5.4.0"
