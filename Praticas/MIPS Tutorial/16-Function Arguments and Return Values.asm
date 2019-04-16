.data
.text

  main:
	addi $a1,$zero,50	#Atribuindo o valor 50 à $a1
	addi $a2,$zero,100	#Atribuindo o valor 100 à $a2
	
	jal addNumber
	
	li $v0,1
	addi $a0, $v1, 0
	syscall
  
  #Este comando é para finalizar a execução
  li $v0,10
  syscall
  
  addNumber:
  	add $v1,$a1,$a2
  	jr $ra
