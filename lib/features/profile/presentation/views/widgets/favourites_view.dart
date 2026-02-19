import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/app_bar_with_back_arrow.dart';
import 'package:flutter/material.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  static const String routeName = "FavouritesView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithBackArrow(context, title: "المفضلة"),
      body: const SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: SingleChildScrollView(child: Column()),
        ),
      ),
    );
  }
}
