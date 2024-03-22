import 'package:flutter/material.dart';

import '../models/city_model.dart';

class CityList extends StatelessWidget {
  const CityList({super.key, required this.cities});

  final List<CityModel> cities;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) {
        final city = cities[index];

        return ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          title: Text(city.name),
          subtitle: Text(city.weather.description),
          leading: Image.asset('assets/icons/${city.weather.icon}.png'),
        );
      },
      separatorBuilder: (_, __) => const Divider(),
      itemCount: cities.length,
      shrinkWrap: true,
    );
  }
}
