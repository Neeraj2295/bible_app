import 'package:flutter/material.dart';

void main() => runApp(HomeScreen());

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
    tabController = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.purple,
            brightness: Brightness.dark,
            accentColor: Colors.red),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: new Scaffold(
          backgroundColor: Colors.black,
          body: TabBarView(
            children: <Widget>[
              FirstTab(),
              MyBody("Page"),
              MyBody("Page"),
              MyBody("page"),
              MyBody("page"),
            ],
// if you want yo disable swiping in tab the use below code
//            physics: NeverScrollableScrollPhysics(),
            controller: tabController,
          ),
          bottomNavigationBar: Material(
            color: Color(0xff717171),
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
                    title = "page";
                  });
                }
                else if (index == 3) {
                  setState(() {
                    title = "page";
                  });
                }
                else if (index == 4) {
                  setState(() {
                    title = "Page";
                  });
                }
              },

              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",

                ),
                Tab(
                  icon: Icon(Icons.search),
                  text: "Search",
                ),
                Tab(
                  icon: Icon(Icons.perm_identity),
                  text: "Profile",
                ),
                Tab(
                  icon: Icon(Icons.cloud_download),
                  text: "Downloads",

                ),
                Tab(
                  icon: Icon(Icons.menu),
                  text: "More",

                ),
              ],
              controller: tabController,
            ),
          ),
        ));
  }
}

class FirstTab extends StatefulWidget {
  @override
  FirstTabState createState() => FirstTabState();
}

class FirstTabState extends State<FirstTab>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 80.0,
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              color: Color(0xff717171),
              child: new TabBar(
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.white,
                labelStyle: TextStyle(fontSize:17.0),
                tabs: [
                  Tab(
                    text: "VIDEOS"
                  ),
                  Tab(
                    text: "BOOKS"
                  ),
                  Tab(
                    text: "DAILY QUOTES"
                  ),
                ],
              ),
            ),
          ),
        ),
        body:
        TabBarView(
          children: [
            SingleChildScrollView(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child:SizedBox(
                          width:MediaQuery.of(context).size.width,child: Image(height: 200,
                          image:AssetImage("assets/bible.png"),
                      fit: BoxFit.cover,)
                      ),
                    ),
                     SizedBox(
                       height: 25,
                     ),
                     Container(padding:EdgeInsets.fromLTRB(5,0,0,15),child: Text("GOSPEL ACCORDING TO MATTHEW",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.left,)),
                     Container(
                      height: MediaQuery.of(context).size.height*0.18 ,


                      child: Container(padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                              children:<Widget> [
                                Container(
                                  decoration:BoxDecoration(color: Colors.blue,
                                    shape: BoxShape.circle
                                ),
                                  child: CircleAvatar(backgroundImage: AssetImage("assets/cross.png"),radius: 48,),
                                ),
                                Container(
                                  width: 10,
                                ),
                                Container(
                                  child: CircleAvatar(backgroundImage: AssetImage("assets/cross.png"),radius: 48,),
                                ),
                                Container(
                                  width: 10,
                                ),
                                Container(
                                  child: CircleAvatar(backgroundImage: AssetImage("assets/cross.png"),radius: 48,),
                                ),
                                Container(
                                  width: 10,
                                ),
                                Container(
                                  child: CircleAvatar(backgroundImage: AssetImage("assets/cross.png"),radius: 48,),
                                ),
                                Container(
                                  width: 10,
                                ),
                                Container(
                                  child: CircleAvatar(backgroundImage: AssetImage("assets/cross.png"),radius: 48,),
                                )
                              ],
//                        // {
//                      return Container(
//                        decoration: BoxDecoration(
//                          shape: BoxShape.circle
//                        ),
//
//                        width: MediaQuery.of(context).size.width *0.4,
//                        child: Card(
//                          shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(55.0),
//                          ),
//                          color: Colors.transparent,
//                          child: Container(
//                            child: Center(child: Text(numbers[index].toString(), style: TextStyle(color: Colors.white, fontSize: 36.0),)),
//                          ),
//                        ),
//                      );
//                  //  }
    ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(padding:EdgeInsets.fromLTRB(5,0,0,15),child: Text("GOSPEL ACCORDING TO JOHN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.left,)),
                    Container(
                      height: MediaQuery.of(context).size.height*0.18 ,


                      child: Container(padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children:<Widget> [
                            Container(
                              decoration:BoxDecoration(color: Colors.blue,
                                  shape: BoxShape.circle
                              ),
                              child: CircleAvatar(backgroundImage: AssetImage("assets/one.png"),radius: 48,),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              child: CircleAvatar(backgroundImage: AssetImage("assets/one.png"),radius: 48,),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              child: CircleAvatar(backgroundImage: AssetImage("assets/one.png"),radius: 48,),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              child: CircleAvatar(backgroundImage: AssetImage("assets/one.png"),radius: 48,),
                            ),
                            Container(
                              width: 10,
                            ),
                            Container(
                              child: CircleAvatar(backgroundImage: AssetImage("assets/one.png"),radius: 48,),
                            )
                          ],
//                        // {
//                      return Container(
//                        decoration: BoxDecoration(
//                          shape: BoxShape.circle
//                        ),
//
//                        width: MediaQuery.of(context).size.width *0.4,
//                        child: Card(
//                          shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(55.0),
//                          ),
//                          color: Colors.transparent,
//                          child: Container(
//                            child: Center(child: Text(numbers[index].toString(), style: TextStyle(color: Colors.white, fontSize: 36.0),)),
//                          ),
//                        ),
//                      );
//                  //  }
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text("PAGE ON MAINTENANCE"),
            Text("PAGE ON MAINTENANCE"),
          ],
        ),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  final String title;

  MyBody(this.title);

  final mySnackBar = SnackBar(
    content: Text(
      "GOD BLESS YOU",
      style: TextStyle(color: Colors.white),
    ),
    duration: Duration(seconds: 3),
    backgroundColor: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
              child: Text(title + "  under maintenance"),
              onPressed: () => {Scaffold.of(context).showSnackBar(mySnackBar)}),
        ],
      ),
    );
  }
}
