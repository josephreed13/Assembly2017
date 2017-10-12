#JOSEPH REED, CS 2318-252, Assignment 2 Part 1 Program A
#
#Ask the user to enter each of the following:
#An integer, a string of up to 40 characters , and a character
#read the user's input, and display a labeled output about                     
#the user's input.
															
			.data
Buffer:			.space 41

askInt:			.asciiz "Please enter an Integer: "
showInt:			.asciiz "Integer is: "
askString:			.asciiz "\n\nPlease enter a string (up to 40 characters): "
showString:		.asciiz "String is: "
askChar:			.asciiz "\nPlease enter an alphabetical character: "
showChar:		.asciiz "\nCharacter is: "

			.text
			.globl main

main: 

						
			li $v0, 4		#ask user for integer. 
			la $a0, askInt		
			syscall
							
			li $v0, 5		#get user's integer
			syscall 
							
			add $t1, $v0, $0	#store user's integer in $t1
							
			li $v0, 4		#show showInt string variable 
			la $a0, showInt
			syscall 
							
			li $v0, 1		#display integer
			move $a0, $t1
			syscall 
				
			li $v0, 4 		#ask user for string.
			la $a0, askString
			syscall 
						#get user's string
			li $v0, 8		#read- string service code in $vo
			la $a0, Buffer		#buffer address in $a0
			li $a1, 41		#buffer size in $a1
			syscall
							
			li $v0, 4		#show showString
			la $a0, showString
			syscall

			li $v0, 4		#display user's string 
			la $a0, Buffer
			syscall
							
			li $v0, 4		#ask user for a character
			la $a0, askChar
			syscall
							
			li $v0, 12		#get user's character
			syscall 
			move $t7, $v0
							
			li $v0, 4		#show showChar
			la $a0, showChar
			syscall
						#display user's character
			li $v0, 11
			move $a0, $t7
			syscall 
			
			li $v0, 10		#exit
			syscall 
			
