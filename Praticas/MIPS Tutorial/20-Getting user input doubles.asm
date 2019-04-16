.data
	prompt: .asciiz "Entre com um valor: "
.text
	#Display Message to the user
	li $v0, 4
	la $a0, prompt
	syscall
	
	#Pega o valor double do usuário
	li $v0, 7
	syscall
	
	#Display the user input
	li $v0, 3
	add.d $f12, $f0, $f10
	syscall
	