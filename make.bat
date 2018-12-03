@echo off

set MAIN_FILE=main.asm
set OUT_FILE=ralphAssembles.exe
set LIBPATH=lib
set DEBUG=1

set OBJ=out/%MAIN_FILE:.asm=.obj%
set LST=out/%MAIN_FILE:.asm=.lst%
set IN=src/%MAIN_FILE%
set OUT=%OUT_FILE%

:prepare
    if %DEBUG%==1 (
        set MLFLAGS=/nologo /c /Sf /Fl%LST% /coff /Sn /Zd /Zi /I %LIBPATH% 
        set LINKFLAGS=/DEBUG /DEBUGTYPE:COFF /NOLOGO /LIBPATH:%LIBPATH% /SUBSYSTEM:CONSOLE
    ) else (
        set MLFLAGS=/nologo /c /Fl /coff /Sn /I %LIBPATH%
        set LINKFLAGS=/NOLOGO /LIBPATH:%LIBPATH% /SUBSYSTEM:CONSOLE
    )

:create_directory
    if not exist "out" (
        mkdir out
    )

:resource
    rc /fo out/resource.res resource.rc
    cvtres /NOLOGO /machine:ix86 /OUT:out/resource.obj out/resource.res
:compile
    ml %MLFLAGS% /Fo %OBJ% %IN%

:link
    @echo  Linking: %OBJ%
    link %LINKFLAGS% %OBJ% /OUT:%OUT% out/resource.obj
    set /p teste=""
    ralphAssembles.exe

