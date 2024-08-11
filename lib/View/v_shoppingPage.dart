import 'package:flutter/material.dart';
import 'package:market_apps/View/v_homePage.dart';
import 'package:market_apps/View/widget/bottom_navigation_bar.dart';
import 'package:market_apps/View/widget/card_shopping.dart';
import 'package:market_apps/ViewModel/vm_product.dart';
import 'package:market_apps/ViewModel/vm_product2.dart';
import 'package:market_apps/ViewModel/vm_product3.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Center(
          child: Text('Shopping List'),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //------------- SUBTITTLE --------------
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('6 Products Available'),
                  GestureDetector(
                    onTap: () {
                      //isi logika
                    },
                    child: Text(
                      'Add All',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 15, // Adjust the color as needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // --------------- card list shopping -----------------
            CardShoppingList(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    final HomeViewModel viewModel = HomeViewModel();
    final HomeViewModel2 viewModel2 = HomeViewModel2();
    final HomeViewModel3 viewModel3 = HomeViewModel3();
    setState(() {
      _selectedIndex = index;
      // Navigasi ke halaman yang sesuai dengan item yang diklik
      switch (index) {
        case 0:
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage(
                        viewModel: viewModel,
                        viewModel2: viewModel2,
                        viewModel3: viewModel3,
                      )));
          break;
        case 1:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ShoppingPage()));
          break;
        // Tambahkan case untuk item lainnya jika diperlukan
      }
    });
  }
}
