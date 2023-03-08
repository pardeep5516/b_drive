import 'package:get/get.dart';

class WeatherController extends GetxController {
  RxInt weather = 30.obs;

  void changeWeather(int value) {
    weather.value = value;
  }

}
