; Include file win32.inc             (win32.inc)
;http://stackoverflow.com/questions/34217344/clear-screen-without-interrupt

CHARTYPE UNION
    UnicodeChar    WORD ?
    AsciiChar      DB ?
CHARTYPE ENDS

CHAR_INFO STRUCT
    Char          CHARTYPE <>
    Attributes    WORD ?
CHAR_INFO ENDS

WriteConsoleOutput EQU <WriteConsoleOutputA>

WriteConsoleOutput PROTO,
    hConsoleOutput:HANDLE,
    lpBuffer:PTR CHAR_INFO,
    dwBufferSize:COORD,
    dwBufferCoord:COORD,
    lpWriteRegion:PTR SMALL_RECT