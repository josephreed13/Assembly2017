#JOSEPH REED, CS 2318-252, Assignment 2 Part 1 Program C
#
# allocate a global array, initialize all its values at once, 
# display the array with labeled output, and swap values in the array											 			
			.data
intArray: 			.word 2,3,1,8
firstPrint:			.asciiz "Printing initial array: "
lastPrint: 			.asciiz "; Printing array backwards after swaps: "
			
			.text
			.globl main

main: 

			li $v0, 4
			la $a0, firstPrint		#print firstPrint string
			syscall
			
			la $t0, intArray			#load address of array
			
			li $v0, 1				#start printing array elements
			lw $a0, 0 ($t0)
			syscall
			
			li $v0, 1
			lw $a0, 4 ($t0)
			syscall
			
			li $v0, 1
			lw $a0, 8 ($t0)
			syscall
			
			li $v0, 1
			lw $a0, 12 ($t0)
			syscall
												
			lw $t4, 0($t0)			#load elements into registers
			lw $t1, 12($t0)
			
			sw $t1, 0($t0)			#store swapped elements back in memory
			sw $t4, 12($t0)
				
			lw $t4, 4($t0)			#repeat for different elements
			lw $t1, 8($t0)
			
			sw $t1, 4($t0)
			sw $t4, 8($t0)
			
			
			li $v0, 4				#print lastPrint string
			la $a0, lastPrint
			syscall
			
			li $v0, 1
			lw $a0, 12 ($t0)		#start printing array elements backwards
			syscall
			
			li $v0, 1
			lw $a0, 8 ($t0)
			syscall
							
			li $v0, 1
			lw $a0, 4 ($t0)
			syscall
			
			li $v0, 1
			lw $a0, 0 ($t0)
			syscall
			
			li $v0, 10		#exit
			syscall 
			