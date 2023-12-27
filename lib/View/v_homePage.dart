import 'package:market_apps/View/v_delivery.dart';
import 'package:market_apps/View/widget/carousell_banner2.dart';
import 'package:market_apps/View/widget/product_card.dart';
import 'package:market_apps/ViewModel/vm_product2.dart';
import 'package:market_apps/ViewModel/vm_product3.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:market_apps/View/v_shoppingPage.dart';
import 'package:market_apps/View/widget/bottom_navigation_bar.dart';
import 'package:market_apps/View/widget/card_home.dart';
import 'package:market_apps/View/widget/card_invitation.dart';
import 'package:market_apps/View/widget/carousell_banner.dart';
import 'package:market_apps/View/widget/category_list.dart';
import 'package:market_apps/ViewModel/vm_product.dart';
import 'package:market_apps/style.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  final HomeViewModel viewModel;
  final HomeViewModel2 viewModel2;
  final HomeViewModel3 viewModel3;

  const HomePage(
      {Key? key,
      required this.viewModel,
      required this.viewModel2,
      required this.viewModel3})
      : super(key: key);

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

  List<String> carouselImages2 = [
    'assets/images/banner10.jpg',
    'assets/images/banner11.jpg',
    'assets/images/banner12.jpg',
    'assets/images/banner13.jpg',
    'assets/images/banner14.jpg',
    'assets/images/banner15.jpg',
    'assets/images/banner16.jpg',

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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeliveryPage()),
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
            // -------------- CATEGORY WIDGET CARD -----------------------------
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Category', style: tittleHome.copyWith(fontSize: 20)),
            ),
            SizedBox(height: 8),
            CategoryList(),
            // -------------- CAROUSE BANNER -----------------------------
            SizedBox(height: 25),
            CarouselBanner(images: carouselImages),
            SizedBox(height: 10),
            // -------------- INVITATION CARD -----------------------------
            InvitationCard(),
            SizedBox(height: 10),
            // -------------- BEST OFFERS PRODUCT -----------------------------
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Offers',
                    style: tittleHome.copyWith(fontSize: 17),
                  ),
                  GestureDetector(
                    onTap: () {
                      //isi logika
                    },
                    child: Text(
                      'See All',
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: widget.viewModel.products.map((product) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      height: 240,
                      width: 130,
                      child: ProductCard(
                        imagePath: product.imagePath,
                        title: product.title,
                        price: product.price,
                        onTap: () {
                          // Handle product card tap, for example, show product details
                          print('Product tapped: ${product.title}');
                        },
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            // ----------------------- EXCLUSIVE BANNER -----------------------------
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Exclusive Deals',
                style: tittleHome.copyWith(fontSize: 17),
              ),
            ),
            SizedBox(height: 10),
            CarouselBanner2(images: carouselImages2),
            SizedBox(height: 10),
            // -----------------------------------RECOMENDATION WIDGET --------------------
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recomendation',
                    style: tittleHome.copyWith(fontSize: 17),
                  ),
                  GestureDetector(
                    onTap: () {
                      //isi logika
                    },
                    child: Text(
                      'See All',
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: widget.viewModel2.products.map((product2) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      height: 240,
                      width: 130,
                      child: ProductCard(
                        imagePath: product2.imagePath,
                        title: product2.title,
                        price: product2.price,
                        onTap: () {
                          // Handle product card tap, for example, show product details
                          print('Product tapped: ${product2.title}');
                        },
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            // -----------------------------------PERSONAL CARE WIDGET --------------------
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 17),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Personal Care',
                    style: tittleHome.copyWith(fontSize: 17),
                  ),
                  GestureDetector(
                    onTap: () {
                      //isi logika
                    },
                    child: Text(
                      'See All',
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: widget.viewModel3.products.map((product2) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      height: 240,
                      width: 130,
                      child: ProductCard(
                        imagePath: product2.imagePath,
                        title: product2.title,
                        price: product2.price,
                        onTap: () {
                          // Handle product card tap, for example, show product details
                          print('Product tapped: ${product2.title}');
                        },
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
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
