import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_apps/style.dart';

class CardShoppingList extends StatelessWidget {
  const CardShoppingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 7),
      child: Card(
        color: Colors.green[50],
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(CupertinoIcons.creditcard_fill),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text('saldo', style: normal),
                      Text('\$243'),
                    ],
                  ),
                  SizedBox(width: 25),
                  Icon(CupertinoIcons.tickets),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        '4.575',
                        style: normal,
                      ),
                      Text('A-Poin')
                    ],
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.barcode_viewfinder,
                    size: 30,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
