	.file	"Char.c"
	.text
	.p2align 4,,15
.globl PrintChar
	.type	PrintChar, @function
PrintChar:
.LFB11:
	.cfi_startproc
	cmpw	$127, %di
	jle	.L5
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	movsbl	%dil,%edi
	jmp	putchar
	.cfi_endproc
.LFE11:
	.size	PrintChar, .-PrintChar
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
