BITS 64

extern ___error

section .text

global  _ft_read

_ft_read:
    mov     rax, 0x2000003
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