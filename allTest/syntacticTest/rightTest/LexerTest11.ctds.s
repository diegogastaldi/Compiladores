.text

.globl	inc
.type	inc, @function 
inc: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -60(%rbp)

movl		-60(%rbp), %eax
movl		%eax, -64(%rbp)

movl 	$0, -68(%rbp)

movl		-68(%rbp), %eax
movl		%eax, -72(%rbp)

movl 	$0, -76(%rbp)

movl		-76(%rbp), %eax
movl		%eax, -80(%rbp)

movl 	$0, -84(%rbp)

movl		-84(%rbp), %eax
movl		%eax, -88(%rbp)

movl 	$0, -92(%rbp)

movl		-92(%rbp), %eax
movl		%eax, -96(%rbp)

movl 	$0, -100(%rbp)

movl		-100(%rbp), %eax
movl		%eax, -104(%rbp)

movl 	$0, -108(%rbp)

movl		-108(%rbp), %eax
movl		%eax, -112(%rbp)

movl 	$0, -116(%rbp)

movl		-116(%rbp), %eax
movl		%eax, -120(%rbp)

movl 	$0, -124(%rbp)

movl		-124(%rbp), %eax
movl		%eax, -128(%rbp)

movl 	$0, -132(%rbp)

movl		-132(%rbp), %eax
movl		%eax, -136(%rbp)

movl 	$0, -140(%rbp)

movl		-140(%rbp), %eax
movl		%eax, -144(%rbp)

movl 	$0, -148(%rbp)

movl		-148(%rbp), %eax
movl		%eax, -152(%rbp)

movl 	$0, -156(%rbp)

movl		-156(%rbp), %eax
movl		%eax, -160(%rbp)

movl 	$0, -164(%rbp)

movl		-164(%rbp), %eax
movl		%eax, -168(%rbp)

mov 		$0, %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl		-60(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl		-64(%rbp), %edi
movl	 	%edi, 8(%rsp)

movl		-68(%rbp), %edi
movl	 	%edi, 12(%rsp)

movl		-72(%rbp), %edi
movl	 	%edi, 16(%rsp)

movl		-76(%rbp), %edi
movl	 	%edi, 20(%rsp)

movl		-80(%rbp), %edi
movl	 	%edi, 24(%rsp)

movl		-84(%rbp), %edi
movl	 	%edi, 28(%rsp)

movl		-88(%rbp), %edi
movl	 	%edi, 32(%rsp)

movl		-92(%rbp), %edi
movl	 	%edi, 36(%rsp)

movl		-96(%rbp), %edi
movl	 	%edi, 40(%rsp)

movl		-100(%rbp), %edi
movl	 	%edi, 44(%rsp)

movl		-104(%rbp), %edi
movl	 	%edi, 48(%rsp)

movl		-108(%rbp), %edi
movl	 	%edi, 52(%rsp)

movl		-112(%rbp), %edi
movl	 	%edi, 56(%rsp)

call 	inc

mov 		$0, %eax
leave
ret

