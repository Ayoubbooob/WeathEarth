import 'package:flutter/material.dart';
import 'package:testapp/splash_screen.dart';

void main() => runApp(const WeatherApp());

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0XFF1E2329),
      ),
      // initialRoute: 'home',
      // routes: {
      //   'home': (context) => const HomeScreen(),
      //   // 'dayWeather': (context) => const DayWeather(),
      // },
      home: const SplashScreen(),
    );
  }
}
