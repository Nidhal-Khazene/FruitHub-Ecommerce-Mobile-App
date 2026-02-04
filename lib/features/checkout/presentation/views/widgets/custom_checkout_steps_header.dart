import 'package:ecommerce_app/features/checkout/presentation/views/widgets/step_item.dart';
import 'package:flutter/material.dart';

class CustomCheckoutStepsHeader extends StatelessWidget {
  const CustomCheckoutStepsHeader({super.key});

  static const List<String> textList = [
    "الشحن",
    "العنوان",
    "الدفع",
    "المراجعه",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(textList.length, (index) {
        return Expanded(
          child: StepItem(
            isActive: false,
            textContent: textList[index],
            indexValue: (index + 1).toString(),
          ),
        );
      }),
    );
  }
}
