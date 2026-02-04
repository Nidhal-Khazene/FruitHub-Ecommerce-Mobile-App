import 'package:ecommerce_app/features/checkout/presentation/views/widgets/shipping_item.dart';
import 'package:flutter/material.dart';

class ShippingView extends StatefulWidget {
  const ShippingView({super.key});

  @override
  State<ShippingView> createState() => _ShippingViewState();
}

class _ShippingViewState extends State<ShippingView> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        ShippingItem(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          isSelected: selectedIndex == 0,
          title: "الدفع عند الاستلام",
          subtitle: "التسليم من المكان",
          price: "40 جنيه",
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },
          child: ShippingItem(
            isSelected: selectedIndex == 1,
            title: "الدفع اونلاين ",
            subtitle: "يرجي تحديد طريقه الدفع",
            price: "مجاني",
          ),
        ),
      ],
    );
  }
}
