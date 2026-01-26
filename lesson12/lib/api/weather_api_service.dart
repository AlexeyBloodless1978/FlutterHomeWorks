import 'package:dio/dio.dart';
import 'package:lesson12/models/weather_model.dart';
import 'package:retrofit/retrofit.dart';

part 'weather_api_service.g.dart';

@RestApi(baseUrl: "https://api.openweathermap.org/data/2.5/")
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio, {String baseUrl}) = _WeatherApiService;

  @GET("weather")
  Future<WeatherModel> getWeatherByCityName(
    @Query("q") String cityName,
    @Query("units") String units,
    @Query("appid") String apiKey,
    @Query("lang") String? language,
  );
}

//Методы для поиска по координатам и по  id города.
/*
  @GET("weather")
  Future<WeatherModel> getWeatherByCoordinates(
      @Query("lat") double latitude,
      @Query("lon") double longitude,
      @Query("units") String units,
      @Query("appid") String apiKey,
      @Query("lang") String? language,
      );

  @GET("weather")
  Future<WeatherModel> getWeatherByCityId(
      @Query("id") int cityId,
      @Query("units") String units,
      @Query("appid") String apiKey,
      @Query("lang") String? language,
      );*/
//}
