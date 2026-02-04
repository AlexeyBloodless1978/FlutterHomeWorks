import 'package:flutter/material.dart';
import '/models/weather_model.dart';
import '/widgets/empty_state.dart';
import '/widgets/error_state.dart';
import '/widgets/loading_state.dart';
import '/widgets/weather_card.dart';

class ContentData extends StatelessWidget {
  final bool isLoading;
  final String? loadingCity;
  final String? errorMessage;
  final WeatherModel? weather;


  ContentData({
    super.key,
    required this.isLoading,
    this.loadingCity,
    this.errorMessage,
    this.weather,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return LoadingState(city: loadingCity ?? '');
    }

    if (errorMessage != null && errorMessage!.isNotEmpty) {
      return ErrorState(errorMessage: errorMessage!);
    }

    if (weather != null) {
      return WeatherCard(weather: weather!);
    }

    return EmptyState();
  }
}
