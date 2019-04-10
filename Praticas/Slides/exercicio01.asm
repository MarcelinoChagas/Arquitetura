.data
.text
addi $s1,$zero, 5
addi $s2,$zero, 5
addi $s3,$zero, 20

beq $s1, $s2, se
	add $s3,$s1,1
j saida
	se:add $t0,$s1,$s2
	add $s3,$t0,2
saida:
