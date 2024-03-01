@echo off

REM ************************************
REM * NOMBRE: ej12-multiplo.bat
REM * AUTOR: Aarón Álvarez Rodríguez
REM ************************************

if "%~1"=="" (
    echo ERROR: Escribe al menos un número como argumento.
    exit /b 1
)

set /p "valor=Introduzca un valor: "

for %%num in (%*) do (
    set /a "resto=%%num %% valor"
    
    if !resto! equ 0 (
        echo El número %%num es múltiplo de %valor%
    ) else (
        echo El número %%num no es múltiplo de %valor%
    )
)

exit /b 0