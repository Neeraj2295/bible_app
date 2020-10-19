import 'package:media_app/search/search_card_painter.dart';
import 'package:flutter/material.dart';
import 'package:media_app/search/extension.dart';
class ProfileCard extends StatelessWidget {
  ProfileCard({
    @required this.profileColor,
  });
  final Color profileColor;
  static const double avatarRadius = 40;
  static const double titleBottomMargin = (avatarRadius * 2) + 18;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: CustomPaint(
            size: Size.infinite,
            painter: ProfileCardPainter(
              color: profileColor,
              avatarRadius: avatarRadius,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CircleAvatar(
            radius: avatarRadius,
            backgroundColor: profileColor.darker(),
            child: Icon(Icons.search,color: Colors.black,size: 40,),
          ),
        ),
      ],
    );
  }
}