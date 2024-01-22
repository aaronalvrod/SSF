@echo off

REM *************************************************
REM * Nombre: condicionales.bat
REM * Autor: Aarón Álvarez Rodríguez
REM *
REM * Objetivo: Comprobar si una variables esta definida.
REM * Entradas: Grados celcius
REM * Salidas: Grados Fahrenhait
REM *************************************************

if defined var (
	echo var esta definida y vale %var%
) else (
	echo var NO esta definida
)

REM NEGAR una condicion: NOT
if NOT defined a echo La variable a NO esta definida

set a=hola
REM COMPARAR TEXTOS:
REM Se compara CASE SENSITIVE, si se quiere INSENSITIVE, usar /I
if "%a%" == "Hola" (
	echo La variable a dice hola
) else (
	echo La variable a dice otra cosa: %a%

set /p disco=Dime un elemento del disco (fichero, directorio, etc):
if EXIST %disco% (
	echo CORRECTO!! %disco% Si existe
) else (
	echo Lo siento, %disco% No existe
)

REM COMPARA NUMEROS:

REM PYTHON  |  BASH  |  BAT  |
REM   ==        eq      equ
REM   !=        ne		neq
REM    >        gt      gtr
REM   >=        ge      geq
REM    <        lt      lss
REM   <=        le      leq

set /p edad=Dime tu edad:

if %edad% LSS 18 (
	echo Lo siento, eres MENOR de edad
) else (
	echo Felicidades, eres MAYOR de edad
)

REM no hay ni "AND" ni "OR"

REM Simular un AND:

if cond1 if cod2 if cond3 (
...
)

REM Simular un OR:

set res=F
if cond1 res=T
if cond2 res=T
if cond3 res=T

if "%res%" es 