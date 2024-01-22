@echo off

REM *************************************************
REM * Nombre: suma_arg.bat
REM * Autor: Aarón Álvarez Rodríguez
REM *
REM * Objetivo: Sumar dos valores
REM * Entradas: Dos numeros enteros
REM * Salidas: Suma de los dos numeros enteros
REM *************************************************

REM set /a a = 56
REM set /a b = 12

REM set /a resultado = %a% + %b%

REM echo La suma de %a% + %b% = %resultado%

set a=%1 
set b=%2
set NO_ARG=5

if NOT defined a (
	echo ERROR!! Deberias haber indicado DOS variables
	REM exit: Finaliza el script y tambien la terminal donde se ejecuta
	REM si no quiero finalizar la terminal, usar exit /b
	exit /b %NO_ARG
)

if "%b%" == "" (
	echo ERROR!! Debe indicar el valor de b
	set /p b=Indique el parametro b
)

set /a resultado = %a% + %b%

echo La suma de %a% + %b% = %resultado%