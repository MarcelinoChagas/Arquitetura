.data
  # 24 bytes
  vetorV: .word 1,3,2,1,4,5
  vetorW: .space 24
  espaco: .asciiz ", "
  message: .asciiz "Vetor V\n"
.text

  main:
	#Indice do Vetor
	addi $t0, $zero, 0

  	while:
  		bge $t0, 24, exit
  		
  		lw $t2, vetorV($t0)
  		
  		jal dobroVetor
  		
  		add $t0, $t0, 4
  		
  		#Imprimindo Valores
  		li $v0, 1
  		move $a0, $t2
  		syscall
  		
  		#Imprimindo a virgula
  		li $v0, 4
  		la $a0, espaco
  		syscall
  		
  		j while
  	exit:
  		li $v0, 4
  		la $a0, message
  		syscall
  		
  		li $v0, 10
  		syscall
  		
  	dobroVetor:
		
		mult
		
		lw $t3, vetorW($t0)
		
		jr $ra