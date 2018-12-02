RalphStruct STRUCT
    quantidadeVidas BYTE ?
    posicaoX BYTE ?
    posicaoY BYTE ?
RalphStruct ENDS

BitStruct STRUCT
    posicaoX BYTE ?
    posicaoY BYTE ?
BitStruct ENDS

FelixStruct STRUCT
    posicaoX BYTE ?
    posicaoY BYTE ?
FelixStruct ENDS

JanelaStruct STRUCT
	posicaoX BYTE ?
	posicaoY BYTE ?
	estado BYTE ?
JanelaStruct ENDS

VidaStruct STRUCT
	posicaoX BYTE ?
	posicaoY BYTE ?
VidaStruct ENDS

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

	janelaNormal   BYTE "    ฺฤฤฤฟ    ",0
				   BYTE "ฺฤฤฤู   ภฤฤฤฟ",0
				   BYTE "ภยฤหอออออหฤยู",0
				   BYTE " ณ บฐฐฐฐฐบ ณ ",0
				   BYTE " ณ ฬอออออน ณ ",0
				   BYTE " ณ บฐฐฐฐฐบ ณ ",0
				   BYTE "ฺมอสอออออสอมฟ",0
				   BYTE "ภฤฤฤฤฤฤฤฤฤฤฤู",0
	
	portaNormal   BYTE "ษอออออหอออออป",0
				  BYTE "นฐฐฐฐฐบฐฐฐฐฐฬ",0
				  BYTE "นฐฐฐฐฐบฐฐฐฐฐฬ",0
				  BYTE "ฬอออออฮอออออน",0
				  BYTE "บฐฐฐฐฐบฐฐฐฐฐบ",0
				  BYTE "บฐฐฐฐฐบฐฐฐฐฐบ",0
				  BYTE "ฬอออออสอออออน",0
				  BYTE "ฬอออออออออออน",0
                  
    janelaQuebrada BYTE "    ฺฤฤฤฟ    ",0
				   BYTE "ฺฤฤฤู   ภฤฤฤฟ",0
				   BYTE "ภยฤหอออออหฤยู",0
				   BYTE " ณ บÛÛฐฐฐบ ณ ",0
				   BYTE " ณ ฬอออออน ณ ",0
				   BYTE " ณ บฐฐฐÛÛบ ณ ",0
				   BYTE "ฺมอสอออออสอมฟ",0
				   BYTE "ภฤฤฤฤฤฤฤฤฤฤฤู",0
	
	portaQuebrada BYTE "ษอออออหอออออป",0
				  BYTE "นÛÛÛฐฐบฐฐฐฐฐฬ",0
				  BYTE "นÛÛÛฐฐบฐฐฐฐฐฬ",0
				  BYTE "ฬอออออฮอออออน",0
				  BYTE "บฐฐฐฐฐบÛÛÛฐฐบ",0
				  BYTE "บฐฐฐฐฐบÛÛÛฐฐบ",0
				  BYTE "ฬอออออสอออออน",0
				  BYTE "ฬอออออออออออน",0
				  
				  
				  
	ralph RalphStruct <3, 44, 36-ALTURA_RALPH>
    bit BitStruct <0,0>
	janela JanelaStruct <42, 9, 0>, <63, 9, 0>, <84, 9, 0>, <42, 19, 0>, <63, 19, 0>, <84, 19, 0>, <42, 29, 0>, <63, 29, 0>, <84, 29, 0>
	
	desenho1 BYTE "*",0
	desenho2 BYTE "*",0
    
    felix FelixStruct <0,8 - ALTURA_FELIX>
    
    inicioFelix     BYTE "*",0
    fimFelix        BYTE "*",0
    
    
	desenhoRalph BYTE " ()  ",0
				 BYTE "ฺูภฟ ",0
				 BYTE "ภยยู ",0
				 BYTE "     ",0
	

    desenhoBit BYTE "1", 0
    bitPosicoes BYTE 44, 65, 86
	
	desenhoVida BYTE "( \/ )",0
				BYTE " \  / ",0
				BYTE "  \/  ",0
    vida VidaStruct QUANTIDADE_VIDAS DUP(<?,?>)
	
    corConsole BYTE ?
	
	janelasConcertadas BYTE 0
    janelasQuebradas BYTE JANELAS_QUEBRADAS_INICIAL
	
	terminou BYTE 0
    fase BYTE 1
    
    somPulo BYTE "assets\pulo.wav",0
    somColisao BYTE "assets\colisao.wav",0
	
