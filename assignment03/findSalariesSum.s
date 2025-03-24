# findSalariesSum.s
.section .text
.global findSalariesSum

findSalariesSum:
    # Initialize sum to 0
    xorl %eax, %eax
    
    # Initialize counter to 0
    xorl %ebx, %ebx
    
loop_start:
    # Check if counter is greater than size
    cmpl %esi, %ebx
    jge loop_end
    
    # Load salary and add to sum
    movl 4(%rdi, %rbx, 8), %ecx
    addl %ecx, %eax
    
    # Increment counter
    incl %ebx
    jmp loop_start

loop_end:
    ret
