import 'package:flutter/material.dart';

import '../controllers/city_controller.dart';
import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key, required this.controller});

  final CityController controller;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then(
      (_) {
        widget.controller.preCacheCities().then(
          (_) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => HomePage(
                  controller: widget.controller,
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
