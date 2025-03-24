.section .text
.global findSalariesSum

findSalariesSum:
    pushq %rbp
    movq %rsp, %rbp
    
    # sum = 0
    xorl %eax, %eax
    # index = 0
    xorl %ecx, %ecx

loop_start:
    # index >= size?
    cmpl %esi, %ecx
    jge loop_end

    # Extend ecx (index) to 64-bit for addressing
    movslq %ecx, %rdx      

    # Calculate base address + index*12 manually
    leaq (%rdi, %rdx, 8), %r8    
    leaq (%r8, %rdx, 4), %r8     

    # Load salary at offset 8
    movl 8(%r8), %r9d
    addl %r9d, %eax

    incl %ecx
    jmp loop_start

loop_end:
    popq %rbp
    ret
