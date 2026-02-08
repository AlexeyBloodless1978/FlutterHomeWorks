import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/weather_app_bloc.dart';
import 'widgets/search_field.dart';
import '/widgets/empty_state.dart';
import '/widgets/error_state.dart';
import '/widgets/loading_state.dart';
import '/widgets/weather_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherAppBloc(),
      child: const _MainScreenContent(),
    );
  }
}

class _MainScreenContent extends StatelessWidget {
  const _MainScreenContent();

  void _handleSearch(BuildContext context, String city) {
    context.read<WeatherAppBloc>().add(WeatherFetchEvent(city));
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
              SearchField(onSearch: (city) => _handleSearch(context, city)),
              const SizedBox(height: 20),

              // Основной контент через BlocBuilder
              Expanded(
                child: BlocBuilder<WeatherAppBloc, WeatherAppState>(
                  builder: (context, state) {
                    if (state is WeatherLoadingState) {
                      return LoadingState(city: state.loadingCity);
                    }

                    if (state is WeatherErrorState) {
                      return ErrorState(errorMessage: state.errorMessage);
                    }

                    if (state is WeatherSuccessState) {
                      return WeatherCard(weather: state.weather);
                    }

                    // WeatherEmptyState
                    return EmptyState();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