.CODE

inicializaVida PROC
	movzx ecx, ralph.quantidadeVidas
	mov eax, 0
	mov bl, 1
	
PROXIMA_VIDA:
	mov (VidaStruct PTR vida[eax]).posicaoX, 5
	mov (VidaStruct PTR vida[eax]).posicaoY, bl
	add eax, TYPE VidaStruct
	add bl, 5
	loop PROXIMA_VIDA
	
	ret
inicializaVida ENDP


desenhaLinha PROC USES ecx
    mov ecx, LARGURA_JANELA                                         ; Nฃmero de linhas
    rep movsb

    ret
desenhaLinha ENDP

desenhaFelix PROC
    mov eax, COR_FELIX
    call SetTextColor
    
    mov al, felix.posicaoX
    mov ah, felix.posicaoY
    
    mov ecx, OFFSET fimFelix
    sub ecx, OFFSET inicioFelix
    
    mov ebx, OFFSET inicioFelix
    
DESENHA_FELIX:
    mov dx, ax
    call Gotoxy
    mov edx, ebx
    call WriteString
    
    add ebx, SIZEOF inicioFelix
    inc ah
    loop DESENHA_FELIX
    
    mov eax, CORPADRAO
    call SetTextColor
    
    ret
desenhaFelix ENDP


desenhaLJanela PROC USES ecx edi esi,
        source: PTR BYTE,
        conteudo: DWORD
        
    mov ecx, ALTURA_JANELA + 1                                      ; Nฃmero de linhas
    mov edx, source
    mov bl, (JanelaStruct PTR janela[edx]).posicaoX
    mov bh, (JanelaStruct PTR janela[edx]).posicaoY
    mov esi, conteudo
DESENHA:
    movzx edx, bl
    mov eax, COLS
    mul bh
    add eax, edx
    add eax, OFFSET cenario    
    
    mov edi, eax

    call desenhaLinha
    inc esi
    inc bh
    
    loop DESENHA
    
    ret
desenhaLJanela ENDP


desenhaJanela PROC
    mov ecx, QUANTIDADE_JANELAS
    mov esi, 0
    
VERIFICA:
	cmp esi, 7 * TYPE JanelaStruct                                  ; Testando a posio 7 (porta)
	je PORTA
    cmp (JanelaStruct PTR janela[esi]).estado, 1				    ;//verifica se o estado  1 (janela quebrada)
    je JANELA_QUEBRADA
    mov edi, OFFSET janelaNormal
    jmp CONTINUA
    
JANELA_QUEBRADA:
	mov edi, OFFSET janelaQuebrada
	jmp CONTINUA
    
PORTA:
    cmp (JanelaStruct PTR janela[esi]).estado, 1 				    ;//verifica se o estado  1 (janela quebrada)
    je PORTA_QUEBRADA
    mov edi, OFFSET portaNormal
    jmp CONTINUA
    
PORTA_QUEBRADA:
	mov edi, OFFSET portaQuebrada
    
CONTINUA:
    INVOKE desenhaLJanela, esi, edi
    add esi, TYPE JanelaStruct
    
    loop VERIFICA

    ret
desenhaJanela ENDP


sorteiaJanelasQuebradas PROC	
	movzx ecx, janelasQuebradas
	
SORTEIA:
	call Randomize
	mov eax, QUANTIDADE_JANELAS 									;//sorteia um nฃmero de 0 a 9 em todo novo loop
	call RandomRange
	mov bl, TYPE JanelaStruct
	mul bl
	
	cmp (JanelaStruct PTR janela[eax]).estado, 1
	je TESTE 														;//Sorteia novamente

	mov (JanelaStruct PTR janela[eax]).estado, 1 					;//atribui valor 1 nas janelas sortedas (representa a janela quebrada)
	
	loop SORTEIA

TESTE:
	inc ecx 														;//Mantm o nฃmero de janelas quebradas (5)
	loop SORTEIA

	ret
sorteiaJanelasQuebradas ENDP


