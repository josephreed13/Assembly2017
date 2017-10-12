#JOSEPH REED, CS 2318-252, Assignment 2 Part 1 Program D
#
# prompt the user for 3 test scores, calculate the average of
# those scores and display the weighted average											 			
			.data
scoreArray:		.space 12
firstNum:			.word 205
firstDenom:		.word 1024
secondNum:		.word 256
secondDenom:		.word 854
thirdDenom:		.word 2
askFirst:			.asciiz "Enter the first test score: "
askSecond:		.asciiz "Enter the second test score:  "
askThird:			.asciiz "Enter the final test score: "
showAvg:			.asciiz "Weighted average is: "
			
			.text
			.globl main

main: 
				li $v0, 4			#ask user for first score. 
				la $a0, askFirst		
				syscall
							
				li $v0, 5			#get user's score
				syscall 
							
				add $t1, $v0, $0	#store user's score in $t1
				
				li $v0, 4			#repeat
				la $a0, askSecond	
				syscall
				
				li $v0, 5			
				syscall
				
				add $t2, $v0, $0	
				
				li $v0, 4			#repeat
				la $a0, askThird	
				syscall
				
				li $v0, 5 			
				syscall
				
				add $t3, $v0, $0	
				
				la $t0, scoreArray	#load address of array
				
				sw $t1, 0($t0)		#store scores in array
				sw $t2, 4($t0)
				sw $t3, 8($t0)
				
				lw $a0, 0($t0)		#load first score and constants into registers
				lw $a1, 12($t0)
				lw $a3, 16($t0)
				mul $a0, $a0, $a1	#multiply score by numerator
				div $a0, $a3		#divide result by denominator
				mflo $a0			#get value from $LO
				
				sw $a0, 0($t0)		#store result in place of first score
				
				lw $a0, 4($t0)		#load second score and constants into registers
				lw $a1, 20($t0)
				lw $a3, 24($t0)
				mul $a0, $a0, $a1	#multiply score by numerator
				div $a0, $a3		#divide result by denominator
				mflo $a0			#get value from $LO
				
				sw $a0, 4($t0)		#store result in place of second score
				
				lw $a0, 8($t0)		#load third score and constant into registers
				lw $a1, 28($t0)
				
				div $a0, $a1		#divide third score by constant
				mflo $a0			#get value from $LO
				
				sw $a0, 8($t0)		#store result in place of 3rd score
				
				lw $a0, 0($t0)		#load the results into registers
				lw $a1, 4($t0)
				lw $a2, 8($t0)
				
				add $a0, $a0, $a1	#add first two results
				add $a0, $a0, $a2	#add result of that to 3rd result
				
				sw $a0, 0($t0)		#store avg in place of 1st result
				
				li $v0, 4			#print showAvg string
				la $a0, showAvg
				syscall
				
				li $v0, 1			#show weighted average
				lw $a0, 0($t0)
				syscall
				
				li $v0, 10		#exit
				syscall 