import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarouselDemo(),
    );
  }
}

class CarouselDemo extends StatefulWidget {
  @override
  _CarouselDemoState createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  List<String> imageList = [
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
          title: Text('Carousel Slider Demo'),
        ),
        body: Center(
            child: CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: imageList.map((item) => Container(
                child: Center(
                    child: Image.network(item, fit: BoxFit.cover, width: 1000)
                ),
              )).toList(),
            ),
            ),
        );
    }
}