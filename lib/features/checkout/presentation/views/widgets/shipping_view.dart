import 'package:ecommerce_app/features/checkout/presentation/views/widgets/shipping_item.dart';
import 'package:flutter/material.dart';

class ShippingView extends StatelessWidget {
  const ShippingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ShippingItem(
          title: "الدفع عند الاستلام",
          subtitle: "التسليم من المكان",
          price: "40",
        ),
        SizedBox(height: 8),
        ShippingItem(
          title: "الدفع اونلاين ",
          subtitle: "يرجي تحديد طريقه الدفع",
          price: "40",
        ),
      ],
    );
  }
}
