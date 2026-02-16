import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/helper/build_app_bar.dart';
import 'package:flutter/material.dart';

class PersonalProfileView extends StatelessWidget {
  const PersonalProfileView({super.key});

  static const routeName = "PersonalProfileView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "الملف الشخصي",
        isNotificationIconShow: false,
      ),
      body: SafeArea(
        child: Padding(padding: kPrimaryScreenPadding, child: Column()),
      ),
    );
  }
}
