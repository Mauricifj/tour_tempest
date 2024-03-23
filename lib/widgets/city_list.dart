import 'package:flutter/material.dart';

import '../models/city_model.dart';
import '../pages/forecast_page.dart';
import 'city_list_item.dart';

class CityList extends StatelessWidget {
  const CityList({super.key, required this.cities});

  final List<CityModel> cities;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) {
        final city = cities[index];

        return CityListItem(
          city: city,
          onTap: () => onTapItem(city, context),
        );
      },
      separatorBuilder: (_, __) => const Divider(),
      itemCount: cities.length,
      shrinkWrap: true,
    );
  }

  void onTapItem(CityModel city, BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ForecastPage(
          city: city,
        ),
      ),
    );
  }
}
