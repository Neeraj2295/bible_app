import 'package:flutter/material.dart';
import 'package:media_app/videos/description.dart';
import 'package:media_app/videos/player.dart';
class travel extends StatefulWidget {
  @override
  _travelState createState() => _travelState();
}

class _travelState extends State<travel> {
  List b= [
    "assets/25 lamentations.png",
    "assets/26 ezekiel.png",
    "assets/28 hosea.png",
    "assets/29 joel.png",
    "assets/30 obadiah.png",
    "assets/32 micah.png",
  ];
  var c;
  @override
  void initState() {
    super.initState();
   c="assets/28 hosea.png";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [FlatButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => desc()));
              }, child:
              Container(width: 200,height: 300,color: Colors.black,
                child: ClipPath(
                  child: Container(color: Colors.blue,child: Column(
                    children: [
                      Container(alignment: Alignment.center,
                        width: 200,height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("$c"),fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 100,color: Colors.grey,
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("TRAVEL SAMARITAN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(height: 10,),
                            Text("sajb hsxab asbjka sbak")
                          ],
                        ),
                      )
                    ],
                  ),
                    height: 100,width: 200,
                  ),
                  clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
              )
              )
              ],
            ),
            SizedBox(height: 80,),
            Row(
              children: [
                Container(padding: EdgeInsets.only(left: 30),
                    child: Text("SUGGESTED:",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ],
            ),
            SizedBox(height: 20,),
            Container(alignment: Alignment.bottomCenter,height: 160,
              child: Container(alignment: Alignment.bottomCenter,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int indx) {
                      return  Container(
                        width: 140,padding: EdgeInsets.all(10),
                        child: Card(
                          child:GestureDetector(onTap: (){
                            setState(() {
                              c=b[indx];
                            });
                          },
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                              child:
                              Image(image:AssetImage(b[indx]),fit: BoxFit.fitHeight,),
                            ),
                          ),),
                      );
                    }
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}