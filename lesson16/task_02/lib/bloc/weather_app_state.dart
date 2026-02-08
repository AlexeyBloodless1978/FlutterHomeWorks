part of 'weather_app_bloc.dart';

abstract class WeatherAppState extends Equatable {
  const WeatherAppState();

  //
  @override
  List<Object> get props => [];
}

class WeatherEmptyState extends WeatherAppState {}

class WeatherLoadingState extends WeatherAppState {
  final String loadingCity;

  const WeatherLoadingState(this.loadingCity);

  @override
  List<Object> get props => [loadingCity];
}

class WeatherErrorState extends WeatherAppState {
  final String errorMessage;

  const WeatherErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class WeatherSuccessState extends WeatherAppState {
  final WeatherModel weather;

  const WeatherSuccessState(this.weather);

  @override
  List<Object> get props => [weather];
}
