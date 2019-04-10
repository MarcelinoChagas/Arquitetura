.data
.text
#Desvio com BNE

addi $s1, $zero, 10 # g = 10
addi $s2, $zero, 20 # h = 20
addi $s3, $zero, 20 # i = 20

bne $s3, $s2, senao
add $s3, $s1, $s2
j saida
senao: sub $s3,$s1,$s2
saida: