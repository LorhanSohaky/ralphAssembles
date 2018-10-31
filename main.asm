INCLUDE Irvine32.inc

INCLUDELIB Irvine32.lib
INCLUDELIB user32.lib
INCLUDELIB kernel32.lib

INCLUDE example.asm

corPadrao TEXTEQU %70h                                              ; Cores do jogo

.DATA
    corAnterior BYTE ?                                              ; Cores do console antes de iniciar o jogo
    barraDeTitulo BYTE "Ralph Assembles",0                          ; Título da janela
    msg BYTE "Hello World!",0
    msg2 BYTE "Hello World 2!",0

.CODE

main PROC
    call inicializar

    MOV ECX, LENGTHOF msg
    MOV ESI, OFFSET msg

    print:
        MOV AL, BYTE PTR [ESI]
        INC ESI
        call WriteChar
        mov EAX, 100
        call Delay
        loop print

    mov EAX, 1000
    call Delay

    call Crlf

    mov edx, OFFSET msg2
    call exemplo

    call finalizar

    exit
main ENDP

;---------------------------------------------------------
;                        inicializar PROC
;   Guarda as cores do console antes de iniciado o jogo e
; coloca o nome do jogo no título da janela.
; Entrada: Nada
; Saída: Nada
; Requer: Nada
;---------------------------------------------------------
inicializar PROC

    call GetTextColor
    mov corAnterior, al

    mov eax, corPadrao
    call SetTextColor



    push OFFSET barraDeTitulo
    call SetConsoleTitle

    ret

inicializar ENDP

;---------------------------------------------------------
;                       finalizar PROC
;   Restaura a cor padrão do console.  
; Entrada: Nada
; Saída: Nada
; Requer: Chamar inicializar
;---------------------------------------------------------

finalizar PROC
    movzx eax, corAnterior
    call SetTextColor
    
    ret
finalizar ENDP

END main