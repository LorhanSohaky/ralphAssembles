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
	
	cmp dx,VK_UP
	jne BAIXO
	sub ralph.posicaoY, 1
	call verificaColisao
	add ralph.posicaoY, al
	jmp DESENHA
	
BAIXO:
	cmp dx,VK_DOWN
	jne ESQUERDA
	add ralph.posicaoY, 1
	call verificaColisao
	sub ralph.posicaoY, al
	jmp DESENHA

ESQUERDA:
	cmp dx,VK_LEFT
	jne DIREITA
	sub ralph.posicaoX, 1
	call verificaColisao
	add ralph.posicaoX, al
	jmp DESENHA

DIREITA:
	cmp dx,VK_RIGHT
	jne L1
	add ralph.posicaoX, 1
	call verificaColisao
	sub ralph.posicaoX, al
	jmp DESENHA

DESENHA:
	call desenhaRalph
L1:	
	ret
atualizaPersonagem endp

verificaColisao PROC
	cmp ralph.posicaoY, 0
	jl COLISAO
	mov al, ralph.posicaoY
	add al, 1
	cmp al, ROWS
	je COLISAO
	mov al, ralph.posicaoX
	add al, 4
	cmp al, COLS
	ja COLISAO
	cmp ralph.posicaoX, 0
	jge NCOLISAO
COLISAO:
	mov al, 1
	jmp BYE
NCOLISAO:
	mov al,0
BYE:
	ret
verificaColisao endp