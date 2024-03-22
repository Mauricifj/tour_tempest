import 'package:auto_injector/auto_injector.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controllers/city_controller.dart';
import 'services/weather_service.dart';

final serviceLocator = AutoInjector();

Future<void> start() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  serviceLocator.add(() => Dio());
  serviceLocator.addInstance(sharedPreferences);
  serviceLocator.add(
    () => WeatherService(
      serviceLocator<Dio>(),
      serviceLocator<SharedPreferences>(),
    ),
  );
  serviceLocator.addSingleton(CityController.new);

  serviceLocator.commit();
}
