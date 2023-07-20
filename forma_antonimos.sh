#!/bin/bash


read -p "Ingresa un adjetivo: " adjetivo


#Convertir el adjetivo a minúsculas

adjetivo=$(echo "$adjetivo" | tr '[:upper:]' '[:lower]')

#Verificar si el adjetivo comienza con 'm' o 'p' para agregar 'in-' o 'im-'

if [[ $adjetivo == m* ]]; then 
    antonimo="In${adjetivo}"
elif [[ $adjetivo == p* ]]; then 
    antonimo="Im${adjetivo}"
else 
    echo "No se puede formar el antónimo del ajetivo proporcionado"
    exit 1

fi 

echo "Antónimo: $antonimo"
