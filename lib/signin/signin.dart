import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:media_app/main2.dart';
import 'package:media_app/signin/help.dart';
import 'package:media_app/signin/signup.dart';
class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();
  final userauth = GlobalKey<FormState>();

  bool issignin =false;

  signin() async{
    if (userauth.currentState.validate()){

      setState(() {
        issignin=true;
      });
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()));

    }else{

      print("something wrong");
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black12,
      appBar: AppBar(backgroundColor: Colors.black,
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text("OUR",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 28),),
            ),
            FlatButton(onPressed: (){
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => help()));
            }, child:  Container(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text("HELP",style: TextStyle(color: Colors.white,fontSize: 14),),))
          ],
        ),
      ),
      body:SingleChildScrollView(child:
      Container(padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Column(
          children: [

            SizedBox(height:130),

            Form(
              key: userauth,
                child: Column(
                    children: [
                      Column(
                        children: <Widget>[
                          Container(padding: EdgeInsets.fromLTRB(20, 0, 0, 0),decoration: BoxDecoration(color: Colors.white,
                            border: Border.all(
                                width: 3.0,color: Colors.white
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0) //         <--- border radius here
                            ),
                          ),
                            child: TextFormField(

                              validator: (val) {
                                return RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(val)
                                    ? null
                                    : "Please Enter Correct Email";
                              },
                              controller: emailEditingController,
                              decoration: InputDecoration(hintText:"Email or phone number",hintStyle:TextStyle(
                                color: Colors.black
                              ),fillColor: Colors.black,focusColor: Colors.white),

                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(padding: EdgeInsets.fromLTRB(20, 0, 0, 0),decoration: BoxDecoration(color: Colors.white,
                            border: Border.all(
                                width: 3.0,color: Colors.white
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0) //         <--- border radius here
                            ),
                          ),
                            child: TextFormField(
                              obscureText: true,
                              validator: (val) {
                                return val.length > 6
                                    ? null
                                    : "Enter Password 6+ characters";
                              },
                              controller: passwordEditingController,
                              decoration: InputDecoration(hintText:"Password",hintStyle:TextStyle(
                                  color: Colors.black
                              ),fillColor: Colors.black,focusColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ])),
            SizedBox(
              height: 70,
            ),


            ButtonTheme(
                minWidth: 400.0,
                height: 40.0,
                child: OutlineButton(
                  child: Text('SIGN   IN', style: TextStyle(fontSize:16,color: Colors.white)),
                  borderSide: BorderSide(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 1,
                  ),
                  onPressed: () { if (userauth.currentState.validate()){

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }
                        },
                )
            ),
            SizedBox(
              height: 20,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => help()));
                  },
                  child: Text(
                    "Need Help ?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => signup()));
                }, child: Text("New member?  Sign up now",style: TextStyle(color: Colors.white),) ),
              ],
            )
          ],
        ),
      ),
      )
    );
  }
}
