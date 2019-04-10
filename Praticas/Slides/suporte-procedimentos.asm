#label de procedimento
addi $sp, $sp, –12 # ajusta o sp para empilhar 3 palavras
sw $t1, 8($sp) # salva o reg. $t1 na pilha
sw $t0, 4($sp) # salva o reg. $t0 na pilha
sw $s0, 0($sp) # salva o reg. $s0 na pilha

# corpo do procedimento
add $t0,$a0,$a1 # register $t0 contém g + h
add $t1,$a2,$a3 # register $t1 contém i + j
sub $s0,$t0,$t1 # f = $t0 – $t1, (g + h)–(i + j)

#coloca o valor de retorno do proc. no reg. $v0
add $v0,$s0,$zero # returns f ($v0 = $s0 + 0)

#restaurar os valores dos registradores salvos na pilha
lw $s0, 0($sp) # restaura o $s0
lw $t0, 4($sp) # restaura o $t0
lw $s1, 8($sp) # restaura o $s1
add $sp,$sp,12 # atualiza o sp (pop três palavras)

#retorna
jr $ra