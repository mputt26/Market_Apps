import 'package:flutter/material.dart';
import 'package:market_apps/View/v_homePage.dart';
import 'package:market_apps/View/v_shoppingPage.dart';
import 'package:market_apps/View/v_splashScreen.dart';
import 'package:market_apps/ViewModel/vm_product.dart';
import 'package:market_apps/ViewModel/vm_product2.dart';
import 'package:market_apps/ViewModel/vm_product3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeViewModel viewModel = HomeViewModel();
    final HomeViewModel2 viewModel2 = HomeViewModel2();
    final HomeViewModel3 viewModel3 = HomeViewModel3();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocify Market',
      initialRoute: '/shop',
      routes: {
        '/': (context) => SplashScreenPage(),
        '/home': (context) => HomePage(
              viewModel: viewModel,
              viewModel2: viewModel2,
              viewModel3: viewModel3,
            ),
        '/shop': (context) => ShoppingPage(),
      },
    );
  }
}
