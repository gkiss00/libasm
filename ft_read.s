BITS 64

section .text

global  _ft_read

_ft_read:
    mov     rax, 0x2000003      ;numero en hexa de la fct system qui lit
    syscall                     ;appelle system qui ecrit
    ret                         ;return