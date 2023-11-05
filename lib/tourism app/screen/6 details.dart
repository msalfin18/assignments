import 'package:assignments/tourism%20app/screen/7%20explore%20now.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Details()));
}
class Details extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ListView(
  children:[
  Row(
    children: [
      SizedBox(width:10),
      Column(
        children: [
          SizedBox(height:20,width: 20,),
          Text("Most Furious Places & Peaceful \n natural place",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
          SizedBox(width:2),
          Row(
            children: [
              Icon(Icons.star,color: Colors.yellow,),
              Icon(Icons.star,color: Colors.yellow,),
              Icon(Icons.star,color: Colors.yellow,),
              Icon(Icons.star,color: Colors.yellow,),
              Icon(Icons.star,color: Colors.grey,),
              SizedBox(width: 50,),
              Icon(Icons.star,color: Colors.grey,size: 15,),
              Text("4 rating",style: TextStyle(color: Colors.grey,fontSize: 15),)

            ],
          )
        ],
      ),
     SizedBox(width:140),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
           child: Image.asset("assets/images/fb.jpg",scale: 5,)),
     ),
    ],

  ),
    SizedBox(height:50),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text("About Place",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    ),

    SizedBox(height: 8,),
    Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('''A tourist attraction is a place of interest
that tourists visit, typically for its inherent or an 
exhibited natural or cultural value, historical significance, natural or 
built beauty, offering leisure and amusement.''',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
          const SizedBox(height: 20,),
          const Text('Special Facilities',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
          const SizedBox(height: 15,),
          const Row(
            children: [
              Icon(Icons.car_repair_sharp,color:Colors.lightBlue,),
              SizedBox(width: 8,),
              Text('Parking',style: TextStyle(color: Colors.lightBlue,fontSize: 15),),
              SizedBox(width: 80,),
              Icon(Icons.headset_mic_outlined,color: Colors.lightBlue,),
              SizedBox(width: 8,),
              Text('24X7 Support',style: TextStyle(color: Colors.lightBlue,fontSize: 15),),
              SizedBox(width: 80,),
              Icon(Icons.wifi,color: Colors.lightBlue,),
              SizedBox(width: 8,),
              Text('Free WiFi',style: TextStyle(color: Colors.lightBlue,fontSize: 15),),
            ],
          ),
          const SizedBox(height: 8,),
          Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Image(image:NetworkImage('assets/images/alappy.jpg'),),
              )),
          const SizedBox(height: 25,),
          const Text('Special Facilities',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
          const SizedBox(height: 25,),
          Row(
            children: [
              Container(
                height: 40,
                width: 80,
                child: const Card(
                  color: Colors.blueGrey,
                  child: Center(child: Text('wifi',style: TextStyle(color:Colors.white,fontSize: 12),textAlign: TextAlign.center,)),
                ),
              ),
              const SizedBox(width: 50,),
              Container(
                height: 40,
                width: 80,
                child: const Card(
                    color: Colors.blueGrey,
                    child: Center(child: Text('wifi',style: TextStyle(color:Colors.white,fontSize: 12),textAlign: TextAlign.center,))),
              ),
              const SizedBox(width: 50,),
              Container(
                height: 40,
                width: 80,
                child: const Card(
                    color: Colors.blueGrey,
                    child: Center(child: Text('wifi',style: TextStyle(color:Colors.white,fontSize: 12),textAlign: TextAlign.center,))),
              ),
              const SizedBox(width: 50,),
              Container(
                height: 40,
                width: 80,
                child: const Card(
                    color: Colors.blueGrey,
                    child: Center(child: Text('wifi',style: TextStyle(color:Colors.white,fontSize: 12),))),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 450,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Explore()));
                  }, child:const Text('Explore Now',style: TextStyle(color: Colors.white),)),
            ),
          )
        ],
      ),
    )
  ])
    );
  }
}