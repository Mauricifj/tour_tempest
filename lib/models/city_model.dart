import 'forecast_model.dart';
import 'weather_model.dart';

class CityModel {
  const CityModel({
    required this.name,
    required this.weather,
    required this.forecast,
  });

  final String name;
  final WeatherModel weather;
  final List<ForecastModel> forecast;

  factory CityModel.fromMap(Map<String, dynamic> map) {
    final forecastList = List<Map<String, dynamic>>.from(map['forecast']);

    return CityModel(
      name: map['name'],
      weather: WeatherModel.fromMap(map['weather']),
      forecast: forecastList.map(ForecastModel.fromMap).toList(),
    );
  }

  factory CityModel.fromMaps(
    Map<String, dynamic> currentWeatherMap,
    Map<String, dynamic> forecastMap,
  ) {
    final forecastList = List<Map<String, dynamic>>.from(forecastMap['list']);
    final weatherList =
        List<Map<String, dynamic>>.from(currentWeatherMap['weather']);

    return CityModel(
      name: currentWeatherMap['name'],
      weather: WeatherModel.fromMap(weatherList.first),
      forecast: forecastList.map(ForecastModel.fromMap).toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'weather': weather.toMap(),
      'forecast': forecast.map((e) => e.toMap()).toList(),
    };
  }

  CityModel copyWith({
    String? name,
    WeatherModel? weather,
    List<ForecastModel>? forecast,
  }) {
    return CityModel(
      name: name ?? this.name,
      weather: weather ?? this.weather,
      forecast: forecast ?? this.forecast,
    );
  }
}
