.data
  message: .asciiz "Fala tu porra"
.text
  main:
	addi $s0, $zero, 10
	
	bgtz $s0, mensagemDisplay #Verifica se Valor é maior que 0 e pula para o display
  #Fim do main
  li $v0, 10
  syscall
  
  mensagemDisplay:
	li $v0, 4
	la $a0, message
	syscall
