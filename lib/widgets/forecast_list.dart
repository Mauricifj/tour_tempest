import 'package:flutter/material.dart';

import '../models/city_model.dart';
import 'forecast_list_item.dart';

class ForecastList extends StatelessWidget {
  const ForecastList({super.key, required this.city});

  final CityModel city;

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return SingleChildScrollView(
      controller: scrollController,
      child: ListView.separated(
        controller: scrollController,
        shrinkWrap: true,
        separatorBuilder: (_, __) => const Divider(),
        itemCount: city.forecast.length,
        itemBuilder: (_, index) {
          final forecast = city.forecast[index];
          return ForecastListItem(forecast: forecast);
        },
      ),
    );
  }
}
