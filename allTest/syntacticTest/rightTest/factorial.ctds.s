.text

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

.globl	met
.type	met, @function 
met: 
enter   $(4 * 3), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		-4(%rbp), %eax 
movl		0(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -3(%rbp)

movl		-3(%rbp), %eax
movl		%eax, -8(%rbp)

movl		-8(%rbp), %eax
leave
ret

