@echo off

REM ********************************
REM * Nombre: ej02-crea_usuario.bat
REM * Autor: Aarón Álvarez Rodríguez
REM ********************************

set nombre=Kai
set /p apellido=Escribe tu apellido:
set usuario=$1
echo Bienvenido, %nombre%
echo Tus datos son: %nombre%, %apellido%
echo Vamos a crear tu usuario: %usuario%
echo Tu nueva ID es %RANDOM%