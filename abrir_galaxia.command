#!/bin/bash
cd "$(dirname "$0")"

echo "=========================================================="
echo "✨ A Galáxia do Amor de Indira & Edilson ✨"
echo "A iniciar servidor cósmico local..."
echo "=========================================================="

PORT=8080
python3 -m http.server $PORT &
SERVER_PID=$!

sleep 1
open "http://localhost:$PORT"

echo "O teu navegador foi aberto em http://localhost:$PORT !"
echo "Podes fechar esta janela quando terminares."

wait $SERVER_PID

