import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/core/widgets/toggle_container_switch.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressView extends StatefulWidget {
  const AddressView({super.key, required this.valueListenable});

  final ValueListenable<AutovalidateMode> valueListenable;

  @override
  State<AddressView> createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final formKey = context.read<GlobalKey<FormState>>();

    return SingleChildScrollView(
      child: ValueListenableBuilder<AutovalidateMode>(
        valueListenable: widget.valueListenable,
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
                      .shippingAddressEntity
                      .fullName;
                },
                hintText: "الاسم كامل",
                hintStyle: AppStyles.bold13,
                textInputType: TextInputType.name,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                onSaved: (value) {
                  value = context
                      .read<OrderEntity>()
                      .shippingAddressEntity
                      .email;
                },
                hintText: "البريد الإلكتروني",
                hintStyle: AppStyles.bold13,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                onSaved: (value) {
                  value = context
                      .read<OrderEntity>()
                      .shippingAddressEntity
                      .address;
                },
                hintText: "العنوان",
                hintStyle: AppStyles.bold13,
                textInputType: TextInputType.streetAddress,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                onSaved: (value) {
                  value = context
                      .read<OrderEntity>()
                      .shippingAddressEntity
                      .city;
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
                      .apartmentNumber;
                },
                hintText: "رقم الطابق , رقم الشقه ..",
                hintStyle: AppStyles.bold13,
                textInputType: TextInputType.number,
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

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
