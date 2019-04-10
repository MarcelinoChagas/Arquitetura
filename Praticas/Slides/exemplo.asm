.data
.text
lw $t0,1200($t1) #temporary reg $t0 gets A[300]
add $t0,$s2,$t0  #temporary reg $t0 gets h + A[300]
sw $t0,1200($t1) #Stores h + A[300] back into A[300]

