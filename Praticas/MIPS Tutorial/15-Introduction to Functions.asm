.data
	message: .asciiz "Eae essa galera.\nMeu nome � Marcelino\n"
.text
  main:
  	jal displayMessage #Neste comando, pula o programa para a label correspondente
  	
  	addi $s0,$zero,5
  	
  	#Imprimir o n�mero 5 na tela
  	li $v0,1
  	add $a0, $zero, $s0
  	syscall
  	
  li $v0, 10
  syscall
  
  displayMessage:
  	li $v0, 4
  	la $a0, message
  	syscall
  	
  	jr $ra #Este comando retorna para a posi��o da qual foi executada essa label