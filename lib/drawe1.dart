import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Drawer1(),));
}

class Drawer1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        actions: [Icon(Icons.menu,color: Colors.black,)],
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
        Container(
        child: CircleAvatar(
        radius: 80,
          backgroundImage: AssetImage("assets/images/a-beautiful-morning-sunrise-in-moraine-lake-banff-national-park-canada-2048x1349.jpeg"),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.hGaetDAQWapgIJbIOhPhXwHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
      ),
      CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.Cverxr-lN_3QjtMAqJFQYwHaEK&w=333&h=187&c=8&rs=1&qlt=30&o=6&dpr=1.3&pid=3.1&rm=2'),
      ),
      CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage('data:image/jpeg;base64,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')),
      CircleAvatar(
              radius:40,
              backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
            )
    ],
        ),
      ])
      )

    Center(

    )
    );
    }
}