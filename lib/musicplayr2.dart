import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: MusicPlayer()));
}

class MusicPlayer extends StatelessWidget {
  int index=2;
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            title: Center(
              child: Text(
                "Playlist",
                style: GoogleFonts.aBeeZee(
                  color: Colors.pinkAccent,
                  fontSize: 24,
                ),
              ),
            ),
            backgroundColor: Colors.black,
          ),
          SliverAppBar(
            floating: false,
            pinned: false,
            backgroundColor: Colors.black,
            title: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              width: double.infinity,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "search...",
                  hintStyle: TextStyle(color: Colors.pinkAccent),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(50.0),
            sliver: SliverGrid(

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
               crossAxisSpacing: 50,
              mainAxisSpacing: 50,
              ),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
                childCount: images.length,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black12,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,

        currentIndex: index,

        items: [
        BottomNavigationBarItem(icon:Icon(Icons.home,),label: ""),
          BottomNavigationBarItem(icon:Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Text(
            'Playlist',
            style: GoogleFonts.aBeeZee(
              color: Colors.pinkAccent,
              fontSize: 14),), label: ""),
          BottomNavigationBarItem(icon:Icon(Icons.more_horiz),label: ""),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
