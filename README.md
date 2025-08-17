# KPIStream - Sistema de Gestión de Indicadores de Desempeño

**KPIStream** es una solución integral para gestionar, monitorear y evaluar el rendimiento de una organización a través de indicadores clave de desempeño (KPIs). Desarrollada con **ASP.NET Core** y **PostgreSQL**, la aplicación permite a los usuarios crear, actualizar, y rastrear KPIs, asegurando la correcta evaluación de los objetivos estratégicos.

## Características

- **Gestión de KPIs**: Crear, actualizar y eliminar indicadores clave de desempeño (KPIs).
- **Monitoreo de Desempeño**: Consultar y visualizar datos históricos de KPIs.
- **Seguridad**: Gestión de usuarios y roles para controlar el acceso a las diferentes funciones del sistema.
- **Almacenamiento en PostgreSQL**: Utiliza procedimientos almacenados para garantizar una interacción eficiente con la base de datos.
- **API REST**: Proporciona endpoints API RESTful para la integración con otros sistemas.

## Tecnologías

- **Backend**: ASP.NET Core 5.0
- **Base de Datos**: PostgreSQL 13
- **ORM**: Dapper
- **Lenguaje**: C#
- **Autenticación y Seguridad**: JWT (Json Web Token) (Pendiente de implementación)
- **Frontend**: (Opcional: Puede integrarse con cualquier frontend basado en Angular, React, etc.)

## Estructura del Proyecto


## Requisitos del Sistema

- **.NET 5.0 SDK**
- **PostgreSQL 13**
- **Herramienta de gestión de dependencias**: NuGet para C#

## Configuración Inicial

### 1. Clonar el repositorio

```bash
git clone https://github.com/tuusuario/KPIStream.git
cd KPIStream

ProyectoWeb-MultiBackend/
│
├── frontend/                        # Aplicación cliente (HTML, CSS, JS)
│   ├── index.html                    # Página principal
│   ├── assets/                       # Recursos estáticos
│   │   ├── css/
│   │   │   └── styles.css
│   │   ├── js/
│   │   │   ├── app.js                # Lógica principal del cliente
│   │   │   └── api.js                # Funciones para consumir APIs
│   │   └── img/
│   └── package.json                  # Opcional, si usas npm para librerías front
│
├── backend/                          # Carpeta que agrupa los microservicios
│   │
│   ├── api-csharp/                   # Microservicio en C#
│   │   ├── src/
│   │   │   ├── Controllers/          # Controladores de endpoints
│   │   │   ├── Models/               # Clases de datos
│   │   │   ├── Services/             # Lógica de negocio
│   │   │   └── Program.cs
│   │   ├── api-csharp.csproj
│   │   └── README.md
│   │
│   ├── api-python/                   # Microservicio en Python (Flask o FastAPI)
│   │   ├── app/
│   │   │   ├── main.py                # Entrada principal
│   │   │   ├── routes/               # Endpoints
│   │   │   ├── models/               # Definición de datos
│   │   │   └── services/             # Lógica de negocio
│   │   ├── requirements.txt
│   │   └── README.md
│   │
│   ├── api-nodejs/                   # Microservicio en Node.js (Express)
│   │   ├── src/
│   │   │   ├── routes/               # Endpoints
│   │   │   ├── controllers/          # Lógica de endpoints
│   │   │   ├── models/               # Esquemas de datos (si usa MongoDB, etc.)
│   │   │   └── app.js                 # Entrada principal
│   │   ├── package.json
│   │   └── README.md
│
├── docker/                           # Archivos Docker para despliegue
│   ├── Dockerfile.frontend
│   ├── Dockerfile.csharp
│   ├── Dockerfile.python
│   ├── Dockerfile.node
│   └── docker-compose.yml            # Orquestación de todos los servicios
│
├── docs/                             # Documentación del proyecto
│   ├── arquitectura.md
│   ├── api-docs.md
│   └── README.md
│
└── README.md                         # Descripción general
