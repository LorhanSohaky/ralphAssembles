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

	cenario BYTE "                              ��Ĵ  �������������������������������������������������������������������  ��Ĵ                              ",10
			BYTE "                              ��Ĵ  �������������������������������������������������������������������  ��Ĵ                              ",10
            BYTE "                           �����Ĵ  �������������������������������������������������������������������  �����Ŀ                           ",10
			BYTE "                           � � � �  �������������������������������������������������������������������  � � � �                           ",10
			BYTE "                           � � � �  �������������������������������������������������������������������  � � � �                           ",10
			BYTE "                           �����Ĵ  �������������������������������������������������������������������  �������                           ",10
			BYTE "                              ��Ĵ  �������������������������������������������������������������������  ��Ĵ                              ",10
            BYTE "                             ���������������������������������������������������������������������������������                             ",10
			BYTE "                             ���������������������������������������������������������������������������������                             ",10
			BYTE "                              ��Ĵ ��         ���Ŀ                ���Ŀ                ���Ŀ         �� ��Ĵ                              ",10
			BYTE "                              ��Ĵ ��     �����   ���Ŀ        �����   ���Ŀ        �����   ���Ŀ     �� ��Ĵ                              ",10
			BYTE "                           �����Ĵ ��     �������������        �������������        �������������     �� �����Ŀ                           ",10
            BYTE "                           � � � � ��      � ������� �          � ������� �          � ������� �      �� � � � �                           ",10
			BYTE "                           � � � � ��      � �����͹ �          � �����͹ �          � �����͹ �      �� � � � �                           ",10
			BYTE "                           �����Ĵ ��      � ������� �          � ������� �          � ������� �      �� �������                           ",10
			BYTE "                              ��Ĵ ��     �������������        �������������        �������������     �� ��Ĵ                              ",10
			BYTE "                              ��Ĵ ��     �������������        �������������        �������������     �� ��Ĵ                              ",10
            BYTE "                              ��Ĵ ��                                                                 �� ��Ĵ                              ",10
			BYTE "                              ��Ĵ ��                                                                 �� ��Ĵ                              ",10
			BYTE "                              ��Ĵ ��         ���Ŀ                ���Ŀ                ���Ŀ         �� ��Ĵ                              ",10
			BYTE "                           �����Ĵ ��     �����   ���Ŀ        �����   ���Ŀ        �����   ���Ŀ     �� �����Ŀ                           ",10
			BYTE "                           � � � � ��     �������������        �������������        �������������     �� � � � �                           ",10
            BYTE "                           � � � � ��      � ������� �          � ������� �          � ������� �      �� � � � �                           ",10
			BYTE "                           �����Ĵ ��      � �����͹ �          � �����͹ �          � �����͹ �      �� �������                           ",10
			BYTE "                              ��Ĵ ��      � ������� �          � ������� �          � ������� �      �� ��Ĵ                              ",10
			BYTE "                              ��Ĵ ��     �������������        �������������        �������������     �� ��Ĵ                              ",10
			BYTE "                              ��Ĵ ��     �������������        �������������        �������������     �� ��Ĵ                              ",10
            BYTE "                              ��Ĵ ��                      �������������������Ŀ                      �� ��Ĵ                              ",10
			BYTE "                              ��Ĵ ��                      �       BAILE       �                      �� ��Ĵ                              ",10
			BYTE "                           �����Ĵ ��         ���Ŀ        �   �����������ͻ   �        ���Ŀ         �� �����Ŀ                           ",10
			BYTE "                           � � � � ��     �����   ���Ŀ    ���Ĺ����������������    �����   ���Ŀ     �� � � � �                           ",10
			BYTE "                           � � � � ��     �������������     ��Ĺ���������������     �������������     �� � � � �                           ",10
			BYTE "                           �����Ĵ ��      � ������� �       � �����������͹ �       � ������� �      �� �������                           ",10
            BYTE "                              ��Ĵ ��      � �����͹ �       � ������������� �       � �����͹ �      �� ��Ĵ                              ",10
			BYTE "                              ��Ĵ ��      � ������� �       � ������������� �       � ������� �      �� ��Ĵ                              ",10
			BYTE "                              ��Ĵ ��     �������������      � �����������͹ �      �������������     �� ��Ĵ                              ",10
			BYTE "                              ��Ĵ ��     �������������      � �����������͹ �      �������������     �� ��Ĵ                              ",10
			BYTE "                              ��Ĵ ��                        � �����������͹ �                        �� ��Ĵ                              ",10
			BYTE "                                ����������������������������Ĵ �����������͹ ������������������������������                                ",10
			BYTE "                                ���������������������������������������������������������������������������                                ",0
			
	janela JanelaStruct <42, 9, 0>, <63, 9, 0>, <84, 9, 0>, <42, 19, 0>, <63, 19, 0>, <84, 19, 0>, <42, 29, 0>, <63, 29, 0>, <84, 29, 0>
	janelasConcertadas BYTE 0
    janelasQuebradas BYTE JANELAS_QUEBRADAS_INICIAL
	janelaNormal   BYTE "    ���Ŀ    ",0
				   BYTE "�����   ���Ŀ",0
				   BYTE "�������������",0
				   BYTE " � ������� � ",0
				   BYTE " � �����͹ � ",0
				   BYTE " � ������� � ",0
				   BYTE "�������������",0
				   BYTE "�������������",0
	
	portaNormal   BYTE "�����������ͻ",0
				  BYTE "�������������",0
				  BYTE "�������������",0
				  BYTE "�����������͹",0
				  BYTE "�������������",0
				  BYTE "�������������",0
				  BYTE "�����������͹",0
				  BYTE "�����������͹",0
                  
    janelaQuebrada BYTE "    ���Ŀ    ",0
				   BYTE "�����   ���Ŀ",0
				   BYTE "�������������",0
				   BYTE " � ��۰��� � ",0
				   BYTE " � �����͹ � ",0
				   BYTE " � �����ۺ � ",0
				   BYTE "�������������",0
				   BYTE "�������������",0
	
	portaQuebrada BYTE "�����������ͻ",0
				  BYTE "���۰��������",0
				  BYTE "���۰��������",0
				  BYTE "�����������͹",0
				  BYTE "���������۰��",0
				  BYTE "���������۰��",0
				  BYTE "�����������͹",0
				  BYTE "�����������͹",0

	ralph RalphStruct <3, 44, 36-ALTURA_RALPH>
	desenhoRalph BYTE " (//  ",0
				 BYTE " (,",34,")>",0
				 BYTE "<( )' ",0
				 BYTE " J L  ",0
    
    felix FelixStruct <0,8 - ALTURA_FELIX>
    inicioFelix     BYTE ",/_) ",0
					BYTE " (",34,") ",0
					BYTE " /I\ ",0
					BYTE "_|||_",0
	fimFelix BYTE 0
	
	bit BitStruct <0,0>
    desenhoBit BYTE "1", 0
    bitPosicoes BYTE 44, 65, 86
	
	vida VidaStruct QUANTIDADE_VIDAS DUP(<?,?>)
	desenhoVida BYTE "  ��� ���  ",0
				BYTE "�����������",0
				BYTE " ��������� ",0
				BYTE "   �����   ",0
				BYTE "    ���    ",0
	
    corConsole BYTE ?
	
	terminou BYTE 0
    fase BYTE 1
    
    somPulo BYTE "assets\pulo.wav",0
    somColisao BYTE "assets\colisao.wav",0
    somJanela BYTE "assets\janela.wav",0
	
