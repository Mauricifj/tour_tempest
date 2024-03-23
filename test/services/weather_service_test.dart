import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tour_tempest/models/city_model.dart';
import 'package:tour_tempest/services/weather_service.dart';

import '../mocks/dio_mock.dart';
import '../mocks/json_encoded_strings.dart';
import '../mocks/open_weather_api_responses.dart';

void main() {
  group('Weather Service => ', () {
    final dio = DioMock();
    const city = 'London';

    setUp(() {
      when(() => dio.get(WeatherService.currentWeatherUrl(city))).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 200,
          data: json.decode(currentWeatherResponse),
        ),
      );
      when(() => dio.get(WeatherService.forecastUrl(city))).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 200,
          data: json.decode(forecastResponse),
        ),
      );
    });

    test('Should get current weather and forecast for a city from API',
        () async {
      SharedPreferences.setMockInitialValues({});
      final sharedPreferences = await SharedPreferences.getInstance();
      final sut = WeatherService(dio, sharedPreferences);
      final result = await sut.fetch(city);
      final date = DateTime.tryParse('2024-03-22 18:00:00') ??
          DateTime.fromMillisecondsSinceEpoch(1711130400);

      expect(result.model, isA<CityModel>());
      expect(result.error, isNull);
      expect(result.model!.name, city);
      expect(result.model!.weather.icon, '04d');
      expect(result.model!.weather.description, 'overcast clouds');
      expect(result.model!.forecast.first.weather.icon, '04d');
      expect(
          result.model!.forecast.first.weather.description, 'overcast clouds');
      expect(result.model!.forecast.first.date.toUtc(), date.toUtc());
    });

    test(
        'Should get current weather and forecast for a city from local storage',
        () async {
      SharedPreferences.setMockInitialValues({'London': jsonEncodedCity});
      final sharedPreferences = await SharedPreferences.getInstance();
      final sut = WeatherService(dio, sharedPreferences);
      final result = await sut.fetch(city);
      final date = DateTime.tryParse('2024-03-22 18:00:00') ??
          DateTime.fromMillisecondsSinceEpoch(1711130400);

      expect(result.model, isA<CityModel>());
      expect(result.error, isNull);
      expect(result.model!.name, city);
      expect(result.model!.weather.icon, '04d');
      expect(result.model!.weather.description, 'overcast clouds');
      expect(result.model!.forecast.first.weather.icon, '04d');
      expect(
          result.model!.forecast.first.weather.description, 'overcast clouds');
      expect(result.model!.forecast.first.date.toUtc(), date.toUtc());
    });

    test('Should get error if API returns status code different than 200',
        () async {
      when(
        () => dio.get(WeatherService.currentWeatherUrl(city)),
      ).thenThrow(
        Exception(),
      );

      SharedPreferences.setMockInitialValues({});
      final sharedPreferences = await SharedPreferences.getInstance();
      final sut = WeatherService(dio, sharedPreferences);
      final result = await sut.fetch(city);
      

      expect(result.model, isNull);
      expect(result.error, isNotNull);
      
    });
  });
}
