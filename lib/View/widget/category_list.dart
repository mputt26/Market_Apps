import 'package:flutter/material.dart';
import 'category_item.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {'title': 'Baverages', 'imageUrl': 'assets/images/bav.png'},
      {'title': 'Kitchen Needs', 'imageUrl': 'assets/images/kit.png'},
      {'title': 'Health & Care', 'imageUrl': 'assets/images/medic.png'},
      {'title': 'Snack Food', 'imageUrl': 'assets/images/snack.png'},
      {'title': 'Vegetable', 'imageUrl': 'assets/images/vegetable.png'},
      {'title': 'Meat Fresh', 'imageUrl': 'assets/images/meat.png'},
      {'title': 'Personal Care', 'imageUrl': 'assets/images/makeup.png'},
      {'title': 'Body Care', 'imageUrl': 'assets/images/soap.png'},
      {'title': 'Home Supplies', 'imageUrl': 'assets/images/dish-soap.png'},
    ];

    return Container(
      height: 60,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => SizedBox(width: 0),
        itemBuilder: (context, index) {
          final category = categories[index];
          return Row(
            children: [
              CategoryItem(
                title: category['title']!,
                imageUrl: category['imageUrl']!,
              ),
            ],
          );
        },
      ),
    );
  }
}
