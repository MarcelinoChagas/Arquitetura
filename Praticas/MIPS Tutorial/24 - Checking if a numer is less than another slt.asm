.data
  message: .asciiz "Este número é menor que o outro"
.text
  addi $t0,$zero, 1
  addi $t1,$zero, 200
  
  slt $s0, $t0, $t1 #Verifica se $t0 < $t1 e atribui a $s0
  bne $s0, $zero, imprimirMensagem
  
  #Para finalizar o programa
  li $v0, 10
  syscall
  
  imprimirMensagem:
  	li $v0, 4
  	la $a0, message
  	syscall