.data
	msg1:.asciiz "Digite salario atual: "
	msg2:.asciiz "Salario novo: "
	
.text
main:
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	move $t0, $v0
	
	li $t1, 25
	li $t2, 100
	
	mul $t3, $t0, $t1
	div $t3, $t3, $t2
	add $t4, $t0, $t3
	
	li $v0,1
	la $a0,msg2
	move $a0, $t4
	syscall
	
	li $v0, 10
	syscall