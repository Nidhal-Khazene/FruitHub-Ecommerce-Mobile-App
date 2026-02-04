import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81,
      padding: const EdgeInsets.only(top: 16, left: 13, right: 28, bottom: 16),
      decoration: ShapeDecoration(
        color: const Color(0x33D9D9D9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 18,
              height: 18,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(
                    width: 1,
                    color: const Color(0xFF949D9E) /* Grayscale-400 */,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("الدفع عند الاستلام", style: AppStyles.semiBold13),
                      SizedBox(height: 6),
                      Text(
                        "التسليم من المكان",
                        style: AppStyles.regular13.copyWith(
                          color: ColorData.kFontSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    "40 جنيه",
                    style: AppStyles.bold13.copyWith(
                      color: ColorData.kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
