import 'package:assignments/tourism%20app/screen/5%20home.dart';
import 'package:flutter/material.dart';
//import 'package:project_july_2/stateful_login.dart';
//import 'package:project_july_2/stateful_login.dart';
void main(){
  runApp(MaterialApp(home: Signupp(),));
}
class Signupp extends StatefulWidget {
  @override
  State<Signupp> createState() => _Signupp();
}
class _Signupp extends State<Signupp> {
  final formkey = GlobalKey<FormState>();
  String? pass;
  bool passwordhidden = true;//this means password is hidden
  bool cpasshidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("tourism"),backgroundColor: Colors.lightBlueAccent),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [ Image.asset('assets/images/168104-travel-icon-free-download-png-hq.png',height: 200,width: 200,),
              SizedBox(height: 50,),
              // Image.asset(
              //   "assets/images/168104-travel-icon-free-download-png-hq.png",
              //   height: 200,
              //   width: 150,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Username'),

                  ///here the value entered at text form field will stored at uname
                  validator: (uname) {
                    if (uname!.isEmpty ||
                        !uname.contains('@') ||
                        !uname.contains('.com')) {
                      return 'username must not be empty/ or invalid';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Phone Number'),
                  validator: (num) {
                    if (num!.isEmpty || num.length != 10) {
                      return 'Phone number should have 10 digits/ field must not be empty';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: passwordhidden,
                  validator: (password) {
                    pass = password;
                    if (password!.isEmpty || password.length < 6) {
                      return 'Password must not be empty/ password length must be > 6';
                    } else {
                      return null;
                    }},
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if(passwordhidden == true){
                                passwordhidden = false;
                              }else{
                                passwordhidden = true;
                              }
                            });
                          },
                          icon: Icon(passwordhidden == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      border: OutlineInputBorder(),
                      hintText: 'Password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (cpassword) {
                    if (cpassword!.isEmpty || cpassword != pass) {
                      return 'Password must be same/ field must not be empty';
                    } else {
                      return null;
                    }
                  },
                  obscureText: cpasshidden,
                  obscuringCharacter: " ",
                  decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(cpasshidden ==true){
                            cpasshidden = false;
                          }else{
                            cpasshidden= true;
                          }
                        });
                      },
                          icon: Icon(cpasshidden== true?
                          Icons.visibility_off_sharp:Icons.visibility))),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                        Navigator.push(context ,MaterialPageRoute(builder: (context)=>Homee()),);
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => Homee()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Inavlid datas')));
                    }
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}