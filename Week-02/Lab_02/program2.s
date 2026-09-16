	.arch armv8-a
	.file	"program2.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Enter a number: "
	.align	3
.LC1:
	.string	"%d"
	.align	3
.LC2:
	.string	"You entered: %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 16
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 8]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x0, sp, 4
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc23_scanf
	ldr	w0, [sp, 4]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 8]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L3
	bl	__stack_chk_fail
.L3:
	mov	w0, w1
	ldp	x29, x30, [sp, 16]
	add	sp, sp, 32
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
