.data
.text
lui $s3,0x1001
addi $s3,$s3,0x0020
addi $s2,$zero,10

lw $t0,32($s3)
add $t0,$s2,$t0
sw $t0,48($s3)