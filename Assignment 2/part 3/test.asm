################################################
# Branch Commands:
#################
#	b	:	branch
#	beq	:	branch if equal
#	beqz:	branch if equal to zero
#	bne	:	branch if not equal
#	bnez:	branch if not equal to zero
#	bgt	:	branch if greater than
#	bgez:	branch if greater than or equal to zero
#	bgtz	:	branch if greater than zero
#	blt	:	branch if less than
#	blez	:	branch if less than or equal to zero
#	bltz	:	branch if less than zero
#	bge :	branch if greater than or equal 
#	ble	:	branch if less than or equal
################################################



################################################ 
# Register usage: 
################# 
# $t0	:	hopPtr
# $a1	:	used
# $t9	:	sum
# $t1	:	count
# $v1	:	iVal 
################################################

	.data 

a1:		.word 10, -29, -30, 75, 34, -2, 90 # array of 1000 integers

	.text
	.globl main
	
main: 
		j label2
		
label:	addi $t0, $t1, 0
		addi $t0, $t1, 0
		addi $t0, $t1, 0
		beq $t4, $t6, label		
label2:	li $v0, 10
		syscall
		