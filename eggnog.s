    .global	main
main:
    // pre-increment the stack point to create space for two 8-byte registers
    // link register (x30), and frame pointer (x29), and store them.
	stp	x29, x30, [sp, -16]!

    // Load the argument and perform the call. Like 'printf("...")' in C.
	ldr	x0, =line1
	bl	printf

// Load the argument and perform the call. Like 'printf("...")' in C.
        ldr     x0, =line2
        bl      printf

// Load the argument and perform the call. Like 'printf("...")' in C.
        ldr     x0, =line3
        bl      printf

    // initialize the return value in the return register
	mov	x0, 0

    // restore the registers and post-decrement 
    // the stack pointer for consistency
	ldp	x29, x30, [sp], 16

    // return from the call
	ret

line1:
	.asciz "Nutmeg floats on top\n"

line2:
	.asciz "As the fireplace crackles\n"

line3:
	.asciz "I smile at my mug\n"
