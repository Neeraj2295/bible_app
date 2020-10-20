import 'package:flutter/material.dart';
import 'package:media_app/signin/carddetails.dart';
import 'package:media_app/signin/signin.dart';
import 'file:///C:/Users/asus/Documents/media_app/lib/signin/subscription2.dart';

import '../main2.dart';
import 'help.dart';
class subs3 extends StatefulWidget {
  @override
  _subs3State createState() => _subs3State();
}

class _subs3State extends State<subs3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
      title: Row(
        children: [
          Container(
            child: Text("  OUR",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,),),
          ),
          SizedBox(width: 0,),
          FlatButton(child: Container(padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
            child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 14),),),
            onPressed:(){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => signin()));},
          ),
          FlatButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => help()));
          }, child:  Container(padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
            child: Text("HELP",style: TextStyle(color: Colors.white,fontSize: 14),),))
        ],
      ),
    ),
      backgroundColor: Colors.black,
      body:SingleChildScrollView(child:
      Container(
        padding: EdgeInsets.fromLTRB(20, 100, 10, 0),
        child: Column(
          children: [
            Row(
              children: [
                Container(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Icon(Icons.check_circle_outline,color: Colors.redAccent,size: 50,))
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0,30, 0, 0),
                  child: Text("STEP 3 of 3",style: TextStyle(color: Colors.grey[200],fontSize: 15),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0,10, 0, 20),
                  child: Text("Step up your payment",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ],
            ),
            Container(padding: EdgeInsets.fromLTRB(20, 20, 0,0),
              child: Row(
                children: [
                  Text("Cancel before",style: TextStyle(color: Colors.white,fontSize: 15),),
                  Text("  9/5/21 to not to be charged",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(padding: EdgeInsets.fromLTRB(20, 10, 0,0),
              child: Row(
                children: [
                  Text("As a remainder ",style: TextStyle(color: Colors.white,fontSize: 15),),
                  Text(" we'll email you 3 days before",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height: 60,),
            ButtonTheme(
                minWidth: 400.0,
                height: 40.0,
                child: OutlineButton(
                  child: Text("CONTINUE >", style: TextStyle(fontSize:16,color: Colors.redAccent)),
                  borderSide: BorderSide(
                    color: Colors.redAccent,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                  onPressed: () {Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => card()));
                  },
                )
            ),
          ],
        ),
      ),),
    );
  }
}
