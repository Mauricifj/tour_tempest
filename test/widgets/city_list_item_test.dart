import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tour_tempest/models/city_model.dart';
import 'package:tour_tempest/models/weather_model.dart';
import 'package:tour_tempest/widgets/city_list_item.dart';

void main() {
  testWidgets('City List Item', (tester) async {
    const city = CityModel(
      name: 'London',
      weather: WeatherModel('light rain', '09d'),
      forecast: [],
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ListView(
            shrinkWrap: true,
            children: [
              CityListItem(city: city, onTap: () {}),
            ],
          ),
        ),
      ),
    );

    expect(find.text('London'), findsOneWidget);
    expect(find.text('light rain'), findsOneWidget);
  });
}
