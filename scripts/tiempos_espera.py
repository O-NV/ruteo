import numpy as np
import json
import matplotlib.pyplot as plt

fig, ax = plt.subplots()

atracciones_tiers = {
    "Raptor": "T1",
    "Black Hole": "T1",
    "Rapid River": "T1",
    "Boomerang": "T1",
    "Spider": "T1",
    "Tsunami": "T2",
    "Tagadá": "T2",
    "Top Spin": "T2",
    "Xtreme Fall": "T2",
    "Kamikaze": "T2",
    "Crazy Dance": "T2",
    "Air Race": "T2",
    "Disko": "T3",
    "Fly Over": "T3",
    "Tren Minero": "T3",
    "Volare": "T3",
    "Botes Chocadores": "T3",
    "The Pirate Revenge": "T3",
    "Moby Dick": "T3",
    "Barco Pirata": "T3",
    "Skooter": "T3",
    "Twister": "T4",
    "Wild Mouse": "T4",
    "Samba Balloon": "TK",
    "Mini Splash": "TK",
    "Carrusel": "TK",
    "Ford T": "TK",
    "Super Trucks": "TK",
    "Rockin´Tug": "TK",
    "El Faro": "TK",
    "Happy Swing": "TK",
    "Montaña Dragón": "TK",
    "Buggy Jump": "TK",
    "Circus Train": "TK",
    "Castillo Encantado": "TP",
    "Down the Clown": "TP",
    "Hi Striker": "TP",
    "Derby": "TP",
    "Box Challenge": "TP",
    "Lucky Shot Challenge": "TP",
    "Rueda de la Fortuna": "TP",
    "Tiro al Payaso": "TP",
    "Ring and Bowling": "TP",
    "Golf Challenge": "TP",
    "Tren CP": "TH",
    "Monga": "TH"
}

popularity_tiers = {
    "T1": 3,
    "T2": 2,
    "T3": 1.5,
    "T4": 1,
    "TK": 0.7,
    "TP": 0.2,
    "TH": 0.5
}

intervalos = np.array([
    '12:00', '12:05', '12:10', '12:15', '12:20', '12:25', '12:30', '12:35', '12:40', '12:45', '12:50', '12:55', 
    '13:00', '13:05', '13:10', '13:15', '13:20', '13:25', '13:30', '13:35', '13:40', '13:45', '13:50', '13:55',
    '14:00', '14:05', '14:10', '14:15', '14:20', '14:25', '14:30', '14:35', '14:40', '14:45', '14:50', '14:55',
    '15:00', '15:05', '15:10', '15:15', '15:20', '15:25', '15:30', '15:35', '15:40', '15:45', '15:50', '15:55',
    '16:00', '16:05', '16:10', '16:15', '16:20', '16:25', '16:30', '16:35', '16:40', '16:45', '16:50', '16:55',
    '17:00', '17:05', '17:10', '17:15', '17:20', '17:25', '17:30', '17:35', '17:40', '17:45', '17:50', '17:55',
    '18:00', '18:05', '18:10', '18:15', '18:20', '18:25', '18:30', '18:35', '18:40', '18:45', '18:50', '18:55',
    '19:00'
])

def generar_tiempos_espera(popularity_factor):
    """
    Generates an array of rounded values representing the expected waiting times based on a given popularity factor.

    Parameters:
        popularity_factor (float): A factor that determines the shape of the gamma distribution used to generate the waiting times.

    Returns:
        numpy.ndarray: An array of rounded values representing the expected waiting times.
    """
    k = 1
    if popularity_factor == 3:
        k = popularity_factor**2
    elif popularity_factor == 2:
        k = popularity_factor*5
    elif popularity_factor == 1.5:
        k = 20
    elif popularity_factor == 1:
        k = 30
    elif popularity_factor == 0.8:
        k = 40
    elif popularity_factor == 0.5:
        k = 50
    else:
        k = 10
    y = np.random.gamma(k, size=4000)
    z = np.random.normal(15, 1, 4000)
    count_y, bins_y = np.histogram(y, bins=84, density=True)
    count_z, bins_z = np.histogram(z, bins=84, density=True)
    count_y *= popularity_factor*25.0/count_y.max()
    count_z *= popularity_factor*10.0/count_z.max()
    #count_y -= count.min()
    count_y = np.append(count_y, 0)
    count_z = np.append(count_z, 0)
    count_t = count_y + count_z #Gamma + Normal
    count_t[0] = 0
    return np.round(count_t)

