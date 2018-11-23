INCLUDE Irvine32.inc
INCLUDE win32.inc

INCLUDELIB Irvine32.lib
INCLUDELIB user32.lib
INCLUDELIB kernel32.lib


INCLUDE config.asm                                                  ; Arquivo com as configura‡”es do projeto

INCLUDE utils.asm
INCLUDE example.asm
INCLUDE instrucoes.asm
INCLUDE creditos.asm
INCLUDE faseTitulo.asm
INCLUDE menu.asm

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
    INVOKE GetStdHandle, STD_OUTPUT_HANDLE
    mov outHandle, eax
    
    INVOKE GetConsoleCursorInfo, outHandle, OFFSET cursorInfo

    call GetTextColor
    mov corAnterior, al
    
    

    mov eax, CORPADRAO
    call SetTextColor



    push OFFSET barraDeTitulo
    call SetConsoleTitle
    
    mov cursorInfo.dwSize, 1
    mov cursorInfo.bVisible, 0
    INVOKE SetConsoleCursorInfo, outHandle, OFFSET cursorInfo
    INVOKE SetConsoleScreenBufferSize, outHandle, scrSize

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