import 'package:flutter/material.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.paymentMethod,
    this.backgroundColor,
    this.height,
  });
  final String paymentMethod;
  final Color? backgroundColor;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 43,
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
