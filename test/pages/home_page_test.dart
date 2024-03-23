import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tour_tempest/models/city_model.dart';
import 'package:tour_tempest/models/weather_model.dart';
import 'package:tour_tempest/pages/home_page.dart';

import '../mocks/city_controller_mock.dart';

void main() {
  testWidgets('Home Page', (tester) async {
    const city = CityModel(
      name: 'London',
      weather: WeatherModel('light rain', '09d'),
      forecast: [],
    );

    final controller = CityControllerMock();

    when(() => controller.cities).thenReturn([city]);

    await tester.pumpWidget(
      MaterialApp(
        home: HomePage(controller: controller),
      ),
    );

    expect(find.text('London'), findsOneWidget);
    expect(find.text('light rain'), findsOneWidget);
  });
}
