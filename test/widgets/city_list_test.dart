import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tour_tempest/models/city_model.dart';
import 'package:tour_tempest/models/weather_model.dart';
import 'package:tour_tempest/widgets/city_list.dart';

void main() {
  testWidgets('Forecast List Item', (tester) async {
    const city = CityModel(
      name: 'London',
      weather: WeatherModel('light rain', '09d'),
      forecast: [],
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CityList(
            cities: [city],
          ),
        ),
      ),
    );

    expect(find.text('London'), findsOneWidget);
    expect(find.text('light rain'), findsOneWidget);
  });
}
