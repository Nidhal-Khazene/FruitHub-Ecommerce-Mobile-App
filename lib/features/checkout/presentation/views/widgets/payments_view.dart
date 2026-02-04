import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payments_methods.dart';
import 'package:flutter/material.dart';

class PaymentsView extends StatelessWidget {
  const PaymentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        const Text("أختار طريقه الدفع المناسبه :", style: AppStyles.bold13),
        const SizedBox(height: 13),
        Text(
          "من فضلك اختر طريقه الدفع المناسبه لك.",
          style: AppStyles.regular13.copyWith(
            color: ColorData.kFontSecondaryColor,
          ),
        ),
        const SizedBox(height: 13),
        const PaymentsMethods(),
        const SizedBox(height: 16),
      ],
    );
  }
}
