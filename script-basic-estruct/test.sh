#!/bin/bash
# Script de prueba automática para ProyectoWeb-MultiBackend

FRONTEND_URL="http://localhost:8080"
C_API="http://localhost:5000/Auth/status"
PYTHON_API="http://localhost:5001/data"
NODE_API="http://localhost:3000/users"

echo "🔍 Iniciando pruebas de servicios..."

test_endpoint() {
    URL=$1
    NAME=$2
    EXPECTED=$3

    echo -n "▶ Probando $NAME... "
    RESPONSE=$(curl -s -m 5 $URL)

    if [[ "$RESPONSE" == *"$EXPECTED"* ]]; then
        echo "✅ OK"
    else
        echo "❌ FALLÓ"
        echo "   Respuesta obtenida: $RESPONSE"
    fi
}

# Pruebas
test_endpoint $FRONTEND_URL "Frontend" "<h1>"
test_endpoint $C_API "API C#" "C# API funcionando"
test_endpoint $PYTHON_API "API Python" "Datos desde Python"
test_endpoint $NODE_API "API Node.js" "Usuario Node"

echo "✅ Pruebas finalizadas."
