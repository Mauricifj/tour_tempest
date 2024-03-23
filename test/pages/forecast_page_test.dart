import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:tour_tempest/models/city_model.dart';
import 'package:tour_tempest/models/forecast_model.dart';
import 'package:tour_tempest/models/weather_model.dart';
import 'package:tour_tempest/pages/forecast_page.dart';

void main() {
  testWidgets('Forecast Page', (tester) async {
    final date = DateTime.parse('2024-03-22');
    final dateFormat = DateFormat.yMMMMEEEEd();
    final city = CityModel(
      name: 'London',
      weather: const WeatherModel('light rain', '09d'),
      forecast: [ForecastModel(date, const WeatherModel('light rain', '09d'))],
    );

    await tester.pumpWidget(
      MaterialApp(
        home: ForecastPage(city: city),
      ),
    );

    expect(find.text('London'), findsOneWidget);
    expect(find.text('light rain'), findsOneWidget);
    expect(find.text(dateFormat.format(date)), findsOneWidget);
  });
}
