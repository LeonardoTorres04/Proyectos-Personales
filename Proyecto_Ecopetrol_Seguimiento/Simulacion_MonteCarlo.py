import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from scipy.stats import norm, shapiro, probplot

# Datos de utilidades trimestrales (billones COP)
utilidades = np.array([4.0, 4.0, 5.1, 4.2, 4.0, 3.3, 3.6, 3.8, 3.1])

# Estadísticas básicas
media = np.mean(utilidades)
std = np.std(utilidades, ddof=1)  # ddof=1 para muestra

# Simulación Monte Carlo (10000 simulaciones)
num_simulaciones = 10000
simulaciones = np.random.normal(loc=media, scale=std, size=num_simulaciones)

# Gráfico de simulación
plt.figure(figsize=(10, 5))
sns.histplot(simulaciones, bins=50, kde=True, color='lightgreen')
plt.axvline(x=media, color='red', linestyle='--', label=f"Media: {media:.2f} billones")
plt.title("Simulación de Monte Carlo - Utilidades Trimestrales")
plt.xlabel("Utilidades simuladas (billones COP)")
plt.ylabel("Frecuencia")
plt.legend()
plt.grid(True)
plt.tight_layout()
plt.show()

# Percentiles clave
percentiles = np.percentile(simulaciones, [5, 25, 50, 75, 95])
print("Percentiles simulados:")
print(f"P5:  {percentiles[0]:.2f} billones COP")
print(f"P25: {percentiles[1]:.2f} billones COP")
print(f"P50: {percentiles[2]:.2f} billones COP")
print(f"P75: {percentiles[3]:.2f} billones COP")
print(f"P95: {percentiles[4]:.2f} billones COP")
