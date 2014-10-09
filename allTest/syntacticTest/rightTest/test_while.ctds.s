.text

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

.beginWhileL2: 

movl 	$0, -36(%rbp)

movl		-32(%rbp), %eax
cmpl		-36(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -40(%rbp)

movl 	$1, -44(%rbp)

movl		-44(%rbp), %eax
cmpl 	-40(%rbp), %eax

jne 		endWhileL1

movl		-52(%rbp), %eax 
cltd
idivl	-48
movl		%edx, -56(%rbp)

movl 	$1, 1(%rbp)

movl		1(%rbp), %eax
movl		%eax, -68(%rbp)

movl		-56(%rbp), %eax 
movl		-68(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -64(%rbp)

movl		-64(%rbp), %eax
movl		%eax, -60(%rbp)

movl 	$1, 1(%rbp)

movl		1(%rbp), %eax
movl		%eax, -84(%rbp)

movl		-84(%rbp), %eax 
movl		-72(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -80(%rbp)

movl		-80(%rbp), %eax
movl		%eax, -76(%rbp)

jmp 		beginWhileL2

jmp 		beginWhileL2

.endWhileL1: 

.beginWhileL4: 

movl 	$0, -92(%rbp)

movl		-88(%rbp), %eax
cmpl		-92(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -96(%rbp)

movl 	$1, -100(%rbp)

movl		-100(%rbp), %eax
cmpl 	-96(%rbp), %eax

jne 		endWhileL3

jmp 		endWhileL3

jmp 		beginWhileL4

.endWhileL3: 

.beginWhileL6: 

movl 	$0, -108(%rbp)

movl		-104(%rbp), %eax
cmpl		-108(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -112(%rbp)

movl 	$1, -116(%rbp)

movl		-116(%rbp), %eax
cmpl 	-112(%rbp), %eax

jne 		endWhileL5

jmp 		beginWhileL6

.endWhileL5: 

movl		-120(%rbp), %eax
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

