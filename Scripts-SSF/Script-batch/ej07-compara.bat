@echo off

REM ************************************
REM * NOMBRE: ej07-compara.bat
REM * AUTOR: Aarón Álvarez Rodríguez
REM ************************************

set num1=%1
set num2=%2

if "%num1%"=="" (
    set /p "num1=Por favor, introduzca el primer valor: "
)

if "%num2%"=="" (
    set /p "num2=Por favor, introduzca el segundo valor: "
)

if %num1% lss %num2% (
    echo %num2% es mayor que %num1%
) else if %num1% gtr %num2% (
    echo %num1% es mayor que %num2%
) else (
    echo %num1% y %num2% son iguales.
)

exit /b 0