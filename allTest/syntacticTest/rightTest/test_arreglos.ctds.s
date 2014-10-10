.text

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(4 * 9), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		4(%rbp), %eax
cmpl		0(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -9(%rbp)

movl 	$1, -13(%rbp)

movl		-13(%rbp), %eax
cmpl 	-9(%rbp), %eax

jne 		.falseCond0

movl 	$1, -17(%rbp)

movl		0(%rbp), %eax 
movl		-17(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -21(%rbp)

movl 	$0, -25(%rbp)

movl 	-21, %ebx 
movl 	-25, %edx 
movl 	%ebx, -2600(%rbp, %rdx, 4) 

.falseCond0: 

movl 	4(%rbp), %eax
cmpl		0(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -29(%rbp)

movl 	$1, -33(%rbp)

movl		-33(%rbp), %eax
cmpl 	-29(%rbp), %eax

jne 		.falseCond1

movl 	$5, -37(%rbp)

movl		4(%rbp), %eax 
movl		-37(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -41(%rbp)

movl 	$1, -45(%rbp)

movl 	$1, -49(%rbp)

movl		-49(%rbp), %eax 
movl		-45(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -53(%rbp)

movl 	-41, %ebx 
movl 	-53, %edx 
movl 	%ebx, -2600(%rbp, %rdx, 4) 

jmp 		.endIf2

.falseCond1: 

movl		4(%rbp), %eax 
movl		4(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -57(%rbp)

movl 	0, %ebx 
movl 	-57, %edx 
movl 	%ebx, -2600(%rbp, %rdx, 4) 

.endIf2: 

movl 	$0, -61(%rbp)

movl		-61(%rbp), %eax
movl		%eax, -2632(%rbp)

.beginWhile4: 

movl 	$589, -65(%rbp)

movl		-2632(%rbp), %eax
cmpl		-65(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -69(%rbp)

movl 	$1, -73(%rbp)

movl		-73(%rbp), %eax
cmpl 	-69(%rbp), %eax

jne 		.endWhile3

movl 	$2, -77(%rbp)

movl		-2632(%rbp), %eax 
movl		-77(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -81(%rbp)

movl 	-81, %ebx 
movl 	-2632, %edx 
movl 	%ebx, 0(%rbp, %rdx, 4) 

movl 	$1, -85(%rbp)

movl		$1, %eax
movl		%eax, -93(%rbp)

movl		-85(%rbp), %eax 
movl		-93(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -89(%rbp)

movl		-89(%rbp), %eax
movl		%eax, -2632(%rbp)

jmp 		.beginWhile4

.endWhile3: 

movl 	$8, -97(%rbp)

movl		-97(%rbp), %eax
movl		%eax, -2632(%rbp)

.beginWhile6: 

movl 	$0, -101(%rbp)

movl		-2632(%rbp), %eax
cmpl		-101(%rbp), %eax
setge 	%al
movzbl %al, %eax
movl		%eax, -105(%rbp)

movl 	$1, -109(%rbp)

movl		-109(%rbp), %eax
cmpl 	-105(%rbp), %eax

jne 		.endWhile5

movl 	$3, -113(%rbp)

movl		0(%rbp), %eax 
movl		-113(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -117(%rbp)

movl 	-117, %ebx 
movl 	-2632, %edx 
movl 	%ebx, -2356(%rbp, %rdx, 4) 

movl 	$1, -121(%rbp)

movl		$1, %eax
movl		%eax, -129(%rbp)

movl		-129(%rbp), %eax 
movl		-121(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -125(%rbp)

movl		-125(%rbp), %eax
movl		%eax, -2632(%rbp)

jmp 		.beginWhile6

.endWhile5: 

movl 	$0, -133(%rbp)

movl		-133(%rbp), %eax
movl		%eax, -2632(%rbp)

.beginWhile8: 

movl 	$5, -137(%rbp)

movl 	$9, -141(%rbp)

movl		-137(%rbp), %eax 
movl		-141(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -145(%rbp)

movl 	$40, -149(%rbp)

movl		-149(%rbp), %eax 
movl		-145(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -153(%rbp)

movl		-2632(%rbp), %eax
cmpl		-153(%rbp), %eax
setle 	%al
movzbl %al, %eax
movl		%eax, -157(%rbp)

movl 	$1, -161(%rbp)

movl		-161(%rbp), %eax
cmpl 	-157(%rbp), %eax

jne 		.endWhile7

movl		0(%rbp), %eax
cmpl		-2356(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -165(%rbp)

movl 	-165, %ebx 
movl 	-2632, %edx 
movl 	%ebx, -2580(%rbp, %rdx, 4) 

movl 	$1, -169(%rbp)

movl		-2632(%rbp), %eax 
movl		-169(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -173(%rbp)

movl		-173(%rbp), %eax
movl		%eax, -2632(%rbp)

jmp 		.beginWhile8

.endWhile7: 

movl		-2600(%rbp), %eax
leave
ret

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

call 	printf

mov 		$0, %eax
leave
ret

