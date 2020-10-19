
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:media_app/main2.dart';
import 'file:///C:/Users/asus/Documents/media_app/lib/videos/player.dart';
import 'package:media_app/signin/signin.dart';
import 'file:///C:/Users/asus/Documents/media_app/lib/videos/suggestion.dart';
import 'file:///C:/Users/asus/Documents/media_app/lib/videos/trailers.dart';

import 'episodes.dart';

class desc extends StatefulWidget {
  @override
  _descState createState() => _descState();
}
bool _allow = true;
class _descState extends State<desc> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return Future.value(_allow); // if true allow back else block it
        },
        child: Scaffold(extendBodyBehindAppBar: true,backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.transparent,
      elevation: 30.0,
    ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
             // SliverOverlapAbsorber(
          //    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              //child:
              SliverAppBar(automaticallyImplyLeading: false,
                forceElevated: innerBoxIsScrolled,
                expandedHeight: 300.0,
                floating: true,
                pinned: false,
                flexibleSpace: FlexibleSpaceBar(
                    title: Container(alignment:Alignment.center, padding: EdgeInsets.fromLTRB(0, 60, 30, 0),
                        child: FlatButton(onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => player()));
                        },
                          child:Container(
                            child: Icon(Icons.play_arrow,size: 50,)))),
                        background: Image(image:AssetImage(
                          "assets/images (10).png",),
                          fit: BoxFit.cover,filterQuality: FilterQuality.high,
                        )),bottom: PreferredSize(
                              preferredSize: Size.fromHeight(170), child: Container(alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child:
                          Column(children: [Row(
                            children: [
                              Container(padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                                  child: Text("Title",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                            ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("2h 30m",style: TextStyle(color: Colors.yellowAccent),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Genre: Religious",style: TextStyle(color: Colors.green),),
                                )
                              ],
                            ),
                            Container(color: Colors.black,height: 140,padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child:Column(children:[
                                Row(
                                  children: [
                                    Text("ABOUT :-",style: TextStyle(color: Colors.white,fontSize: 14),textAlign: TextAlign.left),
                                  ],
                                ),
                                Container(padding: EdgeInsets.all(8),
                                  child: Text("cbj asjbkj nlasnc njansjn jcjan ncla nlscnlka "
                                      "anclanc kcnlakn kascnlkn knan mca jncaj nasknc nsnla nasnl sad ac a asc ac a ca ca"
                                  "hoah cakln "
                                      " nkan sna nsn sanln ndsaln sakndln",maxLines: 200,style: TextStyle(color: Colors.white60,),),
                                ),
            ])
                            )],))),
                          ),
              Container(
                child: SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    TabBar(indicatorColor: Colors.white,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.white,
                      tabs: [
                        Tab(text: "Episodes"),
                        Tab(text: "Trailers & more"),
                        Tab(text:"Suggestions",)

                    ]),
                  ),
                  pinned: false,
                ),
              ),
            ];
          },
          //)
          //];
          //},
          body:
          TabBarView(children: [
            episodes(),
            trailers(),
            suggestion()
          ],
          ),
        ),
      ),)
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(color: Color(0xff1c2a35),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}