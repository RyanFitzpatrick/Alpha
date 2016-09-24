	.file	"System.c"
	.section	.text.unlikely,"x"
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	Nop
	.def	Nop;	.scl	2;	.type	32;	.endef
	.seh_proc	Nop
Nop:
	.seh_endprologue
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (GNU) 5.4.0"
