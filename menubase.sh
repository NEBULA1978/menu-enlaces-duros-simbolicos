#!/bin/bash
#todoreal.com
while :; do
    #Menu
    # NOTA:Hay que ejecutar como root sino nanai
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar definicion Enlaces "
    echo "2. Crear Enlaces fuerte"
    echo "3. Crear Enlaces simbolico"
    echo "5. Ver Enlaces simbolico y duros en carpeta actual"
    echo "6. Crear enlace simbolico de menubase.sh"
    echo "7. Mostrar resumen ENLACES:"
    
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo " Mostrar Enlaces definicion"
        echo "========================"
        echo "ln: crea un enlace aun elemento del sistema de ficheros.Sin opciones creamos un enlaceduro y con ln -s cremos un enlace simbolico(o blando)."
        echo "Un enlace duro es un puntero a la informacion de disco,minetras que uno blando apunta a la ruta"
        echo "A lo s directorios siempre siempre se haran enlaces simbolicos "
        echo "========================"
        
        
        read foo
        ;;
    2)
        echo " Mostrar Enlaces definicion"
        echo "==============="
        echo "Crea un enlace fuerte llamado repos que tendra la misma informacion que sources.list"
        echo "==============="
        ln /etc/apt/sources.list ~/repos
        read foo
        ;;
    3)
        echo "Crear Enlaces simbolico"
        echo "Crear un enlaces simbolico llamado paquetes,que ira a /var/cache/apt/archives"
        ln -s /var/cache/apt/archives/ /paquetes/
        read foo
        ;;
    5)
        echo "Ver Enlaces simbolico y duros en carpeta actual"
        echo "Creamos enlace duro con:"
        echo 'echo "info de mi fichero" > mifichero'
        echo "ln mifichero mifichero2"
        echo "ln mifichero mifichero3"
        ls -l         
        read foo
        ;;
    6)
        echo "Crear enlace simbolico de menubase.sh"
        echo "Creamos enlace simbolico con:"
        echo 'ln -s menubase.sh menubaseSimbolic.sh'
        echo "=============="
        echo "Cuando borro rm menubase.sh borro el simbolico no en principal"
        echo "Me suma el tamaño de los directorios creados pero solo suma los datos del nombre no ha duplicado realmente"
        echo "=============="
        
        ln -s menubase.sh menubase.sh         
        read foo
        ;;
    7)
        echo "Mostrar resumen ENLACES:"
        echo 'RESUMEN
El comando pwd muestra el directorio actual

El comando cd cambia de directorio

El carácter ~ hace referencia al directorio personal del que ejecuta la orden

El comando ls lista el contenido de un directorio. Opciones comunes que modifican cómo se mostrará la información: -l lista con detalle, -h muestra el tamaño más legible, -a muestra los ocultos, -S ordena por tamaño, -t ordena por fecha, -r invierte el criterio de ordenación

Para indicar dónde se encuentra un elemento del sistema de ficheros (un archivo o un directorio), utilizo rutas. Éstas pueden ser absolutas (indico todos los directorios que tengo que seguir desde la raíz del sistema) o relativas (indico el camino desde el directorio donde ejecuto la orden).

Las rutas absolutas siempre empiezan por una barra / (que indica la raíz)

Si utilizo .. en una ruta estoy haciendo referencia al directorio padre. Un único punto indica el directorio actual

Linux distingue entre mayúsculas y minúsculas

Si quiero usar espacio en un nombre deberé ponerlo entre comillas o con un carácter de escape (\)

Usando los cursores arriba y abajo aparecerán las últimas ordenes que he ejecutado

Puedo ayudarme del tabulador para terminar de escribir una ruta

Con Control+R puedo buscar en el historial de instrucciones

El comando history  muestra el historial de instrucciones y puedo ejecutarlas usando !numero_instrucción 

El comando mkdir sirve para crear directorios

El comando rm borra ficheros, y con -r directorios

touch crea ficheros vacíos

mv mueve elementos o cambia su nombre

du muestra el espacio que ocupa un fichero o todo el contenido de un directorio

df nos informa del espacio libre y ocupad de las particiones del sistema

ln crea enlaces, débiles o fuertes.

| more '     
        read foo
        ;;
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
