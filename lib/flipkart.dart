import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Flipkart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Center(
          child:Text("Recomended",style: GoogleFonts.aboreto(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        ),
        actions: [Icon(Icons.equalizerse)],
      ),
    );
  }
}
