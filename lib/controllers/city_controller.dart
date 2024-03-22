import '../models/available_cities.dart';
import '../models/city_model.dart';
import '../services/weather_service.dart';

class CityController {
  CityController(this.weatherService);

  final WeatherService weatherService;
  List<CityModel> cities = [];

  Future<void> preCacheCities() async {
    for (var city in AvailableCities.values) {
      final cityModel = await weatherService.fetch(city.searchName);
      cities.add(cityModel);
    }
  }
}
