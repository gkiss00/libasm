BITS 64

section .text

global  _ft_write

_ft_write:
    mov     rax, 0x2000004      ;numero en hexa de la fct system qui ecrit
    syscall                     ;appelle system qui ecrit
    ret                         ;return