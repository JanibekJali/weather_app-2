import 'package:get/get.dart';
import 'package:rxdart/subjects.dart';

class WeatherLocalData {
  static calculateKelvin(kelvin) {
    return (kelvin - 273.15).toStringAsFixed(0);
  }

  static String getDescription(temp) {
    if (temp > 25) {
      return 'Bugun issik eken';
    } else if (temp > 20) {
      return 'Salkyn bolot';
    } else if (temp < 10) {
      return 'Suuk bolot eken 🧣 🧤';
    } else {
      return 'Jiluu kiinip al';
    }
  }

  static String getWeatherIcon(kelvin) {
    if (kelvin < 300) {
      return '🌨';
    } else if (kelvin < 400) {
      return '🌞';
    } else if (kelvin < 600) {
      return '☔';
    } else if (kelvin < 700) {
      return '⛄';
    } else if (kelvin < 800) {
      return '🌪';
    } else if (kelvin == 800) {
      return '☁';
    } else if (kelvin <= 804) {
      return '🌩';
    } else {
      return '🌬';
    }
  }
}
