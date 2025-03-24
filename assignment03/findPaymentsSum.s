# findPaymentsSum.s
.section .text
.global findPaymentsSum

findPaymentsSum:
    # Initialize sum to 0
    xorl %eax, %eax
    
    # Initialize counter to 0
    xorl %ebx, %ebx
    
loop_start:
    # Check if counter is greater than num_of_pamyments
    cmpl %esi, %ebx
    jge loop_end
    
    # Load payment and add to sum
    movl 8(%rdi, %rbx, 4), %ecx
    addl %ecx, %eax
    
    # Increment counter
    incl %ebx
    jmp loop_start

loop_end:
    ret
