.DATA
inicioTituloFrase   BYTE "    ______ ___    _____  ______  ",0
                    BYTE "   / ____//   |  / ___/ / ____/  ",0
                    BYTE "  / /_   / /| |  \__ \ / __/     ",0
                    BYTE " / __/  / ___ | ___/ // /___     ",0
                    BYTE "/_/    /_/  |_|/____//_____/     "
fimTituloFase       BYTE 0
            
numero1     BYTE "   ___ ",10,0
            BYTE "  <  / ",10,0
            BYTE "  / /  ",10,0
            BYTE " / /   ",10,0
            BYTE "/_/    ",10,0

numero2     BYTE "   ___ ",10,0
            BYTE "  |__ \",10,0
            BYTE "  __/ /",10,0
            BYTE " / __/ ",10,0
            BYTE "/____/ ",10,0

.CODE


;---------------------------------------------------------
;                    escreverTituloFase PROC
;   Escreve o t¡tulo da fase e o n£mero dela.
; Entrada: ECX com o n£mero a ser exibido [1..2]
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
escreverTituloFase PROC USES ebx eax edx
    mov eax, OFFSET inicioTituloFrase
    
CASO1:
    cmp ecx, 1
    jne CASO2
    mov ebx, OFFSET numero1
    jmp FACA

CASO2:
    mov ebx, OFFSET numero2
    jmp FACA
    
FACA:
    mov edx, eax
    call WriteString
    add eax, SIZEOF inicioTituloFrase
    
    mov edx, ebx
    call WriteString
    add ebx, SIZEOF numero1
ENQUANTO:
    cmp eax, OFFSET fimTituloFase
    jb FACA
    
    
    call ReadChar
    
    ret
escreverTituloFase ENDP