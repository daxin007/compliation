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
	addi $sp, $sp, 0
#_main_integer_0
	li $t0, 0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, 8($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	jal loop_integer_integer
	addi $sp, $sp, 8
	addi $sp, $sp, 0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	jr $ra
loop_integer_integer:
	sw $fp, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $fp, $sp, 4
	addi $sp, $sp, -12
#_loop_integer_integer_0
#If
#_loop_integer_integer_1
	sw $zero, 0($sp)
	addi $sp, $sp, -4
	lw $t0, 12($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, 8($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	jal point_integer_integer
	addi $sp, $sp, 8
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	sw $t0, -8($fp)
#_loop_integer_integer_2
	sw $zero, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, 8($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	jal line_integer_integer
	addi $sp, $sp, 8
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	sw $t0, -12($fp)
#_loop_integer_integer_3
	lw $t0, -12($fp)
	bnez $t0, _label_loop_integer_integer_1
#_loop_integer_integer_4
#Bloc else
#_loop_integer_integer_5
	b _label_loop_integer_integer_2
#_label_loop_integer_integer_1
_label_loop_integer_integer_1:
#_loop_integer_integer_7
#Bloc then
#_loop_integer_integer_8
	lw $t0, 12($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -4($fp)
#_loop_integer_integer_9
	lw $t0, -4($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, 8($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	jal loop_integer_integer
	addi $sp, $sp, 8
#_label_loop_integer_integer_2
_label_loop_integer_integer_2:
#_loop_integer_integer_11
#Fin if
	addi $sp, $sp, 12
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	jr $ra
point_integer_integer:
	sw $fp, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $fp, $sp, 4
	addi $sp, $sp, -28
#_point_integer_integer_0
	li $t0, 0
	sw $t0, -28($fp)
#_point_integer_integer_1
#While
#_point_integer_integer_2
	b _label_point_integer_integer_2
#_label_point_integer_integer_1
_label_point_integer_integer_1:
#_point_integer_integer_4
#Corps de boucle
#_point_integer_integer_5
	lw $t0, -28($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -24($fp)
#_point_integer_integer_6
	lw $t0, -24($fp)
	sw $t0, -28($fp)
#_label_point_integer_integer_2
_label_point_integer_integer_2:
#_point_integer_integer_8
#Test de boucle
#_point_integer_integer_9
	lw $t0, 12($fp)
	lw $t1, 12($fp)
	mul $t0, $t0, $t1
	sw $t0, -4($fp)
#_point_integer_integer_10
	lw $t0, -28($fp)
	lw $t1, -28($fp)
	mul $t0, $t0, $t1
	sw $t0, -8($fp)
#_point_integer_integer_11
	lw $t0, -4($fp)
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	sw $t0, -12($fp)
#_point_integer_integer_12
	lw $t0, 8($fp)
	lw $t1, 8($fp)
	mul $t0, $t0, $t1
	sw $t0, -16($fp)
#_point_integer_integer_13
	lw $t0, -12($fp)
	lw $t1, -16($fp)
	slt $t0, $t0, $t1
	sw $t0, -20($fp)
#_point_integer_integer_14
	lw $t0, -20($fp)
	bnez $t0, _label_point_integer_integer_1
#_point_integer_integer_15
#Fin boucle
#_point_integer_integer_16
	lw $t0, -28($fp)
	sw $t0, 16($fp)
	addi $sp, $sp, 28
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	jr $ra
line_integer_integer:
	sw $fp, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $fp, $sp, 4
	addi $sp, $sp, -20
#_line_integer_integer_0
	li $t0, 0
	sw $t0, 16($fp)
#_line_integer_integer_1
	li $t0, 0
	sw $t0, -20($fp)
#_line_integer_integer_2
#While
#_line_integer_integer_3
	b _label_line_integer_integer_2
#_label_line_integer_integer_1
_label_line_integer_integer_1:
#_line_integer_integer_5
#Corps de boucle
#_line_integer_integer_6
#If
#_line_integer_integer_7
	lw $t0, -20($fp)
	lw $t1, 12($fp)
	slt $t0, $t0, $t1
	sw $t0, -16($fp)
#_line_integer_integer_8
	lw $t0, -16($fp)
	bnez $t0, _label_line_integer_integer_3
#_line_integer_integer_9
#Bloc else
#_line_integer_integer_10
	li $a0, 35
	li $v0, 11
	syscall
#_line_integer_integer_11
	b _label_line_integer_integer_4
#_label_line_integer_integer_3
_label_line_integer_integer_3:
#_line_integer_integer_13
#Bloc then
#_line_integer_integer_14
	li $a0, 46
	li $v0, 11
	syscall
#_line_integer_integer_15
	li $t0, -1
	sw $t0, 16($fp)
#_label_line_integer_integer_4
_label_line_integer_integer_4:
#_line_integer_integer_17
#Fin if
#_line_integer_integer_18
	li $a0, 32
	li $v0, 11
	syscall
#_line_integer_integer_19
	lw $t0, -20($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -12($fp)
#_line_integer_integer_20
	lw $t0, -12($fp)
	sw $t0, -20($fp)
#_label_line_integer_integer_2
_label_line_integer_integer_2:
#_line_integer_integer_22
#Test de boucle
#_line_integer_integer_23
	lw $t0, 8($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -4($fp)
#_line_integer_integer_24
	lw $t0, -20($fp)
	lw $t1, -4($fp)
	slt $t0, $t0, $t1
	sw $t0, -8($fp)
#_line_integer_integer_25
	lw $t0, -8($fp)
	bnez $t0, _label_line_integer_integer_1
#_line_integer_integer_26
#Fin boucle
#_line_integer_integer_27
	li $a0, 10
	li $v0, 11
	syscall
	addi $sp, $sp, 20
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
