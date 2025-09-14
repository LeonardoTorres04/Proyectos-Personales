
# 💼 Proyecto Nómina Financiera

Sistema de gestión de nómina desarrollado en **Java** con conexión a base de datos **MySQL**, orientado a facilitar el manejo de empleados, cálculo de pagos, generación de reportes y administración de usuarios en una organización.

## 📁 Contenido del Repositorio

- `sistemanominafinal terminado.sql`: Script de base de datos con estructura, datos y procedimientos almacenados.
- Interfaces gráficas en Java:
  - Interfaz Principal
  - Interfaz Empleados
  - Interfaz Nómina
  - Interfaz del Administrador
  - Interfaz Recibo de Nómina
  - Interfaz Reporte de Nómina
  - Interfaz Usuario
- Clase `Conexion.java`: Manejo de conexión con MySQL mediante JDBC.
- Modelo Entidad-Relación (ER): Diseño lógico de la base de datos.
- Todo se encuentra empaquetado en un .zip por permisos de Github

## 🧠 Objetivo del Proyecto

Automatizar el proceso de gestión de nómina en una empresa, permitiendo:
- Registrar y administrar empleados.
- Calcular pagos con deducciones y bonificaciones.
- Emitir recibos y reportes de nómina.
- Controlar el acceso mediante usuarios y roles.

## 🗃️ Estructura de la Base de Datos

Incluye las siguientes tablas:
- `regempleados`: Información personal y laboral de los empleados.
- `nomina`: Registro de pagos por periodo.
- `departamentos`: Áreas organizativas.
- `usuarios`: Acceso al sistema.
- `vacaciones`: Gestión de días pagados.

### 🔄 Procedimientos Almacenados

El script SQL incluye procedimientos para:
- Consultar, insertar, modificar y eliminar registros en todas las tablas.
- Validar inicio de sesión (`consultar_logeoUsuario`).
- Calcular y registrar nómina (`insertar_nomina`, `modificar_nomina`).

## 🧩 Tecnologías Utilizadas

- **Java (Swing)**: Para la interfaz gráfica.
- **MySQL / MariaDB**: Motor de base de datos.
- **JDBC**: Conexión entre Java y SQL.
- **NetBeans / Eclipse**: IDEs recomendados.

## 📸 Capturas de Pantalla

- Interfaz principal del sistema (`Sistema de Nómina`)
- Menús: Archivo, Reportes, Ayuda
- Ventanas de gestión de empleados y nómina

## 🚀 Próximas Mejoras

- Exportación de reportes a PDF y Excel.
- Envío de recibos por correo electrónico.
- Dashboard con métricas de nómina.
- Módulo de prestaciones sociales.

## 📚 Créditos

Desarrollado por:
- Christian Herazo
- Leonardo Torres
- Jorge Herrera
- Genesis Tafur
