import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_app/signin/signin.dart';
import 'package:media_app/signin/subscription.dart';
import 'package:media_app/signin/subscription2.dart';
class firstscreen extends StatefulWidget {
  @override
  _firstscreenState createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(automaticallyImplyLeading: false,backgroundColor: Colors.black,
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(" Our",style: TextStyle(color: Colors.red,fontSize: 20),),
            FlatButton(onPressed: (){Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => signin()));
                                },
              child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 15),),
            ),
            Text("Help",style: TextStyle(color: Colors.white,fontSize: 15),),
          ],
        ),
      ),
      body:  Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        children: [
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(120,80,0,0),height: 200,
                child: Image(image: AssetImage("assets/our-redx-transparent.png"),fit: BoxFit.fill,)
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(105, 10, 0, 0),
                  child: Text("Download and go",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))
            ],
          ),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(45, 10, 0, 120),width:300,
                  child: Text("Save your data, watch offline on a plane or train",maxLines: 20,
                    style: TextStyle(color: Colors.white,fontSize: 14),))
            ],
          ),
          ButtonTheme(
              minWidth: 300.0,
              height: 40.0,
              child: RaisedButton(color: Colors.red[900],
                child: Text('Join Free for 7 days', style: TextStyle(fontSize:16,color: Colors.white)),
                onPressed: () {Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => subs()));
                },
              )
          ),
        ],
      ),
    )
    );
  }
}
