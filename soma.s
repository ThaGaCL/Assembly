.section .data
A: .quad 0
B: .quad 0
.section .text
.globl _start
_start:
    movq $7, A       # a = 7
    movq $6, B       # b = 6
    movq A, %rax     # rax = a
    movq B, %rbx     # rbx = b
    addq %rax, %rbx  # rbx = a + b
    movq $60, %rax 
    movq %rbx, %rdi  # rdi = 13
    syscall

