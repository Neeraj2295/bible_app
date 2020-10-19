import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class notification extends StatefulWidget {
  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  List items =[
    "NOTIFICATION 1",
    "NOTIFICATION 2",
    "NOTIFICATION 3",
    "NOTIFICATION 4",
    "NOTIFICATION 1",
    "NOTIFICATION 2",
    "NOTIFICATION 3",
    "NOTIFICATION 4",
    "NOTIFICATION 1",
    "NOTIFICATION 2",
    "NOTIFICATION 3",
    "NOTIFICATION 4",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
        leading: BackButton(
            color: Colors.black),
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("NOTIFICATION",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          Icon(Icons.notifications_active,color: Colors.black,)
        ],
      ),
        backgroundColor: Colors.grey,
      ),
      body:
          Container(padding: EdgeInsets.only(top: 20),
            child: Container(
              child: ListView.builder(
              itemCount: 11,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Container(color: Colors.white,height: 60,padding: EdgeInsets.all(8),alignment: Alignment.centerLeft,
                        child: Text('${items[index]}',style: TextStyle(color: Colors.black),)),
                  );
                },
              ),
            ),
          ),
    );
  }
}
