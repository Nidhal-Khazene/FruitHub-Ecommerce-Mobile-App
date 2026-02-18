import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfilePaymentsView extends StatelessWidget {
  const ProfilePaymentsView({super.key});

  static const routeName = "ProfilePaymentsView";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(
            children: [
              CustomAppBar(
                title: "المدفوعات",
                leadingIcon: Iconsax.edit_2_copy,
              ),
              SingleChildScrollView(child: Column(children: [])),
            ],
          ),
        ),
      ),
    );
  }
}
