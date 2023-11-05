import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: London()));
}

class London extends StatelessWidget {
  var imagees = [
    "assets/images/Longest-Bridge-in-USA.jpg",
    'assets/images/OIP (1).jpeg',
    'assets/images/OIP (2).jpeg',
    'assets/images/OIP.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/OIP.jpeg",
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Bridge",
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "A tourist attraction is a place of interest that tourists visit, typically for its inherent or an exhibited natural or cultural value, historical significance, natural or built beauty, offering leisure and amusement.A tourist attraction is a place of interest that tourists visit, typically for its inherent or an exhibited natural or cultural value, historical significance, natural or built beauty, offering leisure and amusement.A tourist attraction is a place of interest that tourists visit, typically for its inherent or an exhibited natural or cultural value, historical significance, natural or built beauty, offering leisure and amusement."
                    ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "places to visit",
                        style: TextStyle(fontSize: 24,
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagees.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Card(
                            child: Image.asset(imagees[index]),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 40),

                ],
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.purple,
            height: 70,
            minWidth: 990,
            child: Text(
              "explore",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
