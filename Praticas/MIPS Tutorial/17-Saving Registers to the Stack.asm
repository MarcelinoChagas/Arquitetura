.data
  newLine: .asciiz "\n"
.text

  main:
	addi $s0, $zero, 10
	
	jal addRegister
	
	#Imprimir uma nova linha
	li $v0,4
	la $a0, newLine
	syscall
	
	#Imprimindo o valor
	li $v0, 1
	move $a0, $s0
	syscall
	
#Linha que finaliza o c�digo
li $v0, 10
syscall

  addRegister:
  	addi $sp, $sp, -4
  	sw $s0, 0($sp)
  	
  	addi $s0, $s0, 30
  	
  	#Imprimindo um novo valor na fun��o
  	li $v0, 1
  	move $a0, $s0
  	syscall
  	
  	lw $s0, 0($sp)
  	addi $sp, $sp, 4
  	
  	jr $ra #Voltar para onde foi chamado
  	