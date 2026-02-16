import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PersonalProfileView extends StatelessWidget {
  const PersonalProfileView({super.key});

  static const routeName = "PersonalProfileView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, title: "الملف الشخصي"),
      body: const SafeArea(
        child: Padding(padding: kPrimaryScreenPadding, child: Column()),
      ),
    );
  }
}
