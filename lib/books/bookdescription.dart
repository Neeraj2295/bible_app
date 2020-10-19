
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/asus/Documents/media_app/lib/books/pdf.dart';
import 'package:media_app/books/chapter.dart';

class DetailPage extends StatelessWidget{
@override
  Widget build(BuildContext context) {

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 100.0),
        Container(padding: EdgeInsets.all(5),margin: EdgeInsets.symmetric(horizontal: 40),
          color: Colors.white,
          child: Container(padding: EdgeInsets.fromLTRB(0,0,0,0),width: 100,height: 150,
          child: Image(
            image: AssetImage("assets/30 obadiah.png"),fit: BoxFit.cover,
          ),
        ),
        ),
        SizedBox(height: 28.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(flex: 1, child:Container()),
            Expanded(
                flex: 6,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "TITLE",
                      style: TextStyle(color: Colors.white,fontSize: 30),
                    ))),
            Expanded(flex: 3, child: RaisedButton(color: Colors.white,onPressed: (){},
            child: Text("DONATE",style: TextStyle(color: Colors.black),),
            ))
          ],
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/30 obadiah.png"),
                fit: BoxFit.cover,
              ),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(0.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
          child: Container(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 40.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );

    final bottomContentText =Column(
      children: [
      Row(
        children: [
          Text(
          "DISCRIPTION :",
          style: TextStyle(fontSize: 18.0),
    ),
        ],
      ),
      Container(padding: EdgeInsets.only(top: 20),
        child:
          Text("caj sac svdsv sdv ssd cbman bakck ,ljlx  gkg kbck"
              "mcbkbck ,ncnlkc ,n,nas jjasjas bbcb skj lkcbd "
              "sbsh cjcjd wdqdwq dqwd qwdqwd asc kndsaknd aswd "
              "adawd dakdnk andla ldakld nlanla ncanl "
              "cjdc kdnckd ndcksn csnckcn smnsnc",maxLines: 200,)

      )
      ],
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>chapter()))
          },
          color: Color.fromRGBO(58, 66, 86, 1.0),
          child:
          Text("READ NOW", style: TextStyle(color: Colors.white)),
        ));
    final bottomContent = SingleChildScrollView(
      // height: MediaQuery.of(context).size.height,
      child: Container(
        width: MediaQuery.of(context).size.width,
        // color: Theme.of(context).primaryColor,
        padding: EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            children: <Widget>[bottomContentText, readButton],
          ),
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }
}