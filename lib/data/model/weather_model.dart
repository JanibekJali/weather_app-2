import 'package:weather_app/data/local/weather_local_data.dart';

class WeatherModel {
  final String cityName;
  final String tempreture;
  final String descriotion;
  final String icons;

  WeatherModel({
    required this.cityName,
    required this.tempreture,
    required this.descriotion,
    required this.icons,
  });
/*  Bul bazadan kelgen dannyidy kutup alu je APIdy kutuip aluu  */
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    final kelvin = json['main']['temp'];
    final temp = WeatherLocalData.calculateKelvin(kelvin);
    return WeatherModel(
      cityName: json['name'],
      tempreture: temp,
      descriotion: WeatherLocalData.getDescription(temp),
      icons: WeatherLocalData.getWeatherIcon(kelvin),
    );
  }

  /*  bul bazaga aidoo
  Map<String, dynamic> toJson() => {
        'cityName': cityName,
        'tempreture': tempreture,
        'descriotion': descriotion,
        'icon': icons
      };
      */
}
