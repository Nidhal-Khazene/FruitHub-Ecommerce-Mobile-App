import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payments_methods.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/virtual_card_payments_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';

class PaymentsView extends StatefulWidget {
  const PaymentsView({super.key});

  @override
  State<PaymentsView> createState() => _PaymentsViewState();
}

class _PaymentsViewState extends State<PaymentsView>
    with AutomaticKeepAliveClientMixin {
  late GlobalKey<FormState> formKey;
  late AutovalidateMode autovalidateMode;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    formKey = context.read<GlobalKey<FormState>>();
    autovalidateMode = context.read<AutovalidateMode>();
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text("أختار طريقه الدفع المناسبه :", style: AppStyles.bold13),
            const SizedBox(height: 13),
            Text(
              "من فضلك اختر طريقه الدفع المناسبه لك.",
              style: AppStyles.regular13.copyWith(
                color: ColorData.kFontSecondaryColor,
              ),
            ),
            const SizedBox(height: 13),
            const PaymentsMethods(),
            const SizedBox(height: 16),
            const CustomTextFormField(hintText: "اسم حامل البطاقه"),
            const SizedBox(height: 8),
            const CustomTextFormField(hintText: "رقم البطاقة"),
            const SizedBox(height: 8),
            const Row(
              children: [
                Expanded(
                  child: CustomTextFormField(hintText: "تاريخ الصلاحيه"),
                ),
                SizedBox(width: 16),
                Expanded(child: CustomTextFormField(hintText: "CVV")),
              ],
            ),
            const SizedBox(height: 17),
            Row(
              children: [
                const VirtualCardPaymentsCheckBox(),
                const SizedBox(width: 16),
                Text(
                  "جعل البطاقة افتراضية",
                  style: AppStyles.semiBold13.copyWith(
                    color: ColorData.kFontSecondaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
