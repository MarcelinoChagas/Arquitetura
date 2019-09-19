addi a1, zero, 1        # a = 1  
addi a2, zero, 64       # b = 64
addi a3, zero, 25       # c = 25
addi a4, zero, 20       # x = 20

addi a4, zero, 0        # x = 0

bge a1, a4, and1        # a >= a4 (pois e sempre zero)
jal exit                # termina

and1:
	addi a5, zero, 64       # a5 = 64
    bge a5, a2, and2        # a5 >= b
    jal exit                # termina
    
    and2:
    	addi a5, zero, 24   # a5 = 24
		blt a5, a3, and3    # a3 > a5 (Perguntar ao Professor)
        jal exit            # termina
        
        and3:
			addi a4, zero, 1    # x = 1
exit: