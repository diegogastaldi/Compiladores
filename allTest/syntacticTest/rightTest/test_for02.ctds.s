.L02: 
		.string "%d resultado : " 

.text

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(4 * 1), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$2, -1(%rbp)

movl 	$0, -5(%rbp)

movl 	-1, %ebx 
movl 	-5, %edx 
movl 	%ebx, 0(%rbp, %rdx, 4) 

movl		0(%rbp), %eax
leave
ret

movl 	$1, -9(%rbp)

movl 	$5, -13(%rbp)

movl 	$10, -17(%rbp)

jmp 		.endFor0

.beginFor1: 

movl 	$2, -21(%rbp)

movl		-284(%rbp), %eax 
movl		-21(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -25(%rbp)

movl 	-25, %ebx 
movl 	-284, %edx 
movl 	%ebx, 0(%rbp, %rdx, 4) 

movl		-13(%rbp), %eax 
movl		-9(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -13(%rbp)

.endFor0: 

movl		-17(%rbp), %eax
cmpl 	-13(%rbp), %eax

jle 		.beginFor1

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$8, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

movl 	$4, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, -12(%rsp)

call 	pruArreglos
movl 	%eax, -16(%rbp) 

movl		-16(%rbp), %edi
movl	 	%edi, -24(%rsp)

movl		$.L02, %edi
movl	 	%edi, -28(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

