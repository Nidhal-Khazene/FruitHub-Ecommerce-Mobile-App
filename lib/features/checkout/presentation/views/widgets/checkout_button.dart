import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payment_success_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class CheckoutButton extends StatefulWidget {
  const CheckoutButton({super.key, required PageController pageController})
    : _pageController = pageController;

  final PageController _pageController;

  static const List<String> titles = [
    "التالي",
    "التالي",
    "تأكيد & استمرار",
    "تأكيد الطلب",
  ];

  @override
  State<CheckoutButton> createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  int pageNumber = 0;

  @override
  void initState() {
    super.initState();

    // Listen to page changes
    widget._pageController.addListener(() {
      final int newPage = widget._pageController.page?.round() ?? 0;

      if (newPage != pageNumber) {
        setState(() {
          pageNumber = newPage;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        if (pageNumber == CheckoutButton.titles.length - 1) {
          Navigator.pushNamed(context, PaymentSuccessView.routeName);
        }
        widget._pageController.animateToPage(
          pageNumber + 1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceIn,
        );
      },
      text: CheckoutButton
          .titles[pageNumber.clamp(0, CheckoutButton.titles.length - 1)],
      textStyle: AppStyles.bold16.copyWith(color: Colors.white),
    );
  }
}
