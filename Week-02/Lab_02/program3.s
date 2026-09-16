	.arch armv8-a
	.file	"program3.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Enter your name: "
	.align	3
.LC1:
	.string	" %[^\n]"
	.align	3
.LC2:
	.string	"Enter your age: "
	.align	3
.LC3:
	.string	"%d"
	.align	3
.LC4:
	.string	"Enter your height (m): "
	.align	3
.LC5:
	.string	"%f"
	.align	3
.LC6:
	.string	"\n--- User Info ---"
	.align	3
.LC7:
	.string	"Name: %s\n"
	.align	3
.LC8:
	.string	"Age: %d years\n"
	.align	3
.LC9:
	.string	"Height: %.2f m\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc23_scanf
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 8
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc23_scanf
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	add	x0, sp, 12
	mov	x1, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__isoc23_scanf
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	puts
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	printf
	ldr	w0, [sp, 8]
	mov	w1, w0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	printf
	ldr	s31, [sp, 12]
	fcvt	d31, s31
	fmov	d0, d31
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	printf
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L3
	bl	__stack_chk_fail
.L3:
	mov	w0, w1
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
