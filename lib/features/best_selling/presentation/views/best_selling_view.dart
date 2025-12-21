import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/best_selling/presentation/views/widgets/best_selling_view_body.dart';
import 'package:flutter/material.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  static const String routeName = "BestSellingView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: const BestSellingViewBody(),
        ),
      ),
    );
  }
}
