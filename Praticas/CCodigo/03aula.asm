.data
	Num1: .asciiz "Informe primeiro numero: "
	Num2: .asciiz "Informe segundo numero: "
	Resultado: .asciiz "Resultad: "
.text

	li $v0,4
	la $a0,Num1
	syscall

	li $v0,5
	syscall

	move $t0, $v0

	li $v0,4
	la $a0,Num2
	syscall

	li $v0, 5

	syscall

	move $t1, $v0
	
	#Os dois valores estão em $t0 e $t1
	
	add $t2,$t1,$t0
	li $v0,4
	la $a0,Resultado

	li $v0,1
	move $a0, $t2
	syscall