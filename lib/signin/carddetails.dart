import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_app/main2.dart';
import 'package:media_app/signin/signin.dart';
import 'package:media_app/signin/subs3.dart';

import 'help.dart';
class card extends StatefulWidget {
  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
  TextEditingController cardnameEditingController = new TextEditingController();
  TextEditingController cardnumberEditingController = new TextEditingController();
  TextEditingController expirationEditingController = new TextEditingController();
  TextEditingController cvvEditingController = new TextEditingController();
  final userauth = GlobalKey<FormState>();
  bool check = false;
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
        body:SingleChildScrollView(child:
        Container(padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            children: [
              Row(children: [
                Text("STEP 3 of 3",style: TextStyle(color: Colors.grey[200]),)
              ],),
              Row(children: [
                Container(padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                    child: Text("Set up your credit or debit card",style: TextStyle(fontSize:18,color: Colors.white,fontWeight: FontWeight.bold),))
              ],),
              SizedBox(height:30),

              Form(
                  key: userauth,
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
                                  return val.length > 3
                                      ? null
                                      : "Please enter the correct name";
                                },
                                controller: cardnameEditingController,
                                decoration: InputDecoration(hintText:"Name on Card",hintStyle:TextStyle(
                                    color: Colors.grey
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

                                validator: (val) {
                                  return val.length > 12
                                      ? null
                                      : "Invalid Card number";

                                },
                                controller: cardnumberEditingController,
                                decoration: InputDecoration(hintText:"Card Number",hintStyle:TextStyle(
                                    color: Colors.grey
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

                                validator: (val) {
                                  return val.length > 3
                                      ? null
                                      : "Please enter the correct date";
                                },
                                controller: expirationEditingController,
                                decoration: InputDecoration(hintText:"Expiration Date(MM/YY)",hintStyle:TextStyle(
                                    color: Colors.grey
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
                                  return val.length > 3
                                      ? null
                                      : "Incorrect enrty";
                                },
                                controller: cvvEditingController,
                                decoration: InputDecoration(hintText:"Security Code(CVV)",
                                    border: InputBorder.none,
                                    hintStyle:TextStyle(
                                        color: Colors.grey
                                    ),fillColor: Colors.black,focusColor: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ])),
              SizedBox(
                height: 20,
              ),
            Row(
              children: [Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: Colors.white,
                ),
                child: Checkbox(
                  value: check,
                  onChanged: (bool value) {
                    setState(() {
                      check = value;
                    });
                  },),
              ),
                SizedBox(width: 200,
                    child:Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Text("   I AM Over 18 and I Agree to the ",style: TextStyle(color: Colors.grey[200]),maxLines: 100,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("User Policy",style: TextStyle(color: Colors.blue),),
                          Text(" And",style: TextStyle(color: Colors.grey[200]),maxLines: 100,),
                        ],
                      ),
                      Text(" Privacy Statement",style: TextStyle(color: Colors.blue),maxLines: 100,),
                  ]),
                    )
              ],
            ),
              SizedBox(height: 30,),
              ButtonTheme(
                  minWidth: 400.0,
                  height: 40.0,
                  child: RaisedButton(
                    child: Text('START MEMBERSHIP', style: TextStyle(fontSize:16,color: Colors.white)),
                    color: Colors.red,
                    onPressed: () {
                      if (userauth.currentState.validate()){
                        if(check==true){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                    }}
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
