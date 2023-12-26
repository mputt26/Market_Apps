import 'package:flutter/material.dart';
import 'package:market_apps/Model/m_product.dart';

class HomeViewModel3 extends ChangeNotifier {
  int _selectedIndex = 0;
  List<Product3> _products3 = [
    Product3('Rejoice Shampoo Rich Soft Smooth 600 ml',
        'assets/images/produk13.png', 20.0),
    Product3('PANTENE Shampoo Hair Fall Control 900 ml',
        'assets/images/produk14.png', 30.0),
    Product3('Maybelline Sensational Liquid Matte Sachet NU02 Strip It Off',
        'assets/images/produk15.png', 30.0),
    Product3('Acnes Creamy Facial Wash Fights Bacteria & Acne Care 50 g',
        'assets/images/produk16.png', 30.0),
    Product3('ZINC MEN Shampoo Anti Dandruff Active Cool 170 ml',
        'assets/images/produk17.png', 30.0),
    Product3('SHINZUI Glow Spa Exfoliating Gel Spa Ichigo 130 g',
        'assets/images/produk18.png', 30.0),
  ];

  int get selectedIndex => _selectedIndex;

  List<Product3> get products => _products3;

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
