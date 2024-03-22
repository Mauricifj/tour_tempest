class WeatherModel {
  const WeatherModel(this.description, this.icon);

  final String description;
  final String icon;

  factory WeatherModel.fromMap(Map<String, dynamic> map) {
    return WeatherModel(
      map['description'],
      map['icon'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'icon': icon,
    };
  }
}
