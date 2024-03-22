import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tour_tempest/services/weather_service.dart';

import '../mocks/dio_mock.dart';
import '../mocks/json_encoded_strings.dart';
import '../mocks/open_weather_api_responses.dart';

void main() {
  group('Weather Service => ', () {
    final dio = DioMock();

    const city = 'London';
    const currentWeatherUrl =
        '${WeatherService.baseUrl}/weather?q=$city&appid=${WeatherService.apiKey}';
    const forecastUrl =
        '${WeatherService.baseUrl}/forecast?q=$city&appid=${WeatherService.apiKey}';

    setUp(() {
      when(() => dio.get(currentWeatherUrl)).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 200,
          data: json.decode(currentWeatherResponse),
        ),
      );
      when(() => dio.get(forecastUrl)).thenAnswer(
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
      final date = DateTime.fromMillisecondsSinceEpoch(1711130400);

      expect(result.name, city);
      expect(result.weather.icon, '04d');
      expect(result.weather.description, 'overcast clouds');
      expect(result.forecast.first.weather.icon, '04d');
      expect(result.forecast.first.weather.description, 'overcast clouds');
      expect(result.forecast.first.date.day, date.day);
      expect(result.forecast.first.date.month, date.month);
      expect(result.forecast.first.date.year, date.year);
      expect(result.forecast.first.date, date);
    });

    test(
        'Should get current weather and forecast for a city from local storage',
        () async {
      SharedPreferences.setMockInitialValues({'London': jsonEncodedCity});
      final sharedPreferences = await SharedPreferences.getInstance();
      final sut = WeatherService(dio, sharedPreferences);
      final result = await sut.fetch(city);
      final date = DateTime.fromMillisecondsSinceEpoch(1711130400);

      expect(result.name, city);
      expect(result.weather.icon, '04d');
      expect(result.weather.description, 'overcast clouds');
      expect(result.forecast.first.weather.icon, '04d');
      expect(result.forecast.first.weather.description, 'overcast clouds');
      expect(result.forecast.first.date.day, date.day);
      expect(result.forecast.first.date.month, date.month);
      expect(result.forecast.first.date.year, date.year);
      expect(result.forecast.first.date, date);
    });
  });
}
