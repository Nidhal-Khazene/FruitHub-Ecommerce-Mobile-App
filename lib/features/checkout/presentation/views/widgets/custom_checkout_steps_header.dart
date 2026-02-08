import 'package:ecommerce_app/core/helper/show_false_snack_bar.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/step_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCheckoutStepsHeader extends StatelessWidget {
  const CustomCheckoutStepsHeader({
    super.key,
    required this.currentIndexPage,
    required this.pageController,
  });

  final int currentIndexPage;
  final PageController pageController;

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
          child: GestureDetector(
            onTap: () {
              if (context.read<OrderEntity>().payWithCash != null) {
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else {
                showFalseSnackBar(
                  context,
                  errorMessage: "يرجى تحديد طريقة الدفع",
                );
              }
            },
            child: StepItem(
              isActive: index <= currentIndexPage,
              textContent: textList[index],
              indexValue: (index + 1).toString(),
            ),
          ),
        );
      }),
    );
  }
}
