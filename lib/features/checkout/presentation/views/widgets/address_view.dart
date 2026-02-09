import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/core/widgets/toggle_container_switch.dart';
import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        const CustomTextFormField(
          hintText: "الاسم كامل",
          hintStyle: AppStyles.bold13,
        ),
        const SizedBox(height: 8),
        const CustomTextFormField(
          hintText: "البريد الإلكتروني",
          hintStyle: AppStyles.bold13,
        ),
        const SizedBox(height: 8),
        const CustomTextFormField(
          hintText: "العنوان",
          hintStyle: AppStyles.bold13,
        ),
        const SizedBox(height: 8),
        const CustomTextFormField(
          hintText: "المدينه",
          hintStyle: AppStyles.bold13,
        ),
        const SizedBox(height: 8),
        const CustomTextFormField(
          hintText: "رقم الطابق , رقم الشقه ..",
          hintStyle: AppStyles.bold13,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            const ToggleContainerSwitch(),
            const SizedBox(width: 8),
            Text(
              "حفظ العنوان",
              style: AppStyles.semiBold13.copyWith(
                color: ColorData.kFontSecondaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
