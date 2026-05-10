		#a fazer

.data
	#mensagem de input
	msg1: .asciiz "Digite o ano de nascimento: "
	msg2: .asciiz "Digite o mes de nascimento(1-12): "
	msg3: .asciiz "Digite o ano atual: "
	msg4: .asciiz "Digite o mes atual(1-12): "

	#input invalido
	msg_erro_mes: .asciiz "Mes invalido!"
	msg_erro_ano: .asciiz "Ano atual nao pode ser menor que o mes de nascimento!"
	
.text
main:
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	move $t0, $v0
	
	li $v0,4
	la $a0,msg2
	syscall
	
	li $v0,5
	syscall
	move $t1, $v0
	
	
	
