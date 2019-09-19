addi a1, zero, 5    # a = 5
addi a2, zero, 4    # b = 4
addi a3, zero, 12   # m = 12
add a3, zero, a1    # m = a
beq a3, a1, else    # (b = = m)
	sub a3, a2, a1  # m = b - a
else:
	sub a3, a1, a2 	# m = a - b