import 'package:assignments/musicplayr2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

void main(){
  runApp(MaterialApp(home:Gpay()));
}

class Gpay extends StatefulWidget {

  @override
  State<Gpay> createState() => _GpayState();
}

class _GpayState extends State<Gpay> {
  @override
  void initState() {                // what should do when this page  is launched
    Timer(Duration(seconds: 14), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context)=> MusicPlayer()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 250,),
              Center(

              child: Image.network("https://th.bing.com/th/id/R.2c4cdd84e64441ba9a59d5c50aec50ff?rik=4PT0GTAsDeSFEw&pid=ImgRaw&r=0",height: 200,width: 200,)),
          SizedBox(height: 200,),
          Text("Google",style: GoogleFonts.abel(fontSize: 34,fontWeight: FontWeight.bold,color: Colors.black),),
            ],

      ),backgroundColor: Colors.white,
    );
  }
}
