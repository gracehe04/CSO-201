# sumOfPowers.s
.section .text
.global sumOfPowers
.type sumOfPowers, @function

sumOfPowers:
    # Initialize sum to 0
    movl $0, %eax
    
    # Initialize counter to 1
    movl $1, %ebx
    
loop_start:
    # Check if counter is greater than n
    cmpl %edi, %ebx
    jg loop_end
    
    # Calculate square of current number and add to sum
    movl %ebx, %ecx
    imull %ecx, %ecx
    addl %ecx, %eax
    
    # Increment counter
    incl %ebx
    jmp loop_start

loop_end:
    ret