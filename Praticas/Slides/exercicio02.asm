.data
.text
addi $s1,$zero, 5
addi $s2,$zero, 5
addi $s3,$zero, 20
	
	bne $s1, $s2, se
		bne $s2, $s3, ise
			add $t0, $s1, $s2
			add $t1, $t0, $s3
		j saida
		ise: add $t0, $s1, $s2
		     sub $t1, $t0, $s3
		saida:		
	addi $t3, $t1, 1
	j Exit
	se: add $t4,$t1,$t2
Exit:
