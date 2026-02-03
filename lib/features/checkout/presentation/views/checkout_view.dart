import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/helper/build_app_bar.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  static const routeName = "CheckoutView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "الشحن",
        isNotificationIconShow: false,
      ),
      body: const SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: CheckoutViewBody(),
        ),
      ),
    );
  }
}
