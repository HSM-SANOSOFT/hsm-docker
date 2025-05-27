#!/bin/bash

# Lista de nombres de servicios
MICROSERVICES=(
  hsm-fe-web
  hsm-be-core-gateway
  hsm-be-core-auth
  hsm-be-core-common
  hsm-be-core-coms
  hsm-be-core-users
  hsm-be-core-docs
  hsm-be-has-cob-gdp-transaccion
  hsm-be-has-gaa-gth-gsr-postulantes
  hsm-be-has-gaa-gth-gsr-trabajos
  hsm-be-has-gaa-gth-gdn-empleados
  hsm-be-has-gaa-gth-gdn-empresas
  hsm-be-has-gaa-gth-gdn-asistencias
  hsm-be-has-gaa-gth-gdn-deducciones
  hsm-be-has-gaa-gth-gdn-beneficios
  hsm-be-has-gaa-gth-gdn-liquidaciones
)

for SERVICE in "${MICROSERVICES[@]}"; do
  IFS="-" read -ra PARTS <<< "$SERVICE"

  # Creamos la ruta hasta el penúltimo segmento
  FINAL_PATH=""
  for ((i=0; i<${#PARTS[@]}-1; i++)); do
    FINAL_PATH="$FINAL_PATH/${PARTS[i]}"
  done

  # Eliminar / inicial si existe
  FINAL_PATH="${FINAL_PATH#/}"

  mkdir -p "$FINAL_PATH"
  echo "✅ Created: $FINAL_PATH"
done
