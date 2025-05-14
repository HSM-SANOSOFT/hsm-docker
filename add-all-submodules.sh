#!/bin/bash

set -e

GITHUB_BASE="https://github.com/HSM-SANOSOFT"

# Map: submodule name → path
declare -A services=(
  [hsm-fe-web]="services/fe/web/hsm-fe-web"
  [hsm-be-core-gateway]="services/be/core/gateway/hsm-be-core-gateway"
  [hsm-be-core-auth]="services/be/core/auth/hsm-be-core-auth"
  [hsm-be-core-common]="services/be/core/common/hsm-be-core-common"
  [hsm-be-core-coms]="services/be/core/coms/hsm-be-core-coms"
  [hsm-be-core-users]="services/be/core/users/hsm-be-core-users"
  [hsm-be-core-docs]="services/be/core/docs/hsm-be-core-docs"
  [hsm-be-has-cob-gdp-transaccion]="services/be/has/cob/gdp/transaccion/hsm-be-has-cob-gdp-transaccion"
  [hsm-be-has-gaa-gth-gsr-postulantes]="services/be/has/gaa/gth/gsr/postulantes/hsm-be-has-gaa-gth-gsr-postulantes"
  [hsm-be-has-gaa-gth-gsr-trabajos]="services/be/has/gaa/gth/gsr/trabajo/hsm-be-has-gaa-gth-gsr-trabajos"
  [hsm-be-has-gaa-gth-gdn-empleados]="services/be/has/gaa/gth/gdn/empleados/hsm-be-has-gaa-gth-gdn-empleados"
  [hsm-be-has-gaa-gth-gdn-empresas]="services/be/has/gaa/gth/gdn/empresas/hsm-be-has-gaa-gth-gdn-empresas"
  [hsm-be-has-gaa-gth-gdn-asistencias]="services/be/has/gaa/gth/gdn/asistencias/hsm-be-has-gaa-gth-gdn-asistencias"
  [hsm-be-has-gaa-gth-gdn-deducciones]="services/be/has/gaa/gth/gdn/deducciones/hsm-be-has-gaa-gth-gdn-deducciones"
  [hsm-be-has-gaa-gth-gdn-beneficios]="services/be/has/gaa/gth/gdn/beneficios/hsm-be-has-gaa-gth-gdn-beneficios"
  [hsm-be-has-gaa-gth-gdn-liquidaciones]="services/be/has/gaa/gth/gdn/liquidaciones/hsm-be-has-gaa-gth-gdn-liquidaciones"
)

for name in "${!services[@]}"; do
  path="${services[$name]}"
  repo_url="$GITHUB_BASE/$name.git"

  echo ""
  echo "🧩 Submodule: $name"
  echo "📁 Path: $path"
  echo "🔗 Repo: $repo_url"

  if [ -d "$path" ]; then
    echo "⚠️  Skipping $name — path already exists"
    continue
  fi

  echo -n "❓ Add this submodule? (y/n): "
  read -r confirm
  if [[ "$confirm" != "y" ]]; then
    echo "⏭️  Skipping $name"
    continue
  fi

  git submodule add --name "$name" "$repo_url" "$path"
done

echo ""
echo "✅ Done. Remember to:"
echo "   git add .gitmodules"
echo "   git add services/**/hsm-*"
echo "   git commit -m 'chore: add submodules'"
