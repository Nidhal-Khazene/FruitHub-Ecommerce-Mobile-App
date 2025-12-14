import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../core/widgets/custom_search_bar.dart';

class CustomHomeSearch extends StatelessWidget {
  const CustomHomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSearchBar(
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
