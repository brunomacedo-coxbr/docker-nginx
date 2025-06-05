#!/bin/bash

if ! command -v node &> /dev/null; then
  echo "Node.js não está instalado. Instale o Node.js para continuar."
  exit 1
fi

if ! command -v npx &> /dev/null; then
  echo "npx não está disponível. Instale o Node.js para garantir que o npx esteja incluído."
  exit 1
fi

if [ $# -eq 0 ]; then
  echo "Uso: bash build.sh [lerna|new]"
  exit 1
fi

lerna_portal() {
  echo "Building Lerna Portal..."
  # open folder ~/Documents/Projects/DTI/DTI.Gentium.Portal.Lerna/
  # build command -> npx lerna run build:dev
  # exit folder (back to this root)

  rm -rf lerna
  cp -R ~/Documents/Projects/DTI/DTI.Gentium.Portal.Lerna/packages/dti-gentium-portal/dist lerna
}

build_new_portal() {
  echo "Building New Portal..."
  # open folder ~/Documents/Projects/DTI/DTI.Gentium.New.Portal/
  # build command -> pnpm build
  # exit folder (back to this root)

  rm -rf new
  cp -R ~/Documents/Projects/DTI/DTI.Gentium.New.Portal/apps/shell/dist new
}

case "$1" in
  lerna)
    lerna_portal
    ;;
  new)
    build_new_portal
    ;;
  *)
    echo "Opção inválida: $1"
    echo "Uso: bash build.sh [lerna|new]"
    exit 1
    ;;
esac
