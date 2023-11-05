import 'package:assignments/tourism%20ui/London.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: StackGrid()));
}

class StackGrid extends StatelessWidget {
  var index = 0;
  var images = [
    "assets/images/Longest-Bridge-in-USA.jpg",
    'assets/images/OIP (1).jpeg',
    'assets/images/OIP (2).jpeg',
    'assets/images/OIP.jpeg'
  ];
  var places = ["london", 'paris', 'russia', 'london'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (places[index] == 'london') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => London()),
                );
              }
            },
            child: Container(
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
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}