.L03: 
		.string "y==%d\n" 

.L01: 
		.string "y==1\n" 

.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, 0(%rbp)

movl		0(%rbp), %eax 
movl		0(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -4(%rbp)

movl		-4(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 1), $0 
pushq	%rbp
movq		%rsp, %rbp

call 	get_int
movl 	%eax, -1(%rbp) 

movl		-1(%rbp), %edi
movl	 	%edi, -9(%rsp)

call 	inc
movl 	%eax, -13(%rbp) 

movl		-13(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$1, -21(%rbp)

movl 	0(%rbp), %eax
cmpl		-21(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -25(%rbp)

movl 	$1, -29(%rbp)

movl		-29(%rbp), %eax
cmpl 	-25(%rbp), %eax

jne 		.falseCond0

movl		$.L01, %edi
movl	 	%edi, -33(%rsp)

call 	printf

jmp 		.endIf2

.falseCond0: 

movl		0(%rbp), %edi
movl	 	%edi, -37(%rsp)

movl		$.L03, %edi
movl	 	%edi, -41(%rsp)

call 	printf

.endIf2: 

mov 		$0, %eax
leave
ret

