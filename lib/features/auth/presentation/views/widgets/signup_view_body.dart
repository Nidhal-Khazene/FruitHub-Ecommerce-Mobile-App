import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFormField(
              hintText: "الاسم كامل",
              textInputType: TextInputType.name,
            ),
            SizedBox(height: kSizedBoxHeight16),
            CustomTextFormField(
              hintText: "البريد الإلكتروني",
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: kSizedBoxHeight16),
            CustomTextFormField(
              hintText: "كلمة المرور",
              suffixIcon: Icon(Icons.remove_red_eye),
              textInputType: TextInputType.visiblePassword,
            ),
            SizedBox(height: kSizedBoxHeight16),
            Row(children: [CustomCheckBox()]),
          ],
        ),
      ),
    );
  }
}
