@echo off

REM ************************************
REM * NOMBRE: ej03-gradosC2F.bat
REM * AUTOR: Aarón Álvarez Rodríguez
REM *****************************************

set celsius=%1

if "%celsius%" == "" (
  echo ERROR! No has escrito ningún valor.
  set /p celsius=Escribe el valor de los grados Celsius: 
  
)

set /a fahr=%celsius%*9/5+32

echo %CELSIUS%.C son %Fahr%.F
