import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from scipy.stats import norm, shapiro, probplot

# Datos de utilidades trimestrales (billones COP)
utilidades = np.array([4.0, 4.0, 5.1, 4.2, 4.0, 3.3, 3.6, 3.8, 3.1])

# Estadísticas básicas
media = np.mean(utilidades)
std = np.std(utilidades, ddof=1)  # ddof=1 para muestra

# Histograma con curva normal
sns.histplot(utilidades, bins=6, kde=False, stat='density', color='skyblue')
xmin, xmax = plt.xlim()
x = np.linspace(xmin, xmax, 100)
p = norm.pdf(x, media, std)
plt.plot(x, p, 'r', linewidth=2)
plt.title("Histograma con Curva Normal")
plt.xlabel("Utilidades (billones COP)")
plt.ylabel("Densidad")
plt.grid(True)
plt.show()
