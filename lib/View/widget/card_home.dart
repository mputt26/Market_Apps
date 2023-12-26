import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_apps/style.dart';

class CardHome extends StatelessWidget {
  const CardHome({Key? key}) : super(key: key);

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
                  // SizedBox(height: 30, child: Text('data'))
                ],
              ),
              // SizedBox(height: 8),
              // Add other widgets or content as needed
            ],
          ),
        ),
      ),
    );
  }
}
