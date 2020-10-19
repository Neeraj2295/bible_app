import 'package:flutter/material.dart';
import 'package:media_app/signin/signin.dart';
import 'package:media_app/signin/signup.dart';

import 'help.dart';
class subs2 extends StatefulWidget {
  @override
  _subs2State createState() => _subs2State();
}

class _subs2State extends State<subs2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar:AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Container(
              child: Text("  ORI",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,),),
            ),
            SizedBox(width: 0,),
            FlatButton(child: Container(padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
              child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 14),),),
              onPressed:(){ Navigator.push(
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
      body: BOdy(),
    );
  }
}
class BOdy extends StatefulWidget {
  @override
  _BOdyState createState() => _BOdyState();
}

class _BOdyState extends State<BOdy> {
  List<bool> _isSelected = [false, false,false,false];
  bool a = false;
  bool b = false;
  bool c = false;
  bool  d = false;
  var number;
  var value;
  var value2;
  bool button1 = false;
  bool button2 = false;
  bool button3 = false;
  bool button4 = true;
  @override
  void initState() {
    button4 = button4;
    d=!d;
  }
  void dispose() {
    value.dispose();
    value2.dispose();
    super.dispose();
  }
  function(){

 }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text("STEP 2 of 3",style: TextStyle(
                  color:Colors.grey[200],
                ),),
              )
            ],
          ),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(20, 8, 0, 0),
                child: Text("Choose a plan that's right for you.",style: TextStyle(fontWeight: FontWeight.bold,
                  color:Colors.white,fontSize: 16
                ),),
              )
            ],
          ),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(20, 8, 0, 0),
                child: Text("Downgrade or upgrade anytime",style: TextStyle(
                    color:Colors.grey[200],fontSize: 14
                ),),
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Row(
                  children: [
                    // CustomToggleButtons(
                    //   isSelected: _isSelected,spacing: 3,disabledColor: Colors.red,
                    //   color: Colors.red,fillColor: Colors.red,highlightColor: Colors.red,selectedColor: Colors.red,
                    //   children: <Widget>[
                    //     Text("hhMOBILE",style: TextStyle(color: Colors.red),),
                    //     Text("BASICS",style: TextStyle(color: Colors.white),),
                    //     Text("STANDARD",style: TextStyle(color: Colors.white),),
                    //     Text("PREMIUM",style: TextStyle(color: Colors.white),)
                    //   ],
                    //   onPressed: (index) {
                    //     setState(() {
                    //       _isSelected[index] = !_isSelected[index];
                    //     });
                    //   },
                    // ),
                      Container(width: 80,
                        child: RaisedButton(
                        child: new Text('MOBILE',style: TextStyle(fontSize: 10),),
                        textColor: Colors.white,
                        color: button1 ? Colors.red[800] : Colors.red[300],
                        onPressed: () => setState(() {
                          button1 =!button1;
                          a = !a;
                          b= false;c=false;d=false;
                          value2= a;
                          button2 = false;
                          button4 = false;
                          button3 =false;
                        }),),
                      ),
                    SizedBox(width: 2,),
                    Container(width: 80,
                      child: RaisedButton(
                        child: new Text('BASICS',style: TextStyle(fontSize: 10),),
                        textColor: Colors.white,
                        color: button2 ? Colors.red[800] : Colors.red[300],
                        onPressed: () =>  setState(() {
                          button2 =!button2;
                          b=!b;
                          a=false; c= false;d=false;
                          value2= b;
                          button1 = false;
                          button3 =false;
                          button4 = false;
                        }),),
                      ),
                    SizedBox(width: 2,),
                    Container(width: 80,
                      child: RaisedButton(
                        child: new Text('STANDARD',style: TextStyle(fontSize: 10),),
                        textColor: Colors.white,
                        color: button3 ? Colors.red[800] : Colors.red[300],
                        onPressed: () =>  setState(() {
                          button3 =!button3;
                          value2= c;
                          c=!c;
                          a=false;b=false;d=false;
                          button2 = false;
                          button1 =false;
                          button4 = false;
                        }),
                      ),
                    ),
                    SizedBox(width: 2,),
                    Container(width: 80,
                      child: RaisedButton(
                        child: new Text('PREMIUM',style: TextStyle(fontSize: 10),),
                        textColor: Colors.white,
                        color: button4? Colors.red[800] : Colors.red[300],
                        onPressed: () =>  setState(() {
                          button4 =!button4;
                          value2= d;
                          d=!d;
                          a=false;b=false;c=false;
                          button2 = false;
                          button1 =false;
                          button3 = false;
                        }),
                      ),
                    ),
                  ],
                )
              )
            ],
          ),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(20, 8, 0, 0),
                child: Text("Monthly prices will be charged after free trials  ",style: TextStyle(
                    color:Colors.white,fontSize: 14
                ),),
              )
            ],
          ),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(40, 20, 30, 20),
                child: Text(r"$ 7",style: TextStyle(color: value2 = a ? Colors.greenAccent : Colors.grey,),)
              ),
              Container(padding: EdgeInsets.fromLTRB(30,20, 30, 20),
                child: Text(r"$ 10",style: TextStyle(color:value2 = b ? Colors.greenAccent: Colors.grey,),)
              ),
              Container(padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Text(r"$ 14",style: TextStyle(color: value2 = c ? Colors.greenAccent: Colors.grey,),)
              ),
              Container(padding: EdgeInsets.fromLTRB(30,20, 30, 20),
                child: Text(r"$ 16",style: TextStyle(color: value2 = d ? Colors.greenAccent : Colors.grey,),)
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("HD Available",style: TextStyle(color: Colors.grey[200],fontSize: 15),)
            ],
          ),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(40, 20, 20, 10),
                child: Icon(Icons.clear,color: value2 = a ? Colors.red : Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20,20, 20, 10),
               child: Icon(Icons.check,color:value2 = b ? Colors.red: Colors.grey,size: 40,),
            ),
            Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Icon(Icons.clear,color: value2 = c ? Colors.red: Colors.grey,size: 40,),
            ),
            Container(padding: EdgeInsets.fromLTRB(20,20, 20, 10),
              child: Icon(Icons.check,color: value2 = d ? Colors.red: Colors.grey,size: 40,),
            )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Ultra HD Available",style: TextStyle(color: Colors.grey[200],fontSize: 15),)
            ],
          ),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(40, 20, 20, 10),
                child: Icon(Icons.check,color: value2 = a ? Colors.red : Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20,20, 20, 10),
                child: Icon(Icons.clear,color:value2 = b ? Colors.red: Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20,20, 20, 10),
                child: Icon(Icons.check,color: value2 = c ? Colors.red: Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Icon(Icons.clear,color: value2 = d ? Colors.red: Colors.grey,size: 40,),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Watch on laptop and TV",style: TextStyle(color: Colors.grey[200],fontSize: 15),)
            ],
          ),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(40,20, 20, 10),
                child: Icon(Icons.clear,color: value2 = a ? Colors.red : Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Icon(Icons.check,color:value2 = b ? Colors.red: Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20,20, 20, 10),
                child: Icon(Icons.clear,color: value2 = c ? Colors.red: Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Icon(Icons.clear,color: value2 = d ? Colors.red: Colors.grey,size: 40,),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Watch on mobile phone and Tablet",style: TextStyle(color: Colors.grey[200],fontSize: 15),)
            ],
          ),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(40,20, 20, 10),
                child: Icon(Icons.clear,color: value2 = a ? Colors.red : Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20,20, 20, 10),
                child: Icon(Icons.check,color:value2 = b ? Colors.red: Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Icon(Icons.clear,color: value2 = c ? Colors.red: Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Icon(Icons.check,color: value2 = d ? Colors.red: Colors.grey,size: 40,),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Unlimited movies and TV shows",style: TextStyle(color: Colors.grey[200],fontSize: 15),)
            ],
          ),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(40,20, 20, 10),
                child: Icon(Icons.clear,color: value2 = a ? Colors.red : Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20,20, 20, 10),
                child: Icon(Icons.check,color:value2 = b ? Colors.red: Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Icon(Icons.check,color: value2 = c ? Colors.red: Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Icon(Icons.check,color: value2 = d ? Colors.red: Colors.grey,size: 40,),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("cancel anytime",style: TextStyle(color: Colors.grey[200],fontSize: 15),)
            ],
          ),
          Row(
            children: [
              Container(padding: EdgeInsets.fromLTRB(40,20, 20, 10),
                child: Icon(Icons.check,color: value2 = a ? Colors.red : Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20,20, 20, 10),
                child: Icon(Icons.check,color:value2 = b ? Colors.red: Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Icon(Icons.check,color: value2 = c ? Colors.red: Colors.grey,size: 40,),
              ),
              Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Icon(Icons.check,color: value2 = d ? Colors.red: Colors.grey,size: 40,),
              ),
            ],
          ),
          Row(
            children: [Container(padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                child: SizedBox(height: 100,width: 310,
                    child:Text("sbajb asjclj sjacl basjc baskbc bcacl blancl blscla lblsacl ,blcbasl lblac bblac blal bkac "
                "naslcl alcnal kbkbask kbkabk bkabk bkcba kbcakb abck abkcka abkcbak abckab ambckab",maxLines: 200,style: TextStyle(color: Colors.white),)))],
          ),
          Container(padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
            child: ButtonTheme(
                minWidth: 350.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text("CONTINUE", style: TextStyle(fontSize:16,color: Colors.white)),
                  color: Colors.red,
                  onPressed: () {Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => signup()));
                  },
                )
            ),
          ),
        ],
      ),
    );
  }
}
