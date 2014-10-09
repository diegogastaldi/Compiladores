.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
pushq	%rbp
movq		%rsp, %rbp

movl		-16(%rbp), %eax
cmpl		-20(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -24(%rbp)

movl 	$1, -28(%rbp)

movl		-28(%rbp), %eax
cmpl 	-24(%rbp), %eax

jne 		falseCondL1

movl		-32(%rbp), %eax
cmpl		-36(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -40(%rbp)

movl 	$1, -44(%rbp)

movl		-44(%rbp), %eax
cmpl 	-40(%rbp), %eax

jne 		falseCondL2

movl		-52(%rbp), %eax 
movl		-48(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -56(%rbp)

movl		-56(%rbp), %eax
movl		%eax, -60(%rbp)

jmp 		endIfL3

.falseCondL2: 

movl		-68(%rbp), %eax 
movl		-64(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -72(%rbp)

movl		-72(%rbp), %eax
movl		%eax, -76(%rbp)

.endIfL3: 

jmp 		endIfL4

.falseCondL1: 

movl 	$5, -84(%rbp)

movl		-80(%rbp), %eax 
movl		-84(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -88(%rbp)

movl		-88(%rbp), %eax
movl		%eax, -92(%rbp)

.endIfL4: 

movl		-96(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	printf()

call 	printf()

call 	printf()

call 	printf()

mov 		$0, %eax
leave
ret

