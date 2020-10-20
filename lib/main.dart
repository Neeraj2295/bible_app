import "package:flutter/material.dart";
import 'package:media_app/Homescreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import "dart:async";

import 'package:media_app/main2.dart';


void main() {

  runApp(TheMitian());
}
class TheMitian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ori',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
    super.initState();
  }
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Scaffold(
            body: Container(
              color: Colors.black,
                child: AnimatedSplashScreen(
                    duration: 5,
                    splash: Image(
                      image: AssetImage("assets/our-redx-transparent.png"),
                    ),
                    nextScreen: firstscreen(),
                    splashIconSize: 100,
                  backgroundColor: Colors.transparent,
                  pageTransitionType:PageTransitionType.fade,
                  splashTransition: SplashTransition.rotationTransition,
                )


            ),
          );
        });
  }
}
