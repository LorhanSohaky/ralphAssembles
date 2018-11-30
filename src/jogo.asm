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
    
    desenhoBit BYTE "1", 0
    
    musicaJogo BYTE "..\assets\jogo.wav",0
	
.CODE

sortearBit PROC 
    mov eax, 71
    call RandomRange
    
    add al, 34
    mov bit.posicaoX, al
    mov bit.posicaoY, 4
    
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

atualizarBit PROC
    add bit.posicaoY, 1
 
    cmp bit.posicaoY, ROWS
    jb DESENHA_BIT
    call sortearBit
    
DESENHA_BIT:
    mov dl,bit.posicaoX
    mov dh,bit.posicaoY
    call Gotoxy
    mov edx, OFFSET desenhoBit
    call WriteString
    ret
atualizarBit ENDP


estadoJogar PROC
	
INICIAL:
    call tocarSomJogo
    call sortearBit
	
LETECLADO:
    call gotoInicio
	mov edx, OFFSET cenario
	call WriteString
    
    call desenhaRalph
    
    call atualizarBit
    
    mov  eax, DELAY_LEITURA
    call Delay  
    
    call ReadKey
	
	call atualizaPersonagem
    
    call verificaColisaoBit
    
    mov dh, ROWS - 3
    mov dl, COLS - 1
    call Gotoxy
    movzx eax, ralph.quantidadeVidas
    call WriteDec
    
	
	jmp LETECLADO
	
	ret
estadoJogar endp


atualizaPersonagem PROC
	
	cmp dx,VK_UP
	jne BAIXO
	sub ralph.posicaoY, PULO_Y
	call verificaColisao
	add ralph.posicaoY, al
	jmp L1
	
BAIXO:
	cmp dx,VK_DOWN
	jne ESQUERDA
	add ralph.posicaoY, PULO_Y
	call verificaColisao
	sub ralph.posicaoY, al
	jmp L1

ESQUERDA:
	cmp dx,VK_LEFT
	jne DIREITA
	sub ralph.posicaoX, PULO_X
	call verificaColisao
	add ralph.posicaoX, al
	jmp L1

DIREITA:
	cmp dx,VK_RIGHT
	jne L1
	add ralph.posicaoX, PULO_X
	call verificaColisao
	sub ralph.posicaoX, al

L1:	
	ret
atualizaPersonagem endp



verificaColisaoBit PROC
    mov bl, ralph.posicaoX
    mov bh, ralph.posicaoY
    
    cmp bit.posicaoY, bh
    jb SAIR1
    add bh, ALTURA_RALPH
    cmp bit.posicaoY, bh
    ja SAIR1
    cmp bit.posicaoX, bl
    jb SAIR1
    add bl, LARGURA_RALPH
    cmp bit.posicaoX, bl
    ja SAIR1
    jna PERDE_VIDA
    
PERDE_VIDA:
    dec ralph.quantidadeVidas
    call sortearBit

SAIR1:    
    ret
verificaColisaoBit ENDP


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
	mov al, PULO_Y
	jmp BYE
COLISAOX:
	mov al, PULO_X
	jmp BYE
NCOLISAO:
	mov al, 0
    
BYE:
	ret
verificaColisao endp


;---------------------------------------------------------
;                    tocarSomJogo PROC
;   Toca o som do jogo
; Entrada: Nada
; Saกda: Nada
; Requer: Nada
;---------------------------------------------------------
tocarSomJogo PROC USES eax
    mov eax, SND_ASYNC
    or eax, SND_LOOP
    INVOKE PlaySound, OFFSET musicaJogo, NULL, eax
    
    ret
tocarSomJogo ENDP