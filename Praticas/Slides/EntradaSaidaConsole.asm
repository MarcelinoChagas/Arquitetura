.data
msg: .asciiz "Hello World\n"
msg1: .ascii "Ola"
msg2: .asciiz "Tudo bem"

main:
li $v0, 4
la $a0, msg
syscallN