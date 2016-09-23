	.file	"Char.c"
	.section	.text.unlikely,"x"
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	PrintChar
	.def	PrintChar;	.scl	2;	.type	32;	.endef
	.seh_proc	PrintChar
PrintChar:
	.seh_endprologue
	cmpw	$127, %cx
	jle	.L4
	rep ret
	.p2align 4,,10
.L4:
	movsbl	%cl, %ecx
	jmp	putchar
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (GNU) 5.4.0"
	.def	putchar;	.scl	2;	.type	32;	.endef
