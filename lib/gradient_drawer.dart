import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Drawer_1()));
}

class Drawer_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
        title: Center(child: Text("Appbar")),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red,Colors.orange,Colors.yellowAccent],),
          ),
          child: ListView(
            children: [
              SizedBox(height:25,width:10),
              Row(
                children: [
                  SizedBox(height:10,width:5),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        "assets/images/fb.jpg" ),
                    radius: 40,
                  ),
                  SizedBox(width: 15,),
                  Column(
                    children: [
                      Text("Facebook",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width:5),
                      Text("from meta")
                    ],
                  )
                ],
              ),

              SizedBox(height:30),
              ListTile(
                leading: Icon(Icons.call_to_action_outlined,color: Colors.white,),
                title: Text("Dashboard",style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
              SizedBox(height:5),
              ListTile(
                leading: Icon(Icons.square_foot_sharp,color: Colors.white,),
                title: Text("Leads",style: TextStyle(color: Colors.white,fontSize: 17),),
              ),

              SizedBox(height:5),
              ListTile(
                leading: Icon(Icons.people_rounded,color: Colors.white,),
                title: Text("clients",style: TextStyle(color: Colors.white,fontSize: 17),),
              ),

              SizedBox(height:5),
              ListTile(
                leading: Icon(Icons.rocket_launch_outlined,color: Colors.white,),
                title: Text("projects",style: TextStyle(color: Colors.white,fontSize: 17),),
              ),

              SizedBox(height:5),
              ListTile(
                leading: Icon(Icons.person,color: Colors.white,),
                title: Text("patients",style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
              SizedBox(height:300),
              Container(height: 50,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),color: Colors.red
                ),
                child: Center(
                  child: Text(
                    'Logout',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,color: Colors.white
                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body:  Stack(
          children:[
            ListView(
              children: [
                Container(
                    child: Image.asset("assets/images/fb.jpg")),
SizedBox(height:50),
            Positioned(
              bottom: 100,
              left: 20,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                "Houseboats in Alappuzha, Kerala, locally known as kettuvallam are a cherished cultural \n treasure and a major tourist attraction.\n Originating from traditional cargo boats, these intricately designed wooden \n vessels now offer luxurious stays with modern amenities while cruising \n the picturesque backwaters.Navigating through the serene network of canals and rivers,\n they provide a tranquil experience\n amidst coconut groves and local villages. \n With well-furnished interiors, including bedrooms, bathrooms, and kitchens serving \nauthentic Kerala cuisine, these houseboats also feature sundecks for breathtaking views.",

                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
    ]
    )
    ]
    )
    );
  }
}
