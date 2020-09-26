.data
msg1:.asciiz "\n Enter a number: "
msg2:.asciiz "\n number is odd"
msg3:.asciiz "\n number is even"
msg4:.asciiz "\n"
.text
main:
   li $v0,4
   la $a0,msg1
   syscall
   li $v0,5
   syscall
   move $t0,$v0
   andi $t0,$t0,1
   li $t1,1
   beq $t0,$t1,odd
   j even
even: 
   li $v0,4
   la $a0,msg3
   syscall
   li $v0,4
   la $a0,msg4
   syscall
   li $v0,10
   syscall
odd:li $v0,4
   la $a0,msg2
   syscall
   li $v0,4
   la $a0,msg4
   syscall
   li $v0,10
   syscall
