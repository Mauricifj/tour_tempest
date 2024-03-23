import '../models/available_cities.dart';
import '../models/city_model.dart';
import '../services/weather_service.dart';

class CityController {
  CityController(this.weatherService);

  final WeatherService weatherService;
  List<CityModel> cities = [];

  Future<String?> preCacheCities() async {
    for (var city in AvailableCities.values) {
      final cityModelResult = await weatherService.fetch(city.searchName);

      final error = cityModelResult.error ;
      if (error != null) {
        return error;
      }

      final cityModel = cityModelResult.model;
      if (cityModel != null) {
        cities.add(cityModel.copyWith(name: city.displayName));
      }
    }

    return null;
  }
}
