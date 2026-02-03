import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class InactiveStep extends StatelessWidget {
  const InactiveStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 10,
          backgroundColor: Color(0xFFF2F3F3),
          child: Text("2", style: AppStyles.semiBold13),
        ),
        const SizedBox(width: 6),
        Text(
          "العنوان",
          style: AppStyles.semiBold13.copyWith(color: const Color(0xFFAAAAAA) ),
        ),
      ],
    );
  }
}
