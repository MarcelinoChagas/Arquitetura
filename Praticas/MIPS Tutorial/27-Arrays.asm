.data
	myArray: .space 12 # Space reserva bytes 4 bytes = 1 inteiro logo 12/4 = 3 inteiros
.text
	addi $s0, $zero, 4
	addi $s1, $zero, 10
	addi $s2, $zero, 12
	
	#Index = $t0
	addi $t0, $zero, 0
	
	sw $s0, myArray($t0)
	   addi $t0, $t0, 4
	sw $s1, myArray($t0)
	   addi $t0, $t0, 4
	sw $s2, myArray($t0)
	
	lw $t6, myArray($zero)
	
	li $v0, 1
	add $a0, $t6, 0
	syscall