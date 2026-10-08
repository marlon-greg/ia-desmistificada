#!/usr/bin/env bash
# Gera os PDFs a partir das fontes HTML usando o Microsoft Edge (Windows) em modo headless.
# Uso (no WSL):  bash fontes/gerar-pdfs.sh            → gera todos
#                bash fontes/gerar-pdfs.sh apostila   → gera só um
set -e
cd "$(dirname "$0")/.."
EDGE="${EDGE:-/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe}"
PROFILE_BASE='C:\Users\marli\AppData\Local\Temp\edgepdf'

declare -A MAP=(
  [apostila]="apostila-ia-desmistificada.pdf"
  [teachable-machine]="passo-a-passo-teachable-machine.pdf"
  [gandalf]="guia-desafio-gandalf.pdf"
)

for src in "${@:-${!MAP[@]}}"; do
  out="pdf/${MAP[$src]}"
  in="file:///$(wslpath -w "$PWD/fontes/$src.html" | sed 's#\\#/#g')"
  echo "→ $out"
  rm -f "$out"
  # o Edge (via WSL) retorna antes de terminar de gravar: espera o arquivo estabilizar
  "$EDGE" --headless=new --disable-gpu --no-pdf-header-footer --virtual-time-budget=8000 \
    --user-data-dir="$PROFILE_BASE-$src" --print-to-pdf="$(wslpath -w "$PWD/$out")" "$in" >/dev/null 2>&1 || true
  last=-1
  for i in $(seq 90); do
    size=$(stat -c %s "$out" 2>/dev/null || echo 0)
    [ "$size" -gt 0 ] && [ "$size" = "$last" ] && break
    last=$size; sleep 1
  done
  [ -s "$out" ] || { echo "falhou: $out"; exit 1; }
done
ls -la pdf
