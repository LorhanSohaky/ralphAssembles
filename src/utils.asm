.code

;---------------------------------------------------------
;                 escreverStringPorCaracter PROC
;   Escrever caractere por caractere
; Entrada: ECX tamanho da string, ESI OFFSET da string, EBX delay em ms
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
escreverStringPorCaracter PROC USES EAX
    
exibir:
    mov al, BYTE PTR [esi]
    inc esi
    call WriteChar
    mov eax, ebx
    call Delay
    loop exibir
    
    ret
escreverStringPorCaracter ENDP