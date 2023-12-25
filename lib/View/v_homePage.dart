import 'package:flutter/material.dart';
import 'package:market_apps/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green[400],
        toolbarHeight: 80,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(90),
            bottomRight: Radius.circular(90),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hi Putri', style: tittleHome.copyWith(fontSize: 20)),
                Text('Selamat datang!',
                    style: tittleHome.copyWith(fontSize: 15)),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 16),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green[200]),
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}
