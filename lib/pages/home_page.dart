import 'package:flutter/material.dart';
import 'package:tour_tempest/models/city_model.dart';
import 'package:tour_tempest/widgets/city_list.dart';

import '../models/weather_model.dart';
import '../widgets/search_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CityModel> cities = [
    const CityModel(
      'Silverstone (UK)',
      current: WeatherModel('broken clouds', '04n'),
      forecast: [],
    ),
    const CityModel(
      'São Paulo (Brazil)',
      current: WeatherModel('light rain', '10d'),
      forecast: [],
    ),
    const CityModel(
      'Melbourne (Australia)',
      current: WeatherModel('few clouds', '02n'),
      forecast: [],
    ),
    const CityModel(
      'Monte Carlo (Monaco)',
      current: WeatherModel('thunderstorm', '11d'),
      forecast: [],
    ),
  ];

  List<CityModel> filteredCities = [];

  @override
  void initState() {
    super.initState();
    filteredCities.addAll(cities);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Weather'),
      ),
      body: Column(
        children: [
          SearchBarWidget(
            hint: 'Search by city name',
            onChanged: filterCities,
          ),
          CityList(
            cities: filteredCities,
          ),
        ],
      ),
    );
  }

  void filterCities(String query) {
    setState(
      () {
        filteredCities = cities
            .where(
              (city) => city.name.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
      },
    );
  }
}
