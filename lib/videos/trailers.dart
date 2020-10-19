import 'package:flutter/cupertino.dart';

import '../main.dart';
import 'package:flutter/material.dart';
class trailers extends StatefulWidget {
  @override
  _trailersState createState() => _trailersState();
}

class _trailersState extends State<trailers> {
  @override
  Widget build(BuildContext context) {
    return Center(child:ListView(
      children: [
        FlatButton(
            onPressed: (){
              /////you can link card to the player from this button
            },
            child:  Card(
              child: Container(height: 320,width: 310,
                child:Column(
                  children: [
                    Row(
                      children: [
                        Container(height: 190,width: 310,padding: EdgeInsets.fromLTRB(10, 10, 10, 10),decoration: BoxDecoration(image:DecorationImage(
                          image:AssetImage("assets/bible.png"),fit: BoxFit.cover,) ),
                            child: Center(
                              child:FlatButton(child:  Icon(Icons.play_circle_outline,size: 50,),onPressed: (){}//link to the player
                              ,)
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 10),alignment: Alignment.topLeft,
                          child:Text("Episode -1",style: TextStyle(fontSize: 20),) ,),

                      ],
                    ),
                    Row(
                      children: [ Container(height: 80,width: 200,padding: EdgeInsets.fromLTRB(12,0,0,0),
                        child: Text("gh jgkg jgkg jhlho jhhhk jgkgk jgkg gjkgkgj gkgk gdytd gcf cjvj vjvj vjvj jvhj vjv vjvj vjvj jvj dydk ",style: TextStyle(color: Colors.green),maxLines: 100,
                        ),)],
                    )

                  ],
                ),

              ),
            ),
        ),
        SizedBox(height: 20,),
        FlatButton(
          onPressed: (){
            /////you can link card to the player from this button
          },
          child:  Card(
            child: Container(height: 320,width: 310,
              child:Column(
                children: [
                  Row(
                    children: [
                      Container(height: 190,width: 310,padding: EdgeInsets.fromLTRB(10, 10, 10, 10),decoration: BoxDecoration(image:DecorationImage(
                        image:AssetImage("assets/bible.png"),fit: BoxFit.cover,) ),
                          child: Center(
                              child:FlatButton(child:  Icon(Icons.play_circle_outline,size: 50,),onPressed: (){}//link to the player
                                ,)
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 10),alignment: Alignment.topLeft,
                        child:Text("Episode -1",style: TextStyle(fontSize: 20),) ,),

                    ],
                  ),
                  Row(
                    children: [ Container(height: 80,width: 200,padding: EdgeInsets.fromLTRB(12,0,0,0),
                      child: Text("gh jgkg jgkg jhlho jhhhk jgkgk jgkg gjkgkgj gkgk gdytd gcf cjvj vjvj vjvj jvhj vjv vjvj vjvj jvj dydk ",style: TextStyle(color: Colors.green),maxLines: 100,
                      ),)],
                  )

                ],
              ),

            ),
          ),
        ),
        SizedBox(height: 20,),
        FlatButton(
          onPressed: (){
            /////you can link card to the player from this button
          },
          child:  Card(
            child: Container(height: 320,width: 310,
              child:Column(
                children: [
                  Row(
                    children: [
                      Container(height: 190,width: 310,padding: EdgeInsets.fromLTRB(10, 10, 10, 10),decoration: BoxDecoration(image:DecorationImage(
                        image:AssetImage("assets/bible.png"),fit: BoxFit.cover,) ),
                          child: Center(
                              child:FlatButton(child:  Icon(Icons.play_circle_outline,size: 50,),onPressed: (){}//link to the player
                                ,)
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 10),alignment: Alignment.topLeft,
                        child:Text("Episode -1",style: TextStyle(fontSize: 20),) ,),

                    ],
                  ),
                  Row(
                    children: [ Container(height: 80,width: 200,padding: EdgeInsets.fromLTRB(12,0,0,0),
                      child: Text("gh jgkg jgkg jhlho jhhhk jgkgk jgkg gjkgkgj gkgk gdytd gcf cjvj vjvj vjvj jvhj vjv vjvj vjvj jvj dydk ",style: TextStyle(color: Colors.green),maxLines: 100,
                      ),)],
                  )

                ],
              ),

            ),
          ),
        ),
        SizedBox(height: 20,),
        FlatButton(
          onPressed: (){
            /////you can link card to the player from this button
          },
          child:  Card(
            child: Container(height: 320,width: 310,
              child:Column(
                children: [
                  Row(
                    children: [
                      Container(height: 190,width: 310,padding: EdgeInsets.fromLTRB(10, 10, 10, 10),decoration: BoxDecoration(image:DecorationImage(
                        image:AssetImage("assets/bible.png"),fit: BoxFit.cover,) ),
                          child: Center(
                              child:FlatButton(child:  Icon(Icons.play_circle_outline,size: 50,),onPressed: (){}//link to the player
                                ,)
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 10),alignment: Alignment.topLeft,
                        child:Text("Episode -1",style: TextStyle(fontSize: 20),) ,),

                    ],
                  ),
                  Row(
                    children: [ Container(height: 80,width: 200,padding: EdgeInsets.fromLTRB(12,0,0,0),
                      child: Text("gh jgkg jgkg jhlho jhhhk jgkgk jgkg gjkgkgj gkgk gdytd gcf cjvj vjvj vjvj jvhj vjv vjvj vjvj jvj dydk ",style: TextStyle(color: Colors.green),maxLines: 100,
                      ),)],
                  )

                ],
              ),

            ),
          ),
        ),
        SizedBox(height: 20,),
      ],
    ));
  }
}
