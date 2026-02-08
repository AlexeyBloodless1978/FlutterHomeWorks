import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';




//import 'models/weather_model.dart';
//import 'models/simple_weather.dart';

Future<void> main() async {

  await dotenv.load(fileName: "asset/.env");
 
  //debugPrint(dotenv.get("API_KEY"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyHomeWork 16 task 2 (Changed lesson 12)',
      theme: ThemeData(primarySwatch: Colors.purple, useMaterial3: true),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//Тестирование модели погоды
/*
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
*/
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
