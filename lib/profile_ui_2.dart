import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: ProfileUI2()));
}

class ProfileUI2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // SizedBox(height:200),
          Padding(
            padding: const EdgeInsets.only(top: 25,),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4)),
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/hotels.jpeg")),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width:220),
              CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/tw.jpg")),
              SizedBox(width:10),
          CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/in.jpg")),
              SizedBox(width:10),
          CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/fb.jpg")),
              SizedBox(width:10),
              CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/git.jpg")),

            ],
          ),
          Positioned(
            top: 200,
            right: 270,
            child: Text("Bekham",style: GoogleFonts.adventPro(fontWeight: FontWeight.bold,fontSize: 25),)
          ),
          SizedBox(height:5),
          Positioned(
              top: 230,
              right: 230,
              child: Text("@weberror",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),)
          ),
          Positioned(
              top: 230,
              right: 230,
              child: Text("Mobile App developer",style: GoogleFonts.adventPro(fontWeight: FontWeight.normal,fontSize: 20),)
          ),
          Expanded(

            child: SingleChildScrollView(
              child:Column(
                children: [
                  SizedBox(height:20),
                  Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(color: Colors.grey,
                        borderRadius: BorderRadius.circular(45)
                    ),
                    child: ListTile(
                      leading: Icon(Icons.privacy_tip_outlined),
                      title: Text('Privacy'),
                      trailing: Icon(Icons.arrow_forward_ios_sharp),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(45)
                      ),
                      child: ListTile(
                        leading: Icon(Icons.history),
                        title: Text('Purchase history'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(45)
                      ),
                      child: ListTile(
                        leading: Icon(Icons.help),
                        title: Text('Help'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(45)
                      ),
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(45)
                      ),
                      child: ListTile(
                        leading: Icon(Icons.add_reaction_outlined),
                        title: Text('Invite friends'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(45)
                      ),
                      child: ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Log out'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  )
                ],
              ),

            ),
          )
        ],
      ),

    );
  }
}
