import 'dart:async';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    // Simulate loading or async check (e.g., auth token)
    Timer(const Duration(seconds: 3), () {
      // Navigate to the next screen
      Navigator.of(context).pushReplacementNamed('/login'); // or '/home'
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/splash_icon.png', width: 120),
              const SizedBox(height: 20),
              const Text(
                'MyApp',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 30),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
