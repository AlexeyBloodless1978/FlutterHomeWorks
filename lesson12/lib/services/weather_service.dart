import 'package:dio/dio.dart';
import 'package:lesson12/api/weather_api_service.dart';
import 'package:lesson12/models/weather_model.dart';


class WeatherService {
  static const String _baseUrl = "https://api.openweathermap.org/data/2.5/";
  static const String _apiKey = "0f06c4197d319eedf26cea4525a70299";

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
          print('Invalid API key');
        } else if (error.response?.statusCode == 404) {
          print('City not found');
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
  }
}