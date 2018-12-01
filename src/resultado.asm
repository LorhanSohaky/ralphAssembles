.DATA

tituloGanhou BYTE "Ganhou!",10,0
tituloPerdeu BYTE "Perdeu!",10,0


.CODE

;---------------------------------------------------------
;                        estadoResultado PROC
;   Representa‡„o do estado de resultado. Exibe tela
; de ganhou ou perdeu.
; Entrada: 
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
estadoResultado PROC resultado: BYTE
    call limparTela
    mov  dl,0
    mov  dh,0
    call Gotoxy
    cmp resultado, GANHOU
    je DESENHAR_GANHOU
    cmp  resultado, PERDEU
    je DESENHAR_PERDEU
    
DESENHAR_GANHOU:
    call desenharGanhou
    jmp SAIR_RESULTADO
    
DESENHAR_PERDEU:
    call desenharPerdeu
    
SAIR_RESULTADO:
    call ReadChar
    ret
estadoResultado ENDP


;---------------------------------------------------------
;                        desenharGanhou PROC
;   Desenha a tela de ganhou usando ASCII.
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
desenharGanhou PROC
    mov edx, OFFSET tituloGanhou
    call WriteString
    call WaitMsg
    
    ret
desenharGanhou ENDP

;---------------------------------------------------------
;                        desenharPerdeu PROC
;   Desenha a tela de perdeu usando ASCII.
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
desenharPerdeu PROC
    mov edx, OFFSET tituloPerdeu
    call WriteString
    call WaitMsg
    
    ret
desenharPerdeu ENDP