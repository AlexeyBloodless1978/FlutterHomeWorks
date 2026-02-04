import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_weather.freezed.dart';
part 'simple_weather.g.dart';

@freezed
abstract class SimpleWeather with _$SimpleWeather {
  const factory SimpleWeather({
    required String name,
    required double temp,
  }) = _SimpleWeather;

  factory SimpleWeather.fromJson(Map<String, dynamic> json) =>
      _$SimpleWeatherFromJson(json);

}