# compareAges.s
.section .text
.global compareAges

compareAges:
    # Load age from a
    movl 4(%rdi), %eax
    
    # Load age from b
    movl 4(%rsi), %ebx
    
    # Compare ages
    cmpl %ebx, %eax
    sete %al
    
    # Return result (1 if equal, 0 otherwise)
    ret