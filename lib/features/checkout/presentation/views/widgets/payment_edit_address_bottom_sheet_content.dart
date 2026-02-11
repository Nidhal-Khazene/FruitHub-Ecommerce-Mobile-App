import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/widgets/bottom_sheet_line_header.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/styles.dart';
import '../../../domain/entities/order_entity.dart';

class PaymentEditAddressBottomSheetContent extends StatelessWidget {
  const PaymentEditAddressBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 32,
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 13,
        right: 22,
      ),
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BottomSheetLineHeader(
                lineColor: ColorData.kFontSecondaryColor,
                width: 100,
                height: 2,
              ),
              const SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAddressEntity.address =
                      value;
                },
                hintText: "العنوان",
                hintStyle: AppStyles.bold13,
                textInputType: TextInputType.streetAddress,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAddressEntity.city =
                      value;
                },
                hintText: "المدينه",
                hintStyle: AppStyles.bold13,
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                onSaved: (value) {
                  context
                      .read<OrderEntity>()
                      .shippingAddressEntity
                      .apartmentNumber = int.parse(
                    value.toString(),
                  );
                },
                hintText: "رقم الطابق , رقم الشقه ..",
                hintStyle: AppStyles.bold13,
                textInputType: TextInputType.number,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
