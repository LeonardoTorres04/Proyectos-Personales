import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Configuraciones de fondo y tamaño de letra para vizualizacion
sns.set(style="whitegrid")
plt.rcParams["axes.labelsize"] = 10

# Cargar archivo Excel
file_path = "20250528_BD_ejercicio_Unidad2.xlsx"
df = pd.read_excel(file_path, sheet_name="Hoja1")

# Asegurar tipos numéricos
cols = ['UNIDADES VENDIDAS', 'INGRESOS', 'GASTOS DE OPERACIÓN', 'INVENTARIOS']
for col in cols:
    df[col] = pd.to_numeric(df[col], errors='coerce')

# Calcular estadísticas resumen
summary_stats = df.describe()
median = df.median(numeric_only=True)
quartiles = df.quantile([0.25, 0.5, 0.75])

print("=== ESTADÍSTICAS RESUMEN ===")
print(summary_stats)
print("\n=== MEDIANAS ===")
print(median)
print("\n=== CUARTILES ===")
print(quartiles)

# Histogramas
plt.figure(figsize=(12, 10))
for i, col in enumerate(cols):
    plt.subplot(2, 2, i+1)
    sns.histplot(df[col], bins=20, kde=True, color='steelblue')
    plt.title(f'Histograma de {col}')
plt.tight_layout()
plt.show()

# Gráfico de dispersión: INGRESOS vs GASTOS DE OPERACIÓN
plt.figure(figsize=(8, 6))
sns.scatterplot(data=df, x='GASTOS DE OPERACIÓN', y='INGRESOS', hue='ZONA')
plt.title('Gastos de Operación vs Ingresos por Zona')
plt.xlabel('Gastos de Operación')
plt.ylabel('Ingresos')
plt.legend()
plt.show()

# Gráfico de barras: Promedio de unidades vendidas por zona
plt.figure(figsize=(8, 6))
sns.barplot(data=df, x='ZONA', y='UNIDADES VENDIDAS', estimator='mean', ci=None, palette='muted')
plt.title('Promedio de Unidades Vendidas por Zona')
plt.ylabel('Promedio de Unidades Vendidas')
plt.show()