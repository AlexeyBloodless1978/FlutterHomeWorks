import 'package:flutter/material.dart';
import 'package:lesson12/models/weather_model.dart';
import 'package:lesson12/widgets/weather_detail.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel weather;

  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        // Основная информация
        Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
            // Город из полученной модели json
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                weather.name,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Температура
          Center(
            child: Text(
              '${weather.main.temp.round()}°',
              style: const TextStyle(
                fontSize: 72,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),

          // Описание
          Text(
          weather.weather.isNotEmpty ? weather.weather.first.description.toUpperCase() : 'Нет данных',
          style: const TextStyle(
            fontSize: 18,
            color: Colors.blue,
            fontWeight: FontWeight.w500,
          ),
        ),

        const SizedBox(height: 10),

        // Ощущается как
        Text(
          'Ощущается как ${weather.main.feelsLike.round()}°',
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
        ],
      ),
    ),
    ),

    const SizedBox(height: 20),

    // Детальная информация
    Card(
    elevation: 3,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
    children: [
    const Text(
    'Детали',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    const SizedBox(height: 15),

    WeatherDetail(
    icon: Icons.water_drop,
    title: 'Влажность',
    value: '${weather.main.humidity}%',
    color: Colors.blue,
    ),

    const Divider(),

    WeatherDetail(
    icon: Icons.air,
    title: 'Ветер',
    value: '${weather.wind.speed.toStringAsFixed(1)} м/с',
    color: Colors.green,
    ),

    const Divider(),

    WeatherDetail(
    icon: Icons.thermostat,
    title: 'Ощущается',
    value: '${weather.main.feelsLike.round()}°',
    color: Colors.orange,
    ),
    ],
    ),
    ),
    ),
    ],
    ),
    );
  }
}
