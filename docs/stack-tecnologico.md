# 🏗️ Stack Tecnológico del Proyecto Web Multi-Backend

Este proyecto implementa una **arquitectura web con frontend desacoplado y múltiples microservicios backend**, desarrollados en diferentes lenguajes y tecnologías.  

El objetivo es **aprovechar la diversidad tecnológica** para construir un sistema flexible, escalable y adaptable a distintos casos de uso.

---

## 🔹 Frontend

- **HTML5 + CSS3 + JavaScript**
- **Servidor web:** Nginx (contenedor)

### Justificación
- HTML, CSS y JS son el estándar universal para interfaces web, asegurando **compatibilidad total en navegadores**.
- La simplicidad inicial facilita pruebas rápidas de integración con los backends.
- Nginx se usa como **servidor estático** porque es ligero, altamente optimizado y fácil de contenerizar.
- El frontend está desacoplado, por lo que en el futuro se puede migrar a frameworks modernos (**React, Angular, Vue**) sin romper la arquitectura.

---

## 🔹 Backend

El backend está dividido en **3 microservicios independientes**, cada uno desarrollado en un lenguaje distinto:

### 1️⃣ API en **C# / .NET 7 (ASP.NET Core WebAPI)**
- Ideal para: **Autenticación, lógica de negocio empresarial, integración con entornos Microsoft (Azure, SQL Server)**
- Ventajas:
  - Gran **rendimiento en producción** gracias al runtime de .NET.
  - Soporte empresarial robusto.
  - Ecosistema maduro de librerías y seguridad.

### 2️⃣ API en **Python (FastAPI)**
- Ideal para: **Procesamiento de datos, analítica, machine learning**
- Ventajas:
  - FastAPI es **rápido, ligero y con tipado**.
  - Excelente para prototipado y servicios de análisis.
  - Amplia comunidad en **IA, ML y Data Science**.

### 3️⃣ API en **Node.js (Express)**
- Ideal para: **Servicios CRUD, APIs rápidas y escalables, aplicaciones en tiempo real**
- Ventajas:
  - Modelo **asíncrono y no bloqueante** (event-driven).
  - Ecosistema npm con miles de paquetes.
  - Facilita la **integración frontend-backend** ya que comparte JavaScript.

---

## 🔹 Infraestructura

- **Docker** → Contenerización de frontend y microservicios.
- **Docker Compose** → Orquestación local de los contenedores.
- **Nginx** → Servidor web para el frontend.
- **REST APIs** → Comunicación entre frontend y backends.

### Justificación
- La contenerización garantiza **portabilidad y consistencia** en cualquier entorno (desarrollo, pruebas, producción).
- Docker Compose simplifica el levantamiento y coordinación de todos los servicios.
- El diseño basado en microservicios permite:
  - Escalar cada API de forma independiente.
  - Usar el mejor lenguaje/tecnología según el tipo de problema.
  - Sustituir/mantener servicios sin afectar a los demás.

---

## 🔹 Arquitectura de Comunicación

