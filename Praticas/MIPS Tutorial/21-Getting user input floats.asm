.data
	message:	.asciiz "Entre com o valor de PI: "
	zeroAsFloat:	.float 0.0
.text
	lwc1 $f4, zeroAsFloat
	
	#Display Message
	li $v0, 4
	la $a0, message
	syscall
	
	#L� a entrada do usu�rio
	li $v0, 6
	syscall
	
	#Display Value
	li $v0, 2
	add.s $f12, $f0, $f4
	syscall