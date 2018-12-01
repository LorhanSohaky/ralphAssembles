RalphStruct STRUCT
    quantidadeVidas BYTE ?
    posicaoX BYTE ?
    posicaoY BYTE ?
RalphStruct ENDS

BitStruct STRUCT
    posicaoX BYTE ?
    posicaoY BYTE ?
BitStruct ENDS

JanelaStruct STRUCT
	posicaoX BYTE ?
	posicaoY BYTE ?
	estado BYTE ?
JanelaStruct ENDS

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
    bit BitStruct <0,0>
	janela JanelaStruct <42, 9, 0>, <63, 9, 0>, <84, 9, 0>, <42, 19, 0>, <63, 19, 0>, <84, 19, 0>, <42, 29, 0>, <63, 29, 0>, <84, 29, 0>
	
	desenho1 BYTE "*",0
	desenho2 BYTE "*",0
    
    desenhoBit BYTE "1", 0
	
.CODE

desenhaLJanela PROC USES edx ecx
	mov ecx, edx
	mov dh, ah
	mov dl, (JanelaStruct PTR janela[ecx]).posicaoX
	call Gotoxy
	mov edx, ebx
	call WriteString
	add ebx, SIZEOF janelaQuebrada
	inc ah
	
	ret
desenhaLJanela ENDP


desenhaJanela PROC
	mov ecx, 9 ;//9 janelas no total
	mov edx, 0
	
VERIFICA:
	cmp edx, 7*TYPE JanelaStruct
	je PORTA
	mov ebx, OFFSET janelaQuebrada
	jmp CONTINUA
PORTA:
	mov ebx, OFFSET portaQuebrada
CONTINUA:
	mov ah, (JanelaStruct PTR janela[edx]).posicaoY
	push ecx
	mov ecx, 8 ;//n linhas
	cmp (JanelaStruct PTR janela[edx]).estado, 1 ;//verifica se o estado � 1 (janela quebrada)
	je DESENHA
	jne PROXIMAJANELA

DESENHA:
	call desenhaLJanela
	loop DESENHA
	
PROXIMAJANELA:
	pop ecx
	inc esi
	add edx, TYPE JanelaStruct
	loop VERIFICA
	
	ret
desenhaJanela ENDP


sorteiaJanelasQuebradas PROC
	;//call inicializaJanela ;//inicializa as posi��es iniciais X e Y das janelas
	
	mov ecx, JANELAS_QUEBRADAS
	
SORTEIA:
	call Randomize
	mov eax, 9 ;//sorteia um n�mero de 0 a 9 em todo novo loop
	call RandomRange
	mov bl, TYPE JanelaStruct
	mul bl
	
	cmp (JanelaStruct PTR janela[eax]).estado, 1
	je TESTE ;//Sorteia novamente

	mov (JanelaStruct PTR janela[eax]).estado, 1 ;//atribui valor 1 nas janelas sortedas (representa a janela quebrada)
	
	loop SORTEIA

TESTE:
	inc ecx ;//Mant�m o n�mero de janelas quebradas (5)
	loop SORTEIA

	ret
sorteiaJanelasQuebradas ENDP


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
    call sortearBit
	
	call sorteiaJanelasQuebradas
	
LETECLADO:
    call gotoInicio
	mov edx, OFFSET cenario
	call WriteString
    
	call desenhaJanela
	
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