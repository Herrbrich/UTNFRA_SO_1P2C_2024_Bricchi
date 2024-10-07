#!/bin/bash

# Asegura que la carpeta exista
mkdir -p ~/repogit/UTNFRA_SO_1P2C_2024_Bricchi/RTA_ARCHIVOS_Examen_20241003

# Obtiene la IP pública y la guarda en el archivo
echo "Mi IP publica es: $(curl -s ifconfig.me)" | tee -a ~/repogit/UTNFRA_SO_1P2C_2024_Bricchi/RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt

# Guarda el nombre del usuario en el archivo
echo "Mi usuario es: $(whoami)" | tee -a ~/repogit/UTNFRA_SO_1P2C_2024_Bricchi/RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt

# Obtiene y guarda el hash del usuario en el archivo
echo -n "El hash de mi Usuario es: " | sudo tee -a ~/repogit/UTNFRA_SO_1P2C_2024_Bricchi/RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt && sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}' | tee -a ~/repogit/UTNFRA_SO_1P2C_2024_Bricchi/RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt

# Guarda la URL del repositorio en el archivo
cd ~/repogit/UTNFRA_SO_1P2C_2024_Bricchi && echo -n "La URL de mi repositorio es: $(git remote get-url origin)" | tee -a ~/repogit/UTNFRA_SO_1P2C_2024_Bricchi/RTA_ARCHIVOS_Examen_20241003/Filtro_Avanzado.txt

