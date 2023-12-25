import 'package:flutter/material.dart';
import 'package:market_apps/View/v_homePage.dart';
import 'package:market_apps/View/v_splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Fluterku',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreenPage(),
        '/home': (context) => HomePage(),
        // Tambahkan routes lain jika diperlukan
      },
    );
  }
}
