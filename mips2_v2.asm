.data
	msg1:.asciiz "Digite valor 1: "
	msg2:.asciiz "Digite valor 2: "
	nova_linha:.asciiz "\n"
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	move $t2, $t0
	move $t0, $t1
	move $t1, $t2
	
	li $v0,1
	move $a0, $t0
	syscall
	
	li $v0,4
	la $a0, nova_linha
	syscall
	
	li $v0,1
	move $a0, $t1
	syscall
	
	li $v0, 10
	syscall