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

      body: ListView(
        children: [
          SizedBox(height:100),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              ClipRRect(

                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/IMG_20231009_203404.jpg"),
              ), SizedBox(height: 20,),
              Text("Jai ho",style: GoogleFonts.aboreto(color: Colors.pinkAccent,fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 1,),
              Text("AR Rahman",style: GoogleFonts.aboreto(color: Colors.white,fontSize: 10,fontWeight: FontWeight.normal),),
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
                  SizedBox(width:10),
                  Text("00:03",style: GoogleFonts.aboreto(color: Colors.white),),
              SizedBox(width:530),
              Text("03:21",style: GoogleFonts.aboreto(color: Colors.white),)
             ],
              ),
              SizedBox(height: 20),
             ],
          ),
          Row(
            children: [
              SizedBox(width:10),
              Column(
                children: [
                  Icon(Icons.arrow_downward_sharp,color: Colors.pinkAccent),
                  SizedBox(height:10),
                  Icon(Icons.volume_off,color: Colors.white,)
                ],
              ),
              SizedBox(width:30),
              Icon(Icons.shuffle,color: Colors.white,),
              SizedBox(width:100),
              Icon(Icons.skip_previous,color: Colors.grey,size: 60,),
              SizedBox(width:30),
              Stack(children:[
                Icon(Icons.circle,color: Colors.pinkAccent,size: 100,),
              Positioned(top:17,
                  right: 17,
                  child: Icon(Icons.play_arrow,color: Colors.white,size: 70,))]
    ),  SizedBox(width:30),
              Icon(Icons.skip_next,color: Colors.grey,size: 60,),
              SizedBox(width:80),
              Icon(Icons.repeat_one_outlined,color: Colors.white,),
           SizedBox(width:15),
              Column(
                children: [
                  Icon(Icons.star_border,color: Colors.pinkAccent),
                  SizedBox(height:10),
                  Icon(Icons.music_note_outlined,color: Colors.white,)
                ],
              )
            ],
          ),          SizedBox(height:50),


          Row(
            children: [
              SizedBox(width:280),
              Text("playlist",style: TextStyle(color: Colors.pinkAccent),),
              SizedBox(width:5),
              Text("|",style: TextStyle(color: Colors.white),),
              SizedBox(width:5),
              Text("Lyrics",style: TextStyle(color: Colors.pinkAccent),)
            ],
          ),


        ],
      ),
     backgroundColor: Colors.black
    );
  }
}
