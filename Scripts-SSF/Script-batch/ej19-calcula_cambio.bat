@echo off

REM ************************************
REM * NOMBRE: ej19-calcula_cambio.bat
REM * AUTOR: Aarón Álvarez Rodríguez
REM ************************************

if "%~1"=="" (
    echo ERROR: Debes escribir un valor (numérico), el precio del artículo.
    exit /b 1
)

set /a "precio_articulo=%~1"

set "billetes=500 200 100 50 20 10 5 2 1"

set /p "dinero_entregado=Indique el dinero pagado: "

set /a "cambio=dinero_entregado - precio_articulo"

echo Se ha comprado un artículo de %precio_articulo% euros y ha pagado %dinero_entregado% euros.
echo El cambio son %cambio% euro(s), debe entregar:

for %%billete in (%billetes%) do (
    set /a "num_billete=cambio / %%billete"
    if !num_billete! gtr 0 (
        echo !num_billete! billete(s) de %%billete euro(s)
        set /a "cambio=cambio - num_billete * %%billete"
    )
)

exit /b 0