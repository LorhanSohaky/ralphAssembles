.DATA

inicioTitulo                BYTE   "    ____          __        __       ___                                  __     __           ", 10
                            BYTE   "   / __ \ ____ _ / /____   / /_     /   |   _____ _____ ___   ____ ___   / /_   / /___   _____", 10
                            BYTE   "  / /_/ // __ `// // __ \ / __ \   / /| |  / ___// ___// _ \ / __ `__ \ / __ \ / // _ \ / ___/", 10
                            BYTE   " / _, _// /_/ // // /_/ // / / /  / ___ | (__  )(__  )/  __// / / / / // /_/ // //  __/(__  ) ", 10
                            BYTE   "/_/ |_| \__,_//_// .___//_/ /_/  /_/  |_|/____//____/ \___//_/ /_/ /_//_.___//_/ \___//____/  ", 10
                            BYTE   "                /_/                                                                           ", 10,10,0

creditos                    BYTE   "                                          CRDITOS                                              ", 10, 0
creditosSelecionado         BYTE   "                                      ->  CRDITOS  <-                                          ", 10, 0

jogar                       BYTE   "                                           JOGAR                                              ", 10, 0
jogarSelecionado            BYTE   "                                       ->  JOGAR  <-                                          ", 10, 0

instrucoes                  BYTE   "                                         INSTRU€™ES                                              ", 10, 0
instrucoesSelecionado       BYTE   "                                     ->  INSTRU€™ES  <-                                          ", 10, 0

sair                        BYTE   "                                            SAIR                                                 ", 10, 0
sairSelecionado             BYTE   "                                        ->  SAIR  <-                                             ", 10, 0


musicaMenu BYTE "assets\menu.wav",0




.CODE

;---------------------------------------------------------
;                    estadoMenu PROC
;   Estado menu
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
estadoMenu PROC
    call tocarSomMenu

MENUJOGAR:
    call desenharMenuJogar
    
LETECLADOJ:
    mov  eax, DELAY_LEITURA
    call Delay
    
    call ReadKey
    jz LETECLADOJ
    
    cmp dx,VK_UP
    je MENUCREDITOS
    
    cmp dx,VK_DOWN
    je MENUINSTRUCOES
	
	cmp dx, VK_SPACE
    jne MENUJOGAR
    INVOKE PlaySound, NULL, NULL, NULL                              ; Para a m£sica de fundo
    call estadoJogar
    call limparTela
    call tocarSomMenu
    
    jmp MENUJOGAR

MENUCREDITOS:
    call desenharMenuCreditos
    
LETECLADOC:
    mov  eax, DELAY_LEITURA
    call Delay
    
    call ReadKey
    jz LETECLADOC
    
    cmp dx,VK_UP
    je MENUSAIR
    
    cmp dx,VK_DOWN
    je MENUJOGAR
    
    cmp dx, VK_SPACE
    jne VOLTAC
    INVOKE PlaySound, NULL, NULL, NULL                              ; Para a m£sica de fundo
    call estadoCreditos
    call limparTela
    call tocarSomMenu
    
VOLTAC:    
    jmp MENUCREDITOS
    
MENUINSTRUCOES:
    call desenharMenuInstrucoes
    
LETECLADOI:
    mov  eax, DELAY_LEITURA
    call Delay
    
    call ReadKey
    jz LETECLADOI
    
    cmp dx,VK_UP
    je MENUJOGAR
    
    cmp dx,VK_DOWN
    je MENUSAIR
    
    cmp dx, VK_SPACE
    jne VOLTAI
    INVOKE PlaySound, NULL, NULL, NULL                              ; Para a m£sica de fundo
    call estadoInstrucoes
    call limparTela
    call tocarSomMenu

VOLTAI:
    jmp MENUINSTRUCOES
    
MENUSAIR:
    call desenharMenuSair
    
LETECLADOS:
    mov  eax, DELAY_LEITURA
    call Delay
    
    call ReadKey
    jz LETECLADOS
    
    cmp dx,VK_UP
    je MENUINSTRUCOES
    
    cmp dx,VK_DOWN
    je MENUCREDITOS
    
    cmp dx, VK_SPACE
    je FIM
    
    jmp MENUSAIR
    
FIM:
    ret
estadoMenu ENDP


;---------------------------------------------------------
;                    desenharMenuJogar PROC
;   Desenha o menu, com o item jogar selecionado
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
desenharMenuJogar PROC
    call gotoInicio
    
    mov edx, OFFSET inicioTitulo
    call WriteString
    
    mov edx, OFFSET creditos
    call WriteString
    
    mov edx, OFFSET jogarSelecionado
    call WriteString
    
    mov edx, OFFSET instrucoes
    call WriteString
    
    mov edx, OFFSET sair
    call WriteString
   
    ret
desenharMenuJogar ENDP


;---------------------------------------------------------
;                desenharMenuInstrucoes PROC
;   Desenha o menu, com o item instru‡”es selecionado
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
desenharMenuInstrucoes PROC
    call gotoInicio
    
    mov edx, OFFSET inicioTitulo
    call WriteString
    
    mov edx, OFFSET creditos
    call WriteString
    
    mov edx, OFFSET jogar
    call WriteString
    
    mov edx, OFFSET instrucoesSelecionado
    call WriteString
    
    mov edx, OFFSET sair
    call WriteString
    
    ret
desenharMenuInstrucoes ENDP


;---------------------------------------------------------
;                   desenharMenuCreditos PROC
;   Desenha o menu, com o item cr‚ditos selecionado
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
desenharMenuCreditos PROC
    call gotoInicio
    
    mov edx, OFFSET inicioTitulo
    call WriteString
    
    mov edx, OFFSET creditosSelecionado
    call WriteString
    
    mov edx, OFFSET jogar
    call WriteString
    
    mov edx, OFFSET instrucoes
    call WriteString
    
    mov edx, OFFSET sair
    call WriteString
    
    ret
desenharMenuCreditos ENDP


;---------------------------------------------------------
;                    desenharMenuSair PROC
;   Desenha o menu, com o item sair selecionado
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
desenharMenuSair PROC
    call gotoInicio
    
    mov edx, OFFSET inicioTitulo
    call WriteString
    
    mov edx, OFFSET creditos
    call WriteString
    
    mov edx, OFFSET jogar
    call WriteString
    
    mov edx, OFFSET instrucoes
    call WriteString
    
    mov edx, OFFSET sairSelecionado
    call WriteString
    
    ret
desenharMenuSair ENDP


;---------------------------------------------------------
;                    tocarSomMenu PROC
;   Toca o som do menu
; Entrada: Nada
; Sa¡da: Nada
; Requer: Nada
;---------------------------------------------------------
tocarSomMenu PROC USES eax
    mov eax, SND_ASYNC
    or eax, SND_LOOP
    INVOKE PlaySound, OFFSET musicaMenu, NULL, eax
    
    ret
tocarSomMenu ENDP