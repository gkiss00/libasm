BITS 64

extern ___error

section .text

global  _ft_write

_ft_write:
    mov     rax, 0x2000004
    syscall                     ;appelle system qui ecrit
    jc      _err
    ret

_err:
    push    rbx
    mov     rbx, rax
    call    ___error
    mov     [rax], rbx
    pop     rbx
    mov     rax, -1
    ret