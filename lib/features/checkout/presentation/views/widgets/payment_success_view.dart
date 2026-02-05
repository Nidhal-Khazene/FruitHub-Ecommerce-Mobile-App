import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PaymentSuccessView extends StatelessWidget {
  const PaymentSuccessView({super.key});

  static const routeName = "PaymentSuccessView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الدفع',
          textAlign: TextAlign.center,
          style: AppStyles.bold19,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(children: [SizedBox(height: 67)]),
        ),
      ),
    );
  }
}
