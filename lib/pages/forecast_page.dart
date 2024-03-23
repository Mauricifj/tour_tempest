import 'package:flutter/material.dart';

import '../models/city_model.dart';
import '../widgets/forecast_list.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({super.key, required this.city});

  final CityModel city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(city.name),
      ),
      body: ForecastList(city: city),
    );
  }
}
