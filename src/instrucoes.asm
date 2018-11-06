.data
tituloInstrucoes    BYTE "    ____              __                       /\//            ",10
                    BYTE "   /  _/____   _____ / /_ _____ __  __ _____ _//\/  ___   _____",10
                    BYTE "   / / / __ \ / ___// __// ___// / / // ___// __ \ / _ \ / ___/",10
                    BYTE " _/ / / / / /(__  )/ /_ / /   / /_/ // /__ / /_/ //  __/(__  ) ",10
                    BYTE "/___//_/ /_//____/ \__//_/    \__,_/ \___/ \____/ \___//____/  ",10
                    BYTE "                                     /_)                       ",10,10,0
inicioTextoInstrucoes     BYTE "Vocˆ possui trˆs vidas para passar por todas as fases",10
                    BYTE "As teclas direcionais servem para movimenta‡„o",10
                    BYTE "A tecla de espa‡o serve para consertar janela",10,10
                    BYTE "Pressione uma tecla para voltar ao menu",10
fimTextoInstrucoes  BYTE 0
                
.code

;---------------------------------------------------------
;                        estadoInstrucoesPROC
;   Representa‡„o do estado de instru‡”es. Exibe as
; informa‡”es e aguarda o usu rio pressionar uma tecla.
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
estadoInstrucoes PROC
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
    
    
    mov ecx, OFFSET fimTextoInstrucoes
    sub ecx, OFFSET inicioTextoInstrucoes
    mov esi, OFFSET inicioTextoInstrucoes
    mov ebx, 100
    
    call escreverStringPorCaracter
    
    ret
desenharInstrucoes ENDP
