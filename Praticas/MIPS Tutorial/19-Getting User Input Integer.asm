.data
	prompt:	.asciiz "Digite sua idade: "
	message: .ascii "\nSua idade e: "
.text
	#Prompt será utilizado para entrar com a idade
	li $v0, 4
	la $a0, prompt
	syscall
	
	#Vai obter a sua idade
	li $v0, 5
	syscall
	
	#Armazena o resultado em $t0
	move $t0, $v0
	
	#Display com a mensagem
	li $v0, 4
	la $a0, message
	syscall
	
	#Exibe sua idade
	li $v0, 1
	move $a0, $t0
	syscall