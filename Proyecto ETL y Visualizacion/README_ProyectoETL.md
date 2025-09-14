
# 📊 ProyectoETL - Análisis y Visualización de Datos

## Descripción
Este proyecto realiza un análisis exploratorio de datos de ventas, ingresos, gastos operativos e inventarios, agrupados por zona y vendedor. Se aplican técnicas de limpieza, transformación y visualización para generar indicadores clave y recomendaciones estratégicas.

## Archivos del Proyecto
- `20250528_BD_ejercicio_Unidad2.xlsx`: Base de datos original con registros transaccionales.
- `limpieza.py`: Script en Python para limpieza, agrupación y análisis estadístico.
- `Proyecto_ETL.pdf`: Informe gerencial con visualizaciones, conclusiones y recomendaciones.

## Procesamiento ETL
- Se renombraron columnas para facilitar el análisis.
- Se aseguraron tipos de datos numéricos.
- Se agruparon registros por `ZONA` y `VENDEDOR`.
- Se calcularon sumas, promedios y frecuencias de duplicados.
- Se exportó la base limpia como `datos_combinados.xlsx`.

## Análisis Estadístico
- Medidas de resumen: media, mediana, cuartiles y desviación estándar.
- Índice de correlación entre variables numéricas.
- Identificación de outliers y distribución por zona.

## Indicadores Clave
- Ingresos por gasto operativo.
- Ingresos por unidad vendida.
- Clasificación de zonas: líder, intermedia, crítica.

## Visualización
- Se generaron gráficos con `seaborn` y `matplotlib`:
  - Dispersión: gastos vs ingresos.
  - Boxplots por zona.
  - Histogramas de variables.
  - Matriz de correlación.
  - Barras por vendedor y zona.

## Conclusiones
- Alta correlación entre ingresos y unidades vendidas.
- Variabilidad significativa entre zonas.
- Oportunidades de eficiencia operativa.
- Inventarios no correlacionados directamente con ingresos.

## Recomendaciones
- Replicar estrategias de vendedores top.
- Optimizar inventarios según demanda.
- Implementar dashboards con KPIs.
- Aplicar modelos predictivos para ventas e inventarios.

## Autor
**Leonardo Javier Torres Velilla**
Ingeniero de Sistemas - Universidad Piloto de Colombia
