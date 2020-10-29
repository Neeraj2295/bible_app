import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:media_app/download.dart';
import 'package:media_app/signin/help.dart';
import 'package:media_app/signin/signin.dart';
import 'notification.dart';
class more extends StatefulWidget {
  @override
  _moreState createState() => _moreState();
}

class _moreState extends State<more> {
  Future<void> share() async {
    await FlutterShare.share(
        title: 'ORI',
        text: 'ORI ORI',
        linkUrl:
        '',
        chooserTitle: 'Share ORI');
  }

  TextEditingController shareEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.black,
      body: SingleChildScrollView(child:
    Container(
      padding: EdgeInsets.fromLTRB(10, 130, 0, 0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_pin,size: 13,),
              Text("Manage Profiles",style: TextStyle(fontSize: 15,color: Colors.grey),)
            ],
          ),
          SizedBox(height: 40,),
          Row(
            children: [
              Icon(Icons.card_giftcard,size: 35,color: Colors.white70,),
              Text("  Give Free Link To Your Friends",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white70),)
            ],
          ),
          SizedBox(height: 30,),
          Container(width: 390,
            child: Text("  Share this link with your family and then they'll start watching just like you",
              style: TextStyle(fontSize: 16,color: Colors.white70),maxLines: 20,),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(10, 10, 0, 0),width:250,height:50,color: Colors.grey,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: SelectableText("abc@gmail.com")
                ),
              ),
              Container(padding: EdgeInsets.fromLTRB(10, 10, 0, 0),width:80,height:50,color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Text("Share via link",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                ),
              ),
            ],
          ),
          SizedBox(height: 40,),
          ButtonTheme(
              minWidth: 340.0,
              height: 40.0,
              child: OutlineButton(
                child: Text('📤   Refer A Friend', style: TextStyle(color: Colors.white)),
                borderSide: BorderSide(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                onPressed: share,
              )
          ),
          SizedBox(height: 35,),
          FlatButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => notification()));
          }, child: Row(
            children: [
              Icon(Icons.notifications_active,color: Colors.grey,),
              Text("  NOTIFICATION",style: TextStyle(color: Colors.grey),)
            ],
          ),),
          SizedBox(height: 20,),
          FlatButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => help()));
          }, child:  Row(
            children: [
              Icon(Icons.help,color: Colors.grey,),
              Text("HELP",style: TextStyle(color: Colors.grey,),),
            ],
          )),
          SizedBox(height: 20,),
          FlatButton(onPressed: (){
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => signin()));
          }, child: Row(
            children: [
              Icon(Icons.logout,color: Colors.grey,),
              Text("  Sign Out",style: TextStyle(color: Colors.grey),)
            ],
          ),),
          SizedBox(height: 35,),FlatButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => download()));
            }, child:  Row(
            children: [
              Icon(Icons.check,color: Colors.grey,),
              Text("  MY LIST",style: TextStyle(color: Colors.grey),)
            ],
          ), ),
          SizedBox(height: 35,),
        ],
      ),
    )
    ),);
  }
}
