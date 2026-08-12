#!/usr/bin/env bash
# Publica no repo o pacote baixado do Claude Design.
#
#   ./publish.sh ~/Downloads/site.zip "ajuste no hero"
#
# Rode de dentro do clone de calead-io/site-calead.
set -euo pipefail

ZIP="${1:?uso: ./publish.sh <caminho-do-zip> [mensagem]}"
MSG="${2:-atualiza site a partir do Claude Design}"

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

unzip -q -o "$ZIP" -d "$TMP"

# o zip pode vir com uma pasta raiz (site/) ou com os arquivos soltos
SRC="$TMP"
if [ -f "$TMP/site/index.html" ]; then SRC="$TMP/site"; fi
if [ ! -f "$SRC/index.html" ]; then echo "index.html não encontrado no zip"; exit 1; fi

rsync -a --delete \
  --exclude '.git' --exclude '.vercel' --exclude 'publish.sh' \
  "$SRC"/ ./

git add -A
if git diff --cached --quiet; then
  echo "nada mudou."
  exit 0
fi
git commit -m "$MSG"
git push origin main
echo "no ar em instantes: https://site-calead.vercel.app/"
