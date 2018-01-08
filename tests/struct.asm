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
	addi $sp, $sp, -24
#_main_integer_0
	li $t0, 2
	li $t1, 4
	mul $a0, $t0, $t1
	li $v0, 9
	syscall
	sw $t0, 0($v0)
	sw $v0, -16($fp)
#_main_integer_1
	lw $t0, -16($fp)
	sw $t0, -20($fp)
#_main_integer_2
	li $t0, 0
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -20($fp)
	add $t0, $t0, $t1
	lw $t1, 8($fp)
	sw $t1, 0($t0)
#_main_integer_3
	lw $t0, 8($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -12($fp)
#_main_integer_4
	li $t0, 1
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -20($fp)
	add $t0, $t0, $t1
	lw $t1, -12($fp)
	sw $t1, 0($t0)
#_main_integer_5
	li $t0, 0
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -20($fp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -8($fp)
#_main_integer_6
	lw $a0, -8($fp)
	li $v0, 11
	syscall
#_main_integer_7
	li $t0, 1
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -20($fp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -4($fp)
#_main_integer_8
	lw $a0, -4($fp)
	li $v0, 11
	syscall
	addi $sp, $sp, 24
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
