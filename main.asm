INCLUDE Irvine32.inc

INCLUDELIB Irvine32.lib
INCLUDELIB user32.lib
INCLUDELIB kernel32.lib

INCLUDE example.asm

.DATA
    msg BYTE "Hello World!",0
    msg2 BYTE "Hello World 2!",0

.CODE

main PROC
    MOV ECX, LENGTHOF msg
    MOV ESI, OFFSET msg

    print:
        MOV AL, BYTE PTR [ESI]
        INC ESI
        call WriteChar
        mov EAX, 100
        call Delay
        loop print

    mov EAX, 1000
    call Delay

    call Crlf

    mov edx, OFFSET msg2
    call exemplo

    exit
main ENDP

END main