.data
  message: .asciiz "Fala tu porra"
.text
  main:
	addi $s0, $zero, 10
	addi $s1, $zero, 14
	
	blt $s0, $s1, mensagemDisplay #Verifica se $s0 é menor que $s1 e pula para a mensagem
  #Fim do main
  li $v0, 10
  syscall
  
  mensagemDisplay:
	li $v0, 4
	la $a0, message
	syscall
