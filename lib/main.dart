
import "package:flutter/material.dart";
import 'package:media_app/signin/Homescreen.dart';


import "dart:async";

import 'package:media_app/signin/signup.dart';
import 'package:media_app/signin/subscription.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(Our());
}

class Our extends StatefulWidget {
  @override
  _OurState createState() => _OurState();
}

class _OurState extends State<Our> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Our",
      //home:Homescreen(),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds:7),
          () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>firstscreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:
        Stack(children: <Widget>[
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  fit: BoxFit.none,
                  image: AssetImage(
                    'assets/ezgif.com-gif-maker (1).gif',
                  ),
                ),
              ),
              height: 500,
            ),
          ),
        ]),
    );
  }
}
