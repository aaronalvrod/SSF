@echo off

REM *************************************************
REM * Nombre: ej03-gradosC2F.bat
REM * Autor: Aarón Álvarez Rodríguez
REM *
REM * Objetivo: Convertidor de grados celcius a fahrenhait
REM * Entradas: Grados celcius
REM * Salidas: Grados Fahrenhait
REM *************************************************

set gradosc=%1% 

if "%gradosc%" == "" (
	echo ERROR!! No indicastes el valor de los grados celsius
	set /p gradosc=Introduzca los grados:
)

set /a fahrenhait= (%gradosc% * 9) / 5 + 32
echo %gradosc% grados celcius son %fahrenhait% grados fahrenhait