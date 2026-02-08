import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/weather_model.dart';
import '../services/weather_service.dart';

part 'weather_app_state.dart';

part 'weather_app_event.dart';

class WeatherAppBloc extends Bloc<WeatherAppEvent, WeatherAppState> {
  final WeatherService _weatherService = WeatherService();
  String _errorMessage = '';

  WeatherAppBloc() : super(WeatherEmptyState()) {
    on<WeatherFetchEvent>(_onFetchWeather);
  }

  Future<void> _onFetchWeather(
    WeatherFetchEvent event,
    Emitter<WeatherAppState> emit,
  ) async {
    emit(WeatherLoadingState(event.city));

    try {
      final weather = await _weatherService.getWeatherByCity(event.city);
      emit(WeatherSuccessState(weather));
    } catch (e) {
      _errorMessage = _getErrorMessage(e);
      emit(WeatherErrorState(_errorMessage));
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
}
