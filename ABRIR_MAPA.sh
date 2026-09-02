#!/bin/bash
# Abre o WebGIS do Cadastro em um servidor local.
cd "$(dirname "$0")"
echo "Servidor em http://localhost:8000  —  Ctrl+C para encerrar"
(sleep 1 && (xdg-open http://localhost:8000 2>/dev/null || open http://localhost:8000 2>/dev/null)) &
python3 -m http.server 8000
