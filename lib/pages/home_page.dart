import 'package:flutter/material.dart';

import '../controllers/city_controller.dart';
import '../dependency_injection.dart';
import '../models/city_model.dart';
import '../widgets/city_list.dart';
import '../widgets/search_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.controller});

  final CityController controller;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CityModel> _cities = [];
  List<CityModel> _filteredCities = [];

  @override
  void initState() {
    super.initState();

    final controller = serviceLocator<CityController>();
    final cities = controller.cities;
    _cities.addAll(cities);
    _filteredCities.addAll(cities);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Current Weather'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          SearchBarWidget(
            hint: 'Search by city name',
            onChanged: filterCities,
          ),
          const SizedBox(height: 16),
          CityList(
            cities: _filteredCities,
          ),
        ],
      ),
    );
  }

  void filterCities(String query) {
    setState(
      () {
        _filteredCities = _cities
            .where(
              (city) => city.name.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
      },
    );
  }
}
