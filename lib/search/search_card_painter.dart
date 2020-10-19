import 'dart:math';

import 'package:flutter/material.dart';
import 'package:media_app/search/extension.dart';

class ProfileCardPainter extends CustomPainter {
  ProfileCardPainter({@required this.color, @required this.avatarRadius});

  static const double _margin = 6;
  final Color color;
  final double avatarRadius;

  @override
  void paint(Canvas canvas, Size size) {
    final shapeBounds =
    Rect.fromLTWH(0, 0, size.width, size.height - avatarRadius);

    final centerAvatar =
    Offset(shapeBounds.center.dx, shapeBounds.bottom);
    final avatarRect =
    Rect.fromCircle(center: centerAvatar, radius: avatarRadius)
        .inflate(_margin);

    final curvedShapeBounds = Rect.fromLTRB(
      shapeBounds.left,
      shapeBounds.top + shapeBounds.height * 0.35,
      shapeBounds.right,
      shapeBounds.bottom,
    );

    _drawBackground(canvas, shapeBounds, avatarRect);
    _drawCurvedShape(canvas, curvedShapeBounds, avatarRect);
  }

  void _drawBackground(Canvas canvas, Rect bounds, Rect avatarRect) {
    final paint = Paint()..color = color;

    final backgroundPath = Path()
      ..moveTo(bounds.left, bounds.top)
      ..lineTo(bounds.bottomLeft.dx, bounds.bottomLeft.dy)
      ..arcTo(avatarRect, -pi, pi, false)
      ..lineTo(bounds.bottomRight.dx, bounds.bottomRight.dy)
      ..lineTo(bounds.topRight.dx, bounds.topRight.dy)
      ..close();

    canvas.drawPath(backgroundPath, paint);
  }

  void _drawCurvedShape(Canvas canvas, Rect bounds, Rect avatarRect) {

    final colors = [color.darker(), color, color.darker()];
    final stops = [0.0, 0.3, 1.0];
    final gradient = LinearGradient(colors: colors, stops: stops);
    final paint = Paint()..shader = gradient.createShader(bounds);
    final handlePoint = Offset(bounds.left + (bounds.width * 0.25), bounds.top);

    final curvePath = Path()
      ..moveTo(bounds.bottomLeft.dx, bounds.bottomLeft.dy)
      ..arcTo(avatarRect, -pi, pi, false)
      ..lineTo(bounds.bottomRight.dx, bounds.bottomRight.dy)
      ..lineTo(bounds.topRight.dx, bounds.topRight.dy)
      ..quadraticBezierTo(handlePoint.dx, handlePoint.dy,
          bounds.bottomLeft.dx, bounds.bottomLeft.dy)
      ..close();

    canvas.drawPath(curvePath, paint);
  }

  @override
  bool shouldRepaint(ProfileCardPainter oldDelegate) {
    return avatarRadius != oldDelegate.avatarRadius ||
        color != oldDelegate.color;
  }
}
