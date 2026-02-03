import 'package:ecommerce_app/features/checkout/presentation/views/widgets/custom_checkout_steps_header.dart';
import 'package:flutter/material.dart';

class ShippingView extends StatelessWidget {
  const ShippingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomCheckoutStepsHeader()]);
  }
}
