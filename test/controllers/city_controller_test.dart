import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tour_tempest/controllers/city_controller.dart';
import 'package:tour_tempest/models/available_cities.dart';
import 'package:tour_tempest/models/city_model.dart';

import '../mocks/json_encoded_strings.dart';
import '../mocks/weather_service_mock.dart';

void main() {
  group('City Controller => ', () {
    final weatherServiceMock = WeatherServiceMock();
    final city = CityModel.fromMap(json.decode(jsonEncodedCity));

    test('Should pre cache city models', () async {
      when(
        () => weatherServiceMock.fetch(any()),
      ).thenAnswer(
        (_) async => city,
      );

      final sut = CityController(weatherServiceMock);
      await sut.preCacheCities();

      final cityNames = sut.cities.map((e) => e.name).toList();
      final availableCityNames =
          AvailableCities.values.map((e) => e.displayName).toList();

      verify(
        () => weatherServiceMock.fetch(any()),
      ).called(
        availableCityNames.length,
      );
      expect(cityNames.length, availableCityNames.length);
      expect(cityNames, availableCityNames);
    });
  });
}
