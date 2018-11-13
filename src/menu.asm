.DATA

.CODE

estadoMenu PROC




MENUJOGAR:
    ;call desenharMenuJogar
LETECLADO:
    call ReadKey
    
    cmp dx,VK_UP
    je MENUCREDITOS
    cmp dx,VK_DOWN
    je MENUINSTRUCOES
    jmp MENUJOGAR

MENUCREDITOS:
    ;call desenharMenuCreditos
    call ReadChar
    cmp al, 'w'
    je MENUINSTRUCOES
    cmp al, 's'
    je MENUJOGAR
    
MENUINSTRUCOES:
    ;call desenharMenuCreditos
    call ReadChar
    cmp al, 'w'
    je MENUINSTRUCOES
    cmp al, 's'
    je MENUJOGAR
    
    ret
estadoMenu ENDP