import 'dart:convert';
import 'dart:developer';
// import 'package:rxdart/rxdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/constants/api_key.dart';
import 'package:weather_app/data/local/weather_local_data.dart';
import 'package:weather_app/modules/home/services/get_position_service.dart';
import 'package:weather_app/modules/home/services/get_weather_service.dart';

class HomeController extends GetxController {
  RxString cityName = 'Shaar kele jatat'.obs;
  RxString temp = ''.obs;
  RxString description = ''.obs;
  RxString icon = ''.obs;

  @override
  void onInit() {
    showLocation();
    super.onInit();
  }

  void showLocation() async {
    final position = await GetPositionService.getCurrentPosition();
    final response = await GetWeatherService.getCityByLocation(position);
  }
}
