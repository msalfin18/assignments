import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Grid_stack()));
}

class Grid_stack extends StatelessWidget {
  var places=[
    'usa',
    'paris',
    'london',
    'jgghbhb'
  ];
var images=[
  "assets/images/Longest-Bridge-in-USA.jpg",
  "assets/images/OIP.jpeg",
  "assets/images/OIP (1).jpeg",
 "assets/images/OIP (2).jpeg"
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
        SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: images.length,
        itemBuilder: (contex, index) {
          return Container(
            margin: EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    child: Text(
                      places[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
        ],
      )  );
  }
}