.CODE

;---------------------------------------------------------
;                    estadoJogar PROC
;   Ocorre todas as chamadas das fun��es declaradas
; para a funcionalidade do jogo
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
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


;---------------------------------------------------------
;                    desenhaFelix PROC
;   Desenha o personagem Felix
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
desenhaFelix PROC
    mov eax, COR_FELIX
    call SetTextColor
    
    mov al, felix.posicaoX
    mov ah, felix.posicaoY
    mov ecx, ALTURA_FELIX											; Para desenhar todas as linhas do Felix
    mov ebx, OFFSET inicioFelix
    
DESENHA_FELIX:
    mov dx, ax
    call Gotoxy
    mov edx, ebx
    call WriteString
    
    add ebx, SIZEOF inicioFelix										; Vai para a pr�xima linha do desesenho do Felix
    inc ah															; Incrementa a posi��o Y
    loop DESENHA_FELIX
    
    mov eax, CORPADRAO
    call SetTextColor
    
    ret
desenhaFelix ENDP


;---------------------------------------------------------
;                    desenhaRalph PROC
;   Desenha o personagem Ralph
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
desenhaRalph PROC
	mov eax, COR_RALPH
    call SetTextColor
	
    mov ah, ralph.posicaoY
	mov ecx, ALTURA_RALPH											; Para desenhar todas as linhas do Ralph
	mov ebx, OFFSET desenhoRalph
	
DESENHA_LINHA:
	mov dh, ah
	mov dl, ralph.posicaoX
	call Gotoxy
	mov edx, ebx
	call WriteString
	
	add ebx, SIZEOF desenhoRalph									; Vai para a pr�xima linha do desesenho do Ralph
	inc ah															; Incrementa a posi��o Y
	loop DESENHA_LINHA	
	
	mov eax, CORPADRAO
    call SetTextColor
	
	ret
desenhaRalph ENDP


;---------------------------------------------------------
;                 atualizaPersonagem PROC
;   Atualiza a posi��o do Ralph de acordo com as teclas
; direcionais presionadas
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
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


;---------------------------------------------------------
;                    inicializaVida PROC
;   Inicializa as posi��es das vidas
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
inicializaVida PROC
	movzx ecx, ralph.quantidadeVidas
	mov eax, 0														; Inicia na primeira vida
	mov bl, 1
	
PROXIMA_VIDA:
	mov (VidaStruct PTR vida[eax]).posicaoX, 5
	mov (VidaStruct PTR vida[eax]).posicaoY, bl
	add eax, TYPE VidaStruct										; Vai para a pr�xima vida
	add bl, 6														; Soma a posi��o Y para printar a pr�xima vida
	loop PROXIMA_VIDA
	
	ret
inicializaVida ENDP


;---------------------------------------------------------
;                    desenhaLVida PROC
;   Desenha cada linhas da vida
; Entrada: ah: posi��o Y da vida
; Sa�da: Nada
; Requer: Chamar desenhaVida
;---------------------------------------------------------
desenhaLVida PROC
	mov dh, ah
	mov dl, (VidaStruct PTR vida[esi]).posicaoX
	call Gotoxy
	
	mov edx, ebx
	call WriteString
	
	inc ah															; Incrementa a posi��o Y
	add ebx, SIZEOF desenhoVida										; Vai para a pr�xima linha do desenhoVida
	
	ret
desenhaLVida ENDP


;---------------------------------------------------------
;                    desenhaVida PROC
;   Desenha todas as linhas da vida
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
desenhaVida PROC
	mov eax, COR_CORACAO
	call SetTextColor
	
	movzx ecx, ralph.quantidadeVidas
	mov esi, 0
	
DESENHA_PROXIMA_VIDA:
	push ecx
	mov ecx, 5
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


;---------------------------------------------------------
;                    desenhaLinha PROC
;   Desenha a linha da janela
; Entrada: edi: OFFSET destino, esi: OFFSET origem
; Sa�da: edi: OFFSET destino, esi: OFFSET origem
; Requer: Chamar desenhaLJanela
;---------------------------------------------------------
desenhaLinha PROC USES ecx
    mov ecx, LARGURA_JANELA                                         ; N�mero de linhas
    rep movsb

    ret
desenhaLinha ENDP


;---------------------------------------------------------
;                    desenhaLJanela PROC
;   Desenha todas as linhas da janela/porta normal ou
; quebrada no cen�rio
; Entrada: source: �ndice da janela, conteudo: conteudo
; que ser� desenhado
; Sa�da: Nada
; Requer: Chamar desenhaJanela
;---------------------------------------------------------
desenhaLJanela PROC USES ecx edi esi,
        source: PTR BYTE,
        conteudo: DWORD
        
    mov ecx, ALTURA_JANELA + 1                                      ; N�mero de linhas
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


;---------------------------------------------------------
;                    desenhaJanela PROC
;   Desenha todas as janelas/porta no cen�rio
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
desenhaJanela PROC
    mov ecx, QUANTIDADE_JANELAS										; Printa a quantidade de janelas do cen�rio
    mov esi, 0
    
VERIFICA:
	cmp esi, 7 * TYPE JanelaStruct                                  ; Testa se � a porta (posi��o 7)
	je PORTA
    cmp (JanelaStruct PTR janela[esi]).estado, 1				    ; Verifica se o estado � 1 (janela quebrada)
    je JANELA_QUEBRADA
    mov edi, OFFSET janelaNormal
    jmp CONTINUA
    
JANELA_QUEBRADA:
	mov edi, OFFSET janelaQuebrada
	jmp CONTINUA
    
PORTA:
    cmp (JanelaStruct PTR janela[esi]).estado, 1 				    ; Verifica se o estado � 1 (janela quebrada)
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


;---------------------------------------------------------
;               sorteiaJanelasQuebradas PROC
;   Sorteia quais janelas v�o estar quebradas
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
sorteiaJanelasQuebradas PROC	
	movzx ecx, janelasQuebradas										; Quantidade de janelas quebradas
	
SORTEIA:
	call Randomize
	mov eax, QUANTIDADE_JANELAS 									; Sorteia um n�mero de 0 a 9 em todo novo loop
	call RandomRange
	mov bl, TYPE JanelaStruct
	mul bl
	
	cmp (JanelaStruct PTR janela[eax]).estado, 1					; Verifica se a janela j� est� quebradas
	je TESTE 														; Sorteia novamente caso j� esteja quebradas

	mov (JanelaStruct PTR janela[eax]).estado, 1 					; Atribui valor 1 nas janelas sortedas (representa a janela quebrada)
	
	loop SORTEIA

TESTE:
	inc ecx 														; Mant�m o n�mero de janelas quebradas (5)
	loop SORTEIA

	ret
