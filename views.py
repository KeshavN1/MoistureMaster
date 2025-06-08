from django.shortcuts import render
from django.http import JsonResponse
from .models import PredResults
from .models import Soilmoisture
from django.http import HttpResponse
import urllib.request
import json
import joblib


def showmoisture(request):
    latest_entry = Soilmoisture.objects.latest('id')
    data = {
        'temperature': latest_entry.temperature,
        'humidity': latest_entry.humidity,
        'moisture': latest_entry.moisture,
    }
    return JsonResponse(data)

def predict(request):
    return render(request, 'predict.html')

def predict_chances(request):

    if request.POST.get('action') == 'post':

        # Receive data from client
        pressure = float(request.POST.get('pressure'))
        particulate_matter1 = float(request.POST.get('particulate_matter1'))
        particulate_matter2 = float(request.POST.get('particulate_matter2'))
        particulate_matter3 = float(request.POST.get('particulate_matter3'))
        atmospheric_moisture  = float(request.POST.get('atmospheric_moisture'))
        humidity = float(request.POST.get('humidity'))
        luminosity = float(request.POST.get('luminosity'))
        temperature = float(request.POST.get('temperature'))


        # Unpickle (load) model
        model = joblib.load(r"D:\model.pkl")

        # Make prediction
        result = model.predict([[pressure, particulate_matter1, particulate_matter2, particulate_matter3, atmospheric_moisture,  humidity, luminosity, temperature]])

        classification = result[0]
        # Create PredResults object
        PredResults.objects.create(pressure=pressure, particulate_matter1=particulate_matter1, particulate_matter2=particulate_matter2,
                                   particulate_matter3=particulate_matter3, atmospheric_moisture=atmospheric_moisture,
                                   humidity=humidity, luminosity=luminosity, temperature=temperature,
                                   classification=classification)

        return JsonResponse({'result': classification, 'pressure': pressure,
                             'particulate_matter1': particulate_matter1,'particulate_matter2': particulate_matter2,'particulate_matter3': particulate_matter3, 'atmospheric_moisture': atmospheric_moisture, 'humidity': humidity, 'luminosity': luminosity, 'temperature': temperature},
                            safe=False)


def view_results(request):
    # Submit prediction and show all
    dataset = PredResults.objects.all()
    print(dataset)  # Check the queryset in your console
    data = {"dataset": dataset}
    return render(request, "results.html", data)

def index(request):

    if request.method == 'POST':
        city = request.POST['city']

        source = urllib.request.urlopen('http://api.openweathermap.org/data/2.5/weather?q=' +
                                        city + '&units=metric&appid=d2e2751c86cbc3cdebd5fbdb6ff6b504').read()
        list_of_data = json.loads(source)

        data = {
            "country_code": str(list_of_data['sys']['country']),
            "coordinate": str(list_of_data['coord']['lon']) + ', '
            + str(list_of_data['coord']['lat']),

            "temp": str(list_of_data['main']['temp']) + ' °C',
            "pressure": str(list_of_data['main']['pressure']),
            "humidity": str(list_of_data['main']['humidity']),
            'main': str(list_of_data['weather'][0]['main']),
            'description': str(list_of_data['weather'][0]['description']),
            'icon': list_of_data['weather'][0]['icon'],
        }
        print(data)
    else:
        data = {}

    return render(request, "weather.html", data)
    