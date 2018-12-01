COLS TEXTEQU %140
ROWS TEXTEQU %40

ALTURA_RALPH TEXTEQU %2
LARGURA_RALPH TEXTEQU %0

MIN_POSICAO_X TEXTEQU %37
MAX_POSICAO_X TEXTEQU %103

MIN_POSICAO_Y TEXTEQU %7
MAX_POSICAO_Y TEXTEQU ROWS

JANELAS_QUEBRADAS TEXTEQU %5

PULO_X TEXTEQU %21
PULO_Y TEXTEQU %10

DELAY_LEITURA TEXTEQU %50

CORPADRAO TEXTEQU %0Ah                                              ; Cores do jogo
COR_BIT TEXTEQU %0Eh

.DATA
    corAnterior BYTE ?                                              ; Cores do console antes de iniciar o jogo
    barraDeTitulo BYTE "Ralph Assembles",0                          ; T¡tulo da janela
    
    outHandle HANDLE 0
    scrBuffer CHAR_INFO COLS*ROWS DUP(<<0>, 0Fh>)                   ; Buffer de sa¡da
    scrSize COORD <COLS, ROWS>                                      ; Tamanho do buffer de sa¡da
    scrCoord COORD <0, 0>                                           ; A primeira coordenada da buffer de sa¡da
    scrRect SMALL_RECT <0, 0, COLS - 1, ROWS - 1>                   ; Retƒngulo
    cursorInfo CONSOLE_CURSOR_INFO <>                               ; Informa‡”es do cursor