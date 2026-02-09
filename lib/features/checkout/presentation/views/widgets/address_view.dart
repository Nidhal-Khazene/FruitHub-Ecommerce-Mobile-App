import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/core/widgets/toggle_container_switch.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressView extends StatelessWidget {
  const AddressView({
    super.key,
    required this.formKey,
    required this.valueListenable,
  });

  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> valueListenable;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<AutovalidateMode>(
        valueListenable: valueListenable,
        builder: (context, value, child) => Form(
          key: formKey,
          autovalidateMode: value,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  value = context
                      .read<OrderEntity>()
                      .shippingAddressEntity!
                      .fullName;
                },
                hintText: "الاسم كامل",
                hintStyle: AppStyles.bold13,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                onSaved: (value) {
                  value = context
                      .read<OrderEntity>()
                      .shippingAddressEntity!
                      .email;
                },
                hintText: "البريد الإلكتروني",
                hintStyle: AppStyles.bold13,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                onSaved: (value) {
                  value = context
                      .read<OrderEntity>()
                      .shippingAddressEntity!
                      .address;
                },
                hintText: "العنوان",
                hintStyle: AppStyles.bold13,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                onSaved: (value) {
                  value = context
                      .read<OrderEntity>()
                      .shippingAddressEntity!
                      .city;
                },
                hintText: "المدينه",
                hintStyle: AppStyles.bold13,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                onSaved: (value) {
                  context
                      .read<OrderEntity>()
                      .shippingAddressEntity!
                      .apartmentNumber;
                },
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
          ),
        ),
      ),
    );
  }
}
