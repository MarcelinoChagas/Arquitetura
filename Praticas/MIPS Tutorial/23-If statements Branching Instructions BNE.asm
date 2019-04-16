.data
  message: .asciiz "Numeros são diferentes"
  message2: .asciiz "Nada acontece"
.text
  main:
    addi $t0, $zero, 5
    addi $t1, $zero, 20
    
    bne $t0, $t1, numerosDiferentes
    
    #Syscall para finalizar o programa
    li $v0, 10
    syscall
  
  numerosDiferentes:
    li $v0, 4
    la $a0, message
    syscall
