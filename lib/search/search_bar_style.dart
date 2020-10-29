import 'package:flutter/material.dart';

class SearchBarStyle {
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;

  const SearchBarStyle(
      {this.backgroundColor = Colors.white,
        this.padding = const EdgeInsets.only(left: 5.0,right: 5.0,top: 5.0),
        this.borderRadius: const BorderRadius.all(Radius.circular(5.0))});
}