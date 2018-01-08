.text
	lw $a0, 0($a1)
	jal atoi
	sw $v0, 0($sp)
	addi $sp, $sp, -4
	move $s0, $gp
	jal main_integer
	li $v0, 10
	syscall
main_integer:
	sw $fp, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $fp, $sp, 4
	addi $sp, $sp, -16
#_main_integer_0
	li $t0, -1
	sw $t0, -4($fp)
#_main_integer_1
	li $t0, 0
	sw $t0, -8($fp)
#_main_integer_2
	li $t0, 5
	sw $t0, -12($fp)
#_main_integer_3
#Try
#_main_integer_4
	move $s1, $fp
	move $t0, $gp
	li $t1, 3
	addi $gp, $gp, 12
	sw $t1, 0($gp)
	sw $t0, 4($gp)
	la $t1, _label_main_integer_1
	sw $t1, 8($gp)
#_main_integer_5
	li $t0, 49
	sw $t0, -16($fp)
#_main_integer_6
	move $t0, $gp
	beq $s0, $t0, fin
	lw $s2, 8($gp)
	addi $gp, $gp, -12
	li $s3, 1
	bne $fp, $s1, close_main_integer
	jr $s2
fin:
	li $v0, 10
	syscall
#_main_integer_7
	lw $a0, -16($fp)
	li $v0, 11
	syscall
#_main_integer_8
	b _label_main_integer_2
#_main_integer_9
#Catch
#_label_main_integer_1
_label_main_integer_1:
#_main_integer_11
	lw $a0, 8($fp)
	li $v0, 11
	syscall
#_label_main_integer_2
_label_main_integer_2:
#_main_integer_13
	lw $t0, 16($gp)
	move $gp, $t0
	li $s3, 0
close_main_integer:
	addi $sp, $sp, 16
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
