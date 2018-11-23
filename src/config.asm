COLS TEXTEQU %140
ROWS TEXTEQU %40

CORPADRAO TEXTEQU %70h                                              ; Cores do jogo

.DATA
    corAnterior BYTE ?                                              ; Cores do console antes de iniciar o jogo
    barraDeTitulo BYTE "Ralph Assembles",0                          ; Título da janela
    
    outHandle HANDLE 0
    scrBuffer CHAR_INFO COLS*ROWS DUP(<<0>, 0Fh>)                   ; Buffer de saída
    scrSize COORD <COLS, ROWS>                                      ; Tamanho do buffer de saída
    scrCoord COORD <0, 0>                                           ; A primeira coordenada da buffer de saída
    scrRect SMALL_RECT <0, 0, COLS - 1, ROWS - 1>                   ; Retângulo
    cursorInfo CONSOLE_CURSOR_INFO <>                               ; Informações do cursor