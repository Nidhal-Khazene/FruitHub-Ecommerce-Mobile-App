import 'package:flutter/material.dart';

class ListTileModel {
  final String title;
  final String subTitle;
  final Widget trailing;
  final Widget leading;

  ListTileModel({
    required this.title,
    required this.subTitle,
    required this.trailing,
    required this.leading,
  });
}
