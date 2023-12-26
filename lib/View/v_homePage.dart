// home_page.dart

import 'package:flutter/material.dart';
import 'package:market_apps/View/v_shoppingPage.dart';
import 'package:market_apps/View/widget/bottom_navigation_bar.dart';
import 'package:market_apps/View/widget/card_home.dart';
import 'package:market_apps/View/widget/carousell_banner.dart';
import 'package:market_apps/View/widget/category_list.dart';
import 'package:market_apps/style.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<String> carouselImages = [
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner3.jpg',
    'assets/images/banner4.jpg',
    'assets/images/banner5.jpg',
    'assets/images/banner6.jpg',
    'assets/images/banner7.jpg',
    'assets/images/banner8.jpg',
    'assets/images/banner9.jpg',
    // Add more local image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 150,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi Putri', style: tittleHome.copyWith(fontSize: 26)),
            Text('Selamat datang!',
                style: subtittleHome.copyWith(fontSize: 19)),
            SizedBox(height: 5),
            Text(
              'Deliveri to:',
              style: subDeliver,
            ),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman baru saat teks diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPage()),
                );
              },
              child: Row(
                children: [
                  Text(
                    'D5 House (Kos Muslimah)',
                    style: normal,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    CupertinoIcons.chevron_compact_down,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ],
        ),
        actions: [
          CupertinoButton(
            onPressed: () {},
            child: Icon(Icons.search, size: 30, color: Colors.green[400]),
          ),
          CupertinoButton(
            onPressed: () {},
            child:
                Icon(Icons.notifications, size: 30, color: Colors.green[400]),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardHome(),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Category', style: tittleHome.copyWith(fontSize: 20)),
            ),
            SizedBox(height: 8),
            Card(
              color: Colors.green[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoryList(),
              ),
            ),
            SizedBox(height: 10),
            CarouselBanner(images: carouselImages),
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
    setState(() {
      _selectedIndex = index;
      // Navigasi ke halaman yang sesuai dengan item yang diklik
      switch (index) {
        case 1:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ShoppingPage()));
          break;
        // Tambahkan case untuk item lainnya jika diperlukan
      }
    });
  }
}

// Contoh halaman baru
class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Center(
        child: Text('This is a new page.'),
      ),
    );
  }
}
