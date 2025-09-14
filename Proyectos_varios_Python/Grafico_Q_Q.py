import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from scipy.stats import norm, shapiro, probplot

# Datos de utilidades trimestrales (billones COP)
utilidades = np.array([4.0, 4.0, 5.1, 4.2, 4.0, 3.3, 3.6, 3.8, 3.1])

# Estadísticas básicas
media = np.mean(utilidades)
std = np.std(utilidades, ddof=1)  # ddof=1 para muestra

# Gráfico Q-Q
probplot(utilidades, dist="norm", plot=plt)
plt.title("Gráfico Q-Q")
plt.grid(True)
plt.show()
