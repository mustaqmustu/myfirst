.data
msg1:    .asciiz    "\nNumber of integers=   "
msg2:    .asciiz    "\nproduct = "
cflf:   .asciiz    "\n"
.text
    .globl    main
main:
    li $v0,4
        la $a0,msg1
        syscall
        li $v0,5
        syscall
        move $t0,$v0
        li $t1,0
        li $t2,1
loop:   addi $t1,1
        mul $t2,$t2,$t1
        beq $t1,$t0,exit
        j loop
        
exit:  li $v0,4
       la $a0,msg2
       syscall
       li $v0,1
       move $a0,$t2
       syscall
       li $v0,4
       la $a0,cflf
       syscall
       li $v0,10
       syscall
