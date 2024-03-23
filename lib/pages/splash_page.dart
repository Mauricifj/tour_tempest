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
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    preCacheCities();
  }

  void preCacheCities() {
    setState(() {
      errorMessage = null;
    });

    widget.controller.preCacheCities().then(
      (error) {
        if (error != null) {
          setState(() {
            errorMessage = error;
          });
          return;
        }

        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomePage(
              controller: widget.controller,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: errorMessage != null ? buildErrorMessage() : buildLoading(),
    );
  }

  Widget buildErrorMessage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          errorMessage!,
          textAlign: TextAlign.center,
        ),
        const Text(
          'Verify your internet connection or try again later',
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: preCacheCities,
          child: const Text('Try again'),
        ),
      ],
    );
  }

  Widget buildLoading() {
    return const Center(child: CircularProgressIndicator());
  }
}
