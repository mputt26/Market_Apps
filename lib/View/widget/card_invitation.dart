import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_apps/style.dart';

class InvitationCard extends StatelessWidget {
  const InvitationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Card(
        color: Colors.green[50],
        child: Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/hp.png',
                  height: 100,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ajak teman & dapatkan Reward',
                        style: normal.copyWith(fontSize: 17)),
                    Text(
                      'Banyak reward menarik menanti!',
                      style: normal.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 16),
                    )
                  ],
                ),
                SizedBox(width: 34),
                Icon(CupertinoIcons.chevron_right)
              ],
            )),
      ),
    );
  }
}
