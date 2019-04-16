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
	
	jal printTheValue
	
#Linha que finaliza o código
li $v0, 10
syscall

  addRegister:
  	addi $sp, $sp, -8
  	sw $s0, 0($sp)
  	sw $ra, 4($sp)
  	
  	addi $s0, $s0, 30
  	
  	#Nested Procedure
  	jal printTheValue
  	
  	lw $s0, 0($sp)
  	lw $ra, 4($sp)
  	addi $sp, $sp, 4
  	
  	jr $ra #Voltar para onde foi chamado
  
  printTheValue:

  	#Imprimindo um novo valor na função
  	li $v0, 1
  	move $a0, $s0
  	syscall
  	
  	jr $ra