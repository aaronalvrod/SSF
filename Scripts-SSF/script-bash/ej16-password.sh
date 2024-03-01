###########################################
# Autor: Aarón Álvarez Rodríguez
# Nombre: ej16-password.sh
############################################

read -s -p "Escriba la contraseña que quiera utilizar: " contrasenya
read -s -p "Confirme la contraseña: " contrasenya_confirm

while [ "$contrasenya" != "$contrasenya_confirm" ]
do
    echo "Contraseña no coincide"
    read -s -p "Introduzca de nuevo la contraseña: " contrasenya_confirm
done

echo "Correcto, su contraseña es $contrasenya"