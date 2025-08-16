import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextFormField(
              hintText: "الاسم كامل",
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: kSizedBoxHeight16),
            const CustomTextFormField(
              hintText: "البريد الإلكتروني",
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: kSizedBoxHeight16),
            const CustomTextFormField(
              hintText: "كلمة المرور",
              suffixIcon: Icon(Icons.remove_red_eye),
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: kSizedBoxHeight16),
            const TermsAndConditions(),
            const SizedBox(height: 30),
            CustomButton(onPressed: () {}, text: 'إنشاء حساب جديد'),
          ],
        ),
      ),
    );
  }
}
