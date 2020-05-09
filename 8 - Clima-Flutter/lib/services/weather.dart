import "package:clima/services/location.dart";
import "../services/networking.dart";
import 'networking.dart';
import 'networking.dart';

const ApiKey = '8f446ad200991709c58cb2d593016eeb';
const WeatherUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityName(String cityName) async {
    var url = '$WeatherUrl?q=$cityName&appid=$ApiKey&units=metric';
    NetworkHelper getData = NetworkHelper(url: url);
    var data = await getData.getData();
    return data;
  }

  Future<dynamic> getLocationData() async {
    GetLocation location = GetLocation();
    await location.getCurrentLocation();
    NetworkHelper getData = NetworkHelper(
        url:
            "${WeatherUrl}?lat=${location.latitude}&lon=${location.longitude}&appid=$ApiKey&units=metric");

    var weatherData = await getData.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(double temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
