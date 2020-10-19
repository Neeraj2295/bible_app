import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class quotes extends StatefulWidget {
  @override
  _quotesState createState() => _quotesState();
}

class _quotesState extends State<quotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
          appBar: new PreferredSize(preferredSize: Size.fromHeight(50),
            child: new Container(
              padding: new EdgeInsets.only(
                top: MediaQuery.of(context).padding.top
                  ),
                 child: new Container(
                     alignment: Alignment.center,
                     child: new Text(
                     'DAILY QUOTES',
                     style: new TextStyle(
                     fontSize: 20.0,
                   fontWeight: FontWeight.w500,
                   color: Colors.white
                ),
                ),
              ),
              decoration: new BoxDecoration(
              gradient: new LinearGradient(
            colors: [Colors.black,
                Colors.white
               ]
              ),
              )),),
      body: quotess(),
    );
  }
}
class quotess extends StatefulWidget {
  @override
  _quotessState createState() => _quotessState();
}

class _quotessState extends State<quotess> {
  List quotes=[
    "https://faithit-eszuskq0bptlfh8awbb.stackpathdns.com/wp-content/uploads/2020/04/rick_warren_christian_quotes.png",
    "https://faithit-eszuskq0bptlfh8awbb.stackpathdns.com/wp-content/uploads/2018/04/439387_Top10ChristianInspirational_01_053119.jpg",
    "https://faithit-eszuskq0bptlfh8awbb.stackpathdns.com/wp-content/uploads/2018/01/quotes-Religion-says-I-ob.jpg",
  ];
  List text =[
    " najnxkankj ansjn nascjn ,nanc ,nascn",
    "ckanlcn akln ksancln knalknc akclan",
    "acbnc lsacnlc kacl calkn kalc nknlnal",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: Colors.black,
              child: SizedBox(height:MediaQuery.of(context).size.height,width: 310,
                child: ListView.builder(
                    itemCount: 3,
                      itemBuilder: (BuildContext ctx, int index) {
                        return Column(
                          children: [
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Container(decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                      Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Quote Of The Day",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [Container(alignment: Alignment.center,padding: EdgeInsets.all(10),
                                        child:  Container(
                                          height: 220,width: 200,padding: EdgeInsets.fromLTRB(10, 10, 10, 10),decoration: BoxDecoration(image:DecorationImage(
                                          image:NetworkImage(quotes[index]),fit: BoxFit.fitHeight,) ),
                                        ),),
                                      ],
                                    ),
                                    Container(padding: EdgeInsets.only(left: 15,top: 20,bottom: 20),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                              child: Text("Quote of the day : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                          SizedBox(width: 160,
                                            child: Text(" ${text[index]}",style: TextStyle(color: Colors.green),maxLines: 100,
                                            ),
                                          )],
                                      ),
                                    ) ],
                                    ),
                                  ),
                                  SizedBox(height: 20,)
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
              ),
            ),
          ],
        ),
      ],
      ),
    );
  }
}
