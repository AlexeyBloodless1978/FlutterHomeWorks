import 'package:flutter/material.dart';
import 'dart:convert';
import 'models/weather_model.dart';
import 'main_screen.dart';
//import 'models/simple_weather.dart';


/*
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my homework lessons 12',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: MainScreen(),
    );
  }
}
*/
//https://api.openweathermap.org/data/2.5/weather?q=gomel&units=metric&APPID=0f06c4197d319eedf26cea4525a70299

void main() {
  final jsonString = '''
    {"coord":{"lon":30.9754,"lat":52.4345},"weather":[{"id":701,"main":"Mist","description":"mist","icon":"50d"}],"base":"stations","main":{"temp":-15.01,"feels_like":-19.94,"temp_min":-15.04,"temp_max":-15.01,"pressure":1046,"humidity":92,"sea_level":1046,"grnd_level":1029},"visibility":4700,"wind":{"speed":2,"deg":20},"clouds":{"all":51},"dt":1768729940,"sys":{"type":1,"id":8933,"country":"BY","sunrise":1768715787,"sunset":1768745760},"timezone":10800,"id":627907,"name":"Gomel","cod":200}
  ''';

  final jsonStringSmall = '''{"name":"Gomel","temp":-17.01}''';

  try {
    final jsonMap = jsonDecode(jsonString);
    final weatherData = WeatherModel.fromJson(jsonMap);

    print('Город: ${weatherData.name}');
    print('Температура: ${weatherData.main.temp}°C');
    print('Описание: ${weatherData.weather.first.description}');

    // Использование copyWith (метод от freezed)
    final updatedData = weatherData.copyWith(
      main: weatherData.main.copyWith(temp: 25.0),
    );
    print('Обновленная температура: ${updatedData.main.temp}°C');

  } catch (e) {
    print('Ошибка парсинга: $e');
  }
}

/*
void main() {


  final jsonStringSmall = '''{"name":"Gomel","temp":-17.01}''';

  try {
    final jsonMap = jsonDecode(jsonStringSmall);
    final simpleWeather = SimpleWeather.fromJson(jsonMap);

    print('Город: ${simpleWeather.name}');
    print('Температура: ${simpleWeather.temp}°C');




  } catch (e) {
    print('Ошибка парсинга: $e');
  }
}*/