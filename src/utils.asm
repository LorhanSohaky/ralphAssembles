.CODE

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



;---------------------------------------------------------
;                 limparTela PROC
;   Limpa a tela
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
limparTela PROC
    xor ecx, ecx
LIMPAR :
    mov scrBuffer[ecx * CHAR_INFO].Char, 0
    mov scrBuffer[ecx * CHAR_INFO].Attributes, CORPADRAO
    inc ecx
    cmp ecx, LENGTHOF scrBuffer
    jne LIMPAR

    INVOKE WriteConsoleOutput, outHandle, OFFSET scrBuffer, scrSize, scrCoord, OFFSET scrRect
    ret
limparTela ENDP