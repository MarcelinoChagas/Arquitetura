.data
	#imprimindo uma String
	myMessage:  .asciiz "Hello World\n"
	
	#imprimindo outra String
	myMessage2: .asciiz "Outro teste\n"
	
	#imprimindo um Inteiro
	age: .word 23
	
.text

	addi x10, zero,4 	
	la x11, myMessage
	ecall
    
    addi x10, zero, 4
    la x11, myMessage2
    ecall
       
    addi x10, zero, 1
    lw x11, age
    ecall
