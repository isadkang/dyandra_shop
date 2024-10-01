import 'package:dyandra_shop/screen/home_screen.dart';
// import 'package:dyandra_shop/screen/opening_screen.dart';
import 'package:dyandra_shop/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null);
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
        // '/opening': (context) => const OpeningScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
