.SL3: 
		.string "%d" 

.SL2: 
		.string "entro al for  %d" 

.text

.comm A, 4712

.comm B, 448

.comm C, 40

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(8 * 19), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq		$0, %r10
mov		%r10, -48(%rbp)

movq		$0, %r10
mov		%r10, -56(%rbp)

movq		$0, %r10
mov		%r10, -64(%rbp)

movq		$0, %r10
mov		%r10, -72(%rbp)

movq		$0, %r10
mov		%r10, -80(%rbp)

movq		$0, %r10
mov		%r10, -88(%rbp)

movq 	$0, -120(%rbp)

mov		-120(%rbp), %r10
mov		%r10, -96(%rbp)

movq 	$1, -128(%rbp)

movq 	$0, -136(%rbp)

movq 	$10, -144(%rbp)

jmp 		.endForL0

.beginForL1: 

mov		$.SL2, %r10
mov	 	%r10, %rdi

mov		-96(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		-136(%rbp), %r10 
mov		-128(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -136(%rbp)

mov		-136(%rbp), %r10
mov		%r10, -96(%rbp)

.endForL0: 

mov		-136(%rbp), %r10
cmp 		-144(%rbp), %r10

jle 		.beginForL1

mov		-96(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 5), $0 

mov 		$0, %r10 
mov 		$0, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$1, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$2, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$3, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$4, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$5, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$6, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$7, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$8, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$9, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$10, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$11, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$12, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$13, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$14, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$15, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$16, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$17, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$18, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$19, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$20, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$21, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$22, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$23, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$24, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$25, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$26, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$27, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$28, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$29, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$30, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$31, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$32, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$33, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$34, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$35, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$36, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$37, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$38, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$39, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$40, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$41, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$42, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$43, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$44, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$45, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$46, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$47, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$48, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$49, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$50, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$51, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$52, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$53, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$54, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$55, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$56, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$57, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$58, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$59, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$60, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$61, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$62, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$63, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$64, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$65, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$66, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$67, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$68, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$69, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$70, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$71, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$72, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$73, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$74, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$75, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$76, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$77, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$78, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$79, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$80, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$81, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$82, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$83, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$84, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$85, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$86, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$87, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$88, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$89, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$90, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$91, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$92, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$93, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$94, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$95, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$96, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$97, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$98, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$99, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$100, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$101, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$102, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$103, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$104, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$105, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$106, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$107, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$108, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$109, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$110, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$111, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$112, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$113, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$114, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$115, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$116, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$117, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$118, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$119, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$120, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$121, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$122, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$123, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$124, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$125, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$126, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$127, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$128, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$129, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$130, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$131, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$132, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$133, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$134, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$135, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$136, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$137, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$138, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$139, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$140, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$141, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$142, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$143, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$144, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$145, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$146, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$147, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$148, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$149, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$150, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$151, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$152, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$153, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$154, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$155, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$156, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$157, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$158, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$159, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$160, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$161, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$162, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$163, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$164, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$165, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$166, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$167, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$168, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$169, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$170, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$171, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$172, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$173, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$174, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$175, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$176, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$177, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$178, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$179, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$180, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$181, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$182, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$183, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$184, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$185, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$186, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$187, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$188, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$189, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$190, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$191, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$192, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$193, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$194, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$195, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$196, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$197, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$198, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$199, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$200, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$201, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$202, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$203, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$204, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$205, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$206, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$207, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$208, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$209, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$210, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$211, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$212, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$213, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$214, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$215, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$216, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$217, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$218, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$219, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$220, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$221, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$222, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$223, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$224, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$225, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$226, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$227, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$228, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$229, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$230, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$231, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$232, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$233, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$234, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$235, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$236, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$237, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$238, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$239, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$240, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$241, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$242, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$243, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$244, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$245, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$246, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$247, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$248, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$249, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$250, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$251, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$252, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$253, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$254, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$255, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$256, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$257, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$258, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$259, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$260, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$261, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$262, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$263, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$264, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$265, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$266, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$267, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$268, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$269, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$270, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$271, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$272, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$273, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$274, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$275, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$276, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$277, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$278, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$279, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$280, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$281, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$282, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$283, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$284, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$285, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$286, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$287, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$288, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$289, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$290, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$291, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$292, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$293, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$294, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$295, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$296, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$297, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$298, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$299, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$300, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$301, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$302, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$303, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$304, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$305, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$306, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$307, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$308, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$309, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$310, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$311, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$312, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$313, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$314, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$315, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$316, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$317, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$318, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$319, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$320, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$321, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$322, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$323, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$324, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$325, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$326, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$327, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$328, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$329, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$330, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$331, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$332, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$333, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$334, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$335, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$336, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$337, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$338, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$339, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$340, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$341, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$342, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$343, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$344, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$345, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$346, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$347, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$348, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$349, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$350, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$351, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$352, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$353, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$354, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$355, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$356, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$357, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$358, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$359, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$360, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$361, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$362, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$363, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$364, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$365, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$366, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$367, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$368, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$369, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$370, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$371, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$372, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$373, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$374, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$375, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$376, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$377, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$378, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$379, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$380, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$381, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$382, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$383, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$384, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$385, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$386, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$387, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$388, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$389, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$390, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$391, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$392, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$393, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$394, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$395, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$396, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$397, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$398, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$399, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$400, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$401, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$402, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$403, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$404, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$405, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$406, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$407, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$408, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$409, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$410, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$411, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$412, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$413, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$414, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$415, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$416, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$417, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$418, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$419, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$420, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$421, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$422, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$423, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$424, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$425, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$426, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$427, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$428, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$429, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$430, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$431, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$432, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$433, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$434, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$435, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$436, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$437, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$438, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$439, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$440, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$441, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$442, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$443, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$444, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$445, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$446, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$447, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$448, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$449, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$450, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$451, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$452, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$453, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$454, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$455, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$456, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$457, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$458, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$459, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$460, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$461, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$462, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$463, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$464, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$465, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$466, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$467, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$468, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$469, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$470, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$471, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$472, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$473, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$474, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$475, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$476, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$477, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$478, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$479, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$480, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$481, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$482, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$483, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$484, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$485, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$486, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$487, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$488, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$489, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$490, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$491, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$492, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$493, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$494, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$495, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$496, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$497, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$498, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$499, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$500, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$501, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$502, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$503, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$504, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$505, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$506, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$507, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$508, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$509, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$510, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$511, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$512, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$513, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$514, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$515, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$516, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$517, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$518, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$519, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$520, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$521, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$522, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$523, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$524, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$525, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$526, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$527, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$528, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$529, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$530, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$531, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$532, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$533, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$534, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$535, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$536, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$537, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$538, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$539, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$540, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$541, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$542, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$543, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$544, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$545, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$546, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$547, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$548, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$549, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$550, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$551, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$552, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$553, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$554, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$555, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$556, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$557, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$558, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$559, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$560, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$561, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$562, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$563, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$564, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$565, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$566, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$567, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$568, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$569, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$570, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$571, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$572, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$573, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$574, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$575, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$576, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$577, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$578, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$579, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$580, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$581, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$582, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$583, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$584, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$585, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$586, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$587, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$588, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

mov 		$0, %r10 
mov 		$0, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$1, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$2, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$3, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$4, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$5, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$6, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$7, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$8, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$9, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$10, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$11, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$12, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$13, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$14, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$15, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$16, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$17, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$18, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$19, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$20, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$21, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$22, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$23, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$24, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$25, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$26, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$27, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$28, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$29, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$30, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$31, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$32, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$33, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$34, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$35, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$36, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$37, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$38, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$39, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$40, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$41, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$42, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$43, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$44, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$45, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$46, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$47, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$48, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$49, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$50, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$51, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$52, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$53, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$54, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$55, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 

mov 		$0, %r10 
mov 		$0, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$1, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$2, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$3, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$4, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 

movq 	$2, -16(%rbp)

movq 	$3, -24(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	pruArreglos
mov 	%rax, -32(%rbp) 

mov		$.SL3, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

