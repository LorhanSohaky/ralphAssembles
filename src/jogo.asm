delayLeitura = 50

RalphStruct STRUCT
    quantidadeVidas BYTE ?
    posicaoX BYTE ?
    posicaoY BYTE ?
RalphStruct ENDS

.DATA
	ralph RalphStruct <3, 10, 10>
	
	desenho1 BYTE "*****",0
	desenho2 BYTE " -- ",0
	
.CODE

desenhaRalph PROC

	mov dl,ralph.posicaoX
    mov dh,ralph.posicaoY
    call Gotoxy
	mov edx, OFFSET desenho1
    call WriteString
	
	mov dl,ralph.posicaoX
    mov dh,ralph.posicaoY
	add dh,1
    call Gotoxy
	mov edx, OFFSET desenho2
    call WriteString
	
	ret

desenhaRalph ENDP

estadoJogar PROC
	call limparTela
INICIAL:
	mov  dl,ralph.posicaoX
    mov  dh,ralph.posicaoY
    call Gotoxy
	
	call desenhaRalph
	
LETECLADO:
    mov  eax, delayLeitura
    call Delay
    
    call ReadKey
    jz LETECLADO
	
	cmp dx,VK_UP
	je ATUALIZA
	cmp dx,VK_DOWN
	je ATUALIZA
	cmp dx, VK_LEFT
	je ATUALIZA
	cmp dx, VK_RIGHT
	jne LETECLADO

ATUALIZA:
	call atualizaPersonagem
	
	jmp LETECLADO
	
	ret
estadoJogar endp

atualizaPersonagem PROC
	mov ebx, edx
	call limparTela
	mov edx, ebx
	
	
	mov  bl,ralph.posicaoX
    mov  bh,ralph.posicaoY
	
	cmp dx,VK_UP
	jne BAIXO
	sub bh, 1
	jmp DESENHA
	
BAIXO:
	cmp dx,VK_DOWN
	jne ESQUERDA
	add bh, 1
	jmp DESENHA

ESQUERDA:
	cmp dx,VK_LEFT
	jne DIREITA
	sub bl, 1
	jmp DESENHA

DIREITA:
	cmp dx,VK_RIGHT
	jne L1
	add bl, 1
	jmp DESENHA

DESENHA:
	mov dh, bh
	mov dl, bl
	
	mov ralph.posicaoY, dh
	mov ralph.posicaoX, dl
	call desenhaRalph
L1:	
	ret
atualizaPersonagem endp