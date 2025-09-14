import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from scipy.stats import norm, shapiro, probplot

# Datos de utilidades trimestrales (billones COP)
utilidades = np.array([4.0, 4.0, 5.1, 4.2, 4.0, 3.3, 3.6, 3.8, 3.1])

# Estadísticas básicas
media = np.mean(utilidades)
std = np.std(utilidades, ddof=1)  # ddof=1 para muestra

# Prueba de Shapiro-Wilk
stat, p_value = shapiro(utilidades)
print(f"Estadístico de Shapiro-Wilk: {stat:.4f}")
print(f"P-valor: {p_value:.4f}")

if p_value > 0.05:
    print("No se rechaza la hipótesis nula: los datos podrían seguir una distribución normal.")
else:
    print("Se rechaza la hipótesis nula: los datos no siguen una distribución normal.")
