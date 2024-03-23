import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:tour_tempest/models/city_model.dart';
import 'package:tour_tempest/models/forecast_model.dart';
import 'package:tour_tempest/models/weather_model.dart';
import 'package:tour_tempest/widgets/forecast_list.dart';

void main() {
  testWidgets('Forecast List Item', (tester) async {
    final date = DateTime.parse('2024-03-22');
    final dateFormat = DateFormat.yMMMMEEEEd();
    final forecast =
        ForecastModel(date, const WeatherModel('light rain', '09d'));
    final city = CityModel(
      name: 'London',
      weather: const WeatherModel('light rain', '09d'),
      forecast: [forecast],
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ForecastList(city: city),
        ),
      ),
    );

    expect(find.text('light rain'), findsOneWidget);
    expect(find.text(dateFormat.format(date)), findsOneWidget);
  });
}
