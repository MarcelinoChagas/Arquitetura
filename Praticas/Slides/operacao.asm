.data
.text
addi $s1, $zero, 10
addi $s2, $zero, 20
addi $s3, $zero, 40
addi $s4, $zero, 40

add $t0,$s1,$s2 #temp t0 = $s1 + $s2
add $t1,$s3,$s4 #temp t1 = $s3 + $s4
sub $s5,$t0,$t1 # $5 = t0 - t1
