import 'weather_model.dart';

class ForecastModel {
  const ForecastModel(this.date, this.weather);

  final WeatherModel weather;
  final DateTime date;

  factory ForecastModel.fromMap(Map<String, dynamic> map) {
    final weatherMap = switch (map) {
      {
        'name': String _,
        'weather': String _,
        'forecast': String _,
      } =>
        map['weather'],
      {
        'weather': List _,
      } =>
        List<Map<String, dynamic>>.from(map['weather']).first,
      _ => map['weather'],
    };

    return ForecastModel(
      DateTime.fromMillisecondsSinceEpoch(map['dt']),
      WeatherModel.fromMap(weatherMap),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dt': date.millisecondsSinceEpoch.abs(),
      'weather': weather.toMap(),
    };
  }
}
