.data
c: .word 1, 3, 2, 1, 4, 5
.text

li $s1, 3                # determinando o valor para $s1
la $s2, c                # colocando o endereço do array em $s2
li $t2,                # colocando o índice do array em $t2
add $t2, $t2, $t2        # “2i”
add $t2, $t2, $t2        # “4i”
add $t1, $t2, $s2        # combinando os dois componentes do endereço
lw $t0, 0 ( $t1 )        # obtendo o valor da célula do array
add $s0, $s1, $t0