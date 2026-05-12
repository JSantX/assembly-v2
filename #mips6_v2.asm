.data
	msg1:.asciiz "Digite valor um:"
	msg2:.asciiz "Digite valor dois:"
	
	iguais:.asciiz "Termos iguais"
	
.text
.globl main
main:
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	move $t0,$v0
	
	li $v0,4
	la $a0,msg2
	syscall
	
	li $v0,5
	syscall
	move $t1,$v0
	
	beq $t0,$t1,ig
	j continuar
	
ig:
	li $v0,1
	la $a0,iguais
	syscall
	
continuar:
	bgt $t0,$t1,inv
	
	li $v0,4
	syscall
	move $a0,$t0
	
	li $v0,4
	syscall
	move $a0,$t1
	j fim
	
inv:
	li $v0,4
	syscall
	move $a0,$t1
	
	li $v0,4
	syscall
	move $a0,$t0
	j fim
	
fim:
	li $v0,10
	syscall