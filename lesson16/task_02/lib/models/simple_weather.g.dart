// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SimpleWeather _$SimpleWeatherFromJson(Map<String, dynamic> json) =>
    _SimpleWeather(
      name: json['name'] as String,
      temp: (json['temp'] as num).toDouble(),
    );

Map<String, dynamic> _$SimpleWeatherToJson(_SimpleWeather instance) =>
    <String, dynamic>{'name': instance.name, 'temp': instance.temp};
