import numpy as np
import json

with open('tiempos_espera_atraccion.json', 'r') as f:
    data = json.load(f)

intervalos = np.zeros(shape=(84,46))
for i in range(84):
    temp = []
    for atraccion, tiempos in data['tiempos_espera'].items():
        if(tiempos[i] is None):
            temp.append(-1)
        else:
            temp.append(tiempos[i])
    intervalos[i] = temp
        
data1 = {"tiempos_espera": intervalos.tolist()}

"""
data1['tiempos_espera'][0] corresponde al tiempo de espera de cada atracción a las 12:00 de acuerdo al orden de las atracciones encontrado en tiempos_espera_atraccion.py
data1['tiempos_espera'][1] corresponde al tiempo de espera de cada atracción a las 12:05...
"""

with open('tiempos_espera_intervalo.json', 'w') as f:
    json.dump(data1, f, indent=4)
