// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:media_app/books/bookdescription.dart';
// import 'package:media_app/main2.dart';
// class newtest extends StatelessWidget {
//
//   List<String> images =
//   [
//     "assets/25 lamentations.png",
//     "assets/28 hosea.png",
//     "assets/29 joel.png",
//     "assets/30 obadiah.png",
//     "assets/26 ezekiel.png",
//     "assets/32 micah.png",
//     "assets/25 lamentations.png",
//     "assets/29 joel.png",
//     "assets/26 ezekiel.png",
//     "assets/28 hosea.png",
//     "assets/30 obadiah.png",
//     "assets/32 micah.png",
//     "assets/25 lamentations.png",
//     "assets/26 ezekiel.png",
//     "assets/28 hosea.png",
//     "assets/29 joel.png",
//     "assets/30 obadiah.png",
//     "assets/26 ezekiel.png",
//     "assets/32 micah.png",
//     "assets/25 lamentations.png",
//     "assets/29 joel.png",
//     "assets/26 ezekiel.png",
//     "assets/28 hosea.png",
//     "assets/30 obadiah.png",
//     "assets/32 micah.png",
//     "assets/25 lamentations.png",
//     "assets/26 ezekiel.png",
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(backgroundColor: Colors.black,
//         appBar: AppBar(title:Container(
//           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               GestureDetector(onTap: (){
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => HomeScreen()));
//               },
//                 child: Icon(Icons.arrow_back,color: Colors.white,),
//               ),
//               Text("NEW TESTMANT",style: TextStyle(color: Colors.white),),
//               Icon(Icons.book_outlined,color: Colors.white,)
//             ],
//           ),
//         ),
//           backgroundColor: Colors.black,
//         ),
//         body: Container(
//             padding: EdgeInsets.all(16.0),
//             child: GridView.builder(
//               itemCount: images.length,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 6.0,
//                   mainAxisSpacing: 6.0),
//               itemBuilder: (BuildContext context, int index) {
//                 return FlatButton(onPressed: (){
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) =>DetailPage()));
//                 }, child:  Image.asset(images[index]));
//               },
//             )),
//       ),
//     );
//   }
// }