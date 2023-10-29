import 'package:assignments/Farm%20fresh/homee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: Farm()));
}

class Farm extends StatelessWidget {
  var title = ['wiz', 'dian', 'wiz', 'Emi', 'ARR', 'ARR'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            leading: Row(
              children: [
                Text(
                  'Farmfresh',
                  style: GoogleFonts.aBeeZee(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(width: 3),
                  Text("Kochi"),
                ],
              ),
            ],
            backgroundColor: Colors.green,
          ),
          SliverAppBar(
            floating: false,
            pinned: false,
            backgroundColor: Colors.black,
            title: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: double.infinity,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 50.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: title.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 100.0,
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text(
                          title[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

        ],
      ),
      backgroundColor: Colors.green,
    );
  }
}
