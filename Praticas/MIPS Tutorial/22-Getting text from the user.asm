.data
	message: .asciiz "Ola, "
	userInput: .space 20
.text
  main:
  	#Obtem o texto digitado pelo usuário
  	li $v0, 8
  	la $a0, userInput
  	li $a1, 20
  	syscall
  	
  	#Exibe o texto Ola
  	li $v0, 4
  	la $a0, message
  	syscall
  	
  	#Exibe o nome
  	li $v0, 4
  	la $a0, userInput
  	syscall
  
  #Informa ao sistema para finalizar o main
  li $v0, 10
  syscall