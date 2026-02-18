import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/app_bar_with_back_arrow.dart';
import 'package:flutter/material.dart';

class ProfilePaymentsView extends StatelessWidget {
  const ProfilePaymentsView({super.key});

  static const routeName = "ProfilePaymentsView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithBackArrow(context, title: "المدفوعات"),
      body: SafeArea(
        child: Padding(padding: kPrimaryScreenPadding, child: Placeholder()),
      ),
    );
  }
}
