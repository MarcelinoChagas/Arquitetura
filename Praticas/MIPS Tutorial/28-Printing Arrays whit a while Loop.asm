.data
	myArray: .space 12 # Space reserva bytes 4 bytes = 1 inteiro logo 12/4 = 3 inteiros
	newLine: .asciiz "\n"
.text
	main:
	addi $s0, $zero, 4
	addi $s1, $zero, 10
	addi $s2, $zero, 12
	
	#Index = $t0
	addi $t0, $zero, 0
	
	sw $s0, myArray($t0)
	   addi $t0, $t0, 4 #Soma 4 bytes para proxina posicao do array
	sw $s1, myArray($t0)
	   addi $t0, $t0, 4
	sw $s2, myArray($t0)
	
	#Clear $t0 to 0
	addi $t0, $zero,0
	
	while:
		# Verifica se o valor de $t0 é igual a 12
		beq $t0, 12, exit
		
		#Lê o valor do array e atribui a $t6
		lw $t6, myArray($t0)
		
		#Vai adicionar +4 no index até acabar o loop
		add $t0, $t0, 4 
		
		#Print current number
		li $v0, 1
		move $a0, $t6
		syscall
		
		#Print a new Line
		li $v0, 4
		la $a0, newLine
		syscall
		
		j while
	
	exit:
		#Tell system this is end of program
		li $v0, 10
		syscall