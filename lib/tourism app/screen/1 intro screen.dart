import 'dart:async';

import 'package:assignments/tourism%20app/screen/2%20login%20signup.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home: IntroScreen(),));
}
class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState(){
    Timer(const Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login_signup()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body:
            Center(
              child: Image(
                image: AssetImage("assets/images/168104-travel-icon-free-download-png-hq.png"),
                width: 300, height: 300,
              ),
            ),
        );
  }
}
