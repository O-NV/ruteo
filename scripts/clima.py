import requests
import json

# Tu clave de API
key = 'Ve2gNUFDvULMtDacoapysLI7MeT5MLUr'

# Información del clima
def get_weather(id):
    base = 'http://dataservice.accuweather.com/currentconditions/v1/'
    query = f'{id}?apikey={key}'
    
    response = requests.get(base + query)
    data = response.json()
    
    return data[0] if data else None

# Información de la ciudad
def get_city(city):
    base = 'http://dataservice.accuweather.com/locations/v1/cities/search'
    query = f'?apikey={key}&q={city}'
    
    response = requests.get(base + query)
    data = response.json()
    
    return data[0] if data else None

city_data = get_city('santiago')
if city_data:
    weather_data = get_weather(city_data['Key'])
    if weather_data:
        # Guardar los datos del clima en un archivo .json
        with open('./data/clima_actual.json', 'w') as json_file:
            json.dump(weather_data, json_file, indent=4)
        print(f"Los datos del clima se han guardado en 'clima_actual.json'.")
    else:
        print("No se encontraron datos de clima para esta ciudad.")
else:
    print("No se encontraron datos de la ciudad.")