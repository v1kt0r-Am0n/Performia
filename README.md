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
├── frontend/
│   ├── index.html
│   ├── assets/
│   │   ├── css/
│   │   │   └── styles.css
│   │   ├── js/
│   │   │   ├── app.js
│   │   │   └── api.js
│   │   └── img/
│   ├── package.json
│   ├── Dockerfile.frontend
│   └── README.md
│
├── backend/
│   ├── api-csharp/
│   │   ├── Controllers/
│   │   │   └── AuthController.cs
│   │   ├── Models/
│   │   │   └── User.cs
│   │   ├── Services/
│   │   │   └── AuthService.cs
│   │   ├── Program.cs
│   │   ├── api-csharp.csproj
│   │   ├── Dockerfile.csharp
│   │   └── README.md
│   │
│   ├── api-python/
│   │   ├── app/
│   │   │   ├── main.py
│   │   │   ├── routes/
│   │   │   │   └── data_routes.py
│   │   │   ├── models/
│   │   │   │   └── data_model.py
│   │   │   └── services/
│   │   │       └── data_service.py
│   │   ├── requirements.txt
│   │   ├── Dockerfile.python
│   │   └── README.md
│   │
│   ├── api-nodejs/
│   │   ├── src/
│   │   │   ├── routes/
│   │   │   │   └── userRoutes.js
│   │   │   ├── controllers/
│   │   │   │   └── userController.js
│   │   │   ├── models/
│   │   │   │   └── userModel.js
│   │   │   └── app.js
│   │   ├── package.json
│   │   ├── Dockerfile.node
│   │   └── README.md
│
├── docker-compose.yml
└── README.md
