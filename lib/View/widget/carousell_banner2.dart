import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselBanner2 extends StatefulWidget {
  final List<String> images;

  CarouselBanner2({required this.images});

  @override
  _CarouselBanner2State createState() => _CarouselBanner2State();
}

class _CarouselBanner2State extends State<CarouselBanner2> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 140,
            autoPlay: true,
            enlargeCenterPage: false,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          carouselController: _carouselController,
          items: widget.images.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  widget.images.length,
                  (index) => buildDot(index),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle the "See All Promo" click
                // You can navigate to another page or perform any action here
                print("See All Promo clicked");
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  "See All Promos",
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 15, // Adjust the color as needed
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildDot(int index) {
    return Container(
      width: 8,
      height: 8,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index ? Colors.green : Colors.grey,
      ),
    );
  }
}
