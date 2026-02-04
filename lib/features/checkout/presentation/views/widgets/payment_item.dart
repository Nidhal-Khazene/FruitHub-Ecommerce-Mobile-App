import 'package:flutter/material.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.paymentMethod,
    this.backgroundColor,
  });
  final String paymentMethod;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: backgroundColor ?? Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Color(0xFFD6DCE5),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Image.asset(paymentMethod),
    );
  }
}
