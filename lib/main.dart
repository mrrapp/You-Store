import 'package:flutter/material.dart';

// import 'screens/onboarding/onboarding_one.dart';
// import 'screens/onboarding/onboarding_three.dart';
// import 'screens/onboarding/onboarding_two.dart';
import 'screens/splash/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Intro(),
    );
  }
}
