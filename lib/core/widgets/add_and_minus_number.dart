import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';

class AddAndMinusNumber extends StatefulWidget {
  const AddAndMinusNumber({super.key});

  @override
  State<AddAndMinusNumber> createState() => _AddAndMinusNumberState();
}

class _AddAndMinusNumberState extends State<AddAndMinusNumber> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              value = value + 1;
            });
          },
          child: CircleAvatar(
            radius: 12,
            backgroundColor: ColorData.kPrimaryColor,
            child: const Icon(Iconsax.add_copy, color: Colors.white, size: 20),
          ),
        ),
        const SizedBox(width: 16),
        Text("$value", style: AppStyles.bold16),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () {
            if (value > 0) {
              setState(() {
                value = value - 1;
              });
            }
          },
          child: const CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xFFF1F1F5),
            child: Icon(Iconsax.minus_copy, color: Color(0xFF969899), size: 20),
          ),
        ),
      ],
    );
  }
}
