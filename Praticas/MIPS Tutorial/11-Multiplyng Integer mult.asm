.data

.text
	addi $t0, $zero, 2000
	addi $t1, $zero, 10
	
	mult $t0,$t1
	
	mflo $s0 #Utilizado na multiplicação e divisão, move para um registro baixo
	
	#Display do Produto
	li $v0, 1
	add $a0, $zero, $s0
	syscall