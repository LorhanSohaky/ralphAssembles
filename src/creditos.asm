.DATA

tituloCreditos      BYTE "                                                ______        __       __ _  __              ",10
                    BYTE "                                               / ____/_____ _/_/  ____/ /(_)/ /_ ____   _____",10
                    BYTE "                                              / /    / ___// _ \ / __  // // __// __ \ / ___/",10
                    BYTE "                                             / /___ / /   /  __// /_/ // // /_ / /_/ /(__  ) ",10
                    BYTE "                                             \____//_/    \___/ \__,_//_/ \__/ \____//____/  ",10,10,0

inicioTextoCreditos BYTE "Lorhan Sohaky    740951",0
textoCreditos1      BYTE "Tha¡s  Dordan    743596",0
textoCreditos2      BYTE "Pressione uma tecla para voltar ao menu",0
finalTextoCreditos  BYTE 0

.CODE

;---------------------------------------------------------
;                        estadoCreditos PROC
;   Representa‡„o do estado de cr‚dtidos. Exibe as
; informa‡”es e aguarda o usu rio pressionar uma tecla.
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
estadoCreditos PROC
    call limparTela
    mov  dl,0
    mov  dh,0
    call Gotoxy
    call desenharCreditos
    call ReadChar
	
    ret
estadoCreditos ENDP


;---------------------------------------------------------
;                        desenharCreditos PROC
;   Desenha a tela de cr‚ditos usando ASCII.
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
desenharCreditos PROC
    mov edx, OFFSET tituloCreditos
    call WriteString
    
	mov dh, 6
	mov dl, 58
	call Gotoxy
    mov ecx, OFFSET textoCreditos1
    sub ecx, OFFSET inicioTextoCreditos
    mov esi, OFFSET inicioTextoCreditos
    mov ebx, 100
    call escreverStringPorCaracter
	
	inc dh
	call Gotoxy
    mov ecx, OFFSET textoCreditos2
    sub ecx, OFFSET textoCreditos1
    mov esi, OFFSET textoCreditos1
    mov ebx, 100
    call escreverStringPorCaracter
	
	sub dl, 8
	add dh, 2
	call Gotoxy
    mov ecx, OFFSET finalTextoCreditos
    sub ecx, OFFSET textoCreditos2
    mov esi, OFFSET textoCreditos2
    mov ebx, 100
    call escreverStringPorCaracter
    
    ret
desenharCreditos ENDP
