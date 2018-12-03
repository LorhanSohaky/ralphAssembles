.DATA

tituloInstrucoes    BYTE "                                          ____              __                       /\//            ",10
                    BYTE "                                         /  _/____   _____ / /_ _____ __  __ _____ _//\/  ___   _____",10
                    BYTE "                                         / / / __ \ / ___// __// ___// / / // ___// __ \ / _ \ / ___/",10
                    BYTE "                                       _/ / / / / /(__  )/ /_ / /   / /_/ // /__ / /_/ //  __/(__  ) ",10
                    BYTE "                                      /___//_/ /_//____/ \__//_/    \__,_/ \___/ \____/ \___//____/  ",10
                    BYTE "                                                                           /_)                       ",10,10,0

inicioTextoInstrucoes BYTE "Vocˆ possui trˆs vidas para passar por todas as fases",0
textoInstrucoes1      BYTE "As teclas direcionais servem para movimenta‡„o",0
textoInstrucoes2      BYTE "A tecla de espa‡o serve para consertar as janelas",0
textoInstrucoes3      BYTE "Pressione uma tecla para voltar ao menu",0
finalTextoInstrucoes  BYTE 0
                
.CODE

;---------------------------------------------------------
;                        estadoInstrucoesPROC
;   Representa‡„o do estado de instru‡”es. Exibe as
; informa‡”es e aguarda o usu rio pressionar uma tecla.
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
estadoInstrucoes PROC
    call limparTela
	
    mov  dl, 0
    mov  dh, 0
    call Gotoxy
    call desenharInstrucoes
	
    call ReadChar

    ret
estadoInstrucoes ENDP


;---------------------------------------------------------
;                        desenharInstrucoes
;   Desenha a tela de instru‡”es usando ASCII.
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
desenharInstrucoes PROC
    mov edx, OFFSET tituloInstrucoes
    call WriteString
    
    mov dl, 43
	mov dh, 7
	call Gotoxy
    mov ecx, OFFSET textoInstrucoes1
    sub ecx, OFFSET inicioTextoInstrucoes
    mov esi, OFFSET inicioTextoInstrucoes
    mov ebx, 100
    call escreverStringPorCaracter
	
	mov dl, 46
	inc dh
	call Gotoxy
    mov ecx, OFFSET textoInstrucoes2
    sub ecx, OFFSET textoInstrucoes1
    mov esi, OFFSET textoInstrucoes1
    mov ebx, 100
    call escreverStringPorCaracter
	
	mov dl, 45
	inc dh
	call Gotoxy
    mov ecx, OFFSET textoInstrucoes3
    sub ecx, OFFSET textoInstrucoes2
    mov esi, OFFSET textoInstrucoes2
    mov ebx, 100
    call escreverStringPorCaracter
	
	mov dl, 50
	add dh, 2
	call Gotoxy
    mov ecx, OFFSET finalTextoInstrucoes
    sub ecx, OFFSET textoInstrucoes3
    mov esi, OFFSET textoInstrucoes3
    mov ebx, 100
    call escreverStringPorCaracter
    
    ret
desenharInstrucoes ENDP
