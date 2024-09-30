import 'package:dyandra_shop/screen/home_screen.dart';
import 'package:dyandra_shop/screen/opening_screen.dart';
import 'package:dyandra_shop/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dyandra Shop',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/opening': (context) => const OpeningScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
