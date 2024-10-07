#!/bin/bash
#Creamos el archivo solicitado
touch repogit/UTNFRA_SO_1P2C_2024_Bricchi/RTA_ARCHIVOS_Examen_20241003/Filtro_Basico.txt
#Realizamos la escritura de la cantidad de memoria
head -n 1 /proc/meminfo > repogit/UTNFRA_SO_1P2C_2024_Bricchi/RTA_ARCHIVOS_Examen_20241003/Filtro_Basico.txt
#Realizamos la escritura de la informacion del chasis solicitada
sudo dmidecode -t chassis | head -n 7 | tail -n 2 >> repogit/UTNFRA_SO_1P2C_2024_Bricchi/RTA_ARCHIVOS_Examen_20241003/Filtro_Basico.txt
