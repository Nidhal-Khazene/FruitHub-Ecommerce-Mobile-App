import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class ProfilePaymentsView extends StatelessWidget {
  const ProfilePaymentsView({super.key});

  static const routeName = "ProfilePaymentsView";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(padding: kPrimaryScreenPadding, child: Placeholder()),
      ),
    );
  }
}
