.data
$multiplicacao: .asciiz "\nmultiplicacao: " 
$subtracao: .asciiz "\nsubtracao: " 
$soma: .asciiz  "soma: " 


$message1: .asciiz "\1º Operando: "
$message2: .asciiz "\n2º Operando: "
$message3: .asciiz "\nEscolha a operação:\n1-Soma\n2-Subtracao\n3-Multiplicacao\n"

.text
main:
	li $v0,4 
	la $a0, $message1 
	syscall 
	
	li $v0, 5	#le a entrada
	syscall 
	
	move $s0, $v0 
	
	li $v0,4	
	la $a0, $message2 
	syscall 
	
	li $v0, 5	#le a entrada
	syscall 
	
	move $s1, $v0 
	
	li $v0,4 
	la $a0, $message3 
	syscall 
	
	li $v0, 5 
	syscall 
	
#verifica as entradas para fazer os desvio para as operacoes
	move $s2, $v0 
	beq $s2,3,mulOp 
	beq $s2,1,sumOp 
	beq $s2,2,subOp 
	
	j termina 
	
sumOp:
	li $v0,4 
	la $a0, $soma 
	syscall 
	
	add $s2, $s0, $s1 
	j termina 
	
subOp:
	li $v0,4 
	la $a0, $subtracao 
	syscall 

	sub $s2, $s0, $s1 
	j termina 
	
mulOp:
	li $v0,4 
	la $a0, $multiplicacao 
	syscall 

	mul $s2, $s0, $s1 
	j termina 

termina:

	li $v0,1 
	la $a0, ($s2) 
	syscall 
	
	li $v0, 10 
	syscall