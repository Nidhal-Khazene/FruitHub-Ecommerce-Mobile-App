import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.textInputType,
    this.onSaved,
    this.obscureText = false,
    this.prefixIcon,
    this.prefixIconColor,
    this.fillColor,
    this.suffixIconColor,
    this.borderWidth,
    this.borderRadius,
    this.hintTextAlign,
    this.hintStyle,
    this.formKey,
  });

  final String hintText;
  final TextAlign? hintTextAlign;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final TextInputType? textInputType;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final Color? fillColor;
  final double? borderWidth;
  final BorderRadius? borderRadius;
  final Key? formKey;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: formKey,
      obscureText: obscureText,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "هذا الحقل مطلوب";
        }
        return null;
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? const Color(0xffF9FAFA),
        border: buildOutlineInputBorder(),
        hint: Text(
          textAlign: hintTextAlign,
          hintText,
          style: AppStyles.bold13.copyWith(color: const Color(0xFF949D9E)),
        ),
        hintStyle: hintStyle,
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor ?? const Color(0xFFC9CECE),
        enabledBorder: buildOutlineInputBorder(borderWidth),
        focusedBorder: buildOutlineInputBorder(borderWidth),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([double? borderWidth]) {
    return OutlineInputBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(4),
      borderSide: BorderSide(
        width: borderWidth ?? 1,
        color: const Color(0xFFE6E9E9),
      ),
    );
  }
}
