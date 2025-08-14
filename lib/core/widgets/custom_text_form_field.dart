import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.textInputType,
  });

  final String hintText;
  final Widget? suffixIcon;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF9FAFA),
        border: buildOutlineInputBorder(),
        hint: Text(
          hintText,
          style: TextStyles.bold13.copyWith(color: const Color(0xFF949D9E)),
        ),
        suffixIcon: suffixIcon,
        suffixIconColor: const Color(0xFFC9CECE),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: Color(0xFFE6E9E9)),
    );
  }
}
