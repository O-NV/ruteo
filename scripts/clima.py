import requests

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
        print(weather_data)
    else:
        print("No se encontraron datos de clima para esta ciudad.")
else:
    print("No se encontraron datos de la ciudad.")
