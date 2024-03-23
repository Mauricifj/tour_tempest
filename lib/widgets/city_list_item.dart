import 'package:flutter/material.dart';

import '../models/city_model.dart';

class CityListItem extends StatelessWidget {
  const CityListItem({super.key, required this.city, required this.onTap});

  final CityModel city;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      title: Text(city.name),
      subtitle: Text(city.weather.description),
      leading: Image.asset('assets/icons/${city.weather.icon}.png'),
    );
  }
}
