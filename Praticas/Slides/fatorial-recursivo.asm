.data
.text

#iniciou o valor de $a0 com o numero 5
addi $a0,$zero, 5

fatorial:
#Primeiro salva $ra e $a0 na pilha

addi $sp, $sp,-8	#ajusta a pilha para 2 itens
sw $ra, 4($sp)		#save o end. retorno na pilha
sw $a0, 0($sp)		#salva o argumento n ($a0) na pilha

#testa caso básico (n<1)asadasd
slti $t0, $a0, 1	#testa se n < 1
beq $t0, $zero, L1

#se n<1, fatorial coloca 1 em $v0, atualiza a pilha e retorna
addi $v0,$zero,1
addi $sp,$sp,8
jr $ra

#quando n>=1
L1:addi $a0,$a0,-1
jal fatorial

#quando fatorial retorna (restaura os antigos valores de $a0 e $ra)
lw $a0,0($sp)	#restaura o argumento n($a0)
lw $ra, 4($sp)	#restaura o end. retorno $ra
addi $sp,$sp,8	#ajusta o sp (retirada de 2 itens)

mul $v0,$a0,$v0	#retorna *fact(n-1), novo valor de $v0 = $a0 * $v0
jr $ra		#return a quem chamou o procedimento
