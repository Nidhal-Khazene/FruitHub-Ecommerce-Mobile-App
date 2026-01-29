import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/bottom_sheet_line_header.dart';
import 'package:ecommerce_app/core/widgets/price_dynamic_range.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/custom_search_bar.dart';
import '../../../../../core/widgets/row_price.dart';

class ProductsSearchBar extends StatelessWidget {
  const ProductsSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSearchBar(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.white,
          context: context,
          builder: (context) {
            return const Padding(
              padding: EdgeInsets.only(
                top: 32,
                bottom: 32,
                left: 13,
                right: 22,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: BottomSheetLineHeader(
                        lineColor: Color(0xFF131F46),
                        width: 60,
                        height: 3,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text("تصنيف حسب :", style: TextStyles.bold19),
                    SizedBox(height: 11),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Row(
                        children: [
                          Icon(Iconsax.tag_copy, color: Colors.black),
                          SizedBox(width: 8),
                          Text("السعر :", style: TextStyles.bold13),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: RowPrice(),
                    ),
                    SizedBox(height: 48),
                    PriceDynamicRange(),
                  ],
                ),
              ),
            );
          },
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
        );
      },
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
