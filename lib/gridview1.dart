import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Gridview1()));
}

class Gridview1 extends StatelessWidget {
  var images = [
    "assets/images/a-beautiful-morning-sunrise-in-moraine-lake-banff-national-park-canada-2048x1349.jpeg",
    "assets/images/Longest-Bridge-in-USA.jpg",
    "assets/images/OIP.jpeg",
    "assets/images/OIP (1).jpeg",
    "assets/images/OIP (2).jpeg",
  ];

  var title = ["USA", "ENGLAND", "FRANCE", "RUSSIA", "CANADA"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Gridview()'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        children: List.generate(
          5,
              (index) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Image.asset(images[index]),
                //Text(title[index]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}