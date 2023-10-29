import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("Contact List"),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Icon(Icons.person,)
            ],
          )
        ],
      ),
    );
  }
}
