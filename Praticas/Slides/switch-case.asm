.data
jTable:	.word	L0,L1,L2,L3	#tabela de Labels

.text
la $t4, jTable		#$t4 = endereço base de tabela de desvios
#Definindo Variáveis
li $s1, 15	#g = $s1 = 15
li $s2, 20	#h = $s2 = 20
li $s3, 10	#i = $s3 = 10
li $s4, 5	#j = $s4 = 5
li $s5, 2	#k = $s5 = 2 supondo que k é igual a 2

L0: add $s0, $s3, $s4
j Exit
L1: add $s0, $s1, $s2
j Exit
L2: sub $s0, $s1, $s2
j Exit
L3: sub $s0, $s3, $s4
Exit: