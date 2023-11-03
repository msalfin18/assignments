import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Icongrid()));
}
class Icongrid extends StatelessWidget {
  List<IconData> icons = [
    Icons.home,
    Icons.home,
    Icons.camera,
    Icons.star,];

  var namess=[
    "home",
    "homee",
    "cam",
    "star"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.custom(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,  crossAxisSpacing: 10),
    /// childrenDelegate:SliverChildListDelegate([]), OR
    childrenDelegate:
    SliverChildBuilderDelegate((context, index) => Stack(
    children: [
      //itemCount: icons.length,
        // itemBuilder: (context, index) {
           Container(
             decoration: BoxDecoration(
               color:Colors.primaries[index % Colors.primaries.length],
             borderRadius: BorderRadius.circular(10),),
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
           )
     ] )
    )
      ),
    );
  }
}
