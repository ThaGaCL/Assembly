.section .data
    A: .quad 0
    I: .quad 0
.section .text
.globl _start
_start:
        movq $0, I
        movq $0, A
        movq I, %rax
        jmp while
    while: 
        cmpq $10, %rax
        jge fimwhile
        movq A, %rdi
        addq %rax, %rdi
        addq $1, %rax
        movq %rax, I
        jmp while
    fimwhile:
        movq $60, %rax
        syscall
