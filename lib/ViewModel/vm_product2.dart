import 'package:flutter/material.dart';
import 'package:market_apps/Model/m_product.dart';

class HomeViewModel2 extends ChangeNotifier {
  int _selectedIndex = 0;
  List<Product2> _products2 = [
    Product2('AQUA Air Mineral 600 ml', 'assets/images/produk7.png', 20.0),
    Product2('Tehbotol SOSRO Minuman Teh Original 350 ml',
        'assets/images/produk8.png', 30.0),
    Product2(
        'ULTRA MILK Susu UHT Coklat 250 ml', 'assets/images/produk9.png', 30.0),
    Product2(
        'Bimoli Minyak Goreng Pouch 2L', 'assets/images/produk10.png', 30.0),
    Product2('ULTRA TEH KOTAK Jasmine 200/300 ml', 'assets/images/produk11.png',
        30.0),
    Product2('happy tos Tortilla Chips Merah 140 g',
        'assets/images/produk12.png', 30.0),
  ];

  int get selectedIndex => _selectedIndex;

  List<Product2> get products => _products2;

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
