#Project 1 Code
#CS 2640
#10/24/2024
#Takes two ints from user and perform add, sub, mult, div

.data
input1prompt: .asciiz "Please input the first int: "
input2prompt: .asciiz "Please input the second int: "
userinpprompt: .asciiz "User integers; "
commaspace: .asciiz ", "
resultaddprompt: .asciiz "Resulting int after adding: "
resultsubprompt: .asciiz "Resulting int after subtracting: "
resultmultiprompt: .asciiz "Resulting int after multiplying: "
resultdivprompt: .asciiz "Resulting int after dividing: "
equalprompt: .asciiz "User inputs are the same"
differentprompt: .asciiz "User inputs are different"
newline: .asciiz "\n"
.text

main: 
	#prints input1prompt
	li $v0, 4
	la $a0, input1prompt
	syscall
	
	#gets user first int
	li $v0, 5
	syscall
	move $s0, $v0
	
	#prints input2prompt
	li $v0, 4
	la $a0, input2prompt
	syscall
	
	#gets user second int
	li $v0, 5
	syscall
	move $s1, $v0
	
	#prints userinput
	li $v0, 4
	la $a0, userinpprompt
	syscall
	
	li $v0, 1
	move $a0, $s0
	syscall
	
	li $v0, 4
	la $a0, commaspace
	syscall
	
	li $v0, 1
	move $a0, $s1
	syscall
	
	#prints newline
	li $v0, 4
	la $a0, newline
	syscall
	
	#print resultaddprompt
	li $v0, 4
	la $a0, resultaddprompt
	syscall
	#adds two integers and prints
	add $t2, $s0, $s1
	li $v0, 1
	move $a0, $t2
	syscall
	
	#prints newline
	li $v0, 4
	la $a0, newline
	syscall

	#print resultsubprompt
	li $v0, 4
	la $a0, resultsubprompt
	syscall
	#subractss two integers and prints
	sub $t2, $s0, $s1
	li $v0, 1
	move $a0, $t2
	syscall
	
	#prints newline
	li $v0, 4
	la $a0, newline
	syscall

	#print resultmultiprompt
	li $v0, 4
	la $a0, resultmultiprompt
	syscall
	#multiplies two integers and prints
	mul $t2, $s0, $s1
	li $v0, 1
	move $a0, $t2
	syscall
	
	#prints newline
	li $v0, 4
	la $a0, newline
	syscall

	#print resultdivprompt
	li $v0, 4
	la $a0, resultdivprompt
	syscall
	#divides two integers and prints
	div $t2, $s0, $s1
	li $v0, 1
	move $a0, $t2
	syscall
	
	#prints newline
	li $v0, 4
	la $a0, newline
	syscall
	
	#branches if two values equal
	beq $s0, $s1, equal
	
	#branches if not equal
	bne $s0, $s1, different
	
	
equal:
	#prints equal prompt
	li $v0, 4
	la $a0, equalprompt
	syscall
	#system exit
	li $v0, 10
	syscall
different:	
	#prints different prompt
	li $v0, 4
	la $a0, differentprompt
	syscall
	#system exit
	li $v0, 10
	syscall

