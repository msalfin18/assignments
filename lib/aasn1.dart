import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView5(),
  ));
}

class GridView5 extends StatelessWidget {
  var images = [
        'assets/images/a-beautiful-morning-sunrise-in-moraine-lake-banff-national-park-canada-2048x1349.jpeg'
        'assets/images/Longest-Bridge-in-USA.jpg'
        'assets/images/OIP.jpeg'
        'assets/images/OIP (1).jpeg'
        'assets/images/OIP (2).jpeg'

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.custom(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              /// childrenDelegate:SliverChildListDelegate([]), OR
              childrenDelegate:
              SliverChildBuilderDelegate((context, index) => Stack(
                children: [
                  Container(
                      decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                           children:[
                              Image.asset(images[index],height:100)),
                  const Positioned(
                      bottom: 20,
                      right: 20,
                      child: Text(
                        '40\$',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  const Positioned(
                    top: 20,
                    right: 20,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 20,
                    ),
                  )))
    )])],
              ))),
        ));
  }
}