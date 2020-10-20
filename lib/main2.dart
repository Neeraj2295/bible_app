import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:media_app/Homescreen.dart';
import 'package:media_app/books/newtestmant.dart';
import 'package:media_app/books/travelsam.dart';
import 'package:media_app/download.dart';
import 'package:media_app/more.dart';
import 'package:media_app/quotes.dart';
import 'package:media_app/videos/player.dart';
import 'books/chapter.dart';
import 'books/oldtestmant.dart';
import 'package:media_app/videos/player.dart';
import 'package:media_app/profile.dart';
import 'package:media_app/search/search.dart';
import 'package:media_app/search/search_page.dart';
import 'package:media_app/signin/signin.dart';
import 'books/bookdescription.dart';
import 'file:///C:/Users/asus/Documents/media_app/lib/signin/subscription.dart';
import 'package:url_launcher/url_launcher.dart';
import 'videos/description.dart';
import 'home2.dart';
import 'dart:io';
class Person {
  final String name;

  Person(this.name,);
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenPage createState() => _HomeScreenPage();
}

class _HomeScreenPage extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  String title = "";
  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        home:WillPopScope(
            onWillPop: () {
              return showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor:Colors.white,
                      title: Text("Confirm Exit",),
                      content: Text("Are you sure you want to exit?",),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("YES"),
                          onPressed: () {
                          //  offline();
                            exit(0);
                          },
                        ),
                        FlatButton(
                          child: Text("NO"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    );
                  });
            },

            child:   new Scaffold(backgroundColor: Colors.black,extendBodyBehindAppBar: true,
          appBar:PreferredSize( preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Opacity(opacity: 1,
              child:AppBar(flexibleSpace:
              Row(
                children: [
                  Container(padding: EdgeInsets.fromLTRB(15, 30, 0, 0),
                    height: 100,width: 40,
                    child:  Image(
                      image: AssetImage("assets/our-redx-transparent.png"),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: FlatButton(child: Text("Home",style: TextStyle(color: Colors.white,),),onPressed: (){Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));},)),
                  Container(padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: FlatButton(child: Text("Travel Samaritan",style: TextStyle(color: Colors.white,),),onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => travel()));
                      },)),
                  Container(padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: FlatButton(child: Text("Shop",style: TextStyle(color: Colors.white,),),
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => grid()));
                        },))
                ],
              ),
                backgroundColor: Colors.transparent,
              ),),
          ),
          body: TabBarView(
            children: <Widget>[
              FirstTab(),
              searchPage(),
              quotes(),
              ProfilePage(),
              download(),
              more()
            ],
// if you want yo disable swiping in tab the use below code
//            physics: NeverScrollableScrollPhysics(),
            controller: tabController,
          ),
          bottomNavigationBar:SizedBox(
            height: 60,
            child: TabBar(
              onTap: (index) {
                if (index == 0) {
                  setState(() {
                    title = "Home";
                  });
                } else if (index == 1) {
                  setState(() {
                    title = "Page";
                  });
                } else if (index == 2) {
                  setState(() {
                    title = "Page";
                  });
                } else if (index == 3) {
                  setState(() {
                    title = "profile";
                  });
                }
                else if (index == 4) {
                  setState(() {
                    title = "page";
                  });
                }
                else if (index == 5) {
                  setState(() {
                    title = "Page";
                  });
                }
              },

              indicatorColor: Colors.transparent,
              unselectedLabelColor: Colors.white60,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home,size: 17,),
                  child: Text("Home",style: TextStyle(fontSize: 10),),

                ),
                Tab(
                  icon: Icon(Icons.search,size:17,),
                  child: Text("Search",style: TextStyle(fontSize: 11),maxLines: 1,),
                ),
                Tab(
                  icon: Icon(Icons.pages_outlined,size:17,),
                  child: Text("Quotes",style: TextStyle(fontSize: 11),maxLines: 1,),
                ),
                Tab(
                  icon: Icon(Icons.perm_identity,size: 17,),
                  child: Text("Profile",style: TextStyle(fontSize: 11),maxLines: 1,),
                ),
                Tab(
                  icon: Icon(Icons.cloud_download,size: 17,),
                  child: Text("Download",style: TextStyle(fontSize: 11),maxLines: 1,),

                ),
                Tab(
                  icon: Icon(Icons.menu,size: 17,),
                  child: Text("More",style: TextStyle(fontSize: 11),maxLines: 1,),
                ),
              ],
              controller: tabController,
            ),
          ),
        )));
  }
}

