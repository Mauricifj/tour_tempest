import 'package:flutter/material.dart';

import 'controllers/city_controller.dart';
import 'dependency_injection.dart' as di;
import 'dependency_injection.dart';
import 'pages/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.start();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = serviceLocator<CityController>();

    return MaterialApp(
      title: 'Tour Tempest',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: SplashPage(controller: controller),
    );
  }
}
