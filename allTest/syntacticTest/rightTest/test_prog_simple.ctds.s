.text

.globl	alo
.type	alo, @function 
alo: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, 0(%rbp)

movl		0(%rbp), %eax 
movl		0(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -4(%rbp)

movl		-4(%rbp), %eax
movl		%eax, 0(%rbp)

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

