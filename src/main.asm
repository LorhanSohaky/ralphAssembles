INCLUDE Irvine32.inc

INCLUDELIB Irvine32.lib
INCLUDELIB user32.lib
INCLUDELIB kernel32.lib

INCLUDE utils.asm
INCLUDE example.asm
INCLUDE instrucoes.asm
INCLUDE creditos.asm

CORPADRAO TEXTEQU %70h                                              ; Cores do jogo

.DATA
    corAnterior BYTE ?                                              ; Cores do console antes de iniciar o jogo
    barraDeTitulo BYTE "Ralph Assembles",0                          ; Título da janela
    msg BYTE "Hello World!",0
    msg2 BYTE "Hello World2!",0

.CODE

main PROC
    call inicializar
    call estadoCreditos
    call estadoInstrucoes

    mov ecx, LENGTHOF msg
    mov esi, OFFSET msg

print:
    mov al, BYTE PTR [esi]
    inc esi
    call WriteChar
    mov eax, 100
    call Delay
    loop print

    mov eax, 1000
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

    mov eax, CORPADRAO
    call SetTextColor



    push OFFSET barraDeTitulo
    call SetConsoleTitle

    ret

inicializar ENDP


;---------------------------------------------------------
;                       finalizar PROC
;   Restaura a cor padr„o do console.  
; Entrada: Nada
; Sa¡da: Nada
; Requer: Chamar inicializar
;---------------------------------------------------------
finalizar PROC
    movzx eax, corAnterior
    call SetTextColor
    
    ret
finalizar ENDP

END main