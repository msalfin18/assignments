import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview2(),));
}
class Gridview2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
         children: List.generate(15,(index)=>Card(
            child: Image(
              image: NetworkImage("https://flavorverse.com/wp-content/uploads/2017/12/Longest-Bridge-in-USA.jpg"),
              width: 100, height: 100,
            ),
         ),
         )
     ),

   );
  }
}
