import 'package:flutter/material.dart';
class help extends StatefulWidget {
  @override
  _helpState createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:Colors.white,
      title: Text("Help",),
      content: Text("Contact as at:",),
      actions: <Widget>[
        FlatButton(
          child: Text("ok"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
