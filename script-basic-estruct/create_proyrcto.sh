#!/bin/bash
# Script para generar estructura de proyecto con Frontend (HTML+JS)
# y tres APIs (C#, Python, Node.js) con Docker Compose

PROYECTO="ProyectoWeb-MultiBackend"

echo "📁 Creando carpeta principal..."
mkdir -p $PROYECTO/{frontend/assets/{css,js,img},backend/{api-csharp/{Controllers,Models,Services},api-python/app/{routes,models,services},api-nodejs/src/{routes,controllers,models}},docker,docs}

# ================= FRONTEND =================
echo "📄 Creando frontend..."
cat > $PROYECTO/frontend/index.html <<EOL
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Proyecto MultiBackend</title>
  <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
  <h1>Frontend Proyecto MultiBackend</h1>
  <script src="assets/js/app.js"></script>
</body>
</html>
EOL

cat > $PROYECTO/frontend/assets/css/styles.css <<EOL
body { font-family: Arial, sans-serif; background-color: #f0f0f0; }
EOL

cat > $PROYECTO/frontend/assets/js/app.js <<EOL
console.log("Frontend cargado.");
fetch("http://localhost:5001/data")
  .then(res => res.json())
  .then(data => console.log("API Python:", data))
  .catch(err => console.error(err));
EOL

cat > $PROYECTO/frontend/Dockerfile.frontend <<EOL
FROM nginx:latest
COPY . /usr/share/nginx/html
EOL

# ================= API C# =================
echo "📄 Creando API C#..."
cat > $PROYECTO/backend/api-csharp/Controllers/AuthController.cs <<EOL
using Microsoft.AspNetCore.Mvc;

[ApiController]
[Route("[controller]")]
public class AuthController : ControllerBase
{
    [HttpGet("status")]
    public IActionResult Status() => Ok(new { mensaje = "C# API funcionando" });
}
EOL

cat > $PROYECTO/backend/api-csharp/Program.cs <<EOL
var builder = WebApplication.CreateBuilder(args);
builder.Services.AddControllers();
var app = builder.Build();
app.MapControllers();
app.Run();
EOL

cat > $PROYECTO/backend/api-csharp/Dockerfile.csharp <<EOL
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /app
COPY . .
RUN dotnet restore || true
RUN dotnet publish -c Release -o out
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app/out .
ENTRYPOINT ["dotnet", "api-csharp.dll"]
EOL

# ================= API PYTHON =================
echo "📄 Creando API Python..."
cat > $PROYECTO/backend/api-python/app/main.py <<EOL
from fastapi import FastAPI

app = FastAPI()

@app.get("/data")
def get_data():
    return {"mensaje": "Datos desde Python"}
EOL

cat > $PROYECTO/backend/api-python/requirements.txt <<EOL
fastapi
uvicorn
EOL

cat > $PROYECTO/backend/api-python/Dockerfile.python <<EOL
FROM python:3.11
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "5000"]
EOL

# ================= API NODE.JS =================
echo "📄 Creando API Node.js..."
cat > $PROYECTO/backend/api-nodejs/src/app.js <<EOL
const express = require("express");
const app = express();

app.get("/users", (req, res) => {
    res.json([{ id: 1, nombre: "Usuario Node" }]);
});

app.listen(3000, () => console.log("API Node.js corriendo en puerto 3000"));
EOL

cat > $PROYECTO/backend/api-nodejs/package.json <<EOL
{
  "name": "api-nodejs",
  "version": "1.0.0",
  "main": "src/app.js",
  "scripts": {
    "start": "node src/app.js"
  },
  "dependencies": {
    "express": "^4.18.2"
  }
}
EOL

cat > $PROYECTO/backend/api-nodejs/Dockerfile.node <<EOL
FROM node:20
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
EOL

# ================= DOCKER COMPOSE =================
echo "🐳 Creando docker-compose..."
cat > $PROYECTO/docker-compose.yml <<EOL
version: '3.9'
services:
  frontend:
    build:
      context: ./frontend
      dockerfile: Dockerfile.frontend
    ports:
      - "8080:80"
    depends_on:
      - api-csharp
      - api-python
      - api-nodejs

  api-csharp:
    build:
      context: ./backend/api-csharp
      dockerfile: Dockerfile.csharp
    ports:
      - "5000:80"

  api-python:
    build:
      context: ./backend/api-python
      dockerfile: Dockerfile.python
    ports:
      - "5001:5000"

  api-nodejs:
    build:
      context: ./backend/api-nodejs
      dockerfile: Dockerfile.node
    ports:
      - "3000:3000"
EOL

echo "✅ Proyecto creado en ./$PROYECTO"
