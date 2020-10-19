import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_app/main2.dart';
import 'package:media_app/signin/signin.dart';
import 'package:media_app/signin/subs3.dart';

import 'help.dart';

//lobalKey userauth = GlobalKey();
class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();
  final userauth = GlobalKey<FormState>();

  bool issignup =false;

  signup() async{
    if (userauth.currentState.validate()){

      setState(() {
        issignup=true;
      });

      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => subs3()));

    }else{

      print("something wrong");
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.black,
          title: Row(
            children: [
              Container(
                child: Text("  ORI",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,),),
              ),
              SizedBox(width: 0,),
              FlatButton(child: Container(padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 14),),),
                onPressed:(){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signin()));},
              ),
              FlatButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => help()));
              }, child:  Container(padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                child: Text("HELP",style: TextStyle(color: Colors.white,fontSize: 14),),))
            ],
          ),
        ),
        body:issignup?Container(
          child:Center(child: Text("Loading"))
        )
            :
        SingleChildScrollView(child:
        Container(padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            children: [
              Row(children: [
                Text("STEP 2 of 3",style: TextStyle(color: Colors.grey[200]),)
              ],),
              Row(children: [
                Container(padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                    child: Text("Sign-up to start your free month.",style: TextStyle(fontSize:18,color: Colors.white,fontWeight: FontWeight.bold),))
              ],),
              Row(children: [
                Text("Just two more steps and you are done!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
              ],),
              SizedBox(height:80),

              Form(

                key:userauth,
                  child: Column(
                      children: [
                        Column(
                          children: <Widget>[
                            Container(padding: EdgeInsets.fromLTRB(20, 0, 0, 0),height: 60,
                              decoration: BoxDecoration(color: Colors.white,
                              border: Border.all(
                                  width: 1.0,color: Colors.red[600]
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
                                ),fillColor: Colors.black,border: InputBorder.none,focusColor: Colors.white),

                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(padding: EdgeInsets.fromLTRB(20, 0, 0, 0),height: 60,
                              decoration: BoxDecoration(color: Colors.white,
                              border: Border.all(
                                  width: 1.0,color: Colors.red[600]
                              ),
                            ),
                              child: TextFormField(
                                obscureText: true,
                                validator: (val) {
                                  return val.length > 6
                                      ? null
                                      : "Password must have 6 character";
                                },
                                controller: passwordEditingController,
                                decoration: InputDecoration(hintText:" Set Password",
                                    border: InputBorder.none,
                                    hintStyle:TextStyle(
                                    color: Colors.black
                                ),fillColor: Colors.black,focusColor: Colors.white),
                              ),
                            ),

                          ],
                        ),
                      ])),
              SizedBox(
                height: 20,
              ),


              ButtonTheme(
                  minWidth: 400.0,
                  height: 40.0,
                  child: RaisedButton(
                    child: Text('CONTINUE', style: TextStyle(fontSize:16,color: Colors.white)),
                    color: Colors.red,
                    onPressed: () {

                      if (userauth.currentState.validate()){

                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => subs3()));
                      }
                    },
                  )
              ),
              SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
        )
    );
  }
}
