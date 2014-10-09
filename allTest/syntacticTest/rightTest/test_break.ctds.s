.text

.globl	breaks
.type	breaks, @function 
breaks: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -12(%rbp)

movl		-12(%rbp), %eax
movl		%eax, -16(%rbp)

.beginWhileL2: 

movl 	$10, -24(%rbp)

movl		-20(%rbp), %eax
cmpl		-24(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -28(%rbp)

movl 	$1, -32(%rbp)

movl		-32(%rbp), %eax
cmpl 	-28(%rbp), %eax

jne 		endWhileL1

movl 	$1, -40(%rbp)

movl		-36(%rbp), %eax 
movl		-40(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -44(%rbp)

movl		-44(%rbp), %eax
movl		%eax, -48(%rbp)

movl 	$0, -56(%rbp)

movl		-52(%rbp), %eax
cmpl		-56(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -60(%rbp)

movl 	$1, -64(%rbp)

movl		-64(%rbp), %eax
cmpl 	-60(%rbp), %eax

jne 		falseCondL3

jmp 		endWhileL1

jmp 		endIfL4

.falseCondL3: 

jmp 		beginWhileL2

.endIfL4: 

jmp 		beginWhileL2

.endWhileL1: 

movl		-68(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	printf()

mov 		$0, %eax
leave
ret

