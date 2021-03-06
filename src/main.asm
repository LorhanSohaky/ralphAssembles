INCLUDE Irvine32.inc
INCLUDE win32.inc
INCLUDE winmm.inc

INCLUDELIB Irvine32.lib
INCLUDELIB user32.lib
INCLUDELIB kernel32.lib
INCLUDELIB winmm.lib


INCLUDE config.asm                                                  ; Arquivo com as configura��es do projeto

INCLUDE utils.asm
INCLUDE resultado.asm
INCLUDE jogo.asm
INCLUDE instrucoes.asm
INCLUDE creditos.asm
INCLUDE faseTitulo.asm
INCLUDE menu.asm

.DATA

hIcon  dd ?                                                         ; �cone

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
; coloca o nome do jogo no t�tulo da janela.
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
inicializar PROC
    INVOKE GetStdHandle, STD_OUTPUT_HANDLE
    mov outHandle, eax
    
    INVOKE GetConsoleCursorInfo, outHandle, OFFSET cursorInfo
    
    invoke  LoadIconA,eax,100
    mov     hIcon,eax

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
    
    INVOKE SetConsoleWindowInfo, outHandle, 1, OFFSET scrRect

    ret
inicializar ENDP


;---------------------------------------------------------
;                       finalizar PROC
;   Restaura a cor padr�o do console.  
; Entrada: Nada
; Sa�da: Nada
; Requer: Chamar inicializar
;---------------------------------------------------------
finalizar PROC
    movzx eax, corAnterior
    call SetTextColor
	
    ret
finalizar ENDP

END main