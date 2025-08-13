import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(context, {required String title}) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(Icons.arrow_back),
    ),
    centerTitle: true,
    title: Text(title, style: Styles.bold19),
  );
}
