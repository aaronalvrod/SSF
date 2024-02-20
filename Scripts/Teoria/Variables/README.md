# Variables de Entorno y Variables de Shell

Las variables de entorno se heredan para cualquier ventana que se ejecute mientras que las variables de shell son variables locales de la shell que ejecutamos

---

## Variables de entorno

Por convenio, las variables de entorno se denotan en mayúsculas. El usuario puede crear sus propias variables de entorno o puede utilizar varibales de entorno predefinidas. Algunas de estas variables predefinidas son las siguientes:

- **HOME**: *Especifica el directorio de arranque inicial del usuario.*
- **SHELL**: *Almacena el nombre del programa de Shell del usuario.*
- **PATH**: *Lista, en orden y separados por dos puntos, los directorios en los que la Shell busca para encontrar el programa a ejecutar cuando se teclea un comando.*
- **TERM**: *Especifica el tipo de terminal de usuario. La utilizan `vi` y otros comandos orientados a pantalla.*
- **PWD**: *Contiene el nombre de camino absoluto del directorio actual. Lo actualiza el comando `cd`.*

Cuando un usuario inicia el sistema, UNIX utiliza automáticamente muchas de estas variables.

---

### Asignar variable de entorno

Las variables de entorno se asignan de la siguiente manera:

``` bash
$setenv VARIABLE valor --> #En los Shell C
$VARIABLE = valor; export VARIABLE --> #En los Shell de Bourne o Korn
```

---

## Variables de Shell

Las variables de Shell vienen a ser una generalización de las variables de entorno. Las variables de Shell pertenecen al Shell y se comportan de forma similar a como lo gacen las variables en otros lenguajes. EN términos de programación puede pensarse que las variables de entorno son variables globales mientras que las de Shell son variables locales. Por convenio las variables de Shell se denotan en minúsculas.

---

### Asignar variables de Shell

``` bash
$set nombre = valor --> # Shell C
$nombre=valor --> #Shell Bourne o Korn
```




