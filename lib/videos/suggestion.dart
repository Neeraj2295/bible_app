import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../main.dart';
import 'package:flutter/material.dart';
class suggestion extends StatefulWidget {
  @override
  _suggestionState createState() => _suggestionState();
}

class _suggestionState extends State<suggestion> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                FlatButton(onPressed: (){},/// paste link here to the sugessions
                  child: Card(
                    child: Container(height: 150,width: 120,
                      padding: EdgeInsets.all(8),
                      child: Image.asset("assets/jesus.png",fit: BoxFit.cover,),
                    ),
                  ),
                ),

                  FlatButton(onPressed: (){},/// paste link here to the sugessions
                    child: Card(
                      child: Container(height: 150,width: 120,
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/bible.png",fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(onPressed: (){},/// paste link here to the sugessions
                    child: Card(
                      child: Container(height: 150,width: 120,
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/jesus.png",fit: BoxFit.cover,),
                      ),
                    ),
                  ),

                  FlatButton(onPressed: (){},/// paste link here to the sugessions
                    child: Card(
                      child: Container(height: 150,width: 120,
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/bible.png",fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(onPressed: (){},/// paste link here to the sugessions
                    child: Card(
                      child: Container(height: 150,width: 120,
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/jesus.png",fit: BoxFit.cover,),
                      ),
                    ),
                  ),

                  FlatButton(onPressed: (){},/// paste link here to the sugessions
                    child: Card(
                      child: Container(height: 150,width: 120,
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/bible.png",fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
