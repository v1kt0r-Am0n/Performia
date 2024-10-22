#!/bin/bash

# Verificar si se ejecuta como root
if [[ $EUID -ne 0 ]]; then
  echo "Este script debe ejecutarse como root. Usa: sudo ./install-angular.sh"
  exit 1
fi

echo "Actualizando el sistema..."
apt update && apt upgrade -y

echo "Instalando dependencias necesarias..."
apt install -y curl

echo "Instalando Node.js (versión LTS) y npm..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
apt install -y nodejs

echo "Verificando la instalación de Node.js y npm..."
node -v
npm -v

echo "Instalando Angular CLI..."
npm install -g @angular/cli

echo "Verificando la instalación de Angular CLI..."
ng version

echo "Instalando TypeScript globalmente..."
npm install -g typescript

echo "Instalando útiles extensiones de desarrollo (opcional)..."
npm install -g @angular-devkit/schematics-cli
npm install -g tslint

echo "Limpieza de paquetes innecesarios..."
apt autoremove -y

echo "Instalación completa. Puedes empezar a trabajar con Angular."
echo "Para crear un nuevo proyecto de Angular, usa: ng new nombre-proyecto"
