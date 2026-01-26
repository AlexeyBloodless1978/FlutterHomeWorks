import 'package:flutter/material.dart';
import 'package:lesson12/models/weather_model.dart';
import 'services/weather_service.dart';
import 'widgets/content_data.dart';
import 'widgets/search_field.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final WeatherService _weatherService = WeatherService();

  String _currentCity = '';

  void _handleSearch(String city) {
    setState(() {
      _currentCity = city;
    });
    _fetchWeather(city);
  }

  WeatherModel? _weather;
  bool _isLoading = false;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
  }

  Future<void> _fetchWeather(String city) async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
      this._weather = null;
    });

    try {
      final weather = await _weatherService.getWeatherByCity(city);
      setState(() {
        this._weather = weather;
      });
    } catch (e) {
      setState(() {
        _errorMessage = _getErrorMessage(e);
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  String _getErrorMessage(Object error) {
    if (error.toString().contains('404')) {
      return 'Город не найден';
    } else if (error.toString().contains('401')) {
      return 'Ошибка API ключа';
    } else if (error.toString().contains('timeout')) {
      return 'Таймаут соединения';
    } else {
      return 'Ошибка: $error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Заголовок
              const Text(
                '🌤️ Погода',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Узнайте погоду в любом городе',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),

              const SizedBox(height: 20),

              // Поле поиска
              SearchField(onSearch: _handleSearch),

              const SizedBox(height: 20),

              // Основной контент
              Expanded(
                child: ContentData(
                  isLoading: _isLoading,
                  loadingCity: _currentCity,
                  errorMessage: _errorMessage,
                  weather: _weather,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
