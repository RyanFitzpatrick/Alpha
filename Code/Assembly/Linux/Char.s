	.file	"Char.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	PrintChar
	.type	PrintChar, @function
PrintChar:
.LFB23:
	.cfi_startproc
	cmpw	$127, %di
	jle	.L4
	rep ret
	.p2align 4,,10
	.p2align 3
.L4:
	movsbl	%dil, %edi
	jmp	putchar
	.cfi_endproc
.LFE23:
	.size	PrintChar, .-PrintChar
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
