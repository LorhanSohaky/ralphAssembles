.DATA

somFase BYTE "assets\fase.wav",0

inicioTituloFrase   BYTE "    ______ ___    _____  ______  ",0
					BYTE "   / ____//   |  / ___/ / ____/  ",0
					BYTE "  / /_   / /| |  \__ \ / __/     ",0
					BYTE " / __/  / ___ | ___/ // /___     ",0
					BYTE "/_/    /_/  |_|/____//_____/     "
finalTituloFase     BYTE 0
            
numero1     BYTE "   ___     ",10,0
            BYTE "  <  /     ",10,0
            BYTE "  / /      ",10,0
            BYTE " / /       ",10,0
            BYTE "/_/        ",10,0

numero2     BYTE "   ___     ",10,0
            BYTE "  |__ \    ",10,0
            BYTE "  __/ /    ",10,0
            BYTE " / __/     ",10,0
            BYTE "/____/     ",10,0

numero3     BYTE "   _____   ",10,0
            BYTE "  |__  /   ",10,0
            BYTE "   /_ <    ",10,0
            BYTE " ___/ /    ",10,0
            BYTE "/____/     ",10,0

numero4     BYTE "   __ __   ",10,0
            BYTE "  / // /   ",10,0
            BYTE " / // /_   ",10,0
            BYTE "/__  __/   ",10,0
            BYTE "  /_/      ",10,0
        
numero5     BYTE "    ______ ",10,0
            BYTE "   / ____/ ",10,0
            BYTE "  /___ \   ",10,0
            BYTE " ____/ /   ",10,0
            BYTE "/_____/    ",10,0
          
numero6     BYTE "   _____   ",10,0
            BYTE "  / ___/   ",10,0
            BYTE " / __ \    ",10,0
            BYTE "/ /_/ /    ",10,0
            BYTE "\____/     ",10,0
          
numero7     BYTE " _____     ",10,0
            BYTE "/__  /     ",10,0
            BYTE "  / /      ",10,0
            BYTE " / /       ",10,0
            BYTE "/_/        ",10,0
          
numero8     BYTE "   ____    ",10,0
            BYTE "  ( __ )   ",10,0
            BYTE " / __  |   ",10,0
            BYTE "/ /_/ /    ",10,0
            BYTE "\____/     ",10,0
          
numero9     BYTE "   ____    ",10,0
            BYTE "  / __ \   ",10,0
            BYTE " / /_/ /   ",10,0
            BYTE " \__, /    ",10,0
            BYTE "/____/     ",10,0

.CODE

;---------------------------------------------------------
;                    escreverTituloFase PROC
;   Escreve o t¡tulo da fase e o n£mero dela.
; Entrada: ECX com o n£mero a ser exibido [1..9]
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
escreverTituloFase PROC USES ebx eax edx
    call limparTela
    mov dh, 17
	mov dl, 47
	call Gotoxy
	jmp INIT
	casos DWORD CASO1, CASO2, CASO3, CASO4, CASO5, CASO6, CASO7, CASO8, CASO9
	
INIT:
	mov eax, OFFSET inicioTituloFrase
	dec ecx
	jmp casos[4*ecx]
    
CASO1:
    mov ebx, OFFSET numero1
    jmp FACA

CASO2:
    mov ebx, OFFSET numero2
    jmp FACA
    
CASO3:
    mov ebx, OFFSET numero3
    jmp FACA
    
CASO4:
    mov ebx, OFFSET numero4
    jmp FACA
    
CASO5:
    mov ebx, OFFSET numero5
    jmp FACA
    
CASO6:
    mov ebx, OFFSET numero6
    jmp FACA
    
CASO7:
    mov ebx, OFFSET numero7
    jmp FACA
    
CASO8:
    mov ebx, OFFSET numero8
    jmp FACA
	
CASO9:
    mov ebx, OFFSET numero9
    jmp FACA
    
FACA:
	mov ecx, edx
    mov edx, eax
    call WriteString
    add eax, SIZEOF inicioTituloFrase
    
    mov edx, ebx
    call WriteString
    add ebx, SIZEOF numero1                                         ; Todas as strings possuem a mesma largura

ENQUANTO:
	mov edx, ecx
	inc dh
	call Gotoxy
	cmp eax, OFFSET finalTituloFase
    jb FACA
    
    call tocarSomFase
    mov eax, DELAY_FASE
    call Delay
    
    ret
escreverTituloFase ENDP


;---------------------------------------------------------
;                    tocarSomFase PROC
;   Toca o som da fase
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
tocarSomFase PROC
    mov edi, SND_FILENAME
    or edi, SND_ASYNC
    INVOKE PlaySound, OFFSET somFase, NULL, edi
    
    ret
tocarSomFase ENDP