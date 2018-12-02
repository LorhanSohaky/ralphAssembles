.DATA

tituloGanhou BYTE "   ______               __                     __",0
			 BYTE "  / ____/____ _ ____   / /_   ____   __  __   / /",0
			 BYTE " / / __ / __ `// __ \ / __ \ / __ \ / / / /  / / ",0
			 BYTE "/ /_/ // /_/ // / / // / / // /_/ // /_/ /  /_/  ",0
			 BYTE "\____/ \__,_//_/ /_//_/ /_/ \____/ \__,_/  (_)   ",0
finalTituloGanhou BYTE 0

tituloPerdeu BYTE "    ____                   __                __",0
			 BYTE "   / __ \ ___   _____ ____/ /___   __  __   / /",0
			 BYTE "  / /_/ // _ \ / ___// __  // _ \ / / / /  / / ",0
			 BYTE " / ____//  __// /   / /_/ //  __// /_/ /  /_/  ",0
			 BYTE "/_/     \___//_/    \__,_/ \___/ \__,_/  (_)   ",0
finalTituloPerdeu BYTE 0

inicioJogarNovamente BYTE "Pressione uma tecla para voltar ao menu",0
finalJogarNovamente BYTE 0


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
    mov  dh, 15
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
	inc dh
	mov dl, 50
	call Gotoxy
	mov ecx, OFFSET finalJogarNovamente
    sub ecx, OFFSET inicioJogarNovamente
    mov esi, OFFSET inicioJogarNovamente
	mov ebx, 100
	call escreverStringPorCaracter
	
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
	mov dl, 45
	call Gotoxy
    mov eax, OFFSET tituloGanhou
	
FACA:
	mov ecx, edx
    mov edx, eax
    call WriteString
    add eax, SIZEOF tituloGanhou
	
ENQUANTO:
	mov edx, ecx
	inc dh
	call Gotoxy
	cmp eax, OFFSET finalTituloGanhou
    jb FACA
    
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
	mov dl, 46
	call Gotoxy
    mov eax, OFFSET tituloPerdeu
	
FACA:
	mov ecx, edx
    mov edx, eax
    call WriteString
    add eax, SIZEOF tituloPerdeu
	
ENQUANTO:
	mov edx, ecx
	inc dh
	call Gotoxy
	cmp eax, OFFSET finalTituloPerdeu
    jb FACA
    
    ret
desenharPerdeu ENDP