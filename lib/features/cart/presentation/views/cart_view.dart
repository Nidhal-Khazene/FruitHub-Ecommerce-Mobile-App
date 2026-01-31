import 'package:ecommerce_app/features/cart/presentation/views/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/build_app_bar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  static const routeName = "CartView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "السلة",
        isNotificationIconShow: false,
      ),
      body: const SafeArea(child: CartViewBody()),
    );
  }
}
