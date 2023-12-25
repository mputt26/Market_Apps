import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market Online'),
      ),
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}