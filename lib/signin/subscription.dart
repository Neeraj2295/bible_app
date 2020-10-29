import 'package:flutter/material.dart';
import 'package:media_app/signin/carddetails.dart';
import 'package:media_app/signin/signin.dart';
import 'package:media_app/signin/subs3.dart';
import 'package:media_app/signin/subscription2.dart';

import 'help.dart';
class subs extends StatefulWidget {
  @override
  _subsState createState() => _subsState();
}

class _subsState extends State<subs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text("  OUR",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,),),
          ),
          SizedBox(width: 0,),
          FlatButton(child: Container(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 14),),),
            onPressed:(){Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => signin()));},
          ),
          FlatButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => help()));
          }, child:  Container(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text("HELP",style: TextStyle(color: Colors.white,fontSize: 14),),))
        ],
      ),
    ),
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 70, 10, 0),
        child: Column(
          children: [
            Row(
              children: [
                Container(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Icon(Icons.verified_user,color: Colors.red[600],size: 40,))
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0,50, 0, 0),
                  child: Text("STEP 1 of 3",style: TextStyle(color: Colors.grey,fontSize: 15),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0,10, 0, 20),
                  child: Text("Choose your plan",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check,color: Colors.redAccent,size: 25,),
                Container(width: 280,
                  padding: EdgeInsets.fromLTRB(20,10, 0, 0),
                  child: Text("You won't be charged until after your free month.",style: TextStyle(color: Colors.white,fontSize: 15),maxLines: 20,),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.check,color: Colors.redAccent,size: 25,),
                Container(width: 280,
                  padding: EdgeInsets.fromLTRB(20,10, 0, 0),
                  child: Text("We'll remind you three days before your trial ends.",style: TextStyle(color: Colors.white,fontSize: 15),maxLines: 20,),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.check,color: Colors.redAccent,size: 25,),
                Container(width: 280,
                  padding: EdgeInsets.fromLTRB(20,10, 0, 0),
                  child: Text("No commitments, cancel anytime",style: TextStyle(color: Colors.white,fontSize: 15),maxLines: 20,),
                ),
              ],
            ),
            SizedBox(height: 60,),
            ButtonTheme(
                minWidth: 400.0,
                height: 40.0,
                child: RaisedButton(color: Colors.red[800],
                  child: Text('SEE THE PLANS', style: TextStyle(color: Colors.white)),
                  onPressed: () {Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => subs2()));},
                )
            ),

          ],
        ),
      ),
    );
  }
}
