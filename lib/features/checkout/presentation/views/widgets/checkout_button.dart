import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key, required PageController pageController})
    : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      text: "التالي",
      textStyle: AppStyles.bold16.copyWith(color: Colors.white),
    );
  }
}
