import 'package:assignments/musicplayr2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home:Second_login()));
}

class Second_login extends StatelessWidget {


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
                    hintText: 'Password',),
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
                      title: Center(child: Text("Login",style: TextStyle(color: Colors.white),))
                  )
              ),
            ),
          ],
        ),
      )
    );
  }
}
