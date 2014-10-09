.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
pushq	%rbp
movq		%rsp, %rbp

movl		-16(%rbp), %eax
cmpl		-20(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -24(%rbp)

movl 	$1, -28(%rbp)

movl		-28(%rbp), %eax
cmpl 	-24(%rbp), %eax

jne 		falseCondL1

movl		-36(%rbp), %eax 
movl		-32(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -40(%rbp)

movl		-40(%rbp), %eax
movl		%eax, -44(%rbp)

.falseCondL1: 

movl 	-48(%rbp), %eax
cmpl		-52(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -56(%rbp)

movl 	$1, -60(%rbp)

movl		-60(%rbp), %eax
cmpl 	-56(%rbp), %eax

jne 		falseCondL2

movl 	$5, -68(%rbp)

movl		-64(%rbp), %eax 
movl		-68(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -72(%rbp)

movl		-72(%rbp), %eax
movl		%eax, -76(%rbp)

jmp 		endIfL3

.falseCondL2: 

movl		-84(%rbp), %eax 
movl		-80(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -88(%rbp)

movl		-88(%rbp), %eax
movl		%eax, -92(%rbp)

.endIfL3: 

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

