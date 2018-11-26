delayLeitura = 50

RalphStruct STRUCT
    quantidadeVidas BYTE ?
    posicaoX BYTE ?
    posicaoY BYTE ?
RalphStruct ENDS

.DATA
	ralph RalphStruct <3, 100, 30>
	
.CODE

estadoJogar PROC
	call limparTela
INICIAL:
	mov  dl,ralph.posicaoX
    mov  dh,ralph.posicaoY
    call Gotoxy
	
	mov al, '*'
	call WriteChar
	call ReadChar
	
LETECLADO:
    mov  eax, delayLeitura
    call Delay
    
    call ReadKey
    jz LETECLADO
    
    cmp dx,VK_UP
	
	mov  dl,ralph.posicaoX
    mov  dh,ralph.posicaoY
    call Gotoxy
	mov al, ' '
	call WriteChar
	
	mov  dl,ralph.posicaoX
    mov  dh,ralph.posicaoY
	sub dh, 1
	mov ralph.posicaoY, dh
    call Gotoxy
	mov al, '*'
	call WriteChar
    
    cmp dx,VK_DOWN
    ;je MENUJOGAR
    
    cmp dx, VK_SPACE
    ;jne VOLTAC
    ;call estadoCreditos
	
	jmp LETECLADO
	
	
	ret
estadoJogar endp