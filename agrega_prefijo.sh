#!/bin/bash

#Verificamos que se haya proporcionado el argumento

if [ $# -eq 0 ]; then

    echo "Error: debes proporcionar una cadena como argumento"
    exit 1

fi


#Leer el argumento proporcionado

prefijo=$1

#Función para agregar el prefijo a cada palabra

function agregar_prefijo {
    while read -r palabra; do
        echo "${prefijo}${palabra}"
    done

}



#LLamar a la función para procesar las palabras de STDIN


agregar_prefijo



