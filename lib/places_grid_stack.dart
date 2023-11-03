import 'package:flutter/material.dart';

class Stack_grid extends StatelessWidget {
  var index=0;
  var imagees=[
    "assets/images/Longest-Bridge-in-USA.jpg",
    'assets/images/OIP (1).jpeg',
    'assets/images/OIP (2).jpeg',
    'assets/images/OIP.jpeg'
  ];
  var placees=[
    "london",
    'paris',
    'russia',
    'london'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            Container(
              decoration: BoxDecoration(
                image: AssetImage(
                  imagees[index]
                )
              ),
            )
            )
          ],

            ),
      ),
    );
  }
}
