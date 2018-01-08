.text
	lw $a0, 0($a1)
	jal atoi
	sw $v0, 0($sp)
	addi $sp, $sp, -4
	jal main_integer
	li $v0, 10
	syscall
main_integer:
	sw $fp, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $fp, $sp, 4
	addi $sp, $sp, -48
#_main_integer_0
	li $t0, -1
	sw $t0, -40($fp)
#_main_integer_1
	li $t0, 0
	sw $t0, -44($fp)
#_main_integer_2
#While
#_main_integer_3
	b _label_main_integer_2
#_label_main_integer_1
_label_main_integer_1:
#_main_integer_5
#Corps de boucle
#_main_integer_6
	li $t0, 0
	sw $t0, -40($fp)
#_main_integer_7
	li $t0, 0
	sw $t0, -48($fp)
#_main_integer_8
#While
#_main_integer_9
	b _label_main_integer_4
#_label_main_integer_3
_label_main_integer_3:
#_main_integer_11
#Corps de boucle
#_main_integer_12
#If
#_main_integer_13
	lw $t0, -44($fp)
	lw $t1, -44($fp)
	mul $t0, $t0, $t1
	sw $t0, -20($fp)
#_main_integer_14
	lw $t0, -48($fp)
	lw $t1, -48($fp)
	mul $t0, $t0, $t1
	sw $t0, -24($fp)
#_main_integer_15
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
#_main_integer_16
	lw $t0, 8($fp)
	lw $t1, 8($fp)
	mul $t0, $t0, $t1
	sw $t0, -32($fp)
#_main_integer_17
	lw $t0, -28($fp)
	lw $t1, -32($fp)
	slt $t0, $t0, $t1
	sw $t0, -36($fp)
#_main_integer_18
	lw $t0, -36($fp)
	bnez $t0, _label_main_integer_5
#_main_integer_19
#Bloc else
#_main_integer_20
	li $a0, 35
	li $v0, 11
	syscall
#_main_integer_21
	b _label_main_integer_6
#_label_main_integer_5
_label_main_integer_5:
#_main_integer_23
#Bloc then
#_main_integer_24
	li $a0, 46
	li $v0, 11
	syscall
#_main_integer_25
	li $t0, -1
	sw $t0, -40($fp)
#_label_main_integer_6
_label_main_integer_6:
#_main_integer_27
#Fin if
#_main_integer_28
	li $a0, 32
	li $v0, 11
	syscall
#_main_integer_29
	lw $t0, -48($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -16($fp)
#_main_integer_30
	lw $t0, -16($fp)
	sw $t0, -48($fp)
#_label_main_integer_4
_label_main_integer_4:
#_main_integer_32
#Test de boucle
#_main_integer_33
	lw $t0, 8($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -8($fp)
#_main_integer_34
	lw $t0, -48($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -12($fp)
#_main_integer_35
	lw $t0, -12($fp)
	bnez $t0, _label_main_integer_3
#_main_integer_36
#Fin boucle
#_main_integer_37
	li $a0, 10
	li $v0, 11
	syscall
#_main_integer_38
	lw $t0, -44($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -4($fp)
#_main_integer_39
	lw $t0, -4($fp)
	sw $t0, -44($fp)
#_label_main_integer_2
_label_main_integer_2:
#_main_integer_41
#Test de boucle
#_main_integer_42
	lw $t0, -40($fp)
	bnez $t0, _label_main_integer_1
#_main_integer_43
#Fin boucle
	addi $sp, $sp, 48
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	jr $ra
atoi:
	move $t0, $a0
	li $t1, 0
	li $t2, 10
atoi_loop:
	lbu $t3, 0($t0)
	beq $t3, $zero, atoi_end
	li $t4, 48
	blt $t3, $t4, atoi_error
	li $t4, 57
	bgt $t3, $t4, atoi_error
	addi $t3, $t3, -48
	mul $t1, $t1, $t2
	add $t1, $t1, $t3
	addi $t0, $t0, 1
	b atoi_loop
atoi_error:
	li $v0, 10
	syscall
atoi_end:
	move $v0, $t1
	jr $ra
.data
