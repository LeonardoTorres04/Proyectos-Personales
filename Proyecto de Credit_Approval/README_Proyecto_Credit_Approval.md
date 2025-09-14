
# 💳 Proyecto: Credit Approval

## 📌 Descripción
Este proyecto tiene como objetivo analizar un conjunto de datos de solicitudes de crédito para identificar patrones de comportamiento financiero y construir modelos predictivos que permitan determinar si una solicitud será aprobada o no.

## 📊 Dataset
- Archivo: `credit_approval.csv`
- Contiene 690 registros con 16 variables, incluyendo edad, deuda, estado civil, historial bancario, ingresos, y resultado de aprobación.

## ⚙️ Procesamiento de Datos
- Limpieza de valores nulos y codificación de variables categóricas.
- Tratamiento de outliers numéricos y categóricos.
- Escalado de variables para análisis multivariado.

## 🔍 Técnicas Aplicadas
### Agrupamiento (Clustering)
- **PCA**: Reducción de dimensionalidad para visualización.
- **K-Means**: Identificación de 3 segmentos de clientes.
- **DBSCAN**: Detección de grupos densos y clientes atípicos.

### Clasificación
- **Regresión Logística**: Mejor desempeño general.
- **Naive Bayes**: Alta precisión pero menor recall.
- **Árbol de Decisión**: Equilibrado y fácil de interpretar.
- **KNN**: Bajo rendimiento, descartado.

## 📈 Visualización
- Se desarrolló un dashboard en Power BI para explorar:
  - Distribución de edad e ingresos.
  - Frecuencia de aprobación.
  - Segmentación por grupos.
  - Correlaciones entre variables.

## 🧠 Conclusiones
- La regresión logística fue el modelo más efectivo para predecir aprobaciones.
- El análisis de agrupamiento permitió identificar perfiles de riesgo y oportunidades de inclusión financiera.
- El dashboard facilita la toma de decisiones basada en datos.

## 👨‍💻 Autor
**Leonardo Javier Torres Velilla**  
Ingeniero de Sistemas especializado en inteligencia de negocios y analítica de datos.
