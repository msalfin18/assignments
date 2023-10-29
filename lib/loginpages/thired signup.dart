import 'dart:io';

import 'package:assignments/musicplayr2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home:Signups()));
}

class Signups extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          children: [
            SizedBox(height:250),
            Text("Login",style: GoogleFonts.aboreto(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
            Text('welcome back login',style: TextStyle(fontWeight: FontWeight.normal),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.perm_contact_calendar_rounded),
                    hintText: 'Username'
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.remove_red_eye_sharp),
                  hintText: 'Password',
                suffixIcon: Icon(Icons.remove_red_eye_sharp),),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.remove_red_eye_sharp),
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
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
            SizedBox(height:20),
            Center(child: Text('already have an accout login',style: TextStyle(fontWeight: FontWeight.normal),))
          ],
        ),
      ),
    );
  }
}
