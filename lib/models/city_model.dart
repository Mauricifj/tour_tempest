import 'package:tour_tempest/models/weather_model.dart';

class CityModel {
  const CityModel(
    this.name, {
    required this.current,
    required this.forecast,
  });

  final String name;
  final WeatherModel current;
  final List<WeatherModel> forecast;
}
