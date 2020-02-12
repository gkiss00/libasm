BITS 64

section .text

global _ft_strlen

_ft_strlen:
    mov rsi, rdi    ;backup de rdi dans rsi
    mov al, 0       ;recherche du \0
    repne scasb     ;effectue la recherche
    sub rdi, rsi    ;stock le nombre dans rdi
    dec rdi         ;decremente une fois pour ne pas compter le \0
    mov rax, rdi    ;stock le nombre dans rax (valeur de retour)
    ret             ;return