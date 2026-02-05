import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../core/utils/colors.dart';

class PaymentAddressTicket extends StatelessWidget {
  const PaymentAddressTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0x7FF2F3F3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text('عنوان التوصيل', style: AppStyles.bold13),
              const Expanded(child: SizedBox()),
              Row(
                children: [
                  Icon(
                    Iconsax.edit_2_copy,
                    size: 16,
                    color: ColorData.kFontSecondaryColor,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'تعديل',
                    style: AppStyles.semiBold13.copyWith(
                      color: ColorData.kFontSecondaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Iconsax.location_copy, color: Color(0xFF292D32)),
              const SizedBox(width: 8),
              Text(
                'شارع النيل، مبنى رقم ١٢٣',
                textAlign: TextAlign.right,
                style: AppStyles.regular16.copyWith(
                  color: ColorData.kFontSecondaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
