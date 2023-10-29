import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: MusicPlay()));
}

class MusicPlay extends StatelessWidget {
  int index = 0;
  var sub = [
    'wiz',
    'dian',
    'wiz',
    'Emi',
    'ARR'
    'ARR'
  ];
  var title = [
    "POP",
    "Play",
    'Anniversary',
    'Singer',
    'Jai ho',
    'Ella pugazhum'
  ];
  var images = [
    "assets/images/IMG_20231009_203258.jpg",
    "assets/images/IMG_20231009_203313.jpg",
    "assets/images/IMG_20231009_203327.jpg",
    "assets/images/IMG_20231009_203340.jpg",
    "assets/images/IMG_20231009_203351.jpg",
    "assets/images/IMG_20231009_203404.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("musify",style: GoogleFonts.alatsi(color: Colors.pinkAccent,fontSize: 25,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.black,
      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Align(alignment:Alignment.topLeft,child: Text("Suggested playlist",style: TextStyle(color: Colors.pinkAccent,fontSize: 30,fontWeight: FontWeight.bold),)),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(alignment:Alignment.topLeft,child: Text("recommended",style: TextStyle(color: Colors.pinkAccent,fontSize: 20,fontWeight: FontWeight.bold),)),
      ),

               Expanded(
                child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(
                        images[index],
                        width: 50,
                        height: 50,
                      ),
                      title: Text(
                        title[index],
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.pinkAccent),
                      ),
                      subtitle: Text(sub[index], style: TextStyle(fontSize: 14,color: Colors.pinkAccent)),
                      trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star_border, color: Colors.pinkAccent),
                            SizedBox(width: 12),
                            Icon(Icons.arrow_downward_sharp, color: Colors.pinkAccent),
                          ]),
                    );
                  },
                ),
              ),
          ]
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(

      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black12,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.white,

      currentIndex: index,

      items: [BottomNavigationBarItem(icon: Text(
        'home',
        style: GoogleFonts.aBeeZee(
            color: Colors.pinkAccent,
            fontSize: 14),), label: ""),
        BottomNavigationBarItem(icon:Icon(Icons.search),label: ""),
        BottomNavigationBarItem(icon:Icon(Icons.book_outlined),label: ""),
        BottomNavigationBarItem(icon:Icon(Icons.more_vert),label: ""),
      ],
    ),backgroundColor: Colors.black,
    );
  }
}
