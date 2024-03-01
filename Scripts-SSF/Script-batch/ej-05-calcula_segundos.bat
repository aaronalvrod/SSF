@echo off

REM ************************************
REM * NOMBRE: ej05-calcula_segundos.bat
REM * AUTOR: Aarón Álvarez Rodríguez
REM ************************************

if "%~4"=="" (
    echo ERROR: Debes indicar 4 valores.
    echo SINTAXIS: %0 ^<días^> ^<horas^> ^<minutos^> ^<segundos^>
    exit /b 1
)

set /a "dias=%~1"
set /a "horas=%~2"
set /a "minutos=%~3"
set /a "segundos=%~4"

set /a "total_segundos=dias*86400+horas*3600+minutos*60+segundos"

echo %~1 días, %~2 horas, %~3 minutos y %~4 segundos hacen un total de %total_segundos% segundos.
exit /b 0