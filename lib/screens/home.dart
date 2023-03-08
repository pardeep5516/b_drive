import 'package:b_drive/controllers/weather_controller.dart';
import 'package:b_drive/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  WeatherController weatherController = Get.put(WeatherController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         Get.to(() => const LoginScreen());
        },
        child: const Icon(Icons.add),
      ),
      body: Obx(
        () => Center(
          child: Text(
            'Weather is ${weatherController.weather.value} degrees',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
