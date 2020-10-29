import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_app/search/search_card.dart';
class searchPage extends StatefulWidget {
  @override
  _searchPageState createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  static const _profileCardHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Column(
          children: <Widget>[
            Container(
              height: _profileCardHeight,
              child: ProfileCard(
                  profileColor: Colors.white60
              ),
            ),
            Container(height: 70,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8),
              child: Container(padding: EdgeInsets.all(2),
                decoration: BoxDecoration(color: Colors.white,
                  border: Border.all(color: Colors.black,width: 1)),
                child: TextField(
                  decoration: new InputDecoration(
                      labelText: 'SEARCH VIDEOS AND BOOKS',
                      labelStyle: TextStyle(color: Colors.black,),
                      prefixText: ' ',
                      suffixIcon: Icon(Icons.search,color: Colors.black,),
                      ),
                ),
              )
            )
          ],
        ),
      );
  }
}