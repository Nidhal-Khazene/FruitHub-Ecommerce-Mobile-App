import 'package:flutter/material.dart';

class ListTileModel {
  final String text;
  final String subTitle;
  final Widget trailing;
  final Widget leading;

  ListTileModel({
    required this.text,
    required this.subTitle,
    required this.trailing,
    required this.leading,
  });
}
