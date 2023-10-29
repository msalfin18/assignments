import 'package:assignments/musicplayr2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home:Firstlogin()));
}

class Firstlogin extends StatelessWidget {
  const Firstlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height:150),
            Text("Hello There!",style: GoogleFonts.aboreto(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
            Text('automic identity verification which enable you to verify identity',style: TextStyle(fontWeight: FontWeight.normal),),
            Image.asset("assets/images/IMG_20231009_203313.jpg",height: 200,width: 400,),
        Padding(
          padding: const EdgeInsets.only(left: 200,right: 200),
          child: MaterialButton(
              onPressed: (){
                Navigator.push(context ,MaterialPageRoute(builder: (context)=>MusicPlayer()),);
              },
              color: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child:ListTile(
                title: Center(child: Text("Login",style: TextStyle(color: Colors.white),))
              )
          ),
        ),
            SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(left: 200,right: 200),
              child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context ,MaterialPageRoute(builder: (context)=>MusicPlayer()),);
                  },
                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child:ListTile(
                      title: Center(child: Text("signup",style: TextStyle(color: Colors.white),))
                  )
              ),
            ),
      ]
        ),)
    );
  }
}
