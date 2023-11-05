import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Stack_grid()));
}
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
      body:  GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: imagees.length,
        itemBuilder: (contex, index) {
          return Container(
            margin: EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imagees[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    child: Text(
                      placees[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}