BITS 64

extern  _malloc
extern  _ft_strlen
extern  _ft_strcpy

section .text

global _ft_strdup

_ft_strdup:
    cmp     rdi, 0x0
    jz      _error_null
    push    rdi             ;creation d une tmp
    call    _ft_strlen      ;appelle de strlen sur rdi qui contient la string et stock sa longueur dans rax
    inc     rax             ;rax + 1 pour pouvoir malloc le \0
    mov     rdi, rax        ;mise de la taille dans rdi pour pouvoir appeler malloc
    call    _malloc         ;malloc de rax a la bonne taille
    cmp     rax, 0
    je      _error_malloc
    pop     rsi
    mov     rdi, rax        ;deplacement de la string mallac pour pouvoir appeler strcpy
    call    _ft_strcpy      ;cpie rsi dans rdi et la stock dans rax
    ret                     ;return

_error_null:
    ret

_error_malloc:
    mov     rax, 0
    pop     rsi
    ret