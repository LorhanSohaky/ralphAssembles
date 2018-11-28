RalphStruct STRUCT
    quantidadeVidas BYTE ?
    posicaoX BYTE ?
    posicaoY BYTE ?
RalphStruct ENDS

BitStruct STRUCT
    posicaoX BYTE ?
    posicaoY BYTE ?
BitStruct ENDS

.DATA
	cenario BYTE "                              รฤฤด  ฺมอหสอออหสอออหสอออหสอออหสอออหสอออหสอออหสอออหสอออหสอออหสอออหสอออหสมฟ  รฤฤด                              ",10
			BYTE "                              รฤฤด  ภยอสออหอสออหอสออหอสออหอสออหอสออหอสออหอสออหอสออหอสออหอสออหอสออหอสอยู  รฤฤด                              ",10
            BYTE "                           ฺฤยมยฤด  ฺมหอออสหอออสหอออสหอออสหอออสหอออสหอออสหอออสหอออสหอออสหอออสหอออสหออมฟ  รฤยมยฤฟ                           ",10
			BYTE "                           ณ ณ ณ ณ  ภยสออหอสออหอสออหอสออหอสออหอสออหอสออหอสออหอสออหอสออหอสออหอสออหอสออยู  ณ ณ ณ ณ                           ",10
			BYTE "                           ณ ณ ณ ณ  ฺมออหสอออหสอออหสอออหสอออหสอออหสอออหสอออหสอออหสอออหสอออหสอออหสออหอมฟ  ณ ณ ณ ณ                           ",10
			BYTE "                           ภฤมยมฤด  ภยออสอหออสอหออสอหออสอหออสอหออสอหออสอหออสอหออสอหออสอหออสอหออสอหอสอยู  รฤมยมฤู                           ",10
			BYTE "                              รฤฤด  ฺมอหออสอหออสอหออสอหออสอหออสอหออสอหออสอหออสอหออสอหออสอหออสอหออสอหอมฟ  รฤฤด                              ",10
            BYTE "                             ฺมฤฤมฤฤมออสออออสออออสออออสออออสออออสออออสออออสออออสออออสออออสออออสออออสออมฤฤมฤฤมฟ                             ",10
			BYTE "                             ภยฤฤยฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤยฤฤยู                             ",10
			BYTE "                              รฤฤด ฺู         ฺฤฤฤฟ                ฺฤฤฤฟ                ฺฤฤฤฟ         ภฟ รฤฤด                              ",10
			BYTE "                              รฤฤด ภฟ     ฺฤฤฤู   ภฤฤฤฟ        ฺฤฤฤู   ภฤฤฤฟ        ฺฤฤฤู   ภฤฤฤฟ     ฺู รฤฤด                              ",10
			BYTE "                           ฺฤยมยฤด ฺู     ภยฤหอออออหฤยู        ภยฤหอออออหฤยู        ภยฤหอออออหฤยู     ภฟ รฤยมยฤฟ                           ",10
            BYTE "                           ณ ณ ณ ณ ภฟ      ณ บฐฐฐฐฐบ ณ          ณ บฐฐฐฐฐบ ณ          ณ บฐฐฐฐฐบ ณ      ฺู ณ ณ ณ ณ                           ",10
			BYTE "                           ณ ณ ณ ณ ฺู      ณ ฬอออออน ณ          ณ ฬอออออน ณ          ณ ฬอออออน ณ      ภฟ ณ ณ ณ ณ                           ",10
			BYTE "                           ภฤมยมฤด ภฟ      ณ บฐฐฐฐฐบ ณ          ณ บฐฐฐฐฐบ ณ          ณ บฐฐฐฐฐบ ณ      ฺู รฤมยมฤู                           ",10
			BYTE "                              รฤฤด ฺู     ฺมอสอออออสอมฟ        ฺมอสอออออสอมฟ        ฺมอสอออออสอมฟ     ภฟ รฤฤด                              ",10
			BYTE "                              รฤฤด ภฟ     ภฤฤฤฤฤฤฤฤฤฤฤู        ภฤฤฤฤฤฤฤฤฤฤฤู        ภฤฤฤฤฤฤฤฤฤฤฤู     ฺู รฤฤด                              ",10
            BYTE "                              รฤฤด ฺู                                                                 ภฟ รฤฤด                              ",10
			BYTE "                              รฤฤด ภฟ                                                                 ฺู รฤฤด                              ",10
			BYTE "                              รฤฤด ฺู         ฺฤฤฤฟ                ฺฤฤฤฟ                ฺฤฤฤฟ         ภฟ รฤฤด                              ",10
			BYTE "                           ฺฤยมยฤด ภฟ     ฺฤฤฤู   ภฤฤฤฟ        ฺฤฤฤู   ภฤฤฤฟ        ฺฤฤฤู   ภฤฤฤฟ     ฺู รฤยมยฤฟ                           ",10
			BYTE "                           ณ ณ ณ ณ ฺู     ภยฤหอออออหฤยู        ภยฤหอออออหฤยู        ภยฤหอออออหฤยู     ภฟ ณ ณ ณ ณ                           ",10
            BYTE "                           ณ ณ ณ ณ ภฟ      ณ บฐฐฐฐฐบ ณ          ณ บฐฐฐฐฐบ ณ          ณ บฐฐฐฐฐบ ณ      ฺู ณ ณ ณ ณ                           ",10
			BYTE "                           ภฤมยมฤด ฺู      ณ ฬอออออน ณ          ณ ฬอออออน ณ          ณ ฬอออออน ณ      ภฟ รฤมยมฤู                           ",10
			BYTE "                              รฤฤด ภฟ      ณ บฐฐฐฐฐบ ณ          ณ บฐฐฐฐฐบ ณ          ณ บฐฐฐฐฐบ ณ      ฺู รฤฤด                              ",10
			BYTE "                              รฤฤด ฺู     ฺมอสอออออสอมฟ        ฺมอสอออออสอมฟ        ฺมอสอออออสอมฟ     ภฟ รฤฤด                              ",10
			BYTE "                              รฤฤด ภฟ     ภฤฤฤฤฤฤฤฤฤฤฤู        ภฤฤฤฤฤฤฤฤฤฤฤู        ภฤฤฤฤฤฤฤฤฤฤฤู     ฺู รฤฤด                              ",10
            BYTE "                              รฤฤด ฺู                      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                      ภฟ รฤฤด                              ",10
			BYTE "                              รฤฤด ภฟ                      ณ       BAILE       ณ                      ฺู รฤฤด                              ",10
			BYTE "                           ฺฤยมยฤด ฺู         ฺฤฤฤฟ        ณ   ษอออออหอออออป   ณ        ฺฤฤฤฟ         ภฟ รฤยมยฤฟ                           ",10
			BYTE "                           ณ ณ ณ ณ ภฟ     ฺฤฤฤู   ภฤฤฤฟ    ภยฤฤนฐฐฐฐฐบฐฐฐฐฐฬฤฤยู    ฺฤฤฤู   ภฤฤฤฟ     ฺู ณ ณ ณ ณ                           ",10
			BYTE "                           ณ ณ ณ ณ ฺู     ภยฤหอออออหฤยู     ภยฤนฐฐฐฐฐบฐฐฐฐฐฬฤยู     ภยฤหอออออหฤยู     ภฟ ณ ณ ณ ณ                           ",10
			BYTE "                           ภฤมยมฤด ภฟ      ณ บฐฐฐฐฐบ ณ       ณ ฬอออออฮอออออน ณ       ณ บฐฐฐฐฐบ ณ      ฺู รฤมยมฤู                           ",10
            BYTE "                              รฤฤด ฺู      ณ ฬอออออน ณ       ณ บฐฐฐฐฐบฐฐฐฐฐบ ณ       ณ ฬอออออน ณ      ภฟ รฤฤด                              ",10
			BYTE "                              รฤฤด ภฟ      ณ บฐฐฐฐฐบ ณ       ณ บฐฐฐฐฐบฐฐฐฐฐบ ณ       ณ บฐฐฐฐฐบ ณ      ฺู รฤฤด                              ",10
			BYTE "                              รฤฤด ฺู     ฺมอสอออออสอมฟ      ณ ฬอออออสอออออน ณ      ฺมอสอออออสอมฟ     ภฟ รฤฤด                              ",10
			BYTE "                              รฤฤด ภฟ     ภฤฤฤฤฤฤฤฤฤฤฤู      ณ ฬอออออออออออน ณ      ภฤฤฤฤฤฤฤฤฤฤฤู     ฺู รฤฤด                              ",10
			BYTE "                              รฤฤด ฺู                        ณ ฬอออออออออออน ณ                        ภฟ รฤฤด                              ",10
			BYTE "                                ฺมฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด ฬอออออออออออน รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤมฟ                                ",10
			BYTE "                                ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤมฤฤฤฤฤฤฤฤฤฤฤมฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู                                ",0
			
	ralph RalphStruct <3, 44, 36-ALTURA_RALPH>
    bit BitStruct <0,0>
	
	desenho1 BYTE "*",0
	desenho2 BYTE "*",0
	
