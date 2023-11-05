import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Icongrid()));
}
class Icongrid extends StatelessWidget {
  int index=0;
  List<IconData> icons = [
    Icons.home,
    Icons.home,
    Icons.camera,
    Icons.star,
    Icons.home,
    Icons.home,
    Icons.camera,
    Icons.star,];

  var namess=[
    "home",
    "homee",
    "cam",
    "star",
    "home",
    "homee",
    "cam",
    "star"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      GridView.builder(
          itemCount:namess.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          childAspectRatio: 3),
          itemBuilder: (context, index) {
            return Container(
              constraints: BoxConstraints(
                minWidth: 30,minHeight: 10,
                maxHeight: 30,maxWidth: 50
              ),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.primaries[index % Colors.primaries.length],
                  borderRadius: BorderRadius.circular(10),),
                padding: EdgeInsets.all(10),
                child:
                Row(
                  children: [
                    Icon(
                      icons[index],
                      size: 40.0,
                      color: Colors.black38,
                    ),
                    SizedBox(width: 10),
                    Text(namess[index],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                )
            );
          }
          )
    );
  }
}


