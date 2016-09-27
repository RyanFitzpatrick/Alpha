	.file	"System.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	Nop
	.type	Nop, @function
Nop:
.LFB0:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE0:
	.size	Nop, .-Nop
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
