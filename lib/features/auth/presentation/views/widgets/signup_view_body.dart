import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFormField(hintText: "الاسم كامل"),
            SizedBox(height: kSizedBoxHeight16),
          ],
        ),
      ),
    );
  }
}