sortearBit PROC
    call Randomize
    mov eax, LENGTHOF bitPosicoes
    call RandomRange
    
    mov bl, bitPosicoes[eax]
    
    mov bit.posicaoX, bl
    mov felix.posicaoX, bl
    mov bit.posicaoY, 4
    
    ret
sortearBit ENDP


desenhaRalph PROC
    mov ah, ralph.posicaoY
	mov ecx, ALTURA_RALPH
	mov ebx, OFFSET desenhoRalph
	
DESENHA_LINHA:
	mov dh, ah
	mov dl, ralph.posicaoX
	call Gotoxy
	mov edx, ebx
	call WriteString
	add ebx, SIZEOF desenhoRalph
	inc ah
	loop DESENHA_LINHA	
	
	ret
desenhaRalph ENDP


desenhaLVida PROC
	mov dh, ah
	mov dl, (VidaStruct PTR vida[esi]).posicaoX
	call Gotoxy
	mov edx, ebx
	call WriteString
	inc ah
	add ebx, SIZEOF desenhoVida	
	
	ret
desenhaLVida ENDP


desenhaVida PROC
	mov eax, COR_CORACAO
	call SetTextColor
	movzx ecx, ralph.quantidadeVidas
	mov esi, 0
	
DESENHA_PROXIMA_VIDA:
	push ecx
	mov ecx, 3
	mov ah, (VidaStruct PTR vida[esi]).posicaoY
	mov ebx, OFFSET desenhoVida

DESENHA_PROXIMA_LINHA:
	call desenhaLVida
	cmp ecx, 0
	dec ecx
	ja DESENHA_PROXIMA_LINHA
	
	pop ecx
	add esi, TYPE VidaStruct
	cmp ecx, 0
	dec ecx
	ja DESENHA_PROXIMA_VIDA

	mov eax, CORPADRAO
	call SetTextColor
	ret
desenhaVida ENDP


atualizarBit PROC
    add bit.posicaoY, 1
    cmp bit.posicaoY, ROWS
    jb DESENHA_BIT
    call sortearBit
    
DESENHA_BIT:
    mov dl,bit.posicaoX
    mov dh,bit.posicaoY
    call Gotoxy
    mov eax, COR_BIT
    call SetTextColor
    mov edx, OFFSET desenhoBit
    call WriteString
    mov eax, CORPADRAO
    call SetTextColor
    ret
atualizarBit ENDP


estadoJogar PROC

INICIAL:
    movzx ecx, fase
    call escreverTituloFase
	call inicializaVida
    call sortearBit
	
	call sorteiaJanelasQuebradas
    call desenhaJanela
	
LETECLADO:
    call gotoInicio
	mov edx, OFFSET cenario
	call WriteString
	
	call desenhaVida
	
    call desenhaRalph
    call desenhaFelix
    
    call atualizarBit
    
    mov  eax, DELAY_LEITURA
    call Delay  
    
    call ReadKey
	
	call atualizaPersonagem
	
	call verificaColisaoJanela
    
    call verificaColisaoBit
	
	call verificaAcabou
	
	cmp terminou, 1
	je TERMINOU_JOGO
    cmp terminou, 2
    jne LETECLADO
    call inicializaProximaFase
    jmp INICIAL

TERMINOU_JOGO:
	call reseta
	ret
estadoJogar ENDP


reseta PROC
    mov fase, 1
	mov janelasConcertadas, 0
    mov janelasQuebradas, JANELAS_QUEBRADAS_INICIAL
	mov ralph.quantidadeVidas, QUANTIDADE_VIDAS
	mov terminou, 0
	
	mov ralph.posicaoX, 44
	mov ralph.posicaoY, 36 - ALTURA_RALPH
	
	mov ecx, 9
	mov eax, 0
	
INICIALIZA:
	mov (JanelaStruct PTR janela[eax]).estado, 0
	add eax, TYPE JanelaStruct
	loop INICIALIZA
	
	ret
reseta ENDP


inicializaProximaFase PROC
	mov janelasConcertadas, 0
	mov terminou, 0
	
	mov ralph.posicaoX, 44
	mov ralph.posicaoY, 36 - ALTURA_RALPH
	
	mov ecx, 9
	mov eax, 0
	
INICIALIZA:
	mov (JanelaStruct PTR janela[eax]).estado, 0
	add eax, TYPE JanelaStruct
	loop INICIALIZA
	
	ret
inicializaProximaFase ENDP


