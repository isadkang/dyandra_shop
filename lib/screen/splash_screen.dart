import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dyandra_shop/constant/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgPrimary,
      body: Center(
        child: Image.asset(
          'images/dyandra_logo.png',
          height: 300,
        ),
      ),
    );
  }
}
