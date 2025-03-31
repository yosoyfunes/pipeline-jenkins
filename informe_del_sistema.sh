#!/bin/bash

## source libreria.sh

# 1 informe_del_sistema.sh

function informe_del_sistema() {
  # 2 Nombre del sistema operativo
  echo "informe del sistema para: $(hostname)"
  # HOST=$(hostname) && echo "Informe del sistema para: $HOST"  
}

function fecha_hora() {
  # 3 Fecha y Hora
  echo "Fecha y hora: $(date '+%d/%m/%Y %H:%M:%S')"
}

function espacio_disco() {
  # 4 Espacio en disco
  echo "Uso del disco: $(df -h | grep /$)"
}

function usuarios_logueados() {
  # 5 Usuarios logueados
  echo "Usuarios conectados: $(who | wc -l)"  
}

function memoria_free() {
  # 6 Uso de Memoria
  free -m | awk '/Mem:/ {print "Total:", $2 " MB", "\tDisponible:", $7 " MB"}'
  # free -m | awk 'NR==2 {print "Total:", $2 " MB", "\tDisponible:", $7 " MB"}'
}

function procesos_ejecucion() {
  # 7 Procesos en ejecución
  read -p "Ingresa el proceso: " proceso
  ps -aux | grep -i "$proceso"
}

function help() {
  echo "Ingrese alguno de estos valores:"
  echo "disco"
  echo "free"
}

case "$1" in
  disco)  
    espacio_disco
  ;;

  procesos)  
    procesos_ejecucion
  ;;  
  
  *)
  help
  ;;
esac