verificaAcabou PROC
	cmp ralph.quantidadeVidas, 0
	je INVOCA_PERDEU
    mov al, janelasConcertadas
	cmp al, janelasQuebradas
	je PROXIMA_FASE
	jmp SAIR_VERIFICAACABOU

INVOCA_PERDEU:
	INVOKE estadoResultado, PERDEU
	mov terminou, 1
	jmp SAIR_VERIFICAACABOU

PROXIMA_FASE:
    cmp janelasQuebradas, QUANTIDADE_JANELAS
    je INVOCA_GANHOU
    add janelasQuebradas, 1
    add fase, 1
    mov terminou, 2
    jmp SAIR_VERIFICAACABOU   
    
INVOCA_GANHOU:
	INVOKE estadoResultado, GANHOU
	mov terminou, 1

SAIR_VERIFICAACABOU:
	ret
verificaAcabou ENDP


atualizaPersonagem PROC
	cmp dx,VK_UP
	jne BAIXO
    call tocarSomPulo
	sub ralph.posicaoY, PULO_Y
	call verificaColisao
	add ralph.posicaoY, al
	jmp L1
	
BAIXO:
	cmp dx,VK_DOWN
	jne ESQUERDA
    call tocarSomPulo
	add ralph.posicaoY, PULO_Y
	call verificaColisao
	sub ralph.posicaoY, al
	jmp L1

ESQUERDA:
	cmp dx,VK_LEFT
	jne DIREITA
    call tocarSomPulo
	sub ralph.posicaoX, PULO_X
	call verificaColisao
	add ralph.posicaoX, al
	jmp L1

DIREITA:
	cmp dx,VK_RIGHT
	jne L1
    call tocarSomPulo
	add ralph.posicaoX, PULO_X
	call verificaColisao
	sub ralph.posicaoX, al

L1:	
	ret
atualizaPersonagem ENDP


verificaColisaoJanela PROC
	cmp dx, VK_SPACE
	je VERIFICA
	jne NAO_VERIFICA
	
VERIFICA:
	mov ecx, QUANTIDADE_JANELAS
	mov esi, 0
	mov al, ralph.posicaoX
	mov ah, ralph.posicaoY
	sub al, 2                                                       ; diferena entre a posicao do ralph e a janela
	sub ah, ALTURA_JANELA - ALTURA_RALPH
REPETE:
    cmp (JanelaStruct PTR janela[esi]).estado, 0
    je PROXIMA_JANELA
	cmp al, (JanelaStruct PTR janela[esi]).posicaoX
	jne PROXIMA_JANELA
	cmp ah, (JanelaStruct PTR janela[esi]).posicaoY
	je CONCERTOU_JANELA
	
PROXIMA_JANELA:
	add esi, TYPE JanelaStruct
	loop REPETE
    jmp NAO_VERIFICA
	
CONCERTOU_JANELA:
	mov (JanelaStruct PTR janela[esi]).estado, 0
    cmp esi, 7 * TYPE JanelaStruct                                  ; Testando a posio 7 (porta)
    jne COLOCAR_JANELA
    mov edi, OFFSET portaNormal
    jmp DESENHAR
COLOCAR_JANELA:
    mov edi, OFFSET janelaNormal
DESENHAR:
    INVOKE desenhaLJanela, esi, edi
	inc janelasConcertadas
	
NAO_VERIFICA:
	ret
verificaColisaoJanela ENDP


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
    call tocarSomColisao
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
verificaColisao ENDP


;---------------------------------------------------------
;                    tocarSomPulo PROC
;   Toca o som do pulo
; Entrada: Nada
; Saกda: Nada
; Requer: Nada
;---------------------------------------------------------
tocarSomPulo PROC
    mov eax, SND_FILENAME
    or eax, SND_ASYNC
    INVOKE PlaySound, OFFSET somPulo, NULL, eax
    
    ret
tocarSomPulo ENDP


;---------------------------------------------------------
;                    tocarSomColisao PROC
;   Toca o som da coliso
; Entrada: Nada
; Saกda: Nada
; Requer: Nada
;---------------------------------------------------------
tocarSomColisao PROC
    mov eax, SND_FILENAME
    or eax, SND_ASYNC
    INVOKE PlaySound, OFFSET somColisao, NULL, eax
    
    ret
tocarSomColisao ENDP