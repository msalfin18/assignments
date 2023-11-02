import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Contact_books()));
}

class Contact_books extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact book'),
      ),
      body:
      ListView(
        children: [
          ListTile(
              leading: CircleAvatar(
                backgroundColor:
                Colors.red,
                child: const Icon(Icons.person),
              ),
              title: Text("ammu"),
              subtitle: Text("9747662524"),
              trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.blue,
              child: const Icon(Icons.person),
            ),
            title: Text("app"),
            subtitle: Text("445864677"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.orange,
              child: const Icon(Icons.person),
            ),
            title: Text("manu"),
            subtitle: Text("856544544"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.yellow,
              child: const Icon(Icons.person),
            ),
            title: Text("llllllll"),
            subtitle: Text("9999999999"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.indigo,
              child: const Icon(Icons.person),
            ),
            title: Text("ooooo"),
            subtitle: Text("8888"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.red,
              child: const Icon(Icons.person),
            ),
            title: Text("ammu"),
            subtitle: Text("9747662524"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.blue,
              child: const Icon(Icons.person),
            ),
            title: Text("app"),
            subtitle: Text("445864677"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.orange,
              child: const Icon(Icons.person),
            ),
            title: Text("manu"),
            subtitle: Text("856544544"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.yellow,
              child: const Icon(Icons.person),
            ),
            title: Text("llllllll"),
            subtitle: Text("9999999999"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.indigo,
              child: const Icon(Icons.person),
            ),
            title: Text("ooooo"),
            subtitle: Text("8888"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.red,
              child: const Icon(Icons.person),
            ),
            title: Text("ammu"),
            subtitle: Text("9747662524"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.blue,
              child: const Icon(Icons.person),
            ),
            title: Text("app"),
            subtitle: Text("445864677"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.lightGreen,
              child: const Icon(Icons.person),
            ),
            title: Text("manu"),
            subtitle: Text("856544544"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.lime,
              child: const Icon(Icons.person),
            ),
            title: Text("llllllll"),
            subtitle: Text("9999999999"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor:
              Colors.indigo,
              child: const Icon(Icons.person),
            ),
            title: Text("ooooo"),
            subtitle: Text("8888"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),

        ],
      )

    );
  }
}
