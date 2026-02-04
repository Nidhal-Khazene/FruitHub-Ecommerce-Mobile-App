import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payment_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class PaymentsMethods extends StatelessWidget {
  const PaymentsMethods({super.key});

  static const List<String> payments = [
    Assets.assetsImagesPaymentsApplePay,
    Assets.assetsImagesPaymentsPaypal,
    Assets.assetsImagesPaymentsMastercard,
    Assets.assetsImagesPaymentsVisa,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: List.generate(payments.length, (index) {
        if (index != 3) {
          return Expanded(child: PaymentItem(paymentMethod: payments[index]));
        } else {
          return Expanded(
            child: PaymentItem(
              paymentMethod: payments[index],
              backgroundColor: const Color(0xff1434CB),
            ),
          );
        }
      }),
    );
  }
}
