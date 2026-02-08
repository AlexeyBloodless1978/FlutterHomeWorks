part of 'weather_app_bloc.dart';

abstract class WeatherAppEvent extends Equatable {
  const WeatherAppEvent();

  @override
  List<Object> get props => [];
}

class WeatherFetchEvent extends WeatherAppEvent {
  final String city;

  const WeatherFetchEvent(this.city);

  @override
  List<Object> get props => [city];
}
