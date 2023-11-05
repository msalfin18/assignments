import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Pay()));
}

class Pay extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(backgroundColor: Colors.white,
    leading: Icon(Icons.arrow_back_outlined),
    title:
        Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage("assets/images/alappy.jpg"),
    ),SizedBox(width: 20,),
            Column(
              children: [
                Text("HOUSE BOAT KOCHIN,KERALA",style: TextStyle
                  (color: Colors.black,fontSize: 15),),
              ],
            ),
            SizedBox(width: 10),
            Icon(Icons.verified,color: Colors.blue,)
          ],
        ),
  ),
      body: ListView(
        children: [
          ListTile(leading: Text("to"),
          title: Text("730658****@paym"),
          tileColor: Colors.white10,),
          SizedBox(height:200),
          Center(child: Text("200",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)),
          SizedBox(height: 5,),
          Center(child: Text("rupees only",style: TextStyle(fontSize: 10,fontWeight: FontWeight.normal),)),
          SizedBox(height: 250,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                SizedBox(width:70),
                Text("From"),
                SizedBox(width: 15),
                Text("central bank of india-1745"),
                SizedBox(width: 250,),
                Icon(Icons.arrow_drop_down_sharp)
              ],
            ),
          ),
ElevatedButton(onPressed: (){}, child: Text("PAY NOW"),)

        ],
      ),
    );
  }
}
