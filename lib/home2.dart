import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main2.dart';
class grid extends StatelessWidget {

  List<String> images =
  [
    "assets/28 hosea.png",
    "assets/28 hosea.png",
    "assets/30 obadiah.png",
    "assets/32 micah.png",
    "assets/25 lamentations.png",
    "assets/28 hosea.png",
    "assets/28 hosea.png",
    "assets/30 obadiah.png",
    "assets/32 micah.png",
    "assets/25 lamentations.png",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(title:Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Icon(Icons.arrow_back,color: Colors.white,),
              ),
              Text("STORE",style: TextStyle(color: Colors.white),),
              Icon(Icons.shopping_cart,color: Colors.white,)
            ],
          ),
        ),
          backgroundColor: Colors.black,
        ),
        body: Container(
            padding: EdgeInsets.all(16.0),
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6.0,
                  mainAxisSpacing: 6.0),
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(images[index]);
              },
            )),
      ),
    );
  }
}