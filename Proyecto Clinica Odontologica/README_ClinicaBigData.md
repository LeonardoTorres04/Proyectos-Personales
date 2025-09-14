
# 🦷 Proyecto: Clínica Odontológica - Big Data

## Descripción

Este proyecto presenta un diagnóstico organizacional de una clínica odontológica, enfocado en la gestión e implementación de Big Data. Se analiza el uso actual de los datos clínicos y se proponen estrategias para mejorar la toma de decisiones mediante técnicas analíticas avanzadas.

## Fuente de datos

- Datos clínicos diarios registrados por odontólogos.
- Información desagregada por sexo, edad, tipo de consulta y profesional.
- Recomendación de integrar datos externos como indicadores epidemiológicos y sociales.

## Principios de Big Data aplicados

- **Volumen**: Más de 20,000 registros clínicos.
- **Variedad**: Datos estructurados (edad, sexo, tipo de consulta, profesional, turno).
- **Velocidad**: Recolección no automatizada.
- **Veracidad**: Presencia de errores como etiquetas duplicadas y valores inválidos.
- **Valor**: Potencial para análisis de consultas frecuentes, eficiencia profesional y segmentación demográfica.

## Técnicas recomendadas

- **Minería de datos**: Identificación de patrones por grupo etario y profesional.
- **Machine Learning**: Predicción de demanda y urgencias.
- **Segmentación (Clustering)**: Agrupación de pacientes para campañas preventivas.
- **Dashboards interactivos**: Visualización de métricas clave en tiempo real.
- **Análisis geoespacial**: Detección de zonas con mayor necesidad de atención.

## Hallazgos

- Base de datos estructurada pero con errores de calidad.
- Infraestructura limitada (uso de planillas).
- Ausencia de integración con fuentes externas.
- Uso limitado de herramientas analíticas.

## Recomendaciones estratégicas

1. **Fase 1 - Fundacional**: Crear base de datos centralizada y estandarizar nomenclatura.
2. **Fase 2 - Analítica Descriptiva**: Paneles por tipo de consulta, edad y profesional.
3. **Fase 3 - Analítica Predictiva**: Modelos de predicción y segmentación.
4. **Fase 4 - Integración y AI**: Vinculación con bases externas y uso de modelos avanzados.


---


## ⚙️ Procesamiento y Validación de Datos

Se realizó una limpieza exhaustiva del dataset clínico, abordando problemas como etiquetas inconsistentes, errores de tipo (#¡REF!), valores nulos y formatos incorrectos. Las principales acciones incluyeron:

- Estandarización de etiquetas en el campo `rango_etario`.
- Reemplazo de errores por valores nulos y posterior imputación (media para variables numéricas, moda para categóricas).
- Corrección de fechas inválidas utilizando la moda.
- Validación de coherencia entre edad y tipo de consulta.
- Detección de duplicados y valores extremos.
- Homogeneización de texto y validación de campos como `turno` y `servicio`.
- Clasificación de tipos de consulta en categorías: Preventiva, Urgencia, Restaurativa, Derivación y Otros.
- Generación de indicadores por centro de atención (SAPS).

Además, se exportaron archivos `.csv` para visualización en Power BI y un reporte consolidado en Excel con todas las validaciones aplicadas.


---

## Autor

**Leonardo Javier Torres Velilla**  
Ingeniero de Sistemas especializado en inteligencia de negocios y analítica de datos.