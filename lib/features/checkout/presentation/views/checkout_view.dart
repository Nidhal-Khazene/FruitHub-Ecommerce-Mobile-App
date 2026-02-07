import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartItemsEntities});
  final List<CartItemEntity> cartItemsEntities;

  static const routeName = "CheckoutView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, title: "الشحن"),
      body: const SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: CheckoutViewBody(),
        ),
      ),
    );
  }
}
