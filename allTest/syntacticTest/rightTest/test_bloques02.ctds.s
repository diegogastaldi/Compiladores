.text

.globl	breaks
.type	breaks, @function 
breaks: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, -20(%rbp)

.beginWhileL2: 

movl 	$10, -28(%rbp)

movl		-24(%rbp), %eax
cmpl		-28(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -32(%rbp)

movl 	$1, -36(%rbp)

movl		-36(%rbp), %eax
cmpl 	-32(%rbp), %eax

jne 		endWhileL1

movl 	$1, -44(%rbp)

movl		-40(%rbp), %eax 
movl		-44(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -48(%rbp)

movl		-48(%rbp), %eax
movl		%eax, -52(%rbp)

movl 	$2.3, -56(%rbp)

movl		-56(%rbp), %eax
movl		%eax, -60(%rbp)

movl 	$0, -68(%rbp)

movl		-64(%rbp), %eax
cmpl		-68(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -72(%rbp)

movl 	$1, -76(%rbp)

movl		-76(%rbp), %eax
cmpl 	-72(%rbp), %eax

jne 		falseCondL3

jmp 		endWhileL1

jmp 		endIfL4

.falseCondL3: 

jmp 		beginWhileL2

.endIfL4: 

jmp 		beginWhileL2

.endWhileL1: 

movl		-80(%rbp), %eax
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