class FirstTab extends StatefulWidget {
  final String link="http://www.africau.edu/images/default/sample.pdf";

  @override
  FirstTabState createState() => FirstTabState();
}

class FirstTabState extends State<FirstTab>{
  urllauncher(String link) async {
    var url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  Future<void> share() async {
    await FlutterShare.share(
        title: 'ORI',
        text: 'ORI ORI',
        linkUrl:
        '',
        chooserTitle: 'Share video');
  }
  List todo=[
    "http://www.africau.edu/images/default/sample.pdf",
    "http://www.africau.edu/images/default/sample.pdf",
    "http://www.africau.edu/images/default/sample.pdf",
    "http://www.africau.edu/images/default/sample.pdf",
  ];
  List a= [
   "assets/images (10).png",
   "assets/images (11).png",
   "assets/cross.png",
   "assets/images (10).png",
   "assets/images (11).png",
   "assets/cross.png"
 ];
 List b= [
   "assets/25 lamentations.png",
   "assets/26 ezekiel.png",
   "assets/28 hosea.png",
   "assets/29 joel.png",
   "assets/30 obadiah.png",
   "assets/32 micah.png",
   "assets/28 hosea.png",
 ];
 List c= [
   "assets/28 hosea.png",
   "assets/25 lamentations.png",
   "assets/32 micah.png",
   "assets/26 ezekiel.png",
   "assets/29 joel.png",
   "assets/30 obadiah.png",
 ];
 List d= [
   "assets/26 ezekiel.png",
   "assets/29 joel.png",
   "assets/30 obadiah.png",
   "assets/28 hosea.png",
   "assets/32 micah.png",
   "assets/25 lamentations.png",
 ];
 List e= [
   "assets/30 obadiah.png",
   "assets/32 micah.png",
   "assets/25 lamentations.png",
   "assets/26 ezekiel.png",
   "assets/28 hosea.png",
   "assets/29 joel.png",
 ];

@override
  Widget build(BuildContext context) {
  return SingleChildScrollView(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
    child: Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(height: 300,width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/cross (1).png"),fit: BoxFit.cover
                    )
                ),
                child:Container(
                    padding: EdgeInsets.fromLTRB(80, 30, 0, 0),
                    child: Text("")
                          )
                        ),
                      ],
                    ),
        SizedBox(
          height: 25,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(onPressed: (){
              urllauncher(widget.link);
            }, child:Icon(Icons.cloud_download,color: Colors.white70,size: 30,), ),
            SizedBox(width: 0,),
            FlatButton(onPressed: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => player()));},
              child:Container(child: Row(
                children: [
                  Icon(Icons.play_arrow,color: Colors.black,size: 30,),
                  Text("  Play ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)
                ],
              ),
                height: 35,width: 80,color: Colors.white,
              ), ),
            SizedBox(width: 10,),
            FlatButton(onPressed:share, child:Icon(Icons.share,color: Colors.white70,size: 26,) )
          ],
        ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(padding:EdgeInsets.fromLTRB(10,0,0,15),child: Text("Travel Samaritan",style: TextStyle(color:Colors.white70,fontSize:15,fontWeight: FontWeight.bold,),textAlign: TextAlign.left,)),
                      ],
                    ),
                    Container(alignment: Alignment.centerLeft,
                      height: MediaQuery.of(context).size.height*0.18 ,


                      child: Container(padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                         child: ListView.builder(
                           scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (BuildContext context, int index) {
                                return  Container(
                                            decoration:BoxDecoration(color: Colors.transparent,
                                                shape: BoxShape.circle
                                            ),
                                            child:FlatButton(onPressed: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => travel()));
                                            },color: Colors.transparent,
                                              child:CircleAvatar(backgroundImage: AssetImage(a[index]),radius: 48,backgroundColor: Colors.grey,),));
                              }
                          ),
                      ),
                    ),
                          Container(
                            height: 250 ,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  itemBuilder: (BuildContext context, int indx) {
                                    return  Column(
                                      children: [
                                        Container(width: 120,
                                          child: Card(
                                            child:GestureDetector(onTap: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => DetailPage()));
                                            },
                                              child: Container(
                                                child:
                                                Image(image:AssetImage(b[indx]),fit: BoxFit.fitHeight,),
                                              ),
                                            ),),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          child: RaisedButton(
                                            onPressed: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => chapter()));
                                            },child: Text("CHAPTER",style: TextStyle(color: Colors.white),),
                                          color: Colors.blueGrey[700],
                                          ),
                                          width: 110,
                                        ),
                                        SizedBox(height: 2,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            FlatButton(onPressed: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => player()));
                                            }, child:  CircleAvatar(
                                              child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                                              backgroundColor: Colors.lightBlueAccent,
                                            ) )
                                          ],
                                        )
                                      ],
                                    );
                                  }
                              ),
                            ),
                          ),
                          Container(
                            height: 250 ,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  itemBuilder: (BuildContext context, int indx) {
                                    return  Column(
                                      children: [
                                        Container(width: 120,
                                          child: Card(
                                            child:GestureDetector(onTap: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => DetailPage()));
                                            },
                                              child: Container(
                                                child:
                                                Image(image:AssetImage(e[indx]),fit: BoxFit.fitHeight,),
                                              ),
                                            ),),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          child: RaisedButton(
                                            onPressed: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => chapter()));
                                            },child: Text("CHAPTER",style: TextStyle(color: Colors.white),),
                                            color: Colors.blueGrey[700],
                                          ),
                                          width: 110,
                                        ),
                                        SizedBox(height: 2,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            FlatButton(onPressed: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => player()));
                                            }, child:  CircleAvatar(
                                              child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                                              backgroundColor: Colors.lightBlueAccent,
                                            ) )
                                          ],
                                        )
                                      ],
                                    );
                                  }
                              ),
                            ),
                          ),
                        Container(
                          height: 250 ,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int indx) {
                                  return  Column(
                                    children: [
                                      Container(width: 120,
                                        child: Card(
                                          child:GestureDetector(onTap: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => DetailPage()));
                                          },
                                            child: Container(
                                              child:
                                              Image(image:AssetImage(d[indx]),fit: BoxFit.fitHeight,),
                                            ),
                                          ),),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        child: RaisedButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => chapter()));
                                          },child: Text("CHAPTER",style: TextStyle(color: Colors.white),),
                                          color: Colors.blueGrey[700],
                                        ),
                                        width: 110,
                                      ),
                                      SizedBox(height: 2,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FlatButton(onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => player()));
                                          }, child:  CircleAvatar(
                                            child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                                            backgroundColor: Colors.lightBlueAccent,
                                          ) )
                                        ],
                                      )
                                    ],
                                  );
                                }
                            ),
                          ),
                        ),
                    SizedBox(
                      height: 25,
                    ),
        Container(height: 160,width:MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/gospel.jpeg"),fit: BoxFit.fitWidth)
                      ),
                       ),

                    Container(
                      height: 250 ,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int indx) {
                              return  Column(
                                children: [
                                  Container(width: 120,
                                    child: Card(
                                      child:GestureDetector(onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => DetailPage()));
                                      },
                                        child: Container(
                                          child:
                                          Image(image:AssetImage(b[indx]),fit: BoxFit.fitHeight,),
                                        ),
                                      ),),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    child: RaisedButton(
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => chapter()));
                                      },child: Text("CHAPTER",style: TextStyle(color: Colors.white),),
                                      color: Colors.blueGrey,
                                    ),
                                    width: 110,
                                  ),
                                  SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlatButton(onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => player()));
                                      }, child:  CircleAvatar(
                                        child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                                        backgroundColor: Colors.lightBlueAccent,
                                      ) )
                                    ],
                                  )
                                ],
                              );
                            }
                        ),
                      ),
                    ),
                        Container(
                          height: 250 ,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int indx) {
                                  return  Column(
                                    children: [
                                      Container(width: 120,
                                        child: Card(
                                          child:GestureDetector(onTap: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => DetailPage()));
                                          },
                                            child: Container(
                                              child:
                                              Image(image:AssetImage(d[indx]),fit: BoxFit.fitHeight,),
                                            ),
                                          ),),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        child: RaisedButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => chapter()));
                                          },child: Text("CHAPTER",style: TextStyle(color: Colors.white),),
                                          color: Colors.blueGrey
                                        ),
                                        width: 110,
                                      ),
                                      SizedBox(height: 2,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FlatButton(onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => player()));
                                          }, child:  CircleAvatar(
                                            child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                                            backgroundColor: Colors.lightBlueAccent,
                                          ) )
                                        ],
                                      )
                                    ],
                                  );
                                }
                            ),
                          ),
                        ),
                    Container(
                      height: 250 ,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int indx) {
                              return  Column(
                                children: [
                                  Container(width: 120,
                                    child: Card(
                                      child:GestureDetector(onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => DetailPage()));
                                      },
                                        child: Container(
                                          child:
                                          Image(image:AssetImage(e[indx]),fit: BoxFit.fitHeight,),
                                        ),
                                      ),),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    child: RaisedButton(
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => chapter()));
                                      },child: Text("CHAPTER",style: TextStyle(color: Colors.white),),
                                      color: Colors.blueGrey[700],
                                    ),
                                    width: 110,
                                  ),
                                  SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlatButton(onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => player()));
                                      }, child:  CircleAvatar(
                                        child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                                        backgroundColor: Colors.lightBlueAccent,
                                      ) )
                                    ],
                                  )
                                ],
                              );
                            }
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 25,
                    ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(height: 160,width:330,alignment: Alignment.center,
                              child: Text("New Testment",style: TextStyle(color: Color(0xffa18539),fontWeight: FontWeight.w800
                              ,fontStyle:FontStyle.italic,fontSize: 30
                              ),),
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/newtestment.jpeg"),fit: BoxFit.fitWidth)
                              ),
                            ),
                          ],
                        ),
                  Container(
                    height: 250 ,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (BuildContext context, int indx) {
                            return  Column(
                              children: [
                                Container(width: 120,
                                  child: Card(
                                    child:GestureDetector(onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => DetailPage()));
                                    },
                                      child: Container(
                                        child:
                                        Image(image:AssetImage(c[indx]),fit: BoxFit.fitHeight,),
                                      ),
                                    ),),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: RaisedButton(
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => chapter()));
                                    },child: Text("CHAPTER",style: TextStyle(color: Colors.white),),
                                    color: Colors.blueGrey[700],
                                  ),
                                  width: 110,
                                ),
                                SizedBox(height: 2,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FlatButton(onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => player()));
                                    }, child:  CircleAvatar(
                                      child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                                      backgroundColor: Colors.lightBlueAccent,
                                    ) )
                                  ],
                                )
                              ],
                            );
                          }
                      ),
                    ),
                  ),
                          Container(
                            height: 250 ,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  itemBuilder: (BuildContext context, int indx) {
                                    return  Column(
                                      children: [
                                        Container(width: 120,
                                          child: Card(
                                            child:GestureDetector(onTap: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => DetailPage()));
                                            },
                                              child: Container(
                                                child:
                                                Image(image:AssetImage(d[indx]),fit: BoxFit.fitHeight,),
                                              ),
                                            ),),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          child: RaisedButton(
                                            onPressed: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => chapter()));
                                            },child: Text("CHAPTER",style: TextStyle(color: Colors.white),),
                                            color: Colors.blueGrey,
                                          ),
                                          width: 110,
                                        ),
                                        SizedBox(height: 2,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            FlatButton(onPressed: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => player()));
                                            }, child:  CircleAvatar(
                                              child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                                              backgroundColor: Colors.lightBlueAccent,
                                            ) )
                                          ],
                                        )
                                      ],
                                    );
                                  }
                              ),
                            ),
                          ),
                          Container(
                            height: 250 ,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  itemBuilder: (BuildContext context, int indx) {
                                    return  Column(
                                      children: [
                                        Container(width: 120,
                                          child: Card(
                                            child:GestureDetector(onTap: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => DetailPage()));
                                            },
                                              child: Container(
                                                child:
                                                Image(image:AssetImage(e[indx]),fit: BoxFit.fitHeight,),
                                              ),
                                            ),),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          child: RaisedButton(
                                            onPressed: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => chapter()));
                                            },child: Text("CHAPTER",style: TextStyle(color: Colors.white),),
                                            color: Colors.blueGrey,
                                          ),
                                          width: 110,
                                        ),
                                        SizedBox(height: 2,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            FlatButton(onPressed: (){
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => player()));
                                            }, child:  CircleAvatar(
                                              child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                                              backgroundColor: Colors.lightBlueAccent,
                                            ) )
                                          ],
                                        )
                                      ],
                                    );
                                  }
                              ),
                            ),
                          ),
               SizedBox(
                      height: 25,
                    ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(color: Colors.white,height: 40,width: 150,
                                padding:EdgeInsets.fromLTRB(0,12,0,15),
                                child: Text("BOOKS OF PALMS",style: TextStyle(
                                  color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                          ],
                        ),
                        Container(
                          height: 200 ,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int indx) {
                                  return  Container(width: 120,
                                    child: Card(
                                      child:GestureDetector(onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => DetailPage()));
                                      },
                                        child: Container(
                                          child:
                                          Image(image:AssetImage(b[indx]),fit: BoxFit.fitHeight,),
                                        ),
                                      ),),
                                  );
                                }
                            ),
                          ),
                        ),
                        Container(
                          height: 200 ,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (BuildContext context, int indx) {
                                  return  Container(width: 120,
                                    child: Card(
                                      child:GestureDetector(onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => DetailPage()));
                                      },
                                        child: Container(
                                          child:
                                          Image(image:AssetImage(d[indx]),fit: BoxFit.fitHeight,),
                                        ),
                                      ),),
                                  );
                                }
                            ),
                          ),
                        ),
                        Container(
                          height: 200 ,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (BuildContext context, int indx) {
                                  return  Container(width: 120,
                                    child: Card(
                                      child:GestureDetector(onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => DetailPage()));
                                      },
                                        child: Container(
                                          child:
                                          Image(image:AssetImage(e[indx]),fit: BoxFit.fitHeight,),
                                        ),
                                      ),),
                                  );
                                }
                            ),
                          ),
                        ),

                                    SizedBox(
                                      height: 25,
                                    ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(height: 160,width:340,alignment: Alignment.center,
                              child: Text("Old Testment",style: TextStyle(color: Color(0xffa18539),fontWeight: FontWeight.w800
                                  ,fontStyle:FontStyle.italic,fontSize: 30
                              ),),
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/oldtestment.jpeg"),fit: BoxFit.fitWidth)
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 250 ,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int indx) {
                                  return  Column(
                                    children: [
                                      Container(width: 120,
                                        child: Card(
                                          child:GestureDetector(onTap: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => DetailPage()));
                                          },
                                            child: Container(
                                              child:
                                              Image(image:AssetImage(b[indx]),fit: BoxFit.fitHeight,),
                                            ),
                                          ),),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        child: RaisedButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => chapter()));
                                          },child: Text("CHAPTER",style: TextStyle(color: Colors.white),),
                                          color: Colors.blueGrey,
                                        ),
                                        width: 110,
                                      ),
                                      SizedBox(height: 2,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FlatButton(onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => player()));
                                          }, child:  CircleAvatar(
                                            child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                                            backgroundColor: Colors.lightBlueAccent,
                                          ) )
                                        ],
                                      )
                                    ],
                                  );
                                }
                            ),
                          ),
                        ),
                        Container(
                          height: 250 ,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int indx) {
                                  return  Column(
                                    children: [
                                      Container(width: 120,
                                        child: Card(
                                          child:GestureDetector(onTap: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => DetailPage()));
                                          },
                                            child: Container(
                                              child:
                                              Image(image:AssetImage(d[indx]),fit: BoxFit.fitHeight,),
                                            ),
                                          ),),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        child: RaisedButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => chapter()));
                                          },child: Text("CHAPTER",style: TextStyle(color: Colors.white),),
                                          color: Colors.blueGrey,
                                        ),
                                        width: 110,
                                      ),
                                      SizedBox(height: 2,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FlatButton(onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => player()));
                                          }, child:  CircleAvatar(
                                            child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                                            backgroundColor: Colors.lightBlueAccent,
                                          ) )
                                        ],
                                      )
                                    ],
                                  );
                                }
                            ),
                          ),
                        ),
                        Container(
                          height: 250 ,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int indx) {
                                  return  Column(
                                    children: [
                                      Container(width: 120,
                                        child: Card(
                                          child:GestureDetector(onTap: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => DetailPage()));
                                          },
                                            child: Container(
                                              child:
                                              Image(image:AssetImage(e[indx]),fit: BoxFit.fitHeight,),
                                            ),
                                          ),),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        child: RaisedButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => chapter()));
                                          },child: Text("CHAPTER",style: TextStyle(color: Colors.white),),
                                          color: Colors.blueGrey,
                                        ),
                                        width: 110,
                                      ),
                                      SizedBox(height: 2,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FlatButton(onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => player()));
                                          }, child:  CircleAvatar(
                                            child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                                            backgroundColor: Colors.lightBlueAccent,
                                          ) )
                                        ],
                                      )
                                    ],
                                  );
                                }
                            ),
                          ),
                        ),
                   ],
                )
  );
  }
}
