import 'package:flutter/cupertino.dart';

import 'signin/Homescreen.dart';
import 'main.dart';
import 'package:flutter/material.dart';

import 'main2.dart';
class download extends StatefulWidget {
  @override
  _downloadState createState() => _downloadState();
}

class _downloadState extends State<download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black54,
      body: Center(

        //download list view
//      child: ListView(
//        children: [
//
//        ],
//      ),
        child: Column(
          children: [
            Container(padding: EdgeInsets.fromLTRB(0, 150, 0, 30),
                child: Icon(Icons.file_download,size: 100,color: Colors.grey,)),
            Text("Downloaded content will be shown here",style: TextStyle(color: Colors.white54,fontSize: 14),),
            Container(
              padding: EdgeInsets.fromLTRB(0, 170, 0, 10),
              child: RaisedButton(color: Colors.white,
                child: Text("FIND SOMETHING TO DOWNLOAD",style: TextStyle(color: Colors.black,fontSize: 16),),onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },),
            )
          ],
        ),
      )
    );

  }
}
