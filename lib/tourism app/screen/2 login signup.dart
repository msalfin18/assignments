import 'package:assignments/tourism%20app/screen/3%20login.dart';
// import 'package:assignments/tourism%20app/screen/4%20signup.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Login_signup()));
  Image.asset("assets/images/168104-travel-icon-free-download-png-hq.png",height: 250,width: 250,);}

class Login_signup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("tourism"),backgroundColor: Colors.lightBlueAccent),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/168104-travel-icon-free-download-png-hq.png',height: 200,width: 200,),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context ,MaterialPageRoute(builder: (context)=>Loginn()),);
                },
                color: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
                    child:ListTile(
                      title: Text("Login"),
                    trailing: Icon(Icons.people),)),
                ),SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: MaterialButton(
                  onPressed: (){
                    // Navigator.push(context ,MaterialPageRoute(builder: (context)=>Signupp()),);

                  },
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child:ListTile(
                    title: Text("Register"),
                    trailing: Icon(Icons.face)),
                  )
            ),
            SizedBox(height:10),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context ,MaterialPageRoute(builder: (context)=>Loginn()),);
                  },
                  color: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child:ListTile(
                      title: Text("login with facebook"),
                      trailing: Icon(Icons.face)),
                )
            ),
            SizedBox(height:10),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context ,MaterialPageRoute(builder: (context)=>Loginn()),);

                  },
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child:ListTile(
                      title: Text("login with google"),
                      trailing:Icon(Icons.g_mobiledata_outlined)
                  ),
                )
            ),
          ],
        )

    );
  }
}
