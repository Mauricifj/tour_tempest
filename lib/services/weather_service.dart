import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/city_model.dart';

class WeatherService {
  const WeatherService(this._dioClient, this.sharedPreferences);

  final Dio _dioClient;
  final SharedPreferences sharedPreferences;

  static const String apiKey = String.fromEnvironment('OPEN_WEATHER_API_KEY');
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5';

  static String currentWeatherUrl(String city) {
    return '$baseUrl/weather?q=$city&appid=$apiKey&units=metric';
  }

  static String forecastUrl(String city) {
    return '$baseUrl/forecast?q=$city&appid=$apiKey&units=metric';
  }

  Future<CityModel> fetch(String cityName) async {
    final storedData = sharedPreferences.getString(cityName);
    if (storedData != null) {
      final map = json.decode(storedData);
      final city = CityModel.fromMap(map);
      return city;
    }

    final responseCurrentWeather =
        await _dioClient.get(currentWeatherUrl(cityName));
    final responseForecast = await _dioClient.get(forecastUrl(cityName));

    if (responseCurrentWeather.statusCode == 200 &&
        responseForecast.statusCode == 200) {
      final currentWeatherMap = responseCurrentWeather.data;
      final forecastMap = responseForecast.data;
      final cityModel = CityModel.fromMaps(currentWeatherMap, forecastMap);
      final cityJson = json.encode(cityModel.toMap());

      sharedPreferences.setString(cityName, cityJson);
      return cityModel;
    } else {
      throw Exception('Failed to fetch weather data');
    }
  }
}