sorteiaJanelasQuebradas ENDP


;---------------------------------------------------------
;               verificaColisaoJanela PROC
;   Verifica se o Ralph est� consertando a janela
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
verificaColisaoJanela PROC
	cmp dx, VK_SPACE
	je VERIFICA
	jne NAO_VERIFICA
	
VERIFICA:
	mov ecx, QUANTIDADE_JANELAS
	mov esi, 0
	mov al, ralph.posicaoX
	mov ah, ralph.posicaoY
	sub al, 2                                                       ; Diferen�a entre a posicao do Ralph e a janela
	sub ah, ALTURA_JANELA - ALTURA_RALPH
	
REPETE:
    cmp (JanelaStruct PTR janela[esi]).estado, 0
    je PROXIMA_JANELA
	cmp al, (JanelaStruct PTR janela[esi]).posicaoX
	jne PROXIMA_JANELA
	cmp ah, (JanelaStruct PTR janela[esi]).posicaoY
	je CONSERTOU_JANELA
	
PROXIMA_JANELA:
	add esi, TYPE JanelaStruct
	loop REPETE
    jmp NAO_VERIFICA
	
CONSERTOU_JANELA:
    call tocarSomJanela
	mov (JanelaStruct PTR janela[esi]).estado, 0
    cmp esi, 7 * TYPE JanelaStruct                                  ; Testando a posi��o 7 (porta)
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


;---------------------------------------------------------
;                    sorteiaBit PROC
;   Sorteia a posicao X em que o bit ir� cair
; Entrada: Nada
; Sa�da: Nada
; Requer: Chamar a fun��o atualizarBit ou 
; verificaColisaoBit
;---------------------------------------------------------
sortearBit PROC
    call Randomize													; Para sortear numeros diferentes
    mov eax, LENGTHOF bitPosicoes
    call RandomRange												; Sorteia um valor aleatorio dentre os eax
    
    mov bl, bitPosicoes[eax]
    
    mov bit.posicaoX, bl
    mov felix.posicaoX, bl
    mov bit.posicaoY, 4
    
    ret
sortearBit ENDP


;---------------------------------------------------------
;                    atualizarBit PROC
;   Atualiza a posi��o do bit, ou seja, faz o movimento
; dele caindo na tela
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
atualizarBit PROC
    add bit.posicaoY, 1												; Atualiza a posi��o Y dando a sensa��o que o bit est� caindo

    cmp bit.posicaoY, ROWS											; Verifica se a posi��o do bit � menor que o n�mero de linhas
    jb DESENHA_BIT													; Caso n�o tenha passado da altura de linhas, desenha o bit
	
    call sortearBit													; Caso tenha passado da altura de linhas, sorteia uma nova posi��o
    
DESENHA_BIT:
    mov dl, bit.posicaoX
    mov dh, bit.posicaoY
    call Gotoxy
	
    mov eax, COR_BIT
    call SetTextColor
	
    mov edx, OFFSET desenhoBit
    call WriteString
	
    mov eax, CORPADRAO
    call SetTextColor
	
    ret
atualizarBit ENDP


;---------------------------------------------------------
;                 verificaColisaoBit PROC
;   Verifica se o bit colidiu no Ralph
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
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


;---------------------------------------------------------
;                  verificaColisao PROC
;   Movimenta os Ralph pelas janelas
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
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
;                    reseta PROC
;   Inicializa as vari�veis fase, janelaConcertada, janela
; Quebrada, terminou, os estados da janela, a posi��o e a
; quantidadedeVidas do Ralph
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
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


;---------------------------------------------------------
;               inicializaProximaFase PROC
;   Inicializa a variavel janelasConcertadas, terminou,
; posi��o do Ralph e o estados das janelas para 
; concertadas
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
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


;---------------------------------------------------------
;                 verificaAcabou PROC
;   Verifica se acabou o jogo ou a fase e atualiza a
; proxima fase
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
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


;---------------------------------------------------------
;                    tocarSomPulo PROC
;   Toca o som do pulo
; Entrada: Nada
; Sa�da: Nada
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
;   Toca o som da colis�o
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
tocarSomColisao PROC
    mov eax, SND_FILENAME
    or eax, SND_ASYNC
    INVOKE PlaySound, OFFSET somColisao, NULL, eax
    
    ret
tocarSomColisao ENDP


;---------------------------------------------------------
;                    tocarSomJanela PROC
;   Toca o som da janela
; Entrada: Nada
; Sa�da: Nada
; Requer: Nada
;---------------------------------------------------------
tocarSomJanela PROC
    mov eax, SND_FILENAME
    or eax, SND_ASYNC
    INVOKE PlaySound, OFFSET somJanela, NULL, eax
    
    ret
tocarSomJanela ENDP