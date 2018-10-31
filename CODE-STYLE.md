# ESTILO DE CODIFICAÇÃO

## Indentação
* Utilização apenas de espaços
* Comentários devem iniciar na coluna 69-70 aninhados verticalmente
* label de código e dados não devem ser indentados
* Um único espaço entre mnemônico da instrução e operandos
* Duas linhas em branco entre procedimentos

# Nomes
* Nomes de identificadores descritivos
* Nomes devem seguir o padrão CamelCase
* Procedimentos, constantes, labels e comentários devem ser escritos em português
* Constantes devem ser escritas em usando 
letras maiúsculas



Exemplo de nomes e identação
```
.DATA
    corAnterior BYTE ?                                              ; Cores do console antes de iniciar o jogo
    barraDeTitulo BYTE "Ralph Assembles",0                          ; Título da janela
```

# Procedimentos
* Os procedimentos devem estar nos arquivos que fazem mais sentido. Por exemplo, um procedimento que desenha o menu deve estar num arquivo `menu.asm`.
* Devem ser documentados contento os seguinte itens:
    * < nome > PROC
    * Descrição do procedimento
    * Entrada: Itens que devem estar na pilha ou registradores necessários.
    * Saída: item na pilha ou registrador de saída.
    * Requer: Lista opcional de requisitos que devem ser safisfeitos antes da chamada do procedimento.

Exemplo:
```
;---------------------------------------------------------
;                        inicializar PROC
;   Guarda as cores do console antes de iniciado o jogo e
; coloca o nome do jogo no título da janela.
; Entrada: Nada
; Saída: Nada
; Requer: Nada
;---------------------------------------------------------
inicializar PROC

    call GetTextColor
    mov corAnterior, al

    mov eax, corPadrao
    call SetTextColor
    
    push OFFSET barraDeTitulo
    call SetConsoleTitle

    ret
inicializar ENDP
```

# Operadores aritméticos
* Espaço ao redos de operadores aritméticos

# Codificação de caracteres
* Os arquivos devem ser salvos usando UFT-8