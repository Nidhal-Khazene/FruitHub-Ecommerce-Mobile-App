import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../signup_view.dart';

class AskUserAuth extends StatelessWidget {
  const AskUserAuth({
    super.key,
    required this.questionText,
    required this.doText,
  });
  final String questionText;
  final String doText;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: questionText,
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.of(context).pushNamed(SignUpView.routeName);
              },
            text: doText,
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF1B5E37),
            ),
          ),
        ],
      ),
    );
  }
}
