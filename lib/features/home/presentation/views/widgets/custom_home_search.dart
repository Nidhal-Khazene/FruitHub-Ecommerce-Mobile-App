import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CustomHomeSearch extends StatelessWidget {
  const CustomHomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      borderWidth: 0,
      fillColor: Colors.transparent,
      hintText: "ابحث عن.......",
      suffixIcon: const Icon(Iconsax.setting_4_copy),
      suffixIconColor: ColorData.kFontSecondaryColor,
      prefixIcon: const Icon(Iconsax.search_normal_1_copy),
      prefixIconColor: ColorData.kPrimaryColor,
    );
  }
}
