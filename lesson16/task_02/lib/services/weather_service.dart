import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '/api/weather_api_service.dart';
import '/models/weather_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WeatherService {
  static const String _baseUrl = "https://api.openweathermap.org/data/2.5/";
  static final String _apiKey =dotenv.get("API_KEY");


  late final WeatherApiService _apiService;

  WeatherService() {
    final dio = _createDio();
    _apiService = WeatherApiService(dio);
  }

  Dio _createDio() {
    final options = BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );

    final dio = Dio(options);

    // Интерсептор для логирования
    dio.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
      requestHeader: true,
    ));

    // Интерсептор для обработки ошибок
    dio.interceptors.add(InterceptorsWrapper(
      onError: (error, handler) {
        if (error.response?.statusCode == 401) {
          debugPrint('Invalid API key');
        } else if (error.response?.statusCode == 404) {
          debugPrint('City not found');
        }
        return handler.next(error);
      },
    ));

    return dio;
  }

  Future<WeatherModel> getWeatherByCity(String cityName,
      {String units = "metric", String? language}) async {
    try {
      return await _apiService.getWeatherByCityName(
        cityName,
        units,
        _apiKey,
        language ?? "ru",
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

/*
// Неправильная обработка ошибок
// Файл: lib/services/weather_service.dart
// Проблема: метод _handleError возвращает String, но используется как исключение
// Решение: создать кастомные классы исключений или возвращать Exception

  String _handleError(DioException error) {
    if (error.response != null) {
      switch (error.response!.statusCode) {
        case 400:
          return "Bad request. Check your parameters.";
        case 401:
          return "Invalid API key. Please check your API key.";
        case 404:
          return "City not found. Please check the city name.";
        case 429:
          return "Too many requests. Please try again later.";
        case 500:
        case 502:
        case 503:
        case 504:
          return "Server error. Please try again later.";
        default:
          return "An error occurred: ${error.response!.statusCode}";
      }
    } else {
      return "Network error: ${error.message}";
    }
  }*/

  Exception _handleError(DioException error) {
    final message = error.response != null
        ? switch (error.response!.statusCode) {
      400 => "Bad request. Check your parameters.",
      401 => "Invalid API key. Please check your API key.",
      404 => "City not found. Please check the city name.",
      429 => "Too many requests. Please try again later.",
      500 || 502 || 503 || 504 => "Server error. Please try again later.",
      _ => "An error occurred: ${error.response!.statusCode}",
    }
        : "Network error: ${error.message}";

    return Exception(message);
  }
}