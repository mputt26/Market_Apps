import 'dart:async';
import 'package:flutter/material.dart';
import 'package:market_apps/View/v_homePage.dart';
import 'package:market_apps/ViewModel/vm_product.dart';
import 'package:market_apps/ViewModel/vm_product2.dart';
import 'package:market_apps/ViewModel/vm_product3.dart';
import 'package:market_apps/style.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    final HomeViewModel viewModel = HomeViewModel();
    final HomeViewModel2 viewModel2 = HomeViewModel2();
    final HomeViewModel3 viewModel3 = HomeViewModel3();

    var durasiSplash = const Duration(seconds: 3);
    return Timer(durasiSplash, () {
      //pindah ke halaman home
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return HomePage(
          viewModel: viewModel,
          viewModel2: viewModel2,
          viewModel3: viewModel3,
        );
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Grocify', style: tittleG),
          Text('Store', style: tittleG.copyWith(fontSize: 30)),
          Center(
            child: Image.asset(
              "assets/images/splash.png",
              width: 350,
            ),
          ),
        ],
      ),
    );
  }
}