.CODE

sortearBit PROC 
    mov eax, COLS
    call RandomRange
    
    mov bit.posicaoX, al
    mov bit.posicaoY, 0
    
    ret
sortearBit ENDP


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
	call gotoInicio
	mov edx, OFFSET cenario
	call WriteString
	
INICIAL:
	mov  dl,ralph.posicaoX
    mov  dh,ralph.posicaoY
    call Gotoxy
	
	
	call desenhaRalph
	
LETECLADO:
    mov  eax, DELAY_LEITURA
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
	mov dl,0
    mov dh,0
    call Gotoxy
	mov edx, OFFSET cenario
	call WriteString
	mov edx, ebx
	
	cmp dx,VK_UP
	jne BAIXO
	sub ralph.posicaoY, 10
	call verificaColisao
	add ralph.posicaoY, al
	jmp DESENHA
	
BAIXO:
	cmp dx,VK_DOWN
	jne ESQUERDA
	add ralph.posicaoY, 10
	call verificaColisao
	sub ralph.posicaoY, al
	jmp DESENHA

ESQUERDA:
	cmp dx,VK_LEFT
	jne DIREITA
	sub ralph.posicaoX, 21
	call verificaColisao
	add ralph.posicaoX, al
	jmp DESENHA

DIREITA:
	cmp dx,VK_RIGHT
	jne L1
	add ralph.posicaoX, 21
	call verificaColisao
	sub ralph.posicaoX, al
	jmp DESENHA

DESENHA:
	call desenhaRalph
L1:	
	ret
atualizaPersonagem endp


verificaColisao PROC
    cmp ralph.posicaoY, MIN_POSICAO_Y
	jb COLISAOY
	cmp ralph.posicaoY, MAX_POSICAO_Y
	ja COLISAOY
    cmp ralph.posicaoX, MIN_POSICAO_X
    jb COLISAOX
	cmp ralph.posicaoX, MAX_POSICAO_X
	ja COLISAOX
    jna NCOLISAO
    
COLISAOY:
	mov al, 10
	jmp BYE
COLISAOX:
	mov al, 21
	jmp BYE
NCOLISAO:
	mov al,0
BYE:
	ret
verificaColisao endp