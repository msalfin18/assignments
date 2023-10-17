import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home:Player()));
}
class Player extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( leading:
        Icon(Icons.keyboard_arrow_down_outlined),
        title: Center(child: Text("Now playing",style: GoogleFonts.alatsi(color: Colors.pinkAccent,fontSize: 30,fontWeight: FontWeight.bold))),
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            ClipRRect(

              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/images/IMG_20231009_203404.jpg"),
            ), SizedBox(height: 20,),
            Text("Jai ho",style: GoogleFonts.aboreto(color: Colors.pinkAccent,fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 1,),
            Text("AR Rahman",style: GoogleFonts.aboreto(color: Colors.pinkAccent,fontSize: 10,fontWeight: FontWeight.normal),),
            SizedBox(height: 25,),
            Slider(
              min: 0,
              max: 10000,
              value: 40,
              onChanged: (value){},
              activeColor: Colors.pinkAccent,
              inactiveColor: Colors.grey,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("00:03",style: GoogleFonts.aboreto(color: Colors.white),),
                ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 480),
              child: Text("03:21",style: GoogleFonts.aboreto(color: Colors.white),),
            )
           ], ),


            SizedBox(height: 5),
          ],
        ),

      ),
      /*Column(
        children: [
          Icon(Icons.arrow_downward_sharp,color: Colors.pinkAccent),
          Icon(Icons.volume_off,color: Colors.white),
       a ],
      ),*/
     backgroundColor: Colors.black
    );
  }
}
