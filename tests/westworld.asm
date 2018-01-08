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
	addi $sp, $sp, -4
#_main_integer_0
	sw $zero, 0($sp)
	addi $sp, $sp, -4
	jal westworld
	addi $sp, $sp, 0
	beq $s4, $zero, saute_pas_westworld_11
	bne $fp, $s1, close_westworld
	jr $s2
saute_pas_westworld_11:
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	sw $t0, -4($fp)
#_main_integer_1
	lw $t0, -4($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 40
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 24
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	jal play_array_of_array_of_boolean_integer_integer
	addi $sp, $sp, 12
	beq $s4, $zero, saute_pas_play_array_of_array_of_boolean_integer_integer_10
	bne $fp, $s1, close_play_array_of_array_of_boolean_integer_integer
	jr $s2
saute_pas_play_array_of_array_of_boolean_integer_integer_10:
close_main_integer:
	addi $sp, $sp, 4
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	jr $ra
bass:
	sw $fp, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $fp, $sp, 4
	addi $sp, $sp, -8
#_bass_0
	li $t0, 6
	li $t1, 4
	mul $a0, $t0, $t1
	li $v0, 9
	syscall
	sw $t0, 0($v0)
	sw $v0, -4($fp)
#_bass_1
	lw $t0, -4($fp)
	sw $t0, -8($fp)
#_bass_2
	li $t0, 0
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 0
	sw $t1, 0($t0)
#_bass_3
	li $t0, 1
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 2
	sw $t1, 0($t0)
#_bass_4
	li $t0, 2
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 7
	sw $t1, 0($t0)
#_bass_5
	li $t0, 3
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 14
	sw $t1, 0($t0)
#_bass_6
	li $t0, 4
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 15
	sw $t1, 0($t0)
#_bass_7
	li $t0, 5
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 15
	sw $t1, 0($t0)
#_bass_8
	lw $t0, -8($fp)
	sw $t0, 8($fp)
close_bass:
	addi $sp, $sp, 8
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	jr $ra
theme:
	sw $fp, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $fp, $sp, 4
	addi $sp, $sp, -8
#_theme_0
	li $t0, 12
	li $t1, 4
	mul $a0, $t0, $t1
	li $v0, 9
	syscall
	sw $t0, 0($v0)
	sw $v0, -4($fp)
#_theme_1
	lw $t0, -4($fp)
	sw $t0, -8($fp)
#_theme_2
	li $t0, 0
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 14
	sw $t1, 0($t0)
#_theme_3
	li $t0, 1
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 14
	sw $t1, 0($t0)
#_theme_4
	li $t0, 2
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 15
	sw $t1, 0($t0)
#_theme_5
	li $t0, 3
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 14
	sw $t1, 0($t0)
#_theme_6
	li $t0, 4
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 14
	sw $t1, 0($t0)
#_theme_7
	li $t0, 5
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 15
	sw $t1, 0($t0)
#_theme_8
	li $t0, 6
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 14
	sw $t1, 0($t0)
#_theme_9
	li $t0, 7
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 12
	sw $t1, 0($t0)
#_theme_10
	li $t0, 8
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 10
	sw $t1, 0($t0)
#_theme_11
	li $t0, 9
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 10
	sw $t1, 0($t0)
#_theme_12
	li $t0, 10
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 10
	sw $t1, 0($t0)
#_theme_13
	li $t0, 11
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	li $t1, 10
	sw $t1, 0($t0)
#_theme_14
	lw $t0, -8($fp)
	sw $t0, 8($fp)
close_theme:
	addi $sp, $sp, 8
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	jr $ra
repeat_array_of_integer_integer:
	sw $fp, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $fp, $sp, 4
	addi $sp, $sp, -36
#_repeat_array_of_integer_integer_0
	li $t0, 2
	lw $t1, 8($fp)
	mul $t0, $t0, $t1
	sw $t0, -24($fp)
#_repeat_array_of_integer_integer_1
	lw $t0, -24($fp)
	li $t1, 4
	mul $a0, $t0, $t1
	li $v0, 9
	syscall
	sw $t0, 0($v0)
	sw $v0, -28($fp)
#_repeat_array_of_integer_integer_2
	lw $t0, -28($fp)
	sw $t0, -32($fp)
#_repeat_array_of_integer_integer_3
	li $t0, 0
	sw $t0, -36($fp)
#_repeat_array_of_integer_integer_4
#While
#_repeat_array_of_integer_integer_5
	b _label_repeat_array_of_integer_integer_2
#_label_repeat_array_of_integer_integer_1
_label_repeat_array_of_integer_integer_1:
#_repeat_array_of_integer_integer_7
#Corps de boucle
#_repeat_array_of_integer_integer_8
	lw $t0, -36($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, 12($fp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -20($fp)
#_repeat_array_of_integer_integer_9
	lw $t0, -36($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	lw $t1, -20($fp)
	sw $t1, 0($t0)
#_repeat_array_of_integer_integer_10
	lw $t0, -36($fp)
	lw $t1, 8($fp)
	add $t0, $t0, $t1
	sw $t0, -12($fp)
#_repeat_array_of_integer_integer_11
	lw $t0, -36($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, 12($fp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -16($fp)
#_repeat_array_of_integer_integer_12
	lw $t0, -12($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	lw $t1, -16($fp)
	sw $t1, 0($t0)
#_repeat_array_of_integer_integer_13
	lw $t0, -36($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -8($fp)
#_repeat_array_of_integer_integer_14
	lw $t0, -8($fp)
	sw $t0, -36($fp)
#_label_repeat_array_of_integer_integer_2
_label_repeat_array_of_integer_integer_2:
#_repeat_array_of_integer_integer_16
#Test de boucle
#_repeat_array_of_integer_integer_17
	lw $t0, -36($fp)
	lw $t1, 8($fp)
	slt $t0, $t0, $t1
	sw $t0, -4($fp)
#_repeat_array_of_integer_integer_18
	lw $t0, -4($fp)
	bnez $t0, _label_repeat_array_of_integer_integer_1
#_repeat_array_of_integer_integer_19
#Fin boucle
#_repeat_array_of_integer_integer_20
	lw $t0, 12($fp)
	sw $t0, 16($fp)
close_repeat_array_of_integer_integer:
	addi $sp, $sp, 36
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	jr $ra
burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer:
	sw $fp, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $fp, $sp, 4
	addi $sp, $sp, -48
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_0
	li $t0, 0
	sw $t0, -48($fp)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_1
#While
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_2
	b _label_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_2
#_label_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_1
_label_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_1:
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_4
#Corps de boucle
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_5
	li $t0, 0
	sw $t0, -40($fp)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_6
	lw $t0, -48($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, 20($fp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -32($fp)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_7
	lw $t0, -32($fp)
	lw $t1, 8($fp)
	add $t0, $t0, $t1
	sw $t0, -36($fp)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_8
	lw $t0, -36($fp)
	sw $t0, -44($fp)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_9
#While
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_10
	b _label_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_4
#_label_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_3
_label_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_3:
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_12
#Corps de boucle
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_13
	lw $t0, -48($fp)
	lw $t1, 12($fp)
	mul $t0, $t0, $t1
	sw $t0, -20($fp)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_14
	lw $t0, -20($fp)
	lw $t1, -40($fp)
	add $t0, $t0, $t1
	sw $t0, -24($fp)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_15
	lw $t0, -24($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, 24($fp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -28($fp)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_16
	lw $t0, -44($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -28($fp)
	add $t0, $t0, $t1
	li $t1, -1
	sw $t1, 0($t0)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_17
	lw $t0, -40($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -16($fp)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_18
	lw $t0, -16($fp)
	sw $t0, -40($fp)
#_label_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_4
_label_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_4:
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_20
#Test de boucle
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_21
	lw $t0, -40($fp)
	lw $t1, 12($fp)
	slt $t0, $t0, $t1
	sw $t0, -12($fp)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_22
	lw $t0, -12($fp)
	bnez $t0, _label_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_3
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_23
#Fin boucle
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_24
	lw $t0, -48($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -8($fp)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_25
	lw $t0, -8($fp)
	sw $t0, -48($fp)
#_label_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_2
_label_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_2:
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_27
#Test de boucle
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_28
	lw $t0, -48($fp)
	lw $t1, 16($fp)
	slt $t0, $t0, $t1
	sw $t0, -4($fp)
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_29
	lw $t0, -4($fp)
	bnez $t0, _label_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_1
#_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_30
#Fin boucle
close_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer:
	addi $sp, $sp, 48
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	jr $ra
blank_integer_integer:
	sw $fp, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $fp, $sp, 4
	addi $sp, $sp, -40
#_blank_integer_integer_0
	lw $t0, 8($fp)
	li $t1, 4
	mul $a0, $t0, $t1
	li $v0, 9
	syscall
	sw $t0, 0($v0)
	sw $v0, -24($fp)
#_blank_integer_integer_1
	lw $t0, -24($fp)
	sw $t0, -28($fp)
#_blank_integer_integer_2
	li $t0, 0
	sw $t0, -32($fp)
#_blank_integer_integer_3
#While
#_blank_integer_integer_4
	b _label_blank_integer_integer_2
#_label_blank_integer_integer_1
_label_blank_integer_integer_1:
#_blank_integer_integer_6
#Corps de boucle
#_blank_integer_integer_7
	lw $t0, 12($fp)
	li $t1, 4
	mul $a0, $t0, $t1
	li $v0, 9
	syscall
	sw $t0, 0($v0)
	sw $v0, -20($fp)
#_blank_integer_integer_8
	lw $t0, -20($fp)
	sw $t0, -40($fp)
#_blank_integer_integer_9
	li $t0, 0
	sw $t0, -36($fp)
#_blank_integer_integer_10
#While
#_blank_integer_integer_11
	b _label_blank_integer_integer_4
#_label_blank_integer_integer_3
_label_blank_integer_integer_3:
#_blank_integer_integer_13
#Corps de boucle
#_blank_integer_integer_14
	lw $t0, -36($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -40($fp)
	add $t0, $t0, $t1
	li $t1, 0
	sw $t1, 0($t0)
#_blank_integer_integer_15
	lw $t0, -36($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -16($fp)
#_blank_integer_integer_16
	lw $t0, -16($fp)
	sw $t0, -36($fp)
#_label_blank_integer_integer_4
_label_blank_integer_integer_4:
#_blank_integer_integer_18
#Test de boucle
#_blank_integer_integer_19
	lw $t0, -36($fp)
	lw $t1, 12($fp)
	slt $t0, $t0, $t1
	sw $t0, -12($fp)
#_blank_integer_integer_20
	lw $t0, -12($fp)
	bnez $t0, _label_blank_integer_integer_3
#_blank_integer_integer_21
#Fin boucle
#_blank_integer_integer_22
	lw $t0, -32($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -28($fp)
	add $t0, $t0, $t1
	lw $t1, -40($fp)
	sw $t1, 0($t0)
#_blank_integer_integer_23
	lw $t0, -32($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -8($fp)
#_blank_integer_integer_24
	lw $t0, -8($fp)
	sw $t0, -32($fp)
#_label_blank_integer_integer_2
_label_blank_integer_integer_2:
#_blank_integer_integer_26
#Test de boucle
#_blank_integer_integer_27
	lw $t0, -32($fp)
	lw $t1, 8($fp)
	slt $t0, $t0, $t1
	sw $t0, -4($fp)
#_blank_integer_integer_28
	lw $t0, -4($fp)
	bnez $t0, _label_blank_integer_integer_1
#_blank_integer_integer_29
#Fin boucle
#_blank_integer_integer_30
	lw $t0, -28($fp)
	sw $t0, 16($fp)
close_blank_integer_integer:
	addi $sp, $sp, 40
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	jr $ra
westworld:
	sw $fp, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $fp, $sp, 4
	addi $sp, $sp, -28
#_westworld_0
	sw $zero, 0($sp)
	addi $sp, $sp, -4
	li $t0, 40
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 24
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	jal blank_integer_integer
	addi $sp, $sp, 8
	beq $s4, $zero, saute_pas_blank_integer_integer_9
	bne $fp, $s1, close_blank_integer_integer
	jr $s2
saute_pas_blank_integer_integer_9:
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	sw $t0, -24($fp)
#_westworld_1
	lw $t0, -24($fp)
	sw $t0, -28($fp)
#_westworld_2
	sw $zero, 0($sp)
	addi $sp, $sp, -4
	jal theme
	addi $sp, $sp, 0
	beq $s4, $zero, saute_pas_theme_8
	bne $fp, $s1, close_theme
	jr $s2
saute_pas_theme_8:
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	sw $t0, -20($fp)
#_westworld_3
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 2
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	jal burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer
	addi $sp, $sp, 20
	beq $s4, $zero, saute_pas_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_7
	bne $fp, $s1, close_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer
	jr $s2
saute_pas_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_7:
#_westworld_4
	sw $zero, 0($sp)
	addi $sp, $sp, -4
	jal theme
	addi $sp, $sp, 0
	beq $s4, $zero, saute_pas_theme_6
	bne $fp, $s1, close_theme
	jr $s2
saute_pas_theme_6:
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	sw $t0, -16($fp)
#_westworld_5
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 2
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 24
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	jal burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer
	addi $sp, $sp, 20
	beq $s4, $zero, saute_pas_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_5
	bne $fp, $s1, close_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer
	jr $s2
saute_pas_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_5:
#_westworld_6
	sw $zero, 0($sp)
	addi $sp, $sp, -4
	jal bass
	addi $sp, $sp, 0
	beq $s4, $zero, saute_pas_bass_4
	bne $fp, $s1, close_bass
	jr $s2
saute_pas_bass_4:
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	sw $t0, -4($fp)
#_westworld_7
	sw $zero, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 6
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	jal repeat_array_of_integer_integer
	addi $sp, $sp, 8
	beq $s4, $zero, saute_pas_repeat_array_of_integer_integer_3
	bne $fp, $s1, close_repeat_array_of_integer_integer
	jr $s2
saute_pas_repeat_array_of_integer_integer_3:
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	sw $t0, -8($fp)
#_westworld_8
	sw $zero, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	jal repeat_array_of_integer_integer
	addi $sp, $sp, 8
	beq $s4, $zero, saute_pas_repeat_array_of_integer_integer_2
	bne $fp, $s1, close_repeat_array_of_integer_integer
	jr $s2
saute_pas_repeat_array_of_integer_integer_2:
	addi $sp, $sp, 4
	lw $t0, 0($sp)
	sw $t0, -12($fp)
#_westworld_9
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 24
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 1
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	jal burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer
	addi $sp, $sp, 20
	beq $s4, $zero, saute_pas_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_1
	bne $fp, $s1, close_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer
	jr $s2
saute_pas_burn_array_of_array_of_boolean_array_of_integer_integer_integer_integer_1:
#_westworld_10
	lw $t0, -28($fp)
	sw $t0, 8($fp)
close_westworld:
	addi $sp, $sp, 28
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	jr $ra
play_array_of_array_of_boolean_integer_integer:
	sw $fp, 0($sp)
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $fp, $sp, 4
	addi $sp, $sp, -40
#_play_array_of_array_of_boolean_integer_integer_0
	lw $t0, 8($fp)
	li $t1, 1
	sub $t0, $t0, $t1
	sw $t0, -32($fp)
#_play_array_of_array_of_boolean_integer_integer_1
	lw $t0, -32($fp)
	sw $t0, -36($fp)
#_play_array_of_array_of_boolean_integer_integer_2
#While
#_play_array_of_array_of_boolean_integer_integer_3
	b _label_play_array_of_array_of_boolean_integer_integer_2
#_label_play_array_of_array_of_boolean_integer_integer_1
_label_play_array_of_array_of_boolean_integer_integer_1:
#_play_array_of_array_of_boolean_integer_integer_5
#Corps de boucle
#_play_array_of_array_of_boolean_integer_integer_6
	lw $t0, 12($fp)
	li $t1, 1
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
#_play_array_of_array_of_boolean_integer_integer_7
	lw $t0, -28($fp)
	sw $t0, -40($fp)
#_play_array_of_array_of_boolean_integer_integer_8
#While
#_play_array_of_array_of_boolean_integer_integer_9
	b _label_play_array_of_array_of_boolean_integer_integer_4
#_label_play_array_of_array_of_boolean_integer_integer_3
_label_play_array_of_array_of_boolean_integer_integer_3:
#_play_array_of_array_of_boolean_integer_integer_11
#Corps de boucle
#_play_array_of_array_of_boolean_integer_integer_12
#If
#_play_array_of_array_of_boolean_integer_integer_13
	lw $t0, -36($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, 16($fp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -20($fp)
#_play_array_of_array_of_boolean_integer_integer_14
	lw $t0, -40($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	lw $t1, -20($fp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -24($fp)
#_play_array_of_array_of_boolean_integer_integer_15
	lw $t0, -24($fp)
	bnez $t0, _label_play_array_of_array_of_boolean_integer_integer_5
#_play_array_of_array_of_boolean_integer_integer_16
#Bloc else
#_play_array_of_array_of_boolean_integer_integer_17
	li $a0, 32
	li $v0, 11
	syscall
#_play_array_of_array_of_boolean_integer_integer_18
	li $a0, 32
	li $v0, 11
	syscall
#_play_array_of_array_of_boolean_integer_integer_19
	b _label_play_array_of_array_of_boolean_integer_integer_6
#_label_play_array_of_array_of_boolean_integer_integer_5
_label_play_array_of_array_of_boolean_integer_integer_5:
#_play_array_of_array_of_boolean_integer_integer_21
#Bloc then
#_play_array_of_array_of_boolean_integer_integer_22
	li $a0, 35
	li $v0, 11
	syscall
#_play_array_of_array_of_boolean_integer_integer_23
	li $a0, 35
	li $v0, 11
	syscall
#_label_play_array_of_array_of_boolean_integer_integer_6
_label_play_array_of_array_of_boolean_integer_integer_6:
#_play_array_of_array_of_boolean_integer_integer_25
#Fin if
#_play_array_of_array_of_boolean_integer_integer_26
	lw $t0, -40($fp)
	li $t1, 1
	sub $t0, $t0, $t1
	sw $t0, -16($fp)
#_play_array_of_array_of_boolean_integer_integer_27
	lw $t0, -16($fp)
	sw $t0, -40($fp)
#_label_play_array_of_array_of_boolean_integer_integer_4
_label_play_array_of_array_of_boolean_integer_integer_4:
#_play_array_of_array_of_boolean_integer_integer_29
#Test de boucle
#_play_array_of_array_of_boolean_integer_integer_30
	li $t0, 0
	lw $t1, -40($fp)
	sle $t0, $t0, $t1
	sw $t0, -12($fp)
#_play_array_of_array_of_boolean_integer_integer_31
	lw $t0, -12($fp)
	bnez $t0, _label_play_array_of_array_of_boolean_integer_integer_3
#_play_array_of_array_of_boolean_integer_integer_32
#Fin boucle
#_play_array_of_array_of_boolean_integer_integer_33
	li $a0, 10
	li $v0, 11
	syscall
#_play_array_of_array_of_boolean_integer_integer_34
	lw $t0, -36($fp)
	li $t1, 1
	sub $t0, $t0, $t1
	sw $t0, -8($fp)
#_play_array_of_array_of_boolean_integer_integer_35
	lw $t0, -8($fp)
	sw $t0, -36($fp)
#_label_play_array_of_array_of_boolean_integer_integer_2
_label_play_array_of_array_of_boolean_integer_integer_2:
#_play_array_of_array_of_boolean_integer_integer_37
#Test de boucle
#_play_array_of_array_of_boolean_integer_integer_38
	li $t0, 0
	lw $t1, -36($fp)
	sle $t0, $t0, $t1
	sw $t0, -4($fp)
#_play_array_of_array_of_boolean_integer_integer_39
	lw $t0, -4($fp)
	bnez $t0, _label_play_array_of_array_of_boolean_integer_integer_1
#_play_array_of_array_of_boolean_integer_integer_40
#Fin boucle
close_play_array_of_array_of_boolean_integer_integer:
	addi $sp, $sp, 40
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
