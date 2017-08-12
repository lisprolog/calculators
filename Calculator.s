	.file	"Calculator.c"
	.section	.rodata
.LC0:
	.string	"Bitte Zahl 1 eingeben: "
.LC1:
	.string	"%f"
.LC2:
	.string	"Bitte Zahl 2 eingeben: "
.LC3:
	.string	"Bitte Operator eingeben: "
.LC4:
	.string	"%c"
.LC5:
	.string	"\nResultat: %.2f\n"
	.align 4
.LC6:
	.string	"\nFehler, bitte starten sie neu!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	movl	$.LC0, (%esp)
	call	printf
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC1, (%esp)
	call	__isoc99_scanf
	movl	$.LC2, (%esp)
	call	printf
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC1, (%esp)
	call	__isoc99_scanf
	movl	$.LC3, (%esp)
	call	printf
	leal	23(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC4, (%esp)
	call	__isoc99_scanf
	call	getchar
	movb	%al, 23(%esp)
	movzbl	23(%esp), %eax
	movsbl	%al, %eax
	cmpl	$43, %eax
	je	.L3
	cmpl	$43, %eax
	jg	.L4
	cmpl	$42, %eax
	je	.L5
	jmp	.L2
.L4:
	cmpl	$45, %eax
	je	.L6
	cmpl	$47, %eax
	je	.L7
	jmp	.L2
.L3:
	flds	24(%esp)
	flds	28(%esp)
	faddp	%st, %st(1)
	fstpl	4(%esp)
	movl	$.LC5, (%esp)
	call	printf
	jmp	.L9
.L6:
	flds	24(%esp)
	flds	28(%esp)
	fsubrp	%st, %st(1)
	fstpl	4(%esp)
	movl	$.LC5, (%esp)
	call	printf
	jmp	.L9
.L5:
	flds	24(%esp)
	flds	28(%esp)
	fmulp	%st, %st(1)
	fstpl	4(%esp)
	movl	$.LC5, (%esp)
	call	printf
	jmp	.L9
.L7:
	flds	24(%esp)
	flds	28(%esp)
	fdivrp	%st, %st(1)
	fstpl	4(%esp)
	movl	$.LC5, (%esp)
	call	printf
	jmp	.L9
.L2:
	movl	$.LC6, (%esp)
	call	puts
	nop
.L9:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
