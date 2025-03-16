#!/bin/bash

# Ruta donde se instalará el script
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="searchBinsCol"

# Verificar permisos de superusuario
if [ "$(id -u)" -ne 0 ]; then
    echo "Este script debe ejecutarse como superusuario (root)."
    exit 1
fi

# Copiar el script a /usr/local/bin
cp "$SCRIPT_NAME" "$INSTALL_DIR/$SCRIPT_NAME"

# Dar permisos de ejecución
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

# Verificar si la instalación fue exitosa
if [ $? -eq 0 ]; then
    echo "El script '$SCRIPT_NAME' se ha instalado correctamente en '$INSTALL_DIR'."
    echo "Puedes usarlo con el comando: $SCRIPT_NAME <nombre_de_gtfobin>"
else
    echo "Error: No se pudo instalar el script."
    exit 1
fi