def crear_json_tiempos_espera():
    """
    Create a JSON object containing the waiting times for each attraction.

    This function iterates over the `atracciones_tiers` dictionary to get the 
    tier of each attraction. It then uses the `popularity_tiers` dictionary to 
    retrieve the popularity factor for that tier. The function calls the 
    `generar_tiempos_espera` function with the popularity factor and stores 
    the result in a dictionary. Finally, the function returns a JSON object 
    containing the waiting times for each attraction.

    Parameters:
    - None

    Returns:
    - dict: A JSON object containing the waiting times for each attraction.
    """
    tiempos_espera = {}
    for atraccion, tier in atracciones_tiers.items():
        popularity_factor = popularity_tiers.get(tier, 1)
        tiempos_espera[atraccion] = generar_tiempos_espera(popularity_factor).tolist()

    return {"tiempos_espera": tiempos_espera}

def guardar_json(json_data):
    """
    Saves the provided JSON data to a file.

    Args:
        json_data (Any): The JSON data to be saved.

    Returns:
        None
    """
    with open("/data/tiempos_espera_atraccion.json", "w") as json_file:
        json.dump(json_data, json_file, indent=4)

json_tiempos_espera = crear_json_tiempos_espera()
if json_tiempos_espera:
    json_tiempos_espera['tiempos_espera']['Tren CP'] = [
        120.0, 115.0, 110.0, 105.0, 100.0, 95.0, 90.0, 85.0, 80.0, 75.0, 70.0, 65.0, 60.0, 55.0, 50.0, 45.0, 40.0, 35.0, 30.0, 25.0, 20.0, 15.0, 10.0, 5.0, 
        120.0, 115.0, 110.0, 105.0, 100.0, 95.0, 90.0, 85.0, 80.0, 75.0, 70.0, 65.0, 60.0, 55.0, 50.0, 45.0, 40.0, 35.0, 30.0, 25.0, 20.0, 15.0, 10.0, 5.0, 
        120.0, 115.0, 110.0, 105.0, 100.0, 95.0, 90.0, 85.0, 80.0, 75.0, 70.0, 65.0, 60.0, 55.0, 50.0, 45.0, 40.0, 35.0, 30.0, 25.0, 20.0, 15.0, 10.0, 5.0,
        None, None, None, None, None, None, None, None, None, None, None, None, None
    ]
    json_tiempos_espera['tiempos_espera']['Monga'] = [
        30.0, 25.0, 20.0, 15.0, 10.0, 5.0, 30.0, 25.0, 20.0, 15.0, 10.0, 5.0, 30.0, 25.0, 20.0, 15.0, 10.0, 5.0, 30.0, 25.0, 20.0, 15.0, 10.0, 5.0,
        30.0, 25.0, 20.0, 15.0, 10.0, 5.0, 30.0, 25.0, 20.0, 15.0, 10.0, 5.0, 30.0, 25.0, 20.0, 15.0, 10.0, 5.0, 30.0, 25.0, 20.0, 15.0, 10.0, 5.0, 
        30.0, 25.0, 20.0, 15.0, 10.0, 5.0, 30.0, 25.0, 20.0, 15.0, 10.0, 5.0, 30.0, 25.0, 20.0, 15.0, 10.0, 5.0, 30.0, 25.0, 20.0, 15.0, 10.0, 5.0,
        30.0, 25.0, 20.0, 15.0, 10.0, 5.0, None, None, None, None, None, None, None
    ]
    guardar_json(json_tiempos_espera)
    print("JSON generado y guardado correctamente.")
    # ax.plot(intervalos, json_tiempos_espera['tiempos_espera']['Raptor'])
    # ax.plot(intervalos, json_tiempos_espera['tiempos_espera']['Xtreme Fall'])
    # ax.plot(intervalos, json_tiempos_espera['tiempos_espera']['Disko'])
    # ax.plot(intervalos, json_tiempos_espera['tiempos_espera']['Wild Mouse'])
    # ax.plot(intervalos, json_tiempos_espera['tiempos_espera']['El Faro'])
    # ax.plot(intervalos, json_tiempos_espera['tiempos_espera']['Tiro al Payaso'])
    # ax.plot(intervalos, json_tiempos_espera['tiempos_espera']['Monga'])
    # ax.plot(intervalos, json_tiempos_espera['tiempos_espera']['Tren CP'])
    # plt.xticks(intervalos[::12], rotation=45)
    # plt.legend(['T1', 'T2', 'T3', 'T4', 'TK', 'TP'])
    # plt.legend(['T1', 'T2', 'T3', 'T4', 'TK', 'TP', 'Monga', 'Tren CP'])
    # plt.show()
else:
    print("Error al generar el JSON.")
