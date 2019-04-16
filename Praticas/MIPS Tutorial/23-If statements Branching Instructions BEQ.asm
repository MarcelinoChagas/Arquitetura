.data
  message: .asciiz "Numeros são iguais"
  message2: .asciiz "Nada acontece"
.text
  main:
    addi $t0, $zero, 5
    addi $t1, $zero, 20
    
    beq $t0, $t1, numerosIguais
    
    #Syscall para finalizar o programa
    li $v0, 10
    syscall
  
  numerosIguais:
    li $v0, 4
    la $a0, message
    syscall
