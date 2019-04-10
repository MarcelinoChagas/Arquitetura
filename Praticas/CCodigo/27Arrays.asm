.data
	vetor: .space 40
	num: .asciiz "Informe um numero: "
.text

main:
	la $t0, vetor

	li $v0, 4
	la $a0, num
	syscall

	li $v0, 5
	sw $v0,($t0)
	syscall

loop: