import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/forecast_model.dart';

class ForecastListItem extends StatelessWidget {
  const ForecastListItem({super.key, required this.forecast});

  final ForecastModel forecast;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.yMMMMEEEEd();

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      title: Text(forecast.weather.description),
      subtitle: Text(dateFormat.format(forecast.date)),
      leading: Image.asset('assets/icons/${forecast.weather.icon}.png'),
    );
  }
}
