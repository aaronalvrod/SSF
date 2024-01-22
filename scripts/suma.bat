@echo off

REM *************************************************
REM * Nombre: suma.bat
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

set /p a=Introduzca el primer valor: 
set /p b=Introduzca el valor: 

set /a resultado = %a% + %b%

echo La suma de %a% + %b% = %resultado%