COLS TEXTEQU %140
ROWS TEXTEQU %40

CORPADRAO TEXTEQU %70h                                              ; Cores do jogo

.DATA
    corAnterior BYTE ?                                              ; Cores do console antes de iniciar o jogo
    barraDeTitulo BYTE "Ralph Assembles",0                          ; T¡tulo da janela
    
    outHandle HANDLE 0
    scrBuffer CHAR_INFO COLS*ROWS DUP(<<0>, 0Fh>)                   ; Buffer de sa¡da
    scrSize COORD <COLS, ROWS>                                      ; Tamanho do buffer de sa¡da
    scrCoord COORD <0, 0>                                           ; A primeira coordenada da buffer de sa¡da
    scrRect SMALL_RECT <0, 0, COLS - 1, ROWS - 1>                   ; Retƒngulo
    cursorInfo CONSOLE_CURSOR_INFO <>                               ; Informa‡”es do cursor