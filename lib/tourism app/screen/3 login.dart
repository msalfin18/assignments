import 'package:assignments/tourism%20app/screen/4%20signup.dart';
import 'package:assignments/tourism%20app/screen/5%20home.dart';
import 'package:flutter/material.dart';
  void main(){
    runApp(MaterialApp(home: Loginn(),));
  }
  class Loginn extends StatefulWidget {
    const Loginn({super.key});

    @override
    State<Loginn> createState() => _LoginnState();
  }

  class _LoginnState extends State<Loginn> {
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("tourism"),backgroundColor: Colors.lightBlueAccent),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/168104-travel-icon-free-download-png-hq.png',height: 200,width: 200,),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username'
                ),
                ///here the value entered at text form field will stored at uname
                validator: (uname){
                  if(uname!.isEmpty || !uname.contains('@') || !uname.contains('.com')){
                    return 'username must not be empty/ or invalid';
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (password){
                  if(password!.isEmpty || password.length < 6){
                    return 'Password must not be empty/ password length must be > 6';
                  }else{
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password'),
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context ,MaterialPageRoute(builder: (context)=>Homee()),);}, child: Text("Login")),
            SizedBox(height:20),

            Text("Not a user?"),
          SizedBox(height:5),
            ElevatedButton(onPressed: () {
              Navigator.push(context ,MaterialPageRoute(builder: (context)=>Signupp()),);}, child: Text("Register")),
            SizedBox(height:5),
            ElevatedButton(onPressed: () {
              Navigator.push(context ,MaterialPageRoute(builder: (context)=>Homee()),);}, child: Text("Home")),



          ],
        ),
      ),
    );
  }
}