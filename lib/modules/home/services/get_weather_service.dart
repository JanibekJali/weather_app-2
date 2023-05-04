import 'dart:convert';
import 'dart:developer';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/constants/api_key.dart';
import 'package:weather_app/data/model/weather_model.dart';
import 'package:weather_app/utils/htttp/weather_http.dart';

class GetWeatherService {
  static Future<Map<String, dynamic>> getCityByLocation(
      Position position) async {
    return WeatherHttp.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey');
  }

  Future<WeatherModel> getCityByLocastionModel1(Position position) async {
    final data = await getCityByLocation(position);
    final weatherModel = WeatherModel.fromJson(data);
    return weatherModel;
  }

  static Future<WeatherModel> getCityByLocastionModel2(
      Position position) async {
    final data = await WeatherHttp.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey');
    final weatherModel = WeatherModel.fromJson(data);
    return weatherModel;
  }

  static Future<Map<String, dynamic>> getWeatherByTypedCityName(
      String typeCityname) async {
    final url =
        'https://api.openweathermap.org/data/2.5/weather?q=$typeCityname&appid=$apiKey';
    return WeatherHttp.get(url);
  }

  static Future<WeatherModel> getWeatherByTypedCityNameModel(
      String typeCityname) async {
    final data = await getWeatherByTypedCityName(typeCityname);
    final weatherModel = WeatherModel.fromJson(data);
    return weatherModel;
  }
}


    // cityName.value = jsonJoop['name'];
    // final kelvin = jsonJoop['main']['temp'];
    // temp.value = WeatherLocalData.calculateKelvi(kelvin);
    // description.value =
    //     WeatherLocalData.getDescription(double.parse(temp.value));
    // icon.value = WeatherLocalData.getWeatherIcon(kelvin);
