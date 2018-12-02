COLS TEXTEQU %140
ROWS TEXTEQU %40

GANHOU TEXTEQU %01
PERDEU TEXTEQU %00

ALTURA_RALPH TEXTEQU %4
LARGURA_RALPH TEXTEQU %5

ALTURA_FELIX TEXTEQU %2
COR_FELIX TEXTEQU %0Bh

ALTURA_JANELA TEXTEQU %7
LARGURA_JANELA TEXTEQU %13

MIN_POSICAO_X TEXTEQU %37
MAX_POSICAO_X TEXTEQU %103

MIN_POSICAO_Y TEXTEQU %7
MAX_POSICAO_Y TEXTEQU ROWS

JANELAS_QUEBRADAS_INICIAL TEXTEQU %5
JANELAS_QUEBRADAS = JANELAS_QUEBRADAS_INICIAL

DELAY_FASE TEXTEQU %1000

PULO_X TEXTEQU %21
PULO_Y TEXTEQU %10

DELAY_LEITURA TEXTEQU %50

QUANTIDADE_JANELAS TEXTEQU %9
QUANTIDADE_VIDAS TEXTEQU %3

CORPADRAO TEXTEQU %0Ah                                              ; Cores do jogo
COR_BIT TEXTEQU %0Eh
COR_CORACAO TEXTEQU %0Ch

.DATA
    corAnterior BYTE ?                                              ; Cores do console antes de iniciar o jogo
    barraDeTitulo BYTE "Ralph Assembles",0                          ; T¡tulo da janela
    
    outHandle HANDLE 0
    scrBuffer CHAR_INFO COLS*ROWS DUP(<<0>, 0Fh>)                   ; Buffer de sa¡da
    scrSize COORD <COLS, ROWS>                                      ; Tamanho do buffer de sa¡da
    scrCoord COORD <0, 0>                                           ; A primeira coordenada da buffer de sa¡da
    scrRect SMALL_RECT <0, 0, COLS - 1, ROWS - 1>                   ; Retƒngulo
    cursorInfo CONSOLE_CURSOR_INFO <>                               ; Informa‡”es do cursor