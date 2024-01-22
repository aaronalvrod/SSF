@echo off

REM *************************************************
REM * Nombre: ej02-crea_usuario.bat
REM * Autor: Aarón Álvarez Rodríguez
REM *
REM * Objetivo: Crear usuario
REM * Entradas: Nombre; variable , Apellido; teclado , Usuario; argumento
REM * Salidas: Suma de los dos numeros enteros
REM *************************************************
set id =%RANDOM%
set Nombre=Pepe
set /p Apellido= Introduzca su apellido
set Usuario=%1

echo Bienvenido %Nombre% %Apellido%, su usuario eh id es: %usuario% %id%