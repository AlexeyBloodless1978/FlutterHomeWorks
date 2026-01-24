import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../models/weather_model.dart';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';


enum WeatherApiError {
  networkError,
  notFound,
  serverError,
  unauthorized,
  unknown,
}

class GetWeather {}