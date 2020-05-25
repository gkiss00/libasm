BITS 64

section .text

global  _ft_read

_ft_read:
    push    r8
    push    r9
    cmp     rsi, byte 0x0
    mov     r8, rsi
    mov     r9, rdx
    mov     rsi, 0x0
    mov     rax, 0x20000BD      ;fct qui check pour erno
    cmp     rax, 9
    jz      _err
    mov     rsi, r8
    mov     rdx, r9
    mov     rax, 0x2000003
    syscall                     ;appelle system qui ecrit
    pop     r8
    pop     r9
    ret                         ;return

_err:
    mov     rax, -1
    pop     r8
    pop     r9
    ret