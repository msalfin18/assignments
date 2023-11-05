import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Hotel_ui()));
}

class Hotel_ui extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(backgroundColor: Colors.black,),
      body:
        Stack(
          children:[
            ListView(
            children: [
              Stack(
                children:[ Container(
                    child: Image.asset("assets/images/hotels.jpeg")),
                  Positioned(
                    bottom: 50,
                    left: 10,
                    child: Text('HOUSE BOAT \n KOCHIN,KERALA',style: TextStyle(fontSize:30,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 10,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Card(
                        color: Colors.grey,
                        child: Container(
                          height: 25,
                          width: 150,
                          child: Container(child: Center(child: Text("8.4/85 reviews",style: TextStyle(color: Colors.white),))),
                        ),
                      ),
                    )
                  ),
                  Positioned(
                      bottom: 20,
                      right: 10,
                     child: Icon(Icons.favorite_border,color: Colors.white,size: 35,))
                ])
            ],
          ),
            Positioned(
                bottom:370,
                left: 10,
                child: Icon(
                  Icons.star,
                  color: Colors.deepPurple,
                )),
            Positioned(
                bottom: 370,
                left: 35,
                child: Icon(
                  Icons.star,
                  color: Colors.deepPurple,
                )),
            Positioned(
                bottom: 370,
                left: 60,
                child: Icon(
                  Icons.star,
                  color: Colors.deepPurple,
                )),
            Positioned(
                bottom: 370,
                left: 85,
                child: Icon(
                  Icons.star,
                  color: Colors.deepPurple,
                )),
            Positioned(
                bottom: 370,
                left: 115,
                child: Icon(
                  Icons.star,
                  color: Colors.grey,
                )),
            Positioned(
                bottom: 340,
                left: 10,
                child: Icon(
                  Icons.location_on,
                  color: Colors.grey,
                )),
            Positioned(
                bottom: 340,
                left: 30,
                child: Text(
                  '8km to Lulu mall',
                  style: TextStyle(color: Colors.grey),
                )),
            Positioned(
                bottom: 370,
                right: 30,
                child: Text(
                  '200\$',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
                bottom: 350,
                right: 25,
                child: Text(
                  '/per night',
                  style: TextStyle(color: Colors.grey),
                )),
            Positioned(
              bottom: 270,
              left: 70,
              child: Container(height: 60,
                width: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),color: Colors.deepPurple
                ),
                child: Center(
                  child: Text(
                    'Book now',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,color: Colors.white
                  ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 20,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    "Houseboats in Alappuzha, Kerala, locally known as kettuvallam are a cherished cultural \n treasure and a major tourist attraction.\n Originating from traditional cargo boats, these intricately designed wooden \n vessels now offer luxurious stays with modern amenities while cruising \n the picturesque backwaters.Navigating through the serene network of canals and rivers,\n they provide a tranquil experience\n amidst coconut groves and local villages. \n With well-furnished interiors, including bedrooms, bathrooms, and kitchens serving \nauthentic Kerala cuisine, these houseboats also feature sundecks for breathtaking views.",

                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
    ]
        )
    );
  }
}
