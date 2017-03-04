#RIABLES: The registers have the following uses:
 #
 # %edi - Holds the index of the data item being examined
 # %ebx - Largest data item found
 # %eax - Current data item
 #
 # The following memory locations are used:
 #
 # data_items - contains the item data.  A 0 is used
 #              to terminate the data
 #
.section .data
data_items:                       #These are the data items
 .byte 3

.section .text
 .globl _start
_start:
	
        movb data_items, %bl # indirect addressing
        
#	movb %al, %bl
# since this is the first item, %eax is
# the biggest
#start_loop:
	cmpb $10, %bl
	jg loop_exit
	movb $0, %bl
	# compare values
# jump to loop beginning if the new
# one isn't bigger
# move the value as the largest

# start loop
# check to see if we've hit the end
# load next value
 #	jmp start_loop            # jump to loop beginning
loop_exit:
 
 
 
 
 # %ebx is the status code for the exit system call
 # and it already has the maximum number
    movl $1, %eax             #1 is the exit() syscall
    int  $0x80
    
    
