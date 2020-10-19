import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_app/books/pdf.dart';
class chapter extends StatefulWidget {
  @override
  _chapterState createState() => _chapterState();
}

class _chapterState extends State<chapter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
        leading: BackButton(
            color: Colors.black),
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Select Chapter ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ],
        ),
        backgroundColor: Colors.grey,
      ),
      body:
      Container(padding: EdgeInsets.only(top: 20),
        child: Container(
          child: ListView(
            children: [
               FlatButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pdf()));
              },child: ListTile(
                title: Container(color: Colors.white,height: 60,padding: EdgeInsets.all(8),alignment: Alignment.center,
                    child: Text("CHAPTER 1",style: TextStyle(color: Colors.black),)),
              ) ,),
              FlatButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pdf()));
              },child: ListTile(
                title: Container(color: Colors.white,height: 60,padding: EdgeInsets.all(8),alignment: Alignment.center,
                    child: Text("CHAPTER 2",style: TextStyle(color: Colors.black),)),
              ) ,),
              FlatButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pdf()));
              },child: ListTile(
                title: Container(color: Colors.white,height: 60,padding: EdgeInsets.all(8),alignment: Alignment.center,
                    child: Text("CHAPTER 3",style: TextStyle(color: Colors.black),)),
              ) ,),
              FlatButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pdf()));
              },child: ListTile(
                title: Container(color: Colors.white,height: 60,padding: EdgeInsets.all(8),alignment: Alignment.center,
                    child: Text("CHAPTER 4",style: TextStyle(color: Colors.black),)),
              ) ,),
              FlatButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pdf()));
              },child: ListTile(
                title: Container(color: Colors.white,height: 60,padding: EdgeInsets.all(8),alignment: Alignment.center,
                    child: Text("CHAPTER 5",style: TextStyle(color: Colors.black),)),
              ) ,),
              FlatButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pdf()));
              },child: ListTile(
                title: Container(color: Colors.white,height: 60,padding: EdgeInsets.all(8),alignment: Alignment.center,
                    child: Text("CHAPTER 6",style: TextStyle(color: Colors.black),)),
              ) ,),
              FlatButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pdf()));
              },child: ListTile(
                title: Container(color: Colors.white,height: 60,padding: EdgeInsets.all(8),alignment: Alignment.center,
                    child: Text("CHAPTER 7",style: TextStyle(color: Colors.black),)),
              ) ,),
              FlatButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pdf()));
              },child: ListTile(
                title: Container(color: Colors.white,height: 60,padding: EdgeInsets.all(8),alignment: Alignment.center,
                    child: Text("CHAPTER 8",style: TextStyle(color: Colors.black),)),
              ) ,),
              FlatButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pdf()));
              },child: ListTile(
                title: Container(color: Colors.white,height: 60,padding: EdgeInsets.all(8),alignment: Alignment.center,
                    child: Text("CHAPTER 9",style: TextStyle(color: Colors.black),)),
              ) ,),
              FlatButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pdf()));
              },child: ListTile(
                title: Container(color: Colors.white,height: 60,padding: EdgeInsets.all(8),alignment: Alignment.center,
                    child: Text("CHAPTER 10",style: TextStyle(color: Colors.black),)),
              ) ,)
            ]
          ),
        ),
      ),
    );
  }
}
