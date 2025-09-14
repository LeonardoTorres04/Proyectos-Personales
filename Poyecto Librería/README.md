
# 📚 Proyecto: Librería

## Descripción

Este proyecto consiste en el diseño de una base de datos relacional para la gestión de una red de librerías. Permite registrar escritores, géneros literarios, libros y su distribución en distintas librerías físicas. Está orientado a facilitar la administración de inventario y relaciones entre autores, obras y puntos de venta.

## Estructura de la Base de Datos

La base de datos incluye las siguientes tablas:

- **escritores**: Información personal de los autores.
- **generos**: Géneros literarios asociados a escritores.
- **libros**: Registro de libros con título y precio.
- **libreria**: Datos de librerías físicas (nombre, ubicación).
- **libros_has_generos**: Relación entre libros y géneros.
- **libreria_has_libros**: Relación entre libros y librerías.

## Relaciones

- Un escritor puede tener varios géneros asociados.
- Un género está vinculado a un escritor.
- Un libro puede pertenecer a varios géneros.
- Una librería puede tener múltiples libros en su inventario.

## Tecnologías utilizadas

- **SQL** (compatible con MySQL/MariaDB)
- **phpMyAdmin** (para exportación/importación)
- **Motor InnoDB** con claves primarias y foráneas para garantizar integridad referencial.

## Instalación

1. Abre tu gestor de base de datos (ej. phpMyAdmin).
2. Crea una nueva base de datos llamada `libreria`.
3. Importa los archivos `libros.sql` y `Script de BD Librerias.sql` en el orden adecuado.
4. Verifica que las tablas y relaciones se hayan creado correctamente.

## Ejemplo de uso

Consulta para obtener todos los libros disponibles en la librería "Panamericana":

```sql
SELECT l.titulo, l.precio
FROM libros l
JOIN libreria_has_libros ll ON l.id_libro = ll.Libros_id_libro
JOIN libreria lb ON ll.Libreria_id_libreria = lb.id_libreria
WHERE lb.nombre = 'panamericana';
```

## Autor

**Leonardo Javier Torres Velilla**  
Ingeniero de Sistemas especializado en inteligencia de negocios y analítica de datos.
