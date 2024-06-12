#!/bin/bash

# Mostrar un mensaje indicando que el contenedor se está iniciando
echo "Starting container..."

# Iniciar el servicio SSH
service ssh start

# Mostrar un mensaje indicando que el servicio SSH se ha iniciado
echo "SSH service started."

# Ejecutar otros comandos necesarios antes de mantener el contenedor en ejecución
# Por ejemplo, podrías iniciar otros servicios o realizar configuraciones adicionales aquí

# Crear un directorio de logs si no existe
mkdir -p /root/logs

# Crear un archivo de log vacío si no existe
touch /root/logs/logs.txt

# Mostrar un mensaje indicando que el contenedor está listo y en ejecución
echo "Container setup complete. Keeping container running."

# Mantener el contenedor en ejecución
tail -f /dev/null
