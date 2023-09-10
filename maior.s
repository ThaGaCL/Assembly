.section .data
    I: .quad 0
    MAIOR: .quad 0
    DATA_ITEMS: .quad 3 , 67 , 34 , 222 , 45 , 75 , 54 , 34 , 44 , 33 , 22 , 11 , 66 , 0
.section .text
.globl _start
_start:
    movq $0 , % rdi # i = 0
    movq DATA_ITEMS ( , % rdi , 8) , % rbx # % rbx := DATA_ITEMS [0]
    movq $1 , % rdi # i = 1
    while:
        movq DATA_ITEMS(, %rdi, 8), %rax
        cmpq $0, %rax
        je fimwhile
        cmpq %rbx, %rax
        jle fimif
        movq %rax, %rbx
        fimif:
        addq $1, %rdi
        jmp while
    fimwhile:
    movq %rbx, %rdi
    movq $60, %rax
    syscall
