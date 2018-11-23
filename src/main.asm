INCLUDE Irvine32.inc

INCLUDELIB Irvine32.lib
INCLUDELIB user32.lib
INCLUDELIB kernel32.lib

COLS = 80               ; number of columns
ROWS = 25               ; number of rows
CHAR_ATTRIBUTE = 0Fh    ; bright white foreground

INCLUDE utils.asm
INCLUDE example.asm
INCLUDE instrucoes.asm
INCLUDE creditos.asm
INCLUDE faseTitulo.asm
INCLUDE menu.asm

CORPADRAO TEXTEQU %70h                                              ; Cores do jogo

.DATA
    corAnterior BYTE ?                                              ; Cores do console antes de iniciar o jogo
    barraDeTitulo BYTE "Ralph Assembles",0                          ; Título da janela
    msg BYTE "Hello World!",0
    msg2 BYTE "Hello World2!",0

.CODE

main PROC
    call inicializar
    
    call estadoMenu
    
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