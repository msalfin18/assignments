import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home:Profile()));
}
class Profile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("profile"),
        actions: [
          Icon(Icons.verified_user_sharp)
        ],
      ),
      body:
        Column(
          children:[
          Stack(
            children: [
              Container(
                height: 500,
                width: 800,
                color: Colors.white,
              ),
              Container(

                child:
                    Center(
                      child:Image.asset("assets/images/alappy.jpg",),),
    ),
         Positioned(
              bottom: 260,
              left: 200,
              right: 200,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white,width: 2)
                ),
    child: CircleAvatar(
        radius:50,
        backgroundImage:AssetImage
          ("assets/images/Google-Pay-Logo-768x483.jpg")
    ),
    ),
              ),

              Positioned(
                bottom: 300,
                right: 180,
                child: Container(
                  child: CircleAvatar(
                      radius:20,
                      child: Icon(Icons.add),backgroundColor: Colors.blue   ),
                ),
              ),
              Positioned(
                bottom: 300,
                left: 180,
                child: Container(
                  child: CircleAvatar(
                      radius:20,
                      child: Icon(Icons.message),backgroundColor: Colors.red   ),
                ),
              ),
              Container(
                child:Positioned(
                    bottom:230,
                    left: 262,
                    child:Text(" david bekham",style: GoogleFonts.abel(fontWeight: FontWeight.bold),)),
              ),
              Container(
                child:Positioned(
                    bottom:200,
                    left: 275,
                    child:Text(" footballer",style: GoogleFonts.abel(color: Colors.blue),)),
              )


            ],
          )
          ]
          )

    );
  }
}
