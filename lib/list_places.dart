import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main()
{
  runApp(MaterialApp(
    home:  ListView_places(),));
}
class ListView_places extends StatelessWidget {
  int index=1;
  var image=[
    "assets/images/taj.jpg",
    "assets/images/parlament.jpg",
    "assets/images/alappy.jpg",

  ];
  var namee=[
    "taj",
    "parlament",
    "alapy"
  ];
  var country=[
    "india",
    "india",

    "india",
    "india",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view seperator"),
      ),
      body:  ListView.separated(
        separatorBuilder: (BuildContext context, int index)=>
        SizedBox(height: 10),
        itemCount: image.length,
        itemBuilder: (BuildContext context,int index) {
          return Card(
                child: ListTile(
                  leading: Image.asset(image[index],),
                  title: Text(namee[index]),
                  subtitle: Text(country[index]),
                ),
                color: Colors.orange,

              );


        },
    ),
    );

  }
}
