#!/bin/bash


#!/bin/bash

# Validar que el número sea entero utilizando una expresión regular
function es_entero {
    if [[ $1 =~ ^-?[0-9]+$ ]]; then
        return 0  # Es un número entero
    else
        return 1  # No es un número entero
    fi
}

# Declarar un array para almacenar los números enteros
declare -a numeros

# Leer los números enteros de la entrada estándar y agregarlos al array
while read -r numero; do
    if es_entero "$numero"; then
        numeros+=("$numero")
    else
        echo "Advertencia: '$numero' no es un número entero y será ignorado."
    fi
done

# Ordenar el array de números enteros
IFS=$'\n' sorted_numeros=($(sort -n <<<"${numeros[*]}"))

# Escribir los números ordenados en el archivo "salida-c.txt"
echo "Números ordenados:" > salida-c.txt
for num in "${sorted_numeros[@]}"; do
    echo "$num" >> salida-c.txt
done

echo "Los números enteros han sido ordenados y escritos en 'salida-c.txt'."

