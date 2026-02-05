import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/helper/build_app_bar.dart';
import 'package:flutter/material.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({super.key});

  static const String routeName = "TrackOrderView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "تتبع الطلب",
        isNotificationIconShow: false,
      ),
      body: const SafeArea(
        child: Padding(padding: kPrimaryScreenPadding, child: Column()),
      ),
    );
  }
}
