
# 🌐 Proyecto ISP Redes

Este proyecto propone el diseño lógico y físico de un **Proveedor de Servicios de Internet (ISP)** enfocado en zonas rurales del Atlántico, Colombia, donde el acceso a internet es limitado o inexistente. Fue desarrollado como parte del diplomado en **Seguridad en Redes Informáticas** de la **Corporación Universitaria Latinoamericana (CUL)**.

## 📁 Contenido del Repositorio

- `proyecto isp.pdf`: Documento técnico que describe el planteamiento del problema, objetivos, diseño de red, estado del arte y configuración de VLANs.
- `proyecto_isp.pkt`: Archivo de simulación de red en Cisco Packet Tracer en formato .Zip debido a que GitHub presenta restricciones de formato.

## 🎯 Objetivo del Proyecto

Diseñar, desarrollar e implementar un proveedor de servicios de internet para zonas rurales, utilizando tecnologías accesibles como internet satelital, cableado estructurado y redes inalámbricas de largo alcance.

## 🧩 Componentes del Proyecto

- **Conexión satelital** como fuente principal de internet.
- **Distribución física** mediante cableado estructurado y postes de alumbrado público.
- **Red lógica** con segmentación por VLANs para estudiantes, docentes e invitados.
- **Simulación en Packet Tracer** para validar el diseño de red.

## 🔍 Planteamiento del Problema

Las grandes operadoras no invierten en infraestructura en zonas rurales por baja rentabilidad, lo que obliga a los habitantes a usar planes móviles costosos y limitados. Este proyecto busca ofrecer una solución asequible y eficiente para estas comunidades.

## 🎯 Objetivos Específicos

- Identificar la problemática de conectividad en áreas rurales.
- Diseñar la infraestructura física y lógica del ISP.
- Documentar y simular la red aplicando buenas prácticas de cableado y segmentación.

## 🛠️ Tecnologías y Conceptos Clave

- **VLANs**: Segmentación lógica de la red para mejorar seguridad, rendimiento y administración.
- **Enlaces troncales (802.1Q)**: Para transportar múltiples VLANs entre switches.
- **VoIP y tráfico multicast**: Consideraciones para calidad de servicio.
- **Cisco Packet Tracer**: Herramienta de simulación para validar el diseño.

## 📚 Estado del Arte

Se analizan casos de éxito como:
- **ITELKOM**: ISP local que evolucionó desde redes inalámbricas hasta servicios de nube y ciberseguridad.
- **Dialnet de Colombia S.A. E.S.P.**: Proveedor con enfoque corporativo, alta disponibilidad y soporte técnico robusto.

## ⚙️ Configuración de Red

Incluye:
- Creación y asignación de VLANs.
- Configuración de puertos de acceso y troncales.
- Solución de problemas comunes como discrepancias de VLAN nativa y listas de VLAN permitidas.

## 📖 Bibliografía

- [Cisco VLAN Configuration Guide](http://www.cisco.com/en/US/products/ps6406/products_command_reference_chapter09186a008081874b.html)
- [Packet Tracer VLAN Tutorial](https://sites.google.com/site/paginamodulo3vlan/home)
