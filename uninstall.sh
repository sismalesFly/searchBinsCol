#!/bin/bash

# Ruta donde se instaló el script
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="searchBinsCol"

# Verificar permisos de superusuario
if [ "$(id -u)" -ne 0 ]; then
    echo "Este script debe ejecutarse como superusuario (root)."
    exit 1
fi

# Verificar si el script existe
if [ -f "$INSTALL_DIR/$SCRIPT_NAME" ]; then
    # Eliminar el script
    rm "$INSTALL_DIR/$SCRIPT_NAME"
    if [ $? -eq 0 ]; then
        echo "El script '$SCRIPT_NAME' se ha desinstalado correctamente de '$INSTALL_DIR'."
    else
        echo "Error: No se pudo desinstalar el script."
        exit 1
    fi
else
    echo "El script '$SCRIPT_NAME' no está instalado en '$INSTALL_DIR'."
    exit 1
fi
