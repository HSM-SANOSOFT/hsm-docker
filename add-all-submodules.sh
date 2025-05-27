#!/bin/bash

set -e

GITHUB_BASE="https://github.com/HSM-SANOSOFT"

# Lista de submódulos
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

for name in "${MICROSERVICES[@]}"; do
  IFS="-" read -ra PARTS <<< "$name"

  # Genera ruta: hsm/be/has/... sin el último segmento
  BASE_PATH=""
  for ((i=0; i<${#PARTS[@]}-1; i++)); do
    BASE_PATH="$BASE_PATH/${PARTS[i]}"
  done
  BASE_PATH="${BASE_PATH#/}" # elimina / inicial si lo hubiera

  # Ruta final con el nombre del repo como subcarpeta
  FULL_PATH="$BASE_PATH/$name"
  repo_url="$GITHUB_BASE/$name.git"

  echo ""
  echo "🧩 Submodule: $name"
  echo "📁 Path: $FULL_PATH"
  echo "🔗 Repo: $repo_url"

  if [ -d "$FULL_PATH" ]; then
    echo "⚠️  Skipping $name — path already exists"
    continue
  fi

  echo -n "❓ Add this submodule? (y/n): "
  read -r confirm
  if [[ "$confirm" != "y" ]]; then
    echo "⏭️  Skipping $name"
    continue
  fi

  mkdir -p "$BASE_PATH"
  git submodule add --name "$name" "$repo_url" "$FULL_PATH"
done

echo ""
echo "✅ Done. Remember to:"
echo "   git add .gitmodules"
echo "   git add hsm/**/hsm-*"
echo "   git commit -m 'chore: add submodules'"
