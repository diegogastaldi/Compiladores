.text

.globl	method
.type	method, @function 
method: 
enter   $(4 * 1), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		0(%rbp), %eax
cmpl		4(%rbp), %eax
setle 	%al
movzbl %al, %eax
movl		%eax, -1(%rbp)

movl 	$1, -5(%rbp)

movl		-5(%rbp), %eax
cmpl 	-1(%rbp), %eax

jne 		.falseCond0

movl 	$1, -9(%rbp)

movl 	$1.0, -13(%rbp)

movl 	4(%rbp), %eax
cmpl		-13(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -17(%rbp)

cmpl		$0, -9(%rbp)
je 		.1
cmpl		$0, -17(%rbp)
je 		.1
movl		$1, %eax
jmp		.2
.1:
movl		$0, %eax
.2:
movl		%eax, -21(%rbp)

movl		-21(%rbp), %eax
movl		%eax, 0(%rbp)

.falseCond0: 

mov 		$0, %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

