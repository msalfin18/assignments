import 'package:assignments/tourism%20app/data/dummy%20data.dart';
import 'package:flutter/material.dart';

class Homee extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("tourism"),backgroundColor: Colors.lightBlueAccent),
      body: GridView.count(
 crossAxisCount: 2,
 crossAxisSpacing: 50,
 mainAxisSpacing: 50,
 children: [

   // Container(
   //   height: 400,
   //   width: 300,
   //   decoration:BoxDecoration(
   //     image: DecorationImage(
   //       image: AssetImage(places[index]['image']),
   //       fit: BoxFit.contain
   //     )
   //   ) ,
   // )
 ],
      ),
    );
  }
}